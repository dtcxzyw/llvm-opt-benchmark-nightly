Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.14?download=true
inline.NumInlined: 331
inline.NumDeleted: 164
begin_hunk_0_@_RNvXs8_NtNtCs4wP2HXfJTCR_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCsaKJjC64KgbL_3std2fs4FileEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCs9RFwvXNxPyg_16hickory_resolver:bb.a

bb.n:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i
  %.sroa.010.1.i.i = phi i32 [ %i.aq, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i ], [ %i.ag, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i ]
  %i.ar = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.as = and i8 %i.x, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i
  %.sroa.010.0.i.i = phi i32 [ %i.au, %bb.n ], [ %i.z, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i ] ; 4 uses
  %i.av = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp samesign ult i32 %.sroa.010.0.i.i, 17408
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp samesign ult i32 %.sroa.010.0.i.i, 2
  br i1 %i.ax, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp samesign ult i32 %.sroa.010.0.i.i, 32
  br i1 %i.ay, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = icmp samesign ult i32 %.sroa.010.0.i.i, 1024
  %..i = select i1 %i.az, i64 -3, i64 -4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %.thread.i
  %.sroa.03.0.neg.i = phi i64 [ -2, %bb.p ], [ %..i, %bb.q ], [ -1, %bb.o ], [ -1, %.thread.i ]
  %i.ba = add nsw i64 %.sroa.03.0.neg.i, %i.p     ; 2 uses
  store i64 %i.ba, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !410
  br label %bb.s

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit20: ; preds = %bb.aa, %bb.u, %bb.t, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.ab

bb.s:                                             ; preds = %bb.l, %bb.r
  %i.bb = phi i64 [ 0, %bb.l ], [ %i.ba, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 13, ptr %i.a, align 4
  %i.bc = invoke noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %bb.t unwind label %bb.b

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bc, label %bb.u, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit20

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.bd = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !412, !nonnull !4, !noundef !4
  %i.be = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !412, !noundef !4 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be ; 4 uses
  %i.bg = icmp samesign eq i64 %i.be, 0
  br i1 %i.bg, label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit20, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -1
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !413, !noundef !4
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %.thread.i19, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i10

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i10: ; preds = %bb.v
  %i.bk = icmp ne i64 %i.be, 1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 -2
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !413, !noundef !4 ; 3 uses
  %i.bn = and i8 %i.bm, 31
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = icmp slt i8 %i.bm, -64
  br i1 %i.bp, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i16, label %bb.x

.thread.i19:                                      ; preds = %bb.v
  %i.bq = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.bq)
  br label %bb.aa

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i16: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i10
  %i.br = icmp ne i64 %i.be, 2
  call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds i8, ptr %i.bf, i64 -3
  %i.bt = load i8, ptr %i.bs, align 1, !noalias !413, !noundef !4 ; 3 uses
  %i.bu = and i8 %i.bt, 15
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = icmp slt i8 %i.bt, -64
  br i1 %i.bw, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i18, label %bb.w

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i18: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i16
  %i.bx = icmp ne i64 %i.be, 3
  call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bz = load i8, ptr %i.by, align 1, !noalias !413, !noundef !4
  %i.ca = and i8 %i.bz, 7
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 6
  %i.cd = and i8 %i.bt, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i18, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i16
  %.sroa.010.1.i.i17 = phi i32 [ %i.cf, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit21.i.i18 ], [ %i.bv, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit19.i.i16 ]
  %i.cg = shl nuw nsw i32 %.sroa.010.1.i.i17, 6
  %i.ch = and i8 %i.bm, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cg, %i.ci
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i10
  %.sroa.010.0.i.i11 = phi i32 [ %i.cj, %bb.w ], [ %i.bo, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs9RFwvXNxPyg_16hickory_resolver.exit17.i.i10 ] ; 4 uses
  %i.ck = icmp sgt i64 %i.be, -1
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ult i32 %.sroa.010.0.i.i11, 17408
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp samesign ult i32 %.sroa.010.0.i.i11, 2
  br i1 %i.cm, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = icmp samesign ult i32 %.sroa.010.0.i.i11, 32
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = icmp samesign ult i32 %.sroa.010.0.i.i11, 1024
  %..i12 = select i1 %i.co, i64 -3, i64 -4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %.thread.i19
  %.sroa.03.0.neg.i14 = phi i64 [ -2, %bb.y ], [ %..i12, %bb.z ], [ -1, %bb.x ], [ -1, %.thread.i19 ]
  %i.cp = add nsw i64 %.sroa.03.0.neg.i14, %i.be
  store i64 %i.cp, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !412
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit20

bb.ab:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String3pop.exit20, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs9RFwvXNxPyg_16hickory_resolver.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ac:                                            ; preds = %bb.b
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsaKJjC64KgbL_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCsj6eKBz9Db1c_4core6option6OptionINtCseieIppCIYdI_4slab4SlabIB1m_NtNtNtB1q_4task4wake5WakerEEEEENtNtB1q_3fmt5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB8_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB8_6marker4SendEL_EEB1v_4pollCs9RFwvXNxPyg_16hickory_resolver(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !15, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.c(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %0, ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #21
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsj6eKBz9Db1c_4core3fmtSNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4aaaa4AAAANtB5_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %.idx = shl nuw nsw i64 %1, 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4aaaa4AAAAINtNtNtBa_5slice4iter4IterB14_EECs9RFwvXNxPyg_16hickory_resolver.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.05.i = phi ptr [ %i.e, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !416
  store ptr %.sroa.0.05.i, ptr %i.a, align 8, !noalias !416, !captures !9
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !416
  %i.g = icmp eq ptr %i.e, %i.c
  br i1 %i.g, label %_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4aaaa4AAAAINtNtNtBa_5slice4iter4IterB14_EECs9RFwvXNxPyg_16hickory_resolver.exit, label %.lr.ph.i

_RINvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4aaaa4AAAAINtNtNtBa_5slice4iter4IterB14_EECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix10is_bit_setCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly captures(none) dereferenceable(5) %0, i8 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = zext i8 %1 to i32                        ; 2 uses
  %i.b = icmp ult i8 %1, 32
  %i.c = lshr i32 -1, %i.a
  %spec.select = select i1 %i.b, i32 %i.c, i32 0
  %i.d = icmp ult i8 %1, 31
  %i.e = lshr i32 2147483647, %i.a
  %.sroa.03.0 = select i1 %i.d, i32 %i.e, i32 0
  %i.f = xor i32 %.sroa.03.0, %spec.select
  %.val8 = load i32, ptr %0, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val9 = load i8, ptr %i.g, align 1, !noundef !4
  %i.h = zext i8 %.val9 to i32
  %i.i = sub nsw i32 32, %i.h                     ; 2 uses
  %i.j = icmp ult i32 %i.i, 32
  %i.k = shl nsw i32 -1, %i.i
  %.sroa.0.0.i14 = select i1 %i.j, i32 %i.k, i32 0
  %i.l = tail call i32 @llvm.bswap.i32(i32 %.val8)
  %i.m = and i32 %i.l, %i.f
  %i.n = and i32 %i.m, %.sroa.0.0.i14
  %i.o = icmp ne i32 %i.n, 0
  ret i1 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv4NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix2eqCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly captures(none) dereferenceable(5) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(5) %1) unnamed_addr #7 {
bb.a:
  %.val2 = load i32, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val3 = load i8, ptr %i.a, align 1, !noundef !4 ; 2 uses
  %i.b = zext i8 %.val3 to i32
  %i.c = sub nsw i32 32, %i.b                     ; 2 uses
  %i.d = icmp ult i32 %i.c, 32
  %i.e = shl nsw i32 -1, %i.c
  %.sroa.0.0.i = select i1 %i.d, i32 %i.e, i32 0
  %i.f = tail call i32 @llvm.bswap.i32(i32 %.val2)
  %i.g = and i32 %.sroa.0.0.i, %i.f
  %.val = load i32, ptr %1, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1 = load i8, ptr %i.h, align 1, !noundef !4 ; 2 uses
  %i.i = zext i8 %.val1 to i32
  %i.j = sub nsw i32 32, %i.i                     ; 2 uses
  %i.k = icmp ult i32 %i.j, 32
  %i.l = shl nsw i32 -1, %i.j
  %.sroa.0.0.i8 = select i1 %i.k, i32 %i.l, i32 0
  %i.m = tail call i32 @llvm.bswap.i32(i32 %.val)
  %i.n = and i32 %.sroa.0.0.i8, %i.m
  %i.o = icmp eq i32 %i.g, %i.n
  %i.p = icmp eq i8 %.val3, %.val1
  %spec.select = and i1 %i.p, %i.o
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix10is_bit_setCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly captures(none) dereferenceable(17) %0, i8 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i8 %1, -1
  br i1 %i.a, label %_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit, label %_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit.thread18

_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit: ; preds = %bb.a
  %i.b = zext nneg i8 %1 to i128
  %i.c = lshr i128 -1, %i.b                       ; 2 uses
  %narrow = add nuw i8 %1, 1                      ; 2 uses
  %i.d = icmp sgt i8 %narrow, -1
  br i1 %i.d, label %bb.b, label %_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit.thread18

bb.b:                                             ; preds = %_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit
  %i.e = zext nneg i8 %narrow to i128
  %i.f = lshr i128 -1, %i.e
  %i.g = xor i128 %i.f, %i.c
  br label %_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit.thread18

_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit.thread18: ; preds = %bb.a, %_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit, %bb.b
  %.sroa.01.0 = phi i128 [ %i.g, %bb.b ], [ %i.c, %_RNvXs1p_NtNtCsBG8zqHva78_10num_traits3ops7checkedoNtB6_10CheckedShr11checked_shr.exit ], [ 0, %bb.a ]
  %.val3 = load i128, ptr %0, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i8, ptr %i.h, align 1, !noundef !4
  %i.i = sub i8 -128, %.val4                      ; 2 uses
  %i.j = icmp sgt i8 %i.i, -1
  %i.k = zext nneg i8 %i.i to i128
  %i.l = shl nsw i128 -1, %i.k
  %.sroa.0.0.i = select i1 %i.j, i128 %i.l, i128 0
  %i.m = tail call i128 @llvm.bswap.i128(i128 %.val3)
  %i.n = and i128 %i.m, %.sroa.01.0
  %i.o = and i128 %i.n, %.sroa.0.0.i
  %i.p = icmp ne i128 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsdCd4pHk2fcR_5ipnet5ipnet7Ipv6NetNtNtCs7w1SCUKeMLI_11prefix_trie6prefix6Prefix2eqCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly captures(none) dereferenceable(17) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(17) %1) unnamed_addr #7 {
bb.a:
  %.val2 = load i128, ptr %0, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i8, ptr %i.a, align 1, !noundef !4 ; 2 uses
  %i.b = sub i8 -128, %.val3                      ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  %i.d = zext nneg i8 %i.b to i128
  %i.e = shl nsw i128 -1, %i.d
  %.sroa.0.0.i = select i1 %i.c, i128 %i.e, i128 0
  %i.f = tail call i128 @llvm.bswap.i128(i128 %.val2)
  %i.g = and i128 %.sroa.0.0.i, %i.f
  %.val = load i128, ptr %1, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i8, ptr %i.h, align 1, !noundef !4 ; 2 uses
  %i.i = sub i8 -128, %.val1                      ; 2 uses
  %i.j = icmp sgt i8 %i.i, -1
  %i.k = zext nneg i8 %i.i to i128
  %i.l = shl nsw i128 -1, %i.k
  %.sroa.0.0.i8 = select i1 %i.j, i128 %i.l, i128 0
  %i.m = tail call i128 @llvm.bswap.i128(i128 %.val)
  %i.n = and i128 %.sroa.0.0.i8, %i.m
  %i.o = icmp eq i128 %i.g, %i.n
  %i.p = icmp eq i8 %.val3, %.val1
  %spec.select = and i1 %i.p, %i.o
  ret i1 %spec.select
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCs7Ok7lQPS2r8_11resolv_confNtB2_6Config17parse_with_errors(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs7Ok7lQPS2r8_11resolv_conf10ParseErrorE5drainNtNtNtCsj6eKBz9Db1c_4core3ops5range9RangeFullECs9RFwvXNxPyg_16hickory_resolver(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain5labelNtB2_5Label8as_bytes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name11extend_name(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB2_4Name3new(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_12LabelEncUtf8NtB5_8LabelEnc8to_label(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCsj6eKBz9Db1c_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCsj6eKBz9Db1c_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4nameNtB5_13LabelEncAsciiNtB5_8LabelEnc8to_label(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxShENtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCsj6eKBz9Db1c_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata1a1ANtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_NtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBz_10EdnsOptionENtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata4svcb11SvcParamKeyNtBz_13SvcParamValueENtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_5Debug3fmtCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs7Ok7lQPS2r8_11resolv_conf10ParseErrorENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs7Ok7lQPS2r8_11resolv_conf6FamilyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs7Ok7lQPS2r8_11resolv_conf6LookupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7Ok7lQPS2r8_11resolv_conf2ip7NetworkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7Ok7lQPS2r8_11resolv_conf2ip8ScopedIpENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs9RFwvXNxPyg_16hickory_resolver6config16NameServerConfigENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6domain4name4NameENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1
end_hunk_0
