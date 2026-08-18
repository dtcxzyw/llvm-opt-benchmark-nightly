inline.NumInlined: 730
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex5CacheECs44SRMMtlaHN_9uu_csplit:bb.a
  %i.ad = shl nuw i64 %.val2.i.i2.i.i.i, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i3.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !209
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i4.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i4.i.i.i: ; preds = %bb.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata3nfa8thompson6pikevm12ActiveStatesECs44SRMMtlaHN_9uu_csplit.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %.val.i.i5.i.i.i = load i64, ptr %i.ae, align 8, !range !40, !alias.scope !209, !noundef !4 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i5.i.i.i, 0
  br i1 %i.af, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i7.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i4.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %.val1.i.i6.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !209, !nonnull !4, !noundef !4
  %i.ah = shl nuw i64 %.val.i.i5.i.i.i, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i6.i.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !209
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i7.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i7.i.i.i: ; preds = %bb.j, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i4.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %.val.i8.i.i.i = load i64, ptr %i.ai, align 8, !range !40, !alias.scope !210, !noundef !4 ; 2 uses
  %i.aj = icmp eq i64 %.val.i8.i.i.i, 0
  br i1 %i.aj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11PikeVMCacheECs44SRMMtlaHN_9uu_csplit.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i7.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %.val1.i9.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !210, !nonnull !4, !noundef !4
  %i.al = shl nuw i64 %.val.i8.i.i.i, 3
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i9.i.i.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !210
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11PikeVMCacheECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11PikeVMCacheECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures8CapturesECs44SRMMtlaHN_9uu_csplit.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i7.i.i.i, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.an = load i64, ptr %i.am, align 8, !range !148, !alias.scope !217, !noundef !4 ; 3 uses
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs44SRMMtlaHN_9uu_csplit.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11PikeVMCacheECs44SRMMtlaHN_9uu_csplit.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata3nfa8thompson9backtrack5FrameEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %.val1.i.i.i2 = load ptr, ptr %i.aq, align 8, !alias.scope !221, !nonnull !4, !noundef !4
  %i.ar = shl nuw i64 %i.an, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !221
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata3nfa8thompson9backtrack5FrameEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata3nfa8thompson9backtrack5FrameEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %.val2.i.i.i = load i64, ptr %i.as, align 8, !range !40, !alias.scope !221, !noundef !4 ; 2 uses
  %i.at = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.at, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs44SRMMtlaHN_9uu_csplit.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata3nfa8thompson9backtrack5FrameEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.val3.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !221, !nonnull !4, !noundef !4
  %i.av = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !221
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11PikeVMCacheECs44SRMMtlaHN_9uu_csplit.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata3nfa8thompson9backtrack5FrameEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val = load i64, ptr %i.aw, align 8, !range !148, !noundef !4 ; 2 uses
  %i.ax = icmp sgt i64 %.val, 0
  br i1 %i.ax, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers12OnePassCacheECs44SRMMtlaHN_9uu_csplit.exit

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs44SRMMtlaHN_9uu_csplit.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val1 = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.az = shl nuw i64 %.val, 3
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers12OnePassCacheECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers12OnePassCacheECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECs44SRMMtlaHN_9uu_csplit.exit, %bb.o
  %i.ba = load i64, ptr %0, align 8, !range !222, !alias.scope !223, !noundef !4
  %i.bb = icmp eq i64 %i.ba, 2
  br i1 %i.bb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11HybridCacheECs44SRMMtlaHN_9uu_csplit.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers12OnePassCacheECs44SRMMtlaHN_9uu_csplit.exit
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata6hybrid3dfa5CacheECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata6hybrid3dfa5CacheECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(352) %i.bc) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11HybridCacheECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11HybridCacheECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers12OnePassCacheECs44SRMMtlaHN_9uu_csplit.exit, %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !range !222, !alias.scope !228, !noundef !4
  %i.bf = icmp eq i64 %i.be, 2
  br i1 %i.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers18ReverseHybridCacheECs44SRMMtlaHN_9uu_csplit.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11HybridCacheECs44SRMMtlaHN_9uu_csplit.exit
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata6hybrid3dfa5CacheECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.bd) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers18ReverseHybridCacheECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers18ReverseHybridCacheECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta8wrappers11HybridCacheECs44SRMMtlaHN_9uu_csplit.exit, %bb.q
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata6hybrid3dfa5CacheECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load i64, ptr %i.a, align 8, !range !40, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val4, 0
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = shl nuw i64 %.val4, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2 = load i64, ptr %i.e, align 8, !range !40, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit8, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.h = shl nuw i64 %.val2, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit8

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit8: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !233, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i = load i64, ptr %i.k, align 8, !alias.scope !233, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %.val1.i, 0
  br i1 %i.l, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs44SRMMtlaHN_9uu_csplit.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit8, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateECs44SRMMtlaHN_9uu_csplit.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateECs44SRMMtlaHN_9uu_csplit.exit.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit8 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !245, !noalias !233, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !248
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateECs44SRMMtlaHN_9uu_csplit.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcShE9drop_slowCs5skpMncfVhl_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #21, !noalias !233
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateECs44SRMMtlaHN_9uu_csplit.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateECs44SRMMtlaHN_9uu_csplit.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.r = icmp eq i64 %i.n, %.val1.i
  br i1 %i.r, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs44SRMMtlaHN_9uu_csplit.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateECs44SRMMtlaHN_9uu_csplit.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit8
  %.val2.i = load i64, ptr %i.i, align 8, !range !40, !alias.scope !233, !noundef !4 ; 2 uses
  %i.s = icmp eq i64 %.val2.i, 0
  br i1 %i.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs44SRMMtlaHN_9uu_csplit.exit.i
  %i.t = shl nuw i64 %.val2.i, 4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !233
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs44SRMMtlaHN_9uu_csplit.exit.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !264, !noundef !4 ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateEECs44SRMMtlaHN_9uu_csplit.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !268, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.u, align 8, !alias.scope !268, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !269
  %i.ac = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = bitcast <16 x i1> %i.ac to i16
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i, %bb.g
  %.sroa.05.016.i.i.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %.sroa.05.1.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.014.i.i.i.i.i.i = phi i64 [ %i.z, %bb.g ], [ %i.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i ]
  %.sroa.86.013.i.i.i.i.i.i = phi i16 [ %i.ae, %bb.g ], [ %i.an, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i ] ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.013.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i, %bb.h ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !272
  %i.ah = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -384 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ah to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i

_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i, %bb.h ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i, %bb.h ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.013.i.i.i.i.i.i, %bb.h ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i.i.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i.i.i.i.i, i64 %i.ao
  %i.aq = add i64 %.sroa.107.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !287, !noalias !268, !nonnull !4, !noundef !4
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !288
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcShE9drop_slowCs5skpMncfVhl_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar) #21, !noalias !268
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i: ; preds = %bb.i, %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i
  %i.av = icmp eq i64 %i.aq, 0
  br i1 %i.av, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i, label %bb.h

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i, %bb.f
  %i.aw = mul i64 %i.w, 24
  %i.ax = and i64 %i.aw, -16                      ; 2 uses
  %i.ay = add i64 %i.ax, 32                       ; 2 uses
  %i.az = add i64 %i.w, 17
  %i.ba = add i64 %i.az, %i.ay                    ; 4 uses
  %i.bb = icmp uge i64 %i.ba, %i.ay
  %i.bc = icmp ult i64 %i.ba, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bb)
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i
  %i.be = load ptr, ptr %i.u, align 8, !alias.scope !264, !nonnull !4, !noundef !4
  %i.bf = sub i64 -32, %i.ax
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !noalias !264
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateEECs44SRMMtlaHN_9uu_csplit.exit, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %.val2.i.i = load i64, ptr %i.bh, align 8, !range !40, !alias.scope !295, !noundef !4 ; 2 uses
  %i.bi = icmp eq i64 %.val2.i.i, 0
  br i1 %i.bi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val3.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !295, !nonnull !4, !noundef !4
  %i.bk = shl nuw i64 %.val2.i.i, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !295
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i: ; preds = %bb.k, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3map7HashMapNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECs44SRMMtlaHN_9uu_csplit.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load i64, ptr %i.bl, align 8, !range !40, !alias.scope !295, !noundef !4 ; 2 uses
  %i.bm = icmp eq i64 %.val.i.i, 0
  br i1 %i.bm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !295, !nonnull !4, !noundef !4
  %i.bo = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !295
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %bb.l, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %.val2.i1.i = load i64, ptr %i.bp, align 8, !range !40, !alias.scope !299, !noundef !4 ; 2 uses
  %i.bq = icmp eq i64 %.val2.i1.i, 0
  br i1 %i.bq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i3.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3.i2.i = load ptr, ptr %i.br, align 8, !alias.scope !299, !nonnull !4, !noundef !4
  %i.bs = shl nuw i64 %.val2.i1.i, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i2.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !299
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i3.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i3.i: ; preds = %bb.m, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set9SparseSetECs44SRMMtlaHN_9uu_csplit.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i4.i = load i64, ptr %i.bt, align 8, !range !40, !alias.scope !299, !noundef !4 ; 2 uses
  %i.bu = icmp eq i64 %.val.i4.i, 0
  br i1 %i.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set10SparseSetsECs44SRMMtlaHN_9uu_csplit.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i3.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1.i5.i = load ptr, ptr %i.bv, align 8, !alias.scope !299, !nonnull !4, !noundef !4
  %i.bw = shl nuw i64 %.val.i4.i, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !299
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set10SparseSetsECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set10SparseSetsECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit.i3.i, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load i64, ptr %i.bx, align 8, !range !40, !noundef !4 ; 2 uses
  %i.by = icmp eq i64 %.val, 0
  br i1 %i.by, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set10SparseSetsECs44SRMMtlaHN_9uu_csplit.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val1 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  %i.ca = shl nuw i64 %.val, 2
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util10sparse_set10SparseSetsECs44SRMMtlaHN_9uu_csplit.exit, %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val6 = load i64, ptr %i.cb, align 8, !range !40, !noundef !4 ; 2 uses
  %i.cc = icmp eq i64 %.val6, 0
  br i1 %i.cc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state17StateBuilderEmptyECs44SRMMtlaHN_9uu_csplit.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val7 = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %.val6, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state17StateBuilderEmptyECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state17StateBuilderEmptyECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs5skpMncfVhl_14regex_automata4util10primitives7StateIDEECs44SRMMtlaHN_9uu_csplit.exit, %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.cf = load i32, ptr %i.ce, align 8, !range !303, !alias.scope !300, !noundef !4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata6hybrid3dfa10StateSaverECs44SRMMtlaHN_9uu_csplit.exit

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state17StateBuilderEmptyECs44SRMMtlaHN_9uu_csplit.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !313, !nonnull !4, !noundef !4
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !313
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata6hybrid3dfa10StateSaverECs44SRMMtlaHN_9uu_csplit.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcShE9drop_slowCs5skpMncfVhl_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ch) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata6hybrid3dfa10StateSaverECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata6hybrid3dfa10StateSaverECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs5skpMncfVhl_14regex_automata4util11determinize5state17StateBuilderEmptyECs44SRMMtlaHN_9uu_csplit.exit, %bb.q, %bb.r
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.b = load i64, ptr %0, align 8, !range !148, !alias.scope !314, !noundef !4 ; 3 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !320, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !320
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !321, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  %i.g = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit
    i64 1, label %bb.e
  ], !prof !155

default.unreachable:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit
  unreachable

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit
  %i.i = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit
  %i.l = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !324, !noalias !321
  store i8 3, ptr %i.a, align 8, !alias.scope !324, !noalias !321
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22, !noalias !321
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs44SRMMtlaHN_9uu_csplit.exit, %bb.d, %bb.e
end_hunk_0
begin_hunk_1_@_RNvMNtCs44SRMMtlaHN_9uu_csplit10split_nameNtB2_9SplitName3get:bb.a
bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !896
  %i.dc = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.dd = and i64 %i.dc, 3
  switch i64 %i.dd, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i.i
    i64 3, label %bb.ae
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i.i
    i64 1, label %bb.af
  ], !prof !155

bb.ae:                                            ; preds = %bb.ad
  %i.de = icmp ult ptr %i.db, inttoptr (i64 188978561024 to ptr)
  %i.df = and i64 %i.dc, 1095216660480
  %i.dg = icmp ne i64 %i.df, 1095216660480
  call void @llvm.assume(i1 %i.de)
  call void @llvm.assume(i1 %i.dg)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.dh = getelementptr i8, ptr %i.db, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !899, !noalias !896
  store i8 3, ptr %i.e, align 8, !alias.scope !899, !noalias !896
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di) #22, !noalias !902
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !896
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ab
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !895
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i.i, %bb.ac, %bb.ab
  %.sroa.0.0.i6.i.i.i.i.i.i = phi ptr [ %i.db, %bb.ab ], [ null, %bb.ac ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !886
  br label %bb.ai

bb.ah:                                            ; preds = %bb.y
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23, !noalias !886
  unreachable

bb.ai:                                            ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i152.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i118.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.0.i6.i.i.i.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i6.i.i.i119.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i118.i.i.i ], [ %.sroa.0.0.i6.i.i.i153.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i152.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %.val.i104.i.i.i = load i64, ptr %i.l, align 8, !range !40, !alias.scope !906, !noalias !907, !noundef !4 ; 2 uses
  %i.dj = icmp eq i64 %.val.i104.i.i.i, 0
  br i1 %i.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit106.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val1.i105.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx14.i.i, align 8, !alias.scope !906, !noalias !907, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i105.i.i.i, i64 noundef %.val.i104.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !908
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit106.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit106.i.i.i: ; preds = %bb.aj, %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %.val.i107.i.i.i = load i64, ptr %i.m, align 8, !range !40, !alias.scope !912, !noalias !913, !noundef !4 ; 2 uses
  %i.dk = icmp eq i64 %.val.i107.i.i.i, 0
  br i1 %i.dk, label %_RINvXs_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB5_11UnsignedIntINtB5_9FormatteryE3fmtQQINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit106.i.i.i
  %.val1.i108.i.i.i = load ptr, ptr %.sroa.499.0..sroa_idx.i.i, align 8, !alias.scope !912, !noalias !913, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i108.i.i.i, i64 noundef %.val.i107.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !914
  br label %_RINvXs_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB5_11UnsignedIntINtB5_9FormatteryE3fmtQQINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs44SRMMtlaHN_9uu_csplit.exit113.thread.i.i.i: ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !886
  %i.dl = icmp ugt i64 %i.cb, 65535
  br i1 %i.dl, label %bb.as, label %bb.al, !prof !915

bb.al:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs44SRMMtlaHN_9uu_csplit.exit113.thread.i.i.i
  %i.dm = trunc nuw i64 %i.cb to i16
  store ptr %i.m, ptr %i.j, align 8, !noalias !886
  %.sroa.440.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.440.0..sroa_idx.i.i.i, align 8, !noalias !886
  %i.dn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.l, ptr %i.dn, align 8, !noalias !886
  %.sroa.444.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !noalias !886
  %i.do = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %i.do, align 8, !noalias !886
  %.sroa.449.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i16 %i.dm, ptr %.sroa.449.0..sroa_idx.i.i.i, align 8, !noalias !886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !916
  store ptr %i.ac, ptr %i.d, align 8, !noalias !916
  %i.dp = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr null, ptr %i.dp, align 8, !noalias !916
  %i.dq = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @12, ptr noundef nonnull @21, ptr noundef nonnull %i.j) #22, !noalias !895
  %i.dr = load ptr, ptr %i.dp, align 8, !noalias !916, !noundef !4 ; 5 uses
  %.not.i5.i.i.i116.i.i.i = icmp eq ptr %i.dr, null ; 2 uses
  br i1 %i.dq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  br i1 %.not.i5.i.i.i116.i.i.i, label %bb.ar, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i118.i.i.i, !prof !640

bb.an:                                            ; preds = %bb.al
  br i1 %.not.i5.i.i.i116.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i118.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !921
  %i.ds = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dt = and i64 %i.ds, 3
  switch i64 %i.dt, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i117.i.i.i
    i64 3, label %bb.ap
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i117.i.i.i
    i64 1, label %bb.aq
  ], !prof !155

bb.ap:                                            ; preds = %bb.ao
  %i.du = icmp ult ptr %i.dr, inttoptr (i64 188978561024 to ptr)
  %i.dv = and i64 %i.ds, 1095216660480
  %i.dw = icmp ne i64 %i.dv, 1095216660480
  call void @llvm.assume(i1 %i.du)
  call void @llvm.assume(i1 %i.dw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i117.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.dx = getelementptr i8, ptr %i.dr, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dx) ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.dx, ptr %i.dy, align 8, !alias.scope !924, !noalias !921
  store i8 3, ptr %i.c, align 8, !alias.scope !924, !noalias !921
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dy) #22, !noalias !927
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i117.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i117.i.i.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !921
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i118.i.i.i

bb.ar:                                            ; preds = %bb.am
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !895
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i118.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i117.i.i.i, %bb.an, %bb.am
  %.sroa.0.0.i6.i.i.i119.i.i.i = phi ptr [ %i.dr, %bb.am ], [ null, %bb.an ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i117.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !886
  br label %bb.ai

bb.as:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs44SRMMtlaHN_9uu_csplit.exit113.thread.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #23, !noalias !886
  unreachable

bb.at:                                            ; preds = %bb.z
  %i.dz = icmp eq i64 %.sroa.12.0.copyload24.i.i, 2 ; 2 uses
  br i1 %i.dz, label %select.unfold.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload13.i.i, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !928, !noalias !886, !noundef !4
  %i.ec = icmp sgt i8 %i.eb, -65
  br i1 %i.ec, label %select.unfold.i.i.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i: ; preds = %bb.au
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.0.copyload13.i.i, i64 noundef %.sroa.12.0.copyload24.i.i, i64 noundef 0, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #23, !noalias !886
  unreachable

select.unfold.i.i.i:                              ; preds = %bb.au, %bb.at
  %i.ed = load i8, ptr %.sroa.9.0.copyload13.i.i, align 1, !alias.scope !931, !noalias !886, !noundef !4 ; 2 uses
  %i.ee = add i8 %i.ed, -65
  %i.ef = icmp ult i8 %i.ee, 26
  %i.eg = select i1 %i.ef, i8 32, i8 0
  %.sroa.012.0.i.i.i.i = or i8 %i.eg, %i.ed
  %i.eh = icmp eq i8 %.sroa.012.0.i.i.i.i, 48
  br i1 %i.eh, label %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.i.i.i, label %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread.i.i.i

_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.i.i.i: ; preds = %select.unfold.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload13.i.i, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !931, !noalias !886, !noundef !4 ; 2 uses
  %i.ek = add i8 %i.ej, -65
  %i.el = icmp ult i8 %i.ek, 26
  %i.em = select i1 %i.el, i8 32, i8 0
  %.sroa.012.0.1.i.i.i.i = or i8 %i.em, %i.ej
  %i.en = icmp eq i8 %.sroa.012.0.1.i.i.i.i, 120
  br i1 %i.en, label %bb.av, label %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread.i.i.i

bb.av:                                            ; preds = %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.i.i.i
  br i1 %i.dz, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit145.thread.i.i.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit145.thread.i.i.i: ; preds = %bb.av
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload13.i.i, i64 2
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !934, !noalias !886, !noundef !4
  %i.eq = icmp slt i8 %i.ep, -64
  br i1 %i.eq, label %bb.aw, label %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, !prof !640

_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i: ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit145.thread.i.i.i, %bb.av
  %i.er = add nsw i64 %.sroa.12.0.copyload24.i.i, -2
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.9.0.copyload13.i.i, i64 2
  br label %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread.i.i.i

bb.aw:                                            ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit145.thread.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.0.copyload13.i.i, i64 noundef %.sroa.12.0.copyload24.i.i, i64 noundef 0, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23, !noalias !886
  unreachable

_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread.i.i.i: ; preds = %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i, %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.i.i.i, %select.unfold.i.i.i, %bb.z
  %.sroa.012.0.i.i.i.a = phi ptr [ %.sroa.9.0.copyload13.i.i, %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i ], [ inttoptr (i64 1 to ptr), %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.i.i.i ], [ inttoptr (i64 1 to ptr), %select.unfold.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.z ]
  %.sroa.3.0.i.i.i = phi i64 [ 2, %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i ], [ 0, %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.i.i.i ], [ 0, %select.unfold.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %.sroa.013.0.i.i.i = phi ptr [ %i.es, %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i ], [ %.sroa.9.0.copyload13.i.i, %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.i.i.i ], [ %.sroa.9.0.copyload13.i.i, %select.unfold.i.i.i ], [ %.sroa.9.0.copyload13.i.i, %bb.z ]
  %.sroa.314.0.i.i.i = phi i64 [ %i.er, %_RNvXs9_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i ], [ %.sroa.12.0.copyload24.i.i, %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.i.i.i ], [ %.sroa.12.0.copyload24.i.i, %select.unfold.i.i.i ], [ %.sroa.12.0.copyload24.i.i, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !886
  store ptr %.sroa.012.0.i.i.i.a, ptr %i.i, align 8, !noalias !886, !captures !428
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sroa.3.0.i.i.i, ptr %i.et, align 8, !noalias !886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !886
  store ptr %.sroa.013.0.i.i.i, ptr %i.h, align 8, !noalias !886, !captures !428
  %i.eu = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.314.0.i.i.i, ptr %i.eu, align 8, !noalias !886
  %i.ev = call i64 @llvm.usub.sat.i64(i64 %i.cb, i64 %.sroa.3.0.i.i.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !886
  %i.ew = icmp ugt i64 %i.ev, 65535
  br i1 %i.ew, label %bb.be, label %bb.ax, !prof !640

bb.ax:                                            ; preds = %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread.i.i.i
  %i.ex = trunc nuw i64 %i.ev to i16
  store ptr %i.m, ptr %i.g, align 8, !noalias !886
  %.sroa.466.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.466.0..sroa_idx.i.i.i, align 8, !noalias !886
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.ey, align 8, !noalias !886
  %.sroa.470.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.470.0..sroa_idx.i.i.i, align 8, !noalias !886
  %i.ez = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.ez, align 8, !noalias !886
  %.sroa.474.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.474.0..sroa_idx.i.i.i, align 8, !noalias !886
  %i.fa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %i.fa, align 8, !noalias !886
  %.sroa.479.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i16 %i.ex, ptr %.sroa.479.0..sroa_idx.i.i.i, align 8, !noalias !886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !937
  store ptr %i.ac, ptr %i.b, align 8, !noalias !937
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.fb, align 8, !noalias !937
  %i.fc = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @12, ptr noundef nonnull @26, ptr noundef nonnull %i.g) #22, !noalias !942
  %i.fd = load ptr, ptr %i.fb, align 8, !noalias !937, !noundef !4 ; 5 uses
  %.not.i5.i.i.i150.i.i.i = icmp eq ptr %i.fd, null ; 2 uses
  br i1 %i.fc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br i1 %.not.i5.i.i.i150.i.i.i, label %bb.bd, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i152.i.i.i, !prof !640

bb.az:                                            ; preds = %bb.ax
  br i1 %.not.i5.i.i.i150.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i152.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !943
  %i.fe = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.ff = and i64 %i.fe, 3
  switch i64 %i.ff, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i151.i.i.i
    i64 3, label %bb.bb
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i151.i.i.i
    i64 1, label %bb.bc
  ], !prof !155

bb.bb:                                            ; preds = %bb.ba
  %i.fg = icmp ult ptr %i.fd, inttoptr (i64 188978561024 to ptr)
  %i.fh = and i64 %i.fe, 1095216660480
  %i.fi = icmp ne i64 %i.fh, 1095216660480
  call void @llvm.assume(i1 %i.fg)
  call void @llvm.assume(i1 %i.fi)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i151.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.fj = getelementptr i8, ptr %i.fd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8, !alias.scope !946, !noalias !943
  store i8 3, ptr %i.a, align 8, !alias.scope !946, !noalias !943
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fk) #22, !noalias !949
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i151.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i151.i.i.i: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !943
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i152.i.i.i

bb.bd:                                            ; preds = %bb.ay
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !942
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i152.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i151.i.i.i, %bb.az, %bb.ay
  %.sroa.0.0.i6.i.i.i153.i.i.i = phi ptr [ %i.fd, %bb.ay ], [ null, %bb.az ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i151.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !886
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !886
  br label %bb.ai

bb.be:                                            ; preds = %_RNvMNtNtCs6JMX4GRUq9U_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #23, !noalias !886
  unreachable

bb.bf:                                            ; preds = %bb.k
  %i.fl = trunc nuw i8 %.sroa.4.0.copyload14.i.i to i1 ; 2 uses
  %spec.select.i.i = select i1 %i.fl, ptr @30, ptr inttoptr (i64 1 to ptr)
  %spec.select82.i.i = select i1 %i.fl, i64 2, i64 0
  br label %bb.bg

.thread50.i.i:                                    ; preds = %.thread.i.i
  %i.fm = trunc nuw i8 %.sroa.4.0.copyload1444.i.i to i1 ; 2 uses
  %spec.select83.i.i = select i1 %i.fm, ptr @24, ptr inttoptr (i64 1 to ptr)
  %spec.select84.i.i = select i1 %i.fm, i64 2, i64 0
  br label %bb.bg

bb.bg:                                            ; preds = %.thread50.i.i, %bb.bf, %.split.i.i
  %.sink81.i.i = phi ptr [ %spec.select.i.i, %bb.bf ], [ inttoptr (i64 1 to ptr), %.split.i.i ], [ %spec.select83.i.i, %.thread50.i.i ]
  %.sink.i.i = phi i64 [ %spec.select82.i.i, %bb.bf ], [ 0, %.split.i.i ], [ %spec.select84.i.i, %.thread50.i.i ]
  %.sroa.12.5.i.i = phi i64 [ %.sroa.12.0.copyload22.i.i, %bb.bf ], [ %.sroa.12.0.copyload.i.i, %.split.i.i ], [ %.sroa.12.0.copyload20.i.i, %.thread50.i.i ] ; 2 uses
  %.sroa.9.8.i.i = phi ptr [ %.sroa.9.0.copyload11.i.i, %bb.bf ], [ %.sroa.9.0.copyload.i.i, %.split.i.i ], [ %.sroa.9.0.copyload9.i.i, %.thread50.i.i ] ; 2 uses
  %.sroa.0.8.i.i = phi i64 [ %.sroa.0.0.copyload3.i.i, %bb.bf ], [ %.sroa.0.0.copyload.i.i, %.split.i.i ], [ %.sroa.0.0.copyload2.i.i, %.thread50.i.i ] ; 2 uses
  store ptr %.sink81.i.i, ptr %i.q, align 8, !noalias !831, !captures !428
  %i.fn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sink.i.i, ptr %i.fn, align 8, !noalias !831
  %i.fo = load i64, ptr %1, align 8, !range !422, !alias.scope !833, !noalias !806, !noundef !4
  %i.fp = trunc nuw i64 %i.fo to i1
  br i1 %i.fp, label %bb.bh, label %.split116.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !833, !noalias !806
  br label %.split116.i.i

.split116.i.i:                                    ; preds = %bb.bh, %bb.bg, %bb.l, %._crit_edge.i, %bb.j, %.split77.i.i, %.thread78.i.i, %bb.g
  %.sroa.9.3.sink.i.i = phi ptr [ %.sroa.9.0.copyload7.i.i, %.split77.i.i ], [ %.sroa.9.0.i.i, %bb.g ], [ %.sroa.9.8.i.i, %bb.bg ], [ %.sroa.9.0.copyload7.i.i, %bb.j ], [ %.sroa.9.0.i.i, %bb.l ], [ %.sroa.9.8.i.i, %bb.bh ], [ %.sroa.9.0.copyload7.i.i, %._crit_edge.i ], [ %.sroa.9.0.copyload7.i.i, %.thread78.i.i ] ; 3 uses
  %.sroa.0.9.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i, %.split77.i.i ], [ %.sroa.0.0.i.i, %bb.g ], [ %.sroa.0.8.i.i, %bb.bg ], [ %.sroa.0.0.copyload1.i.i, %bb.j ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.8.i.i, %bb.bh ], [ %.sroa.0.0.copyload1.i.i, %._crit_edge.i ], [ %.sroa.0.0.copyload1.i.i, %.thread78.i.i ]
  %.sroa.043.0.i.i = phi i64 [ %spec.select.i, %.split77.i.i ], [ 0, %bb.g ], [ 0, %bb.bg ], [ 0, %bb.j ], [ %i.bt, %bb.l ], [ %i.fr, %bb.bh ], [ %.pre.i, %._crit_edge.i ], [ %i.bm, %.thread78.i.i ]
  %.sroa.6.0.i.i = phi i64 [ %.sroa.12.0.copyload18.i.i, %.split77.i.i ], [ %.sroa.12.0.i.i, %bb.g ], [ %.sroa.12.5.i.i, %bb.bg ], [ %.sroa.12.0.copyload18.i.i, %bb.j ], [ %.sroa.12.0.i.i, %bb.l ], [ %.sroa.12.5.i.i, %bb.bh ], [ %.sroa.12.0.copyload18.i.i, %._crit_edge.i ], [ %.sroa.12.0.copyload18.i.i, %.thread78.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !831
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.3.sink.i.i) ]
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format11zero_pad_to(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.3.sink.i.i, i64 noundef %.sroa.6.0.i.i, i64 noundef %.sroa.043.0.i.i) #22, !noalias !831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !831
  store ptr %i.q, ptr %i.n, align 8, !noalias !831
  %.sroa.491.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.491.0..sroa_idx.i.i, align 8, !noalias !831
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.fs, align 8, !noalias !831
  %.sroa.495.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.495.0..sroa_idx.i.i, align 8, !noalias !831
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @31, ptr noundef nonnull %i.n) #22, !noalias !831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !831
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %.val.i131.i.i = load i64, ptr %i.o, align 8, !range !40, !alias.scope !950, !noalias !831, !noundef !4 ; 2 uses
  %i.ft = icmp eq i64 %.val.i131.i.i, 0
  br i1 %i.ft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit133.i.i, label %bb.bi

bb.bi:                                            ; preds = %.split116.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val1.i132.i.i = load ptr, ptr %i.fu, align 8, !alias.scope !950, !noalias !831, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i132.i.i, i64 noundef %.val.i131.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !953
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit133.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit133.i.i: ; preds = %bb.bi, %.split116.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !831
  br label %bb.r

_RINvXs_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB5_11UnsignedIntINtB5_9FormatteryE3fmtQQINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %bb.ak, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit106.i.i.i, %bb.w, %bb.v
  %.sroa.0.2.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.ak ], [ %.sroa.0.1.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit106.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.w ], [ %.sroa.0.0.i.i.i, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !830
  %.not.i8 = icmp eq ptr %.sroa.0.2.i.i.i, null
  br i1 %.not.i8, label %bb.bj, label %_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format11UnsignedIntyE3fmtQINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit

bb.bj:                                            ; preds = %_RINvXs_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB5_11UnsignedIntINtB5_9FormatteryE3fmtQQINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fw = load ptr, ptr %i.fv, align 8, !alias.scope !803, !noalias !806, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !803, !noalias !806, !noundef !4 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.fz = load i64, ptr %i.ar, align 8, !alias.scope !966, !noalias !969, !noundef !4 ; 5 uses
  %i.ga = load i64, ptr %i.ac, align 8, !range !40, !alias.scope !966, !noalias !969, !noundef !4
  %i.gb = sub i64 %i.ga, %i.fz
  %i.gc = icmp ugt i64 %i.fy, %i.gb
  br i1 %i.gc, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs44SRMMtlaHN_9uu_csplit.exit.thread.i.i.i.i.i14.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i12.i, !prof !640

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs44SRMMtlaHN_9uu_csplit.exit.thread.i.i.i.i.i14.i: ; preds = %bb.bj
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.fz, i64 noundef range(i64 0, -9223372036854775808) %i.fy, i64 noundef 1, i64 noundef 1) #22, !noalias !969
  %i.gd = load i64, ptr %i.ar, align 8, !alias.scope !974, !noalias !969, !noundef !4 ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, -1
  call void @llvm.assume(i1 %i.ge)
  br label %bb.bk

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i12.i: ; preds = %bb.bj
  %i.gf = icmp sgt i64 %i.fz, -1
  call void @llvm.assume(i1 %i.gf)
  %.not.i.i.i.i.i13.i = icmp samesign eq i64 %i.fy, 0
  br i1 %.not.i.i.i.i.i13.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit, label %bb.bk

bb.bk:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i12.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs44SRMMtlaHN_9uu_csplit.exit.thread.i.i.i.i.i14.i
  %i.gg = phi i64 [ %i.gd, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs44SRMMtlaHN_9uu_csplit.exit.thread.i.i.i.i.i14.i ], [ %i.fz, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i12.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !974, !noalias !969, !nonnull !4, !noundef !4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull readonly align 1 %i.fw, i64 range(i64 0, -9223372036854775808) %i.fy, i1 false), !noalias !975
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit

_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format11UnsignedIntyE3fmtQINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvXs_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB5_11UnsignedIntINtB5_9FormatteryE3fmtQQINtNtCs7tKScEop1B6_5alloc3vec3VechEECs44SRMMtlaHN_9uu_csplit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0.2.i.i.i, ptr %i.aa, align 8
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #23
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs2vKOLqTMYjT_3std2fs4FileE9flush_bufCs44SRMMtlaHN_9uu_csplit:bb.a
  %switch.idx.cast.i.i.i = trunc i64 %i.ae to i8
  %spec.select.i.i.i = select i1 %i.af, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ag = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ah, label %bb.f, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp eq ptr %i.o, null
  br i1 %i.ai, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.c, align 8, !noundef !4
  %i.ak = add i64 %i.aj, %i.p                     ; 2 uses
  store i64 %i.ak, ptr %i.c, align 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.d, %.split3, %.split2, %.split, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.h, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ @82, %bb.d ], [ %i.o, %.split3 ], [ %i.o, %.split2 ], [ %i.o, %.split ], [ %i.o, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @_RNvXs_NvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.1

.thread:                                          ; preds = %.split3, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1184
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit

bb.f:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1184
  %i.al = icmp ult ptr %i.o, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %i.p, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit

bb.g:                                             ; preds = %.split2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1184
  %i.ao = getelementptr i8, ptr %i.o, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.i, align 8, !alias.scope !1187, !noalias !1184
  store i8 3, ptr %i.a, align 8, !alias.scope !1187, !noalias !1184
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #22, !noalias !1184
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %.thread, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1184
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit
  %i.ap = phi i64 [ %i.ak, %bb.e ], [ %.pre, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit ]
  %i.aq = load ptr, ptr %i.b, align 8, !nonnull !4, !align !144, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !4 ; 2 uses
  %i.at = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.at)
  %.not = icmp ult i64 %i.ap, %i.as
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIE9drop_slowCs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1199, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1199
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4meta8strategy8StrategyEL_EECs44SRMMtlaHN_9uu_csplit.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4meta8strategy8StrategyEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4meta8strategy8StrategyEL_EECs44SRMMtlaHN_9uu_csplit.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4meta8strategy8StrategyEL_EECs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1209, !nonnull !4, !noundef !4
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1210
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIECs44SRMMtlaHN_9uu_csplit.exit

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4meta8strategy8StrategyEL_EECs44SRMMtlaHN_9uu_csplit.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcDNtNtNtCs5skpMncfVhl_14regex_automata4meta8strategy8StrategyEL_EECs44SRMMtlaHN_9uu_csplit.exit.i, %bb.c
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIECs44SRMMtlaHN_9uu_csplit.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIECs44SRMMtlaHN_9uu_csplit.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns12get_patterns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [20 x i8], align 1                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [1 x i8], align 1                 ; 3 uses
  %i.s = alloca [1 x i8], align 1                 ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 3 uses
  %i.u = alloca [24 x i8], align 8                ; 3 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  %i.ac = alloca [72 x i8], align 8               ; 7 uses
  %i.ad = alloca [72 x i8], align 8               ; 8 uses
  %i.ae = alloca [72 x i8], align 8               ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1214
  %i.ak = mul i64 %2, 56                          ; 3 uses
  %or.cond.i.i = icmp samesign ugt i64 %2, 164703072086692425
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !424

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1216
  %i.am = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 9) 8) #22, !noalias !1216 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.ao = ptrtoint ptr %i.am to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.4208.0.ph.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4208.0.ph.i, i64 %i.ak) #25, !noalias !1214
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.4208.0.i.a = phi i64 [ %2, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.10.0.i = phi i64 [ %i.ao, %bb.c ], [ 8, %bb.b ]
  %i.ap = inttoptr i64 %.sroa.10.0.i to ptr       ; 2 uses
  %i.aq = icmp samesign ule i64 %2, %.sroa.4208.0.i.a
  tail call void @llvm.assume(i1 %i.aq)
  store i64 %.sroa.4208.0.i.a, ptr %i.aj, align 8, !noalias !1214
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 6 uses
  store ptr %i.ap, ptr %i.ar, align 8, !noalias !1214
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  store i64 0, ptr %i.as, align 8, !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1214
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 60) #22, !noalias !1214
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.at = load ptr, ptr %i.ah, align 8, !alias.scope !1222, !noalias !1224, !noundef !4
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit102.i, !prof !640

bb.e:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1226
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !1224
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #23, !noalias !1227
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit102.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !1228, !noalias !1229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1214
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 26) #22, !noalias !1214
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  %i.aw = load ptr, ptr %i.af, align 8, !alias.scope !1233, !noalias !1235, !noundef !4
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i, !prof !640

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit102.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1237
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !1235
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #23, !noalias !1238
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit102.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.af, i64 32, i1 false), !alias.scope !1239, !noalias !1240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1214
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.5266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.5228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i
  %i.bs = phi ptr [ %i.ap, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %.be, %.backedge ] ; 2 uses
  %.sroa.15.8.copyload41 = phi i64 [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %.sroa.15.8.copyload41.be, %.backedge ] ; 16 uses
  %i.bt = phi ptr [ %1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %i.cj, %.backedge ] ; 5 uses
  %i.bu = phi i64 [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %i.ck, %.backedge ] ; 2 uses
  %i.bv = phi ptr [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %i.cl, %.backedge ] ; 2 uses
  %i.bw = phi i1 [ false, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %i.cm, %.backedge ]
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.cu, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bx = icmp eq ptr %i.bt, %i.az
  br i1 %i.bx, label %bb.cu, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.bt, align 8, !alias.scope !1211, !noalias !1241, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1211, !noalias !1241, !noundef !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.cc = phi ptr [ %i.bt, %bb.h ], [ %i.by, %bb.j ] ; 4 uses
  %.sroa.8.0.i = phi i64 [ %i.bu, %bb.h ], [ %i.cb, %bb.j ] ; 21 uses
  %.sroa.0.0.i = phi ptr [ %i.bv, %bb.h ], [ %i.bz, %bb.j ] ; 7 uses
  %i.cd = icmp eq ptr %i.cc, %i.az
  br i1 %i.cd, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_6copied6CopiedINtNtNtB5_5slice4iter4IterBM_EEE4peek0ECs44SRMMtlaHN_9uu_csplit.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.cc, align 8, !alias.scope !1211, !noalias !1242, !nonnull !4, !noundef !4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1211, !noalias !1242, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1214
  call fastcc void @_RNvMs4_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ch) #24
  %i.ci = load i64, ptr %i.ae, align 8, !range !222, !noalias !1214, !noundef !4
  %.not99.i = icmp eq i64 %i.ci, 2                ; 2 uses
  br i1 %.not99.i, label %bb.m, label %bb.n

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_6copied6CopiedINtNtNtB5_5slice4iter4IterBM_EEE4peek0ECs44SRMMtlaHN_9uu_csplit.exit.thread.i: ; preds = %bb.m, %bb.k
  %i.cj = phi ptr [ %i.ce, %bb.m ], [ %i.az, %bb.k ]
  %i.ck = phi i64 [ %i.ch, %bb.m ], [ %i.bu, %bb.k ]
  %i.cl = phi ptr [ %i.cf, %bb.m ], [ null, %bb.k ]
  %i.cm = phi i1 [ %.not99.i, %bb.m ], [ true, %bb.k ]
  %.sroa.7.0.i = phi i64 [ %.sroa.7.1.i, %bb.m ], [ 1, %bb.k ] ; 3 uses
  %.sroa.03.0.i = phi i64 [ %.sroa.03.1.i, %bb.m ], [ 1, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1214
  call fastcc void @_RNvMs4_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.8.0.i) #24
  %i.cn = load i64, ptr %i.ac, align 8, !range !222, !noalias !1214, !noundef !4
  %.not100.i = icmp eq i64 %i.cn, 2
  br i1 %.not100.i, label %bb.ae, label %bb.ad

bb.m:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit.i, %bb.l
  %.sroa.7.1.i = phi i64 [ %.sroa.7.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit.i ], [ 1, %bb.l ]
  %.sroa.03.1.i = phi i64 [ %.sroa.03.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit.i ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1214
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_6copied6CopiedINtNtNtB5_5slice4iter4IterBM_EEE4peek0ECs44SRMMtlaHN_9uu_csplit.exit.thread.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 72, i1 false), !noalias !1214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1214
  call void @_RNvMNtNtCs5skpMncfVhl_14regex_automata4util8capturesNtB2_8Captures17get_group_by_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 5) #22, !noalias !1214
  %i.co = load i64, ptr %i.y, align 8, !range !422, !noalias !1214, !noundef !4
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.cq = load i64, ptr %i.bb, align 8, !noalias !1214, !noundef !4 ; 4 uses
  %i.cr = load ptr, ptr %i.bc, align 8, !noalias !1214, !nonnull !4, !noundef !4 ; 4 uses
  %i.cs = load i64, ptr %i.bd, align 8, !noalias !1214, !noundef !4 ; 7 uses
  %i.ct = load i64, ptr %i.be, align 8, !noalias !1214, !noundef !4 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1214
  %i.cu = icmp ugt i64 %i.cs, %i.ct
  %i.cv = icmp ugt i64 %i.ct, %i.cq
  %or.cond.i.i.i = or i1 %i.cu, %i.cv
  br i1 %or.cond.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread3.i.i, label %bb.p, !prof !1250

bb.p:                                             ; preds = %bb.o
  %i.cw = icmp eq i64 %i.cs, %i.cq
  br i1 %i.cw, label %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = icmp eq i64 %i.cs, 0
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.cy = icmp eq i64 %i.ct, %i.cq
  br i1 %i.cy, label %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !1251, !noalias !1254, !noundef !4
  %i.db = icmp sgt i8 %i.da, -65
  br i1 %i.db, label %bb.r, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread3.i.i, !prof !1257

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i.i: ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !1251, !noalias !1254, !noundef !4
  %i.de = icmp sgt i8 %i.dd, -65
  br i1 %i.de, label %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread3.i.i, !prof !1258

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread3.i.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i.i, %bb.s, %bb.o
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cq, i64 noundef %i.cs, i64 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #23, !noalias !1254
  unreachable

_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i.i, %bb.r, %bb.p
  %i.df = sub nuw i64 %i.ct, %i.cs                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 3 uses
  switch i64 %i.df, label %thread-pre-split.i.i [
    i64 0, label %.loopexit334.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !1259, !noalias !1262, !noundef !4 ; 2 uses
  switch i8 %i.dh, label %bb.u [
    i8 43, label %.loopexit334.i
    i8 45, label %.loopexit334.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i
  %.pr.i.i = load i8, ptr %i.dg, align 1, !alias.scope !1259, !noalias !1262
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i, %bb.t
  %i.di = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.dh, %bb.t ]
  %cond.i.i = icmp eq i8 %i.di, 43                ; 2 uses
  %i.dj = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.df, %i.dj      ; 4 uses
end_hunk_2
begin_hunk_3_@_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns12get_patterns:bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1367
  %i.mk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !1367 ; 3 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i159.i, %bb.ci
  %.sroa.4.0.ph.i165.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i159.i ], [ 0, %bb.ci ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i165.i, i64 %.sroa.8.0.i) #25, !noalias !1373
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i: ; preds = %bb.cm, %bb.cj
  %i.mm = phi ptr [ %i.mk, %bb.cm ], [ inttoptr (i64 1 to ptr), %bb.cj ]
  %.0.val.off.i163.i = add i64 %.sroa.0233.0.copyload.i, -1
  %switch.i164.i = icmp ult i64 %.0.val.off.i163.i, -2
  br i1 %switch.i164.i, label %bb.cl, label %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patterns0B5_.exit.i

bb.cl:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4234.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4234.0.copyload.i, i64 noundef %.sroa.0233.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1374
  br label %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patterns0B5_.exit.i

bb.cm:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i159.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mk, ptr nonnull readonly align 1 %.sroa.0.0.i, i64 %.sroa.8.0.i, i1 false), !noalias !1379
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i

_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patterns0B5_.exit.i: ; preds = %bb.cl, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1214
  br label %bb.cf

bb.cn:                                            ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit144.i
  %.sroa.4227.0.copyload.i = load ptr, ptr %.sroa.4227.0..sroa_idx.i, align 8, !noalias !1214
  %i.mn = load <2 x i64>, ptr %.sroa.5228.0..sroa_idx.i, align 8, !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1214
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %i.mo = load i64, ptr %i.aj, align 8, !range !40, !alias.scope !1380, !noalias !1383, !noundef !4
  %i.mp = icmp eq i64 %.sroa.15.8.copyload41, %i.mo
  br i1 %i.mp, label %bb.co, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit166.i

bb.co:                                            ; preds = %bb.cn
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #21, !noalias !1383
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit166.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit166.i: ; preds = %bb.co, %bb.cn
  %i.mq = load ptr, ptr %i.ar, align 8, !alias.scope !1380, !noalias !1383, !nonnull !4, !noundef !4 ; 2 uses
  %i.mr = getelementptr inbounds nuw [56 x i8], ptr %i.mq, i64 %.sroa.15.8.copyload41 ; 7 uses
  store i32 1, ptr %i.mr, align 8, !noalias !1385
  %.sroa.4184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store i32 %.sroa.09.0.i, ptr %.sroa.4184.0..sroa_idx.i, align 4, !noalias !1385
  %.sroa.5185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 %i.kq, ptr %.sroa.5185.0..sroa_idx.i, align 8, !noalias !1385
  %.sroa.5185.sroa.4.0..sroa.5185.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store ptr %.sroa.4227.0.copyload.i, ptr %.sroa.5185.sroa.4.0..sroa.5185.0..sroa_idx.sroa_idx.i, align 8, !noalias !1385
  %.sroa.5185.sroa.5.0..sroa.5185.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store <2 x i64> %i.mn, ptr %.sroa.5185.sroa.5.0..sroa.5185.0..sroa_idx.sroa_idx.i, align 8, !noalias !1385
  %.sroa.6186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  store i64 %.sroa.03.0.i, ptr %.sroa.6186.0..sroa_idx.i, align 8, !noalias !1385
  %.sroa.7187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  store i64 %.sroa.7.0.i, ptr %.sroa.7187.0..sroa_idx.i, align 8, !noalias !1385
  %i.ms = add i64 %.sroa.15.8.copyload41, 1       ; 2 uses
  store i64 %i.ms, ptr %i.as, align 8, !alias.scope !1380, !noalias !1383
  br label %bb.bv

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i: ; preds = %bb.ae, %.thread.i, %bb.cs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i
  %.sroa.15.0 = phi i64 [ %.sroa.8.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i ], [ %.sroa.8.0.i, %bb.cs ], [ 0, %.thread.i ], [ %.sroa.8.0.i, %bb.ae ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %.sink.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i ], [ %i.nc, %bb.cs ], [ inttoptr (i64 1 to ptr), %.thread.i ], [ inttoptr (i64 1 to ptr), %bb.ae ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #22, !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1214
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #22, !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1214
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !1386, !noalias !1214, !nonnull !4, !noundef !4 ; 2 uses
  %i.mt = icmp eq i64 %.sroa.15.8.copyload41, 0
  br i1 %i.mt, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.mv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.mv = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  %i.mw = load i32, ptr %i.mu, align 8, !range !303, !alias.scope !1389, !noalias !1394, !noundef !4
  %cond.i.i.i.i.i = icmp eq i32 %i.mw, 0
  br i1 %cond.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.mx) #22, !noalias !1394
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.my = icmp eq i64 %i.mv, %.sroa.15.8.copyload41
  br i1 %i.my, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i
  %.val2.i.i = load i64, ptr %i.aj, align 8, !range !40, !alias.scope !1386, !noalias !1214, !noundef !4 ; 2 uses
  %i.mz = icmp eq i64 %.val2.i.i, 0
  br i1 %i.mz, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %i.na = mul nuw i64 %.val2.i.i, 56
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.na, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !1394
  br label %bb.ct

.loopexit.i:                                      ; preds = %bb.ah, %.preheader56.i113.i.preheader, %.lr.ph.i123.i
  %.not.i167.i = icmp slt i64 %.sroa.8.0.i, 0
  br i1 %.not.i167.i, label %bb.cr, label %.thread.i, !prof !1395

.thread.i:                                        ; preds = %.loopexit.i
  %i.nb = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.nb, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i: ; preds = %bb.af, %bb.af, %.thread.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1396
  %i.nc = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !1396 ; 3 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.cr, label %bb.cs

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit130.i: ; preds = %.preheader56.i113.i, %bb.ai, %.preheader.i121.i
  %.sroa.11200.2.i = phi i64 [ %i.fo, %bb.ai ], [ 0, %.preheader.i121.i ], [ %i.fe, %.preheader56.i113.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.ne = load i64, ptr %i.aj, align 8, !range !40, !alias.scope !1399, !noalias !1402, !noundef !4
  %i.nf = icmp eq i64 %.sroa.15.8.copyload41, %i.ne
  br i1 %i.nf, label %bb.cq, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i

bb.cq:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit130.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #21, !noalias !1402
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i: ; preds = %bb.cq, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit130.i
  %i.ng = load ptr, ptr %i.ar, align 8, !alias.scope !1399, !noalias !1402, !nonnull !4, !noundef !4 ; 2 uses
  %i.nh = getelementptr inbounds nuw [56 x i8], ptr %i.ng, i64 %.sroa.15.8.copyload41 ; 4 uses
  store i32 0, ptr %i.nh, align 8, !noalias !1404
  %.sroa.4203.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store i64 %.sroa.11200.2.i, ptr %.sroa.4203.0..sroa_idx.i, align 8, !noalias !1404
  %.sroa.5204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store i64 %.sroa.03.0.i, ptr %.sroa.5204.0..sroa_idx.i, align 8, !noalias !1404
  %.sroa.6205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  store i64 %.sroa.7.0.i, ptr %.sroa.6205.0..sroa_idx.i, align 8, !noalias !1404
  %i.ni = add i64 %.sroa.15.8.copyload41, 1       ; 2 uses
  store i64 %i.ni, ptr %i.as, align 8, !alias.scope !1399, !noalias !1402
  br label %.backedge

.backedge:                                        ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i
  %.be = phi ptr [ %i.ng, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i ], [ %i.ln, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i ]
  %.sroa.15.8.copyload41.be = phi i64 [ %i.ni, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i ], [ %i.lo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i ]
  br label %bb.g

bb.cr:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i, %.loopexit.i
  %.sroa.4291.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i ], [ 0, %.loopexit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4291.0.ph.i, i64 %.sroa.8.0.i) #25, !noalias !1214
  unreachable

bb.cs:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nc, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i, i64 %.sroa.8.0.i, i1 false), !noalias !1214
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i

bb.ct:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1214
  store i64 7, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.0, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.15.0, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit

bb.cu:                                            ; preds = %bb.i, %bb.h
  %.sroa.833.8.copyload35 = load i64, ptr %i.aj, align 8, !noalias !1211 ; 3 uses
  %.sroa.13.8.copyload38 = load ptr, ptr %i.ar, align 8, !noalias !1211 ; 6 uses
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #22, !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1214
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #22, !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1214
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.8.copyload38) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %.idx.i = mul nuw nsw i64 %.sroa.15.8.copyload41, 56
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.13.8.copyload38, i64 %.idx.i
  %i.nk = icmp eq i64 %.sroa.15.8.copyload41, 0
  br i1 %i.nk, label %.loopexit, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.cu
  %i.nl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.eo, %.lr.ph.i.i16
  %i.nu = phi ptr [ %.sroa.13.8.copyload38, %.lr.ph.i.i16 ], [ %i.nv, %bb.eo ] ; 3 uses
  %.sroa.0.052.i.i = phi i64 [ 0, %.lr.ph.i.i16 ], [ %.sroa.914.1.ph.i.i, %bb.eo ] ; 6 uses
  %.sroa.914.051.i.i = phi i64 [ undef, %.lr.ph.i.i16 ], [ %.sroa.914.1.ph.i.i, %bb.eo ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.nw = load i32, ptr %i.nu, align 8, !range !303, !alias.scope !1411, !noalias !1414, !noundef !4
  %.not.i.i.i17 = icmp eq i32 %i.nw, 0
  br i1 %.not.i.i.i17, label %bb.cw, label %bb.eo

bb.cw:                                            ; preds = %bb.cv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %.val.i.i.i19 = load i64, ptr %i.nx, align 8, !alias.scope !1420, !noalias !1414, !noundef !4 ; 5 uses
  %i.ny = icmp eq i64 %.val.i.i.i19, 0
  br i1 %i.ny, label %_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nz = icmp eq i64 %.sroa.0.052.i.i, %.val.i.i.i19
  br i1 %i.nz, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oa = icmp ugt i64 %.sroa.0.052.i.i, %.val.i.i.i19
  br i1 %i.oa, label %_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit, label %bb.eo

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1421
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.p, align 8, !noalias !1421
  %i.ob = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #22, !noalias !1421
  store ptr %i.ob, ptr %i.q, align 8, !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1421
  %i.oc = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #22, !noalias !1421 ; 2 uses
  %i.od = extractvalue { ptr, i64 } %i.oc, 0
  %i.oe = extractvalue { ptr, i64 } %i.oc, 1
  store ptr %i.od, ptr %i.o, align 8, !noalias !1421
  store i64 %i.oe, ptr %i.nl, align 8, !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1421
  store ptr %i.o, ptr %i.n, align 8, !noalias !1421
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1424
  store ptr %i.q, ptr %i.f, align 8, !noalias !1424
  store ptr null, ptr %i.nm, align 8, !noalias !1424
  %i.of = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @35, ptr noundef nonnull %i.n) #22, !noalias !1421
  %i.og = load ptr, ptr %i.nm, align 8, !noalias !1424, !noundef !4 ; 7 uses
  %.not.i5.i.i.i.i.i = icmp eq ptr %i.og, null    ; 2 uses
  br i1 %i.of, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i5.i.i.i.i.i, label %bb.df, label %bb.dg, !prof !640

bb.db:                                            ; preds = %bb.cz
  br i1 %.not.i5.i.i.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.thread.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1429
  %i.oh = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oi = and i64 %i.oh, 3
  switch i64 %i.oi, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i
    i64 3, label %bb.dd
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i
    i64 1, label %bb.de
  ], !prof !155

default.unreachable:                              ; preds = %bb.ei, %bb.ee, %bb.dg, %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  %i.oj = icmp ult ptr %i.og, inttoptr (i64 188978561024 to ptr)
  %i.ok = and i64 %i.oh, 1095216660480
  %i.ol = icmp ne i64 %i.ok, 1095216660480
  call void @llvm.assume(i1 %i.oj)
  call void @llvm.assume(i1 %i.ol)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.om = getelementptr i8, ptr %i.og, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.om) ]
  store ptr %i.om, ptr %i.nn, align 8, !alias.scope !1432, !noalias !1429
  store i8 3, ptr %i.e, align 8, !alias.scope !1432, !noalias !1429
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nn) #22, !noalias !1435
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i: ; preds = %bb.de, %bb.dd, %bb.dc, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1429
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.thread.i.i.i.i

bb.df:                                            ; preds = %bb.da
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !1421
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.thread.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1424
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1436
  %i.on = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oo = and i64 %i.on, 3
  switch i64 %i.oo, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i
    i64 3, label %bb.dh
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i
    i64 1, label %bb.di
  ], !prof !155

bb.dh:                                            ; preds = %bb.dg
  %i.op = icmp ult ptr %i.og, inttoptr (i64 188978561024 to ptr)
  %i.oq = and i64 %i.on, 1095216660480
  %i.or = icmp ne i64 %i.oq, 1095216660480
  call void @llvm.assume(i1 %i.op)
  call void @llvm.assume(i1 %i.or)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.os = getelementptr i8, ptr %i.og, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.os) ]
  store ptr %i.os, ptr %i.no, align 8, !alias.scope !1439, !noalias !1436
  store i8 3, ptr %i.d, align 8, !alias.scope !1439, !noalias !1436
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.no) #22, !noalias !1436
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i: ; preds = %bb.di, %bb.dh, %bb.dg, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1436
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1421
  store i64 0, ptr %i.l, align 8, !noalias !1421
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !1421
  store i64 0, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 8, !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1421
  %i.ot = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.0.052.i.i, ptr noalias nofree noundef nonnull %i.g, i64 noundef 20) #22, !noalias !1421 ; 2 uses
  %i.ou = extractvalue { ptr, i64 } %i.ot, 0
  %i.ov = extractvalue { ptr, i64 } %i.ot, 1      ; 14 uses
  %.not.i.i.i.i.i = icmp slt i64 %i.ov, 0
  br i1 %.not.i.i.i.i.i, label %bb.dk, label %bb.dj, !prof !424

bb.dj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i
  %i.ow = icmp eq i64 %i.ov, 0                    ; 2 uses
  br i1 %i.ow, label %.thread.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1421
  br label %.loopexit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.dj
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1442
  %i.ox = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ov, i64 noundef range(i64 1, 9) 1) #22, !noalias !1442 ; 18 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ov) #25, !noalias !1421
  unreachable

bb.dl:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ox, ptr align 1 %i.ou, i64 %i.ov, i1 false), !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1421
  %cond.i.i.i.i = icmp eq i64 %i.ov, 1
  %i.oz = load i8, ptr %i.ox, align 1, !alias.scope !1445, !noalias !1448 ; 2 uses
  br i1 %cond.i.i.i.i, label %bb.dm, label %thread-pre-split.i.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  switch i8 %i.oz, label %.lr.ph150.i.i.i.i.i.preheader [
    i8 43, label %.loopexit.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i
  ]

.lr.ph150.i.i.i.i.i.preheader:                    ; preds = %bb.dt, %bb.dm
  %.sroa.0.4149.i.i.i.i.i.ph = phi ptr [ %i.ox, %bb.dm ], [ %.sroa.0.0.i23.i.i.i.i, %bb.dt ]
  %.sroa.26.4148.i.i.i.i.i.ph = phi i64 [ 1, %bb.dm ], [ %.sroa.26.0.i.i.i.i.i, %bb.dt ]
  br label %.lr.ph150.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.dl
  switch i8 %i.oz, label %bb.dt [
    i8 43, label %bb.dn
    i8 45, label %bb.do
  ]

bb.dn:                                            ; preds = %thread-pre-split.i.i.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  %i.pb = add nsw i64 %i.ov, -1
  br label %bb.dt

bb.do:                                            ; preds = %thread-pre-split.i.i.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ox, i64 1 ; 2 uses
  %i.pd = add nsw i64 %i.ov, -1                   ; 2 uses
  %i.pe = icmp samesign ult i64 %i.ov, 17
  br i1 %i.pe, label %.lr.ph141.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.do, %bb.dr
  %.sroa.0.1136.i.i.i.i.i = phi ptr [ %i.pf, %bb.dr ], [ %i.pc, %bb.do ] ; 2 uses
  %.sroa.26.1135.i.i.i.i.i = phi i64 [ %i.pg, %bb.dr ], [ %i.pd, %bb.do ]
  %.sroa.084.0134.i.i.i.i.i = phi i64 [ %i.pr, %bb.dr ], [ 0, %bb.do ]
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i.i.i, i64 1
  %i.pg = add nsw i64 %.sroa.26.1135.i.i.i.i.i, -1 ; 2 uses
  %i.ph = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i.i.i, i64 10) ; 2 uses
  %i.pi = extractvalue { i64, i1 } %i.ph, 0
  %i.pj = extractvalue { i64, i1 } %i.ph, 1
  br i1 %i.pj, label %.loopexit.i.i.i.i, label %bb.dp, !prof !640

bb.dp:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pk = load i8, ptr %.sroa.0.1136.i.i.i.i.i, align 1, !alias.scope !1445, !noalias !1448, !noundef !4
  %i.pl = zext i8 %i.pk to i32
  %i.pm = add nsw i32 %i.pl, -48                  ; 2 uses
  %i.pn = icmp ult i32 %i.pm, 10
  br i1 %i.pn, label %bb.dq, label %.loopexit.i.i.i.i

bb.dq:                                            ; preds = %bb.dp
  %i.po = zext nneg i32 %i.pm to i64
  %i.pp = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.pi, i64 %i.po) ; 2 uses
  %i.pq = extractvalue { i64, i1 } %i.pp, 1
  br i1 %i.pq, label %.loopexit.i.i.i.i, label %bb.dr, !prof !640

bb.dr:                                            ; preds = %bb.dq
  %i.pr = extractvalue { i64, i1 } %i.pp, 0       ; 2 uses
  %.not102.i.i.i.i.i = icmp eq i64 %i.pg, 0
  br i1 %.not102.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph141.i.i.i.i.i:                              ; preds = %bb.do, %bb.ds
  %.sroa.0.2140.i.i.i.i.i = phi ptr [ %i.py, %bb.ds ], [ %i.pc, %bb.do ] ; 2 uses
  %.sroa.26.2139.i.i.i.i.i = phi i64 [ %i.px, %bb.ds ], [ %i.pd, %bb.do ]
  %.sroa.084.2138.i.i.i.i.i = phi i64 [ %i.qa, %bb.ds ], [ 0, %bb.do ]
  %i.ps = load i8, ptr %.sroa.0.2140.i.i.i.i.i, align 1, !alias.scope !1445, !noalias !1448, !noundef !4
  %i.pt = zext i8 %i.ps to i32
  %i.pu = add nsw i32 %i.pt, -48                  ; 2 uses
  %i.pv = icmp ult i32 %i.pu, 10
  br i1 %i.pv, label %bb.ds, label %.loopexit.i.i.i.i

bb.ds:                                            ; preds = %.lr.ph141.i.i.i.i.i
  %i.pw = mul i64 %.sroa.084.2138.i.i.i.i.i, 10
  %i.px = add nsw i64 %.sroa.26.2139.i.i.i.i.i, -1 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i.i.i, i64 1
  %i.pz = zext nneg i32 %i.pu to i64
  %i.qa = sub i64 %i.pw, %i.pz                    ; 2 uses
  %.not103.i.i.i.i.i = icmp eq i64 %i.px, 0
  br i1 %.not103.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph141.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dn, %thread-pre-split.i.i.i.i.i
  %.sroa.26.0.i.i.i.i.i = phi i64 [ %i.pb, %bb.dn ], [ %i.ov, %thread-pre-split.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i23.i.i.i.i = phi ptr [ %i.pa, %bb.dn ], [ %i.ox, %thread-pre-split.i.i.i.i.i ] ; 2 uses
  %i.qb = icmp samesign ult i64 %.sroa.26.0.i.i.i.i.i, 16
  br i1 %i.qb, label %.lr.ph150.i.i.i.i.i.preheader, label %.preheader111.i.i.i.i.i

.preheader111.i.i.i.i.i:                          ; preds = %bb.dt, %bb.dw
  %.sroa.0.3145.i.i.i.i.i = phi ptr [ %i.qc, %bb.dw ], [ %.sroa.0.0.i23.i.i.i.i, %bb.dt ] ; 2 uses
  %.sroa.26.3144.i.i.i.i.i = phi i64 [ %i.qd, %bb.dw ], [ %.sroa.26.0.i.i.i.i.i, %bb.dt ]
  %.sroa.084.3143.i.i.i.i.i = phi i64 [ %i.qo, %bb.dw ], [ 0, %bb.dt ]
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i.i.i, i64 1
  %i.qd = add nsw i64 %.sroa.26.3144.i.i.i.i.i, -1 ; 2 uses
  %i.qe = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i.i.i, i64 10) ; 2 uses
  %i.qf = extractvalue { i64, i1 } %i.qe, 0
  %i.qg = extractvalue { i64, i1 } %i.qe, 1
  br i1 %i.qg, label %.loopexit.i.i.i.i, label %bb.du, !prof !640

bb.du:                                            ; preds = %.preheader111.i.i.i.i.i
  %i.qh = load i8, ptr %.sroa.0.3145.i.i.i.i.i, align 1, !alias.scope !1445, !noalias !1448, !noundef !4
  %i.qi = zext i8 %i.qh to i32
  %i.qj = add nsw i32 %i.qi, -48                  ; 2 uses
  %i.qk = icmp ult i32 %i.qj, 10
  br i1 %i.qk, label %bb.dv, label %.loopexit.i.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.ql = zext nneg i32 %i.qj to i64
  %i.qm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.qf, i64 %i.ql) ; 2 uses
  %i.qn = extractvalue { i64, i1 } %i.qm, 1
  br i1 %i.qn, label %.loopexit.i.i.i.i, label %bb.dw, !prof !640

bb.dw:                                            ; preds = %bb.dv
  %i.qo = extractvalue { i64, i1 } %i.qm, 0       ; 2 uses
  %.not104.i.i.i.i.i = icmp eq i64 %i.qd, 0
  br i1 %.not104.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader111.i.i.i.i.i

.lr.ph150.i.i.i.i.i:                              ; preds = %.lr.ph150.i.i.i.i.i.preheader, %bb.dx
  %.sroa.0.4149.i.i.i.i.i = phi ptr [ %i.qv, %bb.dx ], [ %.sroa.0.4149.i.i.i.i.i.ph, %.lr.ph150.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.26.4148.i.i.i.i.i = phi i64 [ %i.qu, %bb.dx ], [ %.sroa.26.4148.i.i.i.i.i.ph, %.lr.ph150.i.i.i.i.i.preheader ]
  %.sroa.084.4147.i.i.i.i.i = phi i64 [ %i.qx, %bb.dx ], [ 0, %.lr.ph150.i.i.i.i.i.preheader ]
  %i.qp = load i8, ptr %.sroa.0.4149.i.i.i.i.i, align 1, !alias.scope !1445, !noalias !1448, !noundef !4
  %i.qq = zext i8 %i.qp to i32
  %i.qr = add nsw i32 %i.qq, -48                  ; 2 uses
  %i.qs = icmp ult i32 %i.qr, 10
  br i1 %i.qs, label %bb.dx, label %.loopexit.i.i.i.i

bb.dx:                                            ; preds = %.lr.ph150.i.i.i.i.i
  %i.qt = mul i64 %.sroa.084.4147.i.i.i.i.i, 10
  %i.qu = add nsw i64 %.sroa.26.4148.i.i.i.i.i, -1 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i.i, i64 1
  %i.qw = zext nneg i32 %i.qr to i64
  %i.qx = add i64 %i.qt, %i.qw                    ; 2 uses
  %.not105.i.i.i.i.i = icmp eq i64 %i.qu, 0
  br i1 %.not105.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph150.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.dq, %bb.dp, %.lr.ph.i.i.i.i.i, %.lr.ph141.i.i.i.i.i, %bb.dv, %bb.du, %.preheader111.i.i.i.i.i, %.lr.ph150.i.i.i.i.i, %bb.dm, %bb.dm, %.thread.i.i.i.i
  %.ph.i.i.i.i = phi ptr [ %i.ox, %bb.dv ], [ %i.ox, %.lr.ph141.i.i.i.i.i ], [ %i.ox, %.lr.ph150.i.i.i.i.i ], [ %i.ox, %bb.dm ], [ inttoptr (i64 1 to ptr), %.thread.i.i.i.i ], [ %i.ox, %bb.dm ], [ %i.ox, %.preheader111.i.i.i.i.i ], [ %i.ox, %bb.du ], [ %i.ox, %.lr.ph.i.i.i.i.i ], [ %i.ox, %bb.dp ], [ %i.ox, %bb.dq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1421
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph.i.i.i.i, i64 noundef %i.ov) #21, !noalias !1421
  %i.qy = load i8, ptr %i.k, align 8, !range !1019, !noalias !1421, !noundef !4
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.ea, label %bb.eb

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i: ; preds = %bb.dr, %bb.ds, %bb.dw, %bb.dx
  %.sroa.156.0.i.i.i.i = phi i64 [ %i.qa, %bb.ds ], [ %i.qx, %bb.dx ], [ %i.qo, %bb.dw ], [ %i.pr, %bb.dr ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 11, i64 noundef %.sroa.156.0.i.i.i.i) #22, !noalias !1421
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i
  %i.ra = phi ptr [ %.ph.i.i.i.i, %bb.eb ], [ %i.ox, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1421
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i) #22, !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1421
  br i1 %i.ow, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ra, i64 noundef %i.ov, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1450
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

bb.ea:                                            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1421
  store i64 %i.ov, ptr %i.j, align 8, !noalias !1421
  store ptr %.ph.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !1421
  store i64 %i.ov, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !1421
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 11, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j) #22, !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1421
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i) #22, !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1421
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

bb.eb:                                            ; preds = %.loopexit.i.i.i.i
  %i.rb = load double, ptr %i.np, align 8, !noalias !1421, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 11, double noundef %i.rb) #22, !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1421
  br label %bb.dy

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i: ; preds = %bb.ea, %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1421
  store ptr %i.m, ptr %i.h, align 8, !noalias !1421
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1453
  store ptr %i.q, ptr %i.c, align 8, !noalias !1453
  store ptr null, ptr %i.nq, align 8, !noalias !1453
  %i.rc = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @38, ptr noundef nonnull %i.h) #22, !noalias !1421
  %i.rd = load ptr, ptr %i.nq, align 8, !noalias !1453, !noundef !4 ; 7 uses
  %.not.i5.i25.i.i.i.i = icmp eq ptr %i.rd, null  ; 2 uses
  br i1 %i.rc, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i
  br i1 %.not.i5.i25.i.i.i.i, label %bb.eh, label %bb.ei, !prof !640

bb.ed:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i
  br i1 %.not.i5.i25.i.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i27.thread.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1458
  %i.re = ptrtoint ptr %i.rd to i64               ; 2 uses
  %i.rf = and i64 %i.re, 3
  switch i64 %i.rf, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i
    i64 3, label %bb.ef
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i
    i64 1, label %bb.eg
  ], !prof !155

bb.ef:                                            ; preds = %bb.ee
  %i.rg = icmp ult ptr %i.rd, inttoptr (i64 188978561024 to ptr)
  %i.rh = and i64 %i.re, 1095216660480
  %i.ri = icmp ne i64 %i.rh, 1095216660480
  call void @llvm.assume(i1 %i.rg)
  call void @llvm.assume(i1 %i.ri)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.rj = getelementptr i8, ptr %i.rd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rj) ]
  store ptr %i.rj, ptr %i.nr, align 8, !alias.scope !1461, !noalias !1458
  store i8 3, ptr %i.b, align 8, !alias.scope !1461, !noalias !1458
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nr) #22, !noalias !1464
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i: ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1458
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i27.thread.i.i.i.i

bb.eh:                                            ; preds = %bb.ec
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !1421
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i27.thread.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1453
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i

bb.ei:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1453
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1465
  %i.rk = ptrtoint ptr %i.rd to i64               ; 2 uses
  %i.rl = and i64 %i.rk, 3
  switch i64 %i.rl, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i
    i64 3, label %bb.ej
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i
    i64 1, label %bb.ek
  ], !prof !155

bb.ej:                                            ; preds = %bb.ei
  %i.rm = icmp ult ptr %i.rd, inttoptr (i64 188978561024 to ptr)
  %i.rn = and i64 %i.rk, 1095216660480
  %i.ro = icmp ne i64 %i.rn, 1095216660480
  call void @llvm.assume(i1 %i.rm)
  call void @llvm.assume(i1 %i.ro)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.rp = getelementptr i8, ptr %i.rd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rp) ]
  store ptr %i.rp, ptr %i.ns, align 8, !alias.scope !1468, !noalias !1465
  store i8 3, ptr %i.a, align 8, !alias.scope !1468, !noalias !1465
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ns) #22, !noalias !1465
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1465
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i27.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1421
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %.val.i35.i.i.i.i = load i64, ptr %i.m, align 8, !range !40, !alias.scope !1471, !noalias !1421, !noundef !4 ; 2 uses
  %i.rq = icmp eq i64 %.val.i35.i.i.i.i, 0
  br i1 %i.rq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i, label %bb.el

bb.el:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i
  %.val1.i36.i.i.i.i = load ptr, ptr %i.nt, align 8, !alias.scope !1471, !noalias !1421, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i36.i.i.i.i, i64 noundef %.val.i35.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1474
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i: ; preds = %bb.el, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1421
  %.val20.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !1421, !nonnull !4, !align !144, !noundef !4 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i, i64 12 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !noalias !1421, !noundef !4
  %i.rt = add i32 %i.rs, -1                       ; 2 uses
  store i32 %i.rt, ptr %i.rr, align 4, !noalias !1421
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.em, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

bb.em:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i
  store atomic i64 0, ptr %.val20.i.i.i.i monotonic, align 8, !noalias !1421
  %i.rv = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i, i64 8 ; 2 uses
  %i.rw = atomicrmw xchg ptr %i.rv, i32 0 release, align 4, !noalias !1421
  %i.rx = icmp eq i32 %i.rw, 2
  br i1 %i.rx, label %bb.en, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i, !prof !640

bb.en:                                            ; preds = %bb.em
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.rv) #22, !noalias !1421
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i: ; preds = %bb.en, %bb.em, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1421
  br label %bb.eo

bb.eo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i, %bb.cy, %bb.cv
  %.sroa.914.1.ph.i.i = phi i64 [ %.sroa.0.052.i.i, %bb.cv ], [ %.sroa.0.052.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i ], [ %.val.i.i.i19, %bb.cy ] ; 2 uses
  %i.ry = icmp eq ptr %i.nv, %i.nj
  br i1 %i.ry, label %.loopexit, label %bb.cv

_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit: ; preds = %bb.cy, %bb.cw
  %.sroa.050.0 = phi i64 [ 6, %bb.cy ], [ 5, %bb.cw ]
  %.sroa.7.0 = phi i64 [ %.val.i.i.i19, %bb.cy ], [ %.sroa.914.051.i.i, %bb.cw ]
  %.sroa.851.0 = phi i64 [ %.sroa.0.052.i.i, %bb.cy ], [ undef, %bb.cw ]
  store i64 %.sroa.050.0, ptr %0, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.851.0, ptr %.sroa.574.0..sroa_idx, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.sa, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i ], [ 0, %_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.13.8.copyload38, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.sa = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  %i.sb = load i32, ptr %i.rz, align 8, !range !303, !alias.scope !1475, !noalias !1480, !noundef !4
  %cond.i.i.i.i23 = icmp eq i32 %i.sb, 0
  br i1 %cond.i.i.i.i23, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.i.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.sc) #22, !noalias !1480
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %.lr.ph.i.i.i
  %i.sd = icmp eq i64 %i.sa, %.sroa.15.8.copyload41
  br i1 %i.sd, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i
  %i.se = icmp eq i64 %.sroa.833.8.copyload35, 0
  br i1 %i.se, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit, label %bb.ep

bb.ep:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i
  %i.sf = mul nuw i64 %.sroa.833.8.copyload35, 56
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.8.copyload38, i64 noundef %i.sf, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !1480
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit

.loopexit:                                        ; preds = %bb.eo, %bb.cu
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.833.8.copyload35, ptr %i.sg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.8.copyload38, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.15.8.copyload41, ptr %.sroa.553.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit: ; preds = %bb.ct, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i, %bb.ep, %.loopexit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvXs0_Cs44SRMMtlaHN_9uu_csplitINtB7_17LinesWithNewlinespENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next3ret(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1488
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1486, !noalias !1483, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1486, !noalias !1483, !noundef !4 ; 3 uses
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) #22, !noalias !1488
  %i.g = load i64, ptr %i.a, align 8, !range !422, !noalias !1488, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread: ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %.sroa.6.sroa.0.0.copyload12 = load ptr, ptr %1, align 8, !alias.scope !1488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1488
  br label %bb.d

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !1488
  %.sroa.015.0.copyload = load i64, ptr %1, align 8, !noalias !1483 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1488
  %.not = icmp eq i64 %.sroa.015.0.copyload, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 22) #22
  %i.l = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newNtNtB7_6string6StringECsh036I4OHgIr_6uucore(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs44SRMMtlaHN_9uu_csplit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.sroa.015.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit
  %.sroa.6.sroa.6.sroa.0.0 = phi i64 [ %i.f, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit ], [ %i.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ]
  %.sroa.6.sroa.6.sroa.5.0 = phi i64 [ %i.k, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit ], [ %i.f, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ]
  %.sroa.6.sroa.0.021 = phi ptr [ %i.d, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit ], [ %.sroa.6.sroa.0.0.copyload12, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ]
  store ptr %.sroa.6.sroa.0.021, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.sroa.6.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.6.sroa.5.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs44SRMMtlaHN_9uu_csplit.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs44SRMMtlaHN_9uu_csplit8patternsNtB2_7PatternNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = load i32, ptr %0, align 8, !range !303, !noundef !4
  switch i32 %i.m, label %default.unreachable87 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable87:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.43.0..sroa_idx, align 8
  %i.o = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !144, !noundef !4
  %i.r = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @28, ptr noundef nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noundef !4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noundef !4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.r, %bb.b ], [ %i.ah, %bb.f ], [ %i.as, %bb.g ], [ %i.bc, %bb.h ], [ %i.bn, %bb.i ]
  ret i1 %.sroa.0.1.in

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ac, ptr %i.j, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.418.0..sroa_idx, align 8
  %i.ae = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !align !144, !noundef !4
  %i.ah = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, ptr noundef nonnull @97, ptr noundef nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.e

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.s, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.am, ptr %i.g, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.al, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
end_hunk_3
