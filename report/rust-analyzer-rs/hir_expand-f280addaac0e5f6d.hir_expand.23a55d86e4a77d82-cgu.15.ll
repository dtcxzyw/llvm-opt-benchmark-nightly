Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.15?download=true
inline.NumInlined: 1240
inline.NumDeleted: 613
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXsi_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB5_8ReceiverNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand:bb.a

bb.k:                                             ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.o, %bb.h ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 512, i64 noundef 128) #35
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs33K2ylI4knu_10hir_expand.exit.i.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 512, i64 noundef 128) #35
  br label %_RINvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs33K2ylI4knu_10hir_expand.exit

bb.l:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.u = atomicrmw add ptr %i.t, i64 -1 acq_rel, align 8
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.m, label %_RINvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs33K2ylI4knu_10hir_expand.exit

bb.m:                                             ; preds = %bb.l
  %i.w = tail call noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zeroINtB5_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE10disconnectCs33K2ylI4knu_10hir_expand(ptr noundef nonnull align 8 %.val) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.y = atomicrmw xchg ptr %i.x, i8 1 acq_rel, align 1
  %.not.i4 = icmp eq i8 %i.y, 0
  br i1 %.not.i4, label %_RINvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs33K2ylI4knu_10hir_expand.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5WakerECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.z)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs33K2ylI4knu_10hir_expand.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5WakerECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #37
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs33K2ylI4knu_10hir_expand.exit.i.i.i: ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 56
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5WakerECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs33K2ylI4knu_10hir_expand.exit.i unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs33K2ylI4knu_10hir_expand.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %eh.lpad-body.i.i5 = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.aa, %bb.o ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #35
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECs33K2ylI4knu_10hir_expand.exit.i.i.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8) #35
  br label %_RINvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs33K2ylI4knu_10hir_expand.exit

_RINvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counterINtB6_8ReceiverINtNtB8_5array7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE7releaseNCNvXsi_B8_INtB8_8ReceiverB1n_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0ECs33K2ylI4knu_10hir_expand.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_4zero7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs33K2ylI4knu_10hir_expand.exit.i, %bb.m, %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEEEECs33K2ylI4knu_10hir_expand.exit.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsi_NtNtCscAsMj0W7j8b_3std4sync4mpscINtB5_9SendErrorNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 9)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsj_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCs9R0CJ7nmiec_5paths10AbsPathBufENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call noundef zeroext i1 @_RNvXsa_Cs9R0CJ7nmiec_5pathsNtB5_10AbsPathBufNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsk_Cs33K2ylI4knu_10hir_expandNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core3cmp9PartialEqNtB5_9HirFileIdE2eq(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #9 {
bb.a:
  %.sroa.0.0.copyload = load i32, ptr %1, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !noundef !7
  %i.c = icmp eq i32 %.sroa.0.0.copyload, 0
  %i.d = icmp eq i32 %.sroa.6.0.copyload, %i.b
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 4, !range !10, !noundef !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %i.f = icmp eq i32 %.sroa.4.0.copyload, %i.e
  br label %_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs1S_Cs33K2ylI4knu_10hir_expandNtB6_9HirFileIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.shrunk.i = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsm6_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_3AdtNtBa_7AstNode6syntax(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsny_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4ItemNtBa_7AstNode6syntax(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(16) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !7   ; 2 uses
  %i.b = load i32, ptr %1, align 4, !noundef !7
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %i.a to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtCs4dcH4YgJDq_2tt5PunctINtB5_14SlicePartialEqBC_E17equal_same_lengthCs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i64 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %.idx = shl nuw nsw i64 %1, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdINtNtNtBa_5slice4iter4IterB14_EEB18_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.05.i = phi ptr [ %i.e, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2461
  store ptr %.sroa.0.05.i, ptr %i.a, align 8, !noalias !2461, !captures !14
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2461
  %i.g = icmp eq ptr %i.e, %i.c
  br i1 %i.g, label %_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdINtNtNtBa_5slice4iter4IterB14_EEB18_.exit, label %.lr.ph.i

_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdINtNtNtBa_5slice4iter4IterB14_EEB18_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvYINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl8try_pushCs33K2ylI4knu_10hir_expand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([28 x i8]) align 4 captures(none) dereferenceable(28) initializes((0, 4)) %0, ptr noalias nofree noundef align 4 captures(none) dereferenceable(88) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(28) %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i32, ptr %1, align 4, !noundef !7  ; 3 uses
  %i.a = icmp ult i32 %.val, 3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %2, i64 28, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %.val to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2467)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw [28 x i8], ptr %i.c, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.d, ptr noundef nonnull readonly align 4 dereferenceable(28) %2, i64 28, i1 false), !alias.scope !2468
  %i.e = add nuw nsw i32 %.val, 1
  store i32 %i.e, ptr %1, align 4, !alias.scope !2469
  store i32 -1, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYQNtNtCs4dcH4YgJDq_2tt4iter6TtIterNtCscFGNKo4Sl5v_9itertools9Itertools11exactly_oneCs33K2ylI4knu_10hir_expand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  call void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.c = load i64, ptr %i.b, align 8, !range !26, !noundef !7 ; 4 uses
  %.not = icmp eq i64 %i.c, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.822.0.copyload = load ptr, ptr %.sroa.822.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs3_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQNtNtCs4dcH4YgJDq_2tt4iter6TtIterNtB5_8Iterator4nextCs33K2ylI4knu_10hir_expand.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -3, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = icmp eq i64 %i.c, -1
  br i1 %i.e, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECs33K2ylI4knu_10hir_expand(i32 %.sroa.7.0.copyload, ptr %.sroa.822.0.copyload)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit unwind label %bb.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQNtNtCs4dcH4YgJDq_2tt4iter6TtIterNtB5_8Iterator4nextCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !range !26, !noundef !7
  %.not7 = icmp eq i64 %i.f, -2
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQNtNtCs4dcH4YgJDq_2tt4iter6TtIterNtB5_8Iterator4nextCs33K2ylI4knu_10hir_expand.exit
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx, i64 64, i1 false)
  store i64 %i.c, ptr %0, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.copyload, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.8.0.copyload, ptr %.sroa.0.sroa.5.0..sroa_idx, align 4
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.822.0.copyload, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter6traits8iteratorQNtNtCs4dcH4YgJDq_2tt4iter6TtIterNtB5_8Iterator4nextCs33K2ylI4knu_10hir_expand.exit
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.753.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx, i64 64, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.g, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.8.0.copyload, ptr %.sroa.551.0..sroa_idx, align 4
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.822.0.copyload, ptr %.sroa.652.0..sroa_idx, align 8
  store i64 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  ret void

bb.i:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #20

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtNtNtB8_6traits8HasAttrs5attrsCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3AdtNtNtB8_6traits8HasAttrs21inner_attributes_nodeCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemNtNtB8_6traits8HasAttrs5attrsCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ItemNtNtB8_6traits8HasAttrs21inner_attributes_nodeCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsb_NtCs4dcH4YgJDq_2tt7storageNtB5_10TopSubtree4iter(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter15expect_any_char(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsqiF3OZxLbD_3mbeNtB2_10ParseError8expected(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsqiF3OZxLbD_3mbe8validate(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCsqiF3OZxLbD_3mbe4RuleE16into_boxed_sliceCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter11expect_char(ptr noalias nofree noundef align 8 dereferenceable(40), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsqiF3OZxLbD_3mbe6parser16parse_rule_style(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCs4dcH4YgJDq_2tt4iterNtB5_6TtIter14expect_subtree(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCsqiF3OZxLbD_3mbe6parserNtB3_12MetaTemplate5parseNCNvXNvMs4_NtCs33K2ylI4knu_10hir_expand11declarativeINtNtB15_5files13InFileWrapperNtB15_9HirFileIdINtNtCsdovh4xi6v3I_4span6ast_id9FileAstIdNtNtNtCsjJXvCMGntp8_6syntax3ast8node_ext5MacroEE19decl_macro_expanderB1I_NtBX_11InnerTrait_20decl_macro_expander_s_0EB15_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #24

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #25

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsgIpRO4v45SJ_7base_db5input5CrateNtB6_5Debug3fmtCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs7_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugMap5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB7_15EditionedFileId10ingredient(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB6_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvBZ_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2b_BX_17from_span_file_idDNtB11_14SourceDatabaseEL_B2t_E0ECs33K2ylI4knu_10hir_expand(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RINvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB6_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE9intern_idINtNvBZ_1__9StructKeyNtCsdovh4xi6v3I_4span15EditionedFileIdENCINvMs9_B2b_BX_17from_span_file_idDNtNtB8_8database8DatabaseEL_B2t_E0ECs33K2ylI4knu_10hir_expand(ptr noundef nonnull align 8, ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 4 ptr @_RNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE6fieldsCs33K2ylI4knu_10hir_expand(ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsjJXvCMGntp8_6syntax3ast6traits21attrs_including_inner(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExpr14parse_from_ast(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef range(i64 0, 2), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMs0_Cs4kMRW8zVVbM_3cfgNtB5_10CfgOptions5check(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBM_4AttrEj1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1Y_8adapters3map3MapINtBQ_11AstChildrenBK_ENCINvNtCs33K2ylI4knu_10hir_expand5attrs33expand_cfg_attr_with_doc_commentsNtNtB20_7convert10InfallibleINtCs83ee1IJTiSq_6either6EitherTB1C_BK_ENtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEIB2W_INtNtB30_5chain5ChainINtNtB30_6filter6FilterIB3o_B1C_ENCNvNtBQ_6traits21attrs_including_inner0EIB77_INtNtB30_7flatten7FlatMapINtNtB20_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtBS_11syntax_node12RustLanguageEEB7t_NCB7F_s_0ENCB7F_s0_0EENcNtIB5p_B1C_B4W_E4Left0ENCINvB3P_23collect_item_tree_attrsB5T_NCNvMs3_B3P_NtB3P_6AttrId31find_attr_range_with_source_opt0NCBbT_s_0E0NCINvB3P_15expand_cfg_attrB5o_B6L_Bbf_NCBbh_s_0E0E0EEB3R_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXsq_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_EINtNtNtCshzWfHUSfYae_4core3ops5index8IndexMutINtNtB1V_5range9RangeFromjEE9index_mutCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXst_Csjpcu9PwIgok_8smallvecINtB6_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBM_4AttrEj1_EINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1Y_8adapters3map3MapINtBQ_11AstChildrenBK_ENCINvNtCs33K2ylI4knu_10hir_expand5attrs33expand_cfg_attr_with_doc_commentsNtNtB20_7convert10InfallibleNtNtCsdovh4xi6v3I_4span7hygiene12TransparencyIB2W_IB3o_B1C_ENcNtINtCs83ee1IJTiSq_6either6EitherB1C_B4W_E4Left0ENCNCNvXNvMs4_NtB3R_11declarativeINtNtB3R_5files13InFileWrapperNtB3R_9HirFileIdINtNtB5s_6ast_id9FileAstIdNtNtBQ_8node_ext5MacroEE19decl_macro_expanderB7H_NtB7i_11InnerTrait_20decl_macro_expander_00NCINvB3P_15expand_cfg_attrB5o_B6c_B7b_NCB7d_s_0E0E0EEB3R_(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_CsjJXvCMGntp8_6syntaxINtB5_5ParseINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB5_11syntax_node12RustLanguageEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecATNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaNtBL_4AttrEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage64EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBI_13SpanStorage96EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCsqiF3OZxLbD_3mbe4RuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage64EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage96EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCsqiF3OZxLbD_3mbe4RuleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsqiF3OZxLbD_3mbe8expander11transcriber12NestingStateENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_0
