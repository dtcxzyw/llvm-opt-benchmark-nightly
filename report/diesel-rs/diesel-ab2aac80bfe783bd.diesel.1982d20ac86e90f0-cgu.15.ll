Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-ab2aac80bfe783bd.diesel.1982d20ac86e90f0-cgu.15?download=true
inline.NumInlined: 900
inline.NumDeleted: 427
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs2_NtNtCsjRvGck33osM_6diesel10connection19transaction_managerNtB5_22AnsiTransactionManagerINtB5_18TransactionManagerNtNtNtB9_6sqlite10connection16SqliteConnectionE20rollback_transactionCs2bNgeUs5Jlc_6diesel:bb.a

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95: ; preds = %bb.ab
  call void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs2bNgeUs5Jlc_6diesel.exit96: ; preds = %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs2bNgeUs5Jlc_6diesel.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.as = load i8, ptr %i.j, align 1, !range !1449, !noundef !8
  switch i8 %i.as, label %bb.ag [
    i8 -1, label %bb.af
    i8 2, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ag
  store i8 -1, ptr %i.j, align 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.at = load i32, ptr %i.i, align 8, !range !1453, !noundef !8 ; 2 uses
  %i.au = icmp ugt i32 %i.at, 1
  br i1 %i.au, label %bb.ai, label %bb.af

bb.ah:                                            ; preds = %bb.ae, %bb.ai, %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.ai:                                            ; preds = %bb.ag
  %i.av = add i32 %i.at, -1
  store i32 %i.av, ptr %i.i, align 8
  store i8 1, ptr %i.p, align 4
  br i1 %i.r, label %bb.aj, label %bb.ah

bb.aj:                                            ; preds = %bb.ai
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorECs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.ak unwind label %bb.m

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.al:                                            ; preds = %bb.m, %bb.h
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl3rowNtB5_11MultiCursorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(128) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = load i64, ptr %1, align 8, !range !1553, !noundef !8 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp sgt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection6cursorNtB5_6CursorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.j = load i64, ptr %i.c, align 8, !range !1554, !noundef !8 ; 3 uses
  %.not95 = icmp eq i64 %i.j, -2
  br i1 %.not95, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel6sqlite10connection18statement_iteratorNtB5_17StatementIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
  %i.k = load i64, ptr %i.b, align 8, !range !1554, !noundef !8 ; 3 uses
  %.not93 = icmp eq i64 %i.k, -2
  br i1 %.not93, label %bb.m, label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB4_17StatementIteratorNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
  %i.m = load i64, ptr %i.a, align 8, !range !1554, !noundef !8 ; 3 uses
  %.not = icmp eq i64 %i.m, -2
  br i1 %.not, label %bb.r, label %bb.q

bb.f:                                             ; preds = %bb.c
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.453.0.copyload = load ptr, ptr %.sroa.453.0..sroa_idx, align 8 ; 3 uses
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.554.0.copyload = load i64, ptr %.sroa.554.0..sroa_idx, align 8 ; 2 uses
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.655.0.copyload = load i64, ptr %.sroa.655.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not96 = icmp eq i64 %i.j, -1
  br i1 %.not96, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 -2, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.u, %bb.r, %bb.p, %bb.m, %bb.k, %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.n = ptrtoint ptr %.sroa.453.0.copyload to i64
  %i.o = inttoptr i64 %.sroa.554.0.copyload to ptr
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.453.0.copyload) ]
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.6.sroa.0.0 = phi i64 [ %i.n, %bb.i ], [ 0, %bb.j ]
  %.sroa.6.sroa.6.0 = phi ptr [ %i.o, %bb.i ], [ %.sroa.453.0.copyload, %bb.j ]
  %.sroa.6.sroa.7.0 = phi i64 [ %.sroa.655.0.copyload, %bb.i ], [ %.sroa.554.0.copyload, %bb.j ]
  store i64 %i.j, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.sroa.0.0, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6.sroa.7.0, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx2.sroa_idx, align 8
  br label %bb.h

bb.l:                                             ; preds = %bb.d
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.465.0.copyload = load ptr, ptr %.sroa.465.0..sroa_idx, align 8 ; 3 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8 ; 2 uses
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.667.0.copyload = load i64, ptr %.sroa.667.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not94 = icmp eq i64 %i.k, -1
  br i1 %.not94, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -2, ptr %0, align 8
  br label %bb.h

bb.n:                                             ; preds = %bb.l
  %i.p = ptrtoint ptr %.sroa.465.0.copyload to i64
  %i.q = inttoptr i64 %.sroa.566.0.copyload to ptr
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.465.0.copyload) ]
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.616.sroa.0.0 = phi i64 [ %i.p, %bb.n ], [ 1, %bb.o ]
  %.sroa.616.sroa.6.0 = phi ptr [ %i.q, %bb.n ], [ %.sroa.465.0.copyload, %bb.o ]
  %.sroa.616.sroa.7.0 = phi i64 [ %.sroa.667.0.copyload, %bb.n ], [ %.sroa.566.0.copyload, %bb.o ]
  store i64 %i.k, ptr %0, align 8
  %.sroa.616.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.616.sroa.0.0, ptr %.sroa.616.0..sroa_idx17, align 8
  %.sroa.616.sroa.6.0..sroa.616.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.616.sroa.6.0, ptr %.sroa.616.sroa.6.0..sroa.616.0..sroa_idx17.sroa_idx, align 8
  %.sroa.616.sroa.7.0..sroa.616.0..sroa_idx17.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.616.sroa.7.0, ptr %.sroa.616.sroa.7.0..sroa.616.0..sroa_idx17.sroa_idx, align 8
  br label %bb.h

bb.q:                                             ; preds = %bb.e
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.479.0.copyload = load ptr, ptr %.sroa.479.0..sroa_idx, align 8 ; 3 uses
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.580.0.copyload = load ptr, ptr %.sroa.580.0..sroa_idx, align 8 ; 3 uses
  %.sroa.681.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.677.sroa.0.0.copyload = load ptr, ptr %.sroa.681.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not92 = icmp eq i64 %i.m, -1
  br i1 %.not92, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -2, ptr %0, align 8
  br label %bb.h

bb.s:                                             ; preds = %bb.q
  %i.r = ptrtoint ptr %.sroa.479.0.copyload to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.479.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.580.0.copyload) ]
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.635.sroa.0.0 = phi i64 [ %i.r, %bb.s ], [ 2, %bb.t ]
  %.sroa.635.sroa.6.0 = phi ptr [ %.sroa.580.0.copyload, %bb.s ], [ %.sroa.479.0.copyload, %bb.t ]
  %.sroa.635.sroa.7.0 = phi ptr [ %.sroa.677.sroa.0.0.copyload, %bb.s ], [ %.sroa.580.0.copyload, %bb.t ]
  store i64 %i.m, ptr %0, align 8
  %.sroa.635.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.635.sroa.0.0, ptr %.sroa.635.0..sroa_idx36, align 8
  %.sroa.635.sroa.6.0..sroa.635.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.635.sroa.6.0, ptr %.sroa.635.sroa.6.0..sroa.635.0..sroa_idx36.sroa_idx, align 8
  %.sroa.635.sroa.7.0..sroa.635.0..sroa_idx36.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.635.sroa.7.0, ptr %.sroa.635.sroa.7.0..sroa.635.0..sroa_idx36.sroa_idx, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEIBX_NtB1K_16ColumnDefinitionEEINtB5_7ZipImplBW_B32_E3newB1O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtB9_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeB1a_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures16ColumnDefinitionENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBb_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEEIBX_NtNtB2j_10table_data9TableDataEEINtB5_7ZipImplBW_B3A_E3newB2l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB9_6option6OptionNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals15data_structures10ColumnTypeEEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeB1H_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtNtCs2bNgeUs5Jlc_6diesel22infer_schema_internals10table_data9TableDataENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs2bNgeUs5Jlc_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs5_NtCsjRvGck33osM_6diesel6resultNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5cause(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !288, !noundef !8 ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  %i.c = add i64 %i.a, -9223372036854775807
  %i.d = select i1 %i.b, i64 %i.c, i64 0
  switch i64 %i.d, label %bb.f [
    i64 0, label %bb.b
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !align !17, !noundef !8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !align !17, !noundef !8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !align !17, !noundef !8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.6.0 = phi ptr [ %i.p, %bb.e ], [ @56, %bb.b ], [ %i.h, %bb.c ], [ %i.l, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.n, %bb.e ], [ %0, %bb.b ], [ %i.f, %bb.c ], [ %i.j, %bb.d ], [ null, %bb.a ]
  %i.q = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.r = insertvalue { ptr, ptr } %i.q, ptr %.sroa.6.0, 1
  ret { ptr, ptr } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs5_NtCsjRvGck33osM_6diesel9migrationINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB5_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB1d_B1s_E3runB1A_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !17, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs5_NtCsjRvGck33osM_6diesel9migrationINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB5_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB1d_B1s_E4nameB1A_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !17, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs5_NtCsjRvGck33osM_6diesel9migrationINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB5_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB1d_B1s_E6revertB1A_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !17, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %2)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs5_NtCsjRvGck33osM_6diesel9migrationINtNtCs40k4W9msRzi_5alloc5boxed3BoxDINtB5_9MigrationNtNtNtNtCs2bNgeUs5Jlc_6diesel8database21multi_connection_impl7backend12MultiBackendEEL_EIB1d_B1s_E8metadataB1A_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !17, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef nonnull %i.a)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCsjRvGck33osM_6diesel12query_source5joinsNtB5_9OnKeywordINtNtNtB9_13query_builder5nodes14MiddleFragmentNtNtNtB9_2pg7backend2PgE8push_sqlCs2bNgeUs5Jlc_6diesel(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !16, !noundef !8
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

end_hunk_0
