Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_system_types-49358cb450e5d054.iceoryx2_bb_system_types.62c1b635620bc0d6-cgu.1?download=true
inline.NumInlined: 77
inline.NumDeleted: 54
begin_hunk_0_@_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath18from_path_and_file:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 8 dereferenceable(264) %2, i64 %i.l, i1 false), !noalias !19
  %i.ak = add i64 %i.l, %.sroa.0.0.i              ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.b, i64 %i.ak, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  store i8 0, ptr %i.an, align 1
  store i64 %i.ak, ptr %i.am, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %.thread, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @6, ptr %i.d, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtReNtB6_5Debug3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.48.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.ap, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types4path4PathNtB6_7Display3fmtBA_, ptr %.sroa.412.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.f, ptr %i.aq, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_name8FileNameNtB6_7Display3fmtBA_, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr @8, ptr %i.ar, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @_RNvXsi_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 1, ptr noundef nonnull @7, ptr noundef nonnull %i.d, ptr noundef nonnull @9, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.as, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath28from_path_and_file_unchecked.exit
  %.sink = phi i8 [ 1, %bb.h ], [ 0, %_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath28from_path_and_file_unchecked.exit ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath28from_path_and_file_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 264)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = alloca [255 x i8], align 1               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(255) %i.b, i8 0, i64 255, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.b, ptr nonnull align 8 %1, i64 %i.d, i1 false)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.sroa.0.0 = phi i64 [ %i.d, %bb.c ], [ %i.q, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull align 8 %2, i64 %i.f, i1 false)
  %i.h = add i64 %i.f, %.sroa.0.0                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %i.b, i64 %i.h, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  store i8 0, ptr %i.k, align 1
  store i64 %i.h, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 %i.d
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %i.o = icmp eq i8 %i.n, 47
  br i1 %i.o, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d
  store i8 47, ptr %i.p, align 1
  %i.q = add nuw nsw i64 %i.d, 1
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath4path(ptr dead_on_unwind noalias nofree noundef writable sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String8as_bytesCs8tG85QUCESg_24iceoryx2_bb_system_types(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) #11 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.d = icmp samesign eq i64 %i.c, 0
  br i1 %i.d, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core5slice4iter7RSplitNhNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBS_8FilePath4path0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvB23_10advance_byB3_NtB3u_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB2R_EEBU_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %i.b, %i.h
  br i1 %i.f, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core5slice4iter7RSplitNhNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBS_8FilePath4path0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvB23_10advance_byB3_NtB3u_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB2R_EEBU_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.03.0.i.i.i.i.i.i30 = phi i64 [ %i.c, %.lr.ph ], [ %i.i, %bb.b ]
  %i.g = phi ptr [ %i.e, %.lr.ph ], [ %i.h, %bb.b ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1 ; 3 uses
  %i.i = add i64 %.sroa.03.0.i.i.i.i.i.i30, -1    ; 4 uses
  %.val.i.i.i.i.i.i = load i8, ptr %i.h, align 1, !noalias !32, !noundef !5
  %i.j = icmp eq i8 %.val.i.i.i.i.i.i, 47
  br i1 %i.j, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.i, %i.c
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.i, 0
  %..sroa.7.0 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %..sroa.0.0 = select i1 %i.l, ptr @10, ptr %i.b
  br label %_RINvYINtNtNtCs8Chj7Szqq0n_4core5slice4iter7RSplitNhNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBS_8FilePath4path0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvB23_10advance_byB3_NtB3u_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB2R_EEBU_.exit.thread

_RINvYINtNtNtCs8Chj7Szqq0n_4core5slice4iter7RSplitNhNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBS_8FilePath4path0ENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldINtNtNtBa_3num7nonzero7NonZerojENCNvXs_NvB23_10advance_byB3_NtB3u_13SpecAdvanceBy15spec_advance_by0INtNtBa_6option6OptionB2R_EEBU_.exit.thread: ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.4.0 = phi i64 [ %..sroa.7.0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.05.0 = phi ptr [ %..sroa.0.0, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ]
  tail call void @_RNvXs6_NtCs8tG85QUCESg_24iceoryx2_bb_system_types4pathNtB5_4PathINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E13new_unchecked(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0, i64 noundef %.sroa.4.0) #11
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB2_8FilePath9file_name(ptr dead_on_unwind noalias nofree noundef writable sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String8as_bytesCs8tG85QUCESg_24iceoryx2_bb_system_types(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1) #11 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 6 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.d = icmp samesign eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.c
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %i.b, %i.h
  br i1 %i.f, label %_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.03.0.i.i24 = phi i64 [ %i.c, %.lr.ph ], [ %i.i, %bb.b ] ; 3 uses
  %i.g = phi ptr [ %i.e, %.lr.ph ], [ %i.h, %bb.b ]
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -1 ; 3 uses
  %i.i = add i64 %.sroa.03.0.i.i24, -1            ; 2 uses
  %.val.i.i = load i8, ptr %i.h, align 1, !noalias !37, !noundef !5
  %i.j = icmp eq i8 %.val.i.i, 47
  br i1 %i.j, label %_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit, label %bb.b

_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit: ; preds = %bb.c
  %i.k = icmp ult i64 %i.i, %i.c
  tail call void @llvm.assume(i1 %i.k)
  %i.l = sub nuw i64 %i.c, %.sroa.03.0.i.i24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.03.0.i.i24
  br label %_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit.thread

_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit.thread: ; preds = %bb.b, %bb.a, %_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit
  %.sroa.6.0 = phi i64 [ %i.l, %_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit ], [ %i.c, %bb.a ], [ %i.c, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.m, %_RNvXsg_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB5_5SplithNCNvMNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtBV_8FilePath9file_name0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backBX_.exit ], [ %i.b, %bb.a ], [ %i.b, %bb.b ]
  tail call void @_RNvXsk_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_nameNtB5_8FileNameINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E13new_unchecked(ptr noalias nofree noundef nonnull sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.6.0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs4_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB5_8FilePath19new_unchecked_const(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 264)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  store i8 0, ptr %i.d, align 1
  store i64 %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs8tG85QUCESg_24iceoryx2_bb_system_types12ipv4_addressNtB5_11Ipv4AddressNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %0, align 4, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %3, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %i.h, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @11, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1h_NtCs8Chj7Szqq0n_4core3fmtQNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41
  store ptr %i.b, ptr %i.a, align 8, !noalias !41
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs8tG85QUCESg_24iceoryx2_bb_system_types12ipv4_addressNtB5_11Ipv4AddressNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [4 x i8], align 4                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i32, ptr %0, align 4, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.c)
  store i32 %3, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.47.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %2, ptr %i.h, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXNtNtNtCs8Chj7Szqq0n_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.415.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @12, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXs3_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB5_8FilePathINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E13new_unchecked(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) initializes((0, 264)) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [264 x i8], align 8               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i8 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  store i8 0, ptr %i.d, align 1
  store i64 %2, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(264) %i.a, i64 264, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs3_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB5_8FilePathINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E22insert_bytes_unchecked(ptr noalias nofree noundef align 8 dereferenceable(264) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKjff_ENtB7_6String22insert_bytes_uncheckedCs8tG85QUCESg_24iceoryx2_bb_system_types(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #11
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB5_8FilePathNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsg_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKjff_ENtNtCs8Chj7Szqq0n_4core3fmt7Display3fmtCs8tG85QUCESg_24iceoryx2_bb_system_types, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6, !noundef !5
  %i.e = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @7, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs9_NtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_pathNtB5_8FilePathINtNtCs8Chj7Szqq0n_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvYNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathINtNtCs5kzjBmDVxDj_21iceoryx2_bb_container15semantic_string14SemanticStringKjff_E3newB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #11
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define range(i64 0, -4294967295) i64 @_RNvXs_NtCs8tG85QUCESg_24iceoryx2_bb_system_types12ipv4_addressNtB4_11Ipv4AddressINtNtCs8Chj7Szqq0n_4core7convert7TryFromReE8try_from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  store ptr %0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %1, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @13, ptr %i.j, align 8, !captures !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 37, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @14, ptr %i.i, align 8, !captures !4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 23, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 0, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsu_NtNtCs8Chj7Szqq0n_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 1) #11
  %.sroa.013.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.013.sroa.4.0.copyload = load i64, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8
  %.sroa.013.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.013.sroa.6.0.copyload = load i64, ptr %.sroa.013.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.013.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.013.sroa.7.0.copyload = load i64, ptr %.sroa.013.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %.sroa.013.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.013.sroa.8.0.copyload = load i64, ptr %.sroa.013.sroa.8.0..sroa_idx, align 8
  %.sroa.013.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.013.sroa.10.0.copyload = load i64, ptr %.sroa.013.sroa.10.0..sroa_idx, align 8
  %.sroa.013.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.013.sroa.12.0.copyload = load ptr, ptr %.sroa.013.sroa.12.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 15 uses
  %.sroa.013.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.013.sroa.13.0.copyload = load i64, ptr %.sroa.013.sroa.13.0..sroa_idx, align 8 ; 39 uses
  %.sroa.013.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.013.sroa.14.0.copyload = load ptr, ptr %.sroa.013.sroa.14.0..sroa_idx, align 8 ; 6 uses
  %.sroa.013.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.013.sroa.15.0.copyload = load i64, ptr %.sroa.013.sroa.15.0..sroa_idx, align 8 ; 16 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.1259.sroa.0.0.extract.trunc = trunc i64 %.sroa.013.sroa.6.0.copyload to i8
  %.sroa.1259.sroa.1177.0.extract.shift = lshr i64 %.sroa.013.sroa.6.0.copyload, 16
  %.sroa.1259.sroa.1177.0.extract.trunc = trunc i64 %.sroa.1259.sroa.1177.0.extract.shift to i8
  %.fr214.i.i.i.i151 = freeze i64 %.sroa.013.sroa.4.0.copyload
  %i.o = add nsw i64 %.sroa.013.sroa.15.0.copyload, -1 ; 4 uses
  %i.p = and i64 %.sroa.013.sroa.6.0.copyload, -16711936 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit105
  %.fr214.i.i.i.i161 = phi i64 [ %.fr214.i.i.i.i151, %bb.a ], [ %.fr214.i.i.i.i, %.loopexit105 ] ; 42 uses
  %.sroa.01.0160 = phi i32 [ 0, %bb.a ], [ %i.hy, %.loopexit105 ]
  %.sroa.23.0159 = phi i64 [ %.sroa.013.sroa.8.0.copyload, %bb.a ], [ %.sroa.23.2, %.loopexit105 ] ; 17 uses
  %.sroa.3464.0158 = phi i64 [ %.sroa.013.sroa.10.0.copyload, %bb.a ], [ %.sroa.3464.3, %.loopexit105 ] ; 16 uses
  %.sroa.41.0156 = phi i64 [ 0, %bb.a ], [ %.sroa.41.1, %.loopexit105 ] ; 12 uses
  %.sroa.5469.0154 = phi i64 [ 0, %bb.a ], [ %i.gi, %.loopexit105 ] ; 3 uses
  %.sroa.1259.sroa.0.0153 = phi i8 [ %.sroa.1259.sroa.0.0.extract.trunc, %bb.a ], [ %.sroa.1259.sroa.0.2, %.loopexit105 ] ; 17 uses
  %.sroa.1259.sroa.1177.0152 = phi i8 [ %.sroa.1259.sroa.1177.0.extract.trunc, %bb.a ], [ %.sroa.1259.sroa.1177.2, %.loopexit105 ] ; 14 uses
  switch i64 %.sroa.013.sroa.0.0.copyload, label %default.unreachable.i [
    i64 0, label %.preheader.i.i.i.i
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

.preheader.i.i.i.i:                               ; preds = %bb.b
  %i.q = trunc nuw i8 %.sroa.1259.sroa.1177.0152 to i1
  br i1 %i.q, label %_RNvXs_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3str4iter5SplitReEENtNtNtB8_6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  %i.r = trunc nuw i8 %.sroa.1259.sroa.0.0153 to i1 ; 2 uses
  %i.s = icmp eq i64 %.fr214.i.i.i.i161, 0
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i.i
  %.not.i.i.us.i.peel.i.i.i = icmp ult i64 %.fr214.i.i.i.i161, %.sroa.013.sroa.13.0.copyload
  br i1 %.not.i.i.us.i.peel.i.i.i, label %bb.d, label %.split.i.i.us.i.peel.i.i.i

.split.i.i.us.i.peel.i.i.i:                       ; preds = %bb.c
  %i.t = icmp eq i64 %.fr214.i.i.i.i161, %.sroa.013.sroa.13.0.copyload
  br i1 %i.t, label %bb.e, label %.split.us160.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %.fr214.i.i.i.i161
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !75, !noalias !76, !noundef !5
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.e, label %.split.us160.i.i.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.us.i.peel.i.i.i, %.lr.ph.preheader.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.sroa.12.0.copyload, i64 %.fr214.i.i.i.i161 ; 4 uses
  %i.y = icmp samesign eq i64 %.fr214.i.i.i.i161, %.sroa.013.sroa.13.0.copyload
  br i1 %i.y, label %.split165.us.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.x, align 1, !noalias !77, !noundef !5 ; 5 uses
  %i.aa = icmp sgt i8 %i.z, -1
  br i1 %i.aa, label %bb.g, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.peel.i.i.i

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.peel.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = and i8 %i.z, 31
  %i.ad = zext nneg i8 %i.ac to i32               ; 3 uses
  %i.ae = add nuw nsw i64 %.fr214.i.i.i.i161, 1
  %i.af = icmp samesign ne i64 %i.ae, %.sroa.013.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = load i8, ptr %i.ab, align 1, !noalias !77, !noundef !5
  %i.ah = shl nuw nsw i32 %i.ad, 6
  %i.ai = and i8 %i.ag, 63
  %i.aj = zext nneg i8 %i.ai to i32               ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = icmp samesign ugt i8 %i.z, -33
  br i1 %i.al, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.peel.i.i.i, label %bb.h

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit12.i.i.us.i.peel.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.an = add nuw nsw i64 %.fr214.i.i.i.i161, 2
  %i.ao = icmp samesign ne i64 %i.an, %.sroa.013.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = load i8, ptr %i.am, align 1, !noalias !77, !noundef !5
  %i.aq = shl nuw nsw i32 %i.aj, 6
  %i.ar = and i8 %i.ap, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as            ; 2 uses
  %i.au = shl nuw nsw i32 %i.ad, 12
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = icmp samesign ugt i8 %i.z, -17
  br i1 %i.aw, label %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.peel.i.i.i, label %bb.h

_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit16.i.i.us.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8tG85QUCESg_24iceoryx2_bb_system_types.exit14.i.i.us.i.peel.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ay = add nuw nsw i64 %.fr214.i.i.i.i161, 3
  %i.az = icmp samesign ne i64 %i.ay, %.sroa.013.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = load i8, ptr %i.ax, align 1, !noalias !77, !noundef !5
  %i.bb = shl nuw nsw i32 %i.ad, 18
  %i.bc = and i32 %i.bb, 1835008
end_hunk_0
