Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_python-5edf94d4479ec0ca.polars_python.a5d715ccd120a5f3-cgu.11?download=true
inline.NumInlined: 17758
inline.NumDeleted: 7698
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
loop-unroll.NumUnrolledNotLatch: 5
begin_hunk_0_@_RINvXs5_NtCsk1caaszg7Cl_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtB2t_27RollingOptionsDynamicWindowNtB1j_11Deserialize11deserialize9___VisitorECseeLknQCOKOd_13polars_python:bb.a
  call fastcc void @_RINvNvXs7_NtCsk1caaszg7Cl_10serde_json2deINtB8_9SeqAccesspENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !dbg !53611, !noalias !53423
  %i.ca = load i8, ptr %i.u, align 8, !dbg !53611, !range !2055, !noalias !53422, !noundef !1855
  %i.cb = trunc nuw i8 %i.ca to i1, !dbg !53611
  br i1 %i.cb, label %bb.s, label %bb.t, !dbg !53612

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !53613
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !53613, !noalias !53422, !nonnull !1855, !align !1882, !noundef !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !53614, !noalias !53422
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53615

bb.t:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 1, !dbg !53616
  %i.cf = load i8, ptr %i.ce, align 1, !dbg !53616, !range !2055, !noalias !53422, !noundef !1855
  %i.cg = trunc nuw i8 %i.cf to i1, !dbg !53616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !53614, !noalias !53422
  br i1 %i.cg, label %bb.u, label %bb.ac, !dbg !53612

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !53617, !noalias !53422
  %i.ch = load ptr, ptr %i.y, align 8, !dbg !53618, !alias.scope !53424, !noalias !53425, !nonnull !1855, !align !1882, !noundef !1855
  call void @_RINvXNvNtNtCs2Aa799EbAFJ_11polars_time7windows8group_bys_1__NtB5_12ClosedWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeQINtNtCsk1caaszg7Cl_10serde_json2de12DeserializerNtNtB2i_4read7StrReadEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ch), !dbg !53619, !noalias !53426
  %i.ci = load i8, ptr %i.t, align 8, !dbg !53617, !range !2055, !noalias !53422, !noundef !1855
  %i.cj = trunc nuw i8 %i.ci to i1, !dbg !53617
  br i1 %i.cj, label %bb.v, label %bb.w, !dbg !53612

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !53613
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !53613, !noalias !53422, !nonnull !1855, !align !1882, !noundef !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !53620, !noalias !53422
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53621

_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.o
  %i.cm = call noundef nonnull align 8 ptr @_RNvYNtNtCsk1caaszg7Cl_10serde_json5error5ErrorNtNtCs40veMcpUDl8_10serde_core2de5Error14invalid_lengthCseeLknQCOKOd_13polars_python(i64 noundef 1, ptr noundef nonnull @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164), !dbg !53597, !noalias !53418
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53622

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !53616
  %i.co = load i8, ptr %i.cn, align 1, !dbg !53616, !range !2033, !noalias !53422, !noundef !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !53620, !noalias !53422
  call void @llvm.experimental.noalias.scope.decl(metadata !53428), !dbg !53623
  call void @llvm.experimental.noalias.scope.decl(metadata !53429), !dbg !53624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !53625, !noalias !53430
  call fastcc void @_RINvNvXs7_NtCsk1caaszg7Cl_10serde_json2deINtB8_9SeqAccesspENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !dbg !53625, !noalias !53431
  %i.cp = load i8, ptr %i.s, align 8, !dbg !53625, !range !2055, !noalias !53430, !noundef !1855
  %i.cq = trunc nuw i8 %i.cp to i1, !dbg !53625
  br i1 %i.cq, label %bb.x, label %bb.y, !dbg !53626

bb.x:                                             ; preds = %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !53627
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !53627, !noalias !53430, !nonnull !1855, !align !1882, !noundef !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !53628, !noalias !53430
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53629

bb.y:                                             ; preds = %bb.w
  %i.ct = getelementptr inbounds nuw i8, ptr %i.s, i64 1, !dbg !53630
  %i.cu = load i8, ptr %i.ct, align 1, !dbg !53630, !range !2055, !noalias !53430, !noundef !1855
  %i.cv = trunc nuw i8 %i.cu to i1, !dbg !53630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !53628, !noalias !53430
  br i1 %i.cv, label %bb.z, label %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i, !dbg !53626

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !53631, !noalias !53430
  %i.cw = load ptr, ptr %i.y, align 8, !dbg !53632, !alias.scope !53432, !noalias !53433, !nonnull !1855, !align !1882, !noundef !1855
  call void @_RINvXse_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsENtB8_11Deserialize11deserializeQINtNtCsk1caaszg7Cl_10serde_json2de12DeserializerNtNtB2U_4read7StrReadEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.cw), !dbg !53633, !noalias !53434
  %i.cx = load i64, ptr %i.r, align 8, !dbg !53631, !range !2023, !noalias !53430, !noundef !1855 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 8, !dbg !53631
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !53634
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !53634, !noalias !53435 ; 2 uses
  br i1 %i.cy, label %bb.aa, label %bb.ab, !dbg !53626

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !53635, !noalias !53430
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53636

bb.ab:                                            ; preds = %bb.z
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !53630
  %.sroa.12.0.copyload.i = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !dbg !53630, !noalias !53435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !53635, !noalias !53430
  br label %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i, !dbg !53637

bb.ac:                                            ; preds = %bb.t
  %i.db = call noundef nonnull align 8 ptr @_RNvYNtNtCsk1caaszg7Cl_10serde_json5error5ErrorNtNtCs40veMcpUDl8_10serde_core2de5Error14invalid_lengthCseeLknQCOKOd_13polars_python(i64 noundef 2, ptr noundef nonnull @247, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @164), !dbg !53609, !noalias !53418
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53638

_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.ab, %bb.y
  %.sroa.861.0.i = phi ptr [ %i.da, %bb.ab ], [ undef, %bb.y ], !dbg !53623
  %.sroa.060.0.i = phi i64 [ %i.cx, %bb.ab ], [ 8, %bb.y ], !dbg !53639 ; 2 uses
  %.sroa.12.0.i = phi i64 [ %.sroa.12.0.copyload.i, %bb.ab ], [ undef, %bb.y ], !dbg !53623
  %.not52.i = icmp eq i64 %.sroa.060.0.i, 8, !dbg !53623 ; 3 uses
  %..i = select i1 %.not52.i, i64 7, i64 %.sroa.060.0.i, !dbg !53640
  %..sroa.546.0.copyload.i = select i1 %.not52.i, ptr undef, ptr %.sroa.861.0.i, !dbg !53640
  %..sroa.647.0.copyload.i = select i1 %.not52.i, i64 undef, i64 %.sroa.12.0.i, !dbg !53640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.853.i, i64 25, i1 false), !dbg !53641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.14.i, i64 6, i1 false), !dbg !53641
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53642

_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.x, %bb.aa, %bb.s, %bb.v, %bb.ac, %bb.n, %bb.p, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i, %bb.i, %bb.l, %bb.q, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i
  %.sroa.20.0 = phi i8 [ %i.co, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.i ], [ undef, %bb.n ], [ undef, %bb.s ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.p ], [ undef, %bb.ac ], [ undef, %bb.v ], [ undef, %bb.aa ], [ undef, %bb.x ], !dbg !53643 ; 4 uses
  %.sroa.19.0 = phi i64 [ %i.bz, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.i ], [ undef, %bb.n ], [ undef, %bb.s ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.p ], [ undef, %bb.ac ], [ undef, %bb.v ], [ undef, %bb.aa ], [ undef, %bb.x ], !dbg !53643
  %.sroa.17.0 = phi i8 [ %i.bj, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.i ], [ undef, %bb.n ], [ undef, %bb.s ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.p ], [ undef, %bb.ac ], [ undef, %bb.v ], [ undef, %bb.aa ], [ undef, %bb.x ], !dbg !53643 ; 4 uses
  %.sroa.15.0 = phi ptr [ %i.bl, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.i ], [ undef, %bb.n ], [ undef, %bb.s ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.p ], [ undef, %bb.ac ], [ undef, %bb.v ], [ undef, %bb.aa ], [ undef, %bb.x ], !dbg !53643
  %.sroa.1450.0 = phi i64 [ %..sroa.647.0.copyload.i, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.i ], [ undef, %bb.n ], [ undef, %bb.s ], [ undef, %bb.q ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.p ], [ undef, %bb.ac ], [ undef, %bb.v ], [ undef, %bb.aa ], [ undef, %bb.x ], !dbg !53643
  %.sroa.949.0 = phi ptr [ %..sroa.546.0.copyload.i, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i ], [ %i.bd, %bb.i ], [ %i.bp, %bb.n ], [ %i.cd, %bb.s ], [ %i.by, %bb.q ], [ %i.bl, %bb.l ], [ %i.cm, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i ], [ %i.bw, %bb.p ], [ %i.db, %bb.ac ], [ %i.cl, %bb.v ], [ %i.da, %bb.aa ], [ %i.cs, %bb.x ], !dbg !53583 ; 5 uses
  %.sroa.048.0 = phi i64 [ %..i, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i ], [ 8, %bb.i ], [ 8, %bb.n ], [ 8, %bb.s ], [ 8, %bb.q ], [ 8, %bb.l ], [ 8, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9SeqAccess12next_elementjECseeLknQCOKOd_13polars_python.exit.i ], [ 8, %bb.p ], [ 8, %bb.ac ], [ 8, %bb.v ], [ 8, %bb.aa ], [ 8, %bb.x ], !dbg !53583 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.853.i), !dbg !53644
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i), !dbg !53644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !53644
  %i.dc = load i8, ptr %i.ap, align 8, !dbg !53645, !noundef !1855
  %i.dd = add i8 %i.dc, 1, !dbg !53645
  store i8 %i.dd, ptr %i.ap, align 8, !dbg !53645
  %i.de = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(56) %1)
          to label %bb.af unwind label %bb.ae, !dbg !53646 ; 9 uses

bb.ad:                                            ; preds = %bb.ao, %bb.g
  %.sink = phi ptr [ %i.dq, %bb.ao ], [ %i.ax, %bb.g ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !53647
  store ptr %.sink, ptr %i.df, align 8, !dbg !53647
  store i64 8, ptr %0, align 8, !dbg !53647
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.7), !dbg !53648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.9), !dbg !53648
  br label %bb.dj, !dbg !53581

bb.ae:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window27RollingOptionsDynamicWindowNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python(i64 %.sroa.048.0, ptr %.sroa.949.0) #35
          to label %common.resume unwind label %bb.ai, !dbg !53649

bb.af:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_seqINtNtCsk1caaszg7Cl_10serde_json2de9SeqAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit
  %i.dh = icmp eq i64 %.sroa.048.0, 8, !dbg !53650
  br i1 %i.dh, label %bb.ah, label %bb.ag, !dbg !53651

bb.ag:                                            ; preds = %bb.af
  %.not31 = icmp eq ptr %i.de, null, !dbg !53650
  br i1 %.not31, label %.thread87, label %.thread100, !dbg !53651

.thread87:                                        ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.14.sroa.7, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.16, i64 25, i1 false), !dbg !53652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.14.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18, i64 6, i1 false), !dbg !53652
  br label %.thread100, !dbg !53653

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.949.0) ]
  %.not122 = icmp eq ptr %i.de, null, !dbg !53653
  br i1 %.not122, label %.thread100, label %bb.aj, !dbg !53653

bb.ai:                                            ; preds = %bb.ae, %bb.cx
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !53654
  unreachable, !dbg !53654

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !53437), !dbg !53655
  call void @llvm.experimental.noalias.scope.decl(metadata !53438), !dbg !53656
  %i.dj = load i64, ptr %i.de, align 8, !dbg !53657, !range !2008, !alias.scope !53439, !noundef !1855
  switch i64 %i.dj, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit [
    i64 0, label %bb.ak
    i64 1, label %bb.am
  ], !dbg !53657

bb.ak:                                            ; preds = %bb.aj
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !53657
  %.val1.i.i.i.i = load i64, ptr %i.dk, align 8, !dbg !53657, !alias.scope !53439, !noundef !1855 ; 2 uses
  %i.dl = icmp eq i64 %.val1.i.i.i.i, 0, !dbg !53658
  br i1 %i.dl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit, label %bb.al, !dbg !53658

bb.al:                                            ; preds = %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !53657
  %.val.i.i.i.i = load ptr, ptr %i.dm, align 8, !dbg !53657, !alias.scope !53439, !nonnull !1855, !noundef !1855
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #26, !dbg !53659, !noalias !53439
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit, !dbg !53660

bb.am:                                            ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !53657
  %.val2.i.i.i.i = load ptr, ptr %i.dn, align 8, !dbg !53657, !alias.scope !53439, !nonnull !1855, !noundef !1855
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python(ptr nonnull %.val2.i.i.i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit unwind label %bb.an, !dbg !53657

common.resume.sink.split:                         ; preds = %bb.an, %bb.df
  %.sink750 = phi ptr [ %i.kp, %bb.df ], [ %i.de, %bb.an ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.kx, %bb.df ], [ %i.do, %bb.an ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink750, i64 noundef 40, i64 noundef 8) #26, !dbg !53661
  br label %common.resume, !dbg !53662

common.resume:                                    ; preds = %common.resume.sink.split, %bb.cx, %bb.ae
  %common.resume.op = phi { ptr, i32 } [ %i.kq, %bb.cx ], [ %i.dg, %bb.ae ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op, !dbg !53662

bb.an:                                            ; preds = %bb.am
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !53655

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.de, i64 noundef 40, i64 noundef 8) #26, !dbg !53663
  br label %.thread100, !dbg !53653

.thread100:                                       ; preds = %bb.da, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46, %.thread103, %bb.cz, %bb.ah, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit, %.thread87, %bb.ag
  %.sroa.14.sroa.11.1 = phi i8 [ %.sroa.20.0, %bb.ah ], [ %.sroa.20.0, %bb.ag ], [ %.sroa.20.0, %.thread87 ], [ %.sroa.20.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.38.0, %.thread103 ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 ], [ undef, %bb.da ], [ undef, %bb.cz ], !dbg !53567
  %.sroa.14.sroa.10.1 = phi i64 [ undef, %bb.ah ], [ undef, %bb.ag ], [ %.sroa.19.0, %.thread87 ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.37.0, %.thread103 ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 ], [ undef, %bb.da ], [ undef, %bb.cz ], !dbg !53567
  %.sroa.14.sroa.8.1 = phi i8 [ %.sroa.17.0, %bb.ah ], [ %.sroa.17.0, %bb.ag ], [ %.sroa.17.0, %.thread87 ], [ %.sroa.17.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.35.0, %.thread103 ], [ %.sroa.35.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 ], [ %.sroa.35.0, %bb.da ], [ %.sroa.35.0, %bb.cz ], !dbg !53567
  %.sroa.14.sroa.6.1 = phi ptr [ undef, %bb.ah ], [ undef, %bb.ag ], [ %.sroa.15.0, %.thread87 ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.33.0, %.thread103 ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 ], [ undef, %bb.da ], [ undef, %bb.cz ], !dbg !53567
  %.sroa.14.sroa.0.1 = phi i64 [ undef, %bb.ah ], [ undef, %bb.ag ], [ %.sroa.1450.0, %.thread87 ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.32.0, %.thread103 ], [ undef, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 ], [ undef, %bb.da ], [ undef, %bb.cz ], !dbg !53567
  %.sroa.10.1 = phi ptr [ %.sroa.949.0, %bb.ah ], [ %i.de, %bb.ag ], [ %.sroa.949.0, %.thread87 ], [ %.sroa.949.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.1866.0, %.thread103 ], [ %.sroa.1866.0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 ], [ %.sroa.1866.0, %bb.da ], [ %i.kp, %bb.cz ], !dbg !53440 ; 2 uses
  %.sroa.05.1 = phi i64 [ 8, %bb.ah ], [ 8, %bb.ag ], [ %.sroa.048.0, %.thread87 ], [ 8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit ], [ %.sroa.065.0, %.thread103 ], [ 8, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 ], [ 8, %bb.da ], [ 8, %bb.cz ], !dbg !53440 ; 2 uses
  %i.dp = icmp eq i64 %.sroa.05.1, 8, !dbg !53664
  br i1 %i.dp, label %bb.dg, label %bb.dh, !dbg !53665, !prof !1866

bb.ao:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !53578
  store i64 24, ptr %i.z, align 8, !dbg !53578
  %i.dq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z), !dbg !53579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !53580
  br label %bb.ad, !dbg !53581

bb.ap:                                            ; preds = %bb.f
  %i.dr = add i64 %i.ai, 1, !dbg !53666
  store i64 %i.dr, ptr %i.ac, align 8, !dbg !53666, !alias.scope !53448
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.365.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.767.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %1, ptr %i.q, align 8, !noalias !53449
  %i.ds = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 1, ptr %i.ds, align 8, !noalias !53449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !53667, !noalias !53450
  call fastcc void @_RINvNvXs9_NtCsk1caaszg7Cl_10serde_json2deINtB8_9MapAccesspENtNtCs40veMcpUDl8_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q), !dbg !53667, !noalias !53451
  %i.dt = load i8, ptr %i.k, align 8, !dbg !53667, !range !2055, !noalias !53450, !noundef !1855
  %i.du = trunc nuw i8 %i.dt to i1, !dbg !53667
  br i1 %i.du, label %._crit_edge.i, label %.lr.ph.i38, !dbg !53668

.lr.ph.i38:                                       ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.593.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.694.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  %.sroa.589.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.791.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 34
  br label %bb.aq, !dbg !53668

._crit_edge.i:                                    ; preds = %bb.bq, %bb.ap
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !53669
  %i.eb = load ptr, ptr %i.ea, align 8, !dbg !53669, !noalias !53453, !nonnull !1855, !align !1882, !noundef !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !53670, !noalias !53453
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53671

bb.aq:                                            ; preds = %bb.bq, %.lr.ph.i38
  %.sroa.2.0295.i = phi i8 [ 2, %.lr.ph.i38 ], [ %.sroa.2.1.i, %bb.bq ] ; 7 uses
  %.sroa.04.sroa.0.0294.i = phi ptr [ undef, %.lr.ph.i38 ], [ %.sroa.04.sroa.0.1.i, %bb.bq ] ; 5 uses
  %.sroa.020.0293.i = phi i64 [ 0, %.lr.ph.i38 ], [ %.sroa.020.1.i, %bb.bq ] ; 6 uses
  %.sroa.4.0292.i = phi i64 [ undef, %.lr.ph.i38 ], [ %.sroa.4.1.i, %bb.bq ] ; 5 uses
  %.sroa.029.0291.i = phi i8 [ 4, %.lr.ph.i38 ], [ %.sroa.029.1.i, %bb.bq ] ; 7 uses
  %.sroa.036.0290.i = phi i64 [ 8, %.lr.ph.i38 ], [ %.sroa.036.1.i, %bb.bq ] ; 7 uses
  %.sroa.539.sroa.0.0289.i = phi ptr [ undef, %.lr.ph.i38 ], [ %.sroa.539.sroa.0.1.i, %bb.bq ] ; 5 uses
  %.sroa.539.sroa.2.0288.i = phi i64 [ undef, %.lr.ph.i38 ], [ %.sroa.539.sroa.2.1.i, %bb.bq ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53454), !dbg !53672
  call void @llvm.experimental.noalias.scope.decl(metadata !53455), !dbg !53673
  %i.ec = load i8, ptr %i.dv, align 1, !dbg !53674, !range !2055, !noalias !53453, !noundef !1855
  %i.ed = trunc nuw i8 %i.ec to i1, !dbg !53674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !53670, !noalias !53453
  br i1 %i.ed, label %bb.ar, label %bb.be, !dbg !53668

bb.ar:                                            ; preds = %bb.aq
  %i.ee = load ptr, ptr %i.q, align 8, !dbg !53675, !alias.scope !53456, !noalias !53457, !nonnull !1855, !align !1882, !noundef !1855 ; 21 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53458), !dbg !53676
  call void @llvm.experimental.noalias.scope.decl(metadata !53459), !dbg !53677
  call void @llvm.experimental.noalias.scope.decl(metadata !53460), !dbg !53678
  call void @llvm.experimental.noalias.scope.decl(metadata !53462), !dbg !53679
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24, !dbg !53680 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 40, !dbg !53681 ; 14 uses
  %i.eh = load i64, ptr %i.eg, align 8, !dbg !53681, !alias.scope !53463, !noalias !53464, !noundef !1855
  %i.ei = add i64 %i.eh, 1, !dbg !53681
  store i64 %i.ei, ptr %i.eg, align 8, !dbg !53681, !alias.scope !53463, !noalias !53464
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 16, !dbg !53682
  store i64 0, ptr %i.ej, align 8, !dbg !53682, !alias.scope !53465, !noalias !53464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !53683, !noalias !53466
  call void @_RNvXs8_NtCsk1caaszg7Cl_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ee), !dbg !53684, !noalias !53464
  %i.ek = load i64, ptr %i.j, align 8, !dbg !53683, !range !1961, !noalias !53466, !noundef !1855 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2, !dbg !53683
  %i.em = load ptr, ptr %i.dw, align 8, !dbg !53685, !noalias !53466 ; 19 uses
  br i1 %i.el, label %bb.bd, label %bb.as, !dbg !53686

bb.as:                                            ; preds = %bb.ar
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !53687, !noalias !53466 ; 2 uses
  %i.en = trunc nuw i64 %i.ek to i1, !dbg !53686
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  br i1 %i.en, label %bb.at, label %bb.ay, !dbg !53686

bb.at:                                            ; preds = %bb.as
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bj [
    i64 11, label %bb.au
    i64 13, label %bb.aw
    i64 9, label %bb.ax
  ], !dbg !53688

bb.au:                                            ; preds = %bb.at
  %i.eo = load i64, ptr %i.em, align 1, !dbg !53689
  %i.ep = xor i64 %i.eo, 8313494757459257719, !dbg !53689
  %i.eq = getelementptr i8, ptr %i.em, i64 3, !dbg !53689
  %i.er = load i64, ptr %i.eq, align 1, !dbg !53689
  %i.es = xor i64 %i.er, 7312272889233239908, !dbg !53689
  %i.et = or i64 %i.ep, %i.es, !dbg !53689
  %i.eu = icmp ne i64 %i.et, 0, !dbg !53689
  %i.ev = zext i1 %i.eu to i32, !dbg !53689
  %i.ew = icmp eq i32 %i.ev, 0, !dbg !53689
  br i1 %i.ew, label %bb.bf, label %bb.av, !dbg !53690

bb.av:                                            ; preds = %bb.au
  %i.ex = load i64, ptr %i.em, align 1, !dbg !53691
  %i.ey = xor i64 %i.ex, 7598247054639262061, !dbg !53691
  %i.ez = getelementptr i8, ptr %i.em, i64 3, !dbg !53691
  %i.fa = load i64, ptr %i.ez, align 1, !dbg !53691
  %i.fb = xor i64 %i.fa, 8314893310714277983, !dbg !53691
  %i.fc = or i64 %i.ey, %i.fb, !dbg !53691
  %i.fd = icmp ne i64 %i.fc, 0, !dbg !53691
  %i.fe = zext i1 %i.fd to i32, !dbg !53691
  %i.ff = icmp eq i32 %i.fe, 0, !dbg !53691
  br i1 %i.ff, label %bb.bg, label %bb.bj, !dbg !53692

bb.aw:                                            ; preds = %bb.at
  %i.fg = load i64, ptr %i.em, align 1, !dbg !53693
  %i.fh = xor i64 %i.fg, 8601704200192093283, !dbg !53693
  %i.fi = getelementptr i8, ptr %i.em, i64 5, !dbg !53693
  %i.fj = load i64, ptr %i.fi, align 1, !dbg !53693
  %i.fk = xor i64 %i.fj, 8606207838306918244, !dbg !53693
  %i.fl = or i64 %i.fh, %i.fk, !dbg !53693
  %i.fm = icmp ne i64 %i.fl, 0, !dbg !53693
  %i.fn = zext i1 %i.fm to i32, !dbg !53693
  %i.fo = icmp eq i32 %i.fn, 0, !dbg !53693
  br i1 %i.fo, label %bb.bh, label %bb.bj, !dbg !53694

bb.ax:                                            ; preds = %bb.at
  %i.fp = load i64, ptr %i.em, align 1, !dbg !53695
  %i.fq = xor i64 %i.fp, 7881706585697775206, !dbg !53695
  %i.fr = getelementptr i8, ptr %i.em, i64 8, !dbg !53695
  %i.fs = load i8, ptr %i.fr, align 1, !dbg !53695
  %i.ft = zext i8 %i.fs to i64, !dbg !53695
  %i.fu = xor i64 %i.ft, 115, !dbg !53695
  %i.fv = or i64 %i.fq, %i.fu, !dbg !53695
  %i.fw = icmp ne i64 %i.fv, 0, !dbg !53695
  %i.fx = zext i1 %i.fw to i32, !dbg !53695
  %i.fy = icmp eq i32 %i.fx, 0, !dbg !53695
  br i1 %i.fy, label %bb.bi, label %bb.bj, !dbg !53696

bb.ay:                                            ; preds = %bb.as
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.bj [
    i64 11, label %bb.az
    i64 13, label %bb.bb
    i64 9, label %bb.bc
  ], !dbg !53697

bb.az:                                            ; preds = %bb.ay
  %i.fz = load i64, ptr %i.em, align 1, !dbg !53698
  %i.ga = xor i64 %i.fz, 8313494757459257719, !dbg !53698
  %i.gb = getelementptr i8, ptr %i.em, i64 3, !dbg !53698
  %i.gc = load i64, ptr %i.gb, align 1, !dbg !53698
  %i.gd = xor i64 %i.gc, 7312272889233239908, !dbg !53698
  %i.ge = or i64 %i.ga, %i.gd, !dbg !53698
  %i.gf = icmp ne i64 %i.ge, 0, !dbg !53698
  %i.gg = zext i1 %i.gf to i32, !dbg !53698
  %i.gh = icmp eq i32 %i.gg, 0, !dbg !53698
  br i1 %i.gh, label %bb.bf, label %bb.ba, !dbg !53699

bb.ba:                                            ; preds = %bb.az
  %i.gi = load i64, ptr %i.em, align 1, !dbg !53700
  %i.gj = xor i64 %i.gi, 7598247054639262061, !dbg !53700
  %i.gk = getelementptr i8, ptr %i.em, i64 3, !dbg !53700
  %i.gl = load i64, ptr %i.gk, align 1, !dbg !53700
  %i.gm = xor i64 %i.gl, 8314893310714277983, !dbg !53700
  %i.gn = or i64 %i.gj, %i.gm, !dbg !53700
  %i.go = icmp ne i64 %i.gn, 0, !dbg !53700
  %i.gp = zext i1 %i.go to i32, !dbg !53700
  %i.gq = icmp eq i32 %i.gp, 0, !dbg !53700
  br i1 %i.gq, label %bb.bg, label %bb.bj, !dbg !53701

bb.bb:                                            ; preds = %bb.ay
  %i.gr = load i64, ptr %i.em, align 1, !dbg !53702
  %i.gs = xor i64 %i.gr, 8601704200192093283, !dbg !53702
  %i.gt = getelementptr i8, ptr %i.em, i64 5, !dbg !53702
  %i.gu = load i64, ptr %i.gt, align 1, !dbg !53702
  %i.gv = xor i64 %i.gu, 8606207838306918244, !dbg !53702
  %i.gw = or i64 %i.gs, %i.gv, !dbg !53702
  %i.gx = icmp ne i64 %i.gw, 0, !dbg !53702
  %i.gy = zext i1 %i.gx to i32, !dbg !53702
  %i.gz = icmp eq i32 %i.gy, 0, !dbg !53702
  br i1 %i.gz, label %bb.bh, label %bb.bj, !dbg !53703

bb.bc:                                            ; preds = %bb.ay
  %i.ha = load i64, ptr %i.em, align 1, !dbg !53704
  %i.hb = xor i64 %i.ha, 7881706585697775206, !dbg !53704
  %i.hc = getelementptr i8, ptr %i.em, i64 8, !dbg !53704
  %i.hd = load i8, ptr %i.hc, align 1, !dbg !53704
  %i.he = zext i8 %i.hd to i64, !dbg !53704
  %i.hf = xor i64 %i.he, 115, !dbg !53704
  %i.hg = or i64 %i.hb, %i.hf, !dbg !53704
  %i.hh = icmp ne i64 %i.hg, 0, !dbg !53704
  %i.hi = zext i1 %i.hh to i32, !dbg !53704
  %i.hj = icmp eq i32 %i.hi, 0, !dbg !53704
  br i1 %i.hj, label %bb.bi, label %bb.bj, !dbg !53705

end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsk1caaszg7Cl_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtB2t_27RollingOptionsDynamicWindowNtB1j_11Deserialize11deserialize9___VisitorECseeLknQCOKOd_13polars_python:bb.a
  %i.jb = load i8, ptr %i.ja, align 1, !dbg !53769, !noalias !53524, !noundef !1855
  switch i8 %i.jb, label %bb.cd [
    i8 32, label %bb.cc
    i8 10, label %bb.cc
    i8 9, label %bb.cc
    i8 13, label %bb.cc
    i8 58, label %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ClosedWindowECseeLknQCOKOd_13polars_python.exit.i
  ], !dbg !53770, !prof !2195

bb.cc:                                            ; preds = %bb.cb, %bb.cb, %bb.cb, %bb.cb
  %i.jc = add nuw i64 %i.iz, 1, !dbg !53771       ; 3 uses
  store i64 %i.jc, ptr %i.eg, align 8, !dbg !53771, !alias.scope !53525, !noalias !53521
  %exitcond.not.i.i.i.i122.i = icmp eq i64 %i.jc, %i.iw, !dbg !53766
  br i1 %exitcond.not.i.i.i.i122.i, label %.loopexit.i.i.i119.i, label %bb.cb, !dbg !53766

.loopexit.i.i.i119.i:                             ; preds = %bb.ca, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !53772, !noalias !53526
  store i64 3, ptr %i.d, align 8, !dbg !53772, !noalias !53526
  %i.jd = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !53773, !noalias !53527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !53774, !noalias !53526
  br label %.loopexit451.i, !dbg !53775

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !53776, !noalias !53526
  store i64 6, ptr %i.e, align 8, !dbg !53776, !noalias !53526
  %i.je = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !53777, !noalias !53527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !53778, !noalias !53526
  br label %.loopexit451.i, !dbg !53779

_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ClosedWindowECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.cb
  %i.jf = add nuw i64 %i.iz, 1, !dbg !53780
  store i64 %i.jf, ptr %i.eg, align 8, !dbg !53780, !alias.scope !53528, !noalias !53527
  call void @_RINvXNvNtNtCs2Aa799EbAFJ_11polars_time7windows8group_bys_1__NtB5_12ClosedWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeQINtNtCsk1caaszg7Cl_10serde_json2de12DeserializerNtNtB2i_4read7StrReadEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ee), !dbg !53781, !noalias !53485
  %.pre436.i = load i8, ptr %i.o, align 8, !dbg !53782, !range !2055, !noalias !53449
  %i.jg = trunc nuw i8 %.pre436.i to i1, !dbg !53782
  br i1 %i.jg, label %.loopexit451.i.loopexit, label %bb.ce, !dbg !53783

.loopexit451.i.loopexit:                          ; preds = %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ClosedWindowECseeLknQCOKOd_13polars_python.exit.i
  %.pre = load ptr, ptr %i.dx, align 8, !dbg !53784, !noalias !53449
  br label %.loopexit451.i, !dbg !53784

.loopexit451.i:                                   ; preds = %.loopexit.i.i.i119.i, %bb.cd, %.loopexit451.i.loopexit
  %i.jh = phi ptr [ %.pre, %.loopexit451.i.loopexit ], [ %i.jd, %.loopexit.i.i.i119.i ], [ %i.je, %bb.cd ], !dbg !53784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !53737, !noalias !53449
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53714

bb.ce:                                            ; preds = %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueNtNtNtCs2Aa799EbAFJ_11polars_time7windows8group_by12ClosedWindowECseeLknQCOKOd_13polars_python.exit.i
  %i.ji = load i8, ptr %i.dy, align 1, !dbg !53785, !range !2033, !noalias !53449, !noundef !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !53737, !noalias !53449
  br label %bb.bq, !dbg !53672

bb.cf:                                            ; preds = %bb.bi
  %i.jj = call noundef nonnull align 8 ptr @_RNvYNtNtCsk1caaszg7Cl_10serde_json5error5ErrorNtNtCs40veMcpUDl8_10serde_core2de5Error15duplicate_fieldCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 9), !dbg !53672, !noalias !53485
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53714

bb.cg:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !53672, !noalias !53449
  call void @llvm.experimental.noalias.scope.decl(metadata !53530), !dbg !53786
  call void @llvm.experimental.noalias.scope.decl(metadata !53531), !dbg !53787
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.jl = load i64, ptr %i.jk, align 8, !alias.scope !53532, !noalias !53533, !noundef !1855 ; 2 uses
  %.promoted.i.i.i.i123.i = load i64, ptr %i.eg, align 8, !alias.scope !53534, !noalias !53535 ; 2 uses
  %i.jm = icmp ult i64 %.promoted.i.i.i.i123.i, %i.jl, !dbg !53788
  br i1 %i.jm, label %.lr.ph.i.i.i.i126.i, label %.loopexit.i.i.i124.i, !dbg !53788

.lr.ph.i.i.i.i126.i:                              ; preds = %bb.cg
  %i.jn = load ptr, ptr %i.ef, align 8, !alias.scope !53532, !noalias !53533, !nonnull !1855, !noundef !1855
  br label %bb.ch, !dbg !53788

bb.ch:                                            ; preds = %bb.ci, %.lr.ph.i.i.i.i126.i
  %i.jo = phi i64 [ %.promoted.i.i.i.i123.i, %.lr.ph.i.i.i.i126.i ], [ %i.jr, %bb.ci ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53536), !dbg !53789
  call void @llvm.experimental.noalias.scope.decl(metadata !53537), !dbg !53790
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jo, !dbg !53791
  %i.jq = load i8, ptr %i.jp, align 1, !dbg !53791, !noalias !53538, !noundef !1855
  switch i8 %i.jq, label %bb.cj [
    i8 32, label %bb.ci
    i8 10, label %bb.ci
    i8 9, label %bb.ci
    i8 13, label %bb.ci
    i8 58, label %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i
  ], !dbg !53792, !prof !2195

bb.ci:                                            ; preds = %bb.ch, %bb.ch, %bb.ch, %bb.ch
  %i.jr = add nuw i64 %i.jo, 1, !dbg !53793       ; 3 uses
  store i64 %i.jr, ptr %i.eg, align 8, !dbg !53793, !alias.scope !53539, !noalias !53535
  %exitcond.not.i.i.i.i127.i = icmp eq i64 %i.jr, %i.jl, !dbg !53788
  br i1 %exitcond.not.i.i.i.i127.i, label %.loopexit.i.i.i124.i, label %bb.ch, !dbg !53788

.loopexit.i.i.i124.i:                             ; preds = %bb.cg, %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !53794, !noalias !53540
  store i64 3, ptr %i.b, align 8, !dbg !53794, !noalias !53540
  %i.js = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !53795, !noalias !53541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !53796, !noalias !53540
  br label %.loopexit.i42, !dbg !53797

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !53798, !noalias !53540
  store i64 6, ptr %i.c, align 8, !dbg !53798, !noalias !53540
  %i.jt = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ee, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !53799, !noalias !53541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !53800, !noalias !53540
  br label %.loopexit.i42, !dbg !53801

_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i: ; preds = %bb.ch
  %i.ju = add nuw i64 %i.jo, 1, !dbg !53802
  store i64 %i.ju, ptr %i.eg, align 8, !dbg !53802, !alias.scope !53542, !noalias !53541
  call void @_RINvXse_NtNtCs40veMcpUDl8_10serde_core2de5implsINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsENtB8_11Deserialize11deserializeQINtNtCsk1caaszg7Cl_10serde_json2de12DeserializerNtNtB2U_4read7StrReadEECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ee), !dbg !53803, !noalias !53485
  %.pr.i = load i64, ptr %i.n, align 8, !dbg !53804, !noalias !53449 ; 2 uses
  %i.jv = icmp eq i64 %.pr.i, 8, !dbg !53804
  %.pre.i = load ptr, ptr %.sroa.593.0..sroa_idx.i, align 8, !dbg !53805, !noalias !53449 ; 2 uses
  br i1 %i.jv, label %.loopexit.i42, label %bb.ck, !dbg !53806

.loopexit.i42:                                    ; preds = %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i, %bb.cj, %.loopexit.i.i.i124.i
  %i.jw = phi ptr [ %i.jt, %bb.cj ], [ %i.js, %.loopexit.i.i.i124.i ], [ %.pre.i, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i ], !dbg !53807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !53737, !noalias !53449
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53714

bb.ck:                                            ; preds = %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valueINtNtCscgRAwXFJnXP_4core6option6OptionNtNtCslFlrwjHoTci_14polars_compute7rolling15RollingFnParamsEECseeLknQCOKOd_13polars_python.exit.i
  %.sroa.694.0.copyload.i = load i64, ptr %.sroa.694.0..sroa_idx.i, align 8, !dbg !53808, !noalias !53449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !53737, !noalias !53449
  br label %bb.bq, !dbg !53672

bb.cl:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.365.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.04.sroa.2.i, i64 25, i1 false), !dbg !53708, !noalias !53449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.767.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5.i, i64 6, i1 false), !dbg !53708, !noalias !53449
  br label %bb.cp, !dbg !53809

bb.cm:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !53708, !noalias !53449
  call void @_RINvXNvNtNtCsiXWUntRiDO2_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2Aa799EbAFJ_11polars_time7windows8durations_1__NtB3f_8DurationNtB28_11Deserialize11deserialize9___VisitorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 11), !dbg !53810, !noalias !53485
  %i.jx = getelementptr inbounds nuw i8, ptr %i.m, i64 33, !dbg !53811
  %i.jy = load i8, ptr %i.jx, align 1, !dbg !53811, !range !2010, !noalias !53449, !noundef !1855 ; 2 uses
  %i.jz = icmp eq i8 %i.jy, 2, !dbg !53811
  %i.ka = load ptr, ptr %i.m, align 8, !dbg !53812, !noalias !53449 ; 2 uses
  br i1 %i.jz, label %bb.cn, label %bb.co, !dbg !53813

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !53809, !noalias !53449
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53814

bb.co:                                            ; preds = %bb.cm
  %.sroa.596.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !53815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.365.i, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.596.0..sroa_idx.i, i64 25, i1 false), !dbg !53815, !noalias !53449
  %.sroa.798.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 34, !dbg !53815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.767.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.798.0..sroa_idx.i, i64 6, i1 false), !dbg !53815, !noalias !53449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !53809, !noalias !53449
  br label %bb.cp, !dbg !53809

bb.cp:                                            ; preds = %bb.co, %bb.cl
  %.sroa.566.0.i = phi i8 [ %.sroa.2.0295.i, %bb.cl ], [ %i.jy, %bb.co ], !dbg !53708
  %.sroa.064.0.i = phi ptr [ %.sroa.04.sroa.0.0294.i, %bb.cl ], [ %i.ka, %bb.co ], !dbg !53708
  %i.kb = trunc nuw i64 %.sroa.020.0293.i to i1, !dbg !53816
  br i1 %i.kb, label %bb.cs, label %bb.cq, !dbg !53816

bb.cq:                                            ; preds = %bb.cp
  %i.kc = call { i64, ptr } @_RINvXNvNtNtCsiXWUntRiDO2_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_anyNtNvXs1c_NtB28_5implsjNtB28_11Deserialize11deserialize16PrimitiveVisitorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 11), !dbg !53817, !noalias !53485 ; 2 uses
  %i.kd = extractvalue { i64, ptr } %i.kc, 0, !dbg !53817
  %i.ke = extractvalue { i64, ptr } %i.kc, 1, !dbg !53817 ; 2 uses
  %i.kf = trunc nuw i64 %i.kd to i1, !dbg !53818
  br i1 %i.kf, label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, label %bb.cr, !dbg !53818

bb.cr:                                            ; preds = %bb.cq
  %i.kg = ptrtoint ptr %i.ke to i64, !dbg !53817
  br label %bb.cs, !dbg !53819

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %.sroa.073.0.i = phi i64 [ %i.kg, %bb.cr ], [ %.sroa.4.0292.i, %bb.cp ], !dbg !53816
  %.not103.i = icmp eq i8 %.sroa.029.0291.i, 4, !dbg !53820
  br i1 %.not103.i, label %bb.ct, label %bb.cw, !dbg !53820

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !53820, !noalias !53449
  call void @_RINvXNvNtNtCsiXWUntRiDO2_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsk1caaszg7Cl_10serde_json5error5ErrorENtNtCs40veMcpUDl8_10serde_core2de12Deserializer15deserialize_anyNtNvXNvNtNtCs2Aa799EbAFJ_11polars_time7windows8group_bys_1__NtB3f_12ClosedWindowNtB28_11Deserialize11deserialize9___VisitorECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 13), !dbg !53821, !noalias !53485
  %i.kh = load i8, ptr %i.l, align 8, !dbg !53822, !range !2055, !noalias !53449, !noundef !1855
  %i.ki = trunc nuw i8 %i.kh to i1, !dbg !53822
  br i1 %i.ki, label %bb.cu, label %bb.cv, !dbg !53823

bb.cu:                                            ; preds = %bb.ct
  %i.kj = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !53824
  %i.kk = load ptr, ptr %i.kj, align 8, !dbg !53824, !noalias !53449, !nonnull !1855, !align !1882, !noundef !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !53825, !noalias !53449
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53826

bb.cv:                                            ; preds = %bb.ct
  %i.kl = getelementptr inbounds nuw i8, ptr %i.l, i64 1, !dbg !53827
  %i.km = load i8, ptr %i.kl, align 1, !dbg !53827, !range !2033, !noalias !53449, !noundef !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !53825, !noalias !53449
  br label %bb.cw, !dbg !53825

bb.cw:                                            ; preds = %bb.cv, %bb.cs
  %.sroa.078.0.i = phi i8 [ %i.km, %bb.cv ], [ %.sroa.029.0291.i, %bb.cs ], !dbg !53820
  %.not104.i = icmp eq i64 %.sroa.036.0290.i, 8, !dbg !53828 ; 3 uses
  %..sroa.036.0.i = select i1 %.not104.i, i64 7, i64 %.sroa.036.0290.i, !dbg !53829
  %..sroa.539.sroa.0.0.i = select i1 %.not104.i, ptr undef, ptr %.sroa.539.sroa.0.0289.i, !dbg !53829
  %..sroa.539.sroa.2.0.i = select i1 %.not104.i, i64 undef, i64 %.sroa.539.sroa.2.0288.i, !dbg !53829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.34, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.365.i, i64 25, i1 false), !dbg !53830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.36, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.767.i, i64 6, i1 false), !dbg !53830
  br label %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit, !dbg !53831

_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit: ; preds = %bb.bj, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valuejECseeLknQCOKOd_13polars_python.exit.i, %bb.cq, %._crit_edge.i, %bb.bd, %bb.bk, %.loopexit453.i, %bb.br, %bb.bz, %.loopexit451.i, %bb.cf, %.loopexit.i42, %bb.cn, %bb.cu, %bb.cw
  %.sroa.38.0 = phi i8 [ undef, %bb.bd ], [ undef, %bb.cq ], [ undef, %.loopexit453.i ], [ undef, %bb.bk ], [ undef, %bb.br ], [ undef, %._crit_edge.i ], [ undef, %.loopexit451.i ], [ undef, %bb.bz ], [ undef, %.loopexit.i42 ], [ undef, %bb.cf ], [ undef, %bb.cn ], [ undef, %bb.cu ], [ %.sroa.078.0.i, %bb.cw ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valuejECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.bj ], !dbg !53832
  %.sroa.37.0 = phi i64 [ undef, %bb.bd ], [ undef, %bb.cq ], [ undef, %.loopexit453.i ], [ undef, %bb.bk ], [ undef, %bb.br ], [ undef, %._crit_edge.i ], [ undef, %.loopexit451.i ], [ undef, %bb.bz ], [ undef, %.loopexit.i42 ], [ undef, %bb.cf ], [ undef, %bb.cn ], [ undef, %bb.cu ], [ %.sroa.073.0.i, %bb.cw ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valuejECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.bj ], !dbg !53832
  %.sroa.35.0 = phi i8 [ undef, %bb.bd ], [ undef, %bb.cq ], [ undef, %.loopexit453.i ], [ undef, %bb.bk ], [ undef, %bb.br ], [ undef, %._crit_edge.i ], [ undef, %.loopexit451.i ], [ undef, %bb.bz ], [ undef, %.loopexit.i42 ], [ undef, %bb.cf ], [ undef, %bb.cn ], [ undef, %bb.cu ], [ %.sroa.566.0.i, %bb.cw ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valuejECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.bj ], !dbg !53832 ; 4 uses
  %.sroa.33.0 = phi ptr [ undef, %bb.bd ], [ undef, %bb.cq ], [ undef, %.loopexit453.i ], [ undef, %bb.bk ], [ undef, %bb.br ], [ undef, %._crit_edge.i ], [ undef, %.loopexit451.i ], [ undef, %bb.bz ], [ undef, %.loopexit.i42 ], [ undef, %bb.cf ], [ undef, %bb.cn ], [ undef, %bb.cu ], [ %.sroa.064.0.i, %bb.cw ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valuejECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.bj ], !dbg !53832
  %.sroa.32.0 = phi i64 [ undef, %bb.bd ], [ undef, %bb.cq ], [ undef, %.loopexit453.i ], [ undef, %bb.bk ], [ undef, %bb.br ], [ undef, %._crit_edge.i ], [ undef, %.loopexit451.i ], [ undef, %bb.bz ], [ undef, %.loopexit.i42 ], [ undef, %bb.cf ], [ undef, %bb.cn ], [ undef, %bb.cu ], [ %..sroa.539.sroa.2.0.i, %bb.cw ], [ undef, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valuejECseeLknQCOKOd_13polars_python.exit.i ], [ undef, %bb.bj ], !dbg !53832
  %.sroa.1866.0 = phi ptr [ %i.em, %bb.bd ], [ %i.ke, %bb.cq ], [ %i.hz, %.loopexit453.i ], [ %i.hm, %bb.bk ], [ %i.ic, %bb.br ], [ %i.eb, %._crit_edge.i ], [ %i.jh, %.loopexit451.i ], [ %i.iu, %bb.bz ], [ %i.jw, %.loopexit.i42 ], [ %i.jj, %bb.cf ], [ %i.ka, %bb.cn ], [ %i.kk, %bb.cu ], [ %..sroa.539.sroa.0.0.i, %bb.cw ], [ %i.hl, %bb.bj ], [ %i.ir, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valuejECseeLknQCOKOd_13polars_python.exit.i ], !dbg !53708 ; 5 uses
  %.sroa.065.0 = phi i64 [ 8, %bb.bd ], [ 8, %bb.cq ], [ 8, %.loopexit453.i ], [ 8, %bb.bk ], [ 8, %bb.br ], [ 8, %._crit_edge.i ], [ 8, %.loopexit451.i ], [ 8, %bb.bz ], [ 8, %.loopexit.i42 ], [ 8, %bb.cf ], [ 8, %bb.cn ], [ 8, %bb.cu ], [ %..sroa.036.0.i, %bb.cw ], [ 8, %_RINvYINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de9MapAccess10next_valuejECseeLknQCOKOd_13polars_python.exit.i ], [ 8, %bb.bj ], !dbg !53708 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.365.i), !dbg !53833
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.767.i), !dbg !53833
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.sroa.2.i), !dbg !53833
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !53833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !53833
  %i.kn = load i8, ptr %i.at, align 8, !dbg !53834, !noundef !1855
  %i.ko = add i8 %i.kn, 1, !dbg !53834
  store i8 %i.ko, ptr %i.at, align 8, !dbg !53834
  %i.kp = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(56) %1)
          to label %bb.cy unwind label %bb.cx, !dbg !53835 ; 9 uses

bb.cx:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit
  %i.kq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_window27RollingOptionsDynamicWindowNtNtCsk1caaszg7Cl_10serde_json5error5ErrorEECseeLknQCOKOd_13polars_python(i64 %.sroa.065.0, ptr %.sroa.1866.0) #35
          to label %common.resume unwind label %bb.ai, !dbg !53836

bb.cy:                                            ; preds = %_RINvXs0_NvXNvNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray14rolling_windows_1__NtBb_27RollingOptionsDynamicWindowNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1P_7Visitor9visit_mapINtNtCsk1caaszg7Cl_10serde_json2de9MapAccessNtNtB3t_4read7StrReadEECseeLknQCOKOd_13polars_python.exit
  %i.kr = icmp eq i64 %.sroa.065.0, 8, !dbg !53837
  br i1 %i.kr, label %bb.da, label %bb.cz, !dbg !53838

bb.cz:                                            ; preds = %bb.cy
  %.not = icmp eq ptr %i.kp, null, !dbg !53837
  br i1 %.not, label %.thread103, label %.thread100, !dbg !53838

.thread103:                                       ; preds = %bb.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.14.sroa.7, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.34, i64 25, i1 false), !dbg !53839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.14.sroa.9, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.36, i64 6, i1 false), !dbg !53839
  br label %.thread100, !dbg !53840

bb.da:                                            ; preds = %bb.cy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1866.0) ]
  %.not121 = icmp eq ptr %i.kp, null, !dbg !53840
  br i1 %.not121, label %.thread100, label %bb.db, !dbg !53840

bb.db:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !53557), !dbg !53841
  call void @llvm.experimental.noalias.scope.decl(metadata !53558), !dbg !53842
  %i.ks = load i64, ptr %i.kp, align 8, !dbg !53843, !range !2008, !alias.scope !53559, !noundef !1855
  switch i64 %i.ks, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 [
    i64 0, label %bb.dc
    i64 1, label %bb.de
  ], !dbg !53843

bb.dc:                                            ; preds = %bb.db
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 16, !dbg !53843
  %.val1.i.i.i.i44 = load i64, ptr %i.kt, align 8, !dbg !53843, !alias.scope !53559, !noundef !1855 ; 2 uses
  %i.ku = icmp eq i64 %.val1.i.i.i.i44, 0, !dbg !53844
  br i1 %i.ku, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46, label %bb.dd, !dbg !53844

bb.dd:                                            ; preds = %bb.dc
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kp, i64 8, !dbg !53843
  %.val.i.i.i.i45 = load ptr, ptr %i.kv, align 8, !dbg !53843, !alias.scope !53559, !nonnull !1855, !noundef !1855
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i45, i64 noundef range(i64 1, 0) %.val1.i.i.i.i44, i64 noundef 1) #26, !dbg !53845, !noalias !53559
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46, !dbg !53846

bb.de:                                            ; preds = %bb.db
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 8, !dbg !53843
  %.val2.i.i.i.i43 = load ptr, ptr %i.kw, align 8, !dbg !53843, !alias.scope !53559, !nonnull !1855, !noundef !1855
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECseeLknQCOKOd_13polars_python(ptr nonnull %.val2.i.i.i.i43)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46 unwind label %bb.df, !dbg !53843

bb.df:                                            ; preds = %bb.de
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split, !dbg !53841

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsk1caaszg7Cl_10serde_json5error5ErrorECseeLknQCOKOd_13polars_python.exit46: ; preds = %bb.db, %bb.dc, %bb.dd, %bb.de
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kp, i64 noundef 40, i64 noundef 8) #26, !dbg !53847
  br label %.thread100, !dbg !53840

bb.dg:                                            ; preds = %bb.d, %.thread100
  %.sroa.10.3 = phi ptr [ %.sroa.10.1, %.thread100 ], [ %i.ao, %bb.d ], !dbg !53440
  %i.ky = call noundef nonnull align 8 ptr @_RINvMs0_NtCsk1caaszg7Cl_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !53848
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !53849
  store ptr %i.ky, ptr %i.kz, align 8, !dbg !53849
  store i64 8, ptr %0, align 8, !dbg !53849
  br label %bb.di, !dbg !53850

bb.dh:                                            ; preds = %.thread100
  %.sroa.323.sroa.3.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !53851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %.sroa.323.sroa.3.0..sroa.323.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(25) %.sroa.14.sroa.7, i64 25, i1 false), !dbg !53852
  %.sroa.323.sroa.5.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58, !dbg !53851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.323.sroa.5.0..sroa.323.0..sroa_idx.sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.14.sroa.9, i64 6, i1 false), !dbg !53852
  store i64 %.sroa.05.1, ptr %0, align 8, !dbg !53851
  %.sroa.222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !53851
  store ptr %.sroa.10.1, ptr %.sroa.222.0..sroa_idx, align 8, !dbg !53851
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !53851
  store i64 %.sroa.14.sroa.0.1, ptr %.sroa.323.0..sroa_idx, align 8, !dbg !53851
  %.sroa.323.sroa.2.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !53851
  store ptr %.sroa.14.sroa.6.1, ptr %.sroa.323.sroa.2.0..sroa.323.0..sroa_idx.sroa_idx, align 8, !dbg !53851
  %.sroa.323.sroa.4.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !53851
  store i8 %.sroa.14.sroa.8.1, ptr %.sroa.323.sroa.4.0..sroa.323.0..sroa_idx.sroa_idx, align 1, !dbg !53851
  %.sroa.323.sroa.6.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !53851
  store i64 %.sroa.14.sroa.10.1, ptr %.sroa.323.sroa.6.0..sroa.323.0..sroa_idx.sroa_idx, align 8, !dbg !53851
  %.sroa.323.sroa.7.0..sroa.323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !53851
  store i8 %.sroa.14.sroa.11.1, ptr %.sroa.323.sroa.7.0..sroa.323.0..sroa_idx.sroa_idx, align 8, !dbg !53851
  br label %bb.di, !dbg !53853

bb.di:                                            ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.7), !dbg !53648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.9), !dbg !53648
  br label %bb.dj, !dbg !53854

bb.dj:                                            ; preds = %bb.di, %.loopexit, %bb.ad
  ret void, !dbg !53855
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsk1caaszg7Cl_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs40veMcpUDl8_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2Aa799EbAFJ_11polars_time7windows8durations_1__NtB2t_8DurationNtB1j_11Deserialize11deserialize9___VisitorECseeLknQCOKOd_13polars_python(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(none) %4, i64 noundef range(i64 0, 576460752303423488) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !53856 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 13 uses
  %i.o = alloca [16 x i8], align 8                ; 10 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 16 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54345), !dbg !54579
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !54346, !noalias !54347, !noundef !1855 ; 2 uses
  %.promoted.i = load i64, ptr %i.ag, align 8, !alias.scope !54345, !noalias !54348 ; 2 uses
  %i.aj = icmp ult i64 %.promoted.i, %i.ai, !dbg !54580
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !dbg !54580

.lr.ph.i:                                         ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !54346, !noalias !54347, !nonnull !1855, !noundef !1855
  br label %bb.b, !dbg !54580

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.am = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ap, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54349), !dbg !54581
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54350), !dbg !54582
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am, !dbg !54583
  %i.ao = load i8, ptr %i.an, align 1, !dbg !54583, !noalias !54351, !noundef !1855
  switch i8 %i.ao, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.e
    i8 123, label %bb.f
  ], !dbg !54584, !prof !2227

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ap = add nuw i64 %i.am, 1, !dbg !54585       ; 3 uses
  store i64 %i.ap, ptr %i.ag, align 8, !dbg !54585, !alias.scope !54352, !noalias !54348
  %exitcond.not.i = icmp eq i64 %i.ap, %i.ai, !dbg !54580
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !dbg !54580

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !54586
  store i64 5, ptr %i.af, align 8, !dbg !54586
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.af), !dbg !54587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !54588
  store ptr %i.aq, ptr %0, align 8, !dbg !54589
  br label %bb.ed, !dbg !54590

bb.d:                                             ; preds = %bb.b
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsk1caaszg7Cl_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCseeLknQCOKOd_13polars_python(ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @917), !dbg !54591
  br label %.thread, !dbg !54591

bb.e:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !54592 ; 4 uses
  %i.at = load i8, ptr %i.as, align 8, !dbg !54592, !noundef !1855
  %i.au = add i8 %i.at, -1, !dbg !54592           ; 2 uses
  store i8 %i.au, ptr %i.as, align 8, !dbg !54592
end_hunk_1
