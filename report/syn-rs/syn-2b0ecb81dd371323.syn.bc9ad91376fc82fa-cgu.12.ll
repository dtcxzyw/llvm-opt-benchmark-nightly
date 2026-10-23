Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.12?download=true
inline.NumInlined: 183
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCsgbWeKYPjk8w_3syn5parse22tokens_to_parse_buffer:bb.a
  %i.h = load i32, ptr %.sroa.02.0, align 8, !range !12, !noundef !4
  %i.i = icmp ne i32 %i.h, 5
  %i.j = icmp eq ptr %.sroa.02.0, %i.g
  %or.cond = or i1 %i.j, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32
  br i1 %or.cond, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.m, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !637
  %i.n = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #18, !noalias !637 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEE3newB1z_.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #20
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc7RcInnerINtNtB4_4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEEB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #15
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.p

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerINtNtCsj6eKBz9Db1c_4core4cell4CellNtNtCsgbWeKYPjk8w_3syn5parse10UnexpectedEEE3newB1z_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.b, ptr %i.r, align 8
  store ptr %.sroa.02.0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.t, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i8 } @_RNvNtCsgbWeKYPjk8w_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 13 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5group(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef %0, ptr noundef %1, i8 noundef 3)
  %i.c = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.i = load ptr, ptr %i.e, align 8, !noundef !4
  %i.j = load ptr, ptr %i.f, align 8, !noundef !4
  %i.k = load ptr, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.m = tail call { i32, i8 } @_RNvNtCsgbWeKYPjk8w_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef %i.i, ptr noundef %i.j) ; 2 uses
  %i.n = extractvalue { i32, i8 } %i.m, 1         ; 2 uses
  %.not = icmp eq i8 %i.n, -1
  br i1 %.not, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.sroa.7.0.lcssa = phi ptr [ %1, %.preheader ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %.preheader ], [ %i.k, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp eq ptr %.sroa.0.0.lcssa, %.sroa.7.0.lcssa
  br i1 %i.o, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = extractvalue { i32, i8 } %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5group(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noundef %i.k, ptr noundef %i.l, i8 noundef 3)
  %i.q = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.b, label %._crit_edge

bb.e:                                             ; preds = %._crit_edge, %bb.a, %bb.f, %bb.c
  %.sroa.712.0 = phi i8 [ %i.v, %bb.f ], [ %i.n, %bb.c ], [ -1, %bb.a ], [ -1, %._crit_edge ]
  %.sroa.09.0 = phi i32 [ %i.u, %bb.f ], [ %i.p, %bb.c ], [ undef, %bb.a ], [ undef, %._crit_edge ]
  %i.s = insertvalue { i32, i8 } poison, i32 %.sroa.09.0, 0
  %i.t = insertvalue { i32, i8 } %i.s, i8 %.sroa.712.0, 1
  ret { i32, i8 } %i.t

bb.f:                                             ; preds = %._crit_edge
  %i.u = tail call noundef i32 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor4span(ptr noundef %.sroa.0.0.lcssa, ptr noundef %.sroa.7.0.lcssa)
  %i.v = tail call noundef i8 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor15scope_delimiter(ptr noundef %.sroa.0.0.lcssa, ptr noundef %.sroa.7.0.lcssa)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCsgbWeKYPjk8w_3syn5token7parsing10peek_punct(ptr noundef %0, ptr noundef %1, ptr noalias nofree noundef nonnull readonly captures(address) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %.not.i.i15 = icmp samesign eq i64 %3, 0
  br i1 %.not.i.i15, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = add i64 %3, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.019 = phi ptr [ %0, %.lr.ph ], [ %i.aq, %bb.g ]
  %.sroa.3.018 = phi ptr [ %1, %.lr.ph ], [ %i.ar, %bb.g ]
  %.sroa.0.0917 = phi ptr [ %2, %.lr.ph ], [ %.sroa.0.1, %bb.g ] ; 5 uses
  %.sroa.11.016 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.g ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0917, i64 1 ; 3 uses
  %i.h = load i8, ptr %.sroa.0.0917, align 1, !noalias !644, !noundef !4 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i: ; preds = %bb.b
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.b
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0917, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !noalias !644, !noundef !4
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i
  %i.u = icmp ne ptr %i.m, %i.b
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0917, i64 3 ; 3 uses
  %i.w = load i8, ptr %i.m, align 1, !noalias !644, !noundef !4
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i, label %bb.d

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i
  %i.ae = icmp ne ptr %i.v, %i.b
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0917, i64 4
  %i.ag = load i8, ptr %i.v, align 1, !noalias !644, !noundef !4
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i
  %.sroa.0.1 = phi ptr [ %i.g, %bb.c ], [ %i.af, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i ], [ %i.m, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.t, %bb.c ], [ %i.an, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i ]
  %i.ao = add nuw i64 %.sroa.11.016, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5punct(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef %.sroa.0.019, ptr noundef %.sroa.3.018)
  %i.ap = load i32, ptr %i.a, align 8, !range !13, !noundef !4 ; 2 uses
  %.not7 = icmp eq i32 %i.ap, -1
  br i1 %.not7, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.d, align 8, !noundef !4
  %i.ar = load ptr, ptr %i.e, align 8, !noundef !4
  %.not8 = icmp eq i32 %i.ap, %spec.select.i.ph.i
  br i1 %.not8, label %bb.f, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %4 = load i8, ptr %i.c, align 8, !range !14, !noundef !4
  %5 = trunc nuw i8 %4 to i1
  %i.as = icmp eq i64 %.sroa.11.016, %i.f         ; 2 uses
  %.not = xor i1 %5, true
  %brmerge = select i1 %i.as, i1 true, i1 %.not
  br i1 %brmerge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i = icmp eq ptr %.sroa.0.1, %i.b
  br i1 %.not.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread, label %bb.b

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread.sink.split: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.01.0.ph = phi i1 [ false, %bb.d ], [ %i.as, %bb.f ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread: ; preds = %bb.g, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread.sink.split, %bb.a
  %.sroa.01.0 = phi i1 [ false, %bb.a ], [ %.sroa.01.0.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread.sink.split ], [ false, %bb.g ]
  ret i1 %.sroa.01.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !658
  %i.i = load ptr, ptr %1, align 8, !noalias !658, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !noalias !658, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !659
  store i64 %3, ptr %i.e, align 8, !noalias !659
  store i64 %5, ptr %i.d, align 8, !noalias !659
  %i.l = icmp eq i64 %3, %5
  br i1 %i.l, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCsj6eKBz9Db1c_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19, !noalias !659
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !659
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %.not.i.i13.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i13.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread.thread.i.i, label %.lr.ph.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread.thread.i.i: ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19, !noalias !659
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = add nsw i64 %3, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.m, %.lr.ph.i.i
  %.sroa.4.017.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.be, %bb.m ]
  %.sroa.04.016.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.bd, %bb.m ]
  %.sroa.0.015.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %bb.m ] ; 5 uses
  %.sroa.11.014.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ba, %bb.m ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 1 ; 3 uses
  %i.t = load i8, ptr %.sroa.0.015.i.i, align 1, !noalias !660, !noundef !4 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.e, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i.i.i: ; preds = %bb.d
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !660, !noundef !4
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i.i.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = zext nneg i8 %i.t to i32
  br label %bb.f

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i.i.i
  %i.ag = icmp ne ptr %i.y, %i.m
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 3 ; 3 uses
  %i.ai = load i8, ptr %i.y, align 1, !noalias !660, !noundef !4
  %i.aj = shl nuw nsw i32 %i.ac, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %i.an = shl nuw nsw i32 %i.w, 12
  %i.ao = or disjoint i32 %i.am, %i.an
  %i.ap = icmp samesign ugt i8 %i.t, -17
  br i1 %i.ap, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i.i.i, label %bb.f

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i.i.i
  %i.aq = icmp ne ptr %i.ah, %i.m
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 4
  %i.as = load i8, ptr %i.ah, align 1, !noalias !660, !noundef !4
  %i.at = shl nuw nsw i32 %i.w, 18
  %i.au = and i32 %i.at, 1835008
  %i.av = shl nuw nsw i32 %i.am, 6
  %i.aw = and i8 %i.as, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.au
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i.i.i, %bb.e, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i.i.i
  %.sroa.0.1.i.i = phi ptr [ %i.s, %bb.e ], [ %i.ar, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i.i.i ], [ %i.ah, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i.i.i ] ; 2 uses
  %spec.select.i.ph.i.i.i = phi i32 [ %i.af, %bb.e ], [ %i.az, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i.i.i ]
  %i.ba = add i64 %.sroa.11.014.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !659
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5punct(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noundef %.sroa.04.016.i.i, ptr noundef %.sroa.4.017.i.i), !noalias !659
  %i.bb = load i32, ptr %i.c, align 8, !range !13, !noalias !659, !noundef !4 ; 2 uses
  %.not15.i.i = icmp eq i32 %i.bb, -1
  br i1 %.not15.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load i8, ptr %i.n, align 8, !range !14, !noalias !659, !noundef !4
  %6 = trunc nuw i8 %i.bc to i1
  %i.bd = load ptr, ptr %i.o, align 8, !noalias !659, !noundef !4 ; 2 uses
  %i.be = load ptr, ptr %i.p, align 8, !noalias !659, !noundef !4 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.11.014.i.i, %3
  br i1 %exitcond.not.i.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.l, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !659
  br label %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.q, align 4, !noalias !659, !noundef !4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.11.014.i.i
  store i32 %i.bf, ptr %i.bg, align 4, !noalias !659
  %.not16.i.i = icmp eq i32 %i.bb, %spec.select.i.ph.i.i.i
  br i1 %.not16.i.i, label %bb.k, label %bb.h

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19, !noalias !659
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bh = icmp eq i64 %.sroa.11.014.i.i, %i.r
  br i1 %i.bh, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %6, label %bb.m, label %bb.h

_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.thread.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !658
  br label %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit._crit_edge.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !659
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i, %i.m
  br i1 %.not.i.i.i.i, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.i, label %bb.d

_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.i: ; preds = %bb.m, %bb.h
  %i.bi = load i32, ptr %4, align 4, !noalias !659, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !659
  store ptr %i.g, ptr %i.a, align 8, !noalias !659
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsgbWeKYPjk8w_3syn, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !659
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @11, ptr noundef nonnull %i.a), !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  call void @_RINvMNtCsgbWeKYPjk8w_3syn5errorNtB3_5Error3newNtNtCs4wP2HXfJTCR_5alloc6string6StringEB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i32 noundef %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !661
  %.pr.i = load i64, ptr %i.f, align 8, !noalias !658 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !658
  %.not.i = icmp eq i64 %.pr.i, -1
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !658 ; 2 uses
  %.phi.trans.insert32.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.pre33.i = load ptr, ptr %.phi.trans.insert32.i, align 8, !noalias !658 ; 2 uses
  br i1 %.not.i, label %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !658
  store i64 %.pr.i, ptr %0, align 8, !alias.scope !657
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pre.i, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !657
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pre33.i, ptr %.sroa.519.0..sroa_idx.i, align 8, !alias.scope !657
  br label %_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtNtB8_5token7parsing12punct_helper0uEB8_.exit

_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit._crit_edge.i: ; preds = %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.i, %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.thread.i
  %i.bj = phi ptr [ %i.be, %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.thread.i ], [ %.pre33.i, %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.i ]
  %i.bk = phi ptr [ %i.bd, %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.thread.i ], [ %.pre.i, %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !658
  store ptr %i.bk, ptr %1, align 8, !noalias !658
  store ptr %i.bj, ptr %i.j, align 8, !noalias !658
  store i64 -1, ptr %0, align 8, !alias.scope !657
  br label %_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtNtB8_5token7parsing12punct_helper0uEB8_.exit

_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtNtB8_5token7parsing12punct_helper0uEB8_.exit: ; preds = %bb.n, %_RNCNvNtNtCsgbWeKYPjk8w_3syn5token7parsing12punct_helper0B7_.exit._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn5token7parsing7keyword(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 15 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %3, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !682
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8, !noalias !682, !noundef !4
  %i.k = load ptr, ptr %1, align 8, !noalias !682, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !682, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !683
  call void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5ident(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef %i.k, ptr noundef %i.m), !noalias !683
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !5, !noalias !683, !noundef !4
  %.not.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !683
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !683
  store ptr %i.g, ptr %i.c, align 8, !noalias !683, !captures !11
  %i.r = invoke noundef zeroext i1 @_RNvXss_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqRReE2eqCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.f unwind label %bb.c, !noalias !684

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !16, !alias.scope !687, !noalias !683, !noundef !4
  %i.v = icmp eq i8 %i.u, 2
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !687, !noalias !683, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !687, !noalias !683, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #18, !noalias !688
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !683
  br i1 %i.r, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.z = load i8, ptr %i.y, align 8, !range !16, !alias.scope !691, !noalias !683, !noundef !4
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i15.i.i = load i64, ptr %i.ab, align 8, !alias.scope !691, !noalias !683, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %.val1.i.i15.i.i, 0
  br i1 %i.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i16.i.i = load ptr, ptr %i.d, align 8, !alias.scope !691, !noalias !683, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i16.i.i, i64 noundef range(i64 1, 0) %.val1.i.i15.i.i, i64 noundef 1) #18, !noalias !692
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i.i: ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !683
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !16, !noalias !683, !noundef !4
  %.not13.i.i = icmp eq i8 %i.ae, 2               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !range !8, !noalias !683
  %.sroa.02.0.i.i = select i1 %.not13.i.i, i32 %i.ag, i32 0
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  call void @llvm.experimental.noalias.scope.decl(metadata !694)
  br i1 %.not13.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i18.i.i = load i64, ptr %i.ah, align 8, !alias.scope !695, !noalias !683, !noundef !4 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i18.i.i, 0
  br i1 %i.ai, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i.i19.i.i = load ptr, ptr %i.d, align 8, !alias.scope !695, !noalias !683, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i19.i.i, i64 noundef range(i64 1, 0) %.val1.i.i18.i.i, i64 noundef 1) #18, !noalias !696
  br label %bb.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.s

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit17.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !683
  store ptr %i.g, ptr %i.a, align 8, !noalias !683
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsgbWeKYPjk8w_3syn, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !683
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @11, ptr noundef nonnull %i.a), !noalias !684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !683
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @_RINvNtCsgbWeKYPjk8w_3syn5error6new_atNtNtCs4wP2HXfJTCR_5alloc6string6StringEB4_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, i32 noundef %i.j, ptr noundef %i.k, ptr noundef %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !682
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ak = load <2 x i32>, ptr %i.aj, align 8, !noalias !682
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load <2 x ptr>, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !682
  store <2 x i32> %i.ak, ptr %0, align 8, !alias.scope !681
  store <2 x ptr> %i.al, ptr %.sroa.536.0..sroa_idx.i, align 8, !alias.scope !681
  br label %_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtNtB8_5token7parsing7keyword0NtCs6et67aoV1xO_11proc_macro24SpanEB8_.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !682
  store <2 x ptr> %i.q, ptr %1, align 8, !noalias !682
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.02.0.i.i, ptr %i.am, align 8, !alias.scope !681
  store i64 -1, ptr %0, align 8, !alias.scope !681
  br label %_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtNtB8_5token7parsing7keyword0NtCs6et67aoV1xO_11proc_macro24SpanEB8_.exit

_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer4stepNCNvNtNtB8_5token7parsing7keyword0NtCs6et67aoV1xO_11proc_macro24SpanEB8_.exit: ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
