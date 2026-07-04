inline.NumInlined: 7581
inline.NumDeleted: 2927
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMsK_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_18ObjectOutputStream22___pymethod_readlines__:bb.a
          to label %.noexc32 unwind label %bb.d

.noexc32:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  store ptr @262, ptr %i.y, align 8, !noalias !10510
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 27, ptr %i.aa, align 8, !noalias !10515
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.8..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !10516)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ab, align 8, !alias.scope !10519
  %.sroa.436.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.436.8..sroa_idx, align 8, !alias.scope !10519
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %.sroa.5.8..sroa_idx, align 8, !alias.scope !10519
  %.sroa.637.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @256, ptr %.sroa.637.8..sroa_idx, align 8, !alias.scope !10519
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 3, ptr %.sroa.8.8..sroa_idx, align 8, !alias.scope !10519
  store i64 1, ptr %0, align 8, !alias.scope !10521, !noalias !10516
  %i.ac = load ptr, ptr %i.d, align 8, !alias.scope !10522, !noundef !4
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit33, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit33

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit33: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit34, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %bb.j, %bb.g
  store i64 1, ptr %0, align 8
  %i.ae = load ptr, ptr %i.d, align 8, !alias.scope !10525, !noundef !4
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit34, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit34

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit34: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.r:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamEEEB1Y_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBM_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBM_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE16with_capacity_inB25_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringxNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E21reserve_one_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10528, !noalias !10531, !noundef !4 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 8                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !10528, !noalias !10531, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.q, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread, !prof !10533

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.a, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.q, label %bb.b, !prof !64

bb.b:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10534)
  %i.m = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !10537, !noalias !10540, !nonnull !4, !noundef !4
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !10534
  br label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 8, %bb.b ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #36, !noalias !10534
  unreachable

bb.e:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = mul nuw nsw i64 %i.l, 56                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 164703072086692424
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit.i, !prof !6321

_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.h
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit.i
  %or.cond65.not.i = icmp ugt i64 %.sink.i.i, 164703072086692425
  br i1 %or.cond65.not.i, label %bb.p, label %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit48.i, !prof !6321

bb.j:                                             ; preds = %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !10534
  %i.t = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #41, !noalias !10534 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit48.i: ; preds = %bb.i
  %i.v = mul nuw nsw i64 %.sink.i.i, 56
  %i.w = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #41 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !10534
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !10534
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !10534
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !10534
  br label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.j
  %i.y = mul i64 %i.q, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink11.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !10534
  %i.z = mul i64 %i.q, 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink11.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !10534
  %i.aa = mul i64 %.sink.i.i, 56                  ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %.sink.i.i, 164703072086692425
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCs3fLsjMQPbhe_8smallvec10deallocateNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit.i, !prof !6321

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10542
  store i64 0, ptr %i.a, align 8, !noalias !10542
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !10542
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @239, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !10542
  unreachable

_RINvCs3fLsjMQPbhe_8smallvec10deallocateNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.aa, i64 noundef 8) #41
  br label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.j, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit48.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.s) #37
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
  unreachable

_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvCs3fLsjMQPbhe_8smallvec10deallocateNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectiveECs7p2uQeJxui2_9deltalake.exit.i, %bb.g, %bb.f, %bb.k
  ret void

bb.q:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter9directive15StaticDirectivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @286) #36
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E21reserve_one_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(656) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10545, !noalias !10548, !noundef !4 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 8                     ; 2 uses
  br i1 %i.d, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !10545, !noalias !10548, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.q, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread, !prof !10533

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.a, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit
  %.sink11.i8 = phi i64 [ %i.f, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = icmp eq i64 %.sink11.i8, 0
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink11.i8, i1 true)
  %i.j = lshr i64 -1, %i.i
  %.sroa.02.0 = select i1 %i.h, i64 0, i64 %i.j   ; 4 uses
  %i.k = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.k, label %bb.q, label %bb.b, !prof !64

bb.b:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread
  %i.l = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10550)
  %i.m = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.d, label %bb.c, label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !10553, !noalias !10556, !nonnull !4, !noundef !4
  %.pre = load i64, ptr %i.n, align 8, !alias.scope !10550
  br label %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i

_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %.sink11.i.i = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %.sink.i.i = phi i64 [ %i.c, %bb.c ], [ 8, %bb.b ] ; 5 uses
  %.not.i = icmp ult i64 %i.l, %i.q
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !64

bb.d:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #36, !noalias !10550
  unreachable

bb.e:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E10triple_mutCs7p2uQeJxui2_9deltalake.exit.i
  %i.r = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46.i = icmp eq i64 %i.l, %.sink.i.i
  br i1 %.not46.i, label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.s = mul nuw nsw i64 %i.l, 80                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %.sroa.02.0, 115292150460684696
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit.i, !prof !6321

_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.h
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit.i
  %or.cond65.not.i = icmp ugt i64 %.sink.i.i, 115292150460684697
  br i1 %or.cond65.not.i, label %bb.p, label %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit48.i, !prof !6321

bb.j:                                             ; preds = %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !10550
  %i.t = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef 8) #41, !noalias !10550 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.l

_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit48.i: ; preds = %bb.i
  %i.v = mul nuw nsw i64 %.sink.i.i, 80
  %i.w = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.v, i64 noundef 8, i64 noundef %i.s) #41 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit48.i
  %.sroa.031.0.i = phi ptr [ %i.t, %bb.l ], [ %i.w, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit48.i ]
  store i64 1, ptr %0, align 8, !alias.scope !10550
  store i64 %i.q, ptr %i.n, align 8, !alias.scope !10550
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !10550
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !10550
  br label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit

bb.l:                                             ; preds = %bb.j
  %i.y = mul i64 %i.q, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %.sink11.i.i, i64 %i.y, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8, !alias.scope !10550
  %i.z = mul i64 %i.q, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %.sink11.i.i, i64 %i.z, i1 false)
  store i64 %i.q, ptr %i.b, align 8, !alias.scope !10550
  %i.aa = mul i64 %.sink.i.i, 80                  ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %.sink.i.i, 115292150460684697
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCs3fLsjMQPbhe_8smallvec10deallocateNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit.i, !prof !6321

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10558
  store i64 0, ptr %i.a, align 8, !noalias !10558
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !10558
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @237, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @239, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #37, !noalias !10558
  unreachable

_RINvCs3fLsjMQPbhe_8smallvec10deallocateNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.m
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink11.i.i, i64 noundef %i.aa, i64 noundef 8) #41
  br label %_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.j, %_RINvCs3fLsjMQPbhe_8smallvec12layout_arrayNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit48.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 0, -9223372036854775806) 8, i64 noundef %i.s) #37
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #36
  unreachable

_RINvCs3fLsjMQPbhe_8smallvec10infallibleuECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvCs3fLsjMQPbhe_8smallvec10deallocateNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveECs7p2uQeJxui2_9deltalake.exit.i, %bb.g, %bb.f, %bb.k
  ret void

bb.q:                                             ; preds = %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvMsd_Cs3fLsjMQPbhe_8smallvecINtB5_8SmallVecANtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9Directivej8_E6tripleCs7p2uQeJxui2_9deltalake.exit
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @286) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsi_NtCs7p2uQeJxui2_9deltalake10filesystemNtB5_22DeltaFileSystemHandler19___pymethod_equals__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 11 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @317, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.m, i64 noundef 1)
  %i.o = load i64, ptr %i.l, align 8, !range !3, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 1, ptr %0, align 8
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr null, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef align 8 dereferenceable(8) %i.j)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit21.i, %bb.k, %bb.h, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.q, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.d ], [ %i.ap, %bb.q ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !10561, !noundef !4
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerEEEB1Y_.exit unwind label %bb.ad

bb.f:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.i, align 8, !range !3, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.016.0.copyload = load ptr, ptr %i.x, align 8 ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.219.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.517.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aa

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentRNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerKb0_EB1a_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @315, i64 noundef 5)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  %i.y = load i64, ptr %i.h, align 8, !range !3, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.022.0.copyload = load ptr, ptr %i.aa, align 8 ; 2 uses
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.225.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.523.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aa

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.016.0.copyload, ptr %i.g, align 8, !noalias !10564
  store ptr %.sroa.022.0.copyload, ptr %i.f, align 8, !noalias !10564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10564
  store ptr %i.g, ptr %i.d, align 8, !noalias !10564
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerNtB6_5Debug3fmtBA_, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !10564
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @4, ptr noundef nonnull %i.d)
          to label %.noexc29 unwind label %bb.d

.noexc29:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10564
  store ptr %i.f, ptr %i.a, align 8, !noalias !10564
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerNtB6_5Debug3fmtBA_, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !10564
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @4, ptr noundef nonnull %i.a)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.l, !noalias !10569

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %.noexc29
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.an, %bb.o ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #38
          to label %.body unwind label %bb.s, !noalias !10569
end_hunk_0
