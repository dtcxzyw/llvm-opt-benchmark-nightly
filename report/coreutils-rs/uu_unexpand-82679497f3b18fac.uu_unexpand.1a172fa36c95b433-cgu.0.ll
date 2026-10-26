Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_unexpand-82679497f3b18fac.uu_unexpand.1a172fa36c95b433-cgu.0?download=true
inline.NumInlined: 556
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs_Cs2eSwMnb0Awh_11uu_unexpandNtB4_7Options3new:bb.a
  %i.dg = icmp eq i64 %.sroa.11.0.copyload, %i.df
  br i1 %i.dg, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, label %bb.k

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit578
  %i.dh = call i64 @llvm.uadd.sat.i64(i64 %i.db, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2eSwMnb0Awh_11uu_unexpand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef %.sroa.11.0.copyload, i64 noundef range(i64 1, 0) %i.dh, i64 noundef 8, i64 noundef 16) #21, !noalias !882
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i49, align 8, !alias.scope !881, !noalias !866
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit578
  %i.di = phi ptr [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ], [ %i.ce, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtCs7tKScEop1B6_5alloc6string6StringE5reifyCs2eSwMnb0Awh_11uu_unexpand.exit578 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %.sroa.11.0.copyload ; 2 uses
  store ptr %.val.i.i.i6.i, ptr %i.dj, align 8, !noalias !883, !captures !873
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.val3.i.i.i.i, ptr %i.dk, align 8, !noalias !883
  %i.dl = add nuw nsw i64 %.sroa.11.0.copyload, 1 ; 2 uses
  store i64 %i.dl, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !881, !noalias !866
  br label %bb.i

.loopexit491:                                     ; preds = %select.unfold.i.i.i.i.i.preheader.i, %select.unfold.i.i.i.i.i.i
  %.sroa.0123.0.copyload = load i64, ptr %i.q, align 8, !noalias !884
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i49, align 8, !noalias !884 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !866
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %.idx.i = shl nuw nsw i64 %.sroa.11.0.copyload, 4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.idx.i ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 16 ; 2 uses
  %.val.i = load ptr, ptr %.sroa.7.0.copyload, align 8, !alias.scope !885, !nonnull !4, !noundef !4
  %i.do = getelementptr i8, ptr %.sroa.7.0.copyload, i64 8
  %.val75.i = load i64, ptr %i.do, align 8, !alias.scope !885, !noundef !4 ; 6 uses
  %gepdiff.i = add nsw i64 %.idx.i, -16
  %i.dp = lshr exact i64 %gepdiff.i, 4            ; 2 uses
  %i.dq = add i64 %.val75.i, %i.dp                ; 3 uses
  %i.dr = icmp ult i64 %i.dq, %i.dp
  br i1 %i.dr, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs2eSwMnb0Awh_11uu_unexpand.exit.i, label %.preheader.i.preheader, !prof !14

.preheader.i.preheader:                           ; preds = %.loopexit491
  %i.ds = icmp eq i64 %.sroa.11.0.copyload, 1
  br i1 %i.ds, label %.preheader.i._crit_edge, label %.lr.ph968

.preheader.i:                                     ; preds = %.lr.ph968
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dm
  br i1 %i.du, label %.preheader.i._crit_edge, label %.lr.ph968

.lr.ph968:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.01.0.i.i967 = phi i64 [ %i.dx, %.preheader.i ], [ %i.dq, %.preheader.i.preheader ] ; 2 uses
  %i.dv = phi ptr [ %i.dt, %.preheader.i ], [ %i.dn, %.preheader.i.preheader ] ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %.val8.i.i = load i64, ptr %i.dw, align 8, !alias.scope !885, !noalias !886, !noundef !4
  %i.dx = add i64 %.val8.i.i, %.sroa.01.0.i.i967  ; 3 uses
  %i.dy = icmp ult i64 %i.dx, %.sroa.01.0.i.i967
  br i1 %i.dy, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs2eSwMnb0Awh_11uu_unexpand.exit.i, label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.dq, %.preheader.i.preheader ], [ %i.dx, %.preheader.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !887
  %.not.i.i.i50 = icmp slt i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %.not.i.i.i50, label %bb.m, label %bb.l, !prof !15

bb.l:                                             ; preds = %.preheader.i._crit_edge
  %i.dz = icmp eq i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %i.dz, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51: ; preds = %bb.l
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !888
  %i.ea = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.0.i.i.lcssa, i64 noundef range(i64 1, 9) 1) #21, !noalias !888 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.m, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52

bb.m:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51, %.preheader.i._crit_edge
  %.sroa.4.0.ph.i.i55 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51 ], [ 0, %.preheader.i._crit_edge ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i55, i64 %.sroa.01.0.i.i.lcssa) #24, !noalias !887
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51, %bb.l
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.ea, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i51 ] ; 3 uses
  store i64 %.sroa.01.0.i.i.lcssa, ptr %i.p, align 8, !noalias !887
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %i.ec, align 8, !noalias !887
  %i.ed = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 0, ptr %i.ed, align 8, !noalias !887
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %i.ee = icmp ugt i64 %.val75.i, %.sroa.01.0.i.i.lcssa
  br i1 %i.ee, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, !prof !14

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2eSwMnb0Awh_11uu_unexpand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0, i64 noundef %.val75.i, i64 noundef 1, i64 noundef 1) #21, !noalias !887
  %i.ef = load i64, ptr %i.ed, align 8, !alias.scope !891, !noalias !887, !noundef !4 ; 2 uses
  %i.eg = icmp sgt i64 %i.ef, -1
  call void @llvm.assume(i1 %i.eg)
  %.pre.i54 = load ptr, ptr %i.ec, align 8, !alias.scope !891, !noalias !887
  br label %bb.n

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2eSwMnb0Awh_11uu_unexpand.exit.i52
  %.not.i.i76.i = icmp samesign eq i64 %.val75.i, 0
  br i1 %.not.i.i76.i, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i, label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i
  %i.eh = phi ptr [ %.pre.i54, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ] ; 2 uses
  %i.ei = phi i64 [ %i.ef, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.thread.i.i.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr nonnull readonly align 1 %.val.i, i64 %.val75.i, i1 false), !noalias !892
  br label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %bb.n, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i
  %i.ek = phi ptr [ %i.eh, %bb.n ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ]
  %i.el = phi i64 [ %i.ei, %bb.n ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i ]
  %i.em = add i64 %i.el, %.val75.i                ; 3 uses
  %i.en = icmp sgt i64 %i.em, -1
  call void @llvm.assume(i1 %i.en)
  %i.eo = sub nsw i64 %.sroa.01.0.i.i.lcssa, %i.em ; 2 uses
  %i.ep = icmp eq i64 %.sroa.11.0.copyload, 1
  br i1 %i.ep, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.em
  br label %.lr.ph.i53

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %.lr.ph968, %.loopexit491
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #22, !noalias !887
  unreachable

.lr.ph.i53:                                       ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i, %.lr.ph.preheader.i
  %.sroa.012.113.i = phi ptr [ %i.er, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %i.dn, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.035.212.i = phi ptr [ %i.ev, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %i.eq, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.26.211.i = phi i64 [ %i.ew, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %i.eo, %.lr.ph.preheader.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.012.113.i, i64 16 ; 2 uses
  %.sroa.012.1.val.i = load ptr, ptr %.sroa.012.113.i, align 8, !alias.scope !885, !nonnull !4, !noundef !4
  %i.es = getelementptr i8, ptr %.sroa.012.113.i, i64 8
  %.sroa.012.1.val74.i = load i64, ptr %i.es, align 8, !alias.scope !885, !noundef !4 ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.26.211.i, 0
  br i1 %.not.i.i, label %bb.o, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCs2eSwMnb0Awh_11uu_unexpand.exit.i, !prof !14

bb.o:                                             ; preds = %.lr.ph.i53
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !893
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %.lr.ph.i53
  %i.et = add nsw i64 %.sroa.26.211.i, -1         ; 2 uses
  store i8 44, ptr %.sroa.035.212.i, align 1, !alias.scope !894, !noalias !887
  %.not.i77.i = icmp ugt i64 %.sroa.012.1.val74.i, %i.et
  br i1 %.not.i77.i, label %bb.p, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i, !prof !14

bb.p:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCs2eSwMnb0Awh_11uu_unexpand.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #22, !noalias !895
  unreachable

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninithE12split_at_mutCs2eSwMnb0Awh_11uu_unexpand.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.035.212.i, i64 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sroa.012.1.val74.i
  %i.ew = sub nuw nsw i64 %i.et, %.sroa.012.1.val74.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eu, ptr nonnull readonly align 1 %.sroa.012.1.val.i, i64 range(i64 0, -9223372036854775808) %.sroa.012.1.val74.i, i1 false), !alias.scope !896, !noalias !887
  %i.ex = icmp eq ptr %i.er, %i.dm
  br i1 %i.ex, label %._crit_edge.i, label %.lr.ph.i53

._crit_edge.i:                                    ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i
  %.sroa.26.2.lcssa.i = phi i64 [ %i.eo, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs2eSwMnb0Awh_11uu_unexpand.exit.i ], [ %i.ew, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2eSwMnb0Awh_11uu_unexpand.exit.i ]
  %i.ey = sub i64 %.sroa.01.0.i.i.lcssa, %.sroa.26.2.lcssa.i
  %.sroa.0163.0.copyload = load i64, ptr %i.p, align 8, !noalias !885
  %.sroa.5164.0.copyload = load ptr, ptr %i.ec, align 8, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !887
  br label %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit

_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread, %._crit_edge.i
  %.sroa.0123.0216 = phi i64 [ %.sroa.0123.0.copyload, %._crit_edge.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread ] ; 4 uses
  %.sroa.7.0191214 = phi ptr [ %.sroa.7.0.copyload, %._crit_edge.i ], [ inttoptr (i64 8 to ptr), %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread ] ; 2 uses
  %.sroa.7165.0 = phi i64 [ %i.ey, %._crit_edge.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread ] ; 8 uses
  %.sroa.5164.0 = phi ptr [ %.sroa.5164.0.copyload, %._crit_edge.i ], [ inttoptr (i64 1 to ptr), %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread ] ; 5 uses
  %.sroa.0163.0 = phi i64 [ %.sroa.0163.0.copyload, %._crit_edge.i ], [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtB6_6string6StringENvMB3B_B3z_6as_strEE9from_iterCs2eSwMnb0Awh_11uu_unexpand.exit.thread ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !898
  store i64 0, ptr %i.o, align 8, !noalias !898
  %i.ez = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ez, align 8, !noalias !898
  %i.fa = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  store i64 0, ptr %i.fa, align 8, !noalias !898
  %i.fb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %.outer.split.preheader.i.outer

.outer.split.preheader.i.outer:                   ; preds = %bb.av, %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit
  %.sroa.8130.0..sroa_idx.promoted.i.ph = phi i1 [ %.sroa.8130.0..sroa_idx.promoted570.i, %bb.av ], [ false, %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit ]
  %.us-phi340451.i.ph = phi i64 [ %.lcssa325330.i, %bb.av ], [ 0, %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit ]
  %.us-phi341440.i.ph = phi i64 [ %.lcssa268327.i, %bb.av ], [ 0, %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit ]
  %.sroa.7.0.ph.i.ph = phi i64 [ %i.id, %bb.av ], [ undef, %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit ]
  %or.cond208.i.ph = phi i1 [ true, %bb.av ], [ false, %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit ]
  %.sroa.060.0.ph.i.ph = phi i64 [ 1, %bb.av ], [ 0, %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit ]
  %.sroa.828.0.ph.i.ph = phi i64 [ %.sroa.828.0.ph.i.ph997, %bb.av ], [ undef, %_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECs2eSwMnb0Awh_11uu_unexpand.exit ]
  br label %.outer.split.preheader.i.outer991

.outer.split.preheader.i.outer991:                ; preds = %.outer.split.preheader.i.outer, %bb.be
  %.sroa.8130.0..sroa_idx.promoted.i.ph992 = phi i1 [ %.sroa.8130.0..sroa_idx.promoted.i.ph, %.outer.split.preheader.i.outer ], [ %.sroa.8130.0..sroa_idx.promoted570.i, %bb.be ]
  %.us-phi340451.i.ph993 = phi i64 [ %.us-phi340451.i.ph, %.outer.split.preheader.i.outer ], [ %.lcssa325330.i, %bb.be ]
  %.us-phi341440.i.ph994 = phi i64 [ %.us-phi341440.i.ph, %.outer.split.preheader.i.outer ], [ %.lcssa268327.i, %bb.be ]
  %or.cond208.i.ph995 = phi i1 [ %or.cond208.i.ph, %.outer.split.preheader.i.outer ], [ true, %bb.be ]
  %.sroa.060.0.ph.i.ph996 = phi i64 [ %.sroa.060.0.ph.i.ph, %.outer.split.preheader.i.outer ], [ 0, %bb.be ]
  %.sroa.828.0.ph.i.ph997 = phi i64 [ %.sroa.828.0.ph.i.ph, %.outer.split.preheader.i.outer ], [ %i.iq, %bb.be ] ; 4 uses
  %.ph998 = phi i1 [ false, %.outer.split.preheader.i.outer ], [ true, %bb.be ]
  %.sroa.022.0.ph.i.ph = phi i64 [ 0, %.outer.split.preheader.i.outer ], [ 1, %bb.be ]
  br label %.outer.split.preheader.i

.outer.split.preheader.i:                         ; preds = %.outer.split.preheader.i.outer991, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i
  %.sroa.8130.0..sroa_idx.promoted.i = phi i1 [ %.sroa.8130.0..sroa_idx.promoted570.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i ], [ %.sroa.8130.0..sroa_idx.promoted.i.ph992, %.outer.split.preheader.i.outer991 ] ; 2 uses
  %.us-phi340451.i = phi i64 [ %.lcssa325330.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i ], [ %.us-phi340451.i.ph993, %.outer.split.preheader.i.outer991 ]
  %.us-phi341440.i = phi i64 [ %.lcssa268327.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i ], [ %.us-phi341440.i.ph994, %.outer.split.preheader.i.outer991 ]
  %or.cond208.i = phi i1 [ false, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i ], [ %or.cond208.i.ph995, %.outer.split.preheader.i.outer991 ] ; 4 uses
  %.sroa.060.0.ph.i = phi i64 [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i ], [ %.sroa.060.0.ph.i.ph996, %.outer.split.preheader.i.outer991 ]
  %2 = phi i1 [ false, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i ], [ %.ph998, %.outer.split.preheader.i.outer991 ]
  %.sroa.022.0.ph.i = phi i64 [ 0, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i ], [ %.sroa.022.0.ph.i.ph, %.outer.split.preheader.i.outer991 ]
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, %.outer.split.preheader.i
  %.sroa.8130.0..sroa_idx.promoted571.i = phi i1 [ %.sroa.8130.0..sroa_idx.promoted570.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.sroa.8130.0..sroa_idx.promoted.i, %.outer.split.preheader.i ]
  %.lcssa325332.i = phi i64 [ %.lcssa325330.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.us-phi340451.i, %.outer.split.preheader.i ] ; 3 uses
  %.lcssa268328.i = phi i64 [ %.lcssa268327.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.us-phi341440.i, %.outer.split.preheader.i ] ; 6 uses
  %i.fe = phi i1 [ %i.fz, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.sroa.8130.0..sroa_idx.promoted.i, %.outer.split.preheader.i ]
  br i1 %i.fe, label %bb.w, label %bb.q

bb.q:                                             ; preds = %.outer.split.i
  %i.ff = icmp ult i64 %.sroa.7165.0, %.lcssa325332.i
  br i1 %i.ff, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.q, %bb.u
  %i.fg = phi i64 [ %i.fv, %bb.u ], [ %.lcssa325332.i, %bb.q ] ; 4 uses
  %i.fh = sub nuw i64 %.sroa.7165.0, %i.fg        ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.5164.0, i64 %i.fg ; 2 uses
  %i.fj = icmp samesign ult i64 %i.fh, 16
  br i1 %i.fj, label %.preheader.i.i.i.i, label %bb.r

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.split.i.i.i
  %i.fk = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef range(i64 0, -9223372036854775808) %i.fh) #21, !noalias !899
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.s, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.fh, %bb.s ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 0, %bb.s ], [ 1, %.lr.ph.i.i.i.i ]
  %i.fl = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.fm = insertvalue { i64, i64 } %i.fl, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.s
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.fq, %bb.s ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.sroa.01.05.i.i.i.i
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !900, !noalias !901, !noundef !4
  %i.fp = icmp eq i8 %i.fo, 44
  br i1 %i.fp, label %._crit_edge.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fq = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fq, %i.fh
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.r
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.fm, %._crit_edge.i.i.i.i ], [ %i.fk, %bb.r ] ; 2 uses
  %i.fr = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %bb.t, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i

bb.t:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i
  %i.ft = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.fu = add i64 %i.fg, 1
  %i.fv = add i64 %i.fu, %i.ft                    ; 5 uses
  %.not12.i.i.i = icmp ugt i64 %i.fv, %.sroa.7165.0
  %i.fw = add i64 %i.ft, %i.fg                    ; 3 uses
  %or.cond.i.i.not.i = icmp ult i64 %i.fw, %.sroa.7165.0
  br i1 %or.cond.i.i.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  br i1 %.not12.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.split.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.5164.0, i64 %i.fw
  %lhsc.i = load i8, ptr %i.fx, align 1, !alias.scope !897
  %i.fy = icmp eq i8 %lhsc.i, 44
  br i1 %i.fy, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.u

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.v, %bb.u, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i, %bb.q
  %.sroa.8130.0..sroa_idx.promoted570.i = phi i1 [ true, %bb.q ], [ true, %bb.u ], [ true, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ], [ %.sroa.8130.0..sroa_idx.promoted571.i, %bb.v ] ; 4 uses
  %.lcssa325330.i = phi i64 [ %.lcssa325332.i, %bb.q ], [ %i.fv, %bb.u ], [ %.sroa.7165.0, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ], [ %i.fv, %bb.v ] ; 4 uses
  %.lcssa268327.i = phi i64 [ %.lcssa268328.i, %bb.q ], [ %.lcssa268328.i, %bb.u ], [ %.lcssa268328.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ], [ %i.fv, %bb.v ] ; 4 uses
  %i.fz = phi i1 [ true, %bb.q ], [ true, %bb.u ], [ true, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ], [ false, %bb.v ]
  %.pn.i = phi i64 [ %.sroa.7165.0, %bb.q ], [ %.sroa.7165.0, %bb.u ], [ %.sroa.7165.0, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i ], [ %i.fw, %bb.v ] ; 2 uses
  %i.ga = icmp eq i64 %.pn.i, %.lcssa268328.i
  br i1 %i.ga, label %.outer.split.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs2eSwMnb0Awh_11uu_unexpand.exit.i

bb.w:                                             ; preds = %.outer.split.i
  %.pre.i56 = load i64, ptr %i.fa, align 8, !noalias !898 ; 7 uses
  %i.gb = icmp ult i64 %.pre.i56, 1152921504606846976
  call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp ne i64 %.pre.i56, 0                ; 3 uses
  %or.cond207.i = or i1 %or.cond208.i, %i.gc
  br i1 %or.cond207.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.not.i.i57 = icmp ne i64 %.sroa.828.0.ph.i.ph997, 0
  %narrow.i.i = select i1 %2, i1 %.not.i.i57, i1 false
  br i1 %narrow.i.i, label %bb.aa, label %bb.af

bb.y:                                             ; preds = %bb.w
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !902
  %i.gd = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef 8) #21, !noalias !902 ; 3 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.z, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !14

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #24, !noalias !902
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.y
  store i64 8, ptr %i.gd, align 8, !noalias !902
  br label %bb.ag

bb.aa:                                            ; preds = %bb.x
  br i1 %i.gc, label %bb.ac, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #22, !noalias !902
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.gf = load ptr, ptr %i.ez, align 8, !noalias !898, !nonnull !4, !noundef !4 ; 2 uses
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %.pre.i56
  %i.gh = getelementptr i8, ptr %i.gg, i64 -8
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !902, !noundef !4 ; 2 uses
  %i.gj = add i64 %i.gi, %.sroa.828.0.ph.i.ph997  ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.gi
  br i1 %i.gk, label %bb.ag, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.gl = load i64, ptr %i.o, align 8, !range !5, !alias.scope !903, !noalias !898, !noundef !4
  %i.gm = icmp eq i64 %.pre.i56, %i.gl
  br i1 %i.gm, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsb8JHtmRizrl_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #20, !noalias !902
  %.pre573.i = load ptr, ptr %i.ez, align 8, !alias.scope !903, !noalias !898
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ae, %bb.ad
  %i.gn = phi ptr [ %i.gf, %bb.ad ], [ %.pre573.i, %bb.ae ]
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.pre.i56
  store i64 %i.gj, ptr %i.go, align 8, !noalias !902
  %i.gp = add nuw nsw i64 %.pre.i56, 1            ; 2 uses
  store i64 %i.gp, ptr %i.fa, align 8, !alias.scope !903, !noalias !898
  %i.gq = load ptr, ptr %i.ez, align 8, !noalias !898, !nonnull !4, !noundef !4
  br label %.preheader.preheader.i

bb.af:                                            ; preds = %bb.x
  %i.gr = load ptr, ptr %i.ez, align 8, !noalias !898, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.gc, label %.preheader.preheader.i, label %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread

.preheader.preheader.i:                           ; preds = %bb.af, %.thread.i
  %i.gs = phi ptr [ %i.gq, %.thread.i ], [ %i.gr, %bb.af ] ; 6 uses
  %i.gt = phi i64 [ %i.gp, %.thread.i ], [ %.pre.i56, %bb.af ] ; 4 uses
  %xtraiter = and i64 %i.gt, 3                    ; 3 uses
  %i.gu = icmp ult i64 %i.gt, 4
  br i1 %i.gu, label %.preheader.i58.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %i.gt, -4
  br label %.preheader.i58

.preheader.i58:                                   ; preds = %.preheader.i58, %.preheader.preheader.i.new
  %.sroa.06.0.i.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %i.hg, %.preheader.i58 ] ; 5 uses
  %.sroa.64.0.i.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %.val.i215.i.3, %.preheader.i58 ]
  %.sroa.02.0.i214.i = phi i1 [ true, %.preheader.preheader.i.new ], [ %.sroa.0.0.i.i216.i.3, %.preheader.i58 ]
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.3, %.preheader.i58 ]
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sroa.06.0.i.i
  %.val.i215.i = load i64, ptr %i.gv, align 8, !noalias !902, !noundef !4 ; 2 uses
  %i.gw = icmp ult i64 %.sroa.64.0.i.i, %.val.i215.i
  %.sroa.0.0.i.i216.i = and i1 %.sroa.02.0.i214.i, %i.gw
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sroa.06.0.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.val.i215.i.1 = load i64, ptr %i.gy, align 8, !noalias !902, !noundef !4 ; 2 uses
  %i.gz = icmp ult i64 %.val.i215.i, %.val.i215.i.1
  %.sroa.0.0.i.i216.i.1 = and i1 %.sroa.0.0.i.i216.i, %i.gz
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sroa.06.0.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %.val.i215.i.2 = load i64, ptr %i.hb, align 8, !noalias !902, !noundef !4 ; 2 uses
  %i.hc = icmp ult i64 %.val.i215.i.1, %.val.i215.i.2
  %.sroa.0.0.i.i216.i.2 = and i1 %.sroa.0.0.i.i216.i.1, %i.hc
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sroa.06.0.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %.val.i215.i.3 = load i64, ptr %i.he, align 8, !noalias !902, !noundef !4 ; 3 uses
  %i.hf = icmp ult i64 %.val.i215.i.2, %.val.i215.i.3
  %.sroa.0.0.i.i216.i.3 = and i1 %.sroa.0.0.i.i216.i.2, %i.hf ; 3 uses
  %i.hg = add nuw i64 %.sroa.06.0.i.i, 4          ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i.unr-lcssa, label %.preheader.i58

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i.unr-lcssa: ; preds = %.preheader.i58
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i, label %.preheader.i58.epil.preheader

.preheader.i58.epil.preheader:                    ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i.unr-lcssa, %.preheader.preheader.i
  %.sroa.06.0.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %i.hg, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i.unr-lcssa ]
  %.sroa.64.0.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %.val.i215.i.3, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i.unr-lcssa ]
  %.sroa.02.0.i214.i.epil.init = phi i1 [ true, %.preheader.preheader.i ], [ %.sroa.0.0.i.i216.i.3, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i.unr-lcssa ]
  %lcmp.mod1069 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1069)
  br label %.preheader.i58.epil

.preheader.i58.epil:                              ; preds = %.preheader.i58.epil, %.preheader.i58.epil.preheader
  %.sroa.06.0.i.i.epil = phi i64 [ %i.hj, %.preheader.i58.epil ], [ %.sroa.06.0.i.i.epil.init, %.preheader.i58.epil.preheader ] ; 2 uses
  %.sroa.64.0.i.i.epil = phi i64 [ %.val.i215.i.epil, %.preheader.i58.epil ], [ %.sroa.64.0.i.i.epil.init, %.preheader.i58.epil.preheader ]
  %.sroa.02.0.i214.i.epil = phi i1 [ %.sroa.0.0.i.i216.i.epil, %.preheader.i58.epil ], [ %.sroa.02.0.i214.i.epil.init, %.preheader.i58.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i58.epil ], [ 0, %.preheader.i58.epil.preheader ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sroa.06.0.i.i.epil
  %.val.i215.i.epil = load i64, ptr %i.hh, align 8, !noalias !902, !noundef !4 ; 2 uses
  %i.hi = icmp ult i64 %.sroa.64.0.i.i.epil, %.val.i215.i.epil
  %.sroa.0.0.i.i216.i.epil = and i1 %.sroa.02.0.i214.i.epil, %i.hi ; 2 uses
  %i.hj = add nuw i64 %.sroa.06.0.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i, label %.preheader.i58.epil, !llvm.loop !765

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i: ; preds = %.preheader.i58.epil, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i.unr-lcssa
  %.sroa.0.0.i.i216.i.lcssa = phi i1 [ %.sroa.0.0.i.i216.i.3, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i.unr-lcssa ], [ %.sroa.0.0.i.i216.i.epil, %.preheader.i58.epil ]
  br i1 %.sroa.0.0.i.i216.i.lcssa, label %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.bf, %bb.aw, %bb.an, %bb.ar, %bb.au, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229.i, %bb.ba, %bb.bd, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit233.i, %bb.bj, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i, %bb.ac, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.57.1 = phi ptr [ undef, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i ], [ undef, %bb.ac ], [ %i.gd, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ undef, %bb.ar ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.aw ], [ %i.iv, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit233.i ], [ undef, %bb.bd ], [ undef, %bb.ba ], [ undef, %bb.au ], [ %i.ii, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229.i ], [ undef, %bb.bf ]
  %.sroa.43.1 = phi i64 [ undef, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i ], [ undef, %bb.ac ], [ undef, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.4.1.i.ph.le.i, %bb.ar ], [ %.sroa.5181.0.copyload.i, %bb.an ], [ 1, %bb.bj ], [ undef, %bb.aw ], [ undef, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit233.i ], [ %.sroa.5145.0.copyload.i, %bb.bd ], [ 1, %bb.ba ], [ %.sroa.5163.0.copyload.i, %bb.au ], [ undef, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229.i ], [ undef, %bb.bf ] ; 2 uses
  %.sroa.31.1 = phi i64 [ undef, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i ], [ undef, %bb.ac ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.hx, %bb.ar ], [ %i.hq, %bb.an ], [ %i.ix, %bb.bj ], [ undef, %bb.aw ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit233.i ], [ %i.iq, %bb.bd ], [ %i.ik, %bb.ba ], [ %i.id, %bb.au ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229.i ], [ undef, %bb.bf ] ; 2 uses
  %.sroa.18.1 = phi i64 [ -9223372036854775806, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i ], [ -9223372036854775807, %bb.ac ], [ undef, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.4.1.i.ph.le.i, %bb.ar ], [ %i.hp, %bb.an ], [ 1, %bb.bj ], [ -9223372036854775808, %bb.aw ], [ undef, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit233.i ], [ %i.ip, %bb.bd ], [ 1, %bb.ba ], [ %i.ic, %bb.au ], [ undef, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229.i ], [ -9223372036854775808, %bb.bf ] ; 2 uses
  %i.hk = phi i1 [ true, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i ], [ true, %bb.ac ], [ false, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ true, %bb.ar ], [ true, %bb.an ], [ true, %bb.bj ], [ true, %bb.aw ], [ false, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit233.i ], [ true, %bb.bd ], [ true, %bb.ba ], [ true, %bb.au ], [ false, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229.i ], [ true, %bb.bf ]
  %.sroa.0117.1 = phi i64 [ 2, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i ], [ 2, %bb.ac ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ 2, %bb.ar ], [ 2, %bb.an ], [ 2, %bb.bj ], [ 2, %bb.aw ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit233.i ], [ 2, %bb.bd ], [ 2, %bb.ba ], [ 2, %bb.au ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit229.i ], [ 2, %bb.bf ]
  %.val212.i = load i64, ptr %i.o, align 8, !range !5, !noalias !898, !noundef !4 ; 2 uses
  %i.hl = icmp eq i64 %.val212.i, 0
  br i1 %i.hl, label %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val213.i = load ptr, ptr %i.ez, align 8, !noalias !898, !nonnull !4, !noundef !4
  %i.hm = shl nuw i64 %.val212.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val213.i, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !902
  br label %_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit

_RNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstops.exit.thread: ; preds = %bb.af, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i
  %.sroa.61.32.copyload = phi i64 [ 0, %bb.af ], [ %i.gt, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i ]
  %.sroa.57.32.copyload = phi ptr [ %i.gr, %bb.af ], [ %i.gs, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTbjENCNvCs2eSwMnb0Awh_11uu_unexpand14parse_tabstopss_0EB1K_.exit.i ]
  %.sroa.52.32.copyload = load i64, ptr %i.o, align 8, !noalias !897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !898
  br label %bb.bo

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.ph.le.i = sub nuw i64 %.pn.i, %.lcssa268328.i ; 9 uses
  %.sroa.0.1.i.ph.le.i = getelementptr inbounds nuw i8, ptr %.sroa.5164.0, i64 %.lcssa268328.i ; 5 uses
  %rhsc.i = load i8, ptr %.sroa.0.1.i.ph.le.i, align 1, !alias.scope !897
  switch i8 %rhsc.i, label %bb.aj [
    i8 43, label %bb.ai
    i8 47, label %bb.ak
  ]

bb.ai:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs2eSwMnb0Awh_11uu_unexpand.exit.i
  br i1 %or.cond208.i, label %bb.bb, label %bb.bc

bb.aj:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs2eSwMnb0Awh_11uu_unexpand.exit.i
  br i1 %or.cond208.i, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs2eSwMnb0Awh_11uu_unexpand.exit.i
  br i1 %or.cond208.i, label %bb.as, label %bb.at

bb.al:                                            ; preds = %bb.aj
  %.not.i224.i = icmp slt i64 %.sroa.4.1.i.ph.le.i, 0
  br i1 %.not.i224.i, label %bb.aq, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, !prof !15

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.al
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !905
  %i.hn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.1.i.ph.le.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !905 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.aq, label %bb.ar

bb.am:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !898
  call fastcc void @_RNvCs2eSwMnb0Awh_11uu_unexpand13parse_tab_num(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.ph.le.i, i64 noundef %.sroa.4.1.i.ph.le.i, i1 noundef zeroext false) #21, !noalias !902
  %i.hp = load i64, ptr %i.l, align 8, !range !906, !noalias !898, !noundef !4 ; 2 uses
  %.not204.i = icmp eq i64 %i.hp, -1
  %i.hq = load i64, ptr %i.fb, align 8, !noalias !898 ; 2 uses
  br i1 %.not204.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.5181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5181.0.copyload.i = load i64, ptr %.sroa.5181.0..sroa_idx.i, align 8, !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !898
  br label %bb.ag

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !898
  %i.hr = load i64, ptr %i.fa, align 8, !alias.scope !907, !noalias !898, !noundef !4 ; 3 uses
  %i.hs = load i64, ptr %i.o, align 8, !range !5, !alias.scope !907, !noalias !898, !noundef !4
  %i.ht = icmp eq i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.ap, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs2eSwMnb0Awh_11uu_unexpand.exit225.i

end_hunk_0
