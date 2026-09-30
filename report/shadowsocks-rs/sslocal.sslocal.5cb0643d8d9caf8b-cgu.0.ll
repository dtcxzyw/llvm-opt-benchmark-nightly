Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/sslocal.sslocal.5cb0643d8d9caf8b-cgu.0?download=true
inline.NumInlined: 35271
inline.NumDeleted: 15553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 238
begin_hunk_0_@_RNvCs7XnEB7DeNXr_7sslocal4main:_RINvMs0_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB6_7Command5aboutReECs7XnEB7DeNXr_7sslocal.exit
bb.au:                                            ; preds = %bb.at
  %i.hz = add nuw nsw i64 %i.cs, 1
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.ia = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !70711, !nonnull !146, !noundef !146
  %i.ib = getelementptr inbounds nuw [24 x i8], ptr %i.ia, i64 %i.cs ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !70711, !nonnull !146, !noundef !146
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.if = load i64, ptr %i.ie, align 8, !noalias !70711, !noundef !146
  %i.ig = add nuw nsw i64 %i.cs, 1                ; 4 uses
  %i.ih = tail call { ptr, i64 } @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.id, i64 noundef %i.if) #53, !noalias !70711 ; 2 uses
  %i.ii = extractvalue { ptr, i64 } %i.ih, 0      ; 2 uses
  %.not43.i.i = icmp eq ptr %i.ii, null
  br i1 %.not43.i.i, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs7XnEB7DeNXr_7sslocal.exit67.i.i, %bb.ba, %bb.az, %bb.av, %bb.au, %bb.m
  %i.ij = phi i64 [ %i.cs, %bb.m ], [ %i.hz, %bb.au ], [ %i.ig, %bb.az ], [ %i.ig, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs7XnEB7DeNXr_7sslocal.exit67.i.i ], [ %i.ig, %bb.ba ], [ %i.ig, %bb.av ]
  call void @_RNvMs3_NtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB5_7Command9__do_parse(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak, i64 noundef %i.ij) #53, !noalias !70794
  call void @llvm.experimental.noalias.scope.decl(metadata !70806)
  call void @llvm.experimental.noalias.scope.decl(metadata !70807)
  %.val2.i.i53.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !70808, !noalias !70711, !nonnull !146, !noundef !146 ; 2 uses
  %.val3.i.i54.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !70808, !noalias !70711, !noundef !146 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70809)
  %i.ik = icmp eq i64 %.val3.i.i54.i.i, 0
  br i1 %i.ik, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i60.i.i, label %.lr.ph.i.i.i.i55.i.i

.lr.ph.i.i.i.i55.i.i:                             ; preds = %bb.aw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i59.i.i
  %.sroa.0.04.i.i.i.i56.i.i = phi i64 [ %i.im, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i59.i.i ], [ 0, %bb.aw ] ; 2 uses
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i53.i.i, i64 %.sroa.0.04.i.i.i.i56.i.i ; 2 uses
  %i.im = add nuw nsw i64 %.sroa.0.04.i.i.i.i56.i.i, 1 ; 2 uses
  %.val.i.i.i.i57.i.i = load i64, ptr %i.il, align 8, !alias.scope !70810, !noalias !70811 ; 2 uses
  %i.in = icmp eq i64 %.val.i.i.i.i57.i.i, 0
  br i1 %i.in, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i59.i.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i55.i.i
  %i.io = getelementptr i8, ptr %i.il, i64 8
  %.val3.i.i.i.i58.i.i = load ptr, ptr %i.io, align 8, !alias.scope !70809, !noalias !70811, !nonnull !146, !noundef !146
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i58.i.i, i64 noundef %.val.i.i.i.i57.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !70812
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i59.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i59.i.i: ; preds = %bb.ax, %.lr.ph.i.i.i.i55.i.i
  %i.ip = icmp eq i64 %i.im, %.val3.i.i54.i.i
  br i1 %i.ip, label %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i60.i.i, label %.lr.ph.i.i.i.i55.i.i

_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i60.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i59.i.i, %bb.aw
  %.val.i.i61.i.i = load i64, ptr %i.ak, align 8, !alias.scope !70808, !noalias !70711 ; 2 uses
  %i.iq = icmp eq i64 %.val.i.i61.i.i, 0
  br i1 %i.iq, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1w_3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs3VEMjBx1PQp_8clap_lex7RawArgsECs7XnEB7DeNXr_7sslocal.exit62.sink.split.i.i

bb.ay:                                            ; preds = %bb.av
  %i.ir = extractvalue { ptr, i64 } %i.ih, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !70711
  call void @_RNvNtNtCsf3Ta7LF998c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ii, i64 noundef %i.ir) #53, !noalias !70711
  %i.is = load i64, ptr %i.ai, align 8, !range !150, !noalias !70711, !noundef !146
  %i.it = trunc nuw i64 %i.is to i1
  br i1 %i.it, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !70711
  br label %bb.aw

bb.ba:                                            ; preds = %bb.ay
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !70711, !nonnull !146, !noundef !146
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ix = load i64, ptr %i.iw, align 8, !noalias !70711, !noundef !146 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !70711
  %i.iy = load i64, ptr %.sroa.2713.0..sroa_idx, align 8, !range !188, !alias.scope !70735, !noalias !70736, !noundef !146
  %.not44.i.i = icmp eq i64 %i.iy, -1
  br i1 %.not44.i.i, label %bb.bb, label %bb.aw

bb.bb:                                            ; preds = %bb.ba
  %.not.i63.i.i = icmp slt i64 %i.ix, 0
  br i1 %.not.i63.i.i, label %bb.be, label %bb.bc, !prof !262

bb.bc:                                            ; preds = %bb.bb
  %i.iz = icmp eq i64 %i.ix, 0
  br i1 %i.iz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs7XnEB7DeNXr_7sslocal.exit67.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !70813
  %i.ja = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ix, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !70813 ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.be, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal.exit65.thread90.i.i

bb.be:                                            ; preds = %bb.bd, %bb.bb
  %.sroa.471.0.ph.i.i = phi i64 [ 1, %bb.bd ], [ 0, %bb.bb ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.471.0.ph.i.i, i64 %i.ix) #62, !noalias !70711
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal.exit65.thread90.i.i: ; preds = %bb.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ja, ptr nonnull align 1 %i.iv, i64 %i.ix, i1 false), !noalias !70711
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs7XnEB7DeNXr_7sslocal.exit67.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs7XnEB7DeNXr_7sslocal.exit67.i.i: ; preds = %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal.exit65.thread90.i.i, %bb.bc
  %i.jc = phi ptr [ inttoptr (i64 1 to ptr), %bb.bc ], [ %i.ja, %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal.exit65.thread90.i.i ]
  store i64 %i.ix, ptr %.sroa.2713.0..sroa_idx, align 8, !alias.scope !70735, !noalias !70736
  store ptr %i.jc, ptr %.sroa.28.0..sroa_idx, align 8, !alias.scope !70735, !noalias !70736
  %.sroa.537.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 312
  store i64 %i.ix, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !alias.scope !70735, !noalias !70736
  br label %bb.aw

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1w_3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i60.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtCs3VEMjBx1PQp_8clap_lex7RawArgsECs7XnEB7DeNXr_7sslocal.exit62.sink.split.i.i, %_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !70711
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !70708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.am, ptr noundef nonnull align 8 dereferenceable(712) %i.as, i64 712, i1 false), !noalias !70814
  %i.jd = load i64, ptr %i.an, align 8, !range !188, !noalias !70708, !noundef !146
  %i.je = icmp eq i64 %i.jd, -1
  br i1 %i.je, label %bb.bf, label %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit

bb.bf:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1w_3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !70708, !nonnull !146, !align !154, !noundef !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !70708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.al, ptr noundef nonnull align 8 dereferenceable(712) %i.as, i64 712, i1 false), !noalias !70814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !70708
  store ptr %i.jg, ptr %i.ad, align 8, !noalias !70815
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslDQ48jUgq5Q_12clap_builder7builder7command7CommandECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(712) %i.al) #53, !noalias !70814
  call fastcc void @_RNvMNtCslDQ48jUgq5Q_12clap_builder5errorNtB2_5Error4exitCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad) #62, !noalias !70816
  unreachable

_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit: ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command24try_get_matches_from_mutNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1w_3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aq, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 56, i1 false), !noalias !70817
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslDQ48jUgq5Q_12clap_builder7builder7command7CommandECs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(712) %i.am) #53, !noalias !70814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !70708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !70708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @_RNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6create(ptr noalias nofree noundef nonnull sret([36112 x i8]) align 16 captures(none) dereferenceable(36112) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.aq) #53
  %i.jh = load i64, ptr %i.aa, align 16, !range !157, !noalias !70818, !noundef !146
  %i.ji = icmp eq i64 %i.jh, 2
  br i1 %i.ji, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.07.0.copyload.i = load i64, ptr %i.jj, align 8, !noalias !70818
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.4.0..sroa_idx.i10, i64 24, i1 false), !noalias !70818
  br label %bb.fw

bb.bh:                                            ; preds = %_RINvMNtNtCslDQ48jUgq5Q_12clap_builder7builder7commandNtB3_7Command16get_matches_fromNtNtCs5Xr050g3D4S_3std3env6ArgsOsNtNtNtB1o_3ffi6os_str8OsStringECs7XnEB7DeNXr_7sslocal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !70819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 16 dereferenceable(80) %i.aa, i64 80, i1 false), !noalias !70818
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !70820
  %i.jk = call noundef align 16 dereferenceable_or_null(36032) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 36032, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !70820 ; 8 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.bi, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !151

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 36032) #62, !noalias !70820
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.bh
  %i.jm = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36032) %i.jk, ptr noundef nonnull align 16 dereferenceable(36032) %i.jm, i64 36032, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !70821
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noundef nonnull align 8 %i.z) #53, !noalias !70822
  %i.jn = load i64, ptr %i.z, align 8, !range !150, !noalias !70821, !noundef !146
  %i.jo = trunc nuw i64 %i.jn to i1
  br i1 %i.jo, label %bb.bj, label %bb.cd

bb.bj:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70823)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !70824
  %i.jq = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 10 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 72 ; 4 uses
  %i.js = load i8, ptr %i.jr, align 8, !range !165, !noalias !70825, !noundef !146
  switch i8 %i.js, label %default.unreachable [
    i8 0, label %bb.bl
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i
    i8 1, label %bb.bk
  ], !prof !192

default.unreachable:                              ; preds = %bb.ek, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.br, %bb.fw, %bb.cn, %bb.cd, %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.jq, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #53, !noalias !70826
  store i8 0, ptr %i.jr, align 8, !noalias !70825
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 70 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 2, !range !165, !noalias !70827, !noundef !146
  %.not.i.i.i.i.i.i.i.i8 = icmp eq i8 %i.ju, 2
  br i1 %.not.i.i.i.i.i.i.i.i8, label %bb.bm, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !70824
  br label %bb.cc

bb.bm:                                            ; preds = %bb.bl
  store i8 1, ptr %i.jt, align 2, !noalias !70827
  %i.jv = load i64, ptr %i.jp, align 8, !range !150, !alias.scope !70823, !noalias !70828, !noundef !146
  %i.jw = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %0 = load ptr, ptr %i.jw, align 8, !alias.scope !70823, !noalias !70828, !nonnull !146, !noundef !146
  %1 = shl nuw nsw i64 %i.jv, 5
  %..i.i.i.i.i.i.i.i = xor i64 %1, 544
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 %..i.i.i.i.i.i.i.i
  %i.jy = call { i32, i32 } @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.jx) #53, !noalias !70829 ; 2 uses
  %i.jz = extractvalue { i32, i32 } %i.jy, 0
  %i.ka = extractvalue { i32, i32 } %i.jy, 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jq, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.kb, align 8, !noalias !70827
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 64 ; 2 uses
  %i.kc = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i to i1
  br i1 %i.kc, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.sroa.55.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !70827
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !70827
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.kd = call { i32, i32 } @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4util4randNtB4_8FastRand3new() #53, !noalias !70829 ; 2 uses
  %i.ke = extractvalue { i32, i32 } %i.kd, 0
  %i.kf = extractvalue { i32, i32 } %i.kd, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i.i.i.i, %bb.bn ], [ %i.kf, %bb.bo ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, %bb.bn ], [ %i.ke, %bb.bo ] ; 2 uses
  %i.kg = or i32 %.sroa.01.0.i.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = icmp eq i32 %i.kg, 0
  %..sroa.5.0.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i.i.i.i
  store i32 1, ptr %i.kb, align 8, !noalias !70827
  store i32 %i.jz, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !70827
  store i32 %i.ka, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !70827
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noundef nonnull align 8 %i.jq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.jp) #53, !noalias !70830
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !70831
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !noalias !70831
  %.sroa.0.0.copyload1.pr.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !70831 ; 3 uses
  %i.kh = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, -2
  br i1 %i.kh, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, !prof !70832

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, %bb.bj
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #63, !noalias !70830
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2v_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ki, i64 24, i1 false), !noalias !70824
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !70824
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.cc, label %bb.bp, !prof !175

bb.bp:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !70824
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i, ptr %i.x, align 8, !noalias !70824
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i, i64 24, i1 false), !noalias !70824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !70833
  %i.kj = call { ptr, ptr } @_RNvMs2_NtNtCsczhfDQ1qNkX_5tokio7runtime4parkNtB5_16CachedParkThread5waker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a) #53, !noalias !70834 ; 2 uses
  %i.kk = extractvalue { ptr, ptr } %i.kj, 0      ; 2 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.bw, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.km = extractvalue { ptr, ptr } %i.kj, 1
  store ptr %i.kk, ptr %i.v, align 8, !noalias !70833
  %i.kn = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.km, ptr %i.kn, align 8, !noalias !70833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !70833
  store ptr %i.v, ptr %i.u, align 8, !noalias !70833
  %i.ko = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.ko, align 8, !noalias !70833
  %i.kp = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.kp, align 8, !noalias !70833
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jq, i64 68 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jq, i64 69 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bv, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !70833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !70833
  %i.kt = load i8, ptr %i.jr, align 8, !range !165, !noalias !70833, !noundef !146 ; 2 uses
  switch i8 %i.kt, label %default.unreachable [
    i8 0, label %bb.bt
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
    i8 1, label %bb.bs
  ], !prof !192

bb.bs:                                            ; preds = %bb.br
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.jq, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #53, !noalias !70834
  store i8 0, ptr %i.jr, align 8, !noalias !70833
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.ku = load i8, ptr %i.kq, align 4, !range !149, !noalias !70833, !noundef !146
  %i.kv = load i8, ptr %i.kr, align 1, !noalias !70833
  store i8 1, ptr %i.kq, align 4, !noalias !70833
  store i8 -128, ptr %i.kr, align 1, !noalias !70833
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.bt, %bb.br
  %.sroa.3.0.i.i.i.i.i.i.i.i = phi i8 [ %i.kv, %bb.bt ], [ undef, %bb.br ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i8 [ %i.ku, %bb.bt ], [ %i.kt, %bb.br ]
  store i8 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.s, align 1, !noalias !70833
  store i8 %.sroa.3.0.i.i.i.i.i.i.i.i, ptr %i.ks, align 1, !noalias !70833
  call fastcc void @_RNvXs_NtNtCsf3Ta7LF998c_4core6future6futureINtNtB8_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EENtB4_6Future4pollCs7XnEB7DeNXr_7sslocal(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.t, ptr nonnull align 16 %i.jk, ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #53, !noalias !70834
  %i.kw = load i8, ptr %i.s, align 1, !range !165, !alias.scope !70835, !noalias !70833, !noundef !146
  %.not.i.i.i1.i.i.i.i.i = icmp eq i8 %i.kw, 2
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  call void @_RNvXNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budgetNtB2_10ResetGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull dereferenceable(2) %i.s) #53, !noalias !70834
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.bu, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_6budgetNtNvNtNtB10_4task4coop11with_budget10ResetGuardNCIB29_INtNtNtCsf3Ta7LF998c_4core4task4poll4PollINtNtB36_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEENCINvMs2_NtBY_4parkNtB5b_16CachedParkThread8block_onINtNtB36_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtB46_7service5local6creates8_0EEE0E0E0B27_ECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !70833
  %i.kx = load i64, ptr %i.t, align 8, !range !266, !noalias !70833, !noundef !146 ; 2 uses
  %i.ky = icmp eq i64 %i.kx, -2
  br i1 %i.ky, label %bb.bv, label %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i

bb.bv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !70833
  call void @_RNvMs2_NtNtCsczhfDQ1qNkX_5tokio7runtime4parkNtB5_16CachedParkThread4park(ptr noalias nofree noundef nonnull %i.a) #53, !noalias !70834
  br label %bb.br

bb.bw:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !70833
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEECs7XnEB7DeNXr_7sslocal(ptr nonnull align 16 %i.jk) #53, !noalias !70834
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @578, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1726, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @579) #63, !noalias !70836
  unreachable

_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvNtNtCsczhfDQ1qNkX_5tokio4task4coop11with_budget10ResetGuardNtNtNtCs5Xr050g3D4S_3std6thread5local11AccessErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx.i2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i2.i.i.i.i.i, i64 24, i1 false), !noalias !70837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !70833
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEECs7XnEB7DeNXr_7sslocal(ptr nonnull align 16 %i.jk) #53, !noalias !70834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !70833
  %.val.i.i.i.i.i.i.i9 = load ptr, ptr %i.v, align 8, !noalias !70833, !nonnull !146, !align !154, !noundef !146
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.kn, align 8, !noalias !70833, !noundef !146
  %i.kz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i9, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !noalias !70834, !nonnull !146, !noundef !146
  call void %i.la(ptr noundef %.val5.i.i.i.i.i.i.i) #53, !noalias !70834, !inline_history !70480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !70833
  call void @_RNvXs_NtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtimeNtB4_17EnterRuntimeGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x) #53, !noalias !70838
  call void @_RNvXs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.x) #53, !noalias !70838
  call void @llvm.experimental.noalias.scope.decl(metadata !70839)
  %i.lb = load i64, ptr %i.x, align 8, !range !157, !alias.scope !70840, !noalias !70824, !noundef !146 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 2
  br i1 %i.lc, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !70841)
  %i.ld = icmp eq i64 %i.lb, 0
  br i1 %i.ld, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !70842)
  call void @llvm.experimental.noalias.scope.decl(metadata !70843)
  %i.le = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !70844, !noalias !70824, !nonnull !146, !noundef !146
  %i.lf = atomicrmw sub ptr %i.le, i64 1 release, align 8, !noalias !70845
  %i.lg = icmp eq i64 %i.lf, 1
  br i1 %i.lg, label %bb.bz, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i.i.i.i) #60, !noalias !70838
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !70846)
  call void @llvm.experimental.noalias.scope.decl(metadata !70847)
  %i.lh = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !70848, !noalias !70824, !nonnull !146, !noundef !146
  %i.li = atomicrmw sub ptr %i.lh, i64 1 release, align 8, !noalias !70849
  %i.lj = icmp eq i64 %i.li, 1
  br i1 %i.lj, label %bb.cb, label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i.i.i.i) #60, !noalias !70838
  br label %_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

bb.cc:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i, %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler12multi_threadNtB2r_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3t_6result6ResultuNtNtB4B_5error16ShadowsocksErrorEE0INtNtB3t_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @484, ptr noundef nonnull inttoptr (i64 387 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #63, !noalias !70838
  unreachable

_RINvNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7runtime13enter_runtimeNCINvMNtNtB6_9scheduler12multi_threadNtB1b_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB2d_6result6ResultuNtNtB3l_5error16ShadowsocksErrorEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %_RNCINvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_threadNtB5_11MultiThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0Cs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !70824
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.fc

bb.cd:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70850)
  call void @llvm.experimental.noalias.scope.decl(metadata !70851)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !70852
  %i.lm = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsczhfDQ1qNkX_5tokio7runtime7context7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 15 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 72 ; 8 uses
  %i.lo = load i8, ptr %i.ln, align 8, !range !165, !noalias !70853, !noundef !146
  switch i8 %i.lo, label %default.unreachable [
    i8 0, label %bb.cf
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i.i
    i8 1, label %bb.ce
  ], !prof !192

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.lm, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #53, !noalias !70854
  store i8 0, ptr %i.ln, align 8, !noalias !70853
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 70 ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 2, !range !165, !noalias !70855, !noundef !146
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.lq, 2
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.cg, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !70852
  br label %bb.fb

bb.cg:                                            ; preds = %bb.cf
  store i8 0, ptr %i.lp, align 2, !noalias !70855
  %i.lr = load i64, ptr %i.ll, align 8, !range !150, !alias.scope !70856, !noalias !70857, !noundef !146
  %i.ls = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %2 = load ptr, ptr %i.ls, align 8, !alias.scope !70856, !noalias !70857, !nonnull !146, !noundef !146
  %3 = shl nuw nsw i64 %i.lr, 5
  %..i.i.i.i.i.i.i.i.i = xor i64 %3, 544
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 %..i.i.i.i.i.i.i.i.i
  %i.lu = call { i32, i32 } @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio4util4rand2rtNtB2_16RngSeedGenerator9next_seed(ptr noundef nonnull align 4 %i.lt) #53, !noalias !70858 ; 2 uses
  %i.lv = extractvalue { i32, i32 } %i.lu, 0
  %i.lw = extractvalue { i32, i32 } %i.lu, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lm, i64 56 ; 2 uses
  %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.lx, align 8, !noalias !70855
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 60 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 64 ; 2 uses
  %i.ly = trunc i32 %.sroa.04.0.copyload.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ly, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !70855
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !70855
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.lz = call { i32, i32 } @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4util4randNtB4_8FastRand3new() #53, !noalias !70858 ; 2 uses
  %i.ma = extractvalue { i32, i32 } %i.lz, 0
  %i.mb = extractvalue { i32, i32 } %i.lz, 1
  br label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.0.copyload.i.i.i.i.i.i.i.i.i, %bb.ch ], [ %i.mb, %bb.ci ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.0.copyload.i.i.i.i.i.i.i.i.i, %bb.ch ], [ %i.ma, %bb.ci ] ; 2 uses
  %i.mc = or i32 %.sroa.01.0.i.i.i.i.i.i.i.i.i, %.sroa.5.0.i.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.mc, 0
  %..sroa.5.0.i.i.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i, i32 1, i32 %.sroa.5.0.i.i.i.i.i.i.i.i.i
  store i32 1, ptr %i.lx, align 8, !noalias !70855
  store i32 %i.lv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !70855
  store i32 %i.lw, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !70855
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7currentNtB4_7Context11set_current(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noundef nonnull align 8 %i.lm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ll) #53, !noalias !70859
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 %.sroa.01.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !70860
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  store i32 %..sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 4, !noalias !70860
  %.sroa.0.0.copyload1.pr.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !70860 ; 3 uses
  %i.md = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i.i, -2
  br i1 %i.md, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i.i, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i, !prof !70832

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i, %bb.cd
  call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #63, !noalias !70859
  unreachable

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2v_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3B_6result6ResultuNtNtB4J_5error16ShadowsocksErrorEE0INtNtB3B_6option6OptionNtB1X_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.me, i64 24, i1 false), !noalias !70852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !70852
  %.not.i.i.i.i.i.i2 = icmp eq i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i2, label %bb.fb, label %bb.cj, !prof !175

bb.cj:                                            ; preds = %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE4withNCINvNtBW_7runtime13enter_runtimeNCINvMNtNtBY_9scheduler14current_threadNtB2r_13CurrentThread8block_onINtNtCsf3Ta7LF998c_4core3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNCNvNtNtCsat9HgdBb3qc_16shadowsocks_rust7service5local6creates8_0EEE0INtNtB3x_6result6ResultuNtNtB4F_5error16ShadowsocksErrorEE0INtNtB3x_6option6OptionNtB1T_17EnterRuntimeGuardEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !70852
  store i64 %.sroa.0.0.copyload1.pr.i.i.i.i.i.i.i, ptr %i.r, align 8, !noalias !70852
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i.i.i.i, i64 24, i1 false), !noalias !70852
  %i.mf = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsczhfDQ1qNkX_5tokio7runtime9schedulerNtB5_6Handle17as_current_thread(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ll) #53, !noalias !70861 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !70862
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread9take_core(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.p, ptr noundef nonnull align 8 %i.lk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mf) #53, !noalias !70861
  %i.mg = load i64, ptr %i.p, align 8, !range !157, !noalias !70862, !noundef !146
  %.not14.i.i.i.i.i.i.i = icmp eq i64 %i.mg, 2
  br i1 %.not14.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i7, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i7:                            ; preds = %bb.cj
  %i.mh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lm, i64 68 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lm, i64 69 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.8.0..sroa_idx12.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  br label %bb.ei

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio4sync6notify8NotifiedECs7XnEB7DeNXr_7sslocal.exit7.i.i.i.i.i.i.i, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !70862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !noalias !70862
  %i.mp = load ptr, ptr %i.mf, align 8, !noalias !70861, !nonnull !146, !noundef !146
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !70862
  %i.mr = call noundef nonnull ptr @_RNvNtNtCs5Xr050g3D4S_3std6thread7current7current() #53, !noalias !70861 ; 2 uses
  store ptr %i.mr, ptr %i.n, align 8, !noalias !70862
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !range !160, !noalias !70861, !noundef !146
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7metrics6workerNtB2_13WorkerMetrics13set_thread_id(ptr noundef nonnull align 128 %i.mq, i64 noundef %i.mt) #53, !noalias !70861
  call void @llvm.experimental.noalias.scope.decl(metadata !70863)
  call void @llvm.experimental.noalias.scope.decl(metadata !70864)
  call void @llvm.experimental.noalias.scope.decl(metadata !70865)
  call void @llvm.experimental.noalias.scope.decl(metadata !70866)
  %i.mu = load ptr, ptr %i.n, align 8, !alias.scope !70867, !noalias !70862, !nonnull !146, !noundef !146
  %i.mv = atomicrmw sub ptr %i.mu, i64 1 release, align 8, !noalias !70868
  %i.mw = icmp eq i64 %i.mv, 1
  br i1 %i.mw, label %bb.ck, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs5Xr050g3D4S_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #60, !noalias !70861
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i: ; preds = %bb.ck, %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !70862
  call void @llvm.experimental.noalias.scope.decl(metadata !70869)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !70870)
  %i.mx = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsczhfDQ1qNkX_5tokio7runtime9schedulerNtB5_7Context21expect_current_thread(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #53, !noalias !70871 ; 13 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8 ; 14 uses
  %i.mz = load i64, ptr %i.my, align 8, !noalias !70871, !noundef !146
  %i.na = icmp eq i64 %i.mz, 0
  br i1 %i.na, label %bb.cl, label %bb.cm, !prof !158

bb.cl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  store i64 -1, ptr %i.my, align 8, !noalias !70871
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 8 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !noalias !70871, !align !154, !noundef !146 ; 4 uses
  store ptr null, ptr %i.nb, align 8, !noalias !70871
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.nc, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %bb.dj, label %bb.cn, !prof !155

bb.cm:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std6thread6thread6ThreadECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #63, !noalias !70871
  unreachable

bb.cn:                                            ; preds = %bb.cl
  store i64 0, ptr %i.my, align 8, !noalias !70871
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i)
  %i.nd = load i8, ptr %i.ln, align 8, !range !165, !noalias !70872, !noundef !146
  switch i8 %i.nd, label %default.unreachable [
    i8 0, label %bb.cp
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextE8try_withNCINvBW_13set_schedulerTINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtBY_9scheduler14current_thread4CoreEINtNtCsf3Ta7LF998c_4core6option6OptionINtNtB3z_6result6ResultuNtNtCsat9HgdBb3qc_16shadowsocks_rust5error16ShadowsocksErrorEEENCINvMs7_B2R_NtB2R_9CoreGuard5enterNCINvB5A_8block_onINtNtB3z_3pin3PinQIB6n_IB2h_NCNvNtNtB4y_7service5local6creates8_0EEEE0B3u_E0E0B2f_ECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i.i.i.i.i.i.i
    i8 1, label %bb.co
  ], !prof !192

bb.co:                                            ; preds = %bb.cn
  call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.lm, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyNtNtNtCsczhfDQ1qNkX_5tokio7runtime7context7ContextECs7XnEB7DeNXr_7sslocal) #53, !noalias !70873
  store i8 0, ptr %i.ln, align 8, !noalias !70872
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i.i.i)
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lm, i64 40 ; 4 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !70874, !noundef !146 ; 2 uses
  store ptr %i.o, ptr %i.ne, align 8, !noalias !70874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !70875
  %i.ng = call { ptr, ptr } @_RNvMs2_NtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadNtB5_6Handle9waker_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mx) #53, !noalias !70876 ; 2 uses
  %i.nh = extractvalue { ptr, ptr } %i.ng, 0
  %i.ni = extractvalue { ptr, ptr } %i.ng, 1
  store ptr %i.nh, ptr %i.k, align 8, !noalias !70875
  %i.nj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.ni, ptr %i.nj, align 8, !noalias !70875
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !70875
  store ptr %i.k, ptr %i.j, align 8, !noalias !70875
  %i.nk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.k, ptr %i.nk, align 8, !noalias !70875
  %i.nl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.nl, align 8, !noalias !70875
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  call void @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime7metrics5batchNtB2_12MetricsBatch32start_processing_scheduled_tasks(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.nm) #53, !noalias !70877
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lm, i64 68 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.lm, i64 69 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.632.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.cq

bb.cq:                                            ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cp
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nc, %bb.cp ], [ %.sink50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nq = load ptr, ptr %i.mx, align 8, !noalias !70876, !nonnull !146, !noundef !146
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 464
  %i.ns = atomicrmw xchg ptr %i.nr, i8 0 acq_rel, align 1, !noalias !70877
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ns, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.dc, %bb.cq
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.og, %bb.dc ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cq ] ; 2 uses
  %i.nt = load ptr, ptr %i.mx, align 8, !noalias !70876, !nonnull !146, !noundef !146
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 344
  %i.nv = load i32, ptr %i.nu, align 8, !noalias !70877, !noundef !146 ; 2 uses
  %.not38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.nv, 0
  br i1 %.not38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.nw = load i64, ptr %i.my, align 8, !noalias !70878, !noundef !146
  %i.nx = icmp eq i64 %i.nw, 0
  br i1 %i.nx, label %bb.ct, label %bb.cy, !prof !158

bb.ct:                                            ; preds = %bb.cs
  store i64 -1, ptr %i.my, align 8, !noalias !70878
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nb, align 8, !noalias !70878, !align !154, !noundef !146 ; 2 uses
  %i.ny = icmp eq ptr %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.ny, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEECs7XnEB7DeNXr_7sslocal(ptr nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #53, !noalias !70879
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.my, align 8, !noalias !70878
  %i.nz = add i64 %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_thread4CoreEEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.oa = phi i64 [ 0, %bb.ct ], [ %i.nz, %bb.cu ]
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.nb, align 8, !noalias !70878
  store i64 %i.oa, ptr %i.my, align 8, !noalias !70878
end_hunk_0
