Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.11?download=true
inline.NumInlined: 17758
inline.NumDeleted: 7698
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
loop-unroll.NumUnrolledNotLatch: 5
begin_hunk_0_@_RNvYNtNtNtCsaRr8xKSRVhT_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect27get_next_precedence_defaultCseeLknQCOKOd_13polars_python:bb.a
    i8 59, label %bb.v
    i8 60, label %bb.v
    i8 61, label %bb.v
    i8 62, label %bb.v
    i8 63, label %bb.v
    i8 64, label %bb.v
    i8 65, label %bb.v
    i8 66, label %bb.l
    i8 67, label %bb.l
    i8 68, label %bb.k
    i8 69, label %bb.i
    i8 71, label %bb.k
    i8 72, label %bb.i
    i8 76, label %bb.m
    i8 77, label %bb.m
    i8 78, label %bb.m
    i8 80, label %bb.k
    i8 81, label %bb.k
    i8 82, label %bb.k
    i8 83, label %bb.k
    i8 84, label %bb.k
    i8 85, label %bb.k
    i8 86, label %bb.k
    i8 87, label %bb.k
    i8 88, label %bb.k
    i8 89, label %bb.k
    i8 90, label %bb.k
    i8 91, label %bb.k
    i8 92, label %bb.k
    i8 93, label %bb.k
    i8 95, label %bb.m
    i8 96, label %bb.m
    i8 97, label %bb.m
    i8 98, label %bb.m
    i8 99, label %bb.m
    i8 100, label %bb.m
    i8 101, label %bb.m
    i8 102, label %bb.m
    i8 103, label %bb.k
    i8 104, label %bb.m
  ], !dbg !353846

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !353847
  store ptr %i.c, ptr %i.b, align 8, !dbg !353847
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !353847
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsaRr8xKSRVhT_9sqlparser9tokenizer13TokenWithSpanNtB6_5Debug3fmtCseeLknQCOKOd_13polars_python, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !353847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !353842
  store ptr @3384, ptr %i.a, align 8, !dbg !353842
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !353842
  store i64 18, ptr %i.j, align 8, !dbg !353842
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !353842
  store ptr @3384, ptr %i.k, align 8, !dbg !353842
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !353842
  store i64 18, ptr %i.l, align 8, !dbg !353842
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !353842
  store ptr @3383, ptr %i.m, align 8, !dbg !353842
  call void @_RINvNtCsd5tmq9Ca7WV_3log13___private_api3loguNtB2_12GlobalLoggerECseeLknQCOKOd_13polars_python(ptr noundef nonnull @3381, ptr noundef nonnull %i.b, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a), !dbg !353842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !353842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !353842
  br label %bb.c, !dbg !353842

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 36, !dbg !353848
  %.val60 = load i16, ptr %i.n, align 4, !dbg !353848, !range !3332, !noundef !1855
  switch i16 %.val60, label %bb.b [
    i16 651, label %bb.n
    i16 27, label %bb.o
    i16 1086, label %bb.p
    i16 43, label %bb.q
    i16 610, label %bb.r
    i16 459, label %bb.s
    i16 415, label %bb.v
    i16 66, label %bb.v
    i16 664, label %bb.v
    i16 491, label %bb.w
    i16 410, label %bb.w
    i16 805, label %bb.w
    i16 756, label %bb.w
    i16 526, label %bb.w
    i16 863, label %bb.w
    i16 543, label %bb.w
    i16 644, label %bb.v
    i16 255, label %bb.t
  ], !dbg !353848

bb.f:                                             ; preds = %bb.c, %bb.c
  br label %bb.b, !dbg !353849

bb.g:                                             ; preds = %bb.c
  br label %bb.b, !dbg !353850

bb.h:                                             ; preds = %bb.c
  %i.o = call noundef nonnull align 8 ptr @_RNvMs4_NtCsaRr8xKSRVhT_9sqlparser6parserNtB5_6Parser18peek_nth_token_ref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef 1), !dbg !353851
  %i.p = load i8, ptr %i.o, align 8, !dbg !353852, !range !353832, !noundef !1855
  %i.q = add nsw i8 %i.p, -2, !dbg !353853
  %switch.and = and i8 %i.q, -3, !dbg !353853
  %switch.selectcmp = icmp eq i8 %switch.and, 0, !dbg !353853
  %i.r = select i1 %switch.selectcmp, i8 0, i8 21, !dbg !353853
  br label %bb.b, !dbg !353853

bb.i:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.b, !dbg !353854

bb.j:                                             ; preds = %bb.c
  br label %bb.b, !dbg !353855

bb.k:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.b, !dbg !353856

bb.l:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.b, !dbg !353857

bb.m:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.b, !dbg !353858

bb.n:                                             ; preds = %bb.e
  br label %bb.b, !dbg !353859

bb.o:                                             ; preds = %bb.e
  br label %bb.b, !dbg !353860

bb.p:                                             ; preds = %bb.e
  br label %bb.b, !dbg !353861

bb.q:                                             ; preds = %bb.e
  %i.s = call noundef nonnull align 8 ptr @_RNvMs4_NtCsaRr8xKSRVhT_9sqlparser6parserNtB5_6Parser18peek_nth_token_ref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef 1), !dbg !353862 ; 2 uses
  %i.t = call noundef nonnull align 8 ptr @_RNvMs4_NtCsaRr8xKSRVhT_9sqlparser6parserNtB5_6Parser18peek_nth_token_ref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef 2), !dbg !353863 ; 2 uses
  %i.u = load i8, ptr %i.s, align 8, !dbg !353864, !range !353832, !noundef !1855
  %i.v = icmp eq i8 %i.u, 1, !dbg !353865
  br i1 %i.v, label %bb.y, label %bb.b, !dbg !353865

bb.r:                                             ; preds = %bb.e
  %i.w = call noundef nonnull align 8 ptr @_RNvMs4_NtCsaRr8xKSRVhT_9sqlparser6parserNtB5_6Parser18peek_nth_token_ref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef 1), !dbg !353866 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !dbg !353867, !range !353832, !noundef !1855
  %i.y = icmp eq i8 %i.x, 1, !dbg !353868
  br i1 %i.y, label %bb.u, label %bb.b, !dbg !353868

bb.s:                                             ; preds = %bb.e
  br label %bb.b, !dbg !353869

bb.t:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.e
  br label %bb.b, !dbg !353870

bb.u:                                             ; preds = %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 36, !dbg !353871
  %.val22 = load i16, ptr %i.z, align 4, !dbg !353871, !range !3332, !noundef !1855
  switch i16 %.val22, label %bb.b [
    i16 415, label %bb.v
    i16 66, label %bb.v
    i16 491, label %bb.w
    i16 410, label %bb.w
    i16 805, label %bb.w
    i16 756, label %bb.w
    i16 526, label %bb.w
    i16 863, label %bb.w
    i16 543, label %bb.w
    i16 618, label %bb.x
  ], !dbg !353871

bb.v:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.e, %bb.e, %bb.e, %bb.e, %bb.u, %bb.u
  br label %bb.b, !dbg !353872

bb.w:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u, %bb.u
  br label %bb.b, !dbg !353873

bb.x:                                             ; preds = %bb.u
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 59, !dbg !353874
  %.val66 = load i8, ptr %i.aa, align 1, !dbg !353874, !range !2010, !noundef !1855
  %i.ab = icmp eq i8 %.val66, 2, !dbg !353875
  %spec.select = select i1 %i.ab, i8 0, i8 17, !dbg !353876
  br label %bb.b, !dbg !353876

bb.y:                                             ; preds = %bb.q
  %i.ac = load i8, ptr %i.t, align 8, !dbg !353864, !range !353832, !noundef !1855
  %i.ad = icmp eq i8 %i.ac, 1, !dbg !353865
  br i1 %i.ad, label %bb.z, label %bb.b, !dbg !353865

bb.z:                                             ; preds = %bb.y
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 36, !dbg !353877
  %.val2 = load i16, ptr %i.ae, align 4, !dbg !353877, !range !3332, !noundef !1855
  %i.af = icmp eq i16 %.val2, 956, !dbg !353878
  br i1 %i.af, label %bb.aa, label %bb.b, !dbg !353877

bb.aa:                                            ; preds = %bb.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 36, !dbg !353879
  %.val = load i16, ptr %i.ag, align 4, !dbg !353879, !range !3332, !noundef !1855
  %i.ah = icmp eq i16 %.val, 1090, !dbg !353880
  %spec.select71 = select i1 %i.ah, i8 41, i8 0, !dbg !353879
  br label %bb.b, !dbg !353879
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYNtNtNtCsaRr8xKSRVhT_9sqlparser7dialect7generic14GenericDialectNtB6_7Dialect7dialectCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly captures(none) %1) unnamed_addr #4 !dbg !353881 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1856, i64 16, i1 false), !dbg !353886
  ret void, !dbg !353887
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCseeLknQCOKOd_13polars_python(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !353888 {
bb.a:
  ret { ptr, i64 } { ptr @3385, i64 40 }, !dbg !353889
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCseeLknQCOKOd_13polars_python(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !353890 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !353891
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCseeLknQCOKOd_13polars_python(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !353892 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !353893
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCseeLknQCOKOd_13polars_python(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !353894 {
bb.a:
  ret void, !dbg !353895
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgZ49sUHp3tW_5alloc5boxed7convertINtBc_3BoxDNtNtCscgRAwXFJnXP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 !dbg !353896 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3386, i64 16, i1 false), !dbg !353899
  ret void, !dbg !353900
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCs9o5SvTbM2BP_6chrono6offset5fixed11FixedOffsetNtB6_8TimeZone19from_local_datetimeCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([36 x i8]) align 4 captures(address) dereferenceable(36), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtNtNtCskkVOJYD9Dn_9chrono_tz8prebuilt9timezones2TzNtNtCs9o5SvTbM2BP_6chrono6offset8TimeZone19from_local_datetimeCseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(address) dereferenceable(96), ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs4_NtCs3XBxJoY2OLA_9once_cell4syncINtB5_8OnceCellINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtNtBU_5types6string8PyStringEE3getCseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvNtNtCsbm5zPlkZccl_4pyo34sync9once_lock26init_once_cell_py_attachedNCNvMs3_B4_NtB4_8Interned3get0INtNtB6_8instance2PyNtNtNtB6_5types6string8PyStringEECseeLknQCOKOd_13polars_python(ptr noundef nonnull align 8, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsaRr8xKSRVhT_9sqlparser9tokenizer13TokenWithSpanNtB6_5Debug3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXs10_NtNtCs40veMcpUDl8_10serde_core2de5implshNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXs13_NtNtCs40veMcpUDl8_10serde_core2de5implstNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXs16_NtNtCs40veMcpUDl8_10serde_core2de5implsmNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXs17_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtNtCscgRAwXFJnXP_4core3num7nonzero7NonZeroyENtBe_11Deserialize11deserialize14NonZeroVisitorNtBe_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvXs17_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtNtCscgRAwXFJnXP_4core3num7nonzero7NonZeroyENtBc_11Deserialize11deserializeNtB3_14NonZeroVisitorNtBc_7Visitor9visit_u64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvXs17_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtNtCscgRAwXFJnXP_4core3num7nonzero7NonZeroyENtBc_11Deserialize11deserializeNtB3_14NonZeroVisitorNtBc_7Visitor9visit_i64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXs19_NtNtCs40veMcpUDl8_10serde_core2de5implsyNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXs1a_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtNtCscgRAwXFJnXP_4core3num7nonzero7NonZerojENtBe_11Deserialize11deserialize14NonZeroVisitorNtBe_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvXs1a_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtNtCscgRAwXFJnXP_4core3num7nonzero7NonZerojENtBc_11Deserialize11deserializeNtB3_14NonZeroVisitorNtBc_7Visitor9visit_u64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvXNvXs1a_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtNtCscgRAwXFJnXP_4core3num7nonzero7NonZerojENtBc_11Deserialize11deserializeNtB3_14NonZeroVisitorNtBc_7Visitor9visit_i64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXs1c_NtNtCs40veMcpUDl8_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXsL_NtNtCs40veMcpUDl8_10serde_core2de5implsaNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXsO_NtNtCs40veMcpUDl8_10serde_core2de5implssNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYNtNvXsR_NtNtCs40veMcpUDl8_10serde_core2de5implslNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvYNtNvXsU_NtNtCs40veMcpUDl8_10serde_core2de5implsxNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor9visit_f64NtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python(double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs10_NtB4_5implshNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs13_NtB4_5implstNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs16_NtB4_5implsmNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs17_NtB4_5implsINtNtNtCscgRAwXFJnXP_4core3num7nonzero7NonZeroyENtB4_11Deserialize11deserialize14NonZeroVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs19_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs1a_NtB4_5implsINtNtNtCscgRAwXFJnXP_4core3num7nonzero7NonZerojENtB4_11Deserialize11deserialize14NonZeroVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs1c_NtB4_5implsjNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs1d_NtB4_5implsfNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs1e_NtB4_5implsdNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXsL_NtB4_5implsaNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXsO_NtB4_5implssNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXsR_NtB4_5implslNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXsU_NtB4_5implsxNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5innerNtB2_17PolarsObjectStore23get_or_init_concurrency(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCslpwjCj2YNBy_9polars_io8pl_async21get_concurrency_limit() unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCse67t6KqNqGQ_5rayon3vecINtB5_13DrainProducerINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtBV_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCse67t6KqNqGQ_5rayon3vecINtB5_13DrainProducerINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCseTQckN36Kfc_9hashbrown3rawINtB5_8RawTableTNtNtCscgRAwXFJnXP_4core3any6TypeIdINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs1d9mkheQt2j_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketjINtNtB7_4sync3ArcSNtNtB7_6string6StringEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketmINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtB7_6string6StringEEENtNtNtB1i_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketmNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketmNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtBK_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit19DynListLiteralValueEENtNtNtBK_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtBK_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6option6OptionnEENtNtNtBK_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtBK_3ops4drop4Drop4dropCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_0
