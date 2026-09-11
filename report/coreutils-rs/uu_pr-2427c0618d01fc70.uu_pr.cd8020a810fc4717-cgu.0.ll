Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvCshDScVpnq8df_5uu_pr10write_pageNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_:bb.a
  %.sroa.4.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i39, align 8, !noalias !441 ; 5 uses
  %i.ic = mul i64 %.sroa.02.0.i, 24               ; 5 uses
  %or.cond.i.i.i.i112.i = icmp ugt i64 %.sroa.02.0.i, 384307168202282325
  br i1 %or.cond.i.i.i.i112.i, label %bb.an, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  %i.id = icmp eq i64 %i.ic, 0
  br i1 %i.id, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i113.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !466
  %i.ie = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ic, i64 noundef range(i64 1, 9) 8) #30, !noalias !466 ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %bb.an, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i113.i

bb.an:                                            ; preds = %bb.am, %bb.ak
  %.sroa.4.0.ph.i.i.i133.i = phi i64 [ 8, %bb.am ], [ 0, %bb.ak ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i133.i, i64 %i.ic) #31, !noalias !467
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i113.i: ; preds = %bb.am, %bb.al
  %.sroa.10.0.i.i.i114.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.al ], [ %i.ie, %bb.am ] ; 8 uses
  %.sroa.4.0.i.i.i115.i = phi i64 [ 0, %bb.al ], [ %.sroa.02.0.i, %bb.am ] ; 3 uses
  %i.ig = icmp samesign ule i64 %.sroa.02.0.i, %.sroa.4.0.i.i.i115.i
  call void @llvm.assume(i1 %i.ig)
  %.not.i116.i = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %.not.i116.i, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i117.i

.lr.ph.i.i.i.i.i.i.i117.i:                        ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i113.i
  %i.ih = shl i64 %.sroa.09.0.i, 3                ; 4 uses
  %i.ii = icmp ugt i64 %.sroa.09.0.i, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i.i.i118.i = icmp ugt i64 %i.ih, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i119.i = or i1 %i.ii, %.not.i.i.i.i.i.i.i.i.i.i.i.i118.i
  %i.ij = icmp ne i64 %i.ih, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i119.i, label %.split.i128.i, label %.lr.ph.i.i.i.i.i.i.split.i.i, !prof !10

.lr.ph.i.i.i.i.i.i.split.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i117.i
  br i1 %.not291.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.split.split.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.split.i.i
  %i.ik = add nsw i64 %.sroa.02.0.i, -1
  %xtraiter556 = and i64 %.sroa.02.0.i, 3         ; 3 uses
  %i.il = icmp ult i64 %i.ik, 3
  br i1 %i.il, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil.preheader, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader.new

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader.new: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader
  %unroll_iter561 = and i64 %.sroa.02.0.i, 576460752303423484
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader.new
  %i.im = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader.new ], [ %i.is, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i ] ; 5 uses
  %niter562 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader.new ], [ %niter562.next.3, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i ]
  %i.in = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i114.i, i64 %i.im ; 3 uses
  store i64 0, ptr %i.in, align 8, !noalias !468
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i, align 8, !noalias !468
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i, align 8, !noalias !468
  %i.io = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i114.i, i64 %i.im ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  store i64 0, ptr %i.ip, align 8, !noalias !468
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i.1 = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i.1, align 8, !noalias !468
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i.1 = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i.1, align 8, !noalias !468
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i114.i, i64 %i.im ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  store i64 0, ptr %i.ir, align 8, !noalias !468
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i.2 = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i.2, align 8, !noalias !468
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i.2 = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i.2, align 8, !noalias !468
  %i.is = add nuw nsw i64 %i.im, 4                ; 2 uses
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i114.i, i64 %i.im ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 72
  store i64 0, ptr %i.iu, align 8, !noalias !468
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i.3 = getelementptr inbounds nuw i8, ptr %i.it, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i.3, align 8, !noalias !468
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i.3 = getelementptr inbounds nuw i8, ptr %i.it, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i.3, align 8, !noalias !468
  %niter562.next.3 = add i64 %niter562, 4         ; 2 uses
  %niter562.ncmp.3 = icmp eq i64 %niter562.next.3, %unroll_iter561
  br i1 %niter562.ncmp.3, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i.loopexit.unr-lcssa, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i

.lr.ph.i.i.i.i.i.i.split.split.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.split.i.i
  call void @llvm.assume(i1 %i.ij)
  %xtraiter = and i64 %.sroa.09.0.i, 1
  %i.iv = icmp eq i64 %.sroa.09.0.i, 1
  %unroll_iter = and i64 %.sroa.09.0.i, 2305843009213693950
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod555 = trunc i64 %.sroa.09.0.i to i1
  br label %bb.ao

bb.ao:                                            ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, %.lr.ph.i.i.i.i.i.i.split.split.i.i
  %i.iw = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.split.split.i.i ], [ %i.ix, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ] ; 5 uses
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !469
  %i.iy = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ih, i64 noundef range(i64 1, 9) 8) #30, !noalias !469 ; 5 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %.split.i128.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.preheader: ; preds = %bb.ao
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i

.split.i128.i:                                    ; preds = %bb.ao, %.lr.ph.i.i.i.i.i.i.i117.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.split.i129.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i117.i ], [ 8, %bb.ao ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.split.i129.i, i64 %i.ih) #31, !noalias !470
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i
  %i.ja = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.preheader ]
  %i.jb = or disjoint i64 %i.ja, 1                ; 2 uses
  %i.jc = mul i64 %i.ja, %.sroa.02.0.i
  %i.jd = add i64 %i.jc, %i.iw                    ; 2 uses
  %i.je = icmp ult i64 %i.jd, %.sroa.6.0.copyload429.i
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i, i64 %i.jd
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i122.i = select i1 %i.je, ptr %i.jf, ptr @35
  %i.jg = load ptr, ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i122.i, align 8, !noalias !471, !align !11, !noundef !4
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ja
  store ptr %i.jg, ptr %i.jh, align 8, !noalias !472
  %i.ji = add nuw nsw i64 %i.ja, 2                ; 2 uses
  %i.jj = mul i64 %i.jb, %.sroa.02.0.i
  %i.jk = add i64 %i.jj, %i.iw                    ; 2 uses
  %i.jl = icmp ult i64 %i.jk, %.sroa.6.0.copyload429.i
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i, i64 %i.jk
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i122.i.1 = select i1 %i.jl, ptr %i.jm, ptr @35
  %i.jn = load ptr, ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i122.i.1, align 8, !noalias !471, !align !11, !noundef !4
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jb
  store ptr %i.jn, ptr %i.jo, align 8, !noalias !472
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i
  br i1 %lcmp.mod.not, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.epil.preheader: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.preheader ], [ %i.ji, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod555)
  %i.jp = mul i64 %.epil.init, %.sroa.02.0.i
  %i.jq = add i64 %i.jp, %i.iw                    ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %.sroa.6.0.copyload429.i
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload.i, i64 %i.jq
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i122.i.epil = select i1 %i.jr, ptr %i.js, ptr @35
  %i.jt = load ptr, ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i122.i.epil, align 8, !noalias !471, !align !11, !noundef !4
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.epil.init
  store ptr %i.jt, ptr %i.ju, align 8, !noalias !472
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i121.i.epil.preheader
  %i.jv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i114.i, i64 %i.iw ; 3 uses
  store i64 %.sroa.09.0.i, ptr %i.jv, align 8, !noalias !468
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i124.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %i.iy, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i124.i, align 8, !noalias !468
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i125.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store i64 %.sroa.09.0.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i125.i, align 8, !noalias !468
  %exitcond.not.i.i.i.i.i.i.i126.i = icmp eq i64 %i.ix, %.sroa.02.0.i
  br i1 %exitcond.not.i.i.i.i.i.i.i126.i, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i, label %bb.ao

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i.loopexit.unr-lcssa: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i
  %lcmp.mod559.not = icmp eq i64 %xtraiter556, 0
  br i1 %lcmp.mod559.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil.preheader

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil.preheader: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i.loopexit.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader
  %.epil.init558 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.preheader ], [ %i.is, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod560 = icmp ne i64 %xtraiter556, 0
  call void @llvm.assume(i1 %lcmp.mod560)
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil.preheader
  %i.jw = phi i64 [ %i.jx, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil ], [ %.epil.init558, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil.preheader ]
  %i.jx = add nuw nsw i64 %i.jw, 1
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i114.i, i64 %i.jw ; 3 uses
  store i64 0, ptr %i.jy, align 8, !noalias !468
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i.epil = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i130.i.epil, align 8, !noalias !468
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i.epil = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i131.i.epil, align 8, !noalias !468
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter556
  br i1 %epil.iter.cmp.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil, !llvm.loop !236

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_merged0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i.loopexit.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.us.us.i.i.epil, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i113.i
  %i.jz = icmp eq i64 %.sroa.0189.0.copyload.i, 0
  br i1 %i.jz, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_15to_table_merged0EE9from_iterB1M_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.ka = shl nuw i64 %.sroa.0189.0.copyload.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.ka, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !474
  br label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i

._crit_edge284.i:                                 ; preds = %.loopexit229.i
  %.not79.i = icmp eq i64 %i.dv, 0
  br i1 %.not79.i, label %.thread.i, label %._crit_edge284.thread.i

.loopexit229.i:                                   ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i, %._crit_edge.i
  %.sroa.6.0.copyload366.i.a = phi i64 [ %.sroa.6.0.copyload366.i, %._crit_edge.i ], [ %i.wz, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i ] ; 2 uses
  %i.kb = phi i64 [ %5, %._crit_edge.i ], [ %i.wz, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i ]
  %i.kc = phi ptr [ %6, %._crit_edge.i ], [ %i.wx, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i ]
  %i.kd = phi i64 [ %7, %._crit_edge.i ], [ %i.wz, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i ]
  %exitcond346.not.i = icmp eq i64 %i.kh, %.sroa.09.0.i
  br i1 %exitcond346.not.i, label %._crit_edge284.i, label %bb.aq

bb.aq:                                            ; preds = %.loopexit229.i, %.lr.ph283.i
  %.sroa.6.0.copyload368.i = phi i64 [ 0, %.lr.ph283.i ], [ %.sroa.6.0.copyload366.i.a, %.loopexit229.i ]
  %i.ke = phi i64 [ 0, %.lr.ph283.i ], [ %i.kb, %.loopexit229.i ]
  %i.kf = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph283.i ], [ %i.kc, %.loopexit229.i ] ; 2 uses
  %i.kg = phi i64 [ 0, %.lr.ph283.i ], [ %i.kd, %.loopexit229.i ] ; 2 uses
  %.sroa.025.0281.i = phi i64 [ 0, %.lr.ph283.i ], [ %i.wq, %.loopexit229.i ] ; 4 uses
  %.sroa.065.0280.i = phi i64 [ 0, %.lr.ph283.i ], [ %i.kh, %.loopexit229.i ] ; 3 uses
  %i.kh = add nuw i64 %.sroa.065.0280.i, 1        ; 2 uses
  %i.ki = icmp ugt i64 %.sroa.025.0281.i, %2
  br i1 %i.ki, label %bb.df, label %.lr.ph.preheader.i, !prof !8

.thread.i:                                        ; preds = %._crit_edge284.i, %bb.w
  %.sroa.020.1207.i = phi i8 [ %.sroa.020.0.i, %._crit_edge284.i ], [ %i.ei, %bb.w ]
  %i.kj = mul i64 %.sroa.09.0.i, %.sroa.02.0.i
  %i.kk = icmp ult i64 %2, %i.kj
  br i1 %i.kk, label %bb.aa, label %bb.ar

._crit_edge284.thread.i:                          ; preds = %._crit_edge284.i, %bb.z
  %.sroa.6.0.copyload429.i = phi i64 [ %.sroa.6.0.copyload366.i.a, %._crit_edge284.i ], [ 0, %bb.z ] ; 3 uses
  %i.kl = trunc nuw i8 %.sroa.020.0.i to i1
  br i1 %i.kl, label %bb.as, label %bb.ak

bb.ar:                                            ; preds = %.thread.i
  %i.km = trunc nuw i8 %.sroa.020.1207.i to i1
  br i1 %i.km, label %bb.as, label %bb.ag

bb.as:                                            ; preds = %bb.ar, %._crit_edge284.thread.i
  %i.kn = mul i64 %.sroa.02.0.i, 24               ; 6 uses
  %or.cond.i.i.i.i134.i = icmp ugt i64 %.sroa.02.0.i, 384307168202282325
  br i1 %or.cond.i.i.i.i134.i, label %bb.av, label %bb.at, !prof !10

bb.at:                                            ; preds = %bb.as
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !475
  %i.kp = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.kn, i64 noundef range(i64 1, 9) 8) #30, !noalias !475 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %bb.av, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i

bb.av:                                            ; preds = %bb.au, %bb.as
  %.sroa.4.0.ph.i.i.i160.i = phi i64 [ 8, %bb.au ], [ 0, %bb.as ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i160.i, i64 %i.kn) #31, !noalias !476
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i: ; preds = %bb.au, %bb.at
  %.sroa.10.0.i.i.i136.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.at ], [ %i.kp, %bb.au ] ; 10 uses
  %.sroa.4.0.i.i.i137.i = phi i64 [ 0, %bb.at ], [ %.sroa.02.0.i, %bb.au ] ; 5 uses
  %i.kr = icmp samesign ule i64 %.sroa.02.0.i, %.sroa.4.0.i.i.i137.i
  call void @llvm.assume(i1 %i.kr)
  %.not.i138.i = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %.not.i138.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.preheader.i139.i

.lr.ph.i.i.i.i.i.i.preheader.i139.i:              ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i135.i
  %i.ks = shl i64 %.sroa.09.0.i, 3                ; 4 uses
  %i.kt = icmp ugt i64 %.sroa.09.0.i, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i.i.i140.i = icmp ugt i64 %i.ks, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i141.i = or i1 %i.kt, %.not.i.i.i.i.i.i.i.i.i.i.i.i140.i
  %i.ku = icmp ne i64 %i.ks, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i141.i, label %.split.i154.i, label %.lr.ph.i.i.i.i.i.i.preheader.split.i142.i, !prof !10

.lr.ph.i.i.i.i.i.i.preheader.split.i142.i:        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i139.i
  %.not.i.i.i.i.i.i.i.i.i143.i = icmp eq i64 %.sroa.09.0.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i143.i, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.split.split.i144.i

.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader:        ; preds = %.lr.ph.i.i.i.i.i.i.preheader.split.i142.i
  %xtraiter571 = and i64 %.sroa.02.0.i, 3         ; 3 uses
  %i.kv = icmp ult i64 %.sroa.02.0.i, 4
  br i1 %i.kv, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new

.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new:    ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader
  %unroll_iter577 = and i64 %.sroa.02.0.i, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.us.us.i156.i

.lr.ph.i.i.i.i.i.i.us.us.i156.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i156.i, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new
  %i.kw = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new ], [ %i.lc, %.lr.ph.i.i.i.i.i.i.us.us.i156.i ] ; 5 uses
  %niter578 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader.new ], [ %niter578.next.3, %.lr.ph.i.i.i.i.i.i.us.us.i156.i ]
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.kw ; 3 uses
  store i64 0, ptr %i.kx, align 8, !noalias !477
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i, align 8, !noalias !477
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i, align 8, !noalias !477
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.kw ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  store i64 0, ptr %i.kz, align 8, !noalias !477
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.1 = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.1, align 8, !noalias !477
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.1 = getelementptr inbounds nuw i8, ptr %i.ky, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.1, align 8, !noalias !477
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.kw ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 48
  store i64 0, ptr %i.lb, align 8, !noalias !477
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.2 = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.2, align 8, !noalias !477
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.2 = getelementptr inbounds nuw i8, ptr %i.la, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.2, align 8, !noalias !477
  %i.lc = add nuw nsw i64 %i.kw, 4                ; 2 uses
  %i.ld = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.kw ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 72
  store i64 0, ptr %i.le, align 8, !noalias !477
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.3 = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i157.i.3, align 8, !noalias !477
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.3 = getelementptr inbounds nuw i8, ptr %i.ld, i64 88
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i158.i.3, align 8, !noalias !477
  %niter578.next.3 = add i64 %niter578, 4         ; 2 uses
  %niter578.ncmp.3 = icmp eq i64 %niter578.next.3, %unroll_iter577
  br i1 %niter578.ncmp.3, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i

.lr.ph.i.i.i.i.i.i.preheader.split.split.i144.i:  ; preds = %.lr.ph.i.i.i.i.i.i.preheader.split.i142.i
  call void @llvm.assume(i1 %i.ku)
  %xtraiter563 = and i64 %.sroa.09.0.i, 1
  %i.lf = icmp eq i64 %.sroa.09.0.i, 1
  %unroll_iter569 = and i64 %.sroa.09.0.i, 2305843009213693950
  %lcmp.mod567.not = icmp eq i64 %xtraiter563, 0
  %lcmp.mod568 = trunc i64 %.sroa.09.0.i to i1
  br label %.lr.ph.i.i.i.i.i.i.i145.i

.lr.ph.i.i.i.i.i.i.i145.i:                        ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, %.lr.ph.i.i.i.i.i.i.preheader.split.split.i144.i
  %i.lg = phi i64 [ %i.lh, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.split.split.i144.i ] ; 3 uses
  %i.lh = add nuw nsw i64 %i.lg, 1                ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !478
  %i.li = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ks, i64 noundef range(i64 1, 9) 8) #30, !noalias !478 ; 5 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %.split.i154.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i154.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i145.i, %.lr.ph.i.i.i.i.i.i.preheader.i139.i
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.split.i155.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i139.i ], [ 8, %.lr.ph.i.i.i.i.i.i.i145.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.split.i155.i, i64 %i.ks) #31, !noalias !479
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i145.i
  %i.lk = mul i64 %i.lg, %.sroa.09.0.i            ; 3 uses
  br i1 %i.lf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i:        ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i
  %i.ll = phi i64 [ %i.lr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter570 = phi i64 [ %niter570.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.lm = or disjoint i64 %i.ll, 1                ; 2 uses
  %i.ln = add i64 %i.ll, %i.lk                    ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %2
  %i.lp = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.ln
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i = select i1 %i.lo, ptr %i.lp, ptr null
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.ll
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i, ptr %i.lq, align 8, !noalias !480
  %i.lr = add nuw nsw i64 %i.ll, 2                ; 2 uses
  %i.ls = add i64 %i.lm, %i.lk                    ; 2 uses
  %i.lt = icmp ult i64 %i.ls, %2
  %i.lu = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.ls
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.1 = select i1 %i.lt, ptr %i.lu, ptr null
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %i.lm
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.1, ptr %i.lv, align 8, !noalias !480
  %niter570.next.1 = add nuw nsw i64 %niter570, 2 ; 2 uses
  %niter570.ncmp.1 = icmp eq i64 %niter570.next.1, %unroll_iter569
  br i1 %niter570.ncmp.1, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i
  br i1 %lcmp.mod567.not, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i.epil.preheader: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.epil.init566 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE7reserveB1j_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.lr, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod568)
  %i.lw = add i64 %.epil.init566, %i.lk           ; 2 uses
  %i.lx = icmp ult i64 %i.lw, %2
  %i.ly = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.lw
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.epil = select i1 %i.lx, ptr %i.ly, ptr null
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %.epil.init566
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i147.i.epil, ptr %i.lz, align 8, !noalias !480
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_15to_table_across0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i146.i.epil.preheader
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i136.i, i64 %i.lg ; 3 uses
  store i64 %.sroa.09.0.i, ptr %i.ma, align 8, !noalias !481
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i149.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %i.li, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i149.i, align 8, !noalias !481
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i150.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store i64 %.sroa.09.0.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i150.i, align 8, !noalias !481
  %exitcond.not.i.i.i.i.i.i.i151.i = icmp eq i64 %i.lh, %.sroa.02.0.i
  br i1 %exitcond.not.i.i.i.i.i.i.i151.i, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.i145.i

_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.i
  %lcmp.mod591.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod591.not, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader:      ; preds = %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader
  %.epil.init590 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader ], [ %i.hb, %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod592 = icmp ne i64 %xtraiter587, 0
  call void @llvm.assume(i1 %lcmp.mod592)
  br label %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil

.lr.ph.i.i.i.i.i.i.us.us.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader
  %i.mb = phi i64 [ %i.mc, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil ], [ %.epil.init590, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter588 = phi i64 [ %epil.iter588.next, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader ]
  %i.mc = add nuw nsw i64 %i.mb, 1
  %i.md = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.mb ; 3 uses
  store i64 0, ptr %i.md, align 8, !noalias !461
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.epil, align 8, !noalias !461
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.epil = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.epil, align 8, !noalias !461
  %epil.iter588.next = add i64 %epil.iter588, 1   ; 2 uses
  %epil.iter588.cmp.not = icmp eq i64 %epil.iter588.next, %xtraiter587
  br i1 %epil.iter588.cmp.not, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil, !llvm.loop !295

_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i156.i
  %lcmp.mod575.not = icmp eq i64 %xtraiter571, 0
  br i1 %lcmp.mod575.not, label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader

.lr.ph.i.i.i.i.i.i.us.us.i156.i.epil.preheader:   ; preds = %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.thread.i.loopexit541.unr-lcssa, %.lr.ph.i.i.i.i.i.i.us.us.i156.i.preheader
end_hunk_0
begin_hunk_1_@_RINvCshDScVpnq8df_5uu_pr10write_pageNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_:bb.a
  %i.ui = and i8 %i.uh, 63
  %i.uj = or disjoint i8 %i.ui, -128              ; 2 uses
  %i.uk = lshr i32 %spec.select.i.ph12.i.i.i.i.i.i.i.i, 12
  %i.ul = trunc i32 %i.uk to i8                   ; 2 uses
  %i.um = and i8 %i.ul, 63
  %i.un = or disjoint i8 %i.um, -128
  %i.uo = lshr i32 %spec.select.i.ph12.i.i.i.i.i.i.i.i, 18
  %i.up = trunc nuw nsw i32 %i.uo to i8
  %i.uq = or disjoint i8 %i.up, -16
  br i1 %i.uc, label %bb.cp, label %bb.cq

bb.co:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ur = trunc nuw nsw i32 %spec.select.i.ph12.i.i.i.i.i.i.i.i to i8
  store i8 %i.ur, ptr %i.ub, align 1, !noalias !509
  br label %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.us = or disjoint i8 %i.uh, -64
  store i8 %i.us, ptr %i.ub, align 1, !noalias !509
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store i8 %i.uf, ptr %i.ut, align 1, !noalias !509
  br label %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i

bb.cq:                                            ; preds = %bb.cn
  %i.uu = icmp samesign ult i32 %spec.select.i.ph12.i.i.i.i.i.i.i.i, 65536
  br i1 %i.uu, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.uv = or disjoint i8 %i.ul, -32
  store i8 %i.uv, ptr %i.ub, align 1, !noalias !509
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store i8 %i.uj, ptr %i.uw, align 1, !noalias !509
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  store i8 %i.uf, ptr %i.ux, align 1, !noalias !509
  br label %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cq
  store i8 %i.uq, ptr %i.ub, align 1, !noalias !509
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store i8 %i.un, ptr %i.uy, align 1, !noalias !509
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ub, i64 2
  store i8 %i.uj, ptr %i.uz, align 1, !noalias !509
  %i.va = getelementptr inbounds nuw i8, ptr %i.ub, i64 3
  store i8 %i.uf, ptr %i.va, align 1, !noalias !509
  br label %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i

_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cs, %bb.cr, %bb.cp, %bb.co
  %i.vb = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, %i.tw
  store i64 %i.vb, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !490
  %i.vc = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.vc, label %_RNCNvCshDScVpnq8df_5uu_pr21get_line_for_printings_0B3_.exit.i.i, label %bb.cg

.lr.ph.i.i.i46:                                   ; preds = %bb.cd
  %i.vd = sub nuw i64 %i.rv, %i.rt
  %.pre66.i.i = load i64, ptr %i.l, align 8, !range !6, !alias.scope !510, !noalias !506
  br label %bb.ct

bb.ct:                                            ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i, %.lr.ph.i.i.i46
  %i.ve = phi ptr [ %i.qd, %.lr.ph.i.i.i46 ], [ %i.vk, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i ]
  %i.vf = phi i64 [ %.pre66.i.i, %.lr.ph.i.i.i46 ], [ %i.vl, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i ] ; 3 uses
  %i.vg = phi i64 [ %i.qe, %.lr.ph.i.i.i46 ], [ %i.vn, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i ] ; 4 uses
  %.sroa.01.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i46 ], [ %i.vh, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i ]
  %i.vh = add nuw i64 %.sroa.01.06.i.i.i, 1       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.vi = icmp sgt i64 %i.vg, -1
  call void @llvm.assume(i1 %i.vi)
  %i.vj = icmp eq i64 %i.vf, %i.vg
  br i1 %i.vj, label %bb.cu, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i, !prof !8

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.vf, i64 noundef 1, i64 noundef 1, i64 noundef 1) #30, !noalias !505
  %.pre.i181.i = load i64, ptr %i.l, align 8, !range !6, !alias.scope !510, !noalias !506
  %.pre67.i.i = load ptr, ptr %i.mz, align 8, !alias.scope !511, !noalias !506
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.vk = phi ptr [ %.pre67.i.i, %bb.cu ], [ %i.ve, %bb.ct ] ; 2 uses
  %i.vl = phi i64 [ %.pre.i181.i, %bb.cu ], [ %i.vf, %bb.ct ]
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.vg
  store i8 32, ptr %i.vm, align 1, !noalias !512
  %i.vn = add nuw i64 %i.vg, 1                    ; 3 uses
  store i64 %i.vn, ptr %i.na, align 8, !alias.scope !511, !noalias !506
  %i.vo = icmp ult i64 %i.vh, %i.vd
  br i1 %i.vo, label %bb.ct, label %.loopexit.i.loopexit.i.i

_RNCNvCshDScVpnq8df_5uu_pr21get_line_for_printings_0B3_.exit.i.i: ; preds = %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0CshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i.i, %bb.cg, %.loopexit.i.i.i
  %.sroa.051.0.copyload.i.i = load i64, ptr %i.l, align 8, !noalias !490 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !490
  %i.vp = icmp eq i64 %.sroa.051.0.copyload.i.i, 0
  br i1 %i.vp, label %.split28.i.i, label %bb.cv

bb.cv:                                            ; preds = %_RNCNvCshDScVpnq8df_5uu_pr21get_line_for_printings_0B3_.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rx, i64 noundef %.sroa.051.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !513
  br label %.split28.i.i

bb.cw:                                            ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterNtNtNtBb_3str4iter5CharsNCNvCshDScVpnq8df_5uu_pr21get_line_for_printing0ENtNtNtB9_6traits8iterator8Iterator5countB1u_.exit.i.i
  %.sroa.051.0.copyload52.i.i = load i64, ptr %i.l, align 8, !noalias !490
  store i64 %.sroa.051.0.copyload52.i.i, ptr %i.i, align 8, !noalias !490
  store ptr %i.qd, ptr %.sroa.754.0..sroa_idx57.i.i, align 8, !noalias !490
  store i64 %i.qe, ptr %.sroa.8.0..sroa_idx61.i.i, align 8, !noalias !490
  br label %.split28.i.i

.split28.i.i:                                     ; preds = %bb.cw, %bb.cv, %_RNCNvCshDScVpnq8df_5uu_pr21get_line_for_printings_0B3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !490
  store ptr %i.i, ptr %i.h, align 8, !noalias !490
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx.i.i, align 8, !noalias !490
  store ptr %i.j, ptr %i.nj, align 8, !noalias !490
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !490
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @105, ptr noundef nonnull %i.h) #30, !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !490
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %.val.i.i37.i.i = load i64, ptr %i.i, align 8, !range !6, !alias.scope !516, !noalias !490, !noundef !4 ; 2 uses
  %i.vq = icmp eq i64 %.val.i.i37.i.i, 0
  br i1 %i.vq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit39.i.i, label %bb.cx

bb.cx:                                            ; preds = %.split28.i.i
  %.val1.i.i38.i.i = load ptr, ptr %.sroa.754.0..sroa_idx57.i.i, align 8, !alias.scope !516, !noalias !490, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i38.i.i, i64 noundef %.val.i.i37.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !517
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit39.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit39.i.i: ; preds = %bb.cx, %.split28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !490
  %.val34.i.i = load i64, ptr %i.m, align 8, !range !9, !noalias !490, !noundef !4 ; 2 uses
  %i.vr = icmp sgt i64 %.val34.i.i, 0
  br i1 %i.vr, label %bb.cy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECshDScVpnq8df_5uu_pr.exit.i.i

bb.cy:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit39.i.i
  %.val35.i.i = load ptr, ptr %i.nk, align 8, !noalias !490, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35.i.i, i64 noundef %.val34.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !518
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECshDScVpnq8df_5uu_pr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECshDScVpnq8df_5uu_pr.exit.i.i: ; preds = %bb.cy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit39.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !490
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %.val.i.i41.i.i = load i64, ptr %i.n, align 8, !range !6, !alias.scope !521, !noalias !490, !noundef !4 ; 2 uses
  %i.vs = icmp eq i64 %.val.i.i41.i.i, 0
  br i1 %i.vs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit43.i.i, label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECshDScVpnq8df_5uu_pr.exit.i.i
  %.val1.i.i42.i.i = load ptr, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !alias.scope !521, !noalias !490, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i42.i.i, i64 noundef %.val.i.i41.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !522
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit43.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit43.i.i: ; preds = %bb.cz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECshDScVpnq8df_5uu_pr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !490
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %.val.i.i44.i.i = load i64, ptr %i.o, align 8, !range !6, !alias.scope !525, !noalias !490, !noundef !4 ; 2 uses
  %i.vt = icmp eq i64 %.val.i.i44.i.i, 0
  br i1 %i.vt, label %_RNvCshDScVpnq8df_5uu_pr21get_line_for_printing.exit.i, label %bb.da

bb.da:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit43.i.i
  %.val1.i.i45.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !525, !noalias !490, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i45.i.i, i64 noundef %.val.i.i44.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !526
  br label %_RNvCshDScVpnq8df_5uu_pr21get_line_for_printing.exit.i

_RNvCshDScVpnq8df_5uu_pr21get_line_for_printing.exit.i: ; preds = %bb.da, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit43.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !441
  %i.vu = load ptr, ptr %i.nl, align 8, !noalias !441, !nonnull !4, !noundef !4 ; 3 uses
  %i.vv = load i64, ptr %i.nm, align 8, !noalias !441, !noundef !4
  %i.vw = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.vu, i64 noundef %i.vv) #30 ; 2 uses
  %.not86.i = icmp eq ptr %i.vw, null
  br i1 %.not86.i, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %_RNvCshDScVpnq8df_5uu_pr21get_line_for_printing.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %.val.i.i182.i = load i64, ptr %i.q, align 8, !range !6, !alias.scope !529, !noalias !441, !noundef !4 ; 2 uses
  %i.vx = icmp eq i64 %.val.i.i182.i, 0
  br i1 %i.vx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i44, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vu, i64 noundef %.val.i.i182.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !529
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i44

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i44: ; preds = %bb.dc, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !441
  br label %_RINvCshDScVpnq8df_5uu_pr19write_offset_spacesNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.i

bb.dd:                                            ; preds = %_RNvCshDScVpnq8df_5uu_pr21get_line_for_printing.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %.val.i.i184.i = load i64, ptr %i.q, align 8, !range !6, !alias.scope !532, !noalias !441, !noundef !4 ; 2 uses
  %i.vy = icmp eq i64 %.val.i.i184.i, 0
  br i1 %i.vy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit186.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vu, i64 noundef %.val.i.i184.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !532
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit186.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit186.i: ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !441
  %i.vz = icmp eq ptr %i.og, %i.np
  br i1 %i.vz, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.thread.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtB8_6traits8iterator8Iterator4nextB1W_.exit.i

.lr.ph.preheader.i:                               ; preds = %bb.aq
  %i.wa = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.sroa.025.0281.i ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !437, !noalias !533, !noundef !4
  %.not87.i164 = icmp eq i64 %i.wc, %.sroa.065.0280.i
  br i1 %.not87.i164, label %.lr.ph.preheader, label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %.pre242 = load i64, ptr %i.r, align 8, !range !6, !alias.scope !534, !noalias !535
  br label %.lr.ph

bb.df:                                            ; preds = %bb.aq
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.025.0281.i, i64 noundef range(i64 0, 192153584101141163) %2, i64 noundef range(i64 0, 192153584101141163) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #32
  unreachable

.lr.ph.i:                                         ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.029.0274.i165, i64 72
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !437, !noalias !533, !noundef !4
  %.not87.i = icmp eq i64 %i.we, %.sroa.065.0280.i
  br i1 %.not87.i, label %.lr.ph, label %._crit_edge.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.i
  %i.wf = phi i64 [ %i.wk, %.lr.ph.i ], [ %.pre242, %.lr.ph.preheader ] ; 2 uses
  %.sroa.067.0273.i166 = phi i64 [ %i.wo, %.lr.ph.i ], [ 0, %.lr.ph.preheader ]
  %.sroa.029.0274.i165 = phi ptr [ %i.wi, %.lr.ph.i ], [ %i.wa, %.lr.ph.preheader ] ; 3 uses
  %i.wg = phi i64 [ %i.wn, %.lr.ph.i ], [ %i.kg, %.lr.ph.preheader ] ; 3 uses
  %i.wh = phi ptr [ %i.wl, %.lr.ph.i ], [ %i.kf, %.lr.ph.preheader ]
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.029.0274.i165, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.wj = icmp eq i64 %i.wg, %i.wf
  br i1 %i.wj, label %bb.dg, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i

bb.dg:                                            ; preds = %.lr.ph
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8grow_oneB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #33, !noalias !536
  %.pre361.i = load ptr, ptr %i.er, align 8, !alias.scope !534, !noalias !535
  %.pre = load i64, ptr %i.r, align 8, !range !6, !alias.scope !534, !noalias !535
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i: ; preds = %bb.dg, %.lr.ph
  %i.wk = phi i64 [ %i.wf, %.lr.ph ], [ %.pre, %bb.dg ]
  %i.wl = phi ptr [ %i.wh, %.lr.ph ], [ %.pre361.i, %bb.dg ] ; 4 uses
  %i.wm = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.wg
  store ptr %.sroa.029.0274.i165, ptr %i.wm, align 8, !noalias !537
  %i.wn = add i64 %i.wg, 1                        ; 8 uses
  store i64 %i.wn, ptr %i.eq, align 8, !alias.scope !534, !noalias !535
  %i.wo = add nuw nsw i64 %.sroa.067.0273.i166, 1 ; 3 uses
  %i.wp = icmp eq ptr %i.wi, %i.ep
  br i1 %i.wp, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i, %.lr.ph.preheader.i
  %.sroa.6.0.copyload366.i = phi i64 [ %.sroa.6.0.copyload368.i, %.lr.ph.preheader.i ], [ %i.wn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i ], [ %i.wn, %.lr.ph.i ]
  %5 = phi i64 [ %i.ke, %.lr.ph.preheader.i ], [ %i.wn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i ], [ %i.wn, %.lr.ph.i ] ; 2 uses
  %6 = phi ptr [ %i.kf, %.lr.ph.preheader.i ], [ %i.wl, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i ], [ %i.wl, %.lr.ph.i ]
  %7 = phi i64 [ %i.kg, %.lr.ph.preheader.i ], [ %i.wn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i ], [ %i.wn, %.lr.ph.i ]
  %.sroa.067.0.lcssa.ph.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.wo, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit.i ], [ %i.wo, %.lr.ph.i ] ; 3 uses
  %i.wq = add i64 %.sroa.067.0.lcssa.ph.i, %.sroa.025.0281.i
  %i.wr = icmp ult i64 %.sroa.067.0.lcssa.ph.i, %.sroa.02.0.i
  br i1 %i.wr, label %.lr.ph279.preheader.i, label %.loopexit229.i

.lr.ph279.preheader.i:                            ; preds = %._crit_edge.i
  %.pre363.i = load i64, ptr %i.r, align 8, !range !6, !alias.scope !538, !noalias !539
  br label %.lr.ph279.i

.lr.ph279.i:                                      ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i, %.lr.ph279.preheader.i
  %i.ws = phi i64 [ %i.ww, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i ], [ %.pre363.i, %.lr.ph279.preheader.i ] ; 2 uses
  %i.wt = phi i64 [ %i.wz, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i ], [ %5, %.lr.ph279.preheader.i ] ; 3 uses
  %.sroa.067.1277.i = phi i64 [ %i.wu, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i ], [ %.sroa.067.0.lcssa.ph.i, %.lr.ph279.preheader.i ]
  %i.wu = add i64 %.sroa.067.1277.i, 1            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.wv = icmp eq i64 %i.wt, %i.ws
  br i1 %i.wv, label %bb.dh, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i

bb.dh:                                            ; preds = %.lr.ph279.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8grow_oneB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r) #33, !noalias !540
  %.pre362.i = load i64, ptr %i.r, align 8, !range !6, !alias.scope !538, !noalias !539
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEE8push_mutB1k_.exit188.i: ; preds = %bb.dh, %.lr.ph279.i
  %i.ww = phi i64 [ %i.ws, %.lr.ph279.i ], [ %.pre362.i, %bb.dh ]
  %i.wx = load ptr, ptr %i.er, align 8, !alias.scope !538, !noalias !539, !nonnull !4, !noundef !4 ; 2 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %i.wt
  store ptr null, ptr %i.wy, align 8, !noalias !541
  %i.wz = add i64 %i.wt, 1                        ; 5 uses
  store i64 %i.wz, ptr %i.eq, align 8, !alias.scope !538, !noalias !539
  %exitcond.not.i = icmp eq i64 %i.wu, %.sroa.02.0.i
  br i1 %exitcond.not.i, label %.loopexit229.i, label %.lr.ph279.i

_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit173.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit187.sink.split.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i40, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr8FileLineEBD_.exit173.i ], [ %.sroa.0.1.ph.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit187.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !441
  %.not28 = icmp eq ptr %.sroa.0.1.i, null
  br i1 %.not28, label %bb.di, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66

bb.di:                                            ; preds = %_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit.thread, %_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit
  %.idx = mul nuw nsw i64 %.sink4.i334347357, 24
  %i.xa = getelementptr inbounds nuw i8, ptr %.sink2.i338346358, i64 %.idx
  br i1 %i.dj, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit: ; preds = %bb.di, %bb.do
  %.sroa.076.0178 = phi ptr [ %i.xb, %bb.do ], [ %.sink2.i338346358, %bb.di ] ; 3 uses
  %.sroa.8.0177 = phi i64 [ %i.xc, %bb.do ], [ 0, %bb.di ]
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.076.0178, i64 24 ; 2 uses
  %i.xc = add nuw nsw i64 %.sroa.8.0177, 1        ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.076.0178, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8, !nonnull !4, !noundef !4
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.076.0178, i64 16
  %i.xg = load i64, ptr %i.xf, align 8, !noundef !4
  %i.xh = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xe, i64 noundef %i.xg) #30 ; 2 uses
  %.not32 = icmp eq ptr %i.xh, null
  br i1 %.not32, label %bb.dm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread: ; preds = %bb.do, %bb.di
  %i.xi = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ak) #30 ; 2 uses
  %.not30 = icmp eq ptr %i.xi, null
  br i1 %.not30, label %bb.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66

bb.dj:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread
  %i.xj = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #30 ; 2 uses
  %.not31 = icmp eq ptr %i.xj, null
  br i1 %.not31, label %bb.dk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66

bb.dk:                                            ; preds = %bb.dj
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #30
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECshDScVpnq8df_5uu_pr.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCshDScVpnq8df_5uu_pr.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66, %.split, %bb.dk
  %.sroa.0.0 = phi ptr [ null, %bb.dk ], [ %.sroa.0.3, %.split ], [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66 ], [ %.sroa.0.1361, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCshDScVpnq8df_5uu_pr.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret ptr %.sroa.0.0

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit, %bb.dn, %bb.dj, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread, %_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit
  %.sroa.0.1 = phi ptr [ %.sroa.0.1.i, %_RINvCshDScVpnq8df_5uu_pr13write_columnsNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_.exit ], [ %i.xi, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread ], [ %i.xj, %bb.dj ], [ %i.xq, %bb.dn ], [ %i.xh, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  br i1 %i.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECshDScVpnq8df_5uu_pr.exit, label %.lr.ph.i.i.i48.preheader

.lr.ph.i.i.i48.preheader:                         ; preds = %.split, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66
  %.sroa.0.1361 = phi ptr [ %.sroa.0.3, %.split ], [ %.sroa.0.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66 ]
  %.sink4.i336360 = phi i64 [ %.sink4.i.ph, %.split ], [ %.sink4.i334347357, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66 ] ; 2 uses
  %.sink2.i337359 = phi ptr [ %.sink2.i.ph, %.split ], [ %.sink2.i338346358, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66 ] ; 2 uses
  br label %.lr.ph.i.i.i48

.lr.ph.i.i.i48:                                   ; preds = %.lr.ph.i.i.i48.preheader, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i52
  %.sroa.0.03.i.i.i49 = phi i64 [ %i.xl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i52 ], [ 0, %.lr.ph.i.i.i48.preheader ] ; 2 uses
  %i.xk = getelementptr inbounds nuw [24 x i8], ptr %.sink2.i337359, i64 %.sroa.0.03.i.i.i49 ; 2 uses
  %i.xl = add nuw nsw i64 %.sroa.0.03.i.i.i49, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %.val.i.i.i.i.i50 = load i64, ptr %i.xk, align 8, !range !6, !alias.scope !545, !noalias !546, !noundef !4 ; 2 uses
  %i.xm = icmp eq i64 %.val.i.i.i.i.i50, 0
  br i1 %i.xm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i52, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i.i48
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %.val1.i.i.i.i.i51 = load ptr, ptr %i.xn, align 8, !alias.scope !545, !noalias !546, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i51, i64 noundef %.val.i.i.i.i.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !547
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i52

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i52: ; preds = %bb.dl, %.lr.ph.i.i.i48
  %i.xo = icmp eq i64 %i.xl, %.sink4.i336360
  br i1 %i.xo, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCshDScVpnq8df_5uu_pr.exit.i, label %.lr.ph.i.i.i48

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCshDScVpnq8df_5uu_pr.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i52
  %i.xp = mul nuw nsw i64 %.sink4.i336360, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink2.i337359, i64 noundef %i.xp, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !546
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECshDScVpnq8df_5uu_pr.exit

bb.dm:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit
  %.not33 = icmp eq i64 %i.xc, %.sink4.i334347357
  br i1 %.not33, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xq = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag) #30 ; 2 uses
  %.not34 = icmp eq ptr %i.xq, null
  br i1 %.not34, label %bb.do, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit66

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.xr = icmp eq ptr %i.xb, %i.xa
  br i1 %i.xr, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit

bb.dp:                                            ; preds = %bb.r
  %i.xs = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag) #30 ; 2 uses
  %.not36 = icmp eq ptr %i.xs, null
  br i1 %.not36, label %bb.dq, label %bb.ei

bb.dq:                                            ; preds = %bb.dp
  %i.xt = icmp eq i64 %.sroa.071.0.copyload72, 0
  br i1 %i.xt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload, i64 noundef %.sroa.071.0.copyload72, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !548
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit: ; preds = %bb.dq, %bb.dr
  %.sroa.669.0162.ptr.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 48 ; 3 uses
  %.sroa.071.0.copyload72.1 = load i64, ptr %.sroa.669.0162.ptr.1, align 8, !noalias !430 ; 5 uses
  %.sroa.8.0..sroa.669.8..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %.sroa.8.sroa.0.0.copyload.1 = load ptr, ptr %.sroa.8.0..sroa.669.8..sroa_idx.1, align 8, !noalias !430 ; 5 uses
  %.not.1 = icmp eq i64 %.sroa.071.0.copyload72.1, -1
  br i1 %.not.1, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit
  %.sroa.8.sroa.6.0..sroa.8.0..sroa.669.8..sroa_idx.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %.sroa.8.sroa.6.0.copyload.1 = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa.669.8..sroa_idx.sroa_idx.1, align 8, !noalias !430
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.1) ]
  %i.xu = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.sroa.0.0.copyload.1, i64 noundef %.sroa.8.sroa.6.0.copyload.1) #30 ; 2 uses
  %.not35.1 = icmp eq ptr %i.xu, null
  br i1 %.not35.1, label %bb.dt, label %bb.ei

bb.dt:                                            ; preds = %bb.ds
  %i.xv = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag) #30 ; 2 uses
  %.not36.1 = icmp eq ptr %i.xv, null
  br i1 %.not36.1, label %bb.du, label %bb.ei

bb.du:                                            ; preds = %bb.dt
  %i.xw = icmp eq i64 %.sroa.071.0.copyload72.1, 0
  br i1 %i.xw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.1, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.1, i64 noundef %.sroa.071.0.copyload72.1, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !548
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.1

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.1: ; preds = %bb.dv, %bb.du
  %.sroa.669.0162.ptr.2 = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.cf, i64 72 ; 3 uses
  %.sroa.071.0.copyload72.2 = load i64, ptr %.sroa.669.0162.ptr.2, align 8, !noalias !430 ; 5 uses
  %.sroa.8.0..sroa.669.8..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %.sroa.8.sroa.0.0.copyload.2 = load ptr, ptr %.sroa.8.0..sroa.669.8..sroa_idx.2, align 8, !noalias !430 ; 5 uses
  %.not.2 = icmp eq i64 %.sroa.071.0.copyload72.2, -1
  br i1 %.not.2, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread, label %bb.dw

bb.dw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.1
  %.sroa.8.sroa.6.0..sroa.8.0..sroa.669.8..sroa_idx.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %.sroa.8.sroa.6.0.copyload.2 = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa.669.8..sroa_idx.sroa_idx.2, align 8, !noalias !430
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.2) ]
  %i.xx = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.sroa.0.0.copyload.2, i64 noundef %.sroa.8.sroa.6.0.copyload.2) #30 ; 2 uses
  %.not35.2 = icmp eq ptr %i.xx, null
  br i1 %.not35.2, label %bb.dx, label %bb.ei

bb.dx:                                            ; preds = %bb.dw
  %i.xy = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag) #30 ; 2 uses
  %.not36.2 = icmp eq ptr %i.xy, null
  br i1 %.not36.2, label %bb.dy, label %bb.ei

bb.dy:                                            ; preds = %bb.dx
  %i.xz = icmp eq i64 %.sroa.071.0.copyload72.2, 0
  br i1 %i.xz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.2, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload.2, i64 noundef %.sroa.071.0.copyload72.2, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !548
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.2

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.2: ; preds = %bb.dz, %bb.dy
  %.sroa.669.0162.ptr.3 = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.cf, i64 96 ; 3 uses
  %.sroa.071.0.copyload72.3 = load i64, ptr %.sroa.669.0162.ptr.3, align 8, !noalias !430 ; 5 uses
  %.sroa.8.0..sroa.669.8..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %.sroa.8.sroa.0.0.copyload.3 = load ptr, ptr %.sroa.8.0..sroa.669.8..sroa_idx.3, align 8, !noalias !430 ; 5 uses
  %.not.3 = icmp eq i64 %.sroa.071.0.copyload72.3, -1
  br i1 %.not.3, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread, label %bb.ea

bb.ea:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.2
  %.sroa.8.sroa.6.0..sroa.8.0..sroa.669.8..sroa_idx.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %.sroa.8.sroa.6.0.copyload.3 = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa.669.8..sroa_idx.sroa_idx.3, align 8, !noalias !430
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.3) ]
  %i.ya = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.sroa.0.0.copyload.3, i64 noundef %.sroa.8.sroa.6.0.copyload.3) #30 ; 2 uses
  %.not35.3 = icmp eq ptr %i.ya, null
end_hunk_1
