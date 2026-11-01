Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.08?download=true
inline.NumInlined: 2151
inline.NumDeleted: 1036
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1z_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4BaseNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !8, !noundef !8
  %i.bb = tail call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4base16BaseScriptRecordINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay, i64 noundef %i.at)
  br i1 %i.bb, label %bb.q, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

bb.q:                                             ; preds = %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !align !7, !noundef !8 ; 2 uses
  %.not6 = icmp eq ptr %i.bd, null                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !align !7, !noundef !8 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null                 ; 2 uses
  %brmerge = or i1 %.not6, %i.bg
  %.mux = and i1 %.not6, %i.bg
  br i1 %brmerge, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread, label %bb.r

_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.q, %.split.i17, %bb.p, %bb.m, %bb.o, %bb.n, %.split.i, %bb.h, %bb.e, %bb.g, %bb.f, %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18, %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, %bb.c, %bb.k, %bb.b, %bb.j, %bb.r
  %.sroa.0.0.shrunk = phi i1 [ %i.bh, %bb.r ], [ false, %bb.c ], [ false, %.split.i17 ], [ false, %bb.j ], [ false, %bb.b ], [ false, %bb.k ], [ %.mux, %bb.q ], [ false, %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit ], [ false, %.split.i ], [ false, %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18 ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.n ], [ false, %bb.o ], [ false, %bb.m ], [ false, %bb.p ]
  ret i1 %.sroa.0.0.shrunk

bb.r:                                             ; preds = %bb.q
  %i.bh = tail call fastcc noundef zeroext i1 @_RNvXs2u_NtNtCs6WnK4nVnpEz_11write_fonts6tables10variationsNtB6_18ItemVariationStoreNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf) #36
  br label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE11read_access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %i.l = alloca [56 x i8], align 8                ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.g, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 4, ptr %i.f, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 16, ptr %i.e, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @50, i64 32, i1 false)
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @45, i64 32, i1 false)
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 9, ptr %i.d, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 36, ptr %i.c, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE12write_access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 18, ptr %i.d, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 30, ptr %i.b, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 16, ptr %i.a, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE14also_completes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33
  %i.a = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 481) 80, i64 noundef range(i64 1, 9) 8) #33 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #34
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 17, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 30, ptr %.sroa.4.0..sroa_idx4, align 8
  store i64 2, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 18, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE4exec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [6 x i8], align 8                 ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 8 uses
  %i.q = alloca [80 x i8], align 8                ; 16 uses
  %.sroa.0392 = alloca [32 x i8], align 8         ; 4 uses
  %.sroa.0356 = alloca [32 x i8], align 8         ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [40 x i8], align 8               ; 8 uses
  %i.ad = alloca [8 x i8], align 8                ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 7 uses
  %i.af = alloca [56 x i8], align 8               ; 18 uses
  %i.ag = alloca [1 x i8], align 1                ; 3 uses
  %.sroa.9290 = alloca [40 x i8], align 8         ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 5 uses
  %.sroa.6261 = alloca [86 x i8], align 2         ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 6 uses
  %i.aj = alloca [64 x i8], align 8               ; 14 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 9 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  %i.an = alloca [56 x i8], align 8               ; 15 uses
  %i.ao = alloca [40 x i8], align 8               ; 15 uses
  %i.ap = alloca [8 x i8], align 8                ; 7 uses
  %i.aq = alloca [288 x i8], align 8              ; 17 uses
  %i.ar = alloca [8 x i8], align 8                ; 13 uses
  %i.as = alloca [8 x i8], align 8                ; 11 uses
  %i.at = alloca [40 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [40 x i8], align 8               ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aw = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ax = icmp ult i64 %i.aw, 3
  br i1 %i.ax, label %bb.d, label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit, %bb.p, %bb.b
  %.sroa.059.0 = phi i8 [ %.sroa.059.1, %bb.b ], [ %.sroa.056.2, %bb.p ], [ %.sroa.056.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit ]
  %.sroa.056.0 = phi i8 [ %.sroa.056.1, %bb.b ], [ %.sroa.056.2, %bb.p ], [ %.sroa.056.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit ]
  %.pn125 = phi { ptr, i32 } [ %i.ba, %bb.b ], [ %.pn123, %bb.p ], [ %.pn123, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit ] ; 2 uses
  %i.ay = trunc nuw i8 %.sroa.056.0 to i1
  %i.az = load i64, ptr %i.av, align 8, !range !10
  %.not.i.i234 = icmp ne i64 %i.az, 2
  %or.cond.not = select i1 %i.ay, i1 %.not.i.i234, i1 false
  br i1 %or.cond.not, label %bb.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit236

bb.b:                                             ; preds = %bb.hm, %bb.gr, %bb.n, %bb.k, %bb.h, %bb.g, %bb.c
  %.sroa.059.1 = phi i8 [ %.sroa.056.2, %bb.hm ], [ %.sroa.056.2, %bb.gr ], [ %.sroa.056.2, %bb.c ], [ 1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.sroa.056.1 = phi i8 [ %.sroa.056.2, %bb.hm ], [ %.sroa.056.2, %bb.gr ], [ %.sroa.056.2, %bb.c ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit

bb.c:                                             ; preds = %bb.l, %bb.n, %bb.a
  %.sroa.056.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.l ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1872
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = invoke noundef nonnull ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtNtB6_2ir15static_metadata14StaticMetadataE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bd)
          to label %bb.o unwind label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.bf = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bg = icmp ult i64 %i.bf, 3
  br i1 %i.bg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 2, ptr %i.at, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr null, ptr %i.bh, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.bi = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB9_13orchestration7ContextNtB24_9AnyWorkIdNtNtB9_5error5ErrorE4exec10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bi, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !34

bb.g:                                             ; preds = %bb.f
  %i.bj = invoke noundef i8 @_RNvMNtCs6CpVowoi7NE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB9_13orchestration7ContextNtB24_9AnyWorkIdNtNtB9_5error5ErrorE4exec10___CALLSITE)
          to label %bb.i unwind label %bb.b       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.010.0 = phi i8 [ %i.bj, %bb.i ], [ %i.bi, %bb.f ], [ %i.bi, %bb.f ]
  %i.bk = load ptr, ptr @_RNvNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB9_13orchestration7ContextNtB24_9AnyWorkIdNtNtB9_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !8, !align !7, !noundef !8
  %i.bl = invoke noundef zeroext i1 @_RNvNtCseSYDGaa5U8h_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, i8 noundef %.sroa.010.0)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.bj, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.bl, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr @_RNvNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB7_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB9_13orchestration7ContextNtB24_9AnyWorkIdNtNtB9_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !8, !align !7, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 1, ptr %i.au, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 0, ptr %.sroa.569.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.bn, ptr %i.bo, align 8
  invoke void @_RNvMNtCseSYDGaa5U8h_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %bb.m unwind label %bb.b

bb.l:                                             ; preds = %bb.m, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false)
  %i.bp = load i64, ptr %i.av, align 8, !range !10, !noundef !8
  %.not114 = icmp eq i64 %i.bp, 2
  br i1 %.not114, label %bb.c, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bq)
          to label %bb.c unwind label %bb.b

bb.o:                                             ; preds = %bb.c
  store ptr %i.be, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.bs = invoke noundef nonnull ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir10GlyphOrderE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br)
          to label %bb.r unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit: ; preds = %.body204, %bb.s, %bb.q
  %.pn123 = phi { ptr, i32 } [ %i.bw, %bb.q ], [ %.pn121, %bb.s ], [ %.pn121, %.body204 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  %i.bt = load ptr, ptr %i.as, align 8, !alias.scope !2856, !nonnull !8, !noundef !8
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !noalias !2856
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.gy

bb.q:                                             ; preds = %bb.hl, %bb.gq, %bb.o
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit

bb.r:                                             ; preds = %bb.o
  store ptr %i.bs, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  %i.by = invoke noundef nonnull ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtB6_2ir13GlobalMetricsE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx)
          to label %bb.u unwind label %bb.t       ; 2 uses

.body204:                                         ; preds = %bb.hb, %bb.go, %bb.v, %bb.w, %bb.t, %.critedge
  %.pn121 = phi { ptr, i32 } [ %i.yz, %bb.go ], [ %.pn119, %.critedge ], [ %i.cg, %bb.v ], [ %i.cc, %bb.t ], [ %i.cg, %bb.w ], [ %i.zy, %bb.hb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  call void @llvm.experimental.noalias.scope.decl(metadata !2858)
  %i.bz = load ptr, ptr %i.ar, align 8, !alias.scope !2859, !nonnull !8, !noundef !8
  %i.ca = atomicrmw add ptr %i.bz, i64 -1 release, align 8, !noalias !2859
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit

bb.s:                                             ; preds = %.body204
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.gy

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe.exit.i214, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgdm2QMcbaeA_10fontdrasil6coords8LocationNtBE_15NormalizedSpaceEECshxhuDJfZv4T_6fontbe.exit.i, %bb.r
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body204

bb.u:                                             ; preds = %bb.r
  store ptr %i.by, ptr %i.ap, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ce = load ptr, ptr %i.as, align 8, !nonnull !8, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 360
  invoke void @_RNvMsf_NtCs3v5ql5U6hxj_6fontir2irNtB5_13GlobalMetrics2at(ptr noalias nofree noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.aq, ptr noundef nonnull align 8 %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  call void @llvm.experimental.noalias.scope.decl(metadata !2861)
  %i.ch = load ptr, ptr %i.ap, align 8, !alias.scope !2862, !nonnull !8, !noundef !8
  %i.ci = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !noalias !2862
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.w, label %.body204

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #35
          to label %.body204 unwind label %bb.gy

bb.x:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !2863)
  call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  %i.ck = load ptr, ptr %i.ap, align 8, !alias.scope !2865, !nonnull !8, !noundef !8
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !2865
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 unwind label %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge:                                        ; preds = %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hi, %.body162, %.thread5.i.i.i.i, %bb.ht, %.body220
  %.pn119 = phi { ptr, i32 } [ %.pn4.i.i.i.i, %.thread5.i.i.i.i ], [ %eh.lpad-body221, %.body220 ], [ %i.aag, %bb.hi ], [ %eh.lpad-body143406, %bb.ht ], [ %.pn, %.body162 ], [ %lpad.loopexit.split-lp568, %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir21GlobalMetricsInstanceECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(288) %i.aq) #31
          to label %.body204 unwind label %bb.gy

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.cn = load ptr, ptr %i.ar, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !8 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cr, 5
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %.loopexit441, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 1896
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.af, i64 36 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.af, i64 26 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.af, i64 28 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.af, i64 30 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.af, i64 34 ; 3 uses
  %.sroa.15340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 38
  %i.di = getelementptr inbounds nuw i8, ptr %i.bc, i64 496
  br label %bb.z

bb.z:                                             ; preds = %.noexc136, %.lr.ph.i
  %.sroa.8305.0 = phi i16 [ 0, %.lr.ph.i ], [ %.sroa.6348.0.copyload, %.noexc136 ]
  %.sroa.7300.0 = phi i64 [ 0, %.lr.ph.i ], [ %i.fb, %.noexc136 ]
  %.sroa.6295.0 = phi ptr [ inttoptr (i64 2 to ptr), %.lr.ph.i ], [ %.sroa.4346.0.copyload, %.noexc136 ]
  %.sroa.0292.0 = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.0345.0.copyload, %.noexc136 ]
  %.sroa.0.010.i = phi ptr [ %i.cp, %.lr.ph.i ], [ %i.dk, %.noexc136 ] ; 7 uses
  %.sroa.2.09.i = phi i16 [ 0, %.lr.ph.i ], [ %i.gh, %.noexc136 ]
  %i.dj = phi <8 x i16> [ <i16 undef, i16 0, i16 undef, i16 0, i16 undef, i16 0, i16 undef, i16 0>, %.lr.ph.i ], [ %i.go, %.noexc136 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2866
  store i64 %.sroa.0292.0, ptr %i.af, align 8, !noalias !2867
  store ptr %.sroa.6295.0, ptr %i.da, align 8, !noalias !2867
  store i64 %.sroa.7300.0, ptr %i.cz, align 8, !noalias !2867
  store i16 %.sroa.8305.0, ptr %i.dc, align 8, !noalias !2867
  call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  store <8 x i16> %i.dj, ptr %i.dd, align 2, !noalias !2867
  store ptr %.sroa.0.010.i, ptr %i.cu, align 8, !noalias !2866
  call void @llvm.experimental.noalias.scope.decl(metadata !2870)
  call void @llvm.experimental.noalias.scope.decl(metadata !2871)
  call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2873
  %i.dl = load i8, ptr %.sroa.0.010.i, align 8, !range !12, !alias.scope !2874, !noalias !2867, !noundef !8
  %i.dm = icmp eq i8 %i.dl, 25                    ; 2 uses
  br i1 %i.dm, label %bb.ab, label %bb.aa, !prof !22

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.010.i, i64 24, i1 false), !noalias !2875
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.010.i)
          to label %bb.ac unwind label %.thread9.i.i.i.i, !noalias !2875

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !2873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2873
  store i64 2, ptr %i.z, align 8, !noalias !2876
  %i.dn = invoke noundef nonnull ptr @_RNvMs1_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_10ContextMapNtB5_6WorkIdNtNtB7_2ir5GlyphE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.di, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ae unwind label %bb.ad, !noalias !2877 ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z) #31
          to label %.thread5.i.i.i.i unwind label %bb.af, !noalias !2878

bb.ae:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z)
          to label %bb.ag unwind label %.thread9.i.i.i.i, !noalias !2875

bb.af:                                            ; preds = %bb.ad
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !2878
  unreachable

.thread9.i.i.i.i:                                 ; preds = %bb.am, %bb.ak, %bb.ae, %bb.ab
  %lpad.thr_comm.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread5.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2876
  store ptr %i.dn, ptr %i.ae, align 8, !noalias !2873
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dr = invoke noundef nonnull align 8 ptr @_RNvMsm_NtCs3v5ql5U6hxj_6fontir2irNtB5_5Glyph16default_instance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.dq)
          to label %bb.aj unwind label %bb.ah, !noalias !2875

bb.ah:                                            ; preds = %bb.ag
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  call void @llvm.experimental.noalias.scope.decl(metadata !2880)
  %i.dt = load ptr, ptr %i.ae, align 8, !alias.scope !2881, !noalias !2873, !nonnull !8, !noundef !8
  %i.du = atomicrmw add ptr %i.dt, i64 -1 release, align 8, !noalias !2882
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.ai, label %.thread5.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #35
          to label %.thread5.i.i.i.i unwind label %bb.bf, !noalias !2875

bb.aj:                                            ; preds = %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %i.dx = load double, ptr %i.dw, align 8, !noalias !2875, !noundef !8
  %i.dy = fadd double %i.dx, 5.000000e-01
  %i.dz = call double @llvm.floor.f64(double %i.dy)
  %i.ea = call i16 @llvm.fptoui.sat.i16.f64(double %i.dz) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  %i.eb = load ptr, ptr %i.ae, align 8, !alias.scope !2885, !noalias !2873, !nonnull !8, !noundef !8
  %i.ec = atomicrmw add ptr %i.eb, i64 -1 release, align 8, !noalias !2886
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %bb.ak, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEECshxhuDJfZv4T_6fontbe.exit34.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEECshxhuDJfZv4T_6fontbe.exit34.i.i.i.i unwind label %.thread9.i.i.i.i, !noalias !2875

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEECshxhuDJfZv4T_6fontbe.exit34.i.i.i.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2873
  br i1 %i.dm, label %bb.am, label %bb.al, !prof !22

bb.al:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEECshxhuDJfZv4T_6fontbe.exit34.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.010.i, i64 24, i1 false), !noalias !2875
  br label %bb.an

bb.am:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir5GlyphEECshxhuDJfZv4T_6fontbe.exit34.i.i.i.i
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.010.i)
          to label %bb.an unwind label %.thread9.i.i.i.i, !noalias !2875

bb.an:                                            ; preds = %bb.am, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !2873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2873
  store i64 10, ptr %i.cx, align 8, !noalias !2873
  store i64 1, ptr %i.ac, align 8, !noalias !2873
  %i.ee = invoke noundef nonnull ptr @_RNvMs1_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_10ContextMapNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtB11_5GlyphE3getB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ac)
          to label %bb.ap unwind label %bb.ao, !noalias !2875

bb.ao:                                            ; preds = %bb.an
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ac) #31
          to label %.thread5.i.i.i.i unwind label %bb.bf, !noalias !2875

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cy) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i unwind label %bb.ar, !noalias !2875

bb.ap:                                            ; preds = %bb.an
  store ptr %i.ee, ptr %i.ad, align 8, !noalias !2873
  call void @llvm.experimental.noalias.scope.decl(metadata !2887)
  call void @llvm.experimental.noalias.scope.decl(metadata !2888)
  call void @llvm.experimental.noalias.scope.decl(metadata !2889)
  call void @llvm.experimental.noalias.scope.decl(metadata !2890)
  call void @llvm.experimental.noalias.scope.decl(metadata !2891)
  %i.eg = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !range !12, !alias.scope !2892, !noalias !2873, !noundef !8
  %switch.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.eg, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  call void @llvm.experimental.noalias.scope.decl(metadata !2894)
  %i.eh = load ptr, ptr %i.cy, align 8, !alias.scope !2895, !noalias !2873, !nonnull !8, !noundef !8
  %i.ei = atomicrmw add ptr %i.eh, i64 -1 release, align 8, !noalias !2896
  %i.ej = icmp eq i64 %i.ei, 1
  br i1 %i.ej, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.av, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2897)
  call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  %i.el = load ptr, ptr %i.ad, align 8, !alias.scope !2899, !noalias !2873, !nonnull !8, !noundef !8
  %i.em = atomicrmw add ptr %i.el, i64 -1 release, align 8, !noalias !2900
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.as, label %.thread5.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #35
          to label %.thread5.i.i.i.i unwind label %bb.bf, !noalias !2901

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i: ; preds = %bb.aq, %bb.ap, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2873
  %i.eo = load ptr, ptr %i.ad, align 8, !noalias !2873, !nonnull !8, !noundef !8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !range !19, !noalias !2875, !noundef !8 ; 3 uses
  %i.er = icmp ne i64 %i.eq, -9223372036854775807
  call void @llvm.assume(i1 %i.er)
  %i.es = xor i64 %i.eq, -9223372036854775808
  %i.et = icmp slt i64 %i.eq, 0
  %i.eu = select i1 %i.et, i64 %i.es, i64 1
  switch i64 %i.eu, label %bb.at [
    i64 0, label %.thread12.i.i.i.i
    i64 1, label %bb.bd
    i64 2, label %bb.au
  ]

bb.at:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i
  unreachable

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i
  br label %bb.bd

.thread12.i.i.i.i:                                ; preds = %bb.bd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i
  %.sroa.01.014.i.i.i.i = phi i16 [ %.sroa.5.018.i.i.i.i, %bb.bd ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i ] ; 4 uses
  %.sroa.37.0.i.i.i.i = phi i32 [ %i.gb, %bb.bd ], [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i ]
  %.sroa.06.0.i.i.i.i = phi i1 [ true, %bb.bd ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i ]
  %i.ev = load i64, ptr %i.cz, align 8, !alias.scope !2902, !noalias !2866, !noundef !8 ; 3 uses
  %i.ew = load i64, ptr %i.af, align 8, !range !31, !alias.scope !2902, !noalias !2866, !noundef !8
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %bb.av, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

bb.av:                                            ; preds = %.thread12.i.i.i.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8grow_oneCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af) #35
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i unwind label %bb.ar, !noalias !2901

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %bb.av, %.thread12.i.i.i.i
  %i.ey = load ptr, ptr %i.da, align 8, !alias.scope !2902, !noalias !2866, !nonnull !8, !noundef !8
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ev ; 2 uses
  store i16 %i.ea, ptr %i.ez, align 2, !noalias !2901
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  store i16 %.sroa.01.014.i.i.i.i, ptr %i.fa, align 2, !noalias !2901
  %i.fb = add i64 %i.ev, 1                        ; 3 uses
  store i64 %i.fb, ptr %i.cz, align 8, !alias.scope !2902, !noalias !2866
  %i.fc = load i16, ptr %i.db, align 4, !alias.scope !2903, !noalias !2866, !noundef !8
  %i.fd = call i16 @llvm.umax.i16(i16 %i.fc, i16 %i.ea) ; 3 uses
  store i16 %i.fd, ptr %i.db, align 4, !alias.scope !2903, !noalias !2866
  %.sroa.6348.0.copyload.pre = load i16, ptr %i.dc, align 8, !alias.scope !2904, !noalias !2905 ; 2 uses
  br i1 %.sroa.06.0.i.i.i.i, label %bb.aw, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i._RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i_crit_edge

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i._RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i_crit_edge: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %i.fe = load <4 x i16>, ptr %i.dd, align 2, !alias.scope !2904, !noalias !2905
  %.sroa.11353.0.copyload.pre = load i16, ptr %i.dh, align 2, !alias.scope !2904, !noalias !2905
  br label %_RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i

bb.aw:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i
  %i.ff = trunc nuw i16 %.sroa.6348.0.copyload.pre to i1
  br i1 %i.ff, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fg = load i16, ptr %i.dd, align 2, !alias.scope !2903, !noalias !2866
  %i.fh = call i16 @llvm.smin.i16(i16 %i.fg, i16 %.sroa.01.014.i.i.i.i)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.sroa.3.0.i.i.i.i.i = phi i16 [ %i.fh, %bb.ax ], [ %.sroa.01.014.i.i.i.i, %bb.aw ] ; 2 uses
  store i16 1, ptr %i.dc, align 8, !alias.scope !2903, !noalias !2866
  store i16 %.sroa.3.0.i.i.i.i.i, ptr %i.dd, align 2, !alias.scope !2903, !noalias !2866
  %i.fi = zext i16 %i.ea to i32
  %i.fj = sext i16 %.sroa.01.014.i.i.i.i to i32
  %i.fk = add i32 %.sroa.37.0.i.i.i.i, %i.fj      ; 2 uses
  %i.fl = sub i32 %i.fi, %i.fk
  %i.fm = call i32 @llvm.smax.i32(i32 %i.fl, i32 -32768)
  %.sroa.05.022.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.fm, i32 32767)
  %.sroa.05.0.i.i.i.i.i = trunc nsw i32 %.sroa.05.022.i.i.i.i.i to i16 ; 2 uses
  %i.fn = load i16, ptr %i.de, align 4, !range !24, !alias.scope !2903, !noalias !2866, !noundef !8
  %i.fo = trunc nuw i16 %i.fn to i1
  br i1 %i.fo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fp = load i16, ptr %i.df, align 2, !alias.scope !2903, !noalias !2866
  %i.fq = call i16 @llvm.smin.i16(i16 %i.fp, i16 %.sroa.05.0.i.i.i.i.i)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.38.0.i.i.i.i.i = phi i16 [ %i.fq, %bb.az ], [ %.sroa.05.0.i.i.i.i.i, %bb.ay ] ; 2 uses
  store i16 1, ptr %i.de, align 4, !alias.scope !2903, !noalias !2866
  store i16 %.sroa.38.0.i.i.i.i.i, ptr %i.df, align 2, !alias.scope !2903, !noalias !2866
  %i.fr = call i32 @llvm.smax.i32(i32 %i.fk, i32 -32768)
  %.sroa.012.024.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.fr, i32 32767)
  %.sroa.012.0.i.i.i.i.i = trunc nsw i32 %.sroa.012.024.i.i.i.i.i to i16 ; 2 uses
  %i.fs = load i16, ptr %i.dg, align 8, !range !24, !alias.scope !2903, !noalias !2866, !noundef !8
  %i.ft = trunc nuw i16 %i.fs to i1
  br i1 %i.ft, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fu = load i16, ptr %i.dh, align 2, !alias.scope !2903, !noalias !2866
  %i.fv = call i16 @llvm.smax.i16(i16 %i.fu, i16 %.sroa.012.0.i.i.i.i.i)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sroa.315.0.i.i.i.i.i = phi i16 [ %i.fv, %bb.bb ], [ %.sroa.012.0.i.i.i.i.i, %bb.ba ] ; 2 uses
  store i16 1, ptr %i.dg, align 8, !alias.scope !2903, !noalias !2866
  store i16 %.sroa.315.0.i.i.i.i.i, ptr %i.dh, align 2, !alias.scope !2903, !noalias !2866
  %i.fw = insertelement <4 x i16> <i16 poison, i16 1, i16 poison, i16 1>, i16 %.sroa.3.0.i.i.i.i.i, i64 0
  %i.fx = insertelement <4 x i16> %i.fw, i16 %.sroa.38.0.i.i.i.i.i, i64 2
  br label %_RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i

bb.bd:                                            ; preds = %bb.au, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i
  %.sink20.i.i.i.i = phi i64 [ 72, %bb.au ], [ 64, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ 76, %bb.au ], [ 68, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sink20.i.i.i.i
  %.sroa.529.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sink.i.i.i.i
  %.sroa.5.018.i.i.i.i = load i16, ptr %i.fy, align 8, !noalias !2875 ; 2 uses
  %.sroa.713.0.i.i.i.i = load i16, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 4, !noalias !2875
  %i.fz = sext i16 %.sroa.713.0.i.i.i.i to i32
  %i.ga = sext i16 %.sroa.5.018.i.i.i.i to i32
  %i.gb = sub nsw i32 %i.fz, %i.ga
  br label %.thread12.i.i.i.i

_RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i._RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i_crit_edge, %bb.bc
  %.sroa.11353.0.copyload = phi i16 [ %.sroa.315.0.i.i.i.i.i, %bb.bc ], [ %.sroa.11353.0.copyload.pre, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i._RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i_crit_edge ] ; 2 uses
  %.sroa.6348.0.copyload = phi i16 [ 1, %bb.bc ], [ %.sroa.6348.0.copyload.pre, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i._RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i_crit_edge ] ; 2 uses
  %i.gc = phi <4 x i16> [ %i.fx, %bb.bc ], [ %i.fe, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx10LongMetricE8push_mutCshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i._RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i_crit_edge ] ; 5 uses
  %.sroa.0345.0.copyload = load i64, ptr %i.af, align 8, !alias.scope !2904, !noalias !2905 ; 2 uses
  %.sroa.4346.0.copyload = load ptr, ptr %i.da, align 8, !alias.scope !2904, !noalias !2905 ; 2 uses
  %.sroa.13355.0.copyload = load i16, ptr %.sroa.15340.0..sroa_idx, align 2, !alias.scope !2904, !noalias !2905 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  call void @llvm.experimental.noalias.scope.decl(metadata !2907)
  %i.gd = load ptr, ptr %i.ad, align 8, !alias.scope !2908, !noalias !2873, !nonnull !8, !noundef !8
  %i.ge = atomicrmw add ptr %i.gd, i64 -1 release, align 8, !noalias !2909
  %i.gf = icmp eq i64 %i.ge, 1
  br i1 %i.gf, label %bb.be, label %.noexc136

bb.be:                                            ; preds = %_RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #35
          to label %.noexc136 unwind label %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %.thread5.i.i.i.i, %bb.as, %bb.ao, %bb.ai
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !2901
  unreachable

.thread5.i.i.i.i:                                 ; preds = %bb.as, %bb.ar, %bb.ao, %bb.ai, %bb.ah, %.thread9.i.i.i.i, %bb.ad
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %i.do, %bb.ad ], [ %lpad.thr_comm.i.i.i.i, %.thread9.i.i.i.i ], [ %i.ds, %bb.ah ], [ %i.ef, %bb.ao ], [ %i.ds, %bb.ai ], [ %i.ek, %bb.as ], [ %i.ek, %bb.ar ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits14MetricsBuilderEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af) #31
          to label %.critedge unwind label %bb.bf, !noalias !2901

.noexc136:                                        ; preds = %bb.be, %_RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder6update.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2866
  %i.gh = add i16 %.sroa.2.09.i, 1                ; 2 uses
  %i.gi = icmp eq ptr %i.dk, %i.cs
  %i.gj = insertelement <8 x i16> poison, i16 %.sroa.11353.0.copyload, i64 4
  %i.gk = insertelement <8 x i16> %i.gj, i16 %i.fd, i64 5
  %i.gl = insertelement <8 x i16> %i.gk, i16 %.sroa.13355.0.copyload, i64 6
  %i.gm = insertelement <8 x i16> %i.gl, i16 %i.gh, i64 7
  %i.gn = shufflevector <4 x i16> %i.gc, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.go = shufflevector <8 x i16> %i.gn, <8 x i16> %i.gm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  br i1 %i.gi, label %.loopexit441.loopexit, label %bb.z

.loopexit441.loopexit:                            ; preds = %.noexc136
  %i.gp = extractelement <4 x i16> %i.gc, i64 3
  %i.gq = extractelement <4 x i16> %i.gc, i64 2
  %i.gr = extractelement <4 x i16> %i.gc, i64 1
  %3 = extractelement <4 x i16> %i.gc, i64 0
  br label %.loopexit441

.loopexit441:                                     ; preds = %.loopexit441.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135
  %.sroa.15340.1 = phi i16 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %.sroa.13355.0.copyload, %.loopexit441.loopexit ]
  %.sroa.14335.1 = phi i16 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %i.fd, %.loopexit441.loopexit ]
  %.sroa.13330.1 = phi i16 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %.sroa.11353.0.copyload, %.loopexit441.loopexit ]
  %.sroa.12325.1 = phi i16 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %i.gp, %.loopexit441.loopexit ]
  %.sroa.11320.1 = phi i16 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %i.gq, %.loopexit441.loopexit ]
  %.sroa.10315.1 = phi i16 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %i.gr, %.loopexit441.loopexit ]
  %.sroa.9310.1 = phi i16 [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %3, %.loopexit441.loopexit ]
  %.sroa.8305.1 = phi i16 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %.sroa.6348.0.copyload, %.loopexit441.loopexit ]
  %.sroa.7300.1 = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %i.fb, %.loopexit441.loopexit ]
  %.sroa.6295.1 = phi ptr [ inttoptr (i64 2 to ptr), %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %.sroa.4346.0.copyload, %.loopexit441.loopexit ]
  %.sroa.0292.1 = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir13GlobalMetricsEECshxhuDJfZv4T_6fontbe.exit135 ], [ %.sroa.0345.0.copyload, %.loopexit441.loopexit ]
  store i64 %.sroa.0292.1, ptr %i.ao, align 8, !noalias !2910
  %.sroa.6295.0..sroa_idx298 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.6295.1, ptr %.sroa.6295.0..sroa_idx298, align 8, !noalias !2910
  %.sroa.7300.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.sroa.7300.1, ptr %.sroa.7300.0..sroa_idx303, align 8, !noalias !2910
  %.sroa.8305.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i16 %.sroa.8305.1, ptr %.sroa.8305.0..sroa_idx308, align 8, !noalias !2910
  %.sroa.9310.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.ao, i64 26
  store i16 %.sroa.9310.1, ptr %.sroa.9310.0..sroa_idx313, align 2, !noalias !2910
  %.sroa.10315.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  store i16 %.sroa.10315.1, ptr %.sroa.10315.0..sroa_idx318, align 4, !noalias !2910
  %.sroa.11320.0..sroa_idx323 = getelementptr inbounds nuw i8, ptr %i.ao, i64 30
  store i16 %.sroa.11320.1, ptr %.sroa.11320.0..sroa_idx323, align 2, !noalias !2910
  %.sroa.12325.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i16 %.sroa.12325.1, ptr %.sroa.12325.0..sroa_idx328, align 8, !noalias !2910
  %.sroa.13330.0..sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.ao, i64 34
  store i16 %.sroa.13330.1, ptr %.sroa.13330.0..sroa_idx333, align 2, !noalias !2910
  %.sroa.14335.0..sroa_idx338 = getelementptr inbounds nuw i8, ptr %i.ao, i64 36
  store i16 %.sroa.14335.1, ptr %.sroa.14335.0..sroa_idx338, align 4, !noalias !2910
  %.sroa.15340.0..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.ao, i64 38
  store i16 %.sroa.15340.1, ptr %.sroa.15340.0..sroa_idx343, align 2, !noalias !2910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke void @_RNvMs0_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_14MetricsBuilder5build(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ao)
          to label %bb.bg unwind label %.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %.loopexit441
  %i.gs = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.gt = load <4 x i16>, ptr %i.gs, align 8      ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !noundef !8 ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 2305843009213693952
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp samesign ugt i64 %i.gv, 65535
  br i1 %i.gx, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gy = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.gz = load double, ptr %i.gy, align 8, !noundef !8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.hb = load double, ptr %i.ha, align 8, !noundef !8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.hd = load double, ptr %i.hc, align 8, !noundef !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %i.hf = load double, ptr %i.he, align 8, !noundef !8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  %i.hh = load double, ptr %i.hg, align 8, !noundef !8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %i.hj = load double, ptr %i.hi, align 8, !noundef !8
  %i.hk = fadd double %i.gz, 5.000000e-01
  %i.hl = call double @llvm.floor.f64(double %i.hk)
  %i.hm = call i16 @llvm.fptosi.sat.i16.f64(double %i.hl) ; 3 uses
  %i.hn = fadd double %i.hb, 5.000000e-01
  %i.ho = call double @llvm.floor.f64(double %i.hn)
  %i.hp = call i16 @llvm.fptosi.sat.i16.f64(double %i.ho) ; 2 uses
  %i.hq = fadd double %i.hd, 5.000000e-01
  %i.hr = call double @llvm.floor.f64(double %i.hq)
  %i.hs = call i16 @llvm.fptosi.sat.i16.f64(double %i.hr) ; 2 uses
  %i.ht = fadd double %i.hf, 5.000000e-01
  %i.hu = call double @llvm.floor.f64(double %i.ht)
  %i.hv = call i16 @llvm.fptosi.sat.i16.f64(double %i.hu) ; 3 uses
  %i.hw = fadd double %i.hh, 5.000000e-01
  %i.hx = call double @llvm.floor.f64(double %i.hw)
  %i.hy = call i16 @llvm.fptosi.sat.i16.f64(double %i.hx) ; 3 uses
  %i.hz = fadd double %i.hj, 5.000000e-01
  %i.ia = call double @llvm.floor.f64(double %i.hz)
  %i.ib = call i16 @llvm.fptosi.sat.i16.f64(double %i.ia) ; 3 uses
  %i.ic = trunc nuw i64 %i.gv to i16              ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 1680
  %i.ie = getelementptr inbounds nuw i8, ptr %2, i64 1720
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !2911, !nonnull !8, !noundef !8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 72
  invoke void @_RINvNtCsgdm2QMcbaeA_10fontdrasil13orchestration17assert_access_oneNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEB16_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ig, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.id, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4)
          to label %.noexc137 unwind label %.thread410

.noexc137:                                        ; preds = %bb.bh
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 1728
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !2911, !nonnull !8, !noundef !8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 5 uses
  %i.ik = load atomic i64, ptr %i.ij monotonic, align 8 ; 4 uses
  %i.il = and i64 %i.ik, 8
  %i.im = icmp ne i64 %i.il, 0
  %i.in = icmp ugt i64 %i.ik, -17
  %or.cond.i.i = or i1 %i.in, %i.im
  br i1 %or.cond.i.i, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, !prof !20

_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i: ; preds = %.noexc137
  %i.io = add nuw i64 %i.ik, 16
  %i.ip = cmpxchg weak ptr %i.ij, i64 %i.ik, i64 %i.io acquire monotonic, align 8
  %i.iq = extractvalue { i64, i1 } %i.ip, 1
  br i1 %i.iq, label %.noexc138, label %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, !prof !21

_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i: ; preds = %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %.noexc137
  %i.ir = invoke noundef zeroext i1 @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.ij, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %.noexc138 unwind label %.thread410 ; 0 uses

.noexc138:                                        ; preds = %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 24 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !noundef !8 ; 2 uses
  %.not.i = icmp eq ptr %i.it, null
  br i1 %.not.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.noexc138
  %i.iu = atomicrmw add ptr %i.it, i64 1 monotonic, align 8
  %i.iv = icmp slt i64 %i.iu, 0
  br i1 %i.iv, label %bb.bm, label %bb.bl

bb.bj:                                            ; preds = %bb.bl, %.noexc138
  %.sroa.0.0.i = phi ptr [ %i.iz, %bb.bl ], [ null, %.noexc138 ] ; 9 uses
  %i.iw = atomicrmw add ptr %i.ij, i64 -16 release, align 8
  %i.ix = and i64 %i.iw, -14
  %i.iy = icmp eq i64 %i.ix, 18
  br i1 %i.iy, label %bb.bk, label %_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtB11_14ExtraFeaTablesE7try_getB13_.exit, !prof !22

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.ij)
          to label %_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtB11_14ExtraFeaTablesE7try_getB13_.exit unwind label %.thread410

bb.bl:                                            ; preds = %bb.bi
  %i.iz = load ptr, ptr %i.is, align 8, !nonnull !8, !noundef !8
  br label %bb.bj

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

bb.bn:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6261)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2912
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 22, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc140 unwind label %.thread410

.noexc140:                                        ; preds = %bb.bn
  %i.ja = load i64, ptr %i.u, align 8, !range !11, !noalias !2912, !noundef !8
  %i.jb = trunc nuw i64 %i.ja to i1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.jd = load i64, ptr %i.jc, align 8, !range !30, !noalias !2912, !noundef !8 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.jb, label %bb.bo, label %bb.bp, !prof !22

bb.bo:                                            ; preds = %.noexc140
  %i.jf = load i64, ptr %i.je, align 8, !noalias !2912
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.jd, i64 %i.jf) #34
          to label %.noexc141 unwind label %.thread410

.noexc141:                                        ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %.noexc140
  %i.jg = load ptr, ptr %i.je, align 8, !noalias !2912, !nonnull !8, !noundef !8 ; 2 uses
  %i.jh = icmp samesign ugt i64 %i.jd, 21
  call void @llvm.assume(i1 %i.jh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.jg, ptr noundef nonnull align 1 dereferenceable(22) @3, i64 22, i1 false), !noalias !2912
  store i64 %i.jd, ptr %i.y, align 8, !noalias !2912
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.jg, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2912
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 22, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2912
  %i.ji = load i64, ptr %i.gu, align 8, !noalias !2912, !noundef !8 ; 2 uses
  store i64 %i.ji, ptr %i.w, align 8, !noalias !2912
  %i.jj = icmp ult i64 %i.ji, 2305843009213693952
  call void @llvm.assume(i1 %i.jj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2912
  store ptr %i.w, ptr %i.v, align 8, !noalias !2912
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !2912
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @4, ptr noundef nonnull %i.v)
          to label %bb.hd unwind label %bb.bq, !noalias !2912

bb.bq:                                            ; preds = %bb.bp
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #31
          to label %.thread407 unwind label %bb.br, !noalias !2912

bb.br:                                            ; preds = %bb.bq
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !2912
  unreachable

.thread410:                                       ; preds = %bb.bo, %bb.cw, %bb.bu, %bb.bw, %bb.bk, %bb.bh, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %bb.bn, %bb.bx, %_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i149, %bb.ci, %bb.cj, %bb.cl
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread407

.loopexit.split-lp437.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.be, %.loopexit441, %bb.y, %bb.hj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits10MaxBuilderEBF_.exit203, %bb.gz
  %lpad.loopexit.split-lp568 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtB11_14ExtraFeaTablesE7try_getB13_.exit: ; preds = %bb.bj, %bb.bk
  %.not115 = icmp eq ptr %.sroa.0.0.i, null
end_hunk_0
