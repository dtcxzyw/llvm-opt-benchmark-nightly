Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tail-cba96ed9f34a954b.uu_tail.c5e32ca4799a957a-cgu.0?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1150
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvCsgZlHlzpN0xi_7uu_tail7uu_tail:bb.a
_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit45.i.i: ; preds = %bb.bz, %bb.by, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit44.i.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit.i.i, %bb.bf
  %i.lk = icmp eq ptr %i.lg, %i.lf
  br i1 %i.lk, label %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit.thread, label %bb.bf

bb.bg:                                            ; preds = %bb.bf
  %i.ll = getelementptr i8, ptr %.sroa.01.059.i.i, i64 32
  %.val38.i.i = load ptr, ptr %i.ll, align 8, !noalias !3133, !nonnull !9, !noundef !9
  %i.lm = getelementptr i8, ptr %.sroa.01.059.i.i, i64 40
  %.val39.i.i = load i64, ptr %i.lm, align 8, !noalias !3133, !noundef !9 ; 10 uses
  %i.ln = icmp eq i64 %.val39.i.i, 0              ; 2 uses
  br i1 %i.ln, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3134
  %i.lo = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val39.i.i, i64 noundef range(i64 1, 9) 1) #33, !noalias !3134 ; 3 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val39.i.i) #39, !noalias !3135
  unreachable

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lo, ptr nonnull readonly align 1 %.val38.i.i, i64 range(i64 0, -9223372036854775808) %.val39.i.i, i1 false), !noalias !3136
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail.exit.i.i

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.bj, %bb.bg
  %.sroa.544.0.i.i = phi ptr [ %i.lo, %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bg ] ; 5 uses
  %i.lq = call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.544.0.i.i, i64 noundef %.val39.i.i) #33, !noalias !3082
  br i1 %i.lq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !3137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !3137
  call void @_RNvNtCs2vKOLqTMYjT_3std3env11current_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cf) #33, !noalias !3082
  %i.lr = load i64, ptr %i.cf, align 8, !range !21, !noalias !3137, !noundef !9 ; 3 uses
  %i.ls = icmp eq i64 %i.lr, -1
  %i.lt = load ptr, ptr %.sroa.428.0..sroa_idx.i.i, align 8, !noalias !3137 ; 3 uses
  br i1 %i.ls, label %bb.bl, label %bb.bm

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.bo, %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtB7_7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail.exit.i.i
  %.sroa.17.0.i.i = phi i64 [ %.val39.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ %.sroa.17.0.copyload20.i.i, %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtB7_7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ %.sroa.17.0.copyload20.i.i, %bb.bo ] ; 6 uses
  %.sroa.10.0.i.i = phi ptr [ %.sroa.544.0.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ %.sroa.10.0.copyload8.i.i, %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtB7_7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ %.sroa.10.0.copyload8.i.i, %bb.bo ] ; 9 uses
  %.sroa.0.045.i.i = phi i64 [ %.val39.i.i, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ %.sroa.0.0.copyload2.i.i, %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtB7_7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i ], [ %.sroa.0.0.copyload2.i.i, %bb.bo ] ; 6 uses
  %i.lu = call fastcc noundef zeroext i1 @_RNvNtCsgZlHlzpN0xi_7uu_tail5paths16path_is_tailable(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.0.i.i, i64 noundef %.sroa.17.0.i.i) #33, !noalias !3082
  br i1 %i.lu, label %bb.br, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !3137
  %i.lv = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.lt) #33, !noalias !3082 ; 2 uses
  %i.lw = extractvalue { ptr, ptr } %i.lv, 0
  %i.lx = extractvalue { ptr, ptr } %i.lv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !3137
  br label %.loopexit.i74.i

bb.bm:                                            ; preds = %bb.bk
  %.sroa.529.0.copyload.i.i = load i64, ptr %.sroa.529.0..sroa_idx.i.i, align 8, !noalias !3137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !3137
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.lt, i64 noundef %.sroa.529.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.544.0.i.i, i64 noundef %.val39.i.i) #33, !noalias !3138
  br i1 %i.ln, label %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtB7_7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.544.0.i.i, i64 noundef %.val39.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3139
  br label %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtB7_7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i

_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtB7_7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.bn, %bb.bm
  %.sroa.0.0.copyload2.i.i = load i64, ptr %i.cg, align 8, !noalias !3137 ; 2 uses
  %.sroa.10.0.copyload8.i.i = load ptr, ptr %.sroa.10.0..sroa_idx7.i.i, align 8, !noalias !3137 ; 2 uses
  %.sroa.17.0.copyload20.i.i = load i64, ptr %.sroa.17.0..sroa_idx19.i.i, align 8, !noalias !3137 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !3137
  %i.ly = icmp eq i64 %i.lr, 0
  br i1 %i.ly, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtB7_7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lt, i64 noundef %i.lr, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3082
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i

bb.bp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i
  %i.lz = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.0.i.i, i64 noundef %.sroa.17.0.i.i) #33, !noalias !3082 ; 2 uses
  %i.ma = extractvalue { ptr, i64 } %i.lz, 0      ; 3 uses
  %i.mb = extractvalue { ptr, i64 } %i.lz, 1      ; 2 uses
  %.not.i.i73.i = icmp eq ptr %i.ma, null
  br i1 %.not.i.i73.i, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mc = call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6is_dir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.mb) #33, !noalias !3082
  br i1 %i.mc, label %bb.bs, label %bb.bt

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit.i.i
  %.val42.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !3140
  %.val43.i.i = load ptr, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !3140
  %i.md = call fastcc { ptr, ptr } @_RNvMNtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB2_9WatcherRx17watch_with_parent(ptr %.val42.i.i, ptr %.val43.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.0.i.i, i64 noundef %.sroa.17.0.i.i) #33, !noalias !3082 ; 2 uses
  %i.me = extractvalue { ptr, ptr } %i.md, 0      ; 2 uses
  %.not32.i.i = icmp eq ptr %i.me, null
  br i1 %.not32.i.i, label %bb.by, label %bb.ca

bb.bs:                                            ; preds = %bb.bq
  %.val40.i.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !3140, !nonnull !9, !noundef !9
  %.val41.i.i = load ptr, ptr %.sroa.68.0..sroa_idx.i, align 8, !alias.scope !3140, !nonnull !9, !align !13, !noundef !9
  %i.mf = call fastcc ptr @_RNvMNtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB2_9WatcherRx5watch(ptr nonnull %.val40.i.i, ptr nonnull %.val41.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ma, i64 noundef %i.mb) #33 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.mf, null
  br i1 %.not31.i.i, label %bb.bv, label %.loopexit.i74.i

bb.bt:                                            ; preds = %bb.bq, %bb.bp
  %i.mg = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3141, !noundef !9 ; 3 uses
  %i.mh = load i64, ptr %i.gr, align 8, !range !10, !alias.scope !3141, !noundef !9
  %i.mi = icmp eq i64 %i.mg, %i.mh
  br i1 %i.mi, label %bb.bu, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit.i.i

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8grow_oneCs6KYBFtxZ0jn_12notify_types(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gr) #36, !noalias !3142
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit.i.i: ; preds = %bb.bu, %bb.bt
  %i.mj = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !3141, !nonnull !9, !noundef !9
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %i.mj, i64 %i.mg ; 3 uses
  store i64 %.sroa.0.045.i.i, ptr %i.mk, align 8, !noalias !3082
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !3082
  %.sroa.536.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store i64 %.sroa.17.0.i.i, ptr %.sroa.536.0..sroa_idx.i.i, align 8, !noalias !3082
  %i.ml = add i64 %i.mg, 1
  store i64 %i.ml, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3141
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit45.i.i

bb.bv:                                            ; preds = %bb.bs
  %i.mm = call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10is_symlink(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.10.0.i.i, i64 noundef %.sroa.17.0.i.i) #33, !noalias !3082
  br i1 %i.mm, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.mn = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3143, !noundef !9 ; 3 uses
  %i.mo = load i64, ptr %i.gr, align 8, !range !10, !alias.scope !3143, !noundef !9
  %i.mp = icmp eq i64 %i.mn, %i.mo
  br i1 %i.mp, label %bb.bx, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit44.i.i

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8grow_oneCs6KYBFtxZ0jn_12notify_types(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gr) #36, !noalias !3144
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit44.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2vKOLqTMYjT_3std4path7PathBufE8push_mutCsgZlHlzpN0xi_7uu_tail.exit44.i.i: ; preds = %bb.bx, %bb.bw
  %i.mq = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !3143, !nonnull !9, !noundef !9
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %i.mn ; 3 uses
  store i64 %.sroa.0.045.i.i, ptr %i.mr, align 8, !noalias !3082
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !noalias !3082
  %.sroa.533.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store i64 %.sroa.17.0.i.i, ptr %.sroa.533.0..sroa_idx.i.i, align 8, !noalias !3082
  %i.ms = add i64 %i.mn, 1
  store i64 %i.ms, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3143
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit45.i.i

bb.by:                                            ; preds = %bb.bv, %bb.br
  %i.mt = icmp eq i64 %.sroa.0.045.i.i, 0
  br i1 %i.mt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit45.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.0.045.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3082
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit45.i.i

bb.ca:                                            ; preds = %bb.br
  %i.mu = extractvalue { ptr, ptr } %i.md, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mu) ]
  br label %.loopexit.i74.i

.loopexit.i74.i:                                  ; preds = %bb.bs, %bb.ca, %bb.bl
  %.sroa.10.1.i.i = phi ptr [ %.sroa.10.0.i.i, %bb.ca ], [ %.sroa.544.0.i.i, %bb.bl ], [ %.sroa.10.0.i.i, %bb.bs ]
  %.sroa.0.146.i.i = phi i64 [ %.sroa.0.045.i.i, %bb.ca ], [ %.val39.i.i, %bb.bl ], [ %.sroa.0.045.i.i, %bb.bs ] ; 2 uses
  %.sroa.5.0.i.i = phi ptr [ %i.mu, %bb.ca ], [ %i.lx, %bb.bl ], [ @112, %bb.bs ]
  %.sroa.0.0.i75.i = phi ptr [ %i.me, %bb.ca ], [ %i.lw, %bb.bl ], [ %i.mf, %bb.bs ] ; 2 uses
  %i.mv = icmp eq i64 %.sroa.0.146.i.i, 0
  br i1 %i.mv, label %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit, label %bb.cb

bb.cb:                                            ; preds = %.loopexit.i74.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.1.i.i, i64 noundef %.sroa.0.146.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !3082
  br label %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit

_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsgZlHlzpN0xi_7uu_tail.exit45.i.i, %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer4from.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %bb.cd

_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit: ; preds = %.loopexit.i74.i, %bb.cb
  %.not30.i = icmp eq ptr %.sroa.0.0.i75.i, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br i1 %.not30.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit.thread213, %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit
  %.sroa.0.1.i218 = phi ptr [ %i.ij, %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit.thread213 ], [ %.sroa.0.0.i75.i, %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit ]
  %.sroa.5.1.i217 = phi ptr [ @112, %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit.thread213 ], [ %.sroa.5.0.i.i, %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.1.i217) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit166

bb.cd:                                            ; preds = %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit.thread, %_RNvMs_NtNtCsgZlHlzpN0xi_7uu_tail6follow5watchNtB4_8Observer5start.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.mx = load i8, ptr %i.mw, align 4, !range !12, !noundef !9
  %i.my = trunc nuw i8 %i.mx to i1
  %or.cond71.not = and i1 %.not.i, %i.my
  br i1 %or.cond71.not, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit137, %bb.cd
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val83 = load ptr, ptr %i.mz, align 8, !nonnull !9, !noundef !9
  %.val84 = load i64, ptr %i.ep, align 8, !noundef !9 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  %i.na = mul nuw i64 %.val84, 48                 ; 5 uses
  %i.nb = icmp eq i64 %.val84, 0
  br i1 %i.nb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputEEB1c_.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3146
  %i.nc = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.na, i64 noundef range(i64 1, 9) 8) #33, !noalias !3146 ; 8 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.cg, label %.lr.ph.i.i94

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.na) #39, !noalias !3147
  unreachable

.lr.ph.i.i94:                                     ; preds = %bb.cf
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  br label %bb.ch

bb.ch:                                            ; preds = %_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i94
  %.sroa.0.023.i.i = phi ptr [ %.val83, %.lr.ph.i.i94 ], [ %i.nf, %_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ] ; 5 uses
  %.sroa.7.022.i.i = phi i64 [ 0, %.lr.ph.i.i94 ], [ %i.ng, %_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  %.sroa.10.021.i.i = phi i64 [ %.val84, %.lr.ph.i.i94 ], [ %1, %_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ]
  %1 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 48
  %i.ng = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.nh = getelementptr inbounds nuw [48 x i8], ptr %i.nc, i64 %.sroa.7.022.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !3147
  call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 24
  %i.nj = load i64, ptr %i.ni, align 8, !range !21, !alias.scope !3150, !noalias !3151, !noundef !9
  %i.nk = icmp eq i64 %i.nj, -1
  br i1 %i.nk, label %_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 32
  %.val.i.i.i = load ptr, ptr %i.nl, align 8, !alias.scope !3150, !noalias !3151, !nonnull !9, !noundef !9
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i.i, i64 40
  %.val8.i.i.i = load i64, ptr %i.nm, align 8, !alias.scope !3150, !noalias !3151, !noundef !9 ; 6 uses
  %i.nn = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.nn, label %_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3152
  %i.no = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val8.i.i.i, i64 noundef range(i64 1, 9) 1) #33, !noalias !3152 ; 3 uses
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val8.i.i.i) #39, !noalias !3153
  unreachable

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.no, ptr nonnull readonly align 1 %.val.i.i.i, i64 range(i64 0, -9223372036854775808) %.val8.i.i.i, i1 false), !noalias !3154
  br label %_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i

_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.cl, %bb.ci, %bb.ch
  %.sroa.5.sroa.4.0.i.i.i = phi i64 [ undef, %bb.ch ], [ %.val8.i.i.i, %bb.cl ], [ 0, %bb.ci ]
  %.sroa.5.sroa.0.0.i.i.i = phi ptr [ undef, %bb.ch ], [ %i.no, %bb.cl ], [ inttoptr (i64 1 to ptr), %bb.ci ]
  %.sroa.0.0.i13.i.i = phi i64 [ -1, %bb.ch ], [ %.val8.i.i.i, %bb.cl ], [ 0, %bb.ci ]
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.023.i.i) #33, !noalias !3155
  store i64 %.sroa.0.0.i13.i.i, ptr %i.ne, align 8, !alias.scope !3148, !noalias !3147
  store ptr %.sroa.5.sroa.0.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i.i, align 8, !alias.scope !3148, !noalias !3147
  store i64 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i.i.i, align 8, !alias.scope !3148, !noalias !3147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.nh, ptr noundef nonnull align 8 dereferenceable(48) %i.ce, i64 48, i1 false), !noalias !3155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !3147
  %i.nq = icmp eq i64 %1, 0
  br i1 %i.nq, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBJ_.exit, label %bb.ch

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsgZlHlzpN0xi_7uu_tail5paths5InputENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneBJ_.exit: ; preds = %_RNvXs8_NtCsgZlHlzpN0xi_7uu_tail5pathsNtB5_5InputNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.na
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.nv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  br label %bb.ef

bb.cm:                                            ; preds = %bb.cd
  %i.ny = load i8, ptr %i.gq, align 1, !range !12, !noundef !9
  %i.nz = trunc nuw i8 %i.ny to i1
  br i1 %i.nz, label %bb.dj, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.dw, align 8
  %i.oa = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw) #33
  store ptr %i.oa, ptr %i.dx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  %i.ob = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #33 ; 2 uses
  %i.oc = extractvalue { ptr, i64 } %i.ob, 0
  %i.od = extractvalue { ptr, i64 } %i.ob, 1
  store ptr %i.oc, ptr %i.dv, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.od, ptr %i.oe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store ptr %i.dv, ptr %i.du, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgZlHlzpN0xi_7uu_tail, ptr %.sroa.441.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !3156
  store ptr %i.dx, ptr %i.cd, align 8, !noalias !3156
  %i.of = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  store ptr null, ptr %i.of, align 8, !noalias !3156
  %i.og = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32, ptr noundef nonnull @72, ptr noundef nonnull %i.du) #33
  %i.oh = load ptr, ptr %i.of, align 8, !noalias !3156, !noundef !9 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.oh, null            ; 2 uses
  br i1 %i.og, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  br i1 %.not.i5.i, label %bb.ct, label %bb.cu, !prof !17

bb.cp:                                            ; preds = %bb.cn
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !3157
  %i.oi = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.oj = and i64 %i.oi, 3
  switch i64 %i.oj, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i
    i64 3, label %bb.cr
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i
    i64 1, label %bb.cs
  ], !prof !22

bb.cr:                                            ; preds = %bb.cq
  %i.ok = icmp ult ptr %i.oh, inttoptr (i64 188978561024 to ptr)
  %i.ol = and i64 %i.oi, 1095216660480
  %i.om = icmp ne i64 %i.ol, 1095216660480
  call void @llvm.assume(i1 %i.ok)
  call void @llvm.assume(i1 %i.om)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.on = getelementptr i8, ptr %i.oh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.on) ]
  %i.oo = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.on, ptr %i.oo, align 8, !alias.scope !3158, !noalias !3157
  store i8 3, ptr %i.cc, align 8, !alias.scope !3158, !noalias !3157
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oo) #33, !noalias !3159
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i: ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !3157
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i.thread

bb.ct:                                            ; preds = %bb.co
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i.thread: ; preds = %bb.cp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !3156
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

bb.cu:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !3156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !3160
  %i.op = ptrtoint ptr %i.oh to i64               ; 2 uses
  %i.oq = and i64 %i.op, 3
  switch i64 %i.oq, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i
    i64 3, label %bb.cv
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i
    i64 1, label %bb.cw
  ], !prof !22

bb.cv:                                            ; preds = %bb.cu
  %i.or = icmp ult ptr %i.oh, inttoptr (i64 188978561024 to ptr)
  %i.os = and i64 %i.op, 1095216660480
  %i.ot = icmp ne i64 %i.os, 1095216660480
  call void @llvm.assume(i1 %i.or)
  call void @llvm.assume(i1 %i.ot)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i

bb.cw:                                            ; preds = %bb.cu
  %i.ou = getelementptr i8, ptr %i.oh, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ou) ]
  %i.ov = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.ou, ptr %i.ov, align 8, !alias.scope !3161, !noalias !3160
  store i8 3, ptr %i.cb, align 8, !alias.scope !3161, !noalias !3160
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ov) #33, !noalias !3160
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i: ; preds = %bb.cw, %bb.cv, %bb.cu, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !3160
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 34) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  store ptr %i.dt, ptr %i.ds, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !3162
  store ptr %i.dx, ptr %i.ca, align 8, !noalias !3162
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  store ptr null, ptr %i.ow, align 8, !noalias !3162
  %i.ox = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @32, ptr noundef nonnull @76, ptr noundef nonnull %i.ds) #33
  %i.oy = load ptr, ptr %i.ow, align 8, !noalias !3162, !noundef !9 ; 7 uses
  %.not.i5.i100 = icmp eq ptr %i.oy, null         ; 2 uses
  br i1 %i.ox, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
  br i1 %.not.i5.i100, label %bb.dc, label %bb.dd, !prof !17

bb.cy:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit
  br i1 %.not.i5.i100, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i102.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !3163
  %i.oz = ptrtoint ptr %i.oy to i64               ; 2 uses
  %i.pa = and i64 %i.oz, 3
  switch i64 %i.pa, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i101
    i64 3, label %bb.da
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i101
    i64 1, label %bb.db
  ], !prof !22

bb.da:                                            ; preds = %bb.cz
  %i.pb = icmp ult ptr %i.oy, inttoptr (i64 188978561024 to ptr)
  %i.pc = and i64 %i.oz, 1095216660480
  %i.pd = icmp ne i64 %i.pc, 1095216660480
  call void @llvm.assume(i1 %i.pb)
  call void @llvm.assume(i1 %i.pd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i101

bb.db:                                            ; preds = %bb.cz
  %i.pe = getelementptr i8, ptr %i.oy, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pe) ]
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  store ptr %i.pe, ptr %i.pf, align 8, !alias.scope !3164, !noalias !3163
  store i8 3, ptr %i.bz, align 8, !alias.scope !3164, !noalias !3163
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pf) #33, !noalias !3165
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i101

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i101: ; preds = %bb.db, %bb.da, %bb.cz, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !3163
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i102.thread

bb.dc:                                            ; preds = %bb.cx
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @33, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsgZlHlzpN0xi_7uu_tail.exit.i102.thread: ; preds = %bb.cy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !3162
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsgZlHlzpN0xi_7uu_tail.exit109

bb.dd:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !3162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !3166
  %i.pg = ptrtoint ptr %i.oy to i64               ; 2 uses
  %i.ph = and i64 %i.pg, 3
  switch i64 %i.ph, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i107
    i64 3, label %bb.de
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZlHlzpN0xi_7uu_tail.exit.i107
    i64 1, label %bb.df
  ], !prof !22

bb.de:                                            ; preds = %bb.dd
  %i.pi = icmp ult ptr %i.oy, inttoptr (i64 188978561024 to ptr)
end_hunk_0
begin_hunk_1_@_RNvXs_NtCsgZlHlzpN0xi_7uu_tail6chunksNtB4_13ReverseChunksNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next:bb.a
  br i1 %i.bc, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsgZlHlzpN0xi_7uu_tail.exit, label %bb.g

bb.p:                                             ; preds = %bb.i, %.split1.i, %.split.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split2.i
  %.sroa.09.0.i.ph = phi ptr [ %i.ab, %.split2.i ], [ %i.ab, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.ab, %.split.i ], [ %i.ab, %.split1.i ], [ @44, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.09.0.i.ph, ptr %i.d, align 8
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #37
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.o, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bd = call { i64, ptr } @_RNvXs9_NtCs2vKOLqTMYjT_3std2fsRNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 2, i64 noundef %i.r) #33 ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0
  %i.bf = extractvalue { i64, ptr } %i.bd, 1      ; 3 uses
  %i.bg = trunc nuw i64 %i.be to i1
  br i1 %i.bg, label %bb.q, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgZlHlzpN0xi_7uu_tail.exit, !prof !17

bb.q:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsgZlHlzpN0xi_7uu_tail.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6607
  store ptr %i.bf, ptr %i.c, align 8, !noalias !6607
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #37
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCsgZlHlzpN0xi_7uu_tail.exit
  %i.bh = ptrtoint ptr %i.bf to i64
  store i64 %i.bh, ptr %i.e, align 8
  %i.bi = icmp eq ptr %i.u, %i.bf
  br i1 %i.bi, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgZlHlzpN0xi_7uu_tail.exit
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedyyEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #37
  unreachable

bb.s:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultyNtNtNtB4_2io5error5ErrorE6unwrapCsgZlHlzpN0xi_7uu_tail.exit
  %i.bj = load i64, ptr %i.g, align 8, !noundef !9
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.g, align 8
  br i1 %i.x, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgZlHlzpN0xi_7uu_tail.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !6608
  %i.bl = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !6608 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit, label %bb.u

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.t
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.0.0) #39
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %bb.s, %bb.u
  %i.bn = phi ptr [ %i.bl, %bb.u ], [ inttoptr (i64 1 to ptr), %bb.s ]
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 65536, i64 noundef range(i64 1, -9223372036854775807) 1) #33
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %i.p, i64 %.sroa.0.0, i1 false)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgZlHlzpN0xi_7uu_tail.exit

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgZlHlzpN0xi_7uu_tail.exit, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2vKOLqTMYjT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc4zero5InnerEENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 11) #33
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2vKOLqTMYjT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtNtB6_4mpmc5waker5WakerEENtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmtCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs6JMX4GRUq9U_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 11) #33
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs6JMX4GRUq9U_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6614)
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.thread.i, label %bb.b

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !6614
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !alias.scope !6614
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !alias.scope !6614
  br label %_RINvXs_NvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgZlHlzpN0xi_7uu_tail.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !6615
  %i.d = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.16.val, i64 noundef range(i64 1, 9) 1) #33, !noalias !6615 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.16.val) #39, !noalias !6616
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 %.16.val, ptr %0, align 8, !alias.scope !6614
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.f, align 8, !alias.scope !6614
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %.8.val, i64 range(i64 0, -9223372036854775808) %.16.val, i1 false), !noalias !6614
  store i64 %.16.val, ptr %i.g, align 8, !alias.scope !6614
  br label %_RINvXs_NvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgZlHlzpN0xi_7uu_tail.exit

_RINvXs_NvMNtCs7tKScEop1B6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgZlHlzpN0xi_7uu_tail.exit.thread.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser10parse_ref_CsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #33
  %i.b = load i64, ptr %i.a, align 8, !range !21, !noundef !9
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !align !13, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !6619
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !6619 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39, !noalias !6619
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @262, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser15possible_valuesCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser15possible_values(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) #33
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser7type_idCsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9clone_anyCsgZlHlzpN0xi_7uu_tail(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !9 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6641)
  %i.d = mul nuw nsw i64 %.val1, 72               ; 2 uses
  %i.e = icmp eq i64 %.val1, 0
  br i1 %i.e, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !6642
  %i.f = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 9) 8) #33, !noalias !6642 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.d) #39, !noalias !6643
  unreachable

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.0.054.i.i.i = phi ptr [ %.val, %.lr.ph.i.i.i ], [ %i.i, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 7 uses
  %.sroa.7.053.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.j, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ] ; 2 uses
  %.sroa.10.052.i.i.i = phi i64 [ %.val1, %.lr.ph.i.i.i ], [ %1, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ]
  %1 = add nsw i64 %.sroa.10.052.i.i.i, -1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 72
  %i.j = add nuw nsw i64 %.sroa.7.053.i.i.i, 1
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.f, i64 %.sroa.7.053.i.i.i ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6643
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !6645, !noalias !6646, !nonnull !9, !noundef !9
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !6645, !noalias !6646, !noundef !9
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 24 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !21, !alias.scope !6645, !noalias !6646, !noundef !9
  %.not.i.i.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #33, !noalias !6647
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !6648
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i13.i.i.i = phi i64 [ %.sroa.03.0.copyload.i.i.i.i, %bb.e ], [ -1, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !6645, !noalias !6646, !nonnull !9, !noundef !9 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !6645, !noalias !6646, !noundef !9 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6649)
  %i.t = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.t, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw nsw i64 %.val4.i.i.i.i, 4        ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !6650
  %i.v = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.u, i64 noundef range(i64 1, 9) 8) #33, !noalias !6650 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %3, label %bb.h

bb.h:                                             ; preds = %bb.g
  %xtraiter = and i64 %.val4.i.i.i.i, 1
  %2 = icmp eq i64 %.val4.i.i.i.i, 1
  br i1 %2, label %bb.i, label %.lr.ph.preheader.i.i.i.i.i.i.a

.lr.ph.preheader.i.i.i.i.i.i.a:                   ; preds = %bb.h
  %unroll_iter = and i64 %.val4.i.i.i.i, -2
  br label %.lr.ph.i.i.i.i.i.i

3:                                                ; preds = %bb.g
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.u) #39, !noalias !6651
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %9, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %.sroa.7.021.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %8, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.020.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i.a ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 16
  %5 = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i, align 8, !alias.scope !6649, !noalias !6652, !nonnull !9, !noundef !9
  %6 = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 8
  %.val13.i.i.i.i.i.i = load i64, ptr %6, align 8, !alias.scope !6649, !noalias !6652, !noundef !9
  store ptr %.val.i.i.i.i.i.i, ptr %5, align 8, !noalias !6651
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val13.i.i.i.i.i.i, ptr %7, align 8, !noalias !6651
  %8 = add nuw nsw i64 %.sroa.7.021.i.i.i.i.i.i, 2 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 32 ; 2 uses
  %10 = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.val.i.i.i.i.i.i.1 = load ptr, ptr %4, align 8, !alias.scope !6649, !noalias !6652, !nonnull !9, !noundef !9
  %12 = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 24
  %.val13.i.i.i.i.i.i.1 = load i64, ptr %12, align 8, !alias.scope !6649, !noalias !6652, !noundef !9
  store ptr %.val.i.i.i.i.i.i.1, ptr %11, align 8, !noalias !6651
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.val13.i.i.i.i.i.i.1, ptr %13, align 8, !noalias !6651
  %niter.next.1 = add nuw i64 %.sroa.10.020.i.i.i.i.i.i, 2 ; 2 uses
  %i.x = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %i.x, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, %bb.h
  %.sroa.0.022.i.i.i.i.i.i.epil.init = phi ptr [ %.val.i.i.i.i, %bb.h ], [ %9, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.7.021.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.h ], [ %8, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod5 = trunc i64 %.val4.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.7.021.i.i.i.i.i.i.epil.init ; 2 uses
  %.val.i.i.i.i.i.i.a = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.epil.init, align 8, !alias.scope !6649, !noalias !6652, !nonnull !9, !noundef !9
  %i.z = getelementptr i8, ptr %.sroa.0.022.i.i.i.i.i.i.epil.init, i64 8
  %.val13.i.i.i.i.i.i.a = load i64, ptr %i.z, align 8, !alias.scope !6649, !noalias !6652, !noundef !9
  store ptr %.val.i.i.i.i.i.i.a, ptr %i.y, align 8, !noalias !6651
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %.val13.i.i.i.i.i.i.a, ptr %i.aa, align 8, !noalias !6651
  br label %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i

_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.i, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa, %bb.f
  %.sroa.10.0.i30.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.f ], [ %i.v, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i.loopexit.unr-lcssa ], [ %i.v, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.054.i.i.i, i64 64
  %i.ac = load i8, ptr %i.ab, align 8, !range !12, !alias.scope !6645, !noalias !6646, !noundef !9
  %.sroa.740.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.740.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !6653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6643
  store i64 %.val4.i.i.i.i, ptr %i.k, align 8, !noalias !6653
  %.sroa.437.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.10.0.i30.i.i.i.i.i.i, ptr %.sroa.437.0..sroa_idx.i.i.i, align 8, !noalias !6653
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i, align 8, !noalias !6653
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.0.0.i13.i.i.i, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !6653
  %.sroa.841.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store ptr %i.m, ptr %.sroa.841.0..sroa_idx.i.i.i, align 8, !noalias !6653
  %.sroa.942.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %i.o, ptr %.sroa.942.0..sroa_idx.i.i.i, align 8, !noalias !6653
  %.sroa.1043.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 %i.ac, ptr %.sroa.1043.0..sroa_idx.i.i.i, align 8, !noalias !6653
  %i.ad = icmp eq i64 %1, 0
  br i1 %i.ad, label %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %bb.d

_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i, %bb.a
  %.sroa.10.0.i64.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %_RNvXs3_NtNtCsgNwXemyrBWj_12clap_builder7builder14possible_valueNtB5_13PossibleValueNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !6654
  %i.ae = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !6654 ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39, !noalias !6654
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB5_19ShortcutValueParserNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  store i64 %.val1, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.10.0.i64.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ag = insertvalue { ptr, ptr } poison, ptr %i.ae, 0
  %i.ah = insertvalue { ptr, ptr } %i.ag, ptr @232, 1
  ret { ptr, ptr } %i.ah
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCsgNwXemyrBWj_12clap_builder7builder12value_parserNtNtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parser19ShortcutValueParserNtB5_14AnyValueParser9parse_refCsgZlHlzpN0xi_7uu_tail(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtNtCsh036I4OHgIr_6uucore8features6parser21shortcut_value_parserNtB4_19ShortcutValueParserNtNtNtCsgNwXemyrBWj_12clap_builder7builder12value_parser16TypedValueParser9parse_ref(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(640) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #33
  %i.b = load i64, ptr %i.a, align 8, !range !21, !noundef !9
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !align !13, !noundef !9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !6657
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !6657 ; 5 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39, !noalias !6657
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx3, align 8
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  store ptr %i.g, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @262, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @7, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCs6JMX4GRUq9U_4core3fmtbNtB5_5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCs6JMX4GRUq9U_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #33
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsf_NtNtCs6JMX4GRUq9U_4core5slice3cmpNtNtCs2vKOLqTMYjT_3std4path7PathBufNtB5_13SliceContains14slice_containsCsgZlHlzpN0xi_7uu_tail(ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not.not.not.i.not.not.not1.not = icmp eq i64 %1, 0
  br i1 %.not.not.not.i.not.not.not1.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2h_13SliceContains14slice_contains0ECsgZlHlzpN0xi_7uu_tail.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.d = phi ptr [ %i.h, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !noalias !6659, !nonnull !9, !noundef !9
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !noalias !6659, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6659
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2.i, i64 noundef %.val3.i) #33, !noalias !6659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6659
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.8.val, i64 noundef %.16.val) #33, !noalias !6659
  %i.g = call fastcc noundef zeroext i1 @_RNvXsl_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.a) #38, !noalias !6659 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6659
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.h, %i.c
  %or.cond = select i1 %i.g, i1 true, i1 %.not.not.not.i.not.not.not.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2h_13SliceContains14slice_contains0ECsgZlHlzpN0xi_7uu_tail.exit, label %.lr.ph

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtCs2vKOLqTMYjT_3std4path7PathBufENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2h_13SliceContains14slice_contains0ECsgZlHlzpN0xi_7uu_tail.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.a ], [ %i.g, %.lr.ph ]
  ret i1 %.not.not.not.i.not.not.not.lcssa
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsl_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [39 x i8], align 1            ; 2 uses
  %.sroa.518 = alloca [39 x i8], align 1          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !9 ; 2 uses
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !range !45, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i8, ptr %i.m, align 8, !range !45, !noundef !9
  %i.o = icmp eq i8 %i.l, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.q = load i8, ptr %i.p, align 1, !range !45
  %i.r = icmp eq i8 %i.q, 2
  %or.cond = select i1 %i.o, i1 %i.r, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.t = load i8, ptr %i.s, align 1, !range !45
  %i.u = icmp eq i8 %i.t, 2
  %or.cond7 = select i1 %or.cond, i1 %i.u, i1 false
  %.pre40 = load ptr, ptr %0, align 8             ; 3 uses
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %i.v = phi ptr [ %.pre, %._crit_edge ], [ %.pre40, %bb.d ], [ %.pre40, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !6721, !noundef !9 ; 2 uses
  %.not = icmp eq i8 %i.x, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %bcmp = tail call i32 @bcmp(ptr nonnull %.pre40, ptr nonnull %i.y, i64 %i.g)
  %i.z = icmp eq i32 %bcmp, 0
  br i1 %i.z, label %bb.u, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.420.0..sroa_idx, i64 39, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.ab = load i8, ptr %i.aa, align 2, !range !12, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load i8, ptr %i.ac, align 8, !range !45, !noundef !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.af = load i8, ptr %i.ae, align 1, !range !45, !noundef !9
  %i.ag = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !6721, !noundef !9 ; 2 uses
  %.not26 = icmp eq i8 %i.ai, -1
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.425.0..sroa_idx, i64 39, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.ak = load i8, ptr %i.aj, align 2, !range !12, !noundef !9
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load i8, ptr %i.al, align 8, !range !45, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.ao = load i8, ptr %i.an, align 1, !range !45, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6722
  store ptr %i.v, ptr %i.e, align 8, !noalias !6723
  %.sroa.4.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx27, align 8, !noalias !6723
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 %i.x, ptr %.sroa.528.0..sroa_idx, align 8, !noalias !6723
  %.sroa.6.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.e, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.6.0..sroa_idx29, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518, i64 39, i1 false)
  %.sroa.7.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i8 %i.ad, ptr %.sroa.7.0..sroa_idx30, align 8, !noalias !6723
  %.sroa.8.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.e, i64 57
  store i8 %i.af, ptr %.sroa.8.0..sroa_idx31, align 1, !noalias !6723
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  store i8 %i.ab, ptr %.sroa.9.0..sroa_idx, align 2, !noalias !6723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6722
  store ptr %i.ag, ptr %i.d, align 8, !alias.scope !6724, !noalias !6725
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %.sroa.433.0..sroa_idx, align 8, !alias.scope !6724, !noalias !6725
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 %i.ai, ptr %.sroa.534.0..sroa_idx, align 8, !alias.scope !6724, !noalias !6725
end_hunk_1
