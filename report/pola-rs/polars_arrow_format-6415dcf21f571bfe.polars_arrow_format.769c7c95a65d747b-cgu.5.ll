Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow_format-6415dcf21f571bfe.polars_arrow_format.769c7c95a65d747b-cgu.5?download=true
inline.NumInlined: 9
inline.NumDeleted: 9
begin_hunk_0_@_RNvXsf_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtB9_6errors14UnknownEnumTagEENtNtB9_6traits9TableRead11from_bufferB1O_:bb.a
  %.sroa.033.sroa.0.0.copyload = load ptr, ptr %i.h, align 8, !dbg !506 ; 2 uses
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !506 ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !506
  %.sroa.033.sroa.5.0.copyload = load i64, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !506
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !506
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 16, !dbg !506 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !503
  %i.j = icmp ugt i64 %.sroa.534.0.copyload, 2305843009213693951, !dbg !507
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !513, !prof !438

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %.sroa.534.0.copyload, 3, !dbg !507
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.sroa.0.0.copyload) ]
  %.not = icmp ugt i64 %i.k, %.sroa.033.sroa.5.0.copyload, !dbg !517
  br i1 %.not, label %bb.f, label %bb.g, !dbg !517

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !518
  store i8 1, ptr %i.l, align 16, !dbg !518
  br label %bb.h, !dbg !504

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !524
  store i8 1, ptr %i.m, align 16, !dbg !524
  br label %bb.h, !dbg !525

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !526
  store ptr %.sroa.033.sroa.0.0.copyload, ptr %i.n, align 8, !dbg !526
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !526
  store <2 x i64> %i.i, ptr %.sroa.031.sroa.4.0..sroa_idx, align 16, !dbg !526
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !526
  store i64 %.sroa.534.0.copyload, ptr %.sroa.432.0..sroa_idx, align 16, !dbg !526
  br label %bb.h, !dbg !525

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.b
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 16, !dbg !527
  ret void, !dbg !528
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtB9_6errors5ErrorEENtNtB9_6traits9TableRead11from_bufferB1O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 !dbg !529 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !530
  call void @_RNvNtCsfyRUffk9zcp_6planus5impls17array_from_buffer(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, i64 noundef %2), !dbg !530
  %i.b = load i64, ptr %i.a, align 16, !dbg !531, !range !410, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1, !dbg !533
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !533

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !534
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !534
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !535
  %i.f = load <2 x i64>, ptr %i.d, align 16, !dbg !534
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !535
  %i.g = load <2 x i64>, ptr %.sroa.539.0..sroa_idx, align 16, !dbg !534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !542
  store <2 x i64> %i.f, ptr %i.e, align 16, !dbg !535
  store <2 x i64> %i.g, ptr %.sroa.242.0..sroa_idx, align 16, !dbg !535
  br label %bb.h, !dbg !543

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !545
  %.sroa.033.sroa.0.0.copyload = load ptr, ptr %i.h, align 8, !dbg !545 ; 2 uses
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !545 ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !545
  %.sroa.033.sroa.5.0.copyload = load i64, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !545
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !545
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 16, !dbg !545 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !542
  %i.j = icmp ugt i64 %.sroa.534.0.copyload, 4611686018427387903, !dbg !546
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !552, !prof !438

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %.sroa.534.0.copyload, 2, !dbg !546
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.sroa.0.0.copyload) ]
  %.not = icmp ugt i64 %i.k, %.sroa.033.sroa.5.0.copyload, !dbg !556
  br i1 %.not, label %bb.f, label %bb.g, !dbg !556

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !557
  store i8 1, ptr %i.l, align 16, !dbg !557
  br label %bb.h, !dbg !543

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !563
  store i8 1, ptr %i.m, align 16, !dbg !563
  br label %bb.h, !dbg !564

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !565
  store ptr %.sroa.033.sroa.0.0.copyload, ptr %i.n, align 8, !dbg !565
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !565
  store <2 x i64> %i.i, ptr %.sroa.031.sroa.4.0..sroa_idx, align 16, !dbg !565
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !565
  store i64 %.sroa.534.0.copyload, ptr %.sroa.432.0..sroa_idx, align 16, !dbg !565
  br label %bb.h, !dbg !564

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.b
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 16, !dbg !566
  ret void, !dbg !567
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefENtNtB9_6traits9TableRead11from_bufferB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 !dbg !568 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !569
  call void @_RNvNtCsfyRUffk9zcp_6planus5impls17array_from_buffer(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, i64 noundef %2), !dbg !569
  %i.b = load i64, ptr %i.a, align 16, !dbg !570, !range !410, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1, !dbg !572
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !572

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !573
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !573
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !574
  %i.f = load <2 x i64>, ptr %i.d, align 16, !dbg !573
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !574
  %i.g = load <2 x i64>, ptr %.sroa.539.0..sroa_idx, align 16, !dbg !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !581
  store <2 x i64> %i.f, ptr %i.e, align 16, !dbg !574
  store <2 x i64> %i.g, ptr %.sroa.242.0..sroa_idx, align 16, !dbg !574
  br label %bb.h, !dbg !582

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !584
  %.sroa.033.sroa.0.0.copyload = load ptr, ptr %i.h, align 8, !dbg !584 ; 2 uses
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !584 ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !584
  %.sroa.033.sroa.5.0.copyload = load i64, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !584
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !584
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 16, !dbg !584 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !581
  %i.j = icmp ugt i64 %.sroa.534.0.copyload, 1152921504606846975, !dbg !585
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !591, !prof !438

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %.sroa.534.0.copyload, 4, !dbg !585
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.sroa.0.0.copyload) ]
  %.not = icmp ugt i64 %i.k, %.sroa.033.sroa.5.0.copyload, !dbg !595
  br i1 %.not, label %bb.f, label %bb.g, !dbg !595

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !596
  store i8 1, ptr %i.l, align 16, !dbg !596
  br label %bb.h, !dbg !582

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !602
  store i8 1, ptr %i.m, align 16, !dbg !602
  br label %bb.h, !dbg !603

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !604
  store ptr %.sroa.033.sroa.0.0.copyload, ptr %i.n, align 8, !dbg !604
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !604
  store <2 x i64> %i.i, ptr %.sroa.031.sroa.4.0..sroa_idx, align 16, !dbg !604
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !604
  store i64 %.sroa.534.0.copyload, ptr %.sroa.432.0..sroa_idx, align 16, !dbg !604
  br label %bb.h, !dbg !603

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.b
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 16, !dbg !605
  ret void, !dbg !606
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefENtNtB9_6traits9TableRead11from_bufferB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 !dbg !607 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !608
  call void @_RNvNtCsfyRUffk9zcp_6planus5impls17array_from_buffer(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, i64 noundef %2), !dbg !608
  %i.b = load i64, ptr %i.a, align 16, !dbg !609, !range !410, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1, !dbg !611
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !611

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !612
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !612
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !613
  %i.f = load <2 x i64>, ptr %i.d, align 16, !dbg !612
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !613
  %i.g = load <2 x i64>, ptr %.sroa.539.0..sroa_idx, align 16, !dbg !612
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !620
  store <2 x i64> %i.f, ptr %i.e, align 16, !dbg !613
  store <2 x i64> %i.g, ptr %.sroa.242.0..sroa_idx, align 16, !dbg !613
  br label %bb.h, !dbg !621

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !623
  %.sroa.033.sroa.0.0.copyload = load ptr, ptr %i.h, align 8, !dbg !623 ; 2 uses
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !623 ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !623
  %.sroa.033.sroa.5.0.copyload = load i64, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !623
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !623
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 16, !dbg !623 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !620
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.534.0.copyload, i64 24), !dbg !624 ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 1, !dbg !624
  br i1 %4, label %bb.e, label %bb.d, !dbg !630, !prof !438

bb.d:                                             ; preds = %bb.c
  %5 = extractvalue { i64, i1 } %3, 0, !dbg !624
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.sroa.0.0.copyload) ]
  %.not = icmp ugt i64 %5, %.sroa.033.sroa.5.0.copyload, !dbg !634
  br i1 %.not, label %bb.f, label %bb.g, !dbg !634

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !635
  store i8 1, ptr %i.j, align 16, !dbg !635
  br label %bb.h, !dbg !621

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !641
  store i8 1, ptr %i.k, align 16, !dbg !641
  br label %bb.h, !dbg !642

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !643
  store ptr %.sroa.033.sroa.0.0.copyload, ptr %i.l, align 8, !dbg !643
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !643
  store <2 x i64> %i.i, ptr %.sroa.031.sroa.4.0..sroa_idx, align 16, !dbg !643
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !643
  store i64 %.sroa.534.0.copyload, ptr %.sroa.432.0..sroa_idx, align 16, !dbg !643
  br label %bb.h, !dbg !642

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.b
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 16, !dbg !644
  ret void, !dbg !645
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9BufferRefENtNtB9_6traits9TableRead11from_bufferB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 !dbg !646 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !647
  call void @_RNvNtCsfyRUffk9zcp_6planus5impls17array_from_buffer(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, i64 noundef %2), !dbg !647
  %i.b = load i64, ptr %i.a, align 16, !dbg !648, !range !410, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1, !dbg !650
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !650

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !651
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !651
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !652
  %i.f = load <2 x i64>, ptr %i.d, align 16, !dbg !651
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !652
  %i.g = load <2 x i64>, ptr %.sroa.539.0..sroa_idx, align 16, !dbg !651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !659
  store <2 x i64> %i.f, ptr %i.e, align 16, !dbg !652
  store <2 x i64> %i.g, ptr %.sroa.242.0..sroa_idx, align 16, !dbg !652
  br label %bb.h, !dbg !660

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !662
  %.sroa.033.sroa.0.0.copyload = load ptr, ptr %i.h, align 8, !dbg !662 ; 2 uses
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !662 ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !662
  %.sroa.033.sroa.5.0.copyload = load i64, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !662
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !662
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 16, !dbg !662 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !659
  %i.j = icmp ugt i64 %.sroa.534.0.copyload, 1152921504606846975, !dbg !663
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !669, !prof !438

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %.sroa.534.0.copyload, 4, !dbg !663
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.sroa.0.0.copyload) ]
  %.not = icmp ugt i64 %i.k, %.sroa.033.sroa.5.0.copyload, !dbg !673
  br i1 %.not, label %bb.f, label %bb.g, !dbg !673

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !674
  store i8 1, ptr %i.l, align 16, !dbg !674
  br label %bb.h, !dbg !660

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !680
  store i8 1, ptr %i.m, align 16, !dbg !680
  br label %bb.h, !dbg !681

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !682
  store ptr %.sroa.033.sroa.0.0.copyload, ptr %i.n, align 8, !dbg !682
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !682
  store <2 x i64> %i.i, ptr %.sroa.031.sroa.4.0..sroa_idx, align 16, !dbg !682
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !682
  store i64 %.sroa.534.0.copyload, ptr %.sroa.432.0..sroa_idx, align 16, !dbg !682
  br label %bb.h, !dbg !681

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.b
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 16, !dbg !683
  ret void, !dbg !684
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorlENtNtB9_6traits9TableRead11from_bufferCsabmDd0H9iBj_19polars_arrow_format(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 !dbg !685 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !686
  call void @_RNvNtCsfyRUffk9zcp_6planus5impls17array_from_buffer(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, i64 noundef %2), !dbg !686
  %i.b = load i64, ptr %i.a, align 16, !dbg !687, !range !410, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1, !dbg !689
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !689

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !690
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !690
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !691
  %i.f = load <2 x i64>, ptr %i.d, align 16, !dbg !690
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !691
  %i.g = load <2 x i64>, ptr %.sroa.539.0..sroa_idx, align 16, !dbg !690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !698
  store <2 x i64> %i.f, ptr %i.e, align 16, !dbg !691
  store <2 x i64> %i.g, ptr %.sroa.242.0..sroa_idx, align 16, !dbg !691
  br label %bb.h, !dbg !699

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !701
  %.sroa.033.sroa.0.0.copyload = load ptr, ptr %i.h, align 8, !dbg !701 ; 2 uses
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !701 ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !701
  %.sroa.033.sroa.5.0.copyload = load i64, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !701
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !701
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 16, !dbg !701 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !698
  %i.j = icmp ugt i64 %.sroa.534.0.copyload, 4611686018427387903, !dbg !702
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !708, !prof !438

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %.sroa.534.0.copyload, 2, !dbg !702
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.sroa.0.0.copyload) ]
  %.not = icmp ugt i64 %i.k, %.sroa.033.sroa.5.0.copyload, !dbg !712
  br i1 %.not, label %bb.f, label %bb.g, !dbg !712

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !713
  store i8 1, ptr %i.l, align 16, !dbg !713
  br label %bb.h, !dbg !699

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !719
  store i8 1, ptr %i.m, align 16, !dbg !719
  br label %bb.h, !dbg !720

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !721
  store ptr %.sroa.033.sroa.0.0.copyload, ptr %i.n, align 8, !dbg !721
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !721
  store <2 x i64> %i.i, ptr %.sroa.031.sroa.4.0..sroa_idx, align 16, !dbg !721
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !721
  store i64 %.sroa.534.0.copyload, ptr %.sroa.432.0..sroa_idx, align 16, !dbg !721
  br label %bb.h, !dbg !720

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.b
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 16, !dbg !722
  ret void, !dbg !723
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsf_NtNtCsfyRUffk9zcp_6planus7vectors6vectorINtB5_6VectorxENtNtB9_6traits9TableRead11from_bufferCsabmDd0H9iBj_19polars_arrow_format(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 17)) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 !dbg !724 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !725
  call void @_RNvNtCsfyRUffk9zcp_6planus5impls17array_from_buffer(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, i64 noundef %2), !dbg !725
  %i.b = load i64, ptr %i.a, align 16, !dbg !726, !range !410, !noundef !13
  %i.c = trunc nuw i64 %i.b to i1, !dbg !728
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !728

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !729
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !729
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !730
  %i.f = load <2 x i64>, ptr %i.d, align 16, !dbg !729
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !730
  %i.g = load <2 x i64>, ptr %.sroa.539.0..sroa_idx, align 16, !dbg !729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !737
  store <2 x i64> %i.f, ptr %i.e, align 16, !dbg !730
  store <2 x i64> %i.g, ptr %.sroa.242.0..sroa_idx, align 16, !dbg !730
  br label %bb.h, !dbg !738

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !740
  %.sroa.033.sroa.0.0.copyload = load ptr, ptr %i.h, align 8, !dbg !740 ; 2 uses
  %.sroa.033.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !740 ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !740
  %.sroa.033.sroa.5.0.copyload = load i64, ptr %.sroa.033.sroa.5.0..sroa_idx, align 16, !dbg !740
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !740
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 16, !dbg !740 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !737
  %i.j = icmp ugt i64 %.sroa.534.0.copyload, 2305843009213693951, !dbg !741
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !747, !prof !438

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %.sroa.534.0.copyload, 3, !dbg !741
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.033.sroa.0.0.copyload) ]
  %.not = icmp ugt i64 %i.k, %.sroa.033.sroa.5.0.copyload, !dbg !751
  br i1 %.not, label %bb.f, label %bb.g, !dbg !751

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !752
  store i8 1, ptr %i.l, align 16, !dbg !752
  br label %bb.h, !dbg !738

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !758
  store i8 1, ptr %i.m, align 16, !dbg !758
  br label %bb.h, !dbg !759

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !760
  store ptr %.sroa.033.sroa.0.0.copyload, ptr %i.n, align 8, !dbg !760
  %.sroa.031.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !760
  store <2 x i64> %i.i, ptr %.sroa.031.sroa.4.0..sroa_idx, align 16, !dbg !760
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !760
  store i64 %.sroa.534.0.copyload, ptr %.sroa.432.0..sroa_idx, align 16, !dbg !760
  br label %bb.h, !dbg !759

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e, %bb.b
  %.sink = phi i64 [ 1, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i64 %.sink, ptr %0, align 16, !dbg !761
  ret void, !dbg !762
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf11KeyValueRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEINtNtNtB3d_7vectors6vector6VectorB13_EEB1F_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12TensorDimRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEINtNtNtB3e_7vectors6vector6VectorB13_EEB1F_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf7FeatureNtNtCsfyRUffk9zcp_6planus6errors14UnknownEnumTagEINtNtNtB38_7vectors6vector6VectorB13_EEB1F_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesINtNtBa_6result6ResultNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8FieldRefNtNtCsfyRUffk9zcp_6planus6errors5ErrorEINtNtNtB39_7vectors6vector6VectorB13_EEB1F_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf12FieldNodeRefINtNtNtCsfyRUffk9zcp_6planus7vectors6vector6VectorB13_EEB1j_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf8BlockRefINtNtNtCsfyRUffk9zcp_6planus7vectors6vector6VectorB13_EEB1j_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf9BufferRefINtNtNtCsfyRUffk9zcp_6planus7vectors6vector6VectorB13_EEB1j_(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entrieslINtNtNtCsfyRUffk9zcp_6planus7vectors6vector6VectorlEECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesxINtNtNtCsfyRUffk9zcp_6planus7vectors6vector6VectorxEECsabmDd0H9iBj_19polars_arrow_format(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsfyRUffk9zcp_6planus5impls17array_from_buffer(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 16 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.dbg.cu = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!5 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !6, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/polars-arrow-format-0.2.1/src/lib.rs/@/polars_arrow_format.769c7c95a65d747b-cgu.5", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/polars-arrow-format-0.2.1")
!7 = distinct !DISubprogram(name: "advance_as_array<16>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset16advance_as_arrayKj10_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 36, type: !12, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!8 = !DIFile(filename: "src/slice_helpers.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/planus-1.1.1", checksumkind: CSK_MD5, checksum: "afac9222b556750032658604c8f064d5")
!9 = !DINamespace(name: "SliceWithStartOffset", scope: !10)
!10 = !DINamespace(name: "slice_helpers", scope: !11)
!11 = !DINamespace(name: "planus", scope: null)
!12 = !DISubroutineType(types: !13)
!13 = !{}
!14 = !DILocation(line: 40, column: 22, scope: !7)
!15 = !DILocation(line: 977, column: 16, scope: !16, inlinedAt: !21)
!16 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !18, file: !17, line: 971, type: !12, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!17 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7da08fe6de751b90c62a398311fb672e")
!18 = !DINamespace(name: "{impl#11}", scope: !19)
!19 = !DINamespace(name: "num", scope: !20)
!20 = !DINamespace(name: "core", scope: null)
!21 = !DILocation(line: 368, column: 32, scope: !22, inlinedAt: !27)
!22 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE3getCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 366, type: !12, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!23 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "949bb7af491f1c6ef62f3972592a0143")
!24 = !DINamespace(name: "{impl#4}", scope: !25)
!25 = !DINamespace(name: "index", scope: !26)
!26 = !DINamespace(name: "slice", scope: !20)
!27 = !DILocation(line: 576, column: 15, scope: !28, inlinedAt: !31)
!28 = distinct !DISubprogram(name: "get<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh3getINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 572, type: !12, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!29 = !DIFile(filename: "library/core/src/slice/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "b606e5d97bff599edd0dcbc6067a14f1")
!30 = !DINamespace(name: "{impl#0}", scope: !26)
!31 = !DILocation(line: 42, column: 14, scope: !7)
!32 = !DILocation(line: 42, column: 26, scope: !7)
!33 = !DILocation(line: 369, column: 16, scope: !22, inlinedAt: !27)
!34 = !DILocation(line: 89, column: 24, scope: !35, inlinedAt: !37)
!35 = distinct !DILexicalBlock(scope: !36, file: !23, line: 87, column: 5)
!36 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!37 = !DILocation(line: 372, column: 29, scope: !22, inlinedAt: !27)
!38 = !DILocation(line: 46, column: 32, scope: !39)
!39 = distinct !DILexicalBlock(scope: !7, file: !8, line: 40, column: 9)
!40 = !DILocation(line: 44, column: 9, scope: !39)
!41 = !DILocation(line: 48, column: 6, scope: !7)
!42 = !DILocation(line: 0, scope: !7)
!43 = distinct !DISubprogram(name: "advance_as_array<1>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset16advance_as_arrayKj1_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 36, type: !12, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!44 = !DILocation(line: 977, column: 16, scope: !45, inlinedAt: !46)
!45 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !18, file: !17, line: 971, type: !12, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!46 = !DILocation(line: 368, column: 32, scope: !47, inlinedAt: !48)
!47 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE3getCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 366, type: !12, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!48 = !DILocation(line: 576, column: 15, scope: !49, inlinedAt: !50)
!49 = distinct !DISubprogram(name: "get<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh3getINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 572, type: !12, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!50 = !DILocation(line: 42, column: 14, scope: !43)
!51 = !DILocation(line: 40, column: 22, scope: !43)
!52 = !DILocation(line: 89, column: 24, scope: !53, inlinedAt: !55)
!53 = distinct !DILexicalBlock(scope: !54, file: !23, line: 87, column: 5)
!54 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!55 = !DILocation(line: 372, column: 29, scope: !47, inlinedAt: !48)
!56 = !DILocation(line: 46, column: 32, scope: !57)
!57 = distinct !DILexicalBlock(scope: !43, file: !8, line: 40, column: 9)
!58 = !DILocation(line: 44, column: 9, scope: !57)
!59 = !DILocation(line: 48, column: 6, scope: !43)
!60 = !DILocation(line: 0, scope: !43)
!61 = distinct !DISubprogram(name: "advance_as_array<2>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset16advance_as_arrayKj2_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 36, type: !12, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!62 = !DILocation(line: 40, column: 22, scope: !61)
!63 = !DILocation(line: 977, column: 16, scope: !64, inlinedAt: !65)
!64 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !18, file: !17, line: 971, type: !12, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!65 = !DILocation(line: 368, column: 32, scope: !66, inlinedAt: !67)
!66 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE3getCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 366, type: !12, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!67 = !DILocation(line: 576, column: 15, scope: !68, inlinedAt: !69)
!68 = distinct !DISubprogram(name: "get<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh3getINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 572, type: !12, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!69 = !DILocation(line: 42, column: 14, scope: !61)
!70 = !DILocation(line: 42, column: 26, scope: !61)
!71 = !DILocation(line: 369, column: 16, scope: !66, inlinedAt: !67)
!72 = !DILocation(line: 89, column: 24, scope: !73, inlinedAt: !75)
!73 = distinct !DILexicalBlock(scope: !74, file: !23, line: 87, column: 5)
!74 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!75 = !DILocation(line: 372, column: 29, scope: !66, inlinedAt: !67)
!76 = !DILocation(line: 46, column: 32, scope: !77)
!77 = distinct !DILexicalBlock(scope: !61, file: !8, line: 40, column: 9)
!78 = !DILocation(line: 44, column: 9, scope: !77)
!79 = !DILocation(line: 48, column: 6, scope: !61)
!80 = !DILocation(line: 0, scope: !61)
!81 = distinct !DISubprogram(name: "advance_as_array<4>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset16advance_as_arrayKj4_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 36, type: !12, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!82 = !DILocation(line: 40, column: 22, scope: !81)
!83 = !DILocation(line: 977, column: 16, scope: !84, inlinedAt: !85)
!84 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !18, file: !17, line: 971, type: !12, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!85 = !DILocation(line: 368, column: 32, scope: !86, inlinedAt: !87)
!86 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE3getCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 366, type: !12, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!87 = !DILocation(line: 576, column: 15, scope: !88, inlinedAt: !89)
!88 = distinct !DISubprogram(name: "get<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh3getINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 572, type: !12, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!89 = !DILocation(line: 42, column: 14, scope: !81)
!90 = !DILocation(line: 42, column: 26, scope: !81)
!91 = !DILocation(line: 369, column: 16, scope: !86, inlinedAt: !87)
!92 = !DILocation(line: 89, column: 24, scope: !93, inlinedAt: !95)
!93 = distinct !DILexicalBlock(scope: !94, file: !23, line: 87, column: 5)
!94 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!95 = !DILocation(line: 372, column: 29, scope: !86, inlinedAt: !87)
!96 = !DILocation(line: 46, column: 32, scope: !97)
!97 = distinct !DILexicalBlock(scope: !81, file: !8, line: 40, column: 9)
!98 = !DILocation(line: 44, column: 9, scope: !97)
!99 = !DILocation(line: 48, column: 6, scope: !81)
!100 = !DILocation(line: 0, scope: !81)
!101 = distinct !DISubprogram(name: "advance_as_array<8>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset16advance_as_arrayKj8_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 36, type: !12, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!102 = !DILocation(line: 40, column: 22, scope: !101)
!103 = !DILocation(line: 977, column: 16, scope: !104, inlinedAt: !105)
!104 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !18, file: !17, line: 971, type: !12, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!105 = !DILocation(line: 368, column: 32, scope: !106, inlinedAt: !107)
!106 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE3getCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 366, type: !12, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!107 = !DILocation(line: 576, column: 15, scope: !108, inlinedAt: !109)
!108 = distinct !DISubprogram(name: "get<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh3getINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 572, type: !12, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!109 = !DILocation(line: 42, column: 14, scope: !101)
!110 = !DILocation(line: 42, column: 26, scope: !101)
!111 = !DILocation(line: 369, column: 16, scope: !106, inlinedAt: !107)
!112 = !DILocation(line: 89, column: 24, scope: !113, inlinedAt: !115)
!113 = distinct !DILexicalBlock(scope: !114, file: !23, line: 87, column: 5)
!114 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!115 = !DILocation(line: 372, column: 29, scope: !106, inlinedAt: !107)
!116 = !DILocation(line: 46, column: 32, scope: !117)
!117 = distinct !DILexicalBlock(scope: !101, file: !8, line: 40, column: 9)
!118 = !DILocation(line: 44, column: 9, scope: !117)
!119 = !DILocation(line: 48, column: 6, scope: !101)
!120 = !DILocation(line: 0, scope: !101)
!121 = distinct !DISubprogram(name: "unchecked_advance_as_array<16>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset26unchecked_advance_as_arrayKj10_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!122 = !DILocation(line: 57, column: 22, scope: !121)
!123 = !DILocation(line: 89, column: 24, scope: !124, inlinedAt: !126)
!124 = distinct !DILexicalBlock(scope: !125, file: !23, line: 87, column: 5)
!125 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!126 = !DILocation(line: 411, column: 13, scope: !127, inlinedAt: !129)
!127 = distinct !DILexicalBlock(scope: !128, file: !23, line: 410, column: 13)
!128 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE13get_uncheckedCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 392, type: !12, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!129 = !DILocation(line: 646, column: 26, scope: !130, inlinedAt: !131)
!130 = distinct !DISubprogram(name: "get_unchecked<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh13get_uncheckedINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 639, type: !12, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!131 = !DILocation(line: 57, column: 34, scope: !121)
!132 = !DILocation(line: 60, column: 32, scope: !133)
!133 = distinct !DILexicalBlock(scope: !121, file: !8, line: 57, column: 9)
!134 = !DILocation(line: 62, column: 6, scope: !121)
!135 = distinct !DISubprogram(name: "unchecked_advance_as_array<24>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset26unchecked_advance_as_arrayKj18_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!136 = !DILocation(line: 57, column: 22, scope: !135)
!137 = !DILocation(line: 89, column: 24, scope: !138, inlinedAt: !140)
!138 = distinct !DILexicalBlock(scope: !139, file: !23, line: 87, column: 5)
!139 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!140 = !DILocation(line: 411, column: 13, scope: !141, inlinedAt: !143)
!141 = distinct !DILexicalBlock(scope: !142, file: !23, line: 410, column: 13)
!142 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE13get_uncheckedCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 392, type: !12, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!143 = !DILocation(line: 646, column: 26, scope: !144, inlinedAt: !145)
!144 = distinct !DISubprogram(name: "get_unchecked<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh13get_uncheckedINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 639, type: !12, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!145 = !DILocation(line: 57, column: 34, scope: !135)
!146 = !DILocation(line: 60, column: 32, scope: !147)
!147 = distinct !DILexicalBlock(scope: !135, file: !8, line: 57, column: 9)
!148 = !DILocation(line: 62, column: 6, scope: !135)
!149 = distinct !DISubprogram(name: "unchecked_advance_as_array<4>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset26unchecked_advance_as_arrayKj4_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!150 = !DILocation(line: 57, column: 22, scope: !149)
!151 = !DILocation(line: 89, column: 24, scope: !152, inlinedAt: !154)
!152 = distinct !DILexicalBlock(scope: !153, file: !23, line: 87, column: 5)
!153 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!154 = !DILocation(line: 411, column: 13, scope: !155, inlinedAt: !157)
!155 = distinct !DILexicalBlock(scope: !156, file: !23, line: 410, column: 13)
!156 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE13get_uncheckedCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 392, type: !12, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!157 = !DILocation(line: 646, column: 26, scope: !158, inlinedAt: !159)
!158 = distinct !DISubprogram(name: "get_unchecked<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh13get_uncheckedINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 639, type: !12, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!159 = !DILocation(line: 57, column: 34, scope: !149)
!160 = !DILocation(line: 60, column: 32, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !8, line: 57, column: 9)
!162 = !DILocation(line: 62, column: 6, scope: !149)
!163 = distinct !DISubprogram(name: "unchecked_advance_as_array<8>", linkageName: "_RINvMNtCsfyRUffk9zcp_6planus13slice_helpersNtB3_20SliceWithStartOffset26unchecked_advance_as_arrayKj8_ECsabmDd0H9iBj_19polars_arrow_format", scope: !9, file: !8, line: 53, type: !12, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!164 = !DILocation(line: 57, column: 22, scope: !163)
!165 = !DILocation(line: 89, column: 24, scope: !166, inlinedAt: !168)
!166 = distinct !DILexicalBlock(scope: !167, file: !23, line: 87, column: 5)
!167 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!168 = !DILocation(line: 411, column: 13, scope: !169, inlinedAt: !171)
!169 = distinct !DILexicalBlock(scope: !170, file: !23, line: 410, column: 13)
!170 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE13get_uncheckedCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 392, type: !12, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!171 = !DILocation(line: 646, column: 26, scope: !172, inlinedAt: !173)
!172 = distinct !DISubprogram(name: "get_unchecked<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh13get_uncheckedINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 639, type: !12, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!173 = !DILocation(line: 57, column: 34, scope: !163)
!174 = !DILocation(line: 60, column: 32, scope: !175)
!175 = distinct !DILexicalBlock(scope: !163, file: !8, line: 57, column: 9)
!176 = !DILocation(line: 62, column: 6, scope: !163)
!177 = distinct !DISubprogram(name: "advance_as_array<16, 8>", linkageName: "_RINvMs_NtCsfyRUffk9zcp_6planus13slice_helpersINtB5_20ArrayWithStartOffsetKj10_E16advance_as_arrayKj8_ECsabmDd0H9iBj_19polars_arrow_format", scope: !178, file: !8, line: 79, type: !12, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!178 = !DINamespace(name: "ArrayWithStartOffset", scope: !10)
!179 = !DILocation(line: 977, column: 16, scope: !180, inlinedAt: !181)
!180 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !18, file: !17, line: 971, type: !12, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!181 = !DILocation(line: 368, column: 32, scope: !182, inlinedAt: !183)
!182 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE3getCsabmDd0H9iBj_19polars_arrow_format", scope: !24, file: !23, line: 366, type: !12, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!183 = !DILocation(line: 576, column: 15, scope: !184, inlinedAt: !185)
!184 = distinct !DISubprogram(name: "get<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh3getINtNtNtB5_3ops5range5RangejEECsabmDd0H9iBj_19polars_arrow_format", scope: !30, file: !29, line: 572, type: !12, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!185 = !DILocation(line: 85, column: 14, scope: !177)
!186 = !DILocation(line: 83, column: 22, scope: !177)
!187 = !DILocation(line: 89, column: 24, scope: !188, inlinedAt: !190)
!188 = distinct !DILexicalBlock(scope: !189, file: !23, line: 87, column: 5)
!189 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsabmDd0H9iBj_19polars_arrow_format", scope: !25, file: !23, line: 82, type: !12, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !13)
!190 = !DILocation(line: 372, column: 29, scope: !182, inlinedAt: !183)
!191 = !DILocation(line: 89, column: 32, scope: !192)
!192 = distinct !DILexicalBlock(scope: !177, file: !8, line: 83, column: 9)
!193 = !DILocation(line: 87, column: 9, scope: !192)
!194 = !DILocation(line: 91, column: 6, scope: !177)
end_hunk_0
