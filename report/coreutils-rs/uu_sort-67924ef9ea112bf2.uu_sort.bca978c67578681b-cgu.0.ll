Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RINvNtNtCsgcf5BHVXlUt_7uu_sort8ext_sort8threaded8ext_sortINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB12_5slice4iter4IterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINvB6_4openRB28_EEEB6_:bb.a
  br label %bb.oh

bb.oh:                                            ; preds = %bb.oi, %bb.og, %bb.nw
  %.sroa.14.1.i.i209 = phi ptr [ %i.bcc, %bb.nw ], [ %.sroa.14.2.i.i211, %bb.oi ], [ %.sroa.14.0.i.i207, %bb.og ]
  %.sroa.0.1.i.i210 = phi ptr [ %i.bca, %bb.nw ], [ %.sroa.0.2.i.i, %bb.oi ], [ %.sroa.0.0.i.i208, %bb.og ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6757
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1X_NtB1Z_13ClosedTmpFile6reopenEEB21_.exit207.i.i

bb.oi:                                            ; preds = %bb.nz, %bb.ny
  %.sroa.14.2.i.i211 = phi ptr [ %i.bcj, %bb.ny ], [ %i.bcq, %bb.nz ]
  %.sroa.0.2.i.i = phi ptr [ %i.bch, %bb.ny ], [ %i.bco, %bb.nz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6757
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge10FileMergerEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aj) #34, !noalias !6928
  br label %bb.oh

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1X_NtB1Z_13ClosedTmpFile6reopenEEB21_.exit207.i.i: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i231.i.i, %bb.ov, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i206.i.i, %bb.oh
  %.val3.i.i76.i = phi i64 [ %i.baq, %bb.oh ], [ %i.baf, %bb.ov ], [ %i.baf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i206.i.i ], [ %i.baf, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i231.i.i ] ; 2 uses
  %.sroa.14.3.i.i204 = phi ptr [ %.sroa.14.1.i.i209, %bb.oh ], [ %i.bee, %bb.ov ], [ %i.bee, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i206.i.i ], [ %.sroa.14.6.i.i202, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i231.i.i ]
  %.sroa.0.3.i.i205 = phi ptr [ %.sroa.0.1.i.i210, %bb.oh ], [ %i.bed, %bb.ov ], [ %i.bed, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i206.i.i ], [ %.sroa.0.6.i.i203, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i231.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !6757
  call void @llvm.experimental.noalias.scope.decl(metadata !7081)
  %.val2.i.i77.i206 = load ptr, ptr %i.arm, align 8, !alias.scope !7081, !noalias !6757, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7084)
  %i.bdg = icmp eq i64 %.val3.i.i76.i, 0
  br i1 %i.bdg, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i85.i, label %.lr.ph.i.i.i.i78.i

.lr.ph.i.i.i.i78.i:                               ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1X_NtB1Z_13ClosedTmpFile6reopenEEB21_.exit207.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i84.i
  %.sroa.0.03.i.i.i.i79.i = phi i64 [ %i.bdi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i84.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1X_NtB1Z_13ClosedTmpFile6reopenEEB21_.exit207.i.i ] ; 2 uses
  %i.bdh = getelementptr inbounds nuw [48 x i8], ptr %.val2.i.i77.i206, i64 %.sroa.0.03.i.i.i.i79.i ; 4 uses
  %i.bdi = add nuw nsw i64 %.sroa.0.03.i.i.i.i79.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7087)
  call void @llvm.experimental.noalias.scope.decl(metadata !7090)
  call void @llvm.experimental.noalias.scope.decl(metadata !7093)
  %.val.i.i.i.i.i.i.i80.i = load i64, ptr %i.bdh, align 8, !range !92, !alias.scope !7096, !noalias !7099, !noundef !5 ; 2 uses
  %i.bdj = icmp eq i64 %.val.i.i.i.i.i.i.i80.i, 0
  br i1 %i.bdj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i81.i, label %bb.oj

bb.oj:                                            ; preds = %.lr.ph.i.i.i.i78.i
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdh, i64 8
  %.val1.i.i.i.i.i.i189.i.i = load ptr, ptr %i.bdk, align 8, !alias.scope !7100, !noalias !7099, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i189.i.i, i64 noundef %.val.i.i.i.i.i.i.i80.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7101
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i81.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i81.i: ; preds = %bb.oj, %.lr.ph.i.i.i.i78.i
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdh, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !7104)
  call void @llvm.experimental.noalias.scope.decl(metadata !7107)
  %.val.i.i1.i.i.i.i.i82.i = load i64, ptr %i.bdl, align 8, !range !92, !alias.scope !7110, !noalias !7099, !noundef !5 ; 2 uses
  %i.bdm = icmp eq i64 %.val.i.i1.i.i.i.i.i82.i, 0
  br i1 %i.bdm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i84.i, label %bb.ok

bb.ok:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i81.i
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdh, i64 32
  %.val1.i.i2.i.i.i.i.i83.i = load ptr, ptr %i.bdn, align 8, !alias.scope !7110, !noalias !7099, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i83.i, i64 noundef %.val.i.i1.i.i.i.i.i82.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7111
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i84.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i84.i: ; preds = %bb.ok, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i81.i
  %i.bdo = icmp eq i64 %i.bdi, %.val3.i.i76.i
  br i1 %i.bdo, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i85.i, label %.lr.ph.i.i.i.i78.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i85.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i84.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1X_NtB1Z_13ClosedTmpFile6reopenEEB21_.exit207.i.i
  %.val.i.i86.i = load i64, ptr %i.ax, align 8, !range !92, !alias.scope !7081, !noalias !6757, !noundef !5 ; 2 uses
  %i.bdp = icmp eq i64 %.val.i.i86.i, 0
  br i1 %i.bdp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEEB1c_.exit.i87.i, label %bb.ol

bb.ol:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i85.i
  %i.bdq = mul nuw i64 %.val.i.i86.i, 48
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i77.i206, i64 noundef %i.bdq, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !7099
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEEB1c_.exit.i87.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEEB1c_.exit.i87.i: ; preds = %bb.ol, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6757
  br label %bb.pk

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1y_.exit.i.i: ; preds = %bb.om, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i.i, %bb.nt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !6757
  br label %bb.on

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i.i: ; preds = %bb.nt
  call void @llvm.experimental.noalias.scope.decl(metadata !7112)
  %.val.i195.i.i = load i64, ptr %i.aw, align 8, !range !92, !alias.scope !7112, !noalias !6757, !noundef !5 ; 2 uses
  %i.bdr = icmp eq i64 %.val.i195.i.i, 0
  br i1 %i.bdr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1y_.exit.i.i, label %bb.om

bb.om:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i.i
  %.val2.i190.i.i = load ptr, ptr %i.azs, align 8, !alias.scope !7112, !noalias !6757, !nonnull !5, !noundef !5
  %i.bds = mul nuw i64 %.val.i195.i.i, 80
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i190.i.i, i64 noundef %i.bds, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !7115
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1y_.exit.i.i

bb.on:                                            ; preds = %.loopexit285.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1y_.exit.i.i
  %.pn.i.i143 = phi { ptr, ptr } [ %i.bgm, %.loopexit285.i.i ], [ %i.bbq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtBG_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB1y_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !6757
  br label %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitNtB2_23CompressedTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_23ClosedCompressedTmpFileENvYB2Z_NtB2_13ClosedTmpFile6reopenENtB2_26WriteableCompressedTmpFileEB4_.exit.i

bb.oo:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE8push_mutB1l_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !6757
  store i64 %i.bao, ptr %i.au, align 8, !noalias !6757
  %i.bdt = icmp eq i64 %i.bao, %i.ark
  br i1 %i.bdt, label %bb.or, label %bb.oq, !prof !34

bb.op:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8push_mutBJ_.exit212.i.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE8push_mutB1l_.exit.i.i
  %i.bdu = phi ptr [ %i.bae, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE8push_mutB1l_.exit.i.i ], [ %i.bfn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8push_mutBJ_.exit212.i.i ]
  %i.bdv = phi i64 [ %i.baf, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE8push_mutB1l_.exit.i.i ], [ %i.bfp, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8push_mutBJ_.exit212.i.i ] ; 2 uses
  %i.bdw = phi ptr [ %i.bam, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE8push_mutB1l_.exit.i.i ], [ %i.bet, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8push_mutBJ_.exit212.i.i ]
  %i.bdx = phi i64 [ %i.bao, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE8push_mutB1l_.exit.i.i ], [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8push_mutBJ_.exit212.i.i ]
  %i.bdy = icmp eq ptr %i.bai, %i.arg
  br i1 %i.bdy, label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1K_NtB1M_13ClosedTmpFile6reopenENtNtNtB9_6traits8iterator8Iterator4nextB1O_.exit.thread.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i

bb.oq:                                            ; preds = %bb.oo
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.az, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #40, !noalias !6928
  unreachable

bb.or:                                            ; preds = %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !6757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !6757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6757
  %i.bdz = load i64, ptr %i.aw, align 8, !range !92, !noalias !6757, !noundef !5
  %i.bea = getelementptr inbounds nuw [80 x i8], ptr %i.bam, i64 %i.ark
  store ptr %i.bam, ptr %i.ar, align 8, !noalias !6757
  store i64 %i.bdz, ptr %i.azu, align 8, !noalias !6757
  store ptr %i.bam, ptr %i.azv, align 8, !noalias !6757
  store ptr %i.bea, ptr %i.azw, align 8, !noalias !6757
  call fastcc void @_RINvNtCsgcf5BHVXlUt_7uu_sort5merge19merge_without_limitNtB2_23CompressedTmpMergeInputINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtCs6JMX4GRUq9U_4core6result6ResultBR_INtNtB1s_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEB4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.as, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fe) #34, !noalias !6928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !6757
  %i.beb = load i64, ptr %i.as, align 8, !range !440, !noalias !6757, !noundef !5 ; 2 uses
  %i.bec = icmp eq i64 %i.beb, -1
  %i.bed = load ptr, ptr %.sroa.4136.0..sroa_idx.i.i, align 8, !noalias !6757 ; 3 uses
  %i.bee = load ptr, ptr %.sroa.5137.0..sroa_idx.i.i, align 8, !noalias !6757 ; 3 uses
  br i1 %i.bec, label %bb.os, label %bb.ow

bb.os:                                            ; preds = %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6757
  %i.bef = ptrtoint ptr %i.bai to i64
  %i.beg = sub nuw i64 %i.arl, %i.bef
  %i.beh = udiv exact i64 %i.beg, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !7116)
  %i.bei = icmp eq ptr %i.arg, %i.bai
  br i1 %i.bei, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i206.i.i, label %.lr.ph.i.i.i.i198.i.i

.lr.ph.i.i.i.i198.i.i:                            ; preds = %bb.os, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i205.i.i
  %.sroa.0.03.i.i.i.i199.i.i = phi i64 [ %i.bek, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i205.i.i ], [ 0, %bb.os ] ; 2 uses
  %i.bej = getelementptr inbounds nuw [48 x i8], ptr %i.bai, i64 %.sroa.0.03.i.i.i.i199.i.i ; 4 uses
  %i.bek = add nuw nsw i64 %.sroa.0.03.i.i.i.i199.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7119)
  call void @llvm.experimental.noalias.scope.decl(metadata !7122)
  call void @llvm.experimental.noalias.scope.decl(metadata !7125)
  %.val.i.i.i.i.i.i.i200.i.i = load i64, ptr %i.bej, align 8, !range !92, !alias.scope !7128, !noalias !7131, !noundef !5 ; 2 uses
  %i.bel = icmp eq i64 %.val.i.i.i.i.i.i.i200.i.i, 0
  br i1 %i.bel, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i202.i.i, label %bb.ot

bb.ot:                                            ; preds = %.lr.ph.i.i.i.i198.i.i
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  %.val1.i.i.i.i.i.i.i201.i.i = load ptr, ptr %i.bem, align 8, !alias.scope !7138, !noalias !7131, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i201.i.i, i64 noundef %.val.i.i.i.i.i.i.i200.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7139
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i202.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i202.i.i: ; preds = %bb.ot, %.lr.ph.i.i.i.i198.i.i
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bej, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !7142)
  call void @llvm.experimental.noalias.scope.decl(metadata !7145)
  %.val.i.i1.i.i.i.i.i203.i.i = load i64, ptr %i.ben, align 8, !range !92, !alias.scope !7148, !noalias !7131, !noundef !5 ; 2 uses
  %i.beo = icmp eq i64 %.val.i.i1.i.i.i.i.i203.i.i, 0
  br i1 %i.beo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i205.i.i, label %bb.ou

bb.ou:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i202.i.i
  %i.bep = getelementptr inbounds nuw i8, ptr %i.bej, i64 32
  %.val1.i.i2.i.i.i.i.i204.i.i = load ptr, ptr %i.bep, align 8, !alias.scope !7148, !noalias !7131, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i204.i.i, i64 noundef %.val.i.i1.i.i.i.i.i203.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7149
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i205.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i205.i.i: ; preds = %bb.ou, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i202.i.i
  %i.beq = icmp eq i64 %i.bek, %i.beh
  br i1 %i.beq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i206.i.i, label %.lr.ph.i.i.i.i198.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i206.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i205.i.i, %bb.os
  %i.ber = icmp eq i64 %.sroa.0.553.i, 0
  br i1 %i.ber, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1X_NtB1Z_13ClosedTmpFile6reopenEEB21_.exit207.i.i, label %bb.ov

bb.ov:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i206.i.i
  %i.bes = mul nuw i64 %.sroa.0.553.i, 48
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.551.i, i64 noundef %i.bes, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !7131
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1X_NtB1Z_13ClosedTmpFile6reopenEEB21_.exit207.i.i

bb.ow:                                            ; preds = %bb.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.619.0..sroa_idx.i.i194, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6138.0..sroa_idx.i.i, i64 72, i1 false), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !6757
  store i64 %i.beb, ptr %i.at, align 8, !noalias !6757
  store ptr %i.bed, ptr %.sroa.4.0..sroa_idx.i.i193, align 8, !noalias !6757
  store ptr %i.bee, ptr %.sroa.5.0..sroa_idx.i74.i, align 8, !noalias !6757
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !7150
  %i.bet = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.aro, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !7150 ; 4 uses
  %i.beu = icmp eq ptr %i.bet, null
  br i1 %i.beu, label %4, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit211.i.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit211.i.i: ; preds = %bb.ow
  store i64 %i.ark, ptr %i.aw, align 8, !noalias !6757
  store ptr %i.bet, ptr %i.azs, align 8, !noalias !6757
  store i64 0, ptr %i.azt, align 8, !noalias !6757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !6757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !6757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !6757
  call fastcc void @_RNvMNtCsgcf5BHVXlUt_7uu_sort7tmp_dirNtB2_13TmpDirWrapper9next_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %3) #34, !noalias !6928
  %i.bev = load i64, ptr %i.azx, align 8, !range !4, !noalias !6757, !noundef !5 ; 2 uses
  %i.bew = icmp eq i64 %i.bev, -1
  br i1 %i.bew, label %bb.ox, label %bb.oy

4:                                                ; preds = %bb.ow
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aro) #37, !noalias !6928
  unreachable

bb.ox:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit211.i.i
  %i.bex = load ptr, ptr %.sroa.5142.0..sroa_idx.i.i, align 8, !noalias !6757, !nonnull !5, !noundef !5
  %i.bey = load ptr, ptr %.sroa.6143.0..sroa_idx.i.i, align 8, !noalias !6757, !nonnull !5, !align !13, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !6757
  br label %.loopexit

bb.oy:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgcf5BHVXlUt_7uu_sort.exit211.i.i
  %.sroa.0140.0.copyload.i.i = load i64, ptr %i.ao, align 8, !noalias !6757
  %i.bez = load <2 x ptr>, ptr %.sroa.5142.0..sroa_idx.i.i, align 8, !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !6757
  store i64 %.sroa.0140.0.copyload.i.i, ptr %i.an, align 8, !noalias !6757
  store i64 %i.bev, ptr %.sroa.535.0..sroa_idx36.i.i, align 8, !noalias !6757
  store <2 x ptr> %i.bez, ptr %.sroa.638.0..sroa_idx39.i.i, align 8, !noalias !6757
  call void @_RNvXs3_NtCsgcf5BHVXlUt_7uu_sort5mergeNtB5_26WriteableCompressedTmpFileNtB5_16WriteableTmpFile6create(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.an, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.044.0.i.i, i64 %.sroa.545.0.i.i) #34, !noalias !6928
  %i.bfa = load i64, ptr %i.ap, align 8, !range !4, !noalias !6757, !noundef !5 ; 2 uses
  %i.bfb = icmp eq i64 %i.bfa, -1
  %i.bfc = load ptr, ptr %.sroa.4145.0..sroa_idx.i.i, align 8, !noalias !6757 ; 2 uses
  %i.bfd = load ptr, ptr %.sroa.5146.0..sroa_idx.i.i, align 8, !noalias !6757 ; 2 uses
  br i1 %i.bfb, label %.loopexit, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.649.0..sroa_idx.i.i197, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6147.0..sroa_idx.i.i, i64 88, i1 false), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6757
  store i64 %i.bfa, ptr %i.aq, align 8, !noalias !6757
  store ptr %i.bfc, ptr %.sroa.447.0..sroa_idx.i.i195, align 8, !noalias !6757
  store ptr %i.bfd, ptr %.sroa.548.0..sroa_idx.i.i196, align 8, !noalias !6757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !6757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.am, ptr noundef nonnull align 8 dereferenceable(96) %i.at, i64 96, i1 false), !noalias !6757
  %i.bfe = call fastcc { ptr, ptr } @_RINvMNtCsgcf5BHVXlUt_7uu_sort5mergeNtB3_10FileMerger12write_all_toINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEEB5_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(96) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fe, ptr noalias nofree noundef align 8 dereferenceable(32) %i.bad) #34, !noalias !6928 ; 2 uses
  %i.bff = extractvalue { ptr, ptr } %i.bfe, 0    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !6757
  %.not178.i.i = icmp eq ptr %i.bff, null
  br i1 %.not178.i.i, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bfg = extractvalue { ptr, ptr } %i.bfe, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bfg) ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge26WriteableCompressedTmpFileEBF_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.aq) #34, !noalias !6928
  br label %bb.pf

bb.pb:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !6757
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ak, ptr noundef nonnull align 8 dereferenceable(112) %i.aq, i64 112, i1 false), !noalias !6757
  call void @_RNvXs3_NtCsgcf5BHVXlUt_7uu_sort5mergeNtB5_26WriteableCompressedTmpFileNtB5_16WriteableTmpFile16finished_writing(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %i.ak) #34, !noalias !6928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !6757
  %i.bfh = load i64, ptr %i.al, align 8, !range !4, !noalias !6757, !noundef !5 ; 2 uses
  %i.bfi = icmp eq i64 %i.bfh, -1
  %i.bfj = load ptr, ptr %.sroa.4149.0..sroa_idx.i.i, align 8, !noalias !6757 ; 2 uses
  %i.bfk = load ptr, ptr %.sroa.5150.0..sroa_idx.i.i, align 8, !noalias !6757 ; 2 uses
  br i1 %i.bfi, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !6757
  br label %bb.pf

bb.pd:                                            ; preds = %bb.pb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6151.0..sroa_idx.i.i, i64 24, i1 false), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !6757
  call void @llvm.experimental.noalias.scope.decl(metadata !7153)
  %i.bfl = load i64, ptr %i.ax, align 8, !range !92, !alias.scope !7153, !noalias !7156, !noundef !5
  %i.bfm = icmp eq i64 %i.baf, %i.bfl
  br i1 %i.bfm, label %bb.pe, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8push_mutBJ_.exit212.i.i

bb.pe:                                            ; preds = %bb.pd
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax) #39, !noalias !7158
  %.pre378.i.i = load ptr, ptr %i.arm, align 8, !alias.scope !7153, !noalias !7156
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8push_mutBJ_.exit212.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileE8push_mutBJ_.exit212.i.i: ; preds = %bb.pe, %bb.pd
  %i.bfn = phi ptr [ %i.bae, %bb.pd ], [ %.pre378.i.i, %bb.pe ] ; 2 uses
  %i.bfo = getelementptr inbounds nuw [48 x i8], ptr %i.bfn, i64 %i.baf ; 4 uses
  store i64 %i.bfh, ptr %i.bfo, align 8, !noalias !7159
  %.sroa.2.0..sroa_idx.i88.i = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8
  store ptr %i.bfj, ptr %.sroa.2.0..sroa_idx.i88.i, align 8, !noalias !7159
  %.sroa.3.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.bfo, i64 16
  store ptr %i.bfk, ptr %.sroa.3.0..sroa_idx.i89.i, align 8, !noalias !7159
  %.sroa.4.0..sroa_idx250.i.i = getelementptr inbounds nuw i8, ptr %i.bfo, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx250.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i.i, i64 24, i1 false), !noalias !7159
  %i.bfp = add i64 %i.baf, 1                      ; 2 uses
  store i64 %i.bfp, ptr %i.arn, align 8, !alias.scope !7153, !noalias !7156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6757
  br label %bb.op

bb.pf:                                            ; preds = %bb.pc, %bb.pa
  %.sroa.14.5.i.i200 = phi ptr [ %i.bfg, %bb.pa ], [ %i.bfk, %bb.pc ]
  %.sroa.0.5.i.i201 = phi ptr [ %i.bff, %bb.pa ], [ %i.bfj, %bb.pc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6757
  br label %bb.pg

bb.pg:                                            ; preds = %.loopexit, %bb.pf
  %.sroa.14.6.i.i202 = phi ptr [ %.sroa.14.7.i.i, %.loopexit ], [ %.sroa.14.5.i.i200, %bb.pf ]
  %.sroa.0.6.i.i203 = phi ptr [ %.sroa.0.7.i.i, %.loopexit ], [ %.sroa.0.5.i.i201, %bb.pf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !6757
  %i.bfq = ptrtoint ptr %i.bai to i64
  %i.bfr = sub nuw i64 %i.arl, %i.bfq
  %i.bfs = udiv exact i64 %i.bfr, 48
  call void @llvm.experimental.noalias.scope.decl(metadata !7160)
  %i.bft = icmp eq ptr %i.arg, %i.bai
  br i1 %i.bft, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i223.i.i, label %.lr.ph.i.i.i.i215.i.i

.lr.ph.i.i.i.i215.i.i:                            ; preds = %bb.pg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i222.i.i
  %.sroa.0.03.i.i.i.i216.i.i = phi i64 [ %i.bfv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i222.i.i ], [ 0, %bb.pg ] ; 2 uses
  %i.bfu = getelementptr inbounds nuw [48 x i8], ptr %i.bai, i64 %.sroa.0.03.i.i.i.i216.i.i ; 4 uses
  %i.bfv = add nuw nsw i64 %.sroa.0.03.i.i.i.i216.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7163)
  call void @llvm.experimental.noalias.scope.decl(metadata !7166)
  call void @llvm.experimental.noalias.scope.decl(metadata !7169)
  %.val.i.i.i.i.i.i.i217.i.i = load i64, ptr %i.bfu, align 8, !range !92, !alias.scope !7172, !noalias !7175, !noundef !5 ; 2 uses
  %i.bfw = icmp eq i64 %.val.i.i.i.i.i.i.i217.i.i, 0
  br i1 %i.bfw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i219.i.i, label %bb.ph

bb.ph:                                            ; preds = %.lr.ph.i.i.i.i215.i.i
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfu, i64 8
  %.val1.i.i.i.i.i.i.i218.i.i = load ptr, ptr %i.bfx, align 8, !alias.scope !7182, !noalias !7175, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i218.i.i, i64 noundef %.val.i.i.i.i.i.i.i217.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7183
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i219.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i219.i.i: ; preds = %bb.ph, %.lr.ph.i.i.i.i215.i.i
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfu, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !7186)
  call void @llvm.experimental.noalias.scope.decl(metadata !7189)
  %.val.i.i1.i.i.i.i.i220.i.i = load i64, ptr %i.bfy, align 8, !range !92, !alias.scope !7192, !noalias !7175, !noundef !5 ; 2 uses
  %i.bfz = icmp eq i64 %.val.i.i1.i.i.i.i.i220.i.i, 0
  br i1 %i.bfz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i222.i.i, label %bb.pi

bb.pi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i219.i.i
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfu, i64 32
  %.val1.i.i2.i.i.i.i.i221.i.i = load ptr, ptr %i.bga, align 8, !alias.scope !7192, !noalias !7175, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i221.i.i, i64 noundef %.val.i.i1.i.i.i.i.i220.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7193
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i222.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i222.i.i: ; preds = %bb.pi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i.i219.i.i
  %i.bgb = icmp eq i64 %i.bfv, %i.bfs
  br i1 %i.bgb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i223.i.i, label %.lr.ph.i.i.i.i215.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i223.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBF_.exit.i.i.i.i222.i.i, %bb.pg
  %i.bgc = icmp eq i64 %.sroa.0.553.i, 0
  br i1 %i.bgc, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i231.i.i, label %bb.pj

bb.pj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i223.i.i
  %i.bgd = mul nuw i64 %.sroa.0.553.i, 48
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.551.i, i64 noundef %i.bgd, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !7175
  br label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i231.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCsgcf5BHVXlUt_7uu_sort5merge23CompressedTmpMergeInputINtNtB7_5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i231.i.i: ; preds = %bb.pj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEBG_.exit.i.i.i223.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bet, i64 noundef %i.aro, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !7194
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileENvYB1X_NtB1Z_13ClosedTmpFile6reopenEEB21_.exit207.i.i

.loopexit:                                        ; preds = %bb.oy, %bb.ox
  %.sroa.14.7.i.i = phi ptr [ %i.bey, %bb.ox ], [ %i.bfd, %bb.oy ]
  %.sroa.0.7.i.i = phi ptr [ %i.bex, %bb.ox ], [ %i.bfc, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !6757
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort5merge10FileMergerEBF_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.at) #34, !noalias !6928
  br label %bb.pg

bb.pk:                                            ; preds = %bb.pn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEEB1c_.exit.i87.i
  %.sroa.14.8.i.i184 = phi ptr [ %.sroa.11.8.copyload.i.i.i, %bb.pn ], [ %.sroa.14.3.i.i204, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEEB1c_.exit.i87.i ]
  %.sroa.0.8.i.i185 = phi ptr [ %.sroa.10135.8.copyload.i.i.i, %bb.pn ], [ %.sroa.0.3.i.i205, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgcf5BHVXlUt_7uu_sort5merge23ClosedCompressedTmpFileEEB1c_.exit.i87.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !6757
  call void @llvm.experimental.noalias.scope.decl(metadata !7197)
  call void @llvm.experimental.noalias.scope.decl(metadata !7200)
  %i.bge = load i64, ptr %2, align 8, !range !4, !alias.scope !7203, !noalias !7204, !noundef !5 ; 3 uses
  %i.bgf = icmp eq i64 %i.bge, -1
  br i1 %i.bgf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort6OutputEBD_.exit.i.i188, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.experimental.noalias.scope.decl(metadata !7205)
  call void @llvm.experimental.noalias.scope.decl(metadata !7208)
  %i.bgg = icmp eq i64 %i.bge, 0
  br i1 %i.bgg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i186, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bgh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i.i238.i.i = load ptr, ptr %i.bgh, align 8, !alias.scope !7211, !noalias !7204, !nonnull !5, !noundef !5
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i238.i.i, i64 noundef %i.bge, i64 noundef range(i64 1, -9223372036854775807) 1) #34, !noalias !7212
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i186

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i186: ; preds = %bb.pm, %bb.pl
  %i.bgi = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !7215)
  %.val.i1.i.i.i.i.i187 = load i32, ptr %i.bgi, align 8, !range !28, !alias.scope !7218, !noalias !7204, !noundef !5
  %i.bgj = call noundef i32 @close(i32 noundef %.val.i1.i.i.i.i.i187) #34, !noalias !7219 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort6OutputEBD_.exit.i.i188

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort6OutputEBD_.exit.i.i188: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtBI_2fs4FileEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i186, %bb.pk
  %i.bgk = insertvalue { ptr, ptr } poison, ptr %.sroa.0.8.i.i185, 0
  %i.bgl = insertvalue { ptr, ptr } %i.bgk, ptr %.sroa.14.8.i.i184, 1
  br label %_RINvNtCsgcf5BHVXlUt_7uu_sort5merge21merge_with_file_limitNtB2_23CompressedTmpMergeInputINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtB2_23ClosedCompressedTmpFileENvYB2Z_NtB2_13ClosedTmpFile6reopenENtB2_26WriteableCompressedTmpFileEB4_.exit.i

bb.pn:                                            ; preds = %bb.nh, %_RNCNvXs4_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drops_0BW_.exit.i.i.i.i.i.i189, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionINtNtCsgcf5BHVXlUt_7uu_sort5merge10ReaderFileNtB1x_23CompressedTmpMergeInputEEEEB1z_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6182.i.i.i), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  br label %bb.pk

.loopexit285.i.i:                                 ; preds = %.lr.ph.i.i.i71.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2V_.exit.i.i.i132
end_hunk_0
