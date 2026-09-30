Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.08?download=true
inline.NumInlined: 2151
inline.NumDeleted: 1036
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1z_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4BaseNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq:bb.a
.split.i17:                                       ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !8, !noundef !8
  %i.ar = tail call noundef zeroext i1 @_RNvXs2_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtB5_14SlicePartialEqBC_E17equal_same_lengthCshxhuDJfZv4T_6fontbe(ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ao, i64 noundef %i.aj)
  br i1 %i.ar, label %bb.p, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %.split.i17, %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noundef !8
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18, label %_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit.thread

_RNvXs1I_NtNtCs6WnK4nVnpEz_11write_fonts6tables4baseNtB6_4AxisNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit18: ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !8, !noundef !8
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
  br i1 %or.cond.not, label %bb.hw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit236

bb.b:                                             ; preds = %bb.ho, %bb.gt, %bb.n, %bb.k, %bb.h, %bb.g, %bb.c
  %.sroa.059.1 = phi i8 [ %.sroa.056.2, %bb.ho ], [ %.sroa.056.2, %bb.gt ], [ %.sroa.056.2, %bb.c ], [ 1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ]
  %.sroa.056.1 = phi i8 [ %.sroa.056.2, %bb.ho ], [ %.sroa.056.2, %bb.gt ], [ %.sroa.056.2, %bb.c ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ]
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  call void @llvm.experimental.noalias.scope.decl(metadata !2969)
  %i.bt = load ptr, ptr %i.as, align 8, !alias.scope !2970, !nonnull !8, !noundef !8
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !2970
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.as) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.ha

bb.q:                                             ; preds = %bb.hn, %bb.gs, %bb.o
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

.body204:                                         ; preds = %bb.hd, %bb.gq, %bb.v, %bb.w, %bb.t, %.critedge
  %.pn121 = phi { ptr, i32 } [ %i.za, %bb.gq ], [ %.pn119, %.critedge ], [ %i.cg, %bb.v ], [ %i.cc, %bb.t ], [ %i.cg, %bb.w ], [ %i.zz, %bb.hd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  call void @llvm.experimental.noalias.scope.decl(metadata !2972)
  %i.bz = load ptr, ptr %i.ar, align 8, !alias.scope !2973, !nonnull !8, !noundef !8
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 release, align 8, !noalias !2973
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit

bb.s:                                             ; preds = %.body204
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs3v5ql5U6hxj_6fontir2ir10GlyphOrderEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.ha

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
  call void @llvm.experimental.noalias.scope.decl(metadata !2974)
end_hunk_0
begin_hunk_1_@_RNvXs2_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB5_18MetricAndLimitWorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB7_13orchestration7ContextNtB22_9AnyWorkIdNtNtB7_5error5ErrorE4exec:bb.a

bb.co:                                            ; preds = %bb.cn
  %i.mp = atomicrmw sub ptr %i.mn, i64 1 release, align 8, !noalias !3037
  %i.mq = icmp eq i64 %i.mp, 1
  br i1 %i.mq, label %bb.cp, label %.thread407

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #35
          to label %.thread407 unwind label %bb.cy, !noalias !3031

bb.cq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsoeFWPcSj6V_8lock_api6rwlock15RwLockReadGuardNtNtCs5CI2K4y5rgb_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEEECshxhuDJfZv4T_6fontbe.exit.i
  store i64 1, ptr %i.md, align 8, !noalias !3031
  %.sroa.4.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i151, align 8, !noalias !3031
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store i16 %.sroa.0242.0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4243.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 18
  store i16 %.sroa.4243.0, ptr %.sroa.4243.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  %.sroa.7244.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 20
  store i16 %.sroa.7244.0, ptr %.sroa.7244.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4
  %.sroa.10245.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 22
  store <4 x i16> %i.gu, ptr %.sroa.10245.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 30
  store i16 %i.ht, ptr %.sroa.18.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  store i16 %i.hq, ptr %.sroa.20.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 34
  store i16 %.sroa.22.0, ptr %.sroa.22.0..sroa.5.0..sroa_idx.i.sroa_idx, align 2
  %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 36
  store i16 %i.id, ptr %.sroa.25.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4
  store ptr %i.md, ptr %i.t, align 8, !noalias !3034
  %i.mr = cmpxchg weak ptr %i.ki, i64 0, i64 8 acquire monotonic, align 8, !noalias !3031
  %i.ms = extractvalue { i64, i1 } %i.mr, 1
  br i1 %i.ms, label %bb.cs, label %bb.cr, !prof !23

bb.cr:                                            ; preds = %bb.cq
  %i.mt = invoke noundef zeroext i1 @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.ki, i64 undef, i32 noundef -1)
          to label %bb.cs unwind label %bb.cn, !noalias !3031 ; 0 uses

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  %i.mu = load ptr, ptr %i.kr, align 8, !alias.scope !3038, !noalias !3031, !noundef !8 ; 2 uses
  %i.mv = icmp eq ptr %i.mu, null
  br i1 %i.mv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mw = atomicrmw sub ptr %i.mu, i64 1 release, align 8, !noalias !3039
  %i.mx = icmp eq i64 %i.mw, 1
  br i1 %i.mx, label %bb.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kr) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i unwind label %bb.cv, !noalias !3031

bb.cv:                                            ; preds = %bb.cu
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mz = load ptr, ptr %i.t, align 8, !noalias !3034, !noundef !8
  store ptr %i.mz, ptr %i.kr, align 8, !noalias !3031
  %i.na = cmpxchg ptr %i.ki, i64 8, i64 0 release monotonic, align 8, !noalias !3031
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.na, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %.thread407, label %bb.cw, !prof !23

bb.cw:                                            ; preds = %bb.cv
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ki, i1 noundef zeroext false)
          to label %.thread407 unwind label %bb.cy, !noalias !3031

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i: ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.nb = load ptr, ptr %i.t, align 8, !noalias !3034, !noundef !8
  store ptr %i.nb, ptr %i.kr, align 8, !noalias !3031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3034
  %i.nc = cmpxchg ptr %i.ki, i64 8, i64 0 release monotonic, align 8, !noalias !3031
  %.sroa.18.0.in.i.i.i.i22.i = extractvalue { i64, i1 } %i.nc, 1
  br i1 %.sroa.18.0.in.i.i.i.i22.i, label %_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit, label %bb.cx, !prof !23

bb.cx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i
  invoke void @_RNvMs8_NtCs5CI2K4y5rgb_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ki, i1 noundef zeroext false)
          to label %_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit unwind label %.thread410

bb.cy:                                            ; preds = %bb.cw, %bb.cp
  %i.nd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3031
  unreachable

_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaEEECshxhuDJfZv4T_6fontbe.exit20.i, %bb.cl, %bb.cm, %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.nf = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nf, ptr noundef nonnull align 8 dereferenceable(24) %i.ne, i64 24, i1 false)
  invoke void @_RINvNtCs6WnK4nVnpEz_11write_fonts5write10dump_tableNtNtNtB4_6tables4hmtx4HmtxECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al)
          to label %bb.cz unwind label %.loopexit.split-lp

.body162:                                         ; preds = %.loopexit, %.loopexit.split-lp, %.body179, %.thread.i.i.i.i, %bb.db
  %.pn = phi { ptr, i32 } [ %.pn4.i.i.i.i166, %.thread.i.i.i.i ], [ %i.nj, %bb.db ], [ %eh.lpad-body180, %.body179 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hmtx4HmtxECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(48) %i.al) #31
          to label %.critedge unwind label %bb.ha

.loopexit:                                        ; preds = %bb.ej
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body162

.loopexit.split-lp:                               ; preds = %_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit, %bb.dg, %bb.dh, %bb.go
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body162

bb.cz:                                            ; preds = %_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4hhea4HheaE3setB14_.exit
  %i.ng = load i64, ptr %i.ah, align 8, !range !11, !noundef !8
  %i.nh = trunc nuw i64 %i.ng to i1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  br i1 %i.nh, label %bb.da, label %bb.dg

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ni, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3040
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dc unwind label %bb.db, !noalias !3040

bb.db:                                            ; preds = %bb.dd, %bb.da
  %i.nj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6WnK4nVnpEz_11write_fonts5error5ErrorECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #31
          to label %.body162 unwind label %bb.df, !noalias !3040

bb.dc:                                            ; preds = %bb.da
  %i.nk = load i64, ptr %i.r, align 8, !range !11, !noalias !3040, !noundef !8
  %i.nl = trunc nuw i64 %i.nk to i1
  %i.nm = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.nn = load i64, ptr %i.nm, align 8, !range !30, !noalias !3040, !noundef !8 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  br i1 %i.nl, label %bb.dd, label %bb.hb, !prof !22

bb.dd:                                            ; preds = %bb.dc
  %i.np = load i64, ptr %i.no, align 8, !noalias !3040
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.nn, i64 %i.np) #34
          to label %bb.de unwind label %bb.db, !noalias !3040

bb.de:                                            ; preds = %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.db
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3040
  unreachable

bb.dg:                                            ; preds = %bb.cz
  %.sroa.0275.0.copyload = load i64, ptr %i.ni, align 8
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.4276.0.copyload = load ptr, ptr %.sroa.4276.0..sroa_idx, align 8
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.5277.0.copyload = load i64, ptr %.sroa.5277.0..sroa_idx, align 8
  store i64 %.sroa.0275.0.copyload, ptr %i.ak, align 8
  %.sroa.632.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.4276.0.copyload, ptr %.sroa.632.sroa.7.0..sroa_idx, align 8
  %.sroa.632.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.5277.0.copyload, ptr %.sroa.632.sroa.8.0..sroa_idx, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 1120
  invoke void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdINtNtCsgCecv3eZDcN_5alloc3vec3VechEE3setB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.nr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak)
          to label %bb.dh unwind label %.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ns = load ptr, ptr %i.ar, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load ptr, ptr %i.nt, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.nw = load i64, ptr %i.nv, align 8, !noundef !8 ; 2 uses
  %i.nx = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @51)
          to label %bb.di unwind label %.loopexit.split-lp ; 2 uses

bb.di:                                            ; preds = %bb.dh
  %.idx426 = shl nuw nsw i64 %i.nw, 5
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 %.idx426
  %i.nz = extractvalue { i64, i64 } %i.nx, 0      ; 2 uses
  %i.oa = extractvalue { i64, i64 } %i.nx, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0356)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false), !noalias !3041
  %i.ob = icmp eq i64 %i.nw, 0
  br i1 %i.ob, label %.loopexit432, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %bb.di
  %i.oc = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.od = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 1896
  %.sroa.4.0..sroa_idx.i.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.q, i64 54 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56 ; 4 uses
  %.sroa.712.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 60 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 62 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.q, i64 52 ; 2 uses
  %.sroa.6357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %.sroa.7362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %.noexc172, %.lr.ph.i164
  %.sroa.6357.0 = phi i64 [ %i.nz, %.lr.ph.i164 ], [ %.sroa.4393.0.copyload, %.noexc172 ]
  %.sroa.7362.0 = phi i64 [ %i.oa, %.lr.ph.i164 ], [ %.sroa.5394.0.copyload, %.noexc172 ]
  %.sroa.12387.0 = phi i64 [ undef, %.lr.ph.i164 ], [ %.sroa.10399.0.copyload, %.noexc172 ]
  %.sroa.0.011.i = phi ptr [ %i.nu, %.lr.ph.i164 ], [ %i.om, %.noexc172 ] ; 5 uses
  %.sroa.2.010.i = phi i16 [ 0, %.lr.ph.i164 ], [ %i.sb, %.noexc172 ] ; 3 uses
  %i.ol = phi <4 x i16> [ zeroinitializer, %.lr.ph.i164 ], [ %i.rw, %.noexc172 ]
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, i64 32, i1 false), !noalias !3043
  store i64 %.sroa.6357.0, ptr %.sroa.6357.0..sroa_idx, align 8, !noalias !3043
  store i64 %.sroa.7362.0, ptr %.sroa.7362.0..sroa_idx, align 8, !noalias !3043
  store <4 x i16> %i.ol, ptr %i.oi, align 8, !noalias !3043
  store i64 %.sroa.12387.0, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3043
  call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0392)
  call void @llvm.experimental.noalias.scope.decl(metadata !3045)
  store i16 %.sroa.2.010.i, ptr %i.oc, align 8, !noalias !3042
  store ptr %.sroa.0.011.i, ptr %i.od, align 8, !noalias !3042
  call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  call void @llvm.experimental.noalias.scope.decl(metadata !3048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3049
  %i.on = load i8, ptr %.sroa.0.011.i, align 8, !range !12, !alias.scope !3050, !noalias !3051, !noundef !8
  %i.oo = icmp eq i8 %i.on, 25
  br i1 %i.oo, label %bb.dl, label %bb.dk, !prof !22

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.011.i, i64 24, i1 false), !noalias !3051
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  invoke void @_RNvNvXs_Cs9NoVXegZYB5_8smol_strNtB6_7SmolStrNtNtCsf3Ta7LF998c_4core5clone5Clone5clone10cold_clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.011.i)
          to label %bb.dm unwind label %.thread5.i.i.i.i171, !noalias !3051

.thread5.i.i.i.i171:                              ; preds = %bb.dl
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i165, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !3049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3049
  store i64 10, ptr %i.of, align 8, !noalias !3049
  store i64 1, ptr %i.o, align 8, !noalias !3049
  %i.oq = invoke noundef nonnull ptr @_RNvMs1_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_10ContextMapNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtB11_5GlyphE3getB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.oe, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.o)
          to label %bb.do unwind label %bb.dn, !noalias !3051

bb.dn:                                            ; preds = %bb.dm
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o) #31
          to label %.thread.i.i.i.i unwind label %bb.ek, !noalias !3051

bb.do:                                            ; preds = %bb.dm
  store ptr %i.oq, ptr %i.p, align 8, !noalias !3049
  call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  %i.os = load i64, ptr %i.o, align 8, !range !11, !alias.scope !3052, !noalias !3049, !noundef !8
  %i.ot = icmp eq i64 %i.os, 0
  br i1 %i.ot, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(32) %i.of)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 unwind label %bb.dv, !noalias !3051

bb.dq:                                            ; preds = %bb.do
  call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  %i.ou = load i64, ptr %i.of, align 8, !range !17, !alias.scope !3054, !noalias !3049, !noundef !8
  switch i64 %i.ou, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 [
    i64 10, label %bb.dr
    i64 15, label %bb.dt
  ]

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169: ; preds = %bb.du, %bb.ds
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.og) #35
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 unwind label %bb.dv, !noalias !3051

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  call void @llvm.experimental.noalias.scope.decl(metadata !3057)
  %i.ov = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i165, align 8, !range !12, !alias.scope !3058, !noalias !3049, !noundef !8
  %switch.i.i.i.i.i.i.i.i.i170 = icmp samesign ult i8 %i.ov, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i170, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !3059)
  call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  %i.ow = load ptr, ptr %i.og, align 8, !alias.scope !3061, !noalias !3049, !nonnull !8, !noundef !8
  %i.ox = atomicrmw sub ptr %i.ow, i64 1 release, align 8, !noalias !3062
  %i.oy = icmp eq i64 %i.ox, 1
  br i1 %i.oy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167

bb.dt:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %i.oz = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i165, align 8, !range !12, !alias.scope !3066, !noalias !3049, !noundef !8
  %switch.i.i.i1.i.i.i.i.i.i = icmp samesign ult i8 %i.oz, 25
  br i1 %switch.i.i.i1.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.experimental.noalias.scope.decl(metadata !3067)
  call void @llvm.experimental.noalias.scope.decl(metadata !3068)
  %i.pa = load ptr, ptr %i.og, align 8, !alias.scope !3069, !noalias !3049, !nonnull !8, !noundef !8
  %i.pb = atomicrmw sub ptr %i.pa, i64 1 release, align 8, !noalias !3070
  %i.pc = icmp eq i64 %i.pb, 1
  br i1 %i.pc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167

bb.dv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i, %bb.ee, %bb.ed, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, %bb.dp
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.eg, %bb.dv
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.pd, %bb.dv ], [ %i.ru, %bb.eg ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  %i.pe = load ptr, ptr %i.p, align 8, !alias.scope !3073, !noalias !3049, !nonnull !8, !noundef !8
  %i.pf = atomicrmw sub ptr %i.pe, i64 1 release, align 8, !noalias !3074
  %i.pg = icmp eq i64 %i.pf, 1
  br i1 %i.pg, label %bb.dw, label %.thread.i.i.i.i

bb.dw:                                            ; preds = %.body.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
          to label %.thread.i.i.i.i unwind label %bb.ek, !noalias !3075

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167: ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameECshxhuDJfZv4T_6fontbe.exit.sink.split.i.i.i.i.i.i169, %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3049
  %i.ph = load ptr, ptr %i.p, align 8, !noalias !3049, !nonnull !8, !noundef !8 ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3049
  %i.pj = load i64, ptr %i.pi, align 8, !range !19, !alias.scope !3077, !noalias !3078, !noundef !8 ; 3 uses
  %i.pk = icmp ne i64 %i.pj, -9223372036854775807
  call void @llvm.assume(i1 %i.pk)
  %i.pl = xor i64 %i.pj, -9223372036854775808
  %i.pm = icmp slt i64 %i.pj, 0
  %i.pn = select i1 %i.pm, i64 %i.pl, i64 1       ; 2 uses
  switch i64 %i.pn, label %bb.dx [
    i64 0, label %.thread.i.i.i.i.i
    i64 1, label %bb.ea
    i64 2, label %bb.dy
  ]

bb.dx:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  unreachable

bb.dy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  br label %bb.ea

bb.dz:                                            ; preds = %bb.eb, %bb.ea
  %.sroa.78.0.i.i.i.i.i = phi i16 [ %i.qb, %bb.eb ], [ %.sroa.7.0.extract.trunc.i.i.i.i.i, %bb.ea ]
  %.sroa.67.0.i.i.i.i.i = phi i16 [ %i.qa, %bb.eb ], [ %.sroa.6.0.extract.trunc.i.i.i.i.i, %bb.ea ]
  %i.po = phi <2 x i16> [ %i.pz, %bb.eb ], [ %i.pt, %bb.ea ]
  store i16 1, ptr %i.oh, align 2, !alias.scope !3079, !noalias !3080
  store <2 x i16> %i.po, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3079, !noalias !3080
  store i16 %.sroa.67.0.i.i.i.i.i, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !3079, !noalias !3080
  store i16 %.sroa.78.0.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !3079, !noalias !3080
  %i.pp = icmp eq i64 %i.pn, 2
  br i1 %i.pp, label %bb.ed, label %bb.ec

bb.ea:                                            ; preds = %bb.dy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  %.sink.i.i.i.i.i = phi i64 [ 56, %bb.dy ], [ 48, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.sink.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i = load i64, ptr %i.pq, align 8, !alias.scope !3077, !noalias !3078 ; 5 uses
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.6.0.extract.shift.i.i.i.i.i to i16 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 48
  %.sroa.7.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.7.0.extract.shift.i.i.i.i.i to i16 ; 2 uses
  %.sroa.09.0.copyload.i.i.i.i.i = load i16, ptr %i.oh, align 2, !alias.scope !3079, !noalias !3080
  %i.pr = trunc i16 %.sroa.09.0.copyload.i.i.i.i.i to i1
  %i.ps = bitcast i64 %.sroa.5.0.i.i.i.i.i to <4 x i16>
  %i.pt = shufflevector <4 x i16> %i.ps, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  br i1 %i.pr, label %bb.eb, label %bb.dz

bb.eb:                                            ; preds = %bb.ea
  %i.pu = trunc i64 %.sroa.5.0.i.i.i.i.i to i16
  %i.pv = insertelement <2 x i16> poison, i16 %i.pu, i64 0
  %.sroa.54.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.5.0.i.i.i.i.i, 16
  %i.pw = trunc i64 %.sroa.54.0.extract.shift.i.i.i.i.i to i16
  %i.px = insertelement <2 x i16> %i.pv, i16 %i.pw, i64 1
  %.sroa.8.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 2, !alias.scope !3079, !noalias !3080
  %.sroa.712.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.712.0..sroa_idx.i.i.i.i.i, align 4, !alias.scope !3079, !noalias !3080
  %i.py = load <2 x i16>, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3079, !noalias !3080
  %i.pz = call <2 x i16> @llvm.smin.v2i16(<2 x i16> %i.py, <2 x i16> %i.px)
  %i.qa = call i16 @llvm.smax.i16(i16 %.sroa.712.0.copyload.i.i.i.i.i, i16 %.sroa.6.0.extract.trunc.i.i.i.i.i)
  %i.qb = call i16 @llvm.smax.i16(i16 %.sroa.8.0.copyload.i.i.i.i.i, i16 %.sroa.7.0.extract.trunc.i.i.i.i.i)
  br label %bb.dz

.thread.i.i.i.i.i:                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdEBF_.exit.i.i.i.i167
  store <4 x i16> <i16 1, i16 0, i16 0, i16 0>, ptr %i.oj, align 8, !noalias !3081
  store i64 -1, ptr %i.m, align 8, !noalias !3081
  br label %bb.ee

bb.ec:                                            ; preds = %bb.dz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8, !alias.scope !3077, !noalias !3078, !nonnull !8, !noundef !8 ; 5 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.qf = load i64, ptr %i.qe, align 8, !alias.scope !3077, !noalias !3078, !noundef !8 ; 6 uses
  %i.qg = icmp eq i64 %i.qf, 0
  br i1 %i.qg, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.ec
  %xtraiter = and i64 %i.qf, 3                    ; 3 uses
  %i.qh = icmp ult i64 %i.qf, 4
  br i1 %i.qh, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.preheader.new:               ; preds = %.preheader.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.qf, -4
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.qy, %.preheader.i.i.i.i.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %i.qx, %.preheader.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i ]
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.qd, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qj = getelementptr i8, ptr %i.qi, i64 16
  %.val.i.i.i.i.i.i = load i64, ptr %i.qj, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qk = icmp ult i64 %.val.i.i.i.i.i.i, 1537228672809129302
  call void @llvm.assume(i1 %i.qk)
  %i.ql = add i64 %.val.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i
  %i.qm = getelementptr inbounds nuw [24 x i8], ptr %i.qd, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qn = getelementptr i8, ptr %i.qm, i64 40
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.qn, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qo = icmp ult i64 %.val.i.i.i.i.i.i.1, 1537228672809129302
  call void @llvm.assume(i1 %i.qo)
  %i.qp = add i64 %.val.i.i.i.i.i.i.1, %i.ql
  %i.qq = getelementptr inbounds nuw [24 x i8], ptr %i.qd, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qr = getelementptr i8, ptr %i.qq, i64 64
  %.val.i.i.i.i.i.i.2 = load i64, ptr %i.qr, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qs = icmp ult i64 %.val.i.i.i.i.i.i.2, 1537228672809129302
  call void @llvm.assume(i1 %i.qs)
  %i.qt = add i64 %.val.i.i.i.i.i.i.2, %i.qp
  %i.qu = getelementptr inbounds nuw [24 x i8], ptr %i.qd, i64 %.sroa.04.0.i.i.i.i.i.i
  %i.qv = getelementptr i8, ptr %i.qu, i64 88
  %.val.i.i.i.i.i.i.3 = load i64, ptr %i.qv, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.qw = icmp ult i64 %.val.i.i.i.i.i.i.3, 1537228672809129302
  call void @llvm.assume(i1 %i.qw)
  %i.qx = add i64 %.val.i.i.i.i.i.i.3, %i.qt      ; 3 uses
  %i.qy = add nuw i64 %.sroa.04.0.i.i.i.i.i.i, 4  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.qy, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %i.qx, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod562 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod562)
  br label %.preheader.i.i.i.i.i.epil

.preheader.i.i.i.i.i.epil:                        ; preds = %.preheader.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.epil = phi i64 [ %i.rd, %.preheader.i.i.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.epil = phi i64 [ %i.rc, %.preheader.i.i.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.epil.init, %.preheader.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.epil.preheader ]
  %i.qz = getelementptr inbounds nuw [24 x i8], ptr %i.qd, i64 %.sroa.04.0.i.i.i.i.i.i.epil
  %i.ra = getelementptr i8, ptr %i.qz, i64 16
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.ra, align 8, !noalias !3082, !noundef !8 ; 2 uses
  %i.rb = icmp ult i64 %.val.i.i.i.i.i.i.epil, 1537228672809129302
  call void @llvm.assume(i1 %i.rb)
  %i.rc = add i64 %.val.i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.i.i.epil ; 2 uses
  %i.rd = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, label %.preheader.i.i.i.i.i.epil, !llvm.loop !2880

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.epil, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa
  %.lcssa = phi i64 [ %i.qx, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i.unr-lcssa ], [ %i.rc, %.preheader.i.i.i.i.i.epil ]
  %i.re = trunc i64 %.lcssa to i16
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i, %bb.ec
  %.sroa.0.0.i.i.i.i.i.i = phi i16 [ 0, %bb.ec ], [ %i.re, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.rf = icmp ult i64 %i.qf, 384307168202282326
  call void @llvm.assume(i1 %i.rf)
  %i.rg = trunc i64 %i.qf to i16                  ; 2 uses
  %i.rh = load <2 x i16>, ptr %i.oi, align 8, !alias.scope !3079, !noalias !3080
  %i.ri = insertelement <2 x i16> poison, i16 %.sroa.0.0.i.i.i.i.i.i, i64 0
  %i.rj = insertelement <2 x i16> %i.ri, i16 %i.rg, i64 1
  %i.rk = call <2 x i16> @llvm.umax.v2i16(<2 x i16> %i.rh, <2 x i16> %i.rj)
  store <2 x i16> %i.rk, ptr %i.oi, align 8, !alias.scope !3079, !noalias !3080
  %3 = insertelement <4 x i16> <i16 1, i16 poison, i16 poison, i16 0>, i16 %.sroa.0.0.i.i.i.i.i.i, i64 1
  %4 = insertelement <4 x i16> %3, i16 %i.rg, i64 2
  store <4 x i16> %4, ptr %i.oj, align 8, !noalias !3081
  store i64 -1, ptr %i.m, align 8, !noalias !3081
  br label %bb.ee

bb.ed:                                            ; preds = %bb.dz
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.rm = load i64, ptr %i.rl, align 8, !alias.scope !3077, !noalias !3078, !noundef !8 ; 2 uses
  %i.rn = trunc i64 %i.rm to i16
  %i.ro = load i16, ptr %i.ok, align 4, !alias.scope !3079, !noalias !3080, !noundef !8
  %i.rp = call i16 @llvm.umax.i16(i16 %i.ro, i16 %i.rn)
  store i16 %i.rp, ptr %i.ok, align 4, !alias.scope !3079, !noalias !3080
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.rr = load ptr, ptr %i.rq, align 8, !alias.scope !3077, !noalias !3078, !nonnull !8, !noundef !8 ; 2 uses
  %i.rs = getelementptr inbounds nuw [22 x i8], ptr %i.rr, i64 %i.rm
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf9composite9ComponentENCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB4O_10MaxBuilder6updates_0EE9from_iterB4Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.rr, ptr noundef nonnull %i.rs)
          to label %.noexc6.i.i.i.i unwind label %bb.dv, !noalias !3051

.noexc6.i.i.i.i:                                  ; preds = %bb.ed
  store i16 0, ptr %i.oj, align 8, !noalias !3081
  br label %bb.ee

bb.ee:                                            ; preds = %.noexc6.i.i.i.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4glyf6simple7ContourENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1X_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1V_5accumjNtB3F_3Sum3sumINtB2H_3MapBF_B3h_EE0E0ECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i, %.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3081
  invoke void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1E_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q, i16 noundef %.sroa.2.010.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.m)
          to label %.noexc7.i.i.i.i unwind label %bb.dv, !noalias !3075

.noexc7.i.i.i.i:                                  ; preds = %bb.ee
  %i.rt = load i64, ptr %i.l, align 8, !range !3084, !alias.scope !3085, !noalias !3081, !noundef !8
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.rt, -3
  br i1 %switch.i.i.i.i.i.i, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %.noexc7.i.i.i.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i unwind label %bb.eg, !noalias !3086

bb.eg:                                            ; preds = %bb.ef
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.body.i.i.i.i unwind label %bb.eh, !noalias !3086

bb.eh:                                            ; preds = %bb.eg
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3086
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ef
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.ei unwind label %bb.dv, !noalias !3075

bb.ei:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe.exit.i.i.i.i.i.i.i.i, %.noexc7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0392, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !alias.scope !3087, !noalias !3088
  %.sroa.4393.0.copyload = load i64, ptr %.sroa.6357.0..sroa_idx, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %.sroa.5394.0.copyload = load i64, ptr %.sroa.7362.0..sroa_idx, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %i.rw = load <4 x i16>, ptr %i.oi, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  %.sroa.10399.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !3087, !noalias !3088 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  call void @llvm.experimental.noalias.scope.decl(metadata !3090)
  %i.rx = load ptr, ptr %i.p, align 8, !alias.scope !3091, !noalias !3049, !nonnull !8, !noundef !8
  %i.ry = atomicrmw sub ptr %i.rx, i64 1 release, align 8, !noalias !3092
  %i.rz = icmp eq i64 %i.ry, 1
  br i1 %i.rz, label %bb.ej, label %.noexc172

bb.ej:                                            ; preds = %bb.ei
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration5GlyphE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #35
          to label %.noexc172 unwind label %.loopexit

bb.ek:                                            ; preds = %.thread.i.i.i.i, %bb.dw, %bb.dn
  %i.sa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #32, !noalias !3075
  unreachable

.thread.i.i.i.i:                                  ; preds = %bb.dw, %.body.i.i.i.i, %bb.dn, %.thread5.i.i.i.i171
  %.pn4.i.i.i.i166 = phi { ptr, i32 } [ %i.op, %.thread5.i.i.i.i171 ], [ %i.or, %bb.dn ], [ %eh.lpad-body.i.i.i.i, %bb.dw ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1G_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %.body162 unwind label %bb.ek, !noalias !3075

.noexc172:                                        ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3042
  %i.sb = add i16 %.sroa.2.010.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0392, i64 32, i1 false), !noalias !3043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0392)
  %i.sc = icmp eq ptr %i.om, %i.ny
  br i1 %i.sc, label %.loopexit432, label %bb.dj

.loopexit432:                                     ; preds = %.noexc172, %bb.di
  %.sroa.6357.1 = phi i64 [ %i.nz, %bb.di ], [ %.sroa.4393.0.copyload, %.noexc172 ]
  %.sroa.7362.1 = phi i64 [ %i.oa, %bb.di ], [ %.sroa.5394.0.copyload, %.noexc172 ]
  %.sroa.12387.1 = phi i64 [ undef, %bb.di ], [ %.sroa.10399.0.copyload, %.noexc172 ]
  %i.sd = phi <4 x i16> [ zeroinitializer, %bb.di ], [ %i.rw, %.noexc172 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0356, i64 32, i1 false), !noalias !3093
  %.sroa.6357.0..sroa_idx360 = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %.sroa.6357.1, ptr %.sroa.6357.0..sroa_idx360, align 8, !noalias !3093
  %.sroa.7362.0..sroa_idx365 = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %.sroa.7362.1, ptr %.sroa.7362.0..sroa_idx365, align 8, !noalias !3093
  %.sroa.8367.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %.sroa.9372.0..sroa_idx375 = getelementptr inbounds nuw i8, ptr %i.aj, i64 50
  %.sroa.10377.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %.sroa.11382.0..sroa_idx385 = getelementptr inbounds nuw i8, ptr %i.aj, i64 54
  store <4 x i16> %i.sd, ptr %.sroa.8367.0..sroa_idx370, align 8, !noalias !3093
  %.sroa.12387.0..sroa_idx390 = getelementptr inbounds nuw i8, ptr %i.aj, i64 56 ; 2 uses
  store i64 %.sroa.12387.1, ptr %.sroa.12387.0..sroa_idx390, align 8, !noalias !3093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0356)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3094
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterB1E_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.aj)
          to label %.noexc177 unwind label %bb.fb

.noexc177:                                        ; preds = %.loopexit432
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_map9FilterMapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map4IterB11_NtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits9GlyphInfoENCNvMs1_B4j_NtB4j_10MaxBuilder23update_composite_limits0EE9from_iterB4l_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %.noexc178 unwind label %bb.fb

.noexc178:                                        ; preds = %.noexc177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3094
  store i16 0, ptr %i.i, align 8, !noalias !3094
  %i.se = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i16 0, ptr %i.se, align 2, !noalias !3094
  %i.sf = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 0, ptr %i.sf, align 4, !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3094
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 8)
          to label %bb.em unwind label %bb.el

.body.i:                                          ; preds = %bb.et, %bb.eq, %bb.el
  %.pn.i175 = phi { ptr, i32 } [ %lpad.phi.i, %bb.et ], [ %i.sg, %bb.el ], [ %i.sy, %bb.eq ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16EECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #31
          to label %.body179 unwind label %bb.ey

bb.el:                                            ; preds = %bb.er, %bb.en, %.noexc178
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.em:                                            ; preds = %.noexc178
  %i.sh = load i64, ptr %i.d, align 8, !range !11, !noalias !3094, !noundef !8
  %i.si = trunc nuw i64 %i.sh to i1
  %i.sj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.sk = load i64, ptr %i.sj, align 8, !range !30, !noalias !3094, !noundef !8 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.si, label %bb.en, label %bb.eo, !prof !22

bb.en:                                            ; preds = %bb.em
  %i.sm = load i64, ptr %i.sl, align 8, !noalias !3094
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.sk, i64 %i.sm) #34
          to label %bb.ex unwind label %bb.el

bb.eo:                                            ; preds = %bb.em
  %i.sn = load ptr, ptr %i.sl, align 8, !noalias !3094, !nonnull !8, !noundef !8
  %i.so = icmp samesign ugt i64 %i.sk, 7
  call void @llvm.assume(i1 %i.so)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3094
  store i64 %i.sk, ptr %i.h, align 8, !noalias !3094
  %i.sp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.sn, ptr %i.sp, align 8, !noalias !3094
  %i.sq = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.sq, align 8, !noalias !3094
  %i.sr = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !noalias !3094, !noundef !8 ; 3 uses
  %i.st = icmp ult i64 %i.ss, 4611686018427387904
  call void @llvm.assume(i1 %i.st)
  %i.su = icmp eq i64 %i.ss, 0
  br i1 %i.su, label %._crit_edge.i, label %.lr.ph.i176

.lr.ph.i176:                                      ; preds = %bb.eo
  %i.sv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.ep

bb.ep:                                            ; preds = %bb.ew, %.lr.ph.i176
  %i.sx = phi i64 [ %i.ss, %.lr.ph.i176 ], [ %i.ta, %bb.ew ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3094
  store i64 %i.sx, ptr %i.g, align 8, !noalias !3094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3094
  store ptr %i.aj, ptr %i.f, align 8, !noalias !3094
  store ptr %i.h, ptr %i.sv, align 8, !noalias !3094
  store ptr %i.i, ptr %i.sw, align 8, !noalias !3094
  invoke void @_RINvMs_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16E6retainNCNvMs1_NtCshxhuDJfZv4T_6fontbe18metrics_and_limitsNtB1I_10MaxBuilder23update_composite_limitss_0EB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.eu unwind label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.ew, %bb.eo
  %.sroa.0.0.copyload.i = load i48, ptr %i.i, align 8, !noalias !3094 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtBK_3ops4drop4Drop4dropB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.er unwind label %bb.eq

bb.eq:                                            ; preds = %._crit_edge.i
  %i.sy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtBR_3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.es

bb.er:                                            ; preds = %._crit_edge.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEENtNtNtBR_3ops4drop4Drop4dropB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB4_6option6OptionNtNtCshxhuDJfZv4T_6fontbe18metrics_and_limits11GlyphLimitsEEEB1y_.exit.i unwind label %bb.el
end_hunk_1
