Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.12?download=true
inline.NumInlined: 2324
inline.NumDeleted: 894
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsh_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_18SerializationErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtNtNtBb_11collections4hash3map7HashMapNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6report8SourceIdNtB1Q_14CodeCacheEntryEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !25, !noundef !5 ; 2 uses
  %i.c = atomicrmw sub ptr %i.b, i32 1 release, align 4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = and i32 %i.d, -1073741825
  %or.cond = icmp eq i32 %i.e, -2147483648
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !5181

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.b, i32 noundef %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsi_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_16RwLockWriteGuardNtNtCsfg5wIEEXgBO_9indicatif5multi10MultiStateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i8, ptr %i.c, align 8, !range !15, !noundef !5
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #39
  br i1 %i.h, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = atomicrmw sub ptr %i.a, i32 1073741823 release, align 4
  %i.j = add i32 %i.i, -1073741823                ; 2 uses
  %or.cond.not = icmp ult i32 %i.j, 1073741824
  br i1 %or.cond.not, label %bb.f, label %bb.e, !prof !5182

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.a, i32 noundef %i.j)
  br label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsj_NtCs7gfv9tzbXmh_6yara_x7scannerNtB5_9ScanErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !27, !noundef !5 ; 2 uses
  %i.g = add nsw i64 %i.f, -2
  %i.h = icmp samesign ugt i64 %i.f, 1
  %i.i = select i1 %i.h, i64 %i.g, i64 5
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @269, i64 noundef 7)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.l, ptr %i.e, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @271, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 4, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @270, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 3, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.d, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @272, i64 noundef 4, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @270, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 3, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.r, ptr %i.c, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @276, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @277, i64 noundef 6, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @275)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.b, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @278, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @277, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @216)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @280, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @277, i64 noundef 6, ptr noundef nonnull %i.v, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @279)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ %i.s, %bb.f ], [ %i.u, %bb.g ], [ %i.w, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCsfg5wIEEXgBO_9indicatif5styleNtB5_5StateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !23, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsp_NtCsfg5wIEEXgBO_9indicatif5styleNtB5_5StateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsp_NtCsfg5wIEEXgBO_9indicatif5styleNtB5_5StateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.332, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7dynamic17DynamicFieldValueNtB5_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7dynamic17DynamicFieldValueINtNtNtBa_5slice4iter4IterB14_EECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSTNtNtCsG258MDvU3F_3std4path7PathBufNtNtBA_4time7InstantENtB5_5Debug3fmtCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCsG258MDvU3F_3std4path7PathBufNtNtB19_4time7InstantEINtNtNtBa_5slice4iter4IterB14_EECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @35, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @296, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1u_5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1u_5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @51, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtB1u_5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @297, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorEENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5183
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCskKLDkoKarTP_4core2io5error5ErrorEENtNtB1K_5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5184
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5185
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorEENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5186
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5187
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCsG258MDvU3F_3std4path7PathBufEENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5188
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageEENtNtCskKLDkoKarTP_4core5error5Error5causeB1C_(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5189
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtCs6fABDMljrgZ_8globwalk9GlobErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5190
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtCsbRBQYsxaRdD_10yara_x_fmt5ErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5191
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5192
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCs7gfv9tzbXmh_6yara_x9variables13VariableErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5193
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCs7wOm4VClMVn_7walkdir5error5ErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5194
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCseAUhZXWg4yS_5regex5error5ErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5195
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCsfg5wIEEXgBO_9indicatif5style13TemplateErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5196
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtCskKLDkoKarTP_4core3fmt5ErrorENtNtBM_5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5197
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18InvalidWarningCodeENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5198
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18SerializationErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5199
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCscK5W4trzgIe_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #37, !inline_history !5200
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @298, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @299, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCscK5W4trzgIe_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @300, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_ENtNtBG_8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBa_10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_ENtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCsG258MDvU3F_3std4path7PathBufENtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCsG258MDvU3F_3std4path7PathBufENtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCsG258MDvU3F_3std4path7PathBufENtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCsG258MDvU3F_3std4path7PathBufENtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCsG258MDvU3F_3std4path7PathBufENtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @301, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtCskKLDkoKarTP_4core5error5Error11descriptionBW_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtCskKLDkoKarTP_4core5error5Error5causeBW_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtCskKLDkoKarTP_4core5error5Error6sourceBW_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtCskKLDkoKarTP_4core5error5Error7provideBW_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCsgqCuqWkNCVj_17crossbeam_channel3err9SendErrorNtNtCskIqAKC4t9Ft_2yr4walk7MessageENtNtCskKLDkoKarTP_4core5error5Error7type_idBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @302, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCs6fABDMljrgZ_8globwalk9GlobErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCs6fABDMljrgZ_8globwalk9GlobErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs6fABDMljrgZ_8globwalk9GlobErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs6fABDMljrgZ_8globwalk9GlobErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @303, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtCsbRBQYsxaRdD_10yara_x_fmt5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsbRBQYsxaRdD_10yara_x_fmt5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsbRBQYsxaRdD_10yara_x_fmt5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsbRBQYsxaRdD_10yara_x_fmt5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @304, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner13MatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !5203, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5203
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5203
  %i.h = select i1 %i.c, i64 %i.g, i64 0
  %.sroa.0.0.i = sub i64 0, %i.e
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.i
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner13MatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCs7gfv9tzbXmh_6yara_x7scanner13MatchingRulesNtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner13MatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCs7gfv9tzbXmh_6yara_x7scanner13MatchingRulesNtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs9_NtCs7gfv9tzbXmh_6yara_x7scannerNtB5_13MatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner13MatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner16NonMatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator8is_emptyCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !5206, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5206
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5206
  %i.h = select i1 %i.c, i64 %i.g, i64 0
  %.sroa.0.0.i = sub i64 0, %i.e
  %i.i = icmp eq i64 %i.h, %.sroa.0.0.i
  ret i1 %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner16NonMatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(56) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCs7gfv9tzbXmh_6yara_x7scanner16NonMatchingRulesNtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner16NonMatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtCs7gfv9tzbXmh_6yara_x7scanner16NonMatchingRulesNtB4_13SpecAdvanceBy15spec_advance_byCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2)
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXsc_NtCs7gfv9tzbXmh_6yara_x7scannerNtB5_16NonMatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner16NonMatchingRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @305, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs7gfv9tzbXmh_6yara_x9variables13VariableErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCs7gfv9tzbXmh_6yara_x9variables13VariableErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs7gfv9tzbXmh_6yara_x9variables13VariableErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7gfv9tzbXmh_6yara_x9variables13VariableErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7gfv9tzbXmh_6yara_x9variables13VariableErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @306, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs7wOm4VClMVn_7walkdir5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs7wOm4VClMVn_7walkdir5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @307, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCseAUhZXWg4yS_5regex5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCseAUhZXWg4yS_5regex5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCseAUhZXWg4yS_5regex5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCseAUhZXWg4yS_5regex5error5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @308, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsfg5wIEEXgBO_9indicatif5style13TemplateErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsfg5wIEEXgBO_9indicatif5style13TemplateErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsfg5wIEEXgBO_9indicatif5style13TemplateErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsfg5wIEEXgBO_9indicatif5style13TemplateErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsfg5wIEEXgBO_9indicatif5style13TemplateErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 4 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @309, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @310, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18InvalidWarningCodeNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18InvalidWarningCodeNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18InvalidWarningCodeNtNtCskKLDkoKarTP_4core5error5Error6sourceCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18InvalidWarningCodeNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18InvalidWarningCodeNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @311, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18SerializationErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18SerializationErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_18SerializationErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18SerializationErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs7gfv9tzbXmh_6yara_x8compiler6errors18SerializationErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @312, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #12 {
bb.a:
  ret { ptr, i64 } { ptr @234, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCskIqAKC4t9Ft_2yr(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #12 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @313, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtB10_3env4ArgsNCNvXs_Cs3iKZ8NGd5hk_8clap_lexNtB3b_7RawArgsINtNtB28_7convert4FromB2N_E4from0EE9from_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #16

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #17

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1i_6option6OptionNtNtCsgqCuqWkNCVj_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2a_B28_4with7CONTEXT27___rust_std_internal_init_fnECskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtBe_6thread2id8ThreadIdzE16get_or_init_slowNvNvNvNtCsgqCuqWkNCVj_17crossbeam_channel5waker17current_thread_id9THREAD_ID27___rust_std_internal_init_fnECskIqAKC4t9Ft_2yr(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path13__strip_prefix(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path5__join(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionuEEENtNtB1z_7default7Default7defaultCskIqAKC4t9Ft_2yr() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs1_NtNtCs7uMgTmySp6A_15crossbeam_utils4sync10wait_groupNtB5_9WaitGroupNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCsG258MDvU3F_3std6thread7builderNtB3_7Builder15spawn_uncheckedINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB1O_6marker4SendEL_EuECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCsG258MDvU3F_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtCscK5W4trzgIe_6anyhow5errorNtB5_5Error20construct_from_adhocNtNtNtCsgIATGCnso3Z_22wasmtime_internal_core5error5error5ErrorECskIqAKC4t9Ft_2yr(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE5drainINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs_NtNtCs7uMgTmySp6A_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup3new() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecIBx_IBH_INtNtCskKLDkoKarTP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEEEEENtNtB1X_7default7Default7defaultCskIqAKC4t9Ft_2yr() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCs7uMgTmySp6A_15crossbeam_utils4sync10wait_groupNtB4_9WaitGroup4wait(ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtNtB15_6thread11join_handle10JoinHandleuEEEEE5drainNtNtNtB1P_3ops5range9RangeFullECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs7uMgTmySp6A_15crossbeam_utils6thread5scopeNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB6S_9ParWalker4walkNtNtNtB6U_8commands3fix16FixEncodingStateuNCNvB7D_17exec_fix_encoding0NCB8j_s_0NCB8j_s0_0NCB8j_s1_0NCB8j_s2_0E0B7B_Es_0ENCB5X_s0_0EE9from_iterB6U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCsG258MDvU3F_3std5panic13resume_unwind(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs7uMgTmySp6A_15crossbeam_utils6thread5scopeNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB6S_9ParWalker4walkNtNtNtB6U_8commands4scan9ScanStateNtNtCs7gfv9tzbXmh_6yara_x7scanner7ScannerNCNvB7D_9exec_scans2_0NCB8Q_s3_0NCB8Q_s4_0NCB8Q_s5_0NCB8Q_s6_0E0B7B_Es_0ENCB5X_s0_0EE9from_iterB6U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtB1h_6marker4SendEL_EEINtB2_12SpecFromIterBU_INtNtNtNtB1h_4iter8adapters10filter_map9FilterMapIB2v_INtNtB4_5drain5DrainINtNtB6_4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB1h_6option6OptionINtNtNtB46_6thread11join_handle10JoinHandleuEEEEENCINvNtCs7uMgTmySp6A_15crossbeam_utils6thread5scopeNCINvMs_NtCskIqAKC4t9Ft_2yr4walkNtB6S_9ParWalker4walkNtNtNtB6U_8commands5check10CheckStateuNCNvB7D_10exec_check0NCB8f_s_0NCB8f_s0_0NCB8f_s1_0NCB8f_s2_0E0B7B_Es_0ENCB5X_s0_0EE9from_iterB6U_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs7gfv9tzbXmh_6yara_x6modelss0_1__NtB5_9MetaValueNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeNtNtNtCsbbTh99npV2h_10serde_json5value3ser10SerializerECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_Cs6fABDMljrgZ_8globwalkNtB5_9GlobErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtCs6fABDMljrgZ_8globwalk9GlobErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_CsbRBQYsxaRdD_10yara_x_fmtNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtCsbRBQYsxaRdD_10yara_x_fmt5ErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs7gfv9tzbXmh_6yara_x7scannerNtB5_9ScanErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs7gfv9tzbXmh_6yara_x7scanner9ScanErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtCs7gfv9tzbXmh_6yara_x9variablesNtB5_13VariableErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs7wOm4VClMVn_7walkdir5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCseAUhZXWg4yS_5regex5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCseAUhZXWg4yS_5regex5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCsfg5wIEEXgBO_9indicatif5styleNtB5_13TemplateErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtCskKLDkoKarTP_4core3fmtNtB5_5ErrorNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCskKLDkoKarTP_4core3fmt5ErrorNtNtB6_5error5Error5causeCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_18InvalidWarningCodeNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_18SerializationErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXsb_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_18SerializationErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCskKLDkoKarTP_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #24

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_5boxed3BoxDNtNtNtCs5lEgW3tfVqv_6walrus6module6custom13CustomSectionEL_EEENtNtNtBK_3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs6i8zKcEiGNL_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtB12_6marker4SendEL_EENtNtNtB12_3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtNtCs7gfv9tzbXmh_6yara_x8compiler7linters6LinterEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs7uMgTmySp6A_15crossbeam_utils6thread16ScopedJoinHandleuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsiDXNEuEFJ7m_6ignore5ErrorENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_0
