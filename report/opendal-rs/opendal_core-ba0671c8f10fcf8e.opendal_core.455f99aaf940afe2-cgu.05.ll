Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.05?download=true
inline.NumInlined: 664
inline.NumDeleted: 271
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsm_NtNtCs2GTOvRHBi2K_9quick_xml6events10attributesNtB5_9AttrErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt:bb.a
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 13, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @259)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.a, align 8
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 10, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @124, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @130)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXso_NtCs2GTOvRHBi2K_9quick_xml4nameNtB5_14NamespaceErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = load i64, ptr %0, align 8, !range !25, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i64 %i.g, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 13, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @197)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 20, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @197)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 22, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @197)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @265, i64 noundef 19, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @197)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @266, i64 noundef 21, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @197)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @267, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @130)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsp_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !27, !noundef !11 ; 3 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775798
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, 9223372036854775800
  %i.k = icmp ugt i64 %i.h, -9223372036854775801
  %i.l = select i1 %i.k, i64 %i.j, i64 2
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.g, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @207, i64 noundef 2, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @206)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.f, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @269, i64 noundef 6, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @268)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @271, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @270)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.d, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @273, i64 noundef 11, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @272)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.c, align 8
  %i.u = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @275, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @274)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @277, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @276)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.a, align 8
  %i.y = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @278)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.n, %bb.c ], [ %i.p, %bb.d ], [ %i.q, %bb.e ], [ %i.s, %bb.f ], [ %i.u, %bb.g ], [ %i.w, %bb.h ], [ %i.y, %bb.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsgxBkk5gSRhY_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsu_NtCs76KlaVGnJsc_4http3uriNtB5_10InvalidUriNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @281, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @280)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBF_5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBF_5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @283, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1261
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @284, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1262
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @285, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1263
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @286, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1264
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @287, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1265
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @288, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1266
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @289, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1267
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @290, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1268
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @291, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1269
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @292, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1270
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @293, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1271
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @294, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBO_5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1272
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBO_5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorENtNtBO_5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @295, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorENtNtBO_5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorENtNtBO_5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1273
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorENtNtBO_5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorENtNtBO_5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @296, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs6_NtCselJpgKOOZlr_6anyhow5errorNtB5_9ErrorImpl5error(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !11, !nonnull !11
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #33, !inline_history !1274
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorENtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @297, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @298, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @299, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @300, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !alias.scope !1277, !noundef !11 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775798
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775800
  %i.d = icmp ugt i64 %i.a, -9223372036854775801
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit

_RNvXsb_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ @155, %bb.c ], [ @177, %bb.d ], [ @187, %bb.h ], [ @181, %bb.e ], [ @183, %bb.f ], [ @185, %bb.g ], [ @179, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.k, %bb.h ], [ %i.h, %bb.e ], [ %i.i, %bb.f ], [ %i.j, %bb.g ], [ %0, %bb.a ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.8.0.i, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6errors5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @301, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !28, !alias.scope !1280, !noundef !11
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @137, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @302, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !range !24, !alias.scope !1283, !noundef !11
  %i.b = icmp eq i8 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @45, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml6escape17ParseCharRefErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 4 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @303, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @172, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @304, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @76, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs76KlaVGnJsc_4http3uri10InvalidUriNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs76KlaVGnJsc_4http3uri10InvalidUriNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs76KlaVGnJsc_4http3uri10InvalidUriNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs76KlaVGnJsc_4http3uri10InvalidUriNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @77, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs76KlaVGnJsc_4http5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs76KlaVGnJsc_4http5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs76KlaVGnJsc_4http5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @78, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @79, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @80, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @81, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !29, !alias.scope !1286, !noundef !11 ; 2 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775792
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp ult i64 %i.a, -9223372036854775793
  %..i = select i1 %i.c, ptr %0, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %..i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @174, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @82, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !alias.scope !1289, !noundef !11
  %i.b = icmp eq i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.i = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @155, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7SeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @83, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @305, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf13copy_to_sliceB8_(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1294, !noalias !1295, !noundef !11
  %.not.i.i = icmp eq ptr %i.b, null
  %.sroa.0.0.in.v.i.i = select i1 %.not.i.i, i64 24, i64 16
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i.i = load i64, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !1294, !noalias !1295, !noundef !11 ; 2 uses
  %i.c = icmp ult i64 %.sroa.0.0.i.i, %2
  br i1 %i.c, label %_RNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf17try_copy_to_sliceB8_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.030.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.sroa.9.029.i = phi i64 [ %2, %.lr.ph.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !alias.scope !1294, !noalias !1295, !noundef !11 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.i, null
  br i1 %.not.i20.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !1294, !noalias !1295, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !1294, !noalias !1295, !noundef !11
  %i.m = load i64, ptr %i.g, align 8, !alias.scope !1294, !noalias !1295, !noundef !11
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.f, align 8, !alias.scope !1294, !noalias !1295, !noundef !11 ; 2 uses
  %i.o = load i64, ptr %i.g, align 8, !alias.scope !1294, !noalias !1295, !noundef !11 ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.n
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #32, !noalias !1296
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noalias !1296, !noundef !11 ; 3 uses
  %i.t = load i64, ptr %i.h, align 8, !alias.scope !1294, !noalias !1295, !noundef !11 ; 5 uses
  %i.u = sub i64 %i.s, %i.t
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 %i.u) ; 2 uses
  %i.v = add i64 %.sroa.0.0.i.i.i, %i.t           ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %.not8.i.i = icmp ugt i64 %i.v, %i.s
  %or.cond.i.i = or i1 %i.w, %.not8.i.i
  br i1 %or.cond.i.i, label %bb.h, label %bb.i, !prof !36

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef %i.t, i64 noundef %i.v, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #32, !noalias !1296
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !noalias !1296, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.t
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.c
  %.sroa.4.0.i.i = phi i64 [ %i.m, %bb.d ], [ %.sroa.0.0.i.i.i, %bb.i ], [ 0, %bb.c ]
  %.sroa.0.0.i21.i = phi ptr [ %i.l, %bb.d ], [ %i.z, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.c ]
  %.sroa.0.0.i22.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.9.029.i, i64 %.sroa.4.0.i.i) ; 5 uses
  tail call void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull %.sroa.0.030.i, i64 noundef %.sroa.0.0.i22.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i21.i, i64 noundef %.sroa.0.0.i22.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307), !noalias !1296
  %i.aa = sub nuw nsw i64 %.sroa.9.029.i, %.sroa.0.0.i22.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.030.i, i64 %.sroa.0.0.i22.i
  tail call fastcc void @_RNvXsb_NtNtCs5XgW7KoffLW_12opendal_core5types6bufferNtB5_6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf7advance(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %.sroa.0.0.i22.i) #33, !noalias !1296
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %.loopexit, label %bb.b

_RNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtNtCsk2Y6yuwWMc1_5bytes3buf8buf_impl3Buf17try_copy_to_sliceB8_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.0.0.i.i, ptr %i.ad, align 8
  call void @_RNvCsk2Y6yuwWMc1_5bytes13panic_advance(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #28
  unreachable

.loopexit:                                        ; preds = %bb.j, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @84, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value10ToStrErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @85, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs76KlaVGnJsc_4http6header5value18InvalidHeaderValueNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @86, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorNtNtB8_5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsgxBkk5gSRhY_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @87, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsgxBkk5gSRhY_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @88, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @282, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsgxBkk5gSRhY_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @308, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideCs5XgW7KoffLW_12opendal_core(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @89, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8new_taskINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtBR_6future6future6Futurep6OutputuNtNtBR_6marker4SendEL_EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs9k1U6oT1TZJ_5tokio7runtime4task8new_taskINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBN_IB1j_DNtNtNtBR_6future6future6Futurep6OutputuNtNtBR_6marker4SendEL_EEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull align 8, ptr noundef nonnull, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsk2Y6yuwWMc1_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs9k1U6oT1TZJ_5tokio7runtime10task_hooksNtB2_9TaskHooks5spawn(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_threadINtNtCs6i54tJFfzR_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule8schedule(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCs4CtJ3uPHEZZ_4jiff5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs4CtJ3uPHEZZ_4jiff5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtCs76KlaVGnJsc_4http3uriNtB5_10InvalidUriNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs76KlaVGnJsc_4http3uri10InvalidUriNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtCs76KlaVGnJsc_4http5errorNtB2_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs76KlaVGnJsc_4http5errorNtB4_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtCs76KlaVGnJsc_4http5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCs76KlaVGnJsc_4http5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCs76KlaVGnJsc_4http6statusNtB5_17InvalidStatusCodeNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtCs76KlaVGnJsc_4http6statusNtB5_17InvalidStatusCodeNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCsdMEyVxnODSb_10serde_json5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCsdMEyVxnODSb_10serde_json5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs2_NtCsdMEyVxnODSb_10serde_json5errorNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsdMEyVxnODSb_10serde_json5error5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCs2GTOvRHBi2K_9quick_xml6errors9serializeNtB2_7DeErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtNtCs2GTOvRHBi2K_9quick_xml6errors9serializeNtB5_7SeErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsn_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_17InvalidHeaderNameNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCs76KlaVGnJsc_4http6header4nameNtB5_17InvalidHeaderNameNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCs76KlaVGnJsc_4http6header4name17InvalidHeaderNameNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs76KlaVGnJsc_4http6header5valueNtB5_10ToStrErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs76KlaVGnJsc_4http6header5valueNtB5_18InvalidHeaderValueNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCs76KlaVGnJsc_4http6header5valueNtB5_18InvalidHeaderValueNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsgxBkk5gSRhY_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsgxBkk5gSRhY_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsgxBkk5gSRhY_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs4_NtNtCsgxBkk5gSRhY_4core2io5errorNtB5_5ErrorNtNtB9_5error5Error5cause(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCsgxBkk5gSRhY_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCskkYVyhWgx5W_10serde_core2de5valueNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCskkYVyhWgx5W_10serde_core2de5valueNtB5_5ErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCskkYVyhWgx5W_10serde_core2de5value5ErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1
end_hunk_0
