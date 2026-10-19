Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontbe-61f120808e41ae7e.fontbe.cc431683d7bf4cd5-cgu.11?download=true
inline.NumInlined: 2934
inline.NumDeleted: 1237
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCscScJTt9VrQp_6fea_rs5parse6source9SourceMapE9drop_slowCshxhuDJfZv4T_6fontbe:bb.a
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE15copy_from_sliceCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCsgCecv3eZDcN_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CshxhuDJfZv4T_6fontbe.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.f = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #43
  br label %_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CshxhuDJfZv4T_6fontbe.exit.i.i

_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CshxhuDJfZv4T_6fontbe.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCshxhuDJfZv4T_6fontbe.exit, !prof !9

bb.d:                                             ; preds = %_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CshxhuDJfZv4T_6fontbe.exit.i.i
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #44
  unreachable

_RNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCshxhuDJfZv4T_6fontbe.exit: ; preds = %_RNCNvMsq_NtCsgCecv3eZDcN_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CshxhuDJfZv4T_6fontbe.exit.i.i
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvNtCshxhuDJfZv4T_6fontbe3os215create_os2_work() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @49 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvNtCshxhuDJfZv4T_6fontbe4cpal16create_cpal_work() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @63 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvNtCshxhuDJfZv4T_6fontbe4font16create_font_work() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @64 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvNtCshxhuDJfZv4T_6fontbe4hvar16create_hvar_work() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @68 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvNtCshxhuDJfZv4T_6fontbe4meta16create_meta_work() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  ret { ptr, ptr } { ptr inttoptr (i64 1 to ptr), ptr @69 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCsgCecv3eZDcN_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCshxhuDJfZv4T_6fontbe3os2NtB2_7Os2WorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1x_9AnyWorkIdNtNtB4_5error5ErrorE11read_access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 4 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %i.l = alloca [56 x i8], align 8                ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  %i.o = alloca [56 x i8], align 8                ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 4 uses
  %i.q = alloca [56 x i8], align 8                ; 4 uses
  %i.r = alloca [56 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 4, ptr %i.h, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 1, ptr %i.g, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 17, ptr %i.f, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 18, ptr %i.e, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 11, ptr %i.d, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 12, ptr %i.c, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @88, i64 32, i1 false)
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtNtCs3v5ql5U6hxj_6fontir13orchestration6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 36, ptr %i.b, align 8
  call void @_RINvMs_NtCsgdm2QMcbaeA_10fontdrasil13orchestrationINtB5_13AccessBuilderNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdE7variantNtB19_6WorkIdEB1b_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXNtCshxhuDJfZv4T_6fontbe3os2NtB2_7Os2WorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1x_9AnyWorkIdNtNtB4_5error5ErrorE2id(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 33, ptr %i.a, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCshxhuDJfZv4T_6fontbe3os2NtB2_7Os2WorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1x_9AnyWorkIdNtNtB4_5error5ErrorE4exec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1952) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 20 uses
  %i.l = alloca [48 x i8], align 8                ; 22 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [64 x i8], align 8                ; 6 uses
  %i.t = alloca [16 x i8], align 16               ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [8 x i8], align 8                 ; 8 uses
  %i.y = alloca [40 x i8], align 8                ; 4 uses
  %i.z = alloca [40 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 7 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 7 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [4 x i8], align 4                ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 5 uses
  %i.aj = alloca [120 x i8], align 4              ; 42 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.6218 = alloca [40 x i8], align 8         ; 4 uses
  %.sroa.6214 = alloca [40 x i8], align 8         ; 4 uses
  %i.al = alloca [120 x i8], align 4              ; 8 uses
  %i.am = alloca [48 x i8], align 8               ; 9 uses
  %i.an = alloca [8 x i8], align 8                ; 7 uses
  %i.ao = alloca [288 x i8], align 8              ; 25 uses
  %i.ap = alloca [8 x i8], align 8                ; 13 uses
  %i.aq = alloca [40 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [40 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.at = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.au = icmp ult i64 %i.at, 3
  br i1 %i.au, label %bb.d, label %bb.c

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit: ; preds = %.body158, %bb.r, %bb.b
  %.sroa.045.0 = phi i8 [ %.sroa.045.1, %bb.b ], [ %.sroa.042.2, %bb.r ], [ %.sroa.042.2, %.body158 ]
  %.sroa.042.0 = phi i8 [ %.sroa.042.1, %bb.b ], [ %.sroa.042.2, %bb.r ], [ %.sroa.042.2, %.body158 ]
  %.pn79 = phi { ptr, i32 } [ %i.ax, %bb.b ], [ %.pn77, %bb.r ], [ %.pn77, %.body158 ] ; 2 uses
  %i.av = trunc nuw i8 %.sroa.042.0 to i1
  %i.aw = load i64, ptr %i.as, align 8, !range !12
  %.not.i.i180 = icmp ne i64 %i.aw, 2
  %or.cond.not = select i1 %i.av, i1 %.not.i.i180, i1 false
  br i1 %or.cond.not, label %bb.iw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit182

bb.b:                                             ; preds = %bb.io, %bb.n, %bb.k, %bb.h, %bb.g, %bb.c
  %.sroa.045.1 = phi i8 [ 0, %bb.g ], [ %.sroa.042.2, %bb.io ], [ %.sroa.042.2, %bb.c ], [ 1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ]
  %.sroa.042.1 = phi i8 [ 0, %bb.g ], [ %.sroa.042.2, %bb.io ], [ %.sroa.042.2, %bb.c ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ]
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit

bb.c:                                             ; preds = %bb.l, %bb.n, %bb.a
  %.sroa.042.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.l ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1872
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = invoke noundef nonnull ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtB4_6WorkIdNtNtNtB6_2ir15static_metadata14StaticMetadataE3getCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ba)
          to label %bb.o unwind label %bb.b       ; 4 uses

bb.d:                                             ; preds = %bb.a
  %i.bc = load atomic i64, ptr @_RNvNtCs6CpVowoi7NE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.bd = icmp ult i64 %i.bc, 3
  br i1 %i.bd, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 2, ptr %i.aq, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr null, ptr %i.be, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.bf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe3os2NtB4_7Os2WorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.bf, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !26

bb.g:                                             ; preds = %bb.f
  %i.bg = invoke noundef i8 @_RNvMNtCs6CpVowoi7NE_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXNtCshxhuDJfZv4T_6fontbe3os2NtB4_7Os2WorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE)
          to label %bb.i unwind label %bb.b       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.010.0 = phi i8 [ %i.bg, %bb.i ], [ %i.bf, %bb.f ], [ %i.bf, %bb.f ]
  %i.bh = load ptr, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe3os2NtB4_7Os2WorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !5, !align !19, !noundef !5
  %i.bi = invoke noundef zeroext i1 @_RNvNtCseSYDGaa5U8h_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bh, i8 noundef %.sroa.010.0)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.bg, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.bi, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr @_RNvNvXNtCshxhuDJfZv4T_6fontbe3os2NtB4_7Os2WorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB6_13orchestration7ContextNtB1z_9AnyWorkIdNtNtB6_5error5ErrorE4exec10___CALLSITE, align 8, !nonnull !5, !align !19, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store i64 1, ptr %i.ar, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 0, ptr %.sroa.552.0..sroa_idx, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.bk, ptr %i.bl, align 8
  invoke void @_RNvMNtCseSYDGaa5U8h_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar)
          to label %bb.m unwind label %bb.b

bb.l:                                             ; preds = %bb.m, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false)
  %i.bm = load i64, ptr %i.as, align 8, !range !12, !noundef !5
  %.not67 = icmp eq i64 %i.bm, 2
  br i1 %.not67, label %bb.c, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn)
          to label %bb.c unwind label %bb.b

bb.o:                                             ; preds = %bb.c
  store ptr %i.bb, ptr %i.ap, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 584
  %i.bp = load i16, ptr %i.bo, align 8, !range !27, !noundef !5
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 586
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i32 1952999287, ptr %i.ag, align 4
  %i.bt = invoke noundef align 8 ptr @_RNvMs4_NtNtCs3v5ql5U6hxj_6fontir2ir15static_metadataNtB5_14StaticMetadata4axis(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(832) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.ag)
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %bb.o
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  %i.bv = load double, ptr %i.bu, align 8, !noundef !5 ; 2 uses
  %i.bw = fcmp olt double %i.bv, 1.000000e+00
  %spec.store.select.i.i.i = select i1 %i.bw, double 1.000000e+00, double %i.bv ; 2 uses
  %i.bx = fcmp ogt double %spec.store.select.i.i.i, 1.000000e+03
  %spec.store.select1.i.i.i = select i1 %i.bx, double 1.000000e+03, double %spec.store.select.i.i.i
  %i.by = fadd double %spec.store.select1.i.i.i, 5.000000e-01
  %i.bz = call double @llvm.floor.f64(double %i.by)
  %i.ca = call noundef i16 @llvm.fptoui.sat.i16.f64(double %i.bz)
  br label %bb.t

bb.q:                                             ; preds = %.noexc
  %i.cb = trunc nuw i16 %i.bp to i1
  %spec.select.i = select i1 %i.cb, i16 %i.br, i16 400
  br label %bb.t

.body158:                                         ; preds = %bb.ik, %bb.il, %bb.y, %bb.z, %bb.s, %.body
  %.pn77 = phi { ptr, i32 } [ %i.vt, %bb.ik ], [ %.pn75, %.body ], [ %i.da, %bb.y ], [ %i.cf, %bb.s ], [ %i.da, %bb.z ], [ %i.vt, %bb.il ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5075)
  call void @llvm.experimental.noalias.scope.decl(metadata !5076)
  %i.cc = load ptr, ptr %i.ap, align 8, !alias.scope !5077, !nonnull !5, !noundef !5
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !5077
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit

bb.r:                                             ; preds = %.body158
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #45
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit unwind label %bb.ii

bb.s:                                             ; preds = %bb.u, %.noexc95, %bb.v, %bb.t, %bb.o, %bb.w
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.t:                                             ; preds = %bb.q, %bb.p
  %.sroa.02.0.i = phi i16 [ %spec.select.i, %bb.q ], [ %i.ca, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.cg = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 588
  %i.ci = load i16, ptr %i.ch, align 4, !range !27, !noundef !5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 590
  %i.ck = load i16, ptr %i.cj, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i32 1752458359, ptr %i.af, align 4
  %i.cm = invoke noundef align 8 ptr @_RNvMs4_NtNtCs3v5ql5U6hxj_6fontir2ir15static_metadataNtB5_14StaticMetadata4axis(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(832) %i.cl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.af)
          to label %.noexc94 unwind label %bb.s   ; 2 uses

.noexc94:                                         ; preds = %bb.t
  %.not.i91 = icmp eq ptr %i.cm, null
  br i1 %.not.i91, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc94
end_hunk_0
begin_hunk_1_@_RNvXNtCshxhuDJfZv4T_6fontbe3os2NtB2_7Os2WorkINtNtCsgdm2QMcbaeA_10fontdrasil13orchestration4WorkNtNtB4_13orchestration7ContextNtB1x_9AnyWorkIdNtNtB4_5error5ErrorE4exec:bb.a
  %i.po = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 5)
          to label %bb.fd unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.dw:                                            ; preds = %bb.dh
  %i.pp = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 6)
          to label %bb.fg unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.dx:                                            ; preds = %bb.dh
  br i1 %i.pa, label %bb.fk, label %.backedge

bb.dy:                                            ; preds = %bb.dh
  br i1 %i.pa, label %.invoke.i.i, label %.backedge

.invoke.i.i:                                      ; preds = %bb.fs, %bb.fq, %bb.fo, %bb.fm, %bb.fl, %bb.fi, %bb.ff, %bb.fc, %bb.fa, %bb.eu, %bb.eq, %bb.el, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dq, %bb.dh
  %i.pq = phi i32 [ 52, %bb.fq ], [ 17, %bb.dz ], [ 18, %bb.ea ], [ 19, %bb.eb ], [ 20, %bb.ec ], [ 21, %bb.ed ], [ 16, %bb.dh ], [ 0, %bb.dq ], [ 58, %bb.el ], [ 49, %bb.eu ], [ 60, %bb.fa ], [ 56, %bb.fc ], [ 53, %bb.ff ], [ 61, %bb.fi ], [ 59, %bb.fl ], [ 8, %bb.dy ], [ 30, %bb.ee ], [ 54, %bb.ef ], [ 63, %bb.fm ], [ 50, %bb.fo ], [ 49, %bb.eq ], [ 55, %bb.fs ]
  %i.pr = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef %i.pq)
          to label %.backedge unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.dz:                                            ; preds = %bb.dh
  br label %.invoke.i.i

bb.ea:                                            ; preds = %bb.dh
  br label %.invoke.i.i

bb.eb:                                            ; preds = %bb.dh
  br label %.invoke.i.i

bb.ec:                                            ; preds = %bb.dh
  br label %.invoke.i.i

bb.ed:                                            ; preds = %bb.dh
  br label %.invoke.i.i

bb.ee:                                            ; preds = %bb.dh
  br i1 %i.pa, label %.invoke.i.i, label %.backedge

bb.ef:                                            ; preds = %bb.dh
  br i1 %brmerge13.demorgan.i.i, label %.invoke.i.i, label %.backedge

bb.eg:                                            ; preds = %bb.dh
  br i1 %i.pa, label %bb.fm, label %.backedge

bb.eh:                                            ; preds = %bb.dh
  br i1 %brmerge13.demorgan.i.i, label %bb.fn, label %.backedge

bb.ei:                                            ; preds = %bb.dh
  br i1 %brmerge13.demorgan.i.i, label %bb.fp, label %.backedge

bb.ej:                                            ; preds = %bb.dh
  br i1 %brmerge13.demorgan.i.i, label %bb.fr, label %.backedge

bb.ek:                                            ; preds = %bb.dr
  %i.ps = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 1)
          to label %bb.el unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.el:                                            ; preds = %bb.ek
  br i1 %i.pb, label %.invoke.i.i, label %.backedge

bb.em:                                            ; preds = %bb.ds
  %i.pt = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @56)
          to label %bb.en unwind label %.loopexit.i.i133, !noalias !5125

bb.en:                                            ; preds = %bb.em
  br i1 %i.pt, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.pu = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @57)
          to label %bb.eq unwind label %.loopexit.i.i133, !noalias !5125

bb.ep:                                            ; preds = %bb.en
  br i1 %i.pb, label %bb.es, label %bb.er

bb.eq:                                            ; preds = %bb.eo
  %brmerge.demorgan.i.i = and i1 %i.pb, %i.pu
  br i1 %brmerge.demorgan.i.i, label %.invoke.i.i, label %.backedge

bb.er:                                            ; preds = %bb.ep
  %i.pv = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @57)
          to label %.backedge unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.es:                                            ; preds = %bb.ep
  %i.pw = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 57)
          to label %bb.et unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.et:                                            ; preds = %bb.es
  %i.px = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @57)
          to label %bb.eu unwind label %.loopexit.i.i133, !noalias !5125

bb.eu:                                            ; preds = %bb.et
  br i1 %i.px, label %.invoke.i.i, label %.backedge

bb.ev:                                            ; preds = %bb.dt
  br i1 %i.pb, label %bb.ew, label %.backedge

bb.ew:                                            ; preds = %bb.ev
  %i.py = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @58)
          to label %bb.ex unwind label %.loopexit.i.i133, !noalias !5125

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.py, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ez, %bb.ex
  %i.pz = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @59)
          to label %bb.fa unwind label %.loopexit.i.i133, !noalias !5125

bb.ez:                                            ; preds = %bb.ex
  %i.qa = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 48)
          to label %bb.ey unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.fa:                                            ; preds = %bb.ey
  br i1 %i.pz, label %.invoke.i.i, label %.backedge

bb.fb:                                            ; preds = %bb.du
  %i.qb = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 4)
          to label %bb.fc unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.pb, label %.invoke.i.i, label %.backedge

bb.fd:                                            ; preds = %bb.dv
  br i1 %i.pb, label %bb.fe, label %.backedge

bb.fe:                                            ; preds = %bb.fd
  %i.qc = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @59)
          to label %bb.ff unwind label %.loopexit.i.i133, !noalias !5125

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.qc, label %.invoke.i.i, label %.backedge

bb.fg:                                            ; preds = %bb.dw
  %i.qd = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @59)
          to label %bb.fh unwind label %.loopexit.i.i133, !noalias !5125

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.qd, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fj, %bb.fh
  br i1 %i.pb, label %.invoke.i.i, label %.backedge

bb.fj:                                            ; preds = %bb.fh
  %i.qe = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 51)
          to label %bb.fi unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.fk:                                            ; preds = %bb.dx
  %i.qf = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 7)
          to label %bb.fl unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.fl:                                            ; preds = %bb.fk
  br i1 %i.pb, label %.invoke.i.i, label %.backedge

bb.fm:                                            ; preds = %bb.eg
  %i.qg = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 62)
          to label %.invoke.i.i unwind label %.loopexit.i.i133, !noalias !5125 ; 0 uses

bb.fn:                                            ; preds = %bb.eh
  %i.qh = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @59)
          to label %bb.fo unwind label %.loopexit.i.i133, !noalias !5125

bb.fo:                                            ; preds = %bb.fn
  br i1 %i.qh, label %.invoke.i.i, label %.backedge

bb.fp:                                            ; preds = %bb.ei
  %i.qi = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @59)
          to label %bb.fq unwind label %.loopexit.i.i133, !noalias !5125

bb.fq:                                            ; preds = %bb.fp
  br i1 %i.qi, label %.invoke.i.i, label %.backedge

bb.fr:                                            ; preds = %bb.ej
  %i.qj = invoke noundef zeroext i1 @_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapcuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE12contains_keycECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @59)
          to label %bb.fs unwind label %.loopexit.i.i133, !noalias !5125

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.qj, label %.invoke.i.i, label %.backedge

.backedge:                                        ; preds = %bb.fs, %bb.fq, %bb.fo, %bb.fl, %bb.fi, %bb.ff, %bb.fd, %bb.fc, %bb.fa, %bb.ev, %bb.eu, %bb.er, %bb.eq, %bb.el, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %.invoke.i.i, %bb.dy, %bb.dx, %bb.du, %bb.dr, %bb.dq, %bb.dh
  br label %bb.df

bb.ft:                                            ; preds = %.thread40.i.i, %.loopexit.split-lp.i.i131
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41, !noalias !5125
  unreachable

.thread40.i.i:                                    ; preds = %.loopexit.split-lp.i.i131, %bb.cx, %.thread43.i.i
  %.pn39.i.i = phi { ptr, i32 } [ %i.ov, %bb.cx ], [ %lpad.thr_comm.i.i, %.thread43.i.i ], [ %lpad.phi.i.i132, %.loopexit.split-lp.i.i131 ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %.body109 unwind label %bb.ft, !noalias !5125

_RNvNtCshxhuDJfZv4T_6fontbe3os219codepage_range_bits.exit.i: ; preds = %bb.dp, %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !5132
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTcuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %.noexc138 unwind label %bb.bo

.noexc138:                                        ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe3os219codepage_range_bits.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5124
  br label %bb.fu

bb.fu:                                            ; preds = %.noexc138, %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5132
  invoke void @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12IntoIterator9into_iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
          to label %.noexc139 unwind label %bb.bo

.noexc139:                                        ; preds = %bb.fu, %bb.ga
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0..i, %bb.ga ], [ 0, %bb.fu ] ; 6 uses
  %.sroa.6.0.i = phi i32 [ %..sroa.6.0.i, %bb.ga ], [ 0, %bb.fu ] ; 6 uses
  %i.ql = invoke { i32, i32 } @_RNvXsE_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTmuEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %bb.fw unwind label %.loopexit.i123, !noalias !5133 ; 2 uses

.loopexit.i123:                                   ; preds = %.noexc139
  %lpad.loopexit.i124 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

.loopexit.split-lp.i128:                          ; preds = %bb.gb
  %lpad.loopexit.split-lp.i129 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

bb.fv:                                            ; preds = %.loopexit.split-lp.i128, %.loopexit.i123
  %lpad.phi.i125 = phi { ptr, i32 } [ %lpad.loopexit.i124, %.loopexit.i123 ], [ %lpad.loopexit.split-lp.i129, %.loopexit.split-lp.i128 ]
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %.body109 unwind label %bb.gc, !noalias !5133

bb.fw:                                            ; preds = %.noexc139
  %i.qm = extractvalue { i32, i32 } %i.ql, 0
  %i.qn = trunc i32 %i.qm to i1
  br i1 %i.qn, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.n)
          to label %bb.gd unwind label %bb.bo

bb.fy:                                            ; preds = %bb.fw
  %i.qo = extractvalue { i32, i32 } %i.ql, 1      ; 3 uses
  %i.qp = lshr i32 %i.qo, 5                       ; 2 uses
  %i.qq = icmp ult i32 %i.qo, 64
  br i1 %i.qq, label %bb.ga, label %bb.gb

bb.fz:                                            ; preds = %bb.gb
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %i.qr = and i32 %i.qo, 31
  %i.qs = shl nuw i32 1, %i.qr
  %.sroa.idx.i = icmp eq i32 %i.qp, 1             ; 3 uses
  %.sroa.speculated.i = select i1 %.sroa.idx.i, i32 %.sroa.6.0.i, i32 %.sroa.0.0.i
  %i.qt = or i32 %.sroa.speculated.i, %i.qs       ; 2 uses
  %.sroa.0.0..i = select i1 %.sroa.idx.i, i32 %.sroa.0.0.i, i32 %i.qt
  %..sroa.6.0.i = select i1 %.sroa.idx.i, i32 %i.qt, i32 %.sroa.6.0.i
  br label %.noexc139

bb.gb:                                            ; preds = %bb.fy
  %3 = zext nneg i32 %i.qp to i64
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #44
          to label %bb.fz unwind label %.loopexit.split-lp.i128, !noalias !5133

bb.gc:                                            ; preds = %bb.fv
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41, !noalias !5133
  unreachable

bb.gd:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE4iterCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am)
          to label %.noexc141 unwind label %bb.bo

.noexc141:                                        ; preds = %bb.gd
  %i.qv = invoke { i32, i32 } @_RINvXsU_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_4KeysmuENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4foldTmmENCNvNtCshxhuDJfZv4T_6fontbe3os224apply_min_max_char_index0EB1Y_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.c, i32 noundef 65535, i32 noundef 0)
          to label %bb.ge unwind label %bb.bo     ; 2 uses

bb.ge:                                            ; preds = %.noexc141
  %i.qw = extractvalue { i32, i32 } %i.qv, 0
  %i.qx = extractvalue { i32, i32 } %i.qv, 1
  %i.qy = call i32 @llvm.umin.i32(i32 %i.qw, i32 65535)
  %i.qz = trunc nuw i32 %i.qy to i16
  %i.ra = call i32 @llvm.umin.i32(i32 %i.qx, i32 65535)
  %i.rb = trunc nuw i32 %i.ra to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5134
  %i.rc = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.rd = invoke noundef ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub4GsubE7try_getB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.rc)
          to label %.noexc145 unwind label %bb.bo ; 5 uses

.noexc145:                                        ; preds = %bb.ge
  store ptr %i.rd, ptr %i.b, align 8, !noalias !5134
  %.not.i143 = icmp eq ptr %i.rd, null            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5134
  %i.re = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.rf = invoke noundef ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposE7try_getB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.re)
          to label %bb.gi unwind label %bb.gh, !noalias !5135 ; 5 uses

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit.i: ; preds = %bb.gl, %bb.gk, %bb.gj, %bb.gh
  %.pn.i144 = phi { ptr, i32 } [ %i.ri, %bb.gh ], [ %i.rm, %bb.gl ], [ %i.rm, %bb.gj ], [ %i.rm, %bb.gk ] ; 3 uses
  br i1 %.not.i143, label %.body109, label %bb.gf

bb.gf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit.i
  %i.rg = atomicrmw sub ptr %i.rd, i64 1 release, align 8, !noalias !5136
  %i.rh = icmp eq i64 %i.rg, 1
  br i1 %i.rh, label %bb.gg, label %.body109

bb.gg:                                            ; preds = %bb.gf
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub4GsubE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #45
          to label %.body109 unwind label %bb.gr, !noalias !5135

bb.gh:                                            ; preds = %bb.go, %.noexc145
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit.i

bb.gi:                                            ; preds = %.noexc145
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %.sroa.0.0.i.a = select i1 %.not.i143, ptr null, ptr %i.rj
  store ptr %i.rf, ptr %i.a, align 8, !noalias !5134
  %.not3.i = icmp eq ptr %i.rf, null              ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %.sroa.01.0.i = select i1 %.not3.i, ptr null, ptr %i.rk
  %i.rl = invoke noundef i16 @_RNvNtNtCshxhuDJfZv4T_6fontbe3os211max_context25compute_max_context_value(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.01.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.0.0.i.a)
          to label %bb.gm unwind label %bb.gj, !noalias !5135

bb.gj:                                            ; preds = %bb.gi
  %i.rm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not3.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit.i, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.rn = atomicrmw sub ptr %i.rf, i64 1 release, align 8, !noalias !5137
  %i.ro = icmp eq i64 %i.rn, 1
  br i1 %i.ro, label %bb.gl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit.i

bb.gl:                                            ; preds = %bb.gk
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit.i unwind label %bb.gr, !noalias !5135

bb.gm:                                            ; preds = %bb.gi
  br i1 %.not3.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit7.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.rp = atomicrmw sub ptr %i.rf, i64 1 release, align 8, !noalias !5138
  %i.rq = icmp eq i64 %i.rp, 1
  br i1 %i.rq, label %bb.go, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit7.i

bb.go:                                            ; preds = %bb.gn
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a) #45
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit7.i unwind label %bb.gh, !noalias !5135

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit7.i: ; preds = %bb.go, %bb.gn, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5134
  br i1 %.not.i143, label %bb.gs, label %bb.gp

bb.gp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit7.i
  %i.rr = atomicrmw sub ptr %i.rd, i64 1 release, align 8, !noalias !5139
  %i.rs = icmp eq i64 %i.rr, 1
  br i1 %i.rs, label %bb.gq, label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub4GsubE9drop_slowCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #45
          to label %bb.gs unwind label %bb.bo

bb.gr:                                            ; preds = %bb.gl, %bb.gg
  %i.rt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41, !noalias !5135
  unreachable

bb.gs:                                            ; preds = %bb.gp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos4GposEEECshxhuDJfZv4T_6fontbe.exit7.i, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5134
  %i.ru = getelementptr inbounds nuw i8, ptr %2, i64 1680
  %i.rv = invoke noundef ptr @_RNvMs_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB4_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtB11_14ExtraFeaTablesE7try_getB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ru)
          to label %bb.gt unwind label %bb.bo     ; 43 uses

bb.gt:                                            ; preds = %bb.gs
  %.not71 = icmp eq ptr %i.rv, null
  %i.rw = insertelement <2 x i16> <i16 1, i16 poison>, i16 %i.iz, i64 1 ; 4 uses
  %i.rx = insertelement <2 x i16> <i16 1, i16 poison>, i16 %i.iw, i64 1 ; 4 uses
  br i1 %.not71, label %bb.ih, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr %i.rv, ptr %i.ak, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 208
  %i.rz = load i32, ptr %i.ry, align 4, !range !5140, !noundef !5 ; 2 uses
  %.not72 = icmp eq i32 %i.rz, 2
  br i1 %.not72, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rv, i64 376
  %i.sb = load i32, ptr %i.sa, align 4, !range !5140, !noundef !5 ; 2 uses
  %.not73 = icmp eq i32 %i.sb, 2
  br i1 %.not73, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.sc = atomicrmw sub ptr %i.rv, i64 1 release, align 8, !noalias !5141
  %i.sd = icmp eq i64 %i.sc, 1
  br i1 %i.sd, label %bb.gx, label %.sink.split

bb.gx:                                            ; preds = %bb.gw
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ak) #45
          to label %.sink.split unwind label %bb.bo

bb.gy:                                            ; preds = %bb.gv
  call void @llvm.experimental.noalias.scope.decl(metadata !5142)
  call void @llvm.experimental.noalias.scope.decl(metadata !5143)
  call void @llvm.experimental.noalias.scope.decl(metadata !5144)
  %i.se = getelementptr inbounds nuw i8, ptr %i.rv, i64 408
  %i.sf = load i16, ptr %i.se, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not.i150 = icmp eq i16 %i.sf, 0
  br i1 %.not.i150, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.ha, %bb.gy
  %.sroa.59.1 = phi i16 [ %.sroa.02.0.i, %bb.gy ], [ %i.sj, %bb.ha ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rv, i64 412
  %i.sh = load i16, ptr %i.sg, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not2.i = icmp eq i16 %i.sh, 0
  br i1 %.not2.i, label %bb.hb, label %bb.hc

bb.ha:                                            ; preds = %bb.gy
  %i.si = getelementptr inbounds nuw i8, ptr %i.rv, i64 274
  %i.sj = load i16, ptr %i.si, align 2, !alias.scope !5143, !noundef !5
  br label %bb.gz

bb.hb:                                            ; preds = %bb.hc, %bb.gz
  %.sroa.61.1 = phi i16 [ %.sroa.02.0.i92, %bb.gz ], [ %i.sn, %bb.hc ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rv, i64 416
  %i.sl = load i16, ptr %i.sk, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not3.i151 = icmp eq i16 %i.sl, 0
  br i1 %.not3.i151, label %bb.hd, label %bb.he

bb.hc:                                            ; preds = %bb.gz
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rv, i64 276
  %i.sn = load i16, ptr %i.sm, align 4, !alias.scope !5143, !noundef !5
  br label %bb.hb

bb.hd:                                            ; preds = %bb.he, %bb.hb
  %.sroa.63.1 = phi i16 [ %.sroa.020.0, %bb.hb ], [ %i.sr, %bb.he ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.rv, i64 420
  %i.sp = load i16, ptr %i.so, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not4.i = icmp eq i16 %i.sp, 0
  br i1 %.not4.i, label %bb.hf, label %bb.hg

bb.he:                                            ; preds = %bb.hb
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rv, i64 278
  %i.sr = load i16, ptr %i.sq, align 2, !alias.scope !5143, !noundef !5
  br label %bb.hd

bb.hf:                                            ; preds = %bb.hg, %bb.hd
  %.sroa.85.1 = phi i16 [ %.sroa.035.0, %bb.hd ], [ %i.sw, %bb.hg ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rv, i64 471
  %i.st = load i8, ptr %i.ss, align 1, !range !8, !alias.scope !5144, !noundef !5
  %i.su = trunc nuw i8 %i.st to i1
  br i1 %i.su, label %bb.hi, label %bb.hh

bb.hg:                                            ; preds = %bb.hd
  %i.sv = getelementptr inbounds nuw i8, ptr %i.rv, i64 300
  %i.sw = load i16, ptr %i.sv, align 4, !alias.scope !5143, !noundef !5
  br label %bb.hf

bb.hh:                                            ; preds = %bb.hi, %bb.hf
  %.sroa.56.1 = phi i32 [ %.sroa.0.0.copyload.i, %bb.hi ], [ %.sroa.024.0.copyload, %bb.hf ] ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rv, i64 440
  %i.sy = load i16, ptr %i.sx, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not5.i = icmp eq i16 %i.sy, 0
  br i1 %.not5.i, label %bb.hj, label %bb.hk

bb.hi:                                            ; preds = %bb.hf
  %i.sz = getelementptr inbounds nuw i8, ptr %i.rv, i64 268
  %.sroa.0.0.copyload.i = load i32, ptr %i.sz, align 4, !alias.scope !5143
  br label %bb.hh

bb.hj:                                            ; preds = %bb.hk, %bb.hh
  %.sroa.104.1 = phi i16 [ %i.lc, %bb.hh ], [ %i.td, %bb.hk ] ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rv, i64 444
  %i.tb = load i16, ptr %i.ta, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not6.i = icmp eq i16 %i.tb, 0
  br i1 %.not6.i, label %bb.hl, label %bb.hm

bb.hk:                                            ; preds = %bb.hh
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rv, i64 318
  %i.td = load i16, ptr %i.tc, align 2, !alias.scope !5143, !noundef !5
  br label %bb.hj

bb.hl:                                            ; preds = %bb.hm, %bb.hj
  %.sroa.107.1 = phi i16 [ %i.lh, %bb.hj ], [ %i.th, %bb.hm ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.rv, i64 448
  %i.tf = load i16, ptr %i.te, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not7.i = icmp eq i16 %i.tf, 0
  br i1 %.not7.i, label %bb.hn, label %bb.ho

bb.hm:                                            ; preds = %bb.hj
  %i.tg = getelementptr inbounds nuw i8, ptr %i.rv, i64 320
  %i.th = load i16, ptr %i.tg, align 4, !alias.scope !5143, !noundef !5
  br label %bb.hl

bb.hn:                                            ; preds = %bb.ho, %bb.hl
  %.sroa.110.1 = phi i16 [ %i.lm, %bb.hl ], [ %i.tl, %bb.ho ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.rv, i64 424
  %i.tj = load i16, ptr %i.ti, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not8.i = icmp eq i16 %i.tj, 0
  br i1 %.not8.i, label %bb.hp, label %bb.hq

bb.ho:                                            ; preds = %bb.hl
  %i.tk = getelementptr inbounds nuw i8, ptr %i.rv, i64 322
  %i.tl = load i16, ptr %i.tk, align 2, !alias.scope !5143, !noundef !5
  br label %bb.hn

bb.hp:                                            ; preds = %bb.hq, %bb.hn
  %.sroa.113.1 = phi i16 [ %i.lr, %bb.hn ], [ %i.tp, %bb.hq ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rv, i64 428
  %i.tn = load i16, ptr %i.tm, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not9.i = icmp eq i16 %i.tn, 0
  br i1 %.not9.i, label %bb.hr, label %bb.hs

bb.hq:                                            ; preds = %bb.hn
  %i.to = getelementptr inbounds nuw i8, ptr %i.rv, i64 324
  %i.tp = load i16, ptr %i.to, align 4, !alias.scope !5143, !noundef !5
  br label %bb.hp

bb.hr:                                            ; preds = %bb.hs, %bb.hp
  %.sroa.116.1 = phi i16 [ %i.lw, %bb.hp ], [ %i.tt, %bb.hs ] ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.rv, i64 432
  %i.tr = load i16, ptr %i.tq, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not10.i = icmp eq i16 %i.tr, 0
  br i1 %.not10.i, label %bb.ht, label %bb.hu

bb.hs:                                            ; preds = %bb.hp
  %i.ts = getelementptr inbounds nuw i8, ptr %i.rv, i64 326
  %i.tt = load i16, ptr %i.ts, align 2, !alias.scope !5143, !noundef !5
  br label %bb.hr

bb.ht:                                            ; preds = %bb.hu, %bb.hr
  %i.tu = phi <2 x i16> [ %i.rw, %bb.hr ], [ %i.ty, %bb.hu ] ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.rv, i64 436
  %i.tw = load i16, ptr %i.tv, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not11.i = icmp eq i16 %i.tw, 0
  br i1 %.not11.i, label %bb.hv, label %bb.hw

bb.hu:                                            ; preds = %bb.hr
  %i.tx = getelementptr inbounds nuw i8, ptr %i.rv, i64 224
  %i.ty = load <2 x i16>, ptr %i.tx, align 4, !alias.scope !5143
  br label %bb.ht

bb.hv:                                            ; preds = %bb.hw, %bb.ht
  %i.tz = phi <2 x i16> [ %i.rx, %bb.ht ], [ %i.ud, %bb.hw ] ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.rv, i64 452
  %i.ub = load i16, ptr %i.ua, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not12.i = icmp eq i16 %i.ub, 0
  br i1 %.not12.i, label %bb.hx, label %bb.hy

bb.hw:                                            ; preds = %bb.ht
  %i.uc = getelementptr inbounds nuw i8, ptr %i.rv, i64 228
  %i.ud = load <2 x i16>, ptr %i.uc, align 4, !alias.scope !5143
  br label %bb.hv

bb.hx:                                            ; preds = %bb.hy, %bb.hv
  %i.ue = phi <2 x i16> [ %i.id, %bb.hv ], [ %i.ui, %bb.hy ] ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.rv, i64 456
  %i.ug = load i16, ptr %i.uf, align 4, !range !27, !alias.scope !5144, !noundef !5
  %.not13.i = icmp eq i16 %i.ug, 0
  br i1 %.not13.i, label %bb.hz, label %bb.ia

bb.hy:                                            ; preds = %bb.hv
  %i.uh = getelementptr inbounds nuw i8, ptr %i.rv, i64 244
  %i.ui = load <2 x i16>, ptr %i.uh, align 4, !alias.scope !5143
  br label %bb.hx

bb.hz:                                            ; preds = %bb.ia, %bb.hx
  %i.uj = phi <2 x i16> [ %i.if, %bb.hx ], [ %i.uo, %bb.ia ] ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.rv, i64 460
  %i.ul = load i8, ptr %i.uk, align 4, !range !8, !alias.scope !5144, !noundef !5
  %i.um = trunc nuw i8 %i.ul to i1
  br i1 %i.um, label %bb.ic, label %bb.ib

bb.ia:                                            ; preds = %bb.hx
  %i.un = getelementptr inbounds nuw i8, ptr %i.rv, i64 248
  %i.uo = load <2 x i16>, ptr %i.un, align 4, !alias.scope !5143
  br label %bb.hz

bb.ib:                                            ; preds = %bb.ic, %bb.hz
  %.sroa.98.2 = phi i8 [ %.sroa.98.94.copyload208, %bb.ic ], [ %.sroa.98.1, %bb.hz ] ; 2 uses
  %.sroa.97.2 = phi i8 [ %.sroa.97.94.copyload206, %bb.ic ], [ %.sroa.97.1, %bb.hz ] ; 2 uses
  %i.up = phi <8 x i8> [ %i.ur, %bb.ic ], [ %i.iq, %bb.hz ] ; 2 uses
  %.not14.i = icmp eq i32 %i.sb, 0
  br i1 %.not14.i, label %bb.id, label %bb.ie

bb.ic:                                            ; preds = %bb.hz
  %i.uq = getelementptr inbounds nuw i8, ptr %i.rv, i64 302
  %i.ur = load <8 x i8>, ptr %i.uq, align 2, !alias.scope !5145
  %.sroa.97.94..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.rv, i64 310
  %.sroa.97.94.copyload206 = load i8, ptr %.sroa.97.94..sroa_idx205, align 2, !alias.scope !5145
  %.sroa.98.94..sroa_idx207 = getelementptr inbounds nuw i8, ptr %i.rv, i64 311
  %.sroa.98.94.copyload208 = load i8, ptr %.sroa.98.94..sroa_idx207, align 1, !alias.scope !5145
  br label %bb.ib

bb.id:                                            ; preds = %bb.ie, %bb.ib
  %i.us = phi <4 x i32> [ %i.ol, %bb.ib ], [ %i.uw, %bb.ie ] ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.rv, i64 396
  %i.uu = load i32, ptr %i.ut, align 4, !range !5146, !alias.scope !5144, !noundef !5
  %.not15.i = icmp eq i32 %i.uu, 0
  br i1 %.not15.i, label %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit, label %bb.if

bb.ie:                                            ; preds = %bb.ib
  %i.uv = getelementptr inbounds nuw i8, ptr %i.rv, i64 252
  %i.uw = load <4 x i32>, ptr %i.uv, align 4, !alias.scope !5143
  br label %bb.id

bb.if:                                            ; preds = %bb.id
  %i.ux = getelementptr inbounds nuw i8, ptr %i.rv, i64 212
  %i.uy = load i32, ptr %i.ux, align 4, !alias.scope !5143
  %i.uz = getelementptr inbounds nuw i8, ptr %i.rv, i64 216
  %i.va = load i32, ptr %i.uz, align 4, !range !5146, !alias.scope !5143, !noundef !5
  %i.vb = getelementptr inbounds nuw i8, ptr %i.rv, i64 220
  %i.vc = load i32, ptr %i.vb, align 4, !alias.scope !5143
  br label %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit

_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit: ; preds = %bb.if, %bb.id
  %.sroa.13.1 = phi i32 [ %.sroa.6.0.i, %bb.id ], [ %i.vc, %bb.if ] ; 2 uses
  %.sroa.10.1 = phi i32 [ 1, %bb.id ], [ %i.va, %bb.if ] ; 2 uses
  %.sroa.7.1 = phi i32 [ %.sroa.0.0.i, %bb.id ], [ %i.uy, %bb.if ] ; 2 uses
  %.sroa.0189.1 = phi i32 [ 1, %bb.id ], [ %i.rz, %bb.if ] ; 2 uses
  %i.vd = atomicrmw sub ptr %i.rv, i64 1 release, align 8, !noalias !5147
  %i.ve = icmp eq i64 %i.vd, 1
  br i1 %i.ve, label %bb.ig, label %.sink.split

bb.ig:                                            ; preds = %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCshxhuDJfZv4T_6fontbe13orchestration14ExtraFeaTablesE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ak) #45
          to label %.sink.split unwind label %bb.bo

.sink.split:                                      ; preds = %bb.ig, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit, %bb.gx, %bb.gw
  %.sroa.116.0.ph = phi i16 [ %i.lw, %bb.gx ], [ %i.lw, %bb.gw ], [ %.sroa.116.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.116.1, %bb.ig ]
  %.sroa.113.0.ph = phi i16 [ %i.lr, %bb.gx ], [ %i.lr, %bb.gw ], [ %.sroa.113.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.113.1, %bb.ig ]
  %.sroa.110.0.ph = phi i16 [ %i.lm, %bb.gx ], [ %i.lm, %bb.gw ], [ %.sroa.110.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.110.1, %bb.ig ]
  %.sroa.107.0.ph = phi i16 [ %i.lh, %bb.gx ], [ %i.lh, %bb.gw ], [ %.sroa.107.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.107.1, %bb.ig ]
  %.sroa.104.0.ph = phi i16 [ %i.lc, %bb.gx ], [ %i.lc, %bb.gw ], [ %.sroa.104.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.104.1, %bb.ig ]
  %.sroa.98.0.ph = phi i8 [ %.sroa.98.1, %bb.gx ], [ %.sroa.98.1, %bb.gw ], [ %.sroa.98.2, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.98.2, %bb.ig ]
  %.sroa.97.0.ph = phi i8 [ %.sroa.97.1, %bb.gx ], [ %.sroa.97.1, %bb.gw ], [ %.sroa.97.2, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.97.2, %bb.ig ]
  %.sroa.85.0.ph = phi i16 [ %.sroa.035.0, %bb.gx ], [ %.sroa.035.0, %bb.gw ], [ %.sroa.85.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.85.1, %bb.ig ]
  %.sroa.63.0.ph = phi i16 [ %.sroa.020.0, %bb.gx ], [ %.sroa.020.0, %bb.gw ], [ %.sroa.63.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.63.1, %bb.ig ]
  %.sroa.61.0.ph = phi i16 [ %.sroa.02.0.i92, %bb.gx ], [ %.sroa.02.0.i92, %bb.gw ], [ %.sroa.61.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.61.1, %bb.ig ]
  %.sroa.59.0.ph = phi i16 [ %.sroa.02.0.i, %bb.gx ], [ %.sroa.02.0.i, %bb.gw ], [ %.sroa.59.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.59.1, %bb.ig ]
  %.sroa.56.0.ph = phi i32 [ %.sroa.024.0.copyload, %bb.gx ], [ %.sroa.024.0.copyload, %bb.gw ], [ %.sroa.56.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.56.1, %bb.ig ]
  %.sroa.13.0.ph = phi i32 [ %.sroa.6.0.i, %bb.gx ], [ %.sroa.6.0.i, %bb.gw ], [ %.sroa.13.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.13.1, %bb.ig ]
  %.sroa.10.0.ph = phi i32 [ 1, %bb.gx ], [ 1, %bb.gw ], [ %.sroa.10.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.10.1, %bb.ig ]
  %.sroa.7.0.ph = phi i32 [ %.sroa.0.0.i, %bb.gx ], [ %.sroa.0.0.i, %bb.gw ], [ %.sroa.7.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.7.1, %bb.ig ]
  %.sroa.0189.0.ph = phi i32 [ 1, %bb.gx ], [ 1, %bb.gw ], [ %.sroa.0189.1, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %.sroa.0189.1, %bb.ig ]
  %i.vf = phi <8 x i8> [ %i.iq, %bb.gx ], [ %i.iq, %bb.gw ], [ %i.up, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %i.up, %bb.ig ]
  %i.vg = phi <2 x i16> [ %i.rw, %bb.gx ], [ %i.rw, %bb.gw ], [ %i.tu, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %i.tu, %bb.ig ]
  %i.vh = phi <2 x i16> [ %i.rx, %bb.gx ], [ %i.rx, %bb.gw ], [ %i.tz, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %i.tz, %bb.ig ]
  %i.vi = phi <2 x i16> [ %i.id, %bb.gx ], [ %i.id, %bb.gw ], [ %i.ue, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %i.ue, %bb.ig ]
  %i.vj = phi <2 x i16> [ %i.if, %bb.gx ], [ %i.if, %bb.gw ], [ %i.uj, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %i.uj, %bb.ig ]
  %i.vk = phi <4 x i32> [ %i.ol, %bb.gx ], [ %i.ol, %bb.gw ], [ %i.us, %_RNvNtCshxhuDJfZv4T_6fontbe3os213merge_fea_os2.exit ], [ %i.us, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.ih

bb.ih:                                            ; preds = %.sink.split, %bb.gt
  %.sroa.116.0 = phi i16 [ %i.lw, %bb.gt ], [ %.sroa.116.0.ph, %.sink.split ]
  %.sroa.113.0 = phi i16 [ %i.lr, %bb.gt ], [ %.sroa.113.0.ph, %.sink.split ]
  %.sroa.110.0 = phi i16 [ %i.lm, %bb.gt ], [ %.sroa.110.0.ph, %.sink.split ]
  %.sroa.107.0 = phi i16 [ %i.lh, %bb.gt ], [ %.sroa.107.0.ph, %.sink.split ]
  %.sroa.104.0 = phi i16 [ %i.lc, %bb.gt ], [ %.sroa.104.0.ph, %.sink.split ]
  %.sroa.98.0 = phi i8 [ %.sroa.98.1, %bb.gt ], [ %.sroa.98.0.ph, %.sink.split ]
  %.sroa.97.0 = phi i8 [ %.sroa.97.1, %bb.gt ], [ %.sroa.97.0.ph, %.sink.split ]
  %.sroa.85.0 = phi i16 [ %.sroa.035.0, %bb.gt ], [ %.sroa.85.0.ph, %.sink.split ]
  %.sroa.63.0 = phi i16 [ %.sroa.020.0, %bb.gt ], [ %.sroa.63.0.ph, %.sink.split ]
  %.sroa.61.0 = phi i16 [ %.sroa.02.0.i92, %bb.gt ], [ %.sroa.61.0.ph, %.sink.split ]
  %.sroa.59.0 = phi i16 [ %.sroa.02.0.i, %bb.gt ], [ %.sroa.59.0.ph, %.sink.split ]
  %.sroa.56.0 = phi i32 [ %.sroa.024.0.copyload, %bb.gt ], [ %.sroa.56.0.ph, %.sink.split ]
  %.sroa.13.0 = phi i32 [ %.sroa.6.0.i, %bb.gt ], [ %.sroa.13.0.ph, %.sink.split ]
  %.sroa.10.0 = phi i32 [ 1, %bb.gt ], [ %.sroa.10.0.ph, %.sink.split ]
  %.sroa.7.0 = phi i32 [ %.sroa.0.0.i, %bb.gt ], [ %.sroa.7.0.ph, %.sink.split ]
  %.sroa.0189.0 = phi i32 [ 1, %bb.gt ], [ %.sroa.0189.0.ph, %.sink.split ]
  %i.vl = phi <8 x i8> [ %i.iq, %bb.gt ], [ %i.vf, %.sink.split ]
  %i.vm = phi <2 x i16> [ %i.rw, %bb.gt ], [ %i.vg, %.sink.split ]
  %i.vn = phi <2 x i16> [ %i.rx, %bb.gt ], [ %i.vh, %.sink.split ]
  %i.vo = phi <2 x i16> [ %i.id, %bb.gt ], [ %i.vi, %.sink.split ]
  %i.vp = phi <2 x i16> [ %i.if, %bb.gt ], [ %i.vj, %.sink.split ]
  %i.vq = phi <4 x i32> [ %i.ol, %bb.gt ], [ %i.vk, %.sink.split ]
  %i.vr = getelementptr inbounds nuw i8, ptr %2, i64 952
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i32 %.sroa.0189.0, ptr %i.aj, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x i16> %i.vm, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  store <2 x i16> %i.vn, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store <4 x i16> <i16 1, i16 0, i16 1, i16 32>, ptr %.sroa.28.0..sroa_idx, align 4
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i16 1, ptr %.sroa.32.0..sroa_idx, align 4
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 34
  store i16 %i.rl, ptr %.sroa.34.0..sroa_idx, align 2
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  store <2 x i16> %i.vo, ptr %.sroa.36.0..sroa_idx, align 4
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store <2 x i16> %i.vp, ptr %.sroa.40.0..sroa_idx, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  store <4 x i32> %i.vq, ptr %.sroa.44.0..sroa_idx, align 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 60
  store i32 %.sroa.56.0, ptr %.sroa.56.0..sroa_idx, align 4
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i16 %i.hk, ptr %.sroa.58.0..sroa_idx, align 4
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 66
  store i16 %.sroa.59.0, ptr %.sroa.59.0..sroa_idx, align 2
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  store i16 %.sroa.61.0, ptr %.sroa.61.0..sroa_idx, align 4
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 70
  store i16 %.sroa.63.0, ptr %.sroa.63.0..sroa_idx, align 2
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  store i16 %i.je, ptr %.sroa.65.0..sroa_idx, align 4
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 74
  store i16 %i.jj, ptr %.sroa.67.0..sroa_idx, align 2
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 76
  store i16 %i.jo, ptr %.sroa.69.0..sroa_idx, align 4
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 78
  store i16 %i.jt, ptr %.sroa.71.0..sroa_idx, align 2
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store i16 %i.jy, ptr %.sroa.73.0..sroa_idx, align 4
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 82
  store i16 %i.kd, ptr %.sroa.75.0..sroa_idx, align 2
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  store i16 %i.ki, ptr %.sroa.77.0..sroa_idx, align 4
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 86
  store i16 %i.kn, ptr %.sroa.79.0..sroa_idx, align 2
  %.sroa.81.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i16 %i.ks, ptr %.sroa.81.0..sroa_idx, align 4
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 90
  store i16 %i.kx, ptr %.sroa.83.0..sroa_idx, align 2
  %.sroa.85.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 92
  store i16 %.sroa.85.0, ptr %.sroa.85.0..sroa_idx, align 4
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 94
  store <8 x i8> %i.vl, ptr %.sroa.87.0..sroa_idx, align 2
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 102
  store i8 %.sroa.97.0, ptr %.sroa.97.0..sroa_idx, align 2
  %.sroa.98.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 103
  store i8 %.sroa.98.0, ptr %.sroa.98.0..sroa_idx, align 1
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  store i16 %i.ex, ptr %.sroa.99.0..sroa_idx, align 4
  %.sroa.100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 106
  store i16 %i.qz, ptr %.sroa.100.0..sroa_idx, align 2
  %.sroa.102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 108
  store i16 %i.rb, ptr %.sroa.102.0..sroa_idx, align 4
  %.sroa.104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 110
  store i16 %.sroa.104.0, ptr %.sroa.104.0..sroa_idx, align 2
  %.sroa.107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store i16 %.sroa.107.0, ptr %.sroa.107.0..sroa_idx, align 4
  %.sroa.110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 114
  store i16 %.sroa.110.0, ptr %.sroa.110.0..sroa_idx, align 2
  %.sroa.113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 116
  store i16 %.sroa.113.0, ptr %.sroa.113.0..sroa_idx, align 4
  %.sroa.116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 118
  store i16 %.sroa.116.0, ptr %.sroa.116.0..sroa_idx, align 2
  invoke void @_RNvMs0_NtCs3v5ql5U6hxj_6fontir13orchestrationINtB5_11ContextItemNtNtCshxhuDJfZv4T_6fontbe13orchestration9AnyWorkIdNtNtNtCs6WnK4nVnpEz_11write_fonts6tables3os23Os2E3setB14_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.vr, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(120) %i.aj)
          to label %bb.ij unwind label %bb.bo

bb.ii:                                            ; preds = %bb.iw, %.body109, %bb.z, %bb.r, %bb.ix, %.body
  %i.vs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.ij:                                            ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.am)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEECshxhuDJfZv4T_6fontbe.exit157 unwind label %bb.ac

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEECshxhuDJfZv4T_6fontbe.exit157: ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtCsbZq13ASDQ8l_10font_types3tag3TagINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1l_15NormalizedSpaceEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.ao)
          to label %bb.im unwind label %bb.ik

bb.ik:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEECshxhuDJfZv4T_6fontbe.exit157
  %i.vt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.ao, align 8, !range !7, !alias.scope !5148, !noundef !5 ; 2 uses
  %i.vu = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.vu, label %.body158, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val3.i.i.i = load ptr, ptr %i.vv, align 8, !alias.scope !5149, !nonnull !5, !noundef !5
  %i.vw = shl nuw i64 %.val2.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.vw, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5150
  br label %.body158

bb.im:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEECshxhuDJfZv4T_6fontbe.exit157
  %.val.i.i.i = load i64, ptr %i.ao, align 8, !range !7, !alias.scope !5148, !noundef !5 ; 2 uses
  %i.vx = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.vx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir21GlobalMetricsInstanceECshxhuDJfZv4T_6fontbe.exit, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val1.i.i.i = load ptr, ptr %i.vy, align 8, !alias.scope !5149, !nonnull !5, !noundef !5
  %i.vz = shl nuw i64 %.val.i.i.i, 4
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.vz, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !5151
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir21GlobalMetricsInstanceECshxhuDJfZv4T_6fontbe.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir21GlobalMetricsInstanceECshxhuDJfZv4T_6fontbe.exit: ; preds = %bb.in, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.experimental.noalias.scope.decl(metadata !5152)
  call void @llvm.experimental.noalias.scope.decl(metadata !5153)
  %i.wa = load ptr, ptr %i.ap, align 8, !alias.scope !5154, !nonnull !5, !noundef !5
  %i.wb = atomicrmw sub ptr %i.wa, i64 1 release, align 8, !noalias !5154
  %i.wc = icmp eq i64 %i.wb, 1
  br i1 %i.wc, label %bb.io, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit161

bb.io:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir21GlobalMetricsInstanceECshxhuDJfZv4T_6fontbe.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #45
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit161 unwind label %bb.b

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit161: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir2ir21GlobalMetricsInstanceECshxhuDJfZv4T_6fontbe.exit, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.wd = trunc nuw i8 %.sroa.042.2 to i1
  %i.we = load i64, ptr %i.as, align 8, !range !12
  %.not.i.i162 = icmp ne i64 %i.we, 2
  %or.cond241.not = select i1 %i.wd, i1 %.not.i.i162, i1 false
  br i1 %or.cond241.not, label %bb.ip, label %.thread232.thread

bb.ip:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit161
  %i.wf = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.wf)
          to label %.thread232 unwind label %.thread233.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCseSYDGaa5U8h_7tracing4span7EnteredECshxhuDJfZv4T_6fontbe.exit182: ; preds = %bb.iw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs3v5ql5U6hxj_6fontir2ir15static_metadata14StaticMetadataEECshxhuDJfZv4T_6fontbe.exit
  %i.wg = trunc nuw i8 %.sroa.045.0 to i1
  br i1 %i.wg, label %bb.ix, label %common.resume

.thread233.a:                                     ; preds = %bb.ip
  %i.wh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

.thread232:                                       ; preds = %bb.ip
  %.pr = load i64, ptr %i.as, align 8, !alias.scope !5155 ; 2 uses
  %.not.i.i164 = icmp eq i64 %.pr, 2
  br i1 %.not.i.i164, label %.thread232.thread, label %bb.iq

bb.iq:                                            ; preds = %.thread232
  %i.wi = load i64, ptr %i.wf, align 8, !range !22, !alias.scope !5156, !noundef !5
  %i.wj = invoke noundef zeroext i1 @_RNvMs2_NtCs6CpVowoi7NE_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.as, i64 noundef %i.wi)
          to label %bb.is unwind label %bb.ir     ; 0 uses

bb.ir:                                            ; preds = %bb.iq
  %i.wk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCseSYDGaa5U8h_7tracing4span5InnerEECshxhuDJfZv4T_6fontbe(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.as) #42
          to label %common.resume unwind label %bb.iv

bb.is:                                            ; preds = %bb.iq
  call void @llvm.experimental.noalias.scope.decl(metadata !5157)
  call void @llvm.experimental.noalias.scope.decl(metadata !5158)
  call void @llvm.experimental.noalias.scope.decl(metadata !5159)
  call void @llvm.experimental.noalias.scope.decl(metadata !5160)
  %i.wl = icmp eq i64 %.pr, 0
  br i1 %i.wl, label %.thread232.thread, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.wm = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5161)
  call void @llvm.experimental.noalias.scope.decl(metadata !5162)
  %i.wn = load ptr, ptr %i.wm, align 8, !alias.scope !5163, !nonnull !5, !noundef !5
  %i.wo = atomicrmw sub ptr %i.wn, i64 1 release, align 8, !noalias !5164
  %i.wp = icmp eq i64 %i.wo, 1
  br i1 %i.wp, label %bb.iu, label %.thread232.thread
end_hunk_1
