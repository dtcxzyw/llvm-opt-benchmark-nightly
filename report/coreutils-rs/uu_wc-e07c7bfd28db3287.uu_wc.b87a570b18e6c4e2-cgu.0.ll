Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_wc-e07c7bfd28db3287.uu_wc.b87a570b18e6c4e2-cgu.0?download=true
inline.NumInlined: 1243
inline.NumDeleted: 653
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvCsfPYenFzdTHO_5uu_wc21word_count_from_input:bb.a

_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered.exit.i322.i: ; preds = %bb.zv
  %.sroa.5.0..sroa_idx16.i323.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.5.0..sroa_idx16.i323.i, i8 0, i64 17, i1 false), !noalias !1027
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.bwy, ptr %i.bxa, align 8, !noalias !1027
  %.sroa.4.0..sroa_idx15.i324.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 8192, ptr %.sroa.4.0..sroa_idx15.i324.i, align 8, !noalias !1027
  %.sroa.617.0..sroa_idx.i325.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  store i32 %i.ary, ptr %.sroa.617.0..sroa_idx.i325.i, align 8, !noalias !1027
  store i64 0, ptr %i.f, align 8, !noalias !1027
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 0, ptr %i.bxb, align 8, !noalias !1027
  %.sroa.4.0..sroa_idx.i326.i = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i8 0, ptr %.sroa.4.0..sroa_idx.i326.i, align 4, !noalias !1027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1027
  store i8 0, ptr %i.e, align 1, !noalias !1027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1027
  store i64 0, ptr %i.d, align 8, !noalias !1027
  %i.bxc = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsfPYenFzdTHO_5uu_wc18IS_POSIXLY_CORRECT, i64 8) acquire, align 8, !noalias !1027
  %i.bxd = icmp eq i32 %i.bxc, 0
  br i1 %i.bxd, label %_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockbE5force0ECsfPYenFzdTHO_5uu_wc.exit.i327.i, label %bb.zx, !prof !8

bb.zx:                                            ; preds = %_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered.exit.i322.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1027
  store ptr @_RNvCsfPYenFzdTHO_5uu_wc18IS_POSIXLY_CORRECT, ptr %i.b, align 8, !noalias !1027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1027
  store ptr %i.b, ptr %i.a, align 8, !noalias !1027
  call void @_RNvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsfPYenFzdTHO_5uu_wc18IS_POSIXLY_CORRECT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @13, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28, !noalias !1030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1027
  br label %_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockbE5force0ECsfPYenFzdTHO_5uu_wc.exit.i327.i

_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockbE5force0ECsfPYenFzdTHO_5uu_wc.exit.i327.i: ; preds = %bb.zx, %_RNvXs_NtCsfPYenFzdTHO_5uu_wc9countableNtNtCs2vKOLqTMYjT_3std2fs4FileNtB4_13WordCountable8buffered.exit.i322.i
  %i.bxe = load i8, ptr @_RNvCsfPYenFzdTHO_5uu_wc18IS_POSIXLY_CORRECT, align 8, !range !14, !noalias !1027, !noundef !4
  %i.bxf = trunc nuw i8 %i.bxe to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1027
  call fastcc void @_RNvMNtNtCsfPYenFzdTHO_5uu_wc4utf84readINtB2_14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE11next_strictB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.f) #28, !noalias !1030
  %i.bxg = load i64, ptr %i.c, align 8, !range !23, !noalias !1027, !noundef !4 ; 2 uses
  %.not20.i328.i = icmp eq i64 %i.bxg, 2
  br i1 %.not20.i328.i, label %._crit_edge.i335.i, label %.lr.ph.i329.i

.lr.ph.i329.i:                                    ; preds = %_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockbE5force0ECsfPYenFzdTHO_5uu_wc.exit.i327.i
  %.sroa.5.0..sroa_idx.i330.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx.i331.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.zy

bb.zy:                                            ; preds = %bb.aab, %.lr.ph.i329.i
  %i.bxh = phi i64 [ %i.bxg, %.lr.ph.i329.i ], [ %i.bxm, %bb.aab ]
  %.sroa.5.0.copyload.i332.i = load ptr, ptr %.sroa.5.0..sroa_idx.i330.i, align 8, !noalias !1027 ; 3 uses
  %.sroa.7.0.copyload.i333.i = load i64, ptr %.sroa.7.0..sroa_idx.i331.i, align 8, !noalias !1027 ; 4 uses
  %i.bxi = trunc nuw i64 %i.bxh to i1
  br i1 %i.bxi, label %bb.zz, label %bb.aaa

._crit_edge.i335.i:                               ; preds = %bb.aab, %_RINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockbE5force0ECsfPYenFzdTHO_5uu_wc.exit.i327.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1027
  %i.bxj = load <2 x i64>, ptr %i.g, align 16, !noalias !921 ; 2 uses
  %.sroa.100.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.100.0.copyload360 = load i64, ptr %.sroa.100.0..sroa_idx359, align 16, !noalias !921 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.124, ptr noundef nonnull align 8 dereferenceable(16) %i.bwx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1027
  %.val1.i.i.i336.i = load i64, ptr %.sroa.4.0..sroa_idx15.i324.i, align 8, !alias.scope !1031, !noalias !1027, !noundef !4 ; 2 uses
  %i.bxk = icmp eq i64 %.val1.i.i.i336.i, 0
  br i1 %i.bxk, label %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_.exit.sink.split.i337.i

bb.zz:                                            ; preds = %bb.zy
  %i.bxl = icmp eq ptr %.sroa.5.0.copyload.i332.i, null
  br i1 %i.bxl, label %bb.aac, label %bb.aad

bb.aaa:                                           ; preds = %bb.zy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i332.i) ]
  call fastcc void @_RINvCsfPYenFzdTHO_5uu_wc13process_chunkKb1_KBC_KBC_KBC_EB2_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i332.i, i64 noundef %.sroa.7.0.copyload.i333.i, ptr noalias nofree noundef align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef dereferenceable(1) %i.e, i1 noundef zeroext %i.bxf) #28, !noalias !1030
  br label %bb.aab

bb.aab:                                           ; preds = %bb.aae, %bb.aad, %bb.aaa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1027
  call fastcc void @_RNvMNtNtCsfPYenFzdTHO_5uu_wc4utf84readINtB2_14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEE11next_strictB6_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(64) %i.f) #28, !noalias !1030
  %i.bxm = load i64, ptr %i.c, align 8, !range !23, !noalias !1027, !noundef !4 ; 2 uses
  %.not.i334.i = icmp eq i64 %i.bxm, 2
  br i1 %.not.i334.i, label %._crit_edge.i335.i, label %bb.zy

bb.aac:                                           ; preds = %bb.zz
  %i.bxn = inttoptr i64 %.sroa.7.0.copyload.i333.i to ptr ; 2 uses
  %i.bxo = load <2 x i64>, ptr %i.g, align 16, !noalias !921 ; 2 uses
  %.sroa.100.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.100.0.copyload362 = load i64, ptr %.sroa.100.0..sroa_idx361, align 16, !noalias !921 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.124, ptr noundef nonnull align 8 dereferenceable(16) %i.bwx, i64 16, i1 false)
  %i.bxp = icmp ne i64 %.sroa.7.0.copyload.i333.i, 0
  call void @llvm.assume(i1 %i.bxp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1027
  %.val1.i.i10.i341.i = load i64, ptr %.sroa.4.0..sroa_idx15.i324.i, align 8, !alias.scope !1032, !noalias !1027, !noundef !4 ; 2 uses
  %i.bxq = icmp eq i64 %.val1.i.i10.i341.i, 0
  br i1 %i.bxq, label %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_.exit.sink.split.i337.i

bb.aad:                                           ; preds = %bb.zz
  %i.bxr = load i64, ptr %i.g, align 16, !noalias !1027, !noundef !4
  %i.bxs = add i64 %i.bxr, %.sroa.7.0.copyload.i333.i
  store i64 %i.bxs, ptr %i.g, align 16, !noalias !1027
  %i.bxt = load i8, ptr %i.e, align 1, !range !14, !noalias !1027, !noundef !4
  %i.bxu = trunc nuw i8 %i.bxt to i1
  br i1 %i.bxu, label %bb.aab, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  store i8 1, ptr %i.e, align 1, !noalias !1027
  %i.bxv = load i64, ptr %i.bwx, align 8, !noalias !1027, !noundef !4
  %i.bxw = add i64 %i.bxv, 1
  store i64 %i.bxw, ptr %i.bwx, align 8, !noalias !1027
  br label %bb.aab

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_.exit.sink.split.i337.i: ; preds = %bb.aac, %._crit_edge.i335.i
  %.sroa.100.59 = phi i64 [ %.sroa.100.0.copyload360, %._crit_edge.i335.i ], [ %.sroa.100.0.copyload362, %bb.aac ]
  %.sroa.140.59 = phi ptr [ null, %._crit_edge.i335.i ], [ %i.bxn, %bb.aac ]
  %.val1.i.i10.sink.i338.i = phi i64 [ %.val1.i.i.i336.i, %._crit_edge.i335.i ], [ %.val1.i.i10.i341.i, %bb.aac ]
  %i.bxx = phi <2 x i64> [ %i.bxj, %._crit_edge.i335.i ], [ %i.bxo, %bb.aac ]
  %.val.i.i12.i339.i = load ptr, ptr %i.bxa, align 8, !noalias !1027, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i12.i339.i, i64 noundef %.val1.i.i10.sink.i338.i, i64 noundef 1) #28, !noalias !1030
  br label %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_.exit.i

_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_.exit.sink.split.i337.i, %bb.aac, %._crit_edge.i335.i
  %.sroa.100.60 = phi i64 [ %.sroa.100.0.copyload360, %._crit_edge.i335.i ], [ %.sroa.100.59, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_.exit.sink.split.i337.i ], [ %.sroa.100.0.copyload362, %bb.aac ]
  %.sroa.140.60 = phi ptr [ null, %._crit_edge.i335.i ], [ %.sroa.140.59, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_.exit.sink.split.i337.i ], [ %i.bxn, %bb.aac ]
  %i.bxy = phi <2 x i64> [ %i.bxj, %._crit_edge.i335.i ], [ %i.bxx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCsfPYenFzdTHO_5uu_wc4utf84read14BufReadDecoderINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEEEBI_.exit.sink.split.i337.i ], [ %i.bxo, %bb.aac ]
  %.val2.i.i13.i340.i = load i32, ptr %.sroa.617.0..sroa_idx.i325.i, align 8, !range !13, !noalias !1027, !noundef !4
  %i.bxz = call noundef i32 @close(i32 noundef %.val2.i.i13.i340.i) #28, !noalias !1030 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1027
  br label %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit

_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit: ; preds = %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_KB1r_Kb1_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1r_KB1v_EB2_.exit.i, %bb.px, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1v_KB1r_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_Kb0_KB1r_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_Kb1_KB1r_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_Kb1_KB1A_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1v_KB1r_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1v_KB1v_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1r_KB1v_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1r_KB1r_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_Kb0_EB2_.exit.i, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_.exit.i
  %.sroa.100.64 = phi i64 [ %.sroa.100.60, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_.exit.i ], [ %.sroa.100.58, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_Kb0_EB2_.exit.i ], [ %.sroa.100.56, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_Kb0_KB1r_EB2_.exit.i ], [ %.sroa.100.40, %bb.px ], [ %.sroa.100.53, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1r_KB1r_EB2_.exit.i ], [ %.sroa.100.51, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1r_KB1v_EB2_.exit.i ], [ %.sroa.100.49, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1v_KB1r_EB2_.exit.i ], [ %.sroa.100.46, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1v_KB1v_EB2_.exit.i ], [ %.sroa.100.44, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1v_KB1r_EB2_.exit.i ], [ %.sroa.100.42, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1r_KB1v_EB2_.exit.i ], [ %.sroa.100.38, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_Kb1_KB1A_EB2_.exit.i ], [ %.sroa.100.36, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_Kb1_KB1r_EB2_.exit.i ], [ %.sroa.100.34, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_KB1r_Kb1_EB2_.exit.i ]
  %.sroa.140.64 = phi ptr [ %.sroa.140.60, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_.exit.i ], [ %.sroa.140.58, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_Kb0_EB2_.exit.i ], [ %.sroa.140.56, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_Kb0_KB1r_EB2_.exit.i ], [ %.sroa.140.40, %bb.px ], [ %.sroa.140.53, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1r_KB1r_EB2_.exit.i ], [ %.sroa.140.51, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1r_KB1v_EB2_.exit.i ], [ %.sroa.140.49, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1v_KB1r_EB2_.exit.i ], [ %.sroa.140.46, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1v_KB1v_EB2_.exit.i ], [ %.sroa.140.44, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1v_KB1r_EB2_.exit.i ], [ %.sroa.140.42, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1r_KB1v_EB2_.exit.i ], [ %.sroa.140.38, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_Kb1_KB1A_EB2_.exit.i ], [ %.sroa.140.36, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_Kb1_KB1r_EB2_.exit.i ], [ %.sroa.140.34, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_KB1r_Kb1_EB2_.exit.i ]
  %i.bya = phi <2 x i64> [ %i.bxy, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_KB1r_EB2_.exit.i ], [ %i.bwv, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_KB1r_Kb0_EB2_.exit.i ], [ %i.bdy, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_KB1r_Kb0_KB1r_EB2_.exit.i ], [ %i.axd, %bb.px ], [ %i.btl, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1r_KB1r_EB2_.exit.i ], [ %i.bsi, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1r_KB1v_EB2_.exit.i ], [ %i.bam, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb1_Kb0_KB1v_KB1r_EB2_.exit.i ], [ %i.bpa, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1v_KB1v_EB2_.exit.i ], [ %i.bnx, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1v_KB1r_EB2_.exit.i ], [ %i.awz, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_Kb1_KB1r_KB1v_EB2_.exit.i ], [ %i.bkp, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_Kb1_KB1A_EB2_.exit.i ], [ %i.bjm, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_Kb1_KB1r_EB2_.exit.i ], [ %i.atp, %_RINvCsfPYenFzdTHO_5uu_wc34word_count_from_reader_specializedNtNtCs2vKOLqTMYjT_3std2fs4FileKb0_KB1r_KB1r_Kb1_EB2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  br label %bb.aaf

bb.aaf:                                           ; preds = %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit, %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEB2_.exit
  %.sroa.100.0 = phi i64 [ %.sroa.100.32, %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEB2_.exit ], [ %.sroa.100.64, %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit ]
  %.sroa.140.0 = phi ptr [ %.sroa.140.32, %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEB2_.exit ], [ %.sroa.140.64, %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit ] ; 2 uses
  %i.byb = phi <2 x i64> [ %i.arr, %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtNtCs2vKOLqTMYjT_3std2io5stdio9StdinLockEB2_.exit ], [ %i.bya, %_RINvCsfPYenFzdTHO_5uu_wc22word_count_from_readerNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_.exit ]
  %.not = icmp eq ptr %.sroa.140.0, null
  %.sroa.7.0..sroa_idx417 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx417, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.124, i64 16, i1 false)
  br i1 %.not, label %bb.aai, label %bb.aah

bb.aag:                                           ; preds = %bb.aai, %bb.ns
  ret void

bb.aah:                                           ; preds = %bb.aaf
  %i.byc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.140.0, ptr %i.byc, align 8
  br label %bb.aai

bb.aai:                                           ; preds = %bb.aaf, %bb.aah
  %storemerge = phi i64 [ 1, %bb.aah ], [ 0, %bb.aaf ]
  %i.byd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.byb, ptr %i.byd, align 8
  %i.bye = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.100.0, ptr %i.bye, align 8
  store i64 %storemerge, ptr %0, align 8
  br label %bb.aag
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvCsfPYenFzdTHO_5uu_wc2wc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 8 uses
  %i.ap = alloca [24 x i8], align 8               ; 8 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [160 x i8], align 8              ; 20 uses
  %i.as = alloca [88 x i8], align 8               ; 4 uses
  %.sroa.461.i = alloca [56 x i8], align 8        ; 5 uses
  %i.at = alloca [80 x i8], align 8               ; 8 uses
  %i.au = alloca [16 x i8], align 8               ; 4 uses
  %i.av = alloca [176 x i8], align 8              ; 8 uses
  %.sroa.0591 = alloca [24 x i8], align 8         ; 4 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.0589 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.0587 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.0585 = alloca [24 x i8], align 8         ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [8 x i8], align 8                ; 5 uses
  %i.bf = alloca [8 x i8], align 8                ; 5 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [32 x i8], align 8               ; 7 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [8 x i8], align 8                ; 4 uses
  %i.bk = alloca [8 x i8], align 8                ; 5 uses
  %i.bl = alloca [8 x i8], align 8                ; 5 uses
  %i.bm = alloca [8 x i8], align 8                ; 4 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [8 x i8], align 8                ; 4 uses
  %i.bq = alloca [8 x i8], align 8                ; 5 uses
  %i.br = alloca [8 x i8], align 8                ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 10 uses
  %i.bt = alloca [32 x i8], align 8               ; 7 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [8 x i8], align 8                ; 4 uses
  %i.bw = alloca [8 x i8], align 8                ; 5 uses
  %i.bx = alloca [8 x i8], align 8                ; 5 uses
  %i.by = alloca [40 x i8], align 16              ; 7 uses
  %i.bz = alloca [56 x i8], align 8               ; 7 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [16 x i8], align 8               ; 5 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [8 x i8], align 8                ; 5 uses
  %i.ce = alloca [16 x i8], align 8               ; 6 uses
  %i.cf = alloca [24 x i8], align 8               ; 10 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 8 uses
  %i.ci = alloca [24 x i8], align 8               ; 6 uses
  %i.cj = alloca [16 x i8], align 8               ; 6 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [16 x i8], align 8               ; 6 uses
  %i.cm = alloca [24 x i8], align 8               ; 13 uses
  %i.cn = alloca [24 x i8], align 8               ; 7 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [24 x i8], align 8               ; 8 uses
  %i.cr = alloca [24 x i8], align 8               ; 6 uses
  %i.cs = alloca [16 x i8], align 8               ; 6 uses
  %i.ct = alloca [24 x i8], align 8               ; 10 uses
  %i.cu = alloca [24 x i8], align 8               ; 7 uses
  %i.cv = alloca [8 x i8], align 8                ; 4 uses
  %i.cw = alloca [16 x i8], align 8               ; 5 uses
  %i.cx = alloca [24 x i8], align 8               ; 8 uses
  %i.cy = alloca [24 x i8], align 8               ; 6 uses
  %i.cz = alloca [16 x i8], align 8               ; 6 uses
  %i.da = alloca [24 x i8], align 8               ; 10 uses
  %i.db = alloca [24 x i8], align 8               ; 7 uses
  %i.dc = alloca [8 x i8], align 8                ; 4 uses
  %i.dd = alloca [16 x i8], align 8               ; 5 uses
  %i.de = alloca [24 x i8], align 8               ; 6 uses
  %i.df = alloca [8 x i8], align 8                ; 4 uses
  %i.dg = alloca [40 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.dg, i8 0, i64 40, i1 false), !alias.scope !1503
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.di = load i8, ptr %i.dh, align 2, !range !1504, !noundef !4 ; 2 uses
  %.not144 = icmp eq i8 %i.di, 2                  ; 4 uses
  br i1 %.not144, label %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.dj = load i64, ptr %0, align 8, !range !23, !alias.scope !1505, !noundef !4
  switch i64 %i.dj, label %default.unreachable1408 [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit
  ]

default.unreachable1408:                          ; preds = %bb.h, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481, %bb.mj, %bb.mf, %bb.ma, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414, %bb.jh, %bb.jd, %bb.iv, %bb.io, %bb.ik, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446, %bb.lg, %bb.lc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i, %bb.hw, %bb.hs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit, %bb.gz, %bb.gb, %bb.fw, %bb.er, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc14WcSimdFeaturesEBD_.exit, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = load i8, ptr %i.dk, align 8, !range !14, !alias.scope !1507, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dn = load i8, ptr %i.dm, align 1, !range !14, !alias.scope !1507, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.dp = load i8, ptr %i.do, align 2, !range !14, !alias.scope !1507, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dr = load i8, ptr %i.dq, align 4, !range !14, !alias.scope !1507, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.dt = load i8, ptr %i.ds, align 1, !range !14, !alias.scope !1507, !noundef !4
  %narrow.i.i = add nuw nsw i8 %i.dn, %i.dl
  %narrow27.i.i = add nuw nsw i8 %narrow.i.i, %i.dp
  %narrow28.i.i = add nuw nsw i8 %narrow27.i.i, %i.dr
  %narrow29.i.i = add nuw nsw i8 %narrow28.i.i, %i.dt
  %i.du = icmp eq i8 %narrow29.i.i, 1
  %..i = select i1 %i.du, i64 1, i64 7
  br label %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit

bb.d:                                             ; preds = %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dw = load i8, ptr %i.dv, align 8, !range !14, !alias.scope !1508, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.dy = load i8, ptr %i.dx, align 1, !range !14, !alias.scope !1508, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.ea = load i8, ptr %i.dz, align 2, !range !14, !alias.scope !1508, !noundef !4
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ec = load i8, ptr %i.eb, align 4, !range !14, !alias.scope !1508, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.ee = load i8, ptr %i.ed, align 1, !range !14, !alias.scope !1508, !noundef !4
  %narrow.i12.i = add nuw nsw i8 %i.dy, %i.dw
  %narrow27.i13.i = add nuw nsw i8 %narrow.i12.i, %i.ea
  %narrow28.i14.i = add nuw nsw i8 %narrow27.i13.i, %i.ec
  %narrow29.i15.i = add nuw nsw i8 %narrow28.i14.i, %i.ee
  %i.ef = icmp eq i8 %narrow29.i15.i, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !1505 ; 4 uses
  br i1 %i.ef, label %bb.e, label %._crit_edge36.i

bb.e:                                             ; preds = %bb.d
  %i.ei = icmp ult i64 %i.eh, 384307168202282326
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp eq i64 %i.eh, 1
  br i1 %i.ej, label %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.e, %bb.d
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !1505, !nonnull !4, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.eh, 24
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %i.en = icmp eq i64 %i.eh, 0
  br i1 %i.en, label %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge36.i
  %.sroa.1120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %.sroa.1221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.134.i = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.3.i, %bb.k ] ; 2 uses
  %.sroa.02.033.i = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.02.2.i, %bb.k ] ; 3 uses
  %.sroa.05.032.i = phi ptr [ %i.el, %.lr.ph.i ], [ %i.eq, %bb.k ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.05.032.i, i64 24 ; 2 uses
  %i.er = load i64, ptr %.sroa.05.032.i, align 8, !range !22, !noalias !1509, !noundef !4
  %i.es = icmp eq i64 %i.er, -2
  br i1 %i.es, label %bb.k, label %bb.g

._crit_edge.i:                                    ; preds = %bb.k
  %i.et = icmp eq i64 %.sroa.02.2.i, 0
  br i1 %i.et, label %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1511
  %.val1.pn.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.032.i, i64 16
  %.val1.pn.i.i.i.i = load i64, ptr %.val1.pn.in.i.i.i.i, align 8, !alias.scope !1512, !noalias !1509, !noundef !4
  %.val.pn.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.032.i, i64 8
  %.val.pn.i.i.i.i = load ptr, ptr %.val.pn.in.i.i.i.i, align 8, !alias.scope !1512, !noalias !1509, !nonnull !4, !noundef !4
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.pn.i.i.i.i, i64 noundef %.val1.pn.i.i.i.i) #28, !noalias !1511
  %i.eu = load i64, ptr %i.av, align 8, !range !23, !noalias !1511, !noundef !4
  %i.ev = icmp eq i64 %i.eu, 2
  br i1 %i.ev, label %bb.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit.i: ; preds = %bb.g
  %.sroa.1120.0.copyload.i = load i32, ptr %.sroa.1120.0..sroa_idx.i, align 8, !noalias !1513
  %.sroa.1221.0.copyload.i = load i64, ptr %.sroa.1221.0..sroa_idx.i, align 8, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1511
  %i.ew = and i32 %.sroa.1120.0.copyload.i, 61440
  %i.ex = icmp eq i32 %i.ew, 32768                ; 2 uses
  %i.ey = select i1 %i.ex, i64 %.sroa.1221.0.copyload.i, i64 0
  %.sroa.02.1.i = add i64 %i.ey, %.sroa.02.033.i
  %.sroa.0.2.i = select i1 %i.ex, i64 %.sroa.0.134.i, i64 7
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ez = load ptr, ptr %i.eo, align 8, !noalias !1511, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1509
  %i.fa = ptrtoint ptr %i.ez to i64               ; 2 uses
  %i.fb = and i64 %i.fa, 3
  switch i64 %i.fb, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit19.i
    i64 3, label %bb.i
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit19.i
    i64 1, label %bb.j
  ], !prof !11

bb.i:                                             ; preds = %bb.h
  %i.fc = icmp ult ptr %i.ez, inttoptr (i64 188978561024 to ptr)
  %i.fd = and i64 %i.fa, 1095216660480
  %i.fe = icmp ne i64 %i.fd, 1095216660480
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.assume(i1 %i.fe)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit19.i

bb.j:                                             ; preds = %bb.h
  %i.ff = getelementptr i8, ptr %i.ez, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ff) ]
  store ptr %i.ff, ptr %i.ep, align 8, !alias.scope !1514, !noalias !1509
  store i8 3, ptr %i.au, align 8, !alias.scope !1514, !noalias !1509
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ep) #28, !noalias !1509
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit19.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit19.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !1509
  br label %bb.k

bb.k:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit19.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit.i, %bb.f
  %.sroa.02.2.i = phi i64 [ %.sroa.02.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit.i ], [ %.sroa.02.033.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit19.i ], [ %.sroa.02.033.i, %bb.f ] ; 5 uses
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit.i ], [ %.sroa.0.134.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit19.i ], [ 7, %bb.f ] ; 3 uses
  %i.fg = icmp eq ptr %i.eq, %i.em
  br i1 %i.fg, label %._crit_edge.i, label %bb.f

bb.l:                                             ; preds = %._crit_edge.i
  %i.fh = icmp ugt i64 %.sroa.02.2.i, 9999999999  ; 2 uses
  %i.fi = udiv i64 %.sroa.02.2.i, 10000000000
  %.sroa.05.0.i.i = select i1 %i.fh, i32 10, i32 0 ; 2 uses
  %.sroa.0.0.i.i = select i1 %i.fh, i64 %i.fi, i64 %.sroa.02.2.i ; 3 uses
  %i.fj = icmp samesign ugt i64 %.sroa.0.0.i.i, 99999
  br i1 %i.fj, label %bb.m, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfPYenFzdTHO_5uu_wc.exit.i

bb.m:                                             ; preds = %bb.l
  %i.fk = udiv i64 %.sroa.0.0.i.i, 100000
  %i.fl = or disjoint i32 %.sroa.05.0.i.i, 5
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfPYenFzdTHO_5uu_wc.exit.i

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfPYenFzdTHO_5uu_wc.exit.i: ; preds = %bb.m, %bb.l
  %.sroa.05.1.i.i = phi i32 [ %i.fl, %bb.m ], [ %.sroa.05.0.i.i, %bb.l ]
  %.sroa.0.1.i.i = phi i64 [ %i.fk, %bb.m ], [ %.sroa.0.0.i.i, %bb.l ]
  %i.fm = trunc nuw nsw i64 %.sroa.0.1.i.i to i32 ; 4 uses
  %i.fn = add nuw nsw i32 %i.fm, 393206
  %i.fo = add nuw nsw i32 %i.fm, 524188
  %i.fp = and i32 %i.fn, %i.fo
  %i.fq = add nuw nsw i32 %i.fm, 916504
  %i.fr = add nuw nsw i32 %i.fm, 514288
  %i.fs = and i32 %i.fq, %i.fr
  %i.ft = xor i32 %i.fp, %i.fs
  %i.fu = lshr i32 %i.ft, 17
  %i.fv = add nuw nsw i32 %i.fu, %.sroa.05.1.i.i  ; 2 uses
  %i.fw = icmp samesign ult i32 %i.fv, 20
  call void @llvm.assume(i1 %i.fw)
  %i.fx = add nuw nsw i32 %i.fv, 1
  %i.fy = zext nneg i32 %i.fx to i64
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.3.i, i64 %i.fy)
  br label %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit

_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfPYenFzdTHO_5uu_wc.exit.i, %._crit_edge.i, %._crit_edge36.i, %bb.e, %bb.c, %bb.b, %bb.a
  %.sroa.03.0 = phi i64 [ 1, %bb.a ], [ 1, %bb.b ], [ %..i, %bb.c ], [ %..i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error15TryFromIntErrorE6expectCsfPYenFzdTHO_5uu_wc.exit.i ], [ %.sroa.0.3.i, %._crit_edge.i ], [ 1, %bb.e ], [ 1, %._crit_edge36.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.ga = load i8, ptr %i.fz, align 1, !range !14, !noundef !4
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc14WcSimdFeaturesEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc14WcSimdFeaturesEBD_.exit: ; preds = %bb.fb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEECsfPYenFzdTHO_5uu_wc.exit6.i, %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.461.i)
  %i.gc = load i64, ptr %0, align 8, !range !23, !alias.scope !1515, !noundef !4
  switch i64 %i.gc, label %default.unreachable1408 [
    i64 0, label %bb.n
    i64 1, label %bb.p
    i64 2, label %bb.r
  ]

bb.n:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc14WcSimdFeaturesEBD_.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1517
  %i.gd = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #28, !noalias !1517 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.o, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !9

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30, !noalias !1517
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.n
  store i64 -2, ptr %i.gd, align 8, !noalias !1518
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1518
  br label %bb.s

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc14WcSimdFeaturesEBD_.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !1515, !nonnull !4, !noundef !4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !1515, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1518
  %i.gj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef 8) #28, !noalias !1518 ; 4 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.q, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit57.i, !prof !9

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #30, !noalias !1518
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit57.i: ; preds = %bb.p
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.gi
  store ptr %i.gg, ptr %i.gj, align 8, !noalias !1518
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store ptr %i.gl, ptr %i.gm, align 8, !noalias !1518
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc14WcSimdFeaturesEBD_.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !range !22, !alias.scope !1515, !noundef !4
  %i.gp = icmp eq i64 %i.go, -2
  br i1 %i.gp, label %bb.t, label %bb.v

bb.s:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit59.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit57.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.55.0.i = phi ptr [ @110, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ @111, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit57.i ], [ @113, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i ], [ @112, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit59.i ] ; 7 uses
  %.sroa.04.0.i = phi ptr [ %i.gd, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.gj, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit57.i ], [ %i.gr, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i ], [ %i.gz, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit59.i ] ; 6 uses
  %i.gq = load i64, ptr %1, align 8, !range !27, !alias.scope !1516, !noundef !4 ; 2 uses
  switch i64 %i.gq, label %bb.z [
    i64 -3, label %bb.he
    i64 -2, label %bb.y
  ]

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1518
  call fastcc void @_RNvCsfPYenFzdTHO_5uu_wc17files0_iter_stdin(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.as) #28, !noalias !1518
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1519
  %i.gr = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 88, i64 noundef 8) #28, !noalias !1519 ; 3 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.u, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i, !prof !9

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #30, !noalias !1519
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit58.i: ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.gr, ptr noundef nonnull align 8 dereferenceable(88) %i.as, i64 88, i1 false), !noalias !1518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1518
  br label %bb.s

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1518
  %.sroa.013.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.013.0.i = load ptr, ptr %.sroa.013.0.in.i, align 8, !alias.scope !1515, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !1515, !noundef !4
  call fastcc void @_RNvCsfPYenFzdTHO_5uu_wc16files0_iter_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.013.0.i, i64 noundef %.sroa.3.0.i) #28, !noalias !1518
  %i.gt = load i64, ptr %i.at, align 8, !range !22, !noalias !1518, !noundef !4 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, -2
  %i.gv = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !1518 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !1518 ; 2 uses
  br i1 %i.gu, label %bb.hd, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.461.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.646.0..sroa_idx.i, i64 56, i1 false), !noalias !1518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1518
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1520
  %i.gz = call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 80, i64 noundef 8) #28, !noalias !1520 ; 6 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.x, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit59.i, !prof !9

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #30, !noalias !1520
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit59.i: ; preds = %bb.w
  store i64 %i.gt, ptr %i.gz, align 8, !noalias !1518
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.gw, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1518
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store ptr %i.gy, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1518
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.461.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.461.i, i64 56, i1 false), !noalias !1518
  br label %bb.s

bb.y:                                             ; preds = %bb.s
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hc = load i8, ptr %i.hb, align 8, !range !14, !alias.scope !1516, !noundef !4
  br label %bb.he

bb.z:                                             ; preds = %bb.s
  %.sroa.554.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.554.0.i = load i64, ptr %.sroa.554.0.in.i, align 8, !alias.scope !1516, !noundef !4
  %.sroa.053.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.053.0.i = load ptr, ptr %.sroa.053.0.in.i, align 8, !alias.scope !1516, !nonnull !4, !noundef !4
  %i.hd = ptrtoint ptr %.sroa.053.0.i to i64      ; 2 uses
  %.sroa.451.0.extract.trunc.i = trunc i64 %i.hd to i8
  %.sroa.451.1.extract.shift.i = and i64 %i.hd, -256
  br label %bb.he

bb.aa:                                            ; preds = %_RNvCsfPYenFzdTHO_5uu_wc20compute_number_width.exit
  %i.he = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features8hardwareNtB5_10SimdPolicy6detect() #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1521
  call void @_RNvXs2_NtNtCsh036I4OHgIr_6uucore8features8hardwareNtB5_10SimdPolicyNtB5_19HasHardwareFeatures13iter_features(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(none) dereferenceable(160) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.he) #28, !noalias !1522
  call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1524
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.hf = call fastcc noundef ptr @_RNvXsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3setINtB5_10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ar) #28, !noalias !1525 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB2B_6copied6CopiedINtNtNtNtB6_11collections5btree3set10DifferenceB11_EENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0EE9from_iterB4I_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load i8, ptr %i.hf, align 1, !range !20, !noalias !1526, !noundef !4 ; 2 uses
  switch i8 %.val.i.i.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6copied13copy_try_foldNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureuINtNtNtBa_3ops12control_flow11ControlFlowB13_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB13_QNCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0E0E0B3N_.exit.i.i.i.i.i.i [
    i8 1, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
    i8 4, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
    i8 5, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
  ]

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i: ; preds = %bb.ab, %bb.ab, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %i.hg = load i64, ptr %i.ar, align 8, !range !28, !alias.scope !1530, !noalias !1521, !noundef !4 ; 2 uses
  %i.hh = icmp samesign ult i64 %i.hg, 2
  br i1 %i.hh, label %bb.ac, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i

bb.ac:                                            ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.hj = load i64, ptr %i.hi, align 8, !range !17, !alias.scope !1531, !noalias !1521, !noundef !4
  %i.hk = trunc nuw i64 %i.hj to i1
  br i1 %i.hk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !1531, !noalias !1521, !noundef !4
  %.not.i.i.i.i6.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i6.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.0.0.i.i.i.i4.i.i = phi i64 [ 0, %bb.ac ], [ 1, %bb.ad ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %.val.i.i.i.i5.i.i = load i64, ptr %i.hn, align 8, !alias.scope !1531, !noalias !1521, !noundef !4 ; 3 uses
  %i.ho = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i5.i.i, i64 %.sroa.0.0.i.i.i.i4.i.i)
  %i.hp = add i64 %.val.i.i.i.i5.i.i, %.sroa.0.0.i.i.i.i4.i.i ; 2 uses
  %i.hq = icmp uge i64 %i.hp, %.val.i.i.i.i5.i.i
  %.7.i.i.i.i.i.i = zext i1 %i.hq to i64
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.sink10.i.i.i.i.i.i = phi i64 [ %i.ho, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %.7.sink.i.i.i.i.i.i = phi i64 [ %.7.i.i.i.i.i.i, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %.sink.i.i.i.i.i.i = phi i64 [ %i.hp, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1532
  store i64 %.7.sink.i.i.i.i.i.i, ptr %i.am, align 8, !noalias !1532
  %i.hr = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sink.i.i.i.i.i.i, ptr %i.hr, align 8, !noalias !1532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1532
  %i.hs = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sink10.i.i.i.i.i.i, ptr %i.hs, align 8, !noalias !1532
  store i64 1, ptr %i.al, align 8, !noalias !1532
  %i.ht = trunc nuw i64 %.7.sink.i.i.i.i.i.i to i1
  %i.hu = icmp eq i64 %.sink.i.i.i.i.i.i, %.sink10.i.i.i.i.i.i
  %or.cond.i.i.i.i.i = and i1 %i.hu, %i.ht
  br i1 %or.cond.i.i.i.i.i, label %bb.ag, label %bb.af, !prof !24

bb.af:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29, !noalias !1533
  unreachable

bb.ag:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB4_8PeekableINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENtNtNtB8_6traits8iterator8Iterator9size_hintCsfPYenFzdTHO_5uu_wc.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1532
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i: ; preds = %bb.ag, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator4nextB3w_.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1534
  %i.hv = call noundef dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 1) #28, !noalias !1534 ; 4 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ah, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i

bb.ah:                                            ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8) #30, !noalias !1535
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfPYenFzdTHO_5uu_wc.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtB7_6copied6CopiedINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set10DifferenceNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENCNvCsfPYenFzdTHO_5uu_wc16wc_simd_features0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3w_.exit.i.i
  store i8 %.val.i.i.i.i.i.i, ptr %i.hv, align 1, !noalias !1535
  store i64 8, ptr %i.an, align 8, !noalias !1524
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store ptr %i.hv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1524
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1524
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.48.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.20.0.copyload.i.i = load i64, ptr %.sroa.20.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.31.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.31.0.copyload.i.i = load i64, ptr %.sroa.31.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.3212.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %.sroa.3212.0.copyload.i.i = load i64, ptr %.sroa.3212.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.33.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %.sroa.33.0.copyload.i.i = load i64, ptr %.sroa.33.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %.sroa.34.0.copyload.i.i = load ptr, ptr %.sroa.34.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.35.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  %.sroa.35.0.copyload.i.i = load i64, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.38.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %.sroa.38.0.copyload.i.i = load i64, ptr %.sroa.38.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521
  %.sroa.3913.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 136
  %.sroa.3913.0.copyload.i.i = load i64, ptr %.sroa.3913.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521 ; 2 uses
  %.sroa.40.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %.sroa.40.0.copyload.i.i = load i64, ptr %.sroa.40.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521 ; 2 uses
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1523, !noalias !1521 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  call void @llvm.experimental.noalias.scope.decl(metadata !1537)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
end_hunk_0
begin_hunk_1_@_RNvCsfPYenFzdTHO_5uu_wc2wc:bb.a
  %.sroa.26.2139.i338 = phi i64 [ %i.ahv, %bb.go ], [ %i.ahb, %.preheader114.i334 ]
  %.sroa.084.2138.i339 = phi i64 [ %i.ahy, %bb.go ], [ 0, %.preheader114.i334 ]
  %i.ahq = load i8, ptr %.sroa.0.2140.i337, align 1, !alias.scope !1617, !noundef !4
  %i.ahr = zext i8 %i.ahq to i32
  %i.ahs = add nsw i32 %i.ahr, -48                ; 2 uses
  %i.aht = icmp ult i32 %i.ahs, 10
  br i1 %i.aht, label %bb.go, label %.loopexit

bb.go:                                            ; preds = %.lr.ph141.i336
  %i.ahu = mul i64 %.sroa.084.2138.i339, 10
  %i.ahv = add nsw i64 %.sroa.26.2139.i338, -1    ; 2 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i337, i64 1
  %i.ahx = zext nneg i32 %i.ahs to i64
  %i.ahy = sub i64 %i.ahu, %i.ahx                 ; 2 uses
  %.not103.i340 = icmp eq i64 %i.ahv, 0
  br i1 %.not103.i340, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit358, label %.lr.ph141.i336

bb.gp:                                            ; preds = %bb.gj, %bb.gi
  %.sroa.26.0.i341 = phi i64 [ %i.agz, %bb.gj ], [ %.sroa.6.0.copyload, %bb.gi ] ; 4 uses
  %.sroa.0.0.i342 = phi ptr [ %i.agy, %bb.gj ], [ %i.agu, %bb.gi ] ; 2 uses
  %i.ahz = icmp samesign ult i64 %.sroa.26.0.i341, 16
  br i1 %i.ahz, label %.preheader.i349, label %.preheader111.i343

.preheader.i349:                                  ; preds = %bb.gp
  %.not105146.i350 = icmp eq i64 %.sroa.26.0.i341, 0
  br i1 %.not105146.i350, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit358, label %.lr.ph150.i351

.preheader111.i343:                               ; preds = %bb.gp, %bb.gs
  %.sroa.0.3145.i344 = phi ptr [ %i.aia, %bb.gs ], [ %.sroa.0.0.i342, %bb.gp ] ; 2 uses
  %.sroa.26.3144.i345 = phi i64 [ %i.aib, %bb.gs ], [ %.sroa.26.0.i341, %bb.gp ]
  %.sroa.084.3143.i346 = phi i64 [ %i.aim, %bb.gs ], [ 0, %bb.gp ]
  %i.aia = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i344, i64 1
  %i.aib = add nsw i64 %.sroa.26.3144.i345, -1    ; 2 uses
  %i.aic = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i346, i64 10) ; 2 uses
  %i.aid = extractvalue { i64, i1 } %i.aic, 0
  %i.aie = extractvalue { i64, i1 } %i.aic, 1
  br i1 %i.aie, label %.loopexit, label %bb.gq, !prof !9

bb.gq:                                            ; preds = %.preheader111.i343
  %i.aif = load i8, ptr %.sroa.0.3145.i344, align 1, !alias.scope !1617, !noundef !4
  %i.aig = zext i8 %i.aif to i32
  %i.aih = add nsw i32 %i.aig, -48                ; 2 uses
  %i.aii = icmp ult i32 %i.aih, 10
  br i1 %i.aii, label %bb.gr, label %.loopexit

bb.gr:                                            ; preds = %bb.gq
  %i.aij = zext nneg i32 %i.aih to i64
  %i.aik = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aid, i64 %i.aij) ; 2 uses
  %i.ail = extractvalue { i64, i1 } %i.aik, 1
  br i1 %i.ail, label %.loopexit, label %bb.gs, !prof !9

bb.gs:                                            ; preds = %bb.gr
  %i.aim = extractvalue { i64, i1 } %i.aik, 0     ; 2 uses
  %.not104.i348 = icmp eq i64 %i.aib, 0
  br i1 %.not104.i348, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit358, label %.preheader111.i343

.lr.ph150.i351:                                   ; preds = %.preheader.i349, %bb.gt
  %.sroa.0.4149.i352 = phi ptr [ %i.ait, %bb.gt ], [ %.sroa.0.0.i342, %.preheader.i349 ] ; 2 uses
  %.sroa.26.4148.i353 = phi i64 [ %i.ais, %bb.gt ], [ %.sroa.26.0.i341, %.preheader.i349 ]
  %.sroa.084.4147.i354 = phi i64 [ %i.aiv, %bb.gt ], [ 0, %.preheader.i349 ]
  %i.ain = load i8, ptr %.sroa.0.4149.i352, align 1, !alias.scope !1617, !noundef !4
  %i.aio = zext i8 %i.ain to i32
  %i.aip = add nsw i32 %i.aio, -48                ; 2 uses
  %i.aiq = icmp ult i32 %i.aip, 10
  br i1 %i.aiq, label %bb.gt, label %.loopexit

bb.gt:                                            ; preds = %.lr.ph150.i351
  %i.air = mul i64 %.sroa.084.4147.i354, 10
  %i.ais = add nsw i64 %.sroa.26.4148.i353, -1    ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i352, i64 1
  %i.aiu = zext nneg i32 %i.aip to i64
  %i.aiv = add i64 %i.air, %i.aiu                 ; 2 uses
  %.not105.i355 = icmp eq i64 %i.ais, 0
  br i1 %.not105.i355, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit358, label %.lr.ph150.i351

bb.gu:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yd, ptr nonnull align 1 %.sroa.4507.0.copyload, i64 %.sroa.6.0.copyload, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit.thread649

.loopexit:                                        ; preds = %.lr.ph.i326, %bb.gm, %bb.gl, %.lr.ph141.i336, %.preheader111.i343, %bb.gq, %bb.gr, %.lr.ph150.i351, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit324, %bb.gh, %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.agu, i64 noundef %.sroa.6.0.copyload) #27
  %i.aiw = load i8, ptr %i.cz, align 8, !range !14, !noundef !4
  %i.aix = trunc nuw i8 %i.aiw to i1
  br i1 %i.aix, label %bb.gx, label %bb.gy

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit358: ; preds = %bb.gn, %bb.go, %bb.gs, %bb.gt, %.preheader.i349, %.preheader114.i334
  %.sroa.15510.0 = phi i64 [ %i.aiv, %bb.gt ], [ %i.ahy, %bb.go ], [ %i.aim, %bb.gs ], [ 0, %.preheader.i349 ], [ 0, %.preheader114.i334 ], [ %i.ahp, %bb.gn ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 8, i64 noundef %.sroa.15510.0) #28
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gy, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cx) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br i1 %i.yc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit361, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agu, i64 noundef %.sroa.6.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1618
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit361

bb.gx:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  store i64 %.sroa.6.0.copyload, ptr %i.cy, align 8
  %.sroa.5.0..sroa_idx502 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.agu, ptr %.sroa.5.0..sroa_idx502, align 8
  %.sroa.9504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.9504.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cy) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cx) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit361

bb.gy:                                            ; preds = %.loopexit
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.aiz = load double, ptr %i.aiy, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.da, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 8, double noundef %i.aiz) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  br label %bb.gv

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit361: ; preds = %bb.gw, %bb.gv, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  store ptr %i.db, ptr %i.cw, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.464.0..sroa_idx, align 8
  %i.aja = call noundef ptr @_RNvXso_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StderrNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef nonnull @71, ptr noundef nonnull %i.cw) #28 ; 4 uses
  %i.ajb = icmp eq ptr %i.aja, null
  br i1 %i.ajb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit364, label %bb.gz

bb.gz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.ajc = ptrtoint ptr %i.aja to i64             ; 2 uses
  %i.ajd = and i64 %i.ajc, 3
  switch i64 %i.ajd, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i362
    i64 3, label %bb.ha
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i362
    i64 1, label %bb.hb
  ], !prof !11

bb.ha:                                            ; preds = %bb.gz
  %i.aje = icmp ult ptr %i.aja, inttoptr (i64 188978561024 to ptr)
  %i.ajf = and i64 %i.ajc, 1095216660480
  %i.ajg = icmp ne i64 %i.ajf, 1095216660480
  call void @llvm.assume(i1 %i.aje)
  call void @llvm.assume(i1 %i.ajg)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i362

bb.hb:                                            ; preds = %bb.gz
  %i.ajh = getelementptr i8, ptr %i.aja, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ajh) ]
  %i.aji = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.ajh, ptr %i.aji, align 8, !alias.scope !1619
  store i8 3, ptr %i.af, align 8, !alias.scope !1619
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aji) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i362

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i362: ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit364

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit364: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit361, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %.val.i365 = load i64, ptr %i.db, align 8, !range !5, !alias.scope !1620, !noundef !4 ; 2 uses
  %i.ajj = icmp eq i64 %.val.i365, 0
  br i1 %i.ajj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit367, label %bb.hc

bb.hc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit364
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.val1.i366 = load ptr, ptr %i.ajk, align 8, !alias.scope !1620, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i366, i64 noundef %.val.i365, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1620
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit367

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit367: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit364, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br label %bb.ew

bb.hd:                                            ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !1518
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.461.i)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit464

bb.he:                                            ; preds = %bb.z, %bb.y, %bb.s
  %.sroa.522.sroa.0.0.i = phi i8 [ undef, %bb.s ], [ %i.hc, %bb.y ], [ %.sroa.451.0.extract.trunc.i, %bb.z ]
  %.sroa.020.0.i = phi i64 [ %i.gq, %bb.s ], [ -2, %bb.y ], [ -1, %bb.z ]
  %.sroa.522.sroa.4.sroa.0.0.i = phi i64 [ 0, %bb.s ], [ 0, %bb.y ], [ %.sroa.451.1.extract.shift.i, %bb.z ]
  %.sroa.522.sroa.4.sroa.4.0.i = phi i64 [ undef, %bb.s ], [ undef, %bb.y ], [ %.sroa.554.0.i, %bb.z ]
  %.sroa.7551.8.insert.ext = zext i8 %.sroa.522.sroa.0.0.i to i64
  %.sroa.7551.9.insert.insert = or disjoint i64 %.sroa.522.sroa.4.sroa.0.0.i, %.sroa.7551.8.insert.ext ; 2 uses
  %i.ajl = inttoptr i64 %.sroa.7551.9.insert.insert to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.461.i)
  %i.ajm = getelementptr inbounds nuw i8, ptr %.sroa.55.0.i, i64 24
  %i.ajn = load ptr, ptr %i.ajm, align 8, !invariant.load !4, !noalias !1621, !nonnull !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1622
  call void %i.ajn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull %.sroa.04.0.i) #26, !noalias !1622, !inline_history !1343
  %i.ajo = load i64, ptr %i.ae, align 8, !range !12, !noalias !1622, !noundef !4 ; 2 uses
  %.not.i.i987 = icmp eq i64 %i.ajo, -4
  br i1 %.not.i.i987, label %._crit_edge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.he
  %.sroa.9.8..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.sroa.5.0..sroa.9.8..sroa_idx43.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %.sroa.53.0..sroa_idx.i419.a = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %.sroa.75.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 5 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 4 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.4121.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.akc = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.4125.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.akd = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %3 = icmp ne i64 %.sroa.7551.9.insert.insert, 0
  %.sroa.644.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.akh = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.akl = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx2300 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.6.0..sroa_idx2301 = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  br label %bb.hf

bb.hf:                                            ; preds = %.lr.ph.a, %.backedge
  %i.ako = phi i64 [ %i.ajo, %.lr.ph.a ], [ %i.axy, %.backedge ] ; 12 uses
  %.sroa.01.0989 = phi i64 [ 0, %.lr.ph.a ], [ %.sroa.01.0.be, %.backedge ] ; 2 uses
  %.sroa.20.0988 = phi i64 [ 0, %.lr.ph.a ], [ %i.akp, %.backedge ]
  %.sroa.9.sroa.0.0.copyload.i = load ptr, ptr %.sroa.9.8..sroa_idx43.i, align 8, !noalias !1623 ; 12 uses
  %.sroa.9.sroa.5.0.copyload.i = load i64, ptr %.sroa.9.sroa.5.0..sroa.9.8..sroa_idx43.sroa_idx.i, align 8, !noalias !1623 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1622
  %i.akp = add i64 %.sroa.20.0988, 1              ; 2 uses
  %i.akq = icmp sgt i64 %i.ako, -2
  %i.akr = icmp eq i64 %.sroa.9.sroa.5.0.copyload.i, 0
  %or.cond.i = select i1 %i.akq, i1 %i.akr, i1 false
  br i1 %or.cond.i, label %bb.hg, label %bb.hl

bb.hg:                                            ; preds = %bb.hf
  switch i64 %.sroa.020.0.i, label %bb.hh [
    i64 -3, label %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.i
    i64 -2, label %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.fold.split.i
  ]

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.assume(i1 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1624
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajl, i64 noundef %.sroa.522.sroa.4.sroa.4.0.i, i24 1) #28, !noalias !1625
  %.sroa.042.0.copyload.i.i.i = load i64, ptr %i.ad, align 8, !noalias !1624 ; 3 uses
  %.sroa.644.0.copyload.i.i.i = load i64, ptr %.sroa.644.0..sroa_idx.i.i.i, align 8, !noalias !1624 ; 3 uses
  %.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !1624 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1626
  %i.aks = inttoptr i64 %.sroa.644.0.copyload.i.i.i to ptr ; 2 uses
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aks, i64 noundef %.sroa.8.0.copyload.i.i.i) #28, !noalias !1627
  %i.akt = load i64, ptr %i.ac, align 8, !range !17, !noalias !1626, !noundef !4
  %i.aku = trunc nuw i64 %i.akt to i1
  br i1 %i.aku, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i.i.i

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i.i.i: ; preds = %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1626
  br label %_RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit.i.i

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i: ; preds = %bb.hh
  %.sroa.853.24.copyload.i.i.i = load i64, ptr %i.akh, align 8, !noalias !1626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1626
  %.not.i.i.i370 = icmp eq i64 %.sroa.042.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i370, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i._RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit_crit_edge.i.i, label %bb.hi

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i._RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit_crit_edge.i.i: ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i
  %.pre.i.i371 = inttoptr i64 %.sroa.8.0.copyload.i.i.i to ptr
  br label %_RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit.i.i

bb.hi:                                            ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1628
  store i64 %.sroa.042.0.copyload.i.i.i, ptr %i.ab, align 8, !noalias !1629
  %.sroa.5.sroa.6.0..sroa_idx32.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.sroa.644.0.copyload.i.i.i, ptr %.sroa.5.sroa.6.0..sroa_idx32.i.i.i, align 8, !noalias !1629
  %.sroa.5.sroa.7.0..sroa_idx36.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.8.0.copyload.i.i.i, ptr %.sroa.5.sroa.7.0..sroa_idx36.i.i.i, align 8, !noalias !1629
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 64, ptr noundef nonnull %i.ab, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #29, !noalias !1630
  unreachable

_RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit.i.i: ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i._RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit_crit_edge.i.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i.i.i
  %.pre-phi.i.i = phi ptr [ %.pre.i.i371, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i._RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit_crit_edge.i.i ], [ %i.aks, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i.i.i ]
  %.sroa.5.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.644.0.copyload.i.i.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i._RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit_crit_edge.i.i ], [ %.sroa.042.0.copyload.i.i.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i.i.i ]
  %.sroa.5.sroa.7.0.ph.i.i.i = phi i64 [ %.sroa.853.24.copyload.i.i.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.i._RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit_crit_edge.i.i ], [ %.sroa.8.0.copyload.i.i.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1624
  br label %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.i

_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.fold.split.i: ; preds = %bb.hg
  br label %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.i

_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.i: ; preds = %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.fold.split.i, %_RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit.i.i, %bb.hg
  %.sroa.636.0.i = phi i64 [ undef, %bb.hg ], [ %.sroa.5.sroa.7.0.ph.i.i.i, %_RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit.i.i ], [ 1, %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.fold.split.i ]
  %.sroa.535.0.i = phi ptr [ undef, %bb.hg ], [ %.pre-phi.i.i, %_RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit.i.i ], [ @54, %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.fold.split.i ]
  %.sroa.034.0.i = phi i64 [ -9223372036854775806, %bb.hg ], [ %.sroa.5.sroa.0.0.ph.i.i.i, %_RNvCsfPYenFzdTHO_5uu_wc19escape_name_wrapper.exit.i.i ], [ -1, %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.fold.split.i ]
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1631
  %i.akv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #28, !noalias !1631 ; 6 uses
  %i.akw = icmp eq ptr %i.akv, null
  br i1 %i.akw, label %bb.hj, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i368, !prof !9

bb.hj:                                            ; preds = %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !1631
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i368: ; preds = %_RNvMs6_CsfPYenFzdTHO_5uu_wcNtB5_7WcError8zero_len.exit.i
  store i64 %.sroa.034.0.i, ptr %i.akv, align 8, !noalias !1632
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akv, i64 8
  store ptr %.sroa.535.0.i, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !1632
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akv, i64 16
  store i64 %.sroa.636.0.i, ptr %.sroa.636.0..sroa_idx.i, align 8, !noalias !1632
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  store i64 %i.akp, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1632
  %i.akx = icmp sgt i64 %i.ako, 0
  br i1 %i.akx, label %bb.hk, label %.thread

bb.hk:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i368
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.sroa.0.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload.i, i64 noundef %i.ako, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1633
  br label %.thread

.thread:                                          ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i368, %bb.hk
  %i.aky = add i64 %.sroa.01.0989, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  br label %bb.ih

bb.hl:                                            ; preds = %bb.hf
  %i.akz = inttoptr i64 %.sroa.9.sroa.5.0.copyload.i to ptr ; 2 uses
  %i.ala = add i64 %.sroa.01.0989, 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  %i.alb = icmp eq i64 %i.ako, -3
  br i1 %i.alb, label %bb.ih, label %bb.iv

._crit_edge.loopexit:                             ; preds = %.backedge
  %4 = icmp ugt i64 %.sroa.01.0.be, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.he
  %.sroa.01.0.lcssa = phi i1 [ false, %bb.he ], [ %4, %._crit_edge.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1622
  %i.alc = load ptr, ptr %.sroa.55.0.i, align 8, !invariant.load !4, !noalias !1634 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.alc, null
  br i1 %.not.i.i.i.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %._crit_edge
  call void %i.alc(ptr noundef nonnull %.sroa.04.0.i) #26, !noalias !1634, !inline_history !1365
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %._crit_edge
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.55.0.i, i64 8
  %i.ale = load i64, ptr %i.ald, align 8, !range !5, !invariant.load !4, !noalias !1634 ; 2 uses
  %i.alf = icmp eq i64 %i.ale, 0
  br i1 %i.alf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.hn
  %i.alg = getelementptr inbounds nuw i8, ptr %.sroa.55.0.i, i64 16
  %i.alh = load i64, ptr %i.alg, align 8, !range !7, !invariant.load !4, !noalias !1634
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i, i64 noundef %i.ale, i64 noundef range(i64 1, -9223372036854775807) %i.alh) #28, !noalias !1634
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit: ; preds = %bb.hn, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  switch i8 %i.di, label %default.unreachable1408 [
    i8 0, label %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit
    i8 1, label %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit.thread
    i8 2, label %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit.thread
    i8 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit464
  ]

_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit
  br i1 %.sroa.01.0.lcssa, label %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit.thread, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit464

_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit, %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 8) #28
  %i.ali = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.alj = load i64, ptr %i.ali, align 8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.all = load ptr, ptr %i.alk, align 8, !nonnull !4 ; 2 uses
  %.sroa.347.0 = select i1 %.not144, i64 undef, i64 %i.alj
  %.sroa.046.0 = select i1 %.not144, ptr null, ptr %i.all
  %i.alm = call fastcc noundef ptr @_RNvCsfPYenFzdTHO_5uu_wc11print_stats(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dg, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.046.0, i64 %.sroa.347.0, i64 noundef %.sroa.03.0) #28 ; 2 uses
  %.not145 = icmp eq ptr %i.alm, null
  br i1 %.not145, label %bb.if, label %bb.ho

bb.ho:                                            ; preds = %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0591)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0591, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 30) #28
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1635
  %i.aln = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #28, !noalias !1635 ; 4 uses
  %i.alo = icmp eq ptr %i.aln, null
  br i1 %i.alo, label %bb.hp, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !9

bb.hp:                                            ; preds = %bb.ho
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !1635
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aln, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0591, i64 24, i1 false)
  %.sroa.4592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aln, i64 24
  store ptr %i.alm, ptr %.sroa.4592.0..sroa_idx, align 8
  store ptr %i.aln, ptr %i.bf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0591)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.bd, align 8
  %i.alp = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bd) #28
  store ptr %i.alp, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.alq = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #28 ; 2 uses
  %i.alr = extractvalue { ptr, i64 } %i.alq, 0
  %i.als = extractvalue { ptr, i64 } %i.alq, 1
  store ptr %i.alr, ptr %i.bc, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.als, ptr %i.alt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr %i.bc, ptr %i.bb, align 8
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.4129.0..sroa_idx, align 8
  %i.alu = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bf, ptr %i.alu, align 8
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.4133.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1636
  store ptr %i.be, ptr %i.aa, align 8, !noalias !1636
  %i.alv = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr null, ptr %i.alv, align 8, !noalias !1636
  %i.alw = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @77, ptr noundef nonnull %i.bb) #28
  %i.alx = load ptr, ptr %i.alv, align 8, !noalias !1636, !noundef !4 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.alx, null           ; 2 uses
  br i1 %i.alw, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  br i1 %.not.i5.i, label %bb.hv, label %bb.hw, !prof !9

bb.hr:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i.thread, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1636
  %i.aly = ptrtoint ptr %i.alx to i64             ; 2 uses
  %i.alz = and i64 %i.aly, 3
  switch i64 %i.alz, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i
    i64 3, label %bb.ht
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i
    i64 1, label %bb.hu
  ], !prof !11

bb.ht:                                            ; preds = %bb.hs
  %i.ama = icmp ult ptr %i.alx, inttoptr (i64 188978561024 to ptr)
  %i.amb = and i64 %i.aly, 1095216660480
  %i.amc = icmp ne i64 %i.amb, 1095216660480
  call void @llvm.assume(i1 %i.ama)
  call void @llvm.assume(i1 %i.amc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i

bb.hu:                                            ; preds = %bb.hs
  %i.amd = getelementptr i8, ptr %i.alx, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amd) ]
  %i.ame = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.amd, ptr %i.ame, align 8, !alias.scope !1637, !noalias !1636
  store i8 3, ptr %i.z, align 8, !alias.scope !1637, !noalias !1636
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ame) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i: ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1636
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i.thread

bb.hv:                                            ; preds = %bb.hq
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #29
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i.thread: ; preds = %bb.hr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1636
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit380

bb.hw:                                            ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.amf = ptrtoint ptr %i.alx to i64             ; 2 uses
  %i.amg = and i64 %i.amf, 3
  switch i64 %i.amg, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i378
    i64 3, label %bb.hx
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i378
    i64 1, label %bb.hy
  ], !prof !11

bb.hx:                                            ; preds = %bb.hw
  %i.amh = icmp ult ptr %i.alx, inttoptr (i64 188978561024 to ptr)
  %i.ami = and i64 %i.amf, 1095216660480
  %i.amj = icmp ne i64 %i.ami, 1095216660480
  call void @llvm.assume(i1 %i.amh)
  call void @llvm.assume(i1 %i.amj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i378

bb.hy:                                            ; preds = %bb.hw
  %i.amk = getelementptr i8, ptr %i.alx, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amk) ]
  %i.aml = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.amk, ptr %i.aml, align 8, !alias.scope !1638
  store i8 3, ptr %i.y, align 8, !alias.scope !1638
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aml) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i378

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i378: ; preds = %bb.hy, %bb.hx, %bb.hw, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit380

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit380: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.val176 = load ptr, ptr %i.be, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %.val176, i64 12 ; 2 uses
  %i.amn = load i32, ptr %i.amm, align 4, !noundef !4
  %i.amo = add i32 %i.amn, -1                     ; 2 uses
  store i32 %i.amo, ptr %i.amm, align 4
  %i.amp = icmp eq i32 %i.amo, 0
  br i1 %i.amp, label %bb.hz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit

bb.hz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit380
  store atomic i64 0, ptr %.val176 monotonic, align 8
  %i.amq = getelementptr inbounds nuw i8, ptr %.val176, i64 8 ; 2 uses
  %i.amr = atomicrmw xchg ptr %i.amq, i32 0 release, align 4
  %i.ams = icmp eq i32 %i.amr, 2
  br i1 %i.ams, label %bb.ia, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit, !prof !9

bb.ia:                                            ; preds = %bb.hz
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.amq) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit380, %bb.hz, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.val180 = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  call void @llvm.experimental.noalias.scope.decl(metadata !1640)
  %i.amt = load i64, ptr %.val180, align 8, !range !10, !alias.scope !1641, !noundef !4 ; 3 uses
  %i.amu = icmp eq i64 %i.amt, -1
  br i1 %i.amu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i, label %bb.ib

bb.ib:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1642)
  %i.amv = icmp eq i64 %i.amt, 0
  br i1 %i.amv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.amw = getelementptr inbounds nuw i8, ptr %.val180, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.amw, align 8, !alias.scope !1643, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.amt, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1643
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i: ; preds = %bb.ic, %bb.ib, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit
  %i.amx = getelementptr inbounds nuw i8, ptr %.val180, i64 24
  %.val.i.i381 = load ptr, ptr %i.amx, align 8, !alias.scope !1639, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1639
  %i.amy = ptrtoint ptr %.val.i.i381 to i64       ; 2 uses
  %i.amz = and i64 %i.amy, 3
  switch i64 %i.amz, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit
    i64 3, label %bb.id
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit
    i64 1, label %bb.ie
  ], !prof !11

bb.id:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i
  %i.ana = icmp ult ptr %.val.i.i381, inttoptr (i64 188978561024 to ptr)
  %i.anb = and i64 %i.amy, 1095216660480
  %i.anc = icmp ne i64 %i.anb, 1095216660480
  call void @llvm.assume(i1 %i.ana)
  call void @llvm.assume(i1 %i.anc)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit

bb.ie:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i
  %i.and = getelementptr i8, ptr %.val.i.i381, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.and) ]
  %i.ane = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.and, ptr %i.ane, align 8, !alias.scope !1644, !noalias !1639
  store i8 3, ptr %i.x, align 8, !alias.scope !1644, !noalias !1639
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ane) #28, !noalias !1639
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i, %bb.id, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1639
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val180, i64 noundef 32, i64 noundef 8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.if

bb.if:                                            ; preds = %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1645)
  %.val.i383 = load i64, ptr %i.bg, align 8, !range !5, !alias.scope !1645, !noundef !4 ; 2 uses
  %i.anf = icmp eq i64 %.val.i383, 0
  br i1 %i.anf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit385, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.all, i64 noundef %.val.i383, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1645
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit385

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit385: ; preds = %bb.if, %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit464

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit464: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit385, %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit, %bb.hd, %bb.lx, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i460
  %.sroa.4.0 = phi ptr [ undef, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i460 ], [ %i.gy, %bb.hd ], [ undef, %bb.lx ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit ], [ undef, %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit385 ]
  %.sroa.0.0 = phi ptr [ null, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i460 ], [ %i.gw, %bb.hd ], [ null, %bb.lx ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit ], [ null, %_RNvMs5_CsfPYenFzdTHO_5uu_wcNtB5_9TotalWhen20is_total_row_visible.exit ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit385 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  %i.ang = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.anh = insertvalue { ptr, ptr } %i.ang, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.anh

bb.ih:                                            ; preds = %.thread, %bb.hl
  %i.ani = phi i64 [ %i.aky, %.thread ], [ %i.ala, %bb.hl ]
  %i.anj = phi ptr [ @46, %.thread ], [ %i.akz, %bb.hl ] ; 3 uses
  %.sroa.9561.0.ph670 = phi ptr [ %i.akv, %.thread ], [ %.sroa.9.sroa.0.0.copyload.i, %bb.hl ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9561.0.ph670) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.anj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  store ptr %.sroa.9561.0.ph670, ptr %i.ce, align 8
  store ptr %i.anj, ptr %i.aki, align 8
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 88
  %i.anl = load ptr, ptr %i.ank, align 8, !invariant.load !4, !nonnull !4
  %i.anm = call noundef i32 %i.anl(ptr noundef nonnull %.sroa.9561.0.ph670) #26
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef %i.anm) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.cc, align 8
  %i.ann = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cc) #28
  store ptr %i.ann, ptr %i.cd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.ano = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #28 ; 2 uses
  %i.anp = extractvalue { ptr, i64 } %i.ano, 0
  %i.anq = extractvalue { ptr, i64 } %i.ano, 1
  store ptr %i.anp, ptr %i.cb, align 8
  store i64 %i.anq, ptr %i.akj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  store ptr %i.cb, ptr %i.ca, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.495.0..sroa_idx, align 8
  store ptr %i.ce, ptr %i.akk, align 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.499.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1646
  store ptr %i.cd, ptr %i.w, align 8, !noalias !1646
  store ptr null, ptr %i.akl, align 8, !noalias !1646
  %i.anr = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @77, ptr noundef nonnull %i.ca) #28
  %i.ans = load ptr, ptr %i.akl, align 8, !noalias !1646, !noundef !4 ; 7 uses
  %.not.i5.i387 = icmp eq ptr %i.ans, null        ; 2 uses
  br i1 %i.anr, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  br i1 %.not.i5.i387, label %bb.in, label %bb.io, !prof !9

bb.ij:                                            ; preds = %bb.ih
  br i1 %.not.i5.i387, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i389.thread, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1646
  %i.ant = ptrtoint ptr %i.ans to i64             ; 2 uses
  %i.anu = and i64 %i.ant, 3
  switch i64 %i.anu, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i388
    i64 3, label %bb.il
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i388
    i64 1, label %bb.im
  ], !prof !11

bb.il:                                            ; preds = %bb.ik
  %i.anv = icmp ult ptr %i.ans, inttoptr (i64 188978561024 to ptr)
  %i.anw = and i64 %i.ant, 1095216660480
  %i.anx = icmp ne i64 %i.anw, 1095216660480
  call void @llvm.assume(i1 %i.anv)
  call void @llvm.assume(i1 %i.anx)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i388

bb.im:                                            ; preds = %bb.ik
  %i.any = getelementptr i8, ptr %i.ans, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.any) ]
  store ptr %i.any, ptr %i.akm, align 8, !alias.scope !1647, !noalias !1646
  store i8 3, ptr %i.v, align 8, !alias.scope !1647, !noalias !1646
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akm) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i388

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i388: ; preds = %bb.im, %bb.il, %bb.ik, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1646
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i389.thread

bb.in:                                            ; preds = %bb.ii
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #29
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i389.thread: ; preds = %bb.ij, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1646
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit396

bb.io:                                            ; preds = %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.anz = ptrtoint ptr %i.ans to i64             ; 2 uses
  %i.aoa = and i64 %i.anz, 3
  switch i64 %i.aoa, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i394
    i64 3, label %bb.ip
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i394
    i64 1, label %bb.iq
  ], !prof !11

bb.ip:                                            ; preds = %bb.io
  %i.aob = icmp ult ptr %i.ans, inttoptr (i64 188978561024 to ptr)
  %i.aoc = and i64 %i.anz, 1095216660480
  %i.aod = icmp ne i64 %i.aoc, 1095216660480
  call void @llvm.assume(i1 %i.aob)
  call void @llvm.assume(i1 %i.aod)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i394

bb.iq:                                            ; preds = %bb.io
  %i.aoe = getelementptr i8, ptr %i.ans, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aoe) ]
  store ptr %i.aoe, ptr %i.akn, align 8, !alias.scope !1648
  store i8 3, ptr %i.u, align 8, !alias.scope !1648
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akn) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i394

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i394: ; preds = %bb.iq, %bb.ip, %bb.io, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit396

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit396: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i389.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  %.val175 = load ptr, ptr %i.cd, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %.val175, i64 12 ; 2 uses
  %i.aog = load i32, ptr %i.aof, align 4, !noundef !4
  %i.aoh = add i32 %i.aog, -1                     ; 2 uses
  store i32 %i.aoh, ptr %i.aof, align 4
  %i.aoi = icmp eq i32 %i.aoh, 0
  br i1 %i.aoi, label %bb.ir, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit397

bb.ir:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit396
  store atomic i64 0, ptr %.val175 monotonic, align 8
  %i.aoj = getelementptr inbounds nuw i8, ptr %.val175, i64 8 ; 2 uses
  %i.aok = atomicrmw xchg ptr %i.aoj, i32 0 release, align 4
  %i.aol = icmp eq i32 %i.aok, 2
  br i1 %i.aol, label %bb.is, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit397, !prof !9

bb.is:                                            ; preds = %bb.ir
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aoj) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit397

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit397: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit396, %bb.ir, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %.val156 = load ptr, ptr %i.ce, align 8         ; 4 uses
  %.val157 = load ptr, ptr %i.aki, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.aom = load ptr, ptr %.val157, align 8, !invariant.load !4 ; 2 uses
  %.not.i398 = icmp eq ptr %i.aom, null
  br i1 %.not.i398, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit397
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val156) ]
  call void %i.aom(ptr noundef nonnull %.val156) #26, !inline_history !1394
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit397
  %i.aon = getelementptr inbounds nuw i8, ptr %.val157, i64 8
  %i.aoo = load i64, ptr %i.aon, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.aop = icmp eq i64 %i.aoo, 0
  br i1 %i.aop, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfPYenFzdTHO_5uu_wc.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.iu
  %i.aoq = getelementptr inbounds nuw i8, ptr %.val157, i64 16
  %i.aor = load i64, ptr %i.aoq, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val156) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val156, i64 noundef %i.aoo, i64 noundef range(i64 1, -9223372036854775807) %i.aor) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfPYenFzdTHO_5uu_wc.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfPYenFzdTHO_5uu_wc.exit: ; preds = %bb.iu, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  br label %.backedge

bb.iv:                                            ; preds = %bb.hl
  store i64 %i.ako, ptr %i.cf, align 8
  store ptr %.sroa.9.sroa.0.0.copyload.i, ptr %.sroa.423.0..sroa_idx, align 8
  store ptr %i.akz, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call fastcc void @_RNvCsfPYenFzdTHO_5uu_wc21word_count_from_input(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #28
  %i.aos = load i64, ptr %i.bz, align 8, !range !23, !noundef !4
  %5 = ptrtoint ptr %.sroa.9.sroa.0.0.copyload.i to i64
  switch i64 %i.aos, label %default.unreachable1408 [
    i64 0, label %bb.iw
    i64 1, label %bb.ix
    i64 2, label %bb.iz
  ]

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %i.ajp, i64 40, i1 false)
  br label %bb.jr

bb.ix:                                            ; preds = %bb.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %i.ajp, i64 40, i1 false)
  %i.aot = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0587)
  call fastcc void @_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input12path_display(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %.sroa.0587, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf) #28
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1649
  %i.aou = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #28, !noalias !1649 ; 4 uses
  %i.aov = icmp eq ptr %i.aou, null
  br i1 %i.aov, label %bb.iy, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit399, !prof !9

bb.iy:                                            ; preds = %bb.ix
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !1649
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit399: ; preds = %bb.ix
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aou, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0587, i64 24, i1 false)
  %.sroa.4588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aou, i64 24
  store ptr %i.aot, ptr %.sroa.4588.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0587)
  br label %bb.jr

bb.iz:                                            ; preds = %bb.iv
  %i.aow = load ptr, ptr %i.ajp, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0585)
  call fastcc void @_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input12path_display(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %.sroa.0585, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf) #28
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1650
  %i.aox = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #28, !noalias !1650 ; 4 uses
  %i.aoy = icmp eq ptr %i.aox, null
  br i1 %i.aoy, label %bb.ja, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit400, !prof !9

bb.ja:                                            ; preds = %bb.iz
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !1650
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit400: ; preds = %bb.iz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aox, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0585, i64 24, i1 false)
  %.sroa.4586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aox, i64 24
  store ptr %i.aow, ptr %.sroa.4586.0..sroa_idx, align 8
  store ptr %i.aox, ptr %i.bx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0585)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.bv, align 8
  %i.aoz = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv) #28
  store ptr %i.aoz, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  %i.apa = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #28 ; 2 uses
  %i.apb = extractvalue { ptr, i64 } %i.apa, 0
  %i.apc = extractvalue { ptr, i64 } %i.apa, 1
  store ptr %i.apb, ptr %i.bu, align 8
  store i64 %i.apc, ptr %i.ajq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %i.bu, ptr %i.bt, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.4103.0..sroa_idx, align 8
  store ptr %i.bx, ptr %i.ajr, align 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.4107.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1651
  store ptr %i.bw, ptr %i.t, align 8, !noalias !1651
  store ptr null, ptr %i.ajs, align 8, !noalias !1651
  %i.apd = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @77, ptr noundef nonnull %i.bt) #28
  %i.ape = load ptr, ptr %i.ajs, align 8, !noalias !1651, !noundef !4 ; 7 uses
  %.not.i5.i402 = icmp eq ptr %i.ape, null        ; 2 uses
  br i1 %i.apd, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit400
  br i1 %.not.i5.i402, label %bb.jg, label %bb.jh, !prof !9

bb.jc:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit400
  br i1 %.not.i5.i402, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i404.thread, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1651
  %i.apf = ptrtoint ptr %i.ape to i64             ; 2 uses
  %i.apg = and i64 %i.apf, 3
  switch i64 %i.apg, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i403
    i64 3, label %bb.je
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i403
    i64 1, label %bb.jf
  ], !prof !11

bb.je:                                            ; preds = %bb.jd
  %i.aph = icmp ult ptr %i.ape, inttoptr (i64 188978561024 to ptr)
  %i.api = and i64 %i.apf, 1095216660480
  %i.apj = icmp ne i64 %i.api, 1095216660480
  call void @llvm.assume(i1 %i.aph)
  call void @llvm.assume(i1 %i.apj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i403

bb.jf:                                            ; preds = %bb.jd
  %i.apk = getelementptr i8, ptr %i.ape, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.apk) ]
  store ptr %i.apk, ptr %i.ajt, align 8, !alias.scope !1652, !noalias !1651
  store i8 3, ptr %i.s, align 8, !alias.scope !1652, !noalias !1651
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ajt) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i403

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i403: ; preds = %bb.jf, %bb.je, %bb.jd, %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1651
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i404.thread

bb.jg:                                            ; preds = %bb.jb
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #29
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i404.thread: ; preds = %bb.jc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1651
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit411

bb.jh:                                            ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.apl = ptrtoint ptr %i.ape to i64             ; 2 uses
  %i.apm = and i64 %i.apl, 3
  switch i64 %i.apm, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i409
    i64 3, label %bb.ji
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i409
    i64 1, label %bb.jj
  ], !prof !11

bb.ji:                                            ; preds = %bb.jh
  %i.apn = icmp ult ptr %i.ape, inttoptr (i64 188978561024 to ptr)
  %i.apo = and i64 %i.apl, 1095216660480
  %i.app = icmp ne i64 %i.apo, 1095216660480
  call void @llvm.assume(i1 %i.apn)
  call void @llvm.assume(i1 %i.app)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i409

bb.jj:                                            ; preds = %bb.jh
  %i.apq = getelementptr i8, ptr %i.ape, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.apq) ]
  store ptr %i.apq, ptr %i.aju, align 8, !alias.scope !1653
  store i8 3, ptr %i.r, align 8, !alias.scope !1653
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aju) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i409

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i409: ; preds = %bb.jj, %bb.ji, %bb.jh, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit411

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit411: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i404.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  %.val174 = load ptr, ptr %i.bw, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %.val174, i64 12 ; 2 uses
  %i.aps = load i32, ptr %i.apr, align 4, !noundef !4
  %i.apt = add i32 %i.aps, -1                     ; 2 uses
  store i32 %i.apt, ptr %i.apr, align 4
  %i.apu = icmp eq i32 %i.apt, 0
  br i1 %i.apu, label %bb.jk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit412

bb.jk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit411
  store atomic i64 0, ptr %.val174 monotonic, align 8
  %i.apv = getelementptr inbounds nuw i8, ptr %.val174, i64 8 ; 2 uses
  %i.apw = atomicrmw xchg ptr %i.apv, i32 0 release, align 4
  %i.apx = icmp eq i32 %i.apw, 2
  br i1 %i.apx, label %bb.jl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit412, !prof !9

bb.jl:                                            ; preds = %bb.jk
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.apv) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit412

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit412: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit411, %bb.jk, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %.val179 = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1654)
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  %i.apy = load i64, ptr %.val179, align 8, !range !10, !alias.scope !1656, !noundef !4 ; 3 uses
  %i.apz = icmp eq i64 %i.apy, -1
  br i1 %i.apz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414, label %bb.jm

bb.jm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit412
  call void @llvm.experimental.noalias.scope.decl(metadata !1657)
  %i.aqa = icmp eq i64 %i.apy, 0
  br i1 %i.aqa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aqb = getelementptr inbounds nuw i8, ptr %.val179, i64 8
  %.val1.i.i.i.i413 = load ptr, ptr %i.aqb, align 8, !alias.scope !1658, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i413, i64 noundef %i.apy, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1658
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414: ; preds = %bb.jn, %bb.jm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit412
  %i.aqc = getelementptr inbounds nuw i8, ptr %.val179, i64 24
  %.val.i.i415 = load ptr, ptr %i.aqc, align 8, !alias.scope !1654, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1654
  %i.aqd = ptrtoint ptr %.val.i.i415 to i64       ; 2 uses
  %i.aqe = and i64 %i.aqd, 3
  switch i64 %i.aqe, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit417
    i64 3, label %bb.jo
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit417
    i64 1, label %bb.jp
  ], !prof !11

bb.jo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414
  %i.aqf = icmp ult ptr %.val.i.i415, inttoptr (i64 188978561024 to ptr)
  %i.aqg = and i64 %i.aqd, 1095216660480
  %i.aqh = icmp ne i64 %i.aqg, 1095216660480
  call void @llvm.assume(i1 %i.aqf)
  call void @llvm.assume(i1 %i.aqh)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit417

bb.jp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414
  %i.aqi = getelementptr i8, ptr %.val.i.i415, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aqi) ]
  store ptr %i.aqi, ptr %i.ajv, align 8, !alias.scope !1659, !noalias !1654
  store i8 3, ptr %i.q, align 8, !alias.scope !1659, !noalias !1654
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ajv) #28, !noalias !1654
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit417

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit417: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i414, %bb.jo, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1654
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val179, i64 noundef 32, i64 noundef 8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %i.aqj = icmp sgt i64 %i.ako, 0
  br i1 %i.aqj, label %bb.jq, label %.backedge

bb.jq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit417
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload.i, i64 noundef %i.ako, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1660
  br label %.backedge

bb.jr:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit399, %bb.iw
  %.sroa.024.0 = phi ptr [ null, %bb.iw ], [ %i.aou, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit399 ] ; 7 uses
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.by, align 16
  %.sroa.5.0.copyload = load <2 x i64>, ptr %.sroa.5.0..sroa_idx2300, align 16
  %.sroa.6.0.copyload2302 = load i64, ptr %.sroa.6.0..sroa_idx2301, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  %.sroa.75.0.copyload.i = load i64, ptr %.sroa.75.0..sroa_idx.i.a, align 16, !alias.scope !1661
  %..i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.6.0.copyload2302, i64 %.sroa.75.0.copyload.i)
  %6 = load <2 x i64>, ptr %i.dg, align 16, !alias.scope !1661
  %i.aqk = add <2 x i64> %6, %.sroa.0.0.copyload
  store <2 x i64> %i.aqk, ptr %i.dg, align 16, !alias.scope !1661
  %7 = load <2 x i64>, ptr %.sroa.53.0..sroa_idx.i419.a, align 16, !alias.scope !1661
  %i.aql = add <2 x i64> %7, %.sroa.5.0.copyload
  store <2 x i64> %i.aql, ptr %.sroa.53.0..sroa_idx.i419.a, align 16, !alias.scope !1661
  store i64 %..i.i.i, ptr %.sroa.75.0..sroa_idx.i.a, align 16, !alias.scope !1661
  br i1 %.not144, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit, %bb.jr
  %.not150 = icmp eq ptr %.sroa.024.0, null
  br i1 %.not150, label %bb.ms, label %bb.lz

bb.jt:                                            ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  %cond.i = icmp eq i64 %i.ako, -2
  br i1 %cond.i, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.aqm = trunc i64 %5 to i1
  br i1 %i.aqm, label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread674, label %bb.jz

bb.jv:                                            ; preds = %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1663
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload.i, i64 noundef %.sroa.9.sroa.5.0.copyload.i) #28, !noalias !1663
  %i.aqn = load i64, ptr %i.p, align 8, !range !10, !noalias !1663, !noundef !4 ; 4 uses
  %i.aqo = load ptr, ptr %i.ajw, align 8, !noalias !1663, !nonnull !4 ; 4 uses
  %i.aqp = load i64, ptr %i.ajx, align 8, !noalias !1663 ; 4 uses
  %i.aqq = icmp samesign ult i64 %i.aqp, 16
  br i1 %i.aqq, label %.preheader.i.i.i422, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i

.preheader.i.i.i422:                              ; preds = %bb.jv
  %.not.i.i.i423 = icmp eq i64 %i.aqp, 0
  br i1 %.not.i.i.i423, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i422, %bb.jw
  %.sroa.01.05.i.i.i = phi i64 [ %i.aqu, %bb.jw ], [ 0, %.preheader.i.i.i422 ] ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqo, i64 %.sroa.01.05.i.i.i
  %i.aqs = load i8, ptr %i.aqr, align 1, !alias.scope !1664, !noalias !1663, !noundef !4
  %i.aqt = icmp eq i8 %i.aqs, 10
  br i1 %i.aqt, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread15.i, label %bb.jw

bb.jw:                                            ; preds = %.lr.ph.i.i.i
  %i.aqu = add nuw nsw i64 %.sroa.01.05.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aqu, %i.aqp
  br i1 %exitcond.not.i.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %.lr.ph.i.i.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i: ; preds = %bb.jv
  %i.aqv = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aqo, i64 noundef range(i64 0, -9223372036854775808) %i.aqp) #28, !noalias !1663
  %i.aqw = extractvalue { i64, i64 } %i.aqv, 0
  %i.aqx = icmp eq i64 %i.aqw, 1
  br i1 %i.aqx, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread15.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i: ; preds = %bb.jw, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i, %.preheader.i.i.i422
  %i.aqy = icmp sgt i64 %i.aqn, 0
  br i1 %i.aqy, label %bb.jx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i

bb.jx:                                            ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqo, i64 noundef %i.aqn, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1665
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i: ; preds = %bb.jx, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1663
  store i64 -1, ptr %i.bs, align 8, !alias.scope !1662
  store ptr %.sroa.9.sroa.0.0.copyload.i, ptr %i.ajy, align 8, !alias.scope !1662
  store i64 %.sroa.9.sroa.5.0.copyload.i, ptr %i.ajz, align 8, !alias.scope !1662
  br label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread15.i: ; preds = %.lr.ph.i.i.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i
  %i.aqz = icmp sgt i64 %i.aqn, 0
  br i1 %i.aqz, label %bb.jy, label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit

bb.jy:                                            ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread15.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqo, i64 noundef %i.aqn, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1666
  br label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit

_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread674: ; preds = %bb.ju
  store i64 -2, ptr %i.bs, align 8, !alias.scope !1662
  br label %bb.ka

bb.jz:                                            ; preds = %bb.ju
  store i64 -1, ptr %i.bs, align 8, !alias.scope !1662
  store ptr @54, ptr %i.ajy, align 8, !alias.scope !1662
  store i64 1, ptr %i.ajz, align 8, !alias.scope !1662
  br label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread

_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread15.i, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1663
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.sroa.0.0.copyload.i, i64 noundef %.sroa.9.sroa.5.0.copyload.i, i24 1) #28, !noalias !1667
  %.pr = load i64, ptr %i.bs, align 8             ; 2 uses
  switch i64 %.pr, label %bb.ly [
    i64 -2, label %bb.ka
    i64 -1, label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit._RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread_crit_edge
  ]

_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit._RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread_crit_edge: ; preds = %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit
  %.pre = load ptr, ptr %i.ajy, align 8
  %.pre1266 = load i64, ptr %i.ajz, align 8
  br label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread

bb.ka:                                            ; preds = %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread674, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit
  %i.ara = call fastcc noundef ptr @_RNvCsfPYenFzdTHO_5uu_wc11print_stats(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.by, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, i64 noundef %.sroa.03.0) #28 ; 2 uses
  %.not147 = icmp eq ptr %i.ara, null
  br i1 %.not147, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit, label %bb.kd

bb.kb:                                            ; preds = %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread
  %.0.val.off.i424 = add i64 %.val1811268, -1
  %switch.i425 = icmp ult i64 %.0.val.off.i424, -3
  br i1 %switch.i425, label %bb.kc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit

bb.kc:                                            ; preds = %bb.kb
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val184, i64 noundef %.val1811268, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1668
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit: ; preds = %bb.ka, %bb.kb, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.js

bb.kd:                                            ; preds = %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread, %bb.ka
  %.val181 = phi i64 [ -2, %bb.ka ], [ %.val1811268, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread ] ; 2 uses
  %.sroa.345.0 = phi i64 [ 7, %bb.ka ], [ %.sroa.5109.0, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread ]
  %.sroa.044.0 = phi ptr [ @78, %bb.ka ], [ %.val184, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread ]
  %.sroa.043.0 = phi ptr [ %i.ara, %bb.ka ], [ %i.awd, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0589)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1669
  store i64 0, ptr %i.o, align 8, !noalias !1669
  %.sroa.4.0..sroa_idx.i426 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i426, align 8, !noalias !1669
  %.sroa.5.0..sroa_idx.i427 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i427, align 8, !noalias !1669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1669
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.044.0, i64 noundef %.sroa.345.0) #28, !noalias !1670
  %i.arb = load i64, ptr %i.n, align 8, !range !10, !noalias !1669, !noundef !4 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ard = load ptr, ptr %i.arc, align 8, !noalias !1669, !nonnull !4 ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.arf = load i64, ptr %i.are, align 8, !noalias !1669 ; 14 uses
  %.not.i.i428 = icmp slt i64 %i.arf, 0
  br i1 %.not.i.i428, label %bb.kf, label %bb.ke, !prof !16

bb.ke:                                            ; preds = %bb.kd
  %i.arg = icmp eq i64 %i.arf, 0                  ; 2 uses
  br i1 %i.arg, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit.thread20.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ke
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1671
  %i.arh = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.arf, i64 noundef range(i64 1, 9) 1) #28, !noalias !1671 ; 3 uses
  %i.ari = icmp eq ptr %i.arh, null
  br i1 %i.ari, label %bb.kf, label %bb.ku

bb.kf:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.kd
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.kd ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.arf) #30, !noalias !1670
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit.thread20.i: ; preds = %bb.ku, %bb.ke
  %i.arj = phi ptr [ %i.arh, %bb.ku ], [ inttoptr (i64 1 to ptr), %bb.ke ] ; 8 uses
  %i.ark = icmp sgt i64 %i.arb, 0
  br i1 %i.ark, label %bb.kg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i429

bb.kg:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit.thread20.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ard, i64 noundef %i.arb, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1672
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i429

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i429: ; preds = %bb.kg, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit.thread20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1669
  switch i64 %i.arf, label %thread-pre-split.i.i [
    i64 0, label %.loopexit.i430
    i64 1, label %bb.kh
  ]

bb.kh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i429
  %i.arl = load i8, ptr %i.arj, align 1, !alias.scope !1673, !noalias !1670, !noundef !4 ; 2 uses
  switch i8 %i.arl, label %bb.ki [
    i8 43, label %.loopexit.i430
    i8 45, label %.loopexit.i430
  ]

thread-pre-split.i.i:                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i429
  %.pr.i.i = load i8, ptr %i.arj, align 1, !alias.scope !1673, !noalias !1670
  br label %bb.ki

bb.ki:                                            ; preds = %thread-pre-split.i.i, %bb.kh
  %i.arm = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.arl, %bb.kh ]
  switch i8 %i.arm, label %bb.kp [
    i8 43, label %bb.kj
    i8 45, label %bb.kk
  ]

bb.kj:                                            ; preds = %bb.ki
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  %i.aro = add nsw i64 %i.arf, -1
  br label %bb.kp

bb.kk:                                            ; preds = %bb.ki
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arj, i64 1 ; 2 uses
  %i.arq = add nsw i64 %i.arf, -1                 ; 3 uses
  %i.arr = icmp samesign ult i64 %i.arf, 17
  br i1 %i.arr, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.kk
  %.not103137.i.i = icmp eq i64 %i.arq, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.kk, %bb.kn
  %.sroa.0.1136.i.i = phi ptr [ %i.ars, %bb.kn ], [ %i.arp, %bb.kk ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.art, %bb.kn ], [ %i.arq, %bb.kk ]
  %.sroa.084.0134.i.i = phi i64 [ %i.ase, %bb.kn ], [ 0, %bb.kk ]
  %i.ars = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.art = add nsw i64 %.sroa.26.1135.i.i, -1     ; 2 uses
  %i.aru = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.arv = extractvalue { i64, i1 } %i.aru, 0
  %i.arw = extractvalue { i64, i1 } %i.aru, 1
  br i1 %i.arw, label %.loopexit.i430, label %bb.kl, !prof !9

bb.kl:                                            ; preds = %.lr.ph.i.i
  %i.arx = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !1673, !noalias !1670, !noundef !4
  %i.ary = zext i8 %i.arx to i32
  %i.arz = add nsw i32 %i.ary, -48                ; 2 uses
  %i.asa = icmp ult i32 %i.arz, 10
  br i1 %i.asa, label %bb.km, label %.loopexit.i430

bb.km:                                            ; preds = %bb.kl
  %i.asb = zext nneg i32 %i.arz to i64
  %i.asc = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.arv, i64 %i.asb) ; 2 uses
  %i.asd = extractvalue { i64, i1 } %i.asc, 1
  br i1 %i.asd, label %.loopexit.i430, label %bb.kn, !prof !9

bb.kn:                                            ; preds = %bb.km
  %i.ase = extractvalue { i64, i1 } %i.asc, 0     ; 2 uses
  %.not102.i.i = icmp eq i64 %i.art, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.ko
  %.sroa.0.2140.i.i = phi ptr [ %i.asl, %bb.ko ], [ %i.arp, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.ask, %bb.ko ], [ %i.arq, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.asn, %bb.ko ], [ 0, %.preheader114.i.i ]
  %i.asf = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !1673, !noalias !1670, !noundef !4
  %i.asg = zext i8 %i.asf to i32
  %i.ash = add nsw i32 %i.asg, -48                ; 2 uses
  %i.asi = icmp ult i32 %i.ash, 10
  br i1 %i.asi, label %bb.ko, label %.loopexit.i430

bb.ko:                                            ; preds = %.lr.ph141.i.i
  %i.asj = mul i64 %.sroa.084.2138.i.i, 10
  %i.ask = add nsw i64 %.sroa.26.2139.i.i, -1     ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.asm = zext nneg i32 %i.ash to i64
  %i.asn = sub i64 %i.asj, %i.asm                 ; 2 uses
  %.not103.i.i = icmp eq i64 %i.ask, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph141.i.i

bb.kp:                                            ; preds = %bb.kj, %bb.ki
  %.sroa.26.0.i.i = phi i64 [ %i.aro, %bb.kj ], [ %i.arf, %bb.ki ] ; 4 uses
  %.sroa.0.0.i.i431 = phi ptr [ %i.arn, %bb.kj ], [ %i.arj, %bb.ki ] ; 2 uses
  %i.aso = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.aso, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.kp
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.kp, %bb.ks
  %.sroa.0.3145.i.i = phi ptr [ %i.asp, %bb.ks ], [ %.sroa.0.0.i.i431, %bb.kp ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.asq, %bb.ks ], [ %.sroa.26.0.i.i, %bb.kp ]
  %.sroa.084.3143.i.i = phi i64 [ %i.atb, %bb.ks ], [ 0, %bb.kp ]
  %i.asp = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.asq = add nsw i64 %.sroa.26.3144.i.i, -1     ; 2 uses
  %i.asr = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.ass = extractvalue { i64, i1 } %i.asr, 0
  %i.ast = extractvalue { i64, i1 } %i.asr, 1
  br i1 %i.ast, label %.loopexit.i430, label %bb.kq, !prof !9

bb.kq:                                            ; preds = %.preheader111.i.i
  %i.asu = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !1673, !noalias !1670, !noundef !4
  %i.asv = zext i8 %i.asu to i32
  %i.asw = add nsw i32 %i.asv, -48                ; 2 uses
  %i.asx = icmp ult i32 %i.asw, 10
  br i1 %i.asx, label %bb.kr, label %.loopexit.i430

bb.kr:                                            ; preds = %bb.kq
  %i.asy = zext nneg i32 %i.asw to i64
  %i.asz = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ass, i64 %i.asy) ; 2 uses
  %i.ata = extractvalue { i64, i1 } %i.asz, 1
  br i1 %i.ata, label %.loopexit.i430, label %bb.ks, !prof !9

bb.ks:                                            ; preds = %bb.kr
  %i.atb = extractvalue { i64, i1 } %i.asz, 0     ; 2 uses
  %.not104.i.i = icmp eq i64 %i.asq, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.kt
  %.sroa.0.4149.i.i = phi ptr [ %i.ati, %bb.kt ], [ %.sroa.0.0.i.i431, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.ath, %bb.kt ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.atk, %bb.kt ], [ 0, %.preheader.i.i ]
  %i.atc = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !1673, !noalias !1670, !noundef !4
end_hunk_1
begin_hunk_2_@_RNvCsfPYenFzdTHO_5uu_wc2wc:bb.a
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !1675
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit432: ; preds = %_RNCNvCsfPYenFzdTHO_5uu_wc2wcs0_0B3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atp, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0589, i64 24, i1 false)
  %.sroa.4590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.atp, i64 24
  store ptr %.sroa.043.0, ptr %.sroa.4590.0..sroa_idx, align 8
  store ptr %i.atp, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0589)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.bp, align 8
  %i.atr = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bp) #28
  store ptr %i.atr, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.ats = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #28 ; 2 uses
  %i.att = extractvalue { ptr, i64 } %i.ats, 0
  %i.atu = extractvalue { ptr, i64 } %i.ats, 1
  store ptr %i.att, ptr %i.bo, align 8
  %i.atv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.atu, ptr %i.atv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  store ptr %i.bo, ptr %i.bn, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.4113.0..sroa_idx, align 8
  %i.atw = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.br, ptr %i.atw, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.4117.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1676
  store ptr %i.bq, ptr %i.j, align 8, !noalias !1676
  %i.atx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr null, ptr %i.atx, align 8, !noalias !1676
  %i.aty = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @77, ptr noundef nonnull %i.bn) #28
  %i.atz = load ptr, ptr %i.atx, align 8, !noalias !1676, !noundef !4 ; 7 uses
  %.not.i5.i434 = icmp eq ptr %i.atz, null        ; 2 uses
  br i1 %i.aty, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit432
  br i1 %.not.i5.i434, label %bb.lf, label %bb.lg, !prof !9

bb.lb:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit432
  br i1 %.not.i5.i434, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i436.thread, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1676
  %i.aua = ptrtoint ptr %i.atz to i64             ; 2 uses
  %i.aub = and i64 %i.aua, 3
  switch i64 %i.aub, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i435
    i64 3, label %bb.ld
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i435
    i64 1, label %bb.le
  ], !prof !11

bb.ld:                                            ; preds = %bb.lc
  %i.auc = icmp ult ptr %i.atz, inttoptr (i64 188978561024 to ptr)
  %i.aud = and i64 %i.aua, 1095216660480
  %i.aue = icmp ne i64 %i.aud, 1095216660480
  call void @llvm.assume(i1 %i.auc)
  call void @llvm.assume(i1 %i.aue)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i435

bb.le:                                            ; preds = %bb.lc
  %i.auf = getelementptr i8, ptr %i.atz, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.auf) ]
  %i.aug = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.auf, ptr %i.aug, align 8, !alias.scope !1677, !noalias !1676
  store i8 3, ptr %i.i, align 8, !alias.scope !1677, !noalias !1676
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aug) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i435

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i435: ; preds = %bb.le, %bb.ld, %bb.lc, %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1676
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i436.thread

bb.lf:                                            ; preds = %bb.la
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #29
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i436.thread: ; preds = %bb.lb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1676
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit443

bb.lg:                                            ; preds = %bb.la
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.auh = ptrtoint ptr %i.atz to i64             ; 2 uses
  %i.aui = and i64 %i.auh, 3
  switch i64 %i.aui, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i441
    i64 3, label %bb.lh
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i441
    i64 1, label %bb.li
  ], !prof !11

bb.lh:                                            ; preds = %bb.lg
  %i.auj = icmp ult ptr %i.atz, inttoptr (i64 188978561024 to ptr)
  %i.auk = and i64 %i.auh, 1095216660480
  %i.aul = icmp ne i64 %i.auk, 1095216660480
  call void @llvm.assume(i1 %i.auj)
  call void @llvm.assume(i1 %i.aul)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i441

bb.li:                                            ; preds = %bb.lg
  %i.aum = getelementptr i8, ptr %i.atz, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aum) ]
  %i.aun = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.aum, ptr %i.aun, align 8, !alias.scope !1678
  store i8 3, ptr %i.h, align 8, !alias.scope !1678
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aun) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i441

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i441: ; preds = %bb.li, %bb.lh, %bb.lg, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit443

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit443: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i436.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %.val173 = load ptr, ptr %i.bq, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %.val173, i64 12 ; 2 uses
  %i.aup = load i32, ptr %i.auo, align 4, !noundef !4
  %i.auq = add i32 %i.aup, -1                     ; 2 uses
  store i32 %i.auq, ptr %i.auo, align 4
  %i.aur = icmp eq i32 %i.auq, 0
  br i1 %i.aur, label %bb.lj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit444

bb.lj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit443
  store atomic i64 0, ptr %.val173 monotonic, align 8
  %i.aus = getelementptr inbounds nuw i8, ptr %.val173, i64 8 ; 2 uses
  %i.aut = atomicrmw xchg ptr %i.aus, i32 0 release, align 4
  %i.auu = icmp eq i32 %i.aut, 2
  br i1 %i.auu, label %bb.lk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit444, !prof !9

bb.lk:                                            ; preds = %bb.lj
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.aus) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit444

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit444: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit443, %bb.lj, %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  %.val178 = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1679)
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  %i.auv = load i64, ptr %.val178, align 8, !range !10, !alias.scope !1681, !noundef !4 ; 3 uses
  %i.auw = icmp eq i64 %i.auv, -1
  br i1 %i.auw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446, label %bb.ll

bb.ll:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit444
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  %i.aux = icmp eq i64 %i.auv, 0
  br i1 %i.aux, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.auy = getelementptr inbounds nuw i8, ptr %.val178, i64 8
  %.val1.i.i.i.i445 = load ptr, ptr %i.auy, align 8, !alias.scope !1683, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i445, i64 noundef %i.auv, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1683
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446: ; preds = %bb.lm, %bb.ll, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit444
  %i.auz = getelementptr inbounds nuw i8, ptr %.val178, i64 24
  %.val.i.i447 = load ptr, ptr %i.auz, align 8, !alias.scope !1679, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1679
  %i.ava = ptrtoint ptr %.val.i.i447 to i64       ; 2 uses
  %i.avb = and i64 %i.ava, 3
  switch i64 %i.avb, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit449
    i64 3, label %bb.ln
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit449
    i64 1, label %bb.lo
  ], !prof !11

bb.ln:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446
  %i.avc = icmp ult ptr %.val.i.i447, inttoptr (i64 188978561024 to ptr)
  %i.avd = and i64 %i.ava, 1095216660480
  %i.ave = icmp ne i64 %i.avd, 1095216660480
  call void @llvm.assume(i1 %i.avc)
  call void @llvm.assume(i1 %i.ave)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit449

bb.lo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446
  %i.avf = getelementptr i8, ptr %.val.i.i447, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.avf) ]
  %i.avg = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.avf, ptr %i.avg, align 8, !alias.scope !1684, !noalias !1679
  store i8 3, ptr %i.g, align 8, !alias.scope !1684, !noalias !1679
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.avg) #28, !noalias !1679
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit449

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit449: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i446, %bb.ln, %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1679
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val178, i64 noundef 32, i64 noundef 8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  %.0.val.off.i450 = add nsw i64 %.val181, -1
  %switch.i451 = icmp ult i64 %.0.val.off.i450, -3
  br i1 %switch.i451, label %bb.lp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit452

bb.lp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit449
  %.val182 = load ptr, ptr %i.ajy, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val182, i64 noundef %.val181, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1685
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit452

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit452: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit449, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  %i.avh = icmp eq ptr %.sroa.024.0, null
  br i1 %i.avh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEEECsfPYenFzdTHO_5uu_wc.exit, label %bb.lq

bb.lq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit452
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  call void @llvm.experimental.noalias.scope.decl(metadata !1687)
  %i.avi = load i64, ptr %.sroa.024.0, align 8, !range !10, !alias.scope !1688, !noundef !4 ; 3 uses
  %i.avj = icmp eq i64 %i.avi, -1
  br i1 %i.avj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  %i.avk = icmp eq i64 %i.avi, 0
  br i1 %i.avk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.avl = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.avl, align 8, !alias.scope !1690, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.avi, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1690
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i: ; preds = %bb.ls, %bb.lr, %bb.lq
  %i.avm = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 24
  %.val.i.i.i = load ptr, ptr %i.avm, align 8, !alias.scope !1686, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1686
  %i.avn = ptrtoint ptr %.val.i.i.i to i64        ; 2 uses
  %i.avo = and i64 %i.avn, 3
  switch i64 %i.avo, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit.i
    i64 3, label %bb.lt
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit.i
    i64 1, label %bb.lu
  ], !prof !11

bb.lt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i
  %i.avp = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.avq = and i64 %i.avn, 1095216660480
  %i.avr = icmp ne i64 %i.avq, 1095216660480
  call void @llvm.assume(i1 %i.avp)
  call void @llvm.assume(i1 %i.avr)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit.i

bb.lu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i
  %i.avs = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.avs) ]
  %i.avt = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.avs, ptr %i.avt, align 8, !alias.scope !1691, !noalias !1686
  store i8 3, ptr %i.f, align 8, !alias.scope !1691, !noalias !1686
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.avt) #28, !noalias !1686
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit.i: ; preds = %bb.lu, %bb.lt, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1686
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.024.0, i64 noundef 32, i64 noundef 8) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEEECsfPYenFzdTHO_5uu_wc.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEEECsfPYenFzdTHO_5uu_wc.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str5OsStrEEECsfPYenFzdTHO_5uu_wc.exit452, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit.i
  %i.avu = icmp sgt i64 %i.ako, 0
  br i1 %i.avu, label %bb.lv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit456

bb.lv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEEECsfPYenFzdTHO_5uu_wc.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload.i, i64 noundef %i.ako, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1692
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit456

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit456: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEEECsfPYenFzdTHO_5uu_wc.exit, %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.avv = load ptr, ptr %.sroa.55.0.i, align 8, !invariant.load !4, !noalias !1693 ; 2 uses
  %.not.i.i.i.i.i459 = icmp eq ptr %i.avv, null
  br i1 %.not.i.i.i.i.i459, label %bb.lx, label %bb.lw

bb.lw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit456
  call void %i.avv(ptr noundef nonnull %.sroa.04.0.i) #26, !noalias !1693, !inline_history !1365
  br label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfPYenFzdTHO_5uu_wc5InputEBD_.exit456
  %i.avw = getelementptr inbounds nuw i8, ptr %.sroa.55.0.i, i64 8
  %i.avx = load i64, ptr %i.avw, align 8, !range !5, !invariant.load !4, !noalias !1693 ; 2 uses
  %i.avy = icmp eq i64 %i.avx, 0
  br i1 %i.avy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit464, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i460

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i460: ; preds = %bb.lx
  %i.avz = getelementptr inbounds nuw i8, ptr %.sroa.55.0.i, i64 16
  %i.awa = load i64, ptr %i.avz, align 8, !range !7, !invariant.load !4, !noalias !1693
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.0.i, i64 noundef %i.avx, i64 noundef range(i64 1, -9223372036854775807) %i.awa) #28, !noalias !1693
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources7from_fn6FromFnNCNvMs0_CsfPYenFzdTHO_5uu_wcNtB1n_6Inputs8try_iters0_0EEB1n_.exit464

bb.ly:                                            ; preds = %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit
  %i.awb = load ptr, ptr %i.ajy, align 8, !nonnull !4, !noundef !4
  %i.awc = load i64, ptr %i.ajz, align 8, !noundef !4
  br label %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread

_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i, %bb.jz, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit._RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread_crit_edge, %bb.ly
  %.val1811268 = phi i64 [ %.pr, %bb.ly ], [ -1, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit._RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread_crit_edge ], [ -1, %bb.jz ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i ] ; 3 uses
  %.val184 = phi ptr [ %i.awb, %bb.ly ], [ %.pre, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit._RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread_crit_edge ], [ @54, %bb.jz ], [ %.sroa.9.sroa.0.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i ] ; 3 uses
  %.sroa.5109.0 = phi i64 [ %i.awc, %bb.ly ], [ %.pre1266, %_RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit._RNvMs3_CsfPYenFzdTHO_5uu_wcNtB5_5Input8to_title.exit.thread_crit_edge ], [ 1, %bb.jz ], [ %.sroa.9.sroa.5.0.copyload.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECsfPYenFzdTHO_5uu_wc.exit.i ] ; 2 uses
  %i.awd = call fastcc noundef ptr @_RNvCsfPYenFzdTHO_5uu_wc11print_stats(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val184, i64 %.sroa.5109.0, i64 noundef %.sroa.03.0) #28 ; 2 uses
  %.not149 = icmp eq ptr %i.awd, null
  br i1 %.not149, label %bb.kb, label %bb.kd

bb.lz:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.awe = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #28
  store ptr %i.awe, ptr %i.bm, align 8
  %i.awf = call noundef ptr @_RNvXse_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6StdoutNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #28 ; 4 uses
  %i.awg = icmp eq ptr %i.awf, null
  br i1 %i.awg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit467, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.awh = ptrtoint ptr %i.awf to i64             ; 2 uses
  %i.awi = and i64 %i.awh, 3
  switch i64 %i.awi, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i465
    i64 3, label %bb.mb
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i465
    i64 1, label %bb.mc
  ], !prof !11

bb.mb:                                            ; preds = %bb.ma
  %i.awj = icmp ult ptr %i.awf, inttoptr (i64 188978561024 to ptr)
  %i.awk = and i64 %i.awh, 1095216660480
  %i.awl = icmp ne i64 %i.awk, 1095216660480
  call void @llvm.assume(i1 %i.awj)
  call void @llvm.assume(i1 %i.awl)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i465

bb.mc:                                            ; preds = %bb.ma
  %i.awm = getelementptr i8, ptr %i.awf, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awm) ]
  store ptr %i.awm, ptr %i.aka, align 8, !alias.scope !1694
  store i8 3, ptr %i.e, align 8, !alias.scope !1694
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aka) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i465

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i465: ; preds = %bb.mc, %bb.mb, %bb.ma, %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit467

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit467: ; preds = %bb.lz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr %.sroa.024.0, ptr %i.bl, align 8
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.bj, align 8
  %i.awn = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj) #28
  store ptr %i.awn, ptr %i.bk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.awo = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #28 ; 2 uses
  %i.awp = extractvalue { ptr, i64 } %i.awo, 0
  %i.awq = extractvalue { ptr, i64 } %i.awo, 1
  store ptr %i.awp, ptr %i.bi, align 8
  store i64 %i.awq, ptr %i.akb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.bi, ptr %i.bh, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.4121.0..sroa_idx.a, align 8
  store ptr %i.bl, ptr %i.akc, align 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsfPYenFzdTHO_5uu_wc, ptr %.sroa.4125.0..sroa_idx.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1695
  store ptr %i.bk, ptr %i.d, align 8, !noalias !1695
  store ptr null, ptr %i.akd, align 8, !noalias !1695
  %i.awr = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @30, ptr noundef nonnull @77, ptr noundef nonnull %i.bh) #28
  %i.aws = load ptr, ptr %i.akd, align 8, !noalias !1695, !noundef !4 ; 7 uses
  %.not.i5.i469 = icmp eq ptr %i.aws, null        ; 2 uses
  br i1 %i.awr, label %bb.md, label %bb.me

bb.md:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit467
  br i1 %.not.i5.i469, label %bb.mi, label %bb.mj, !prof !9

bb.me:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit467
  br i1 %.not.i5.i469, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i471.thread, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1695
  %i.awt = ptrtoint ptr %i.aws to i64             ; 2 uses
  %i.awu = and i64 %i.awt, 3
  switch i64 %i.awu, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i470
    i64 3, label %bb.mg
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i470
    i64 1, label %bb.mh
  ], !prof !11

bb.mg:                                            ; preds = %bb.mf
  %i.awv = icmp ult ptr %i.aws, inttoptr (i64 188978561024 to ptr)
  %i.aww = and i64 %i.awt, 1095216660480
  %i.awx = icmp ne i64 %i.aww, 1095216660480
  call void @llvm.assume(i1 %i.awv)
  call void @llvm.assume(i1 %i.awx)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i470

bb.mh:                                            ; preds = %bb.mf
  %i.awy = getelementptr i8, ptr %i.aws, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.awy) ]
  store ptr %i.awy, ptr %i.ake, align 8, !alias.scope !1696, !noalias !1695
  store i8 3, ptr %i.c, align 8, !alias.scope !1696, !noalias !1695
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ake) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i470

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i470: ; preds = %bb.mh, %bb.mg, %bb.mf, %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1695
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i471.thread

bb.mi:                                            ; preds = %bb.md
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @31, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #29
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i471.thread: ; preds = %bb.me, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i.i.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1695
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit478

bb.mj:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.awz = ptrtoint ptr %i.aws to i64             ; 2 uses
  %i.axa = and i64 %i.awz, 3
  switch i64 %i.axa, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i476
    i64 3, label %bb.mk
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i476
    i64 1, label %bb.ml
  ], !prof !11

bb.mk:                                            ; preds = %bb.mj
  %i.axb = icmp ult ptr %i.aws, inttoptr (i64 188978561024 to ptr)
  %i.axc = and i64 %i.awz, 1095216660480
  %i.axd = icmp ne i64 %i.axc, 1095216660480
  call void @llvm.assume(i1 %i.axb)
  call void @llvm.assume(i1 %i.axd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i476

bb.ml:                                            ; preds = %bb.mj
  %i.axe = getelementptr i8, ptr %i.aws, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axe) ]
  store ptr %i.axe, ptr %i.akf, align 8, !alias.scope !1697
  store i8 3, ptr %i.b, align 8, !alias.scope !1697
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akf) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i476

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i476: ; preds = %bb.ml, %bb.mk, %bb.mj, %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit478

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit478: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit.i471.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfPYenFzdTHO_5uu_wc.exit.i476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  %.val172 = load ptr, ptr %i.bk, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %.val172, i64 12 ; 2 uses
  %i.axg = load i32, ptr %i.axf, align 4, !noundef !4
  %i.axh = add i32 %i.axg, -1                     ; 2 uses
  store i32 %i.axh, ptr %i.axf, align 4
  %i.axi = icmp eq i32 %i.axh, 0
  br i1 %i.axi, label %bb.mm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit479

bb.mm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit478
  store atomic i64 0, ptr %.val172 monotonic, align 8
  %i.axj = getelementptr inbounds nuw i8, ptr %.val172, i64 8 ; 2 uses
  %i.axk = atomicrmw xchg ptr %i.axj, i32 0 release, align 4
  %i.axl = icmp eq i32 %i.axk, 2
  br i1 %i.axl, label %bb.mn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit479, !prof !9

bb.mn:                                            ; preds = %bb.mm
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.axj) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit479

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit479: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsfPYenFzdTHO_5uu_wc.exit478, %bb.mm, %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %.val177 = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1698)
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  %i.axm = load i64, ptr %.val177, align 8, !range !10, !alias.scope !1700, !noundef !4 ; 3 uses
  %i.axn = icmp eq i64 %i.axm, -1
  br i1 %i.axn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481, label %bb.mo

bb.mo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit479
  call void @llvm.experimental.noalias.scope.decl(metadata !1701)
  %i.axo = icmp eq i64 %i.axm, 0
  br i1 %i.axo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.axp = getelementptr inbounds nuw i8, ptr %.val177, i64 8
  %.val1.i.i.i.i480 = load ptr, ptr %i.axp, align 8, !alias.scope !1702, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i480, i64 noundef %i.axm, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1702
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481: ; preds = %bb.mp, %bb.mo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsfPYenFzdTHO_5uu_wc.exit479
  %i.axq = getelementptr inbounds nuw i8, ptr %.val177, i64 24
  %.val.i.i482 = load ptr, ptr %i.axq, align 8, !alias.scope !1698, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1698
  %i.axr = ptrtoint ptr %.val.i.i482 to i64       ; 2 uses
  %i.axs = and i64 %i.axr, 3
  switch i64 %i.axs, label %default.unreachable1408 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit484
    i64 3, label %bb.mq
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit484
    i64 1, label %bb.mr
  ], !prof !11

bb.mq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481
  %i.axt = icmp ult ptr %.val.i.i482, inttoptr (i64 188978561024 to ptr)
  %i.axu = and i64 %i.axr, 1095216660480
  %i.axv = icmp ne i64 %i.axu, 1095216660480
  call void @llvm.assume(i1 %i.axt)
  call void @llvm.assume(i1 %i.axv)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit484

bb.mr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481
  %i.axw = getelementptr i8, ptr %.val.i.i482, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.axw) ]
  store ptr %i.axw, ptr %i.akg, align 8, !alias.scope !1703, !noalias !1698
  store i8 3, ptr %i.a, align 8, !alias.scope !1703, !noalias !1698
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akg) #28, !noalias !1698
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit484

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit484: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsfPYenFzdTHO_5uu_wc.exit.i.i481, %bb.mq, %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1698
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val177, i64 noundef 32, i64 noundef 8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.ms

bb.ms:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit484, %bb.js
  %i.axx = icmp sgt i64 %i.ako, 0
  br i1 %i.axx, label %bb.mt, label %.backedge

bb.mt:                                            ; preds = %bb.ms
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.sroa.0.0.copyload.i, i64 noundef %i.ako, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1704
  br label %.backedge

.backedge:                                        ; preds = %bb.mt, %bb.ms, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfPYenFzdTHO_5uu_wc.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit417, %bb.jq
  %.sroa.01.0.be = phi i64 [ %i.ala, %bb.jq ], [ %i.ani, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsfPYenFzdTHO_5uu_wc.exit ], [ %i.ala, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorEECsfPYenFzdTHO_5uu_wc.exit417 ], [ %i.ala, %bb.ms ], [ %i.ala, %bb.mt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1622
  call void %i.ajn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noundef nonnull %.sroa.04.0.i) #26, !noalias !1622, !inline_history !1343
  %i.axy = load i64, ptr %i.ae, align 8, !range !12, !noalias !1622, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.axy, -4
  br i1 %.not.i.i, label %._crit_edge.loopexit, label %bb.hf
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsfPYenFzdTHO_5uu_wc6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECsfPYenFzdTHO_5uu_wc.exit:
  %i.a = alloca [640 x i8], align 8               ; 52 uses
  %i.b = alloca [640 x i8], align 8               ; 4 uses
  %i.c = alloca [640 x i8], align 8               ; 54 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [640 x i8], align 8               ; 53 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [640 x i8], align 8               ; 56 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [640 x i8], align 8               ; 53 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [640 x i8], align 8               ; 53 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [640 x i8], align 8               ; 57 uses
  %i.n = alloca [640 x i8], align 8               ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [640 x i8], align 8               ; 53 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [640 x i8], align 8               ; 53 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [712 x i8], align 8               ; 57 uses
  %i.x = alloca [712 x i8], align 8               ; 5 uses
  %i.y = alloca [712 x i8], align 8               ; 5 uses
  %i.z = alloca [712 x i8], align 8               ; 5 uses
  %i.aa = alloca [712 x i8], align 8              ; 5 uses
  %i.ab = alloca [712 x i8], align 8              ; 5 uses
  %i.ac = alloca [712 x i8], align 8              ; 5 uses
  %i.ad = alloca [712 x i8], align 8              ; 5 uses
  %i.ae = alloca [712 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.af = tail call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #28 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ah) #28
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !alias.scope !1874 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.0.0.copyload.i, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.ai, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.ai, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 8) #28
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.u, align 8, !alias.scope !1875 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0.0.copyload.i15, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.i14.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i16, align 8
  %.sroa.5.i14.sroa.4.0..sroa.55.0..sroa_idx.i16.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.i14.sroa.4.0.copyload = load i64, ptr %.sroa.5.i14.sroa.4.0..sroa.55.0..sroa_idx.i16.sroa_idx, align 8
  %.sroa.5.i14.sroa.0.0 = select i1 %i.aj, ptr undef, ptr %.sroa.5.i14.sroa.0.0.copyload
  %.sroa.5.i14.sroa.4.0 = select i1 %i.aj, i64 undef, i64 %.sroa.5.i14.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 8) #28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.an) #28
  %.sroa.0.0.copyload.i21 = load i64, ptr %i.t, align 8, !alias.scope !1876 ; 2 uses
  %i.ao = icmp eq i64 %.sroa.0.0.copyload.i21, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.i20.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i22, align 8
  %.sroa.5.i20.sroa.4.0..sroa.55.0..sroa_idx.i22.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.i20.sroa.4.0.copyload = load i64, ptr %.sroa.5.i20.sroa.4.0..sroa.55.0..sroa_idx.i22.sroa_idx, align 8
  %.sroa.5.i20.sroa.0.0 = select i1 %i.ao, ptr undef, ptr %.sroa.5.i20.sroa.0.0.copyload
  %.sroa.5.i20.sroa.4.0 = select i1 %i.ao, i64 undef, i64 %.sroa.5.i20.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.w, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  store i64 %.sroa.0.0.copyload.i15, ptr %.sroa.0.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 328
  store ptr %.sroa.5.i14.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  store i64 %.sroa.5.i14.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 464
  store i64 %.sroa.0.0.copyload.i21, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 472
  store ptr %.sroa.5.i20.sroa.0.0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 480
  store i64 %.sroa.5.i20.sroa.4.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 488
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.2.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  store i64 -1, ptr %.sroa.0.sroa.4.sroa.4.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.4.sroa.6.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.4.sroa.7.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.0.sroa.4.sroa.8.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.9.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 560
  store ptr @79, ptr %.sroa.0.sroa.4.sroa.9.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 568
  store i64 2, ptr %.sroa.0.sroa.4.sroa.10.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.11.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 576
  store ptr null, ptr %.sroa.0.sroa.4.sroa.11.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.13.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 592
  store ptr null, ptr %.sroa.0.sroa.4.sroa.13.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.15.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 608
  store ptr @80, ptr %.sroa.0.sroa.4.sroa.15.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.16.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 616
  store i64 25, ptr %.sroa.0.sroa.4.sroa.16.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.17.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 624
  store ptr null, ptr %.sroa.0.sroa.4.sroa.17.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.19.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 640
  store ptr null, ptr %.sroa.0.sroa.4.sroa.19.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.21.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 656
  store ptr null, ptr %.sroa.0.sroa.4.sroa.21.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.23.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 672
  store ptr null, ptr %.sroa.0.sroa.4.sroa.23.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.25.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 688
  store ptr null, ptr %.sroa.0.sroa.4.sroa.25.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.sroa.26.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  store <4 x i32> <i32 -1, i32 136, i32 136, i32 0>, ptr %.sroa.0.sroa.4.sroa.26.0..sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.15471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15471.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.17473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.17473.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.19475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.19475.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.21477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.21477.0..sroa_idx, i8 0, i64 16, i1 false)
end_hunk_2
