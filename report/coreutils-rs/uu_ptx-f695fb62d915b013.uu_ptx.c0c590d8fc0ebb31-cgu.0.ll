Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsgy7pbN39oAf_6uu_ptx10read_input:bb.a
  br label %bb.br

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ju = icmp ne ptr %i.jm, %i.hi
  call void @llvm.assume(i1 %i.ju)
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i, i64 3 ; 3 uses
  %i.jw = load i8, ptr %i.jm, align 1, !noalias !1484, !noundef !4
  %i.jx = shl nuw nsw i32 %i.jq, 6
  %i.jy = and i8 %i.jw, 63
  %i.jz = zext nneg i8 %i.jy to i32
  %i.ka = or disjoint i32 %i.jx, %i.jz            ; 2 uses
  %i.kb = shl nuw nsw i32 %i.jk, 12
  %i.kc = or disjoint i32 %i.ka, %i.kb
  %i.kd = icmp samesign ugt i8 %i.jh, -17
  br i1 %i.kd, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.br

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ke = icmp ne ptr %i.jv, %i.hi
  call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.kg = load i8, ptr %i.jv, align 1, !noalias !1484, !noundef !4
  %i.kh = shl nuw nsw i32 %i.jk, 18
  %i.ki = and i32 %i.kh, 1835008
  %i.kj = shl nuw nsw i32 %i.ka, 6
  %i.kk = and i8 %i.kg, 63
  %i.kl = zext nneg i8 %i.kk to i32
  %i.km = or disjoint i32 %i.kj, %i.kl
  %i.kn = or disjoint i32 %i.km, %i.ki
  br label %bb.br

bb.br:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jm, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jg, %bb.bq ] ; 3 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jr, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kc, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jt, %bb.bq ]
  %i.ko = icmp samesign ult i64 %i.jf, 2305843009213693952
  call void @llvm.assume(i1 %i.ko)
  %i.kp = load i64, ptr %i.b, align 8, !range !131, !alias.scope !1489, !noalias !1463, !noundef !4
  %i.kq = icmp eq i64 %i.jf, %i.kp
  br i1 %i.kq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bs

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.br
  %i.kr = ptrtoint ptr %.sroa.0.1.ph.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ks = sub nuw i64 %i.ir, %i.kr                ; 2 uses
  %i.kt = lshr i64 %i.ks, 2
  %i.ku = and i64 %i.ks, 3
  %.not.i4.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ku, 0
  %i.kv = zext i1 %.not.i4.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %i.kt, 1
  %i.kw = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.kv
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.jf, i64 noundef range(i64 1, 0) %i.kw, i64 noundef 4, i64 noundef 4) #28, !noalias !1463
  %.pre.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1489, !noalias !1463
  br label %bb.bs

bb.bs:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.br
  %i.kx = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VeccE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.je, %bb.br ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kx, i64 %i.jf
  store i32 %spec.select.i.ph.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ky, align 4, !noalias !1490
  %i.kz = add nuw nsw i64 %i.jf, 1                ; 3 uses
  store i64 %i.kz, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1489, !noalias !1463
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i.i.i.i.i.i.i, %i.hi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsE11spec_extendCsgy7pbN39oAf_6uu_ptx.exit.i.i.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsE11spec_extendCsgy7pbN39oAf_6uu_ptx.exit.i.i.loopexit.i.i.i.i.i.i.i: ; preds = %bb.bs
  %.sroa.0.0.copyload1.pre.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1491
  %.sroa.5.0.copyload3.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1491
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringINtNtBZ_3vec3VeccEuNCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_B1A_IB1y_B1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B1U_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringINtNtBZ_3vec3VeccEuNCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_B1A_IB1y_B1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B1U_.exit.i.i.i.i.i.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsE11spec_extendCsgy7pbN39oAf_6uu_ptx.exit.i.i.loopexit.i.i.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i, %.preheader
  %.sroa.6.0.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader ], [ %i.kz, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsE11spec_extendCsgy7pbN39oAf_6uu_ptx.exit.i.i.loopexit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.5.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %.preheader ], [ %.sroa.5.0.copyload3.pre.i.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsE11spec_extendCsgy7pbN39oAf_6uu_ptx.exit.i.i.loopexit.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader ], [ %.sroa.0.0.copyload1.pre.i.i.i.i.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VeccEINtB2_10SpecExtendcNtNtNtCs6JMX4GRUq9U_4core3str4iter5CharsE11spec_extendCsgy7pbN39oAf_6uu_ptx.exit.i.i.loopexit.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1463
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.hd, i64 %.sroa.5.0.i.i.i.i.i ; 3 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.la, align 8, !noalias !1492
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1492
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  store i64 %.sroa.6.0.i.i.i.i.i.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1492
  %i.lb = add nuw i64 %.sroa.5.0.i.i.i.i.i, 1     ; 2 uses
  %i.lc = icmp eq i64 %i.lb, %.sroa.16.1
  br i1 %i.lc, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_cEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtB8_6string6StringENCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0EE9from_iterB3j_.exit, label %.preheader

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_cEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtB8_6string6StringENCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0EE9from_iterB3j_.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringINtNtBZ_3vec3VeccEuNCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_B1A_IB1y_B1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B1U_.exit.i.i.i.i.i.i, %bb.bj
  %.sroa.10.0.i18.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bj ], [ %i.hd, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtCs7tKScEop1B6_5alloc6string6StringINtNtBZ_3vec3VeccEuNCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvMsk_B1A_IB1y_B1x_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1Q_EE0E0E0B1U_.exit.i.i.i.i.i.i ]
  %i.ld = icmp ult i64 %.sroa.16.1, 384307168202282326
  call void @llvm.assume(i1 %i.ld)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.val29) ]
  %i.le = icmp eq i64 %i.bh, 0
  br i1 %i.le, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i60

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i60: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_cEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtB8_6string6StringENCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0EE9from_iterB3j_.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1497
  %i.lf = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bh, i64 noundef range(i64 1, 9) 1) #28, !noalias !1497 ; 3 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i60
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.bh) #30, !noalias !1505
  unreachable

bb.bu:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i60
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lf, ptr nonnull readonly align 1 %.sroa.03.0.val29, i64 range(i64 0, -9223372036854775808) %i.bh, i1 false), !noalias !1506
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_cEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtB8_6string6StringENCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0EE9from_iterB3j_.exit, %bb.bu
  %.sroa.582.0 = phi ptr [ %i.lf, %bb.bu ], [ inttoptr (i64 1 to ptr), %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_cEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtB8_6string6StringENCNvCsgy7pbN39oAf_6uu_ptx10read_inputs1_0EE9from_iterB3j_.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1507)
  %i.lh = load i64, ptr %i.ad, align 8, !alias.scope !1507, !noalias !1510, !noundef !4 ; 3 uses
  %i.li = load i64, ptr %i.ab, align 8, !range !131, !alias.scope !1507, !noalias !1510, !noundef !4
  %i.lj = icmp eq i64 %i.lh, %i.li
  br i1 %i.lj, label %bb.bv, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEE8push_mutB1q_.exit

bb.bv:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEE8grow_oneB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #31, !noalias !1510
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEE8push_mutB1q_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEE8push_mutB1q_.exit: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit, %bb.bv
  %i.lk = load ptr, ptr %i.ac, align 8, !alias.scope !1507, !noalias !1510, !nonnull !4, !noundef !4
  %i.ll = getelementptr inbounds nuw [80 x i8], ptr %i.lk, i64 %i.lh ; 10 uses
  store i64 %i.bh, ptr %i.ll, align 8, !noalias !1507
  %.sroa.076.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store ptr %.sroa.582.0, ptr %.sroa.076.sroa.4.0..sroa_idx, align 8, !noalias !1507
  %.sroa.076.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store i64 %i.bh, ptr %.sroa.076.sroa.5.0..sroa_idx, align 8, !noalias !1507
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  store i64 %.sroa.072.1, ptr %.sroa.477.0..sroa_idx, align 8, !noalias !1507
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store ptr %.sroa.974.1, ptr %.sroa.578.0..sroa_idx, align 8, !noalias !1507
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  store i64 %.sroa.16.1, ptr %.sroa.679.0..sroa_idx, align 8, !noalias !1507
  %.sroa.7.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  store i64 %.sroa.16.1, ptr %.sroa.7.0..sroa_idx80, align 8, !noalias !1507
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx80.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  store ptr %.sroa.10.0.i18.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx80.sroa_idx, align 8, !noalias !1507
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx80.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  store i64 %.sroa.16.1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx80.sroa_idx, align 8, !noalias !1507
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ll, i64 72
  store i64 %.sroa.0.0161, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !1507
  %i.lm = add i64 %i.lh, 1
  store i64 %i.lm, ptr %i.ad, align 8, !alias.scope !1507, !noalias !1510
  %i.ln = add i64 %.sroa.16.1, %.sroa.0.0161
  call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  %.val1.i61 = load i64, ptr %.sroa.42.0..sroa_idx.i34, align 8, !alias.scope !1512, !noundef !4 ; 2 uses
  %i.lo = icmp eq i64 %.val1.i61, 0
  br i1 %i.lo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit.i64, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i62

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i62: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEE8push_mutB1q_.exit
  %.val.i63 = load ptr, ptr %i.z, align 8, !alias.scope !1512, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i63, i64 noundef %.val1.i61, i64 noundef 1) #28, !noalias !1512
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit.i64

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit.i64: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i62, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEE8push_mutB1q_.exit
  %.val2.i65 = load ptr, ptr %i.ar, align 8, !alias.scope !1512 ; 4 uses
  %.val3.i66 = load ptr, ptr %i.as, align 8, !alias.scope !1512, !nonnull !4, !align !24, !noundef !4 ; 3 uses
  %i.lp = load ptr, ptr %.val3.i66, align 8, !invariant.load !4, !noalias !1512 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i67, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit.i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i65) ]
  call void %i.lp(ptr noundef nonnull %.val2.i65) #29, !noalias !1512, !inline_history !1445
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsgy7pbN39oAf_6uu_ptx.exit.i64
  %i.lq = getelementptr inbounds nuw i8, ptr %.val3.i66, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !range !131, !invariant.load !4, !noalias !1512 ; 2 uses
  %i.ls = icmp eq i64 %i.lr, 0
  br i1 %i.ls, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit69, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i68

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i68: ; preds = %bb.bx
  %i.lt = getelementptr inbounds nuw i8, ptr %.val3.i66, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !range !25, !invariant.load !4, !noalias !1512
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i65) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i65, i64 noundef %i.lr, i64 noundef range(i64 1, -9223372036854775807) %i.lu) #28, !noalias !1512
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit69

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderINtNtBK_5boxed3BoxDNtNtBI_4read4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit69: ; preds = %bb.bx, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.lv = icmp eq ptr %i.be, %i.ao
  br i1 %i.lv, label %._crit_edge, label %bb.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEEEB1T_.exit: ; preds = %bb.bf, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsgy7pbN39oAf_6uu_ptx11FileContentEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropB1q_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexEECsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsgy7pbN39oAf_6uu_ptx15create_word_set(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.435.i.i.i = alloca [72 x i8], align 8    ; 4 uses
  %.sroa.015.i.sroa.4.i.i.i = alloca [72 x i8], align 8 ; 5 uses
  %.sroa.019.i.sroa.4.i.i.i = alloca [72 x i8], align 8 ; 5 uses
  %.sroa.0.sroa.7.i.i.i = alloca [72 x i8], align 8 ; 9 uses
  %.sroa.716.i.i.i = alloca [72 x i8], align 8    ; 5 uses
  %.sroa.7.i.i.i = alloca [72 x i8], align 8      ; 5 uses
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [120 x i8], align 8               ; 21 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u) #28
  %i.v = load ptr, ptr %i.p, align 8, !noundef !4
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.dv, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa) #28
  %i.ab = load ptr, ptr %i.n, align 8, !noundef !4
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.ds, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ag, 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %._crit_edge, label %.lr.ph737

.lr.ph737:                                        ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.010.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 5 uses
  %.sroa.010.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 4 uses
  %.sroa.010.sroa.0.sroa.4.sroa.3.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.010.sroa.0.sroa.4.sroa.4.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %.sroa.010.sroa.0.sroa.4.sroa.5.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 4 uses
  %.sroa.010.sroa.0.sroa.4.sroa.7.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.010.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = icmp eq i64 %i.u, 3
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.ba = load i8, ptr %i.az, align 2, !range !181
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bd = load i8, ptr %i.bc, align 8, !range !181
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.val.i = load i64, ptr %i.bj, align 8          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.val5.i = load i64, ptr %i.bk, align 8         ; 2 uses
  %i.bl = xor i64 %.val.i, 8317987319222330741    ; 2 uses
  %i.bm = xor i64 %.val5.i, 7237128888997146477   ; 2 uses
  %i.bn = xor i64 %.val.i, 7816392313619706465    ; 2 uses
  %i.bo = xor i64 %.val5.i, 8387220255154660723   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = load ptr, ptr %i.bf, align 8, !nonnull !4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 121
  %i.bt = load i8, ptr %i.bs, align 1, !range !181
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.val.i85 = load i64, ptr %i.bz, align 8        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val5.i86 = load i64, ptr %i.ca, align 8       ; 2 uses
  %i.cb = xor i64 %.val.i85, 8317987319222330741  ; 2 uses
  %i.cc = xor i64 %.val5.i86, 7237128888997146477 ; 2 uses
  %i.cd = xor i64 %.val.i85, 7816392313619706465  ; 2 uses
  %i.ce = xor i64 %.val5.i86, 8387220255154660723 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = load ptr, ptr %i.bv, align 8, !nonnull !4 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.cj = load i8, ptr %i.ci, align 4, !range !181
  %i.ck = trunc nuw i8 %i.cj to i1
  %.sroa.8.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.16236.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %brmerge.not = select i1 %i.bu, i1 %i.by, i1 false
  br label %bb.d

.loopexit:                                        ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit, %bb.d
  %.sroa.10.1.lcssa = phi i64 [ %.sroa.10.0733, %bb.d ], [ %.sroa.10.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 2 uses
  %.sroa.7.1.lcssa = phi i64 [ %.sroa.7.0734, %bb.d ], [ %.sroa.7.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0342735, %bb.d ], [ %.sroa.0.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 2 uses
  %i.cm = icmp eq ptr %i.cn, %i.ah
  br i1 %i.cm, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph737, %.loopexit
  %.sroa.0.0736 = phi ptr [ %i.ae, %.lr.ph737 ], [ %i.cn, %.loopexit ] ; 6 uses
  %.sroa.0.0342735 = phi ptr [ null, %.lr.ph737 ], [ %.sroa.0.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.7.0734 = phi i64 [ undef, %.lr.ph737 ], [ %.sroa.7.1.lcssa, %.loopexit ] ; 2 uses
  %.sroa.10.0733 = phi i64 [ 0, %.lr.ph737 ], [ %.sroa.10.1.lcssa, %.loopexit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0736, i64 80 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0736, i64 72
  %i.cp = load i64, ptr %i.co, align 8, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0736, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.0736, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4 ; 2 uses
  %.idx741 = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx741
  %i.cv = icmp eq i64 %i.ct, 0
  br i1 %i.cv, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.cw = getelementptr i8, ptr %.sroa.0.0736, i64 8
  %i.cx = getelementptr i8, ptr %.sroa.0.0736, i64 16
  br label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %.sroa.10.0.lcssa = phi i64 [ 0, %bb.c ], [ %.sroa.10.1.lcssa, %.loopexit ]
  %.sroa.7.0.lcssa = phi i64 [ undef, %bb.c ], [ %.sroa.7.1.lcssa, %.loopexit ]
  %.sroa.0.0342.lcssa = phi ptr [ null, %bb.c ], [ %.sroa.0.1.lcssa, %.loopexit ]
  store ptr %.sroa.0.0342.lcssa, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.lcssa, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.0.lcssa, ptr %.sroa.10.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dr

bb.e:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit
  %.sroa.04.0730 = phi i64 [ 0, %.lr.ph ], [ %i.gq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 7 uses
  %.sroa.07.0729 = phi ptr [ %i.cr, %.lr.ph ], [ %i.cy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ] ; 3 uses
  %.sroa.0.1728 = phi ptr [ %.sroa.0.0342735, %.lr.ph ], [ %.sroa.0.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ]
  %.sroa.7.1727 = phi i64 [ %.sroa.7.0734, %.lr.ph ], [ %.sroa.7.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ]
  %.sroa.10.1726 = phi i64 [ %.sroa.10.0733, %.lr.ph ], [ %.sroa.10.2.ph.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.07.0729, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.07.0729, i64 8 ; 4 uses
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.07.0729, i64 16 ; 4 uses
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4
  %.val = load ptr, ptr %i.o, align 8
  %.val62 = load ptr, ptr %i.aj, align 8
  call fastcc void @_RNvMs4_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex7find_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.m, ptr %.val, ptr %.val62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.dc) #29
  %i.dd = load ptr, ptr %i.m, align 8, !noundef !4
  %.not = icmp eq ptr %i.dd, null                 ; 2 uses
  %i.de = load i64, ptr %i.ak, align 8
  %i.df = load i64, ptr %i.al, align 8
  %.sroa.049.0 = select i1 %.not, i64 0, i64 %i.de
  %.sroa.050.0 = select i1 %.not, i64 0, i64 %i.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dg = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dh = load i64, ptr %i.db, align 8, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.di = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.dj = load i8, ptr %i.ao, align 8, !range !181, !noalias !1518, !noundef !4
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %._RNvYNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsgy7pbN39oAf_6uu_ptx.exit_crit_edge.i.i.i, label %bb.f, !prof !27

._RNvYNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsgy7pbN39oAf_6uu_ptx.exit_crit_edge.i.i.i: ; preds = %bb.e
  %.val.pre.i.i.i = load i64, ptr %i.an, align 8, !noalias !1515
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i

bb.f:                                             ; preds = %bb.e
  %i.dl = atomicrmw add ptr @_RNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner7COUNTER, i64 1 monotonic, align 8, !noalias !1525 ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.g, label %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsgy7pbN39oAf_6uu_ptx.exit.i.i.i, !prof !52

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @205, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #27, !noalias !1525
  unreachable

_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsgy7pbN39oAf_6uu_ptx.exit.i.i.i: ; preds = %bb.f
  store i64 %i.dl, ptr %i.an, align 8, !noalias !1525
  store i8 1, ptr %i.ao, align 8, !noalias !1525
  br label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsgy7pbN39oAf_6uu_ptx.exit.i.i.i, %._RNvYNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsgy7pbN39oAf_6uu_ptx.exit_crit_edge.i.i.i
  %.val.i.i.i = phi i64 [ %.val.pre.i.i.i, %._RNvYNCNKNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCsgy7pbN39oAf_6uu_ptx.exit_crit_edge.i.i.i ], [ %i.dl, %_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECsgy7pbN39oAf_6uu_ptx.exit.i.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8, !noalias !1515 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i.i, %i.do
  br i1 %i.dp, label %bb.i, label %bb.h, !prof !27

bb.h:                                             ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i
  call fastcc void @_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE8get_slowCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.di, i64 noundef %.val.i.i.i, i64 noundef %i.do) #28
  br label %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit

bb.i:                                             ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB2b_NtNtB3j_6marker4SyncNtB48_4SendNtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB4D_13RefUnwindSafeEL_EE3get0jECsgy7pbN39oAf_6uu_ptx.exit.i
  store atomic i64 1, ptr %i.dn release, align 8, !noalias !1515
  %i.dq = inttoptr i64 %.val.i.i.i to ptr
  store ptr %i.di, ptr %i.ap, align 8, !alias.scope !1515
  store i64 1, ptr %i.j, align 8, !alias.scope !1515
  store ptr %i.dq, ptr %i.aq, align 8, !alias.scope !1515
  store i8 0, ptr %i.ar, align 8, !alias.scope !1515
  br label %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit

_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 0, ptr %.sroa.010.sroa.0.sroa.2.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.010.sroa.0.sroa.4.0..sroa_idx, align 8
  store ptr %i.dg, ptr %.sroa.010.sroa.0.sroa.4.sroa.3.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %i.dh, ptr %.sroa.010.sroa.0.sroa.4.sroa.4.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %.sroa.010.sroa.0.sroa.4.sroa.5.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %i.dh, ptr %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store i8 0, ptr %.sroa.010.sroa.0.sroa.4.sroa.7.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8
  store ptr %i.q, ptr %.sroa.010.sroa.2.0..sroa_idx, align 8
  store ptr %i.dg, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %i.dh, ptr %.sroa.311.0..sroa_idx, align 8
  %i.dr = add i64 %.sroa.04.0730, %i.cp           ; 5 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i, %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit
  %.sroa.10.2.ph.ph = phi i64 [ %i.ahe, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i ], [ %.sroa.10.1726, %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit ] ; 3 uses
  %.sroa.7.2.ph.ph = phi i64 [ %.sroa.7.4, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i ], [ %.sroa.7.1727, %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit ] ; 7 uses
  %.sroa.0.2.ph.ph = phi ptr [ %.sroa.0.4, %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i ], [ %.sroa.0.1728, %_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE3getCsgy7pbN39oAf_6uu_ptx.exit ] ; 9 uses
  %.not.i.i105 = icmp eq ptr %.sroa.0.2.ph.ph, null
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, %.outer
  %i.ds = load ptr, ptr %.sroa.010.sroa.2.0..sroa_idx, align 8, !nonnull !4, !align !24, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1528)
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.experimental.noalias.scope.decl(metadata !1538)
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1542
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.dt = load i64, ptr %i.l, align 8, !range !489, !alias.scope !1547, !noalias !1548, !noundef !4
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = load ptr, ptr %i.au, align 8, !nonnull !4, !align !24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dx = load ptr, ptr %i.at, align 8, !nonnull !4
  %.sroa.0.0.i.i.i = select i1 %i.du, ptr %i.dw, ptr %i.dx
  %.val.i.i.i67 = load ptr, ptr %i.ds, align 8, !alias.scope !1551, !noalias !1552, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i.i67, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !1556, !nonnull !4, !noundef !4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 138
  %i.eb = load i8, ptr %i.ea, align 2, !range !1071, !noalias !1556, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.eb, 2
  br i1 %cond.i.i.i.i, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.ec = load i64, ptr %.sroa.010.sroa.0.sroa.4.sroa.5.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1562, !noalias !1563, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ec, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 168
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1565 ; 8 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 60
  %i.ee = load i32, ptr %i.ed, align 4, !noalias !1565, !noundef !4
  %i.ef = and i32 %i.ee, 1
  %.not6.i.i.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not6.i.i.i.i.i, label %._crit_edge.i.i.i, label %bb.ad

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.j
  %i.eg = load i64, ptr %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1562, !noalias !1563, !noundef !4 ; 6 uses
  %i.eh = load i64, ptr %.sroa.010.sroa.0.sroa.4.sroa.4.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1562, !noalias !1563, !noundef !4 ; 3 uses
  %i.ei = icmp ult i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.l, label %._crit_edge.i.i.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 64
  %i.ek = load i32, ptr %i.ej, align 8, !noalias !1565, !noundef !4
  %i.el = and i32 %i.ek, 2
  %.not7.i.i.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not7.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ad

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %._crit_edge.i.i.i
  %i.em = load i64, ptr %.pre.i.i.i, align 8, !range !489, !noalias !1565, !noundef !4
  %i.en = trunc nuw i64 %i.em to i1
  br i1 %i.en, label %bb.m, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !1565
  %i.eq = call i64 @llvm.usub.sat.i64(i64 %i.eg, i64 %i.ec) ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.ad, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.es = load i32, ptr %.sroa.010.sroa.0.sroa.4.0..sroa_idx, align 8, !range !329, !alias.scope !1562, !noalias !1563, !noundef !4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 60
  %i.ev = load i32, ptr %i.eu, align 4, !noalias !1565, !noundef !4
  %i.ew = and i32 %i.ev, 1
  %.not8.i.i.i.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not8.i.i.i.i.i, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ex = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 64
  %i.ey = load i32, ptr %i.ex, align 8, !noalias !1565, !noundef !4
  %i.ez = and i32 %i.ey, 2
  %.not9.i.i.i.i.i = icmp eq i32 %i.ez, 0
  br i1 %.not9.i.i.i.i.i, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !range !489, !noalias !1565, !noundef !4
  %i.fc = trunc nuw i64 %i.fb to i1
  br i1 %i.fc, label %_RNvMs4_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i

_RNvMs4_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i: ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1565
  %i.ff = icmp ugt i64 %i.eq, %i.fe
  br i1 %i.ff, label %bb.ad, label %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i

_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %_RNvMs4_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, %bb.q, %bb.p, %bb.o, %._crit_edge.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i67, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !1556, !nonnull !4, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.i.i.i67, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !1556, !nonnull !4, !align !24, !noundef !4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !range !25, !invariant.load !4, !noalias !1556
  %i.fm = add nsw i64 %i.fl, -1
  %i.fn = and i64 %i.fm, -16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.fr = load ptr, ptr %i.fq, align 8, !invariant.load !4, !noalias !1556, !nonnull !4
  call void %i.fr(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %i.fp, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.010.sroa.0.sroa.4.0..sroa_idx) #29, !noalias !1566, !inline_history !1567
  %.sroa.052.0.copyload.pr.i.i = load i64, ptr %i.e, align 8, !noalias !1568
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1568 ; 5 uses
  switch i64 %.sroa.052.0.copyload.pr.i.i, label %bb.s [
    i64 2, label %bb.r
    i64 0, label %bb.ad
  ]

bb.r:                                             ; preds = %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  br label %bb.aa

bb.s:                                             ; preds = %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i
  store ptr %.sroa.6.0.copyload.i.i, ptr %i.f, align 8, !noalias !1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !1568
  %.cast.i.i = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64 ; 2 uses
  %i.fs = load i64, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !noalias !1568, !noundef !4 ; 6 uses
  %.not.i.i68 = icmp ugt i64 %i.fs, %.cast.i.i
  br i1 %.not.i.i68, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.v, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1572
  store i64 %i.fs, ptr %i.d, align 8, !noalias !1572
  store i64 %i.eg, ptr %i.ax, align 8, !noalias !1572
  %.not.i51.i.i = icmp ugt i64 %i.eg, %i.eh
  %i.ft = add i64 %i.eg, 1
  %.not8.i.i.i = icmp ugt i64 %i.fs, %i.ft
  %or.cond.i.i.i = or i1 %.not.i51.i.i, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %bb.u, label %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i, !prof !5

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1572
  store i64 %i.eh, ptr %i.c, align 8, !noalias !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1572
  store ptr %i.d, ptr %i.b, align 8, !noalias !1572
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCs5skpMncfVhl_14regex_automata4util6searchNtB5_4SpanNtNtCs6JMX4GRUq9U_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1572
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.fu, align 8, !noalias !1572
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !1572
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #27, !noalias !1573
  unreachable

_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %bb.t
  store i64 %i.fs, ptr %.sroa.010.sroa.0.sroa.4.sroa.5.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1574, !noalias !1566
  store i64 %i.eg, ptr %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1574, !noalias !1566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1572
  store i64 1, ptr %.sroa.010.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1575, !noalias !1566
  store i64 %i.fs, ptr %i.av, align 8, !alias.scope !1575, !noalias !1566
  %.sroa.419.i.sink.i.sroa.speculate.load._RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i = load i64, ptr %i.as, align 8, !noalias !1542
  br label %bb.ab

bb.v:                                             ; preds = %bb.s
  %i.fv = load i64, ptr %.sroa.010.sroa.0.sroa.2.0..sroa_idx, align 8, !range !489, !alias.scope !1575, !noalias !1566, !noundef !4
  %i.fw = trunc nuw i64 %i.fv to i1
  %i.fx = load i64, ptr %i.av, align 8, !alias.scope !1575, !noalias !1566
  %i.fy = icmp eq i64 %i.fs, %i.fx
  %or.cond.i.i = select i1 %i.fw, i1 %i.fy, i1 false, !prof !1576
  br i1 %or.cond.i.i, label %bb.w, label %bb.t, !prof !1576

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1568
  call void @_RINvMNtNtCs5skpMncfVhl_14regex_automata4util4iterNtB3_8Searcher30handle_overlapping_empty_matchNCNvXs6_NtNtB7_4meta5regexNtB1D_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0EB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.sroa.010.sroa.0.sroa.2.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ds, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #31, !noalias !1577
  %i.fz = load i64, ptr %i.g, align 8, !range !248, !noalias !1568, !noundef !4 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 2
  %i.gb = load ptr, ptr %i.aw, align 8, !noalias !1568 ; 3 uses
  br i1 %i.ga, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1568
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %.sroa.419.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.542.0..sroa_idx.i.i, align 8, !noalias !1568 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1568
  %i.gc = trunc nuw i64 %i.fz to i1
  br i1 %i.gc, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.gd = load i64, ptr %.sroa.010.sroa.0.sroa.4.sroa.6.0..sroa.010.sroa.0.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1575, !noalias !1566, !noundef !4
  call fastcc void @_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.010.sroa.0.sroa.4.0..sroa_idx, i64 noundef %.sroa.419.i.i.sroa.0.0.copyload, i64 noundef %i.gd) #29, !noalias !1577
  store i64 1, ptr %.sroa.010.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1575, !noalias !1566
  store i64 %.sroa.419.i.i.sroa.0.0.copyload, ptr %i.av, align 8, !alias.scope !1575, !noalias !1566
  %.pre = ptrtoint ptr %i.gb to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.r
  %.sroa.8.2.i = phi ptr [ %.sroa.6.0.copyload.i.i, %bb.r ], [ %i.gb, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1542
  store ptr %.sroa.8.2.i, ptr %i.i, align 8, !noalias !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1542
  store ptr %i.i, ptr %i.h, align 8, !noalias !1542
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsl_NtNtCs5skpMncfVhl_14regex_automata4util6searchNtB5_10MatchErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1542
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27, !noalias !1578
  unreachable

bb.ab:                                            ; preds = %bb.z, %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i
  %.pre-phi = phi i64 [ %.pre, %bb.z ], [ %.cast.i.i, %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i ] ; 8 uses
  %.sroa.419.i.sink.i.sroa.speculated = phi i64 [ %.sroa.419.i.i.sroa.0.0.copyload, %bb.z ], [ %.sroa.419.i.sink.i.sroa.speculate.load._RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i, %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i ] ; 19 uses
  %.sroa.8.2.ph.ph.i = phi ptr [ %i.gb, %bb.z ], [ %.sroa.6.0.copyload.i.i, %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanNtB3_4SpanECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1542
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1579
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1584
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1587
  %i.ge = call noundef dereferenceable_or_null(3) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1587 ; 6 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.ac, label %_RNvXCsgy7pbN39oAf_6uu_ptxNtB2_6ConfigNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #30, !noalias !1590
  unreachable

_RNvXCsgy7pbN39oAf_6uu_ptxNtB2_6ConfigNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit: ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ge, ptr noundef nonnull align 1 dereferenceable(3) @183, i64 3, i1 false), !noalias !1590
  br i1 %i.ay, label %bb.ak, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit

bb.ad:                                            ; preds = %bb.y, %bb.k, %bb.l, %bb.m, %_RNvMs4_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, %_RNCNvXs6_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next0Csgy7pbN39oAf_6uu_ptx.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1542
  call void @llvm.experimental.noalias.scope.decl(metadata !1591)
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  call void @llvm.experimental.noalias.scope.decl(metadata !1600)
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  %i.gg = load i64, ptr %i.l, align 8, !range !489, !alias.scope !1609, !noundef !4
  %i.gh = load ptr, ptr %i.at, align 8, !alias.scope !1609, !noundef !4 ; 6 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  store i64 1, ptr %i.l, align 8, !alias.scope !1609
  store ptr inttoptr (i64 2 to ptr), ptr %i.at, align 8, !alias.scope !1609
  %i.gj = trunc nuw i64 %i.gg to i1
  br i1 %i.gj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1609
  store i64 %i.gi, ptr %i.a, align 8, !noalias !1609
  %i.gk = icmp eq ptr %i.gh, inttoptr (i64 2 to ptr)
  br i1 %i.gk, label %bb.ai, label %bb.aj, !prof !52

bb.af:                                            ; preds = %bb.ad
  %i.gl = load i8, ptr %i.cl, align 8, !range !181, !alias.scope !1609, !noundef !4
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gn = load ptr, ptr %i.au, align 8, !alias.scope !1609, !nonnull !4, !align !24, !noundef !4
  call fastcc void @_RNvMs2_NtNtNtCs5skpMncfVhl_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs7tKScEop1B6_5alloc5boxed3BoxDINtNtNtCs6JMX4GRUq9U_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB3x_13RefUnwindSafeEL_EE9put_valueCsgy7pbN39oAf_6uu_ptx(ptr noundef nonnull align 8 %i.gn, ptr noalias noundef nonnull align 8 %i.gh) #29, !noalias !1609
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gh) ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex5CacheECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.gh) #28, !noalias !1610
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gh, i64 noundef 1400, i64 noundef 8) #28, !noalias !1610
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit

bb.ai:                                            ; preds = %bb.ae
  call void @_RINvNtCs6JMX4GRUq9U_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCs5skpMncfVhl_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #27, !noalias !1609
  unreachable

bb.aj:                                            ; preds = %bb.ae
  %i.go = load ptr, ptr %i.au, align 8, !alias.scope !1609, !nonnull !4, !align !24, !noundef !4
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  store atomic i64 %i.gi, ptr %i.gp release, align 8, !noalias !1609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1609
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string7MatchesECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.ag, %bb.ah, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.gq = add nuw nsw i64 %.sroa.04.0730, 1
  %i.gr = icmp eq ptr %i.cy, %i.cu
  br i1 %i.gr, label %.loopexit, label %bb.e

bb.ak:                                            ; preds = %_RNvXCsgy7pbN39oAf_6uu_ptxNtB2_6ConfigNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit
  %i.gs = load i16, ptr %i.s, align 1
  %i.gt = load i16, ptr %i.ge, align 1
  %i.gu = xor i16 %i.gs, %i.gt
  %i.gv = getelementptr i8, ptr %i.s, i64 2
  %i.gw = getelementptr i8, ptr %i.ge, i64 2
  %i.gx = load i8, ptr %i.gv, align 1
  %i.gy = load i8, ptr %i.gw, align 1
  %i.gz = zext i8 %i.gx to i16
  %i.ha = zext i8 %i.gy to i16
  %i.hb = xor i16 %i.gz, %i.ha
  %i.hc = or i16 %i.gu, %i.hb
  %i.hd = icmp ne i16 %i.hc, 0
  %i.he = zext i1 %i.hd to i32
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit80, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit: ; preds = %bb.ak, %_RNvXCsgy7pbN39oAf_6uu_ptxNtB2_6ConfigNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ge, i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1611
  br label %bb.ap

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit80: ; preds = %bb.ak
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ge, i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1616
  %i.hg = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.hh = load i64, ptr %i.db, align 8, !noundef !4 ; 4 uses
  %i.hi = icmp ult i64 %.sroa.419.i.sink.i.sroa.speculated, %.pre-phi
  %i.hj = icmp ugt i64 %.sroa.419.i.sink.i.sroa.speculated, %i.hh
  %or.cond.i58 = or i1 %i.hi, %i.hj
  br i1 %or.cond.i58, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread349, label %bb.al, !prof !1621

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit80
  %i.hk = icmp eq i64 %i.hh, %.pre-phi
  br i1 %i.hk, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hl = icmp eq ptr %.sroa.8.2.ph.ph.i, null
  br i1 %i.hl, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.ao, %bb.am
  %i.hm = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %i.hh
  br i1 %i.hm, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60

bb.ao:                                            ; preds = %bb.am
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pre-phi
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !1622, !noundef !4
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.an, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread349, !prof !1625

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60: ; preds = %bb.an
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.419.i.sink.i.sroa.speculated
  %i.hr = load i8, ptr %i.hq, align 1, !alias.scope !1622, !noundef !4
  %i.hs = icmp sgt i8 %i.hr, -65
  br i1 %i.hs, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread349, !prof !894

bb.ap:                                            ; preds = %bb.au, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit
  %.sroa.051.0 = phi i64 [ %i.jr, %bb.au ], [ %.pre-phi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit ] ; 13 uses
  br i1 %i.bb, label %bb.ba, label %bb.av

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread349: ; preds = %bb.ao, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgy7pbN39oAf_6uu_ptx6ConfigEBD_.exit80, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hh, i64 noundef %.pre-phi, i64 noundef %.sroa.419.i.sink.i.sroa.speculated, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread: ; preds = %bb.an, %bb.al, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.419.i.sink.i.sroa.speculated ; 4 uses
  %i.hu = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %.pre-phi
  br i1 %i.hu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, label %.lr.ph.i.i.i.preheader

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge: ; preds = %bb.at, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread, %bb.bm, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104, %bb.ba
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit60.thread
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.pre-phi
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.at
  %i.hw = phi i64 [ %i.jl, %bb.at ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.hx = phi ptr [ %i.jh, %bb.at ], [ %i.hv, %.lr.ph.i.i.i.preheader ] ; 6 uses
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 1 ; 3 uses
  %i.ia = load i8, ptr %i.hx, align 1, !alias.scope !1626, !noalias !1629, !noundef !4 ; 5 uses
  %i.ib = icmp sgt i8 %i.ia, -1
  br i1 %i.ib, label %bb.aq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ic = and i8 %i.ia, 31
  %i.id = zext nneg i8 %i.ic to i32               ; 3 uses
  %i.ie = icmp ne ptr %i.hz, %i.ht
  call void @llvm.assume(i1 %i.ie)
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 2 ; 3 uses
  %i.ig = load i8, ptr %i.hz, align 1, !alias.scope !1626, !noalias !1629, !noundef !4
  %i.ih = shl nuw nsw i32 %i.id, 6
  %i.ii = and i8 %i.ig, 63
  %i.ij = zext nneg i8 %i.ii to i32               ; 2 uses
  %i.ik = or disjoint i32 %i.ih, %i.ij
  %i.il = icmp samesign ugt i8 %i.ia, -33
  br i1 %i.il, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.i.i
  %i.im = zext nneg i8 %i.ia to i32
  br label %bb.ar

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i
  %i.in = icmp ne ptr %i.if, %i.ht
  call void @llvm.assume(i1 %i.in)
  %i.io = getelementptr inbounds nuw i8, ptr %i.hx, i64 3 ; 3 uses
  %i.ip = load i8, ptr %i.if, align 1, !alias.scope !1626, !noalias !1629, !noundef !4
  %i.iq = shl nuw nsw i32 %i.ij, 6
  %i.ir = and i8 %i.ip, 63
  %i.is = zext nneg i8 %i.ir to i32
  %i.it = or disjoint i32 %i.iq, %i.is            ; 2 uses
  %i.iu = shl nuw nsw i32 %i.id, 12
  %i.iv = or disjoint i32 %i.it, %i.iu
  %i.iw = icmp samesign ugt i8 %i.ia, -17
  br i1 %i.iw, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i, label %bb.ar

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i
  %i.ix = icmp ne ptr %i.io, %i.ht
  call void @llvm.assume(i1 %i.ix)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.iz = load i8, ptr %i.io, align 1, !alias.scope !1626, !noalias !1629, !noundef !4
  %i.ja = shl nuw nsw i32 %i.id, 18
  %i.jb = and i32 %i.ja, 1835008
  %i.jc = shl nuw nsw i32 %i.it, 6
  %i.jd = and i8 %i.iz, 63
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = or disjoint i32 %i.jc, %i.je
  %i.jg = or disjoint i32 %i.jf, %i.jb
  br label %bb.ar

bb.ar:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i, %bb.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i
  %i.jh = phi ptr [ %i.io, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i ], [ %i.iy, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i ], [ %i.if, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i ], [ %i.hz, %bb.aq ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.iv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit14.i.i.i.i.i.i ], [ %i.jg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit16.i.i.i.i.i.i ], [ %i.ik, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgy7pbN39oAf_6uu_ptx.exit12.i.i.i.i.i.i ], [ %i.im, %bb.aq ] ; 4 uses
  %i.ji = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ji)
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.hw, %i.hy
  %i.jl = add i64 %i.jk, %i.jj
  %i.jm = and i32 %.sroa.4.0.i.ph.i.i.i.i.i, 2097119
  %i.jn = add nsw i32 %i.jm, -65
  %or.cond3.i.i.i.i.i.i = icmp ult i32 %i.jn, 26
  br i1 %or.cond3.i.i.i.i.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 170
  br i1 %i.jo, label %bb.at, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNCNvCsgy7pbN39oAf_6uu_ptx15create_word_set0NtB5_11MultiCharEq7matchesBI_.exit.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNCNvCsgy7pbN39oAf_6uu_ptx15create_word_set0NtB5_11MultiCharEq7matchesBI_.exit.i.i.i.i: ; preds = %bb.as
  %i.jp = call noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i) #31, !noalias !1643
  br i1 %i.jp, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNCNvCsgy7pbN39oAf_6uu_ptx15create_word_set0NtB5_11MultiCharEq7matchesBI_.exit.i.i.i.i, %bb.as
  %i.jq = icmp eq ptr %i.jh, %i.ht
  br i1 %i.jq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %bb.ar, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNCNvCsgy7pbN39oAf_6uu_ptx15create_word_set0NtB5_11MultiCharEq7matchesBI_.exit.i.i.i.i
  %i.jr = add i64 %i.hw, %.pre-phi
  br label %bb.ap

bb.av:                                            ; preds = %bb.ba, %bb.ap
  %i.js = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.jt = load i64, ptr %i.db, align 8, !noundef !4 ; 4 uses
  %i.ju = icmp ugt i64 %.sroa.051.0, %.sroa.419.i.sink.i.sroa.speculated
  %i.jv = icmp ugt i64 %.sroa.419.i.sink.i.sroa.speculated, %i.jt
  %or.cond.i = or i1 %i.ju, %i.jv
  br i1 %or.cond.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread354, label %bb.aw, !prof !1621

bb.aw:                                            ; preds = %bb.av
  %i.jw = icmp eq i64 %.sroa.051.0, %i.jt
  br i1 %i.jw, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jx = icmp eq i64 %.sroa.051.0, 0
  br i1 %i.jx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %i.jy = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %i.jt
  br i1 %i.jy, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit

bb.az:                                            ; preds = %bb.ax
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sroa.051.0
  %i.ka = load i8, ptr %i.jz, align 1, !alias.scope !1644, !noundef !4
  %i.kb = icmp sgt i8 %i.ka, -65
  br i1 %i.kb, label %bb.ay, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread354, !prof !1625

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit: ; preds = %bb.ay
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sroa.419.i.sink.i.sroa.speculated
  %i.kd = load i8, ptr %i.kc, align 1, !alias.scope !1644, !noundef !4
  %i.ke = icmp sgt i8 %i.kd, -65
  br i1 %i.ke, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread354, !prof !894

bb.ba:                                            ; preds = %bb.ap
  %i.kf = icmp eq i64 %.sroa.051.0, %.sroa.049.0
  %i.kg = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %.sroa.050.0
  %or.cond = and i1 %i.kg, %i.kf
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.backedge, label %bb.av

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread354: ; preds = %bb.az, %bb.av, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.js, i64 noundef %i.jt, i64 noundef %.sroa.051.0, i64 noundef %.sroa.419.i.sink.i.sroa.speculated, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #27
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread: ; preds = %bb.ay, %bb.aw, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit
  %i.kh = sub nuw i64 %.sroa.419.i.sink.i.sroa.speculated, %.sroa.051.0 ; 26 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.js, i64 %.sroa.051.0
  %.not.i81 = icmp slt i64 %i.kh, 0
  br i1 %.not.i81, label %bb.bc, label %bb.bb, !prof !55

bb.bb:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread
  %i.kj = icmp eq i64 %i.kh, 0                    ; 3 uses
  br i1 %i.kj, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.bb
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1647
  %i.kk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.kh, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1647 ; 3 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4271.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4271.0.ph, i64 %i.kh) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361: ; preds = %bb.bb, %bb.bd
  %i.km = phi ptr [ %i.kk, %bb.bd ], [ inttoptr (i64 1 to ptr), %bb.bb ] ; 14 uses
  br i1 %i.be, label %bb.be, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit

bb.bd:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kk, ptr nonnull align 1 %i.ki, i64 %i.kh, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361

_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361
  br i1 %brmerge.not, label %bb.bn, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread

bb.be:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgy7pbN39oAf_6uu_ptx.exit.thread361
  br i1 %i.bi, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kn = and i64 %i.kh, 7                        ; 6 uses
  %i.ko = and i64 %i.kh, 9223372036854775800      ; 2 uses
  %.not373 = icmp eq i64 %i.ko, 0
  br i1 %.not373, label %._crit_edge.i164, label %.lr.ph.i157

._crit_edge.i164.loopexit:                        ; preds = %.lr.ph.i157
  %i.kp = and i64 %i.kh, 9223372036854775800
  br label %._crit_edge.i164

._crit_edge.i164:                                 ; preds = %._crit_edge.i164.loopexit, %bb.bf
  %.sroa.32294.4 = phi i64 [ %i.bo, %bb.bf ], [ %i.me, %._crit_edge.i164.loopexit ] ; 3 uses
  %.sroa.22289.4 = phi i64 [ %i.bm, %bb.bf ], [ %i.mc, %._crit_edge.i164.loopexit ] ; 5 uses
  %.sroa.12.4 = phi i64 [ %i.bn, %bb.bf ], [ %i.mf, %._crit_edge.i164.loopexit ] ; 3 uses
  %.sroa.0280.4 = phi i64 [ %i.bl, %bb.bf ], [ %i.mg, %._crit_edge.i164.loopexit ] ; 3 uses
  %.sroa.0.1.lcssa.i147 = phi i64 [ 0, %bb.bf ], [ %i.kp, %._crit_edge.i164.loopexit ] ; 3 uses
  %i.kq = icmp samesign ugt i64 %i.kn, 3
  br i1 %i.kq, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i164
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.0.1.lcssa.i147
  %.sroa.014.0.copyload.i16.i156 = load i32, ptr %i.kr, align 1, !alias.scope !1650, !noalias !1655
  %i.ks = zext i32 %.sroa.014.0.copyload.i16.i156 to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i164
  %.sroa.03.0.i10.i148 = phi i64 [ 4, %bb.bg ], [ 0, %._crit_edge.i164 ] ; 5 uses
  %.sroa.0.0.i11.i149 = phi i64 [ %i.ks, %bb.bg ], [ 0, %._crit_edge.i164 ] ; 2 uses
  %i.kt = or disjoint i64 %.sroa.03.0.i10.i148, 1
  %i.ku = icmp samesign ult i64 %i.kt, %i.kn
  br i1 %i.ku, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.kv = getelementptr i8, ptr %i.km, i64 %.sroa.0.1.lcssa.i147
  %i.kw = getelementptr i8, ptr %i.kv, i64 %.sroa.03.0.i10.i148
  %.sroa.015.0.copyload.i15.i155 = load i16, ptr %i.kw, align 1, !alias.scope !1650, !noalias !1655
  %i.kx = zext i16 %.sroa.015.0.copyload.i15.i155 to i64
  %i.ky = shl nuw nsw i64 %.sroa.03.0.i10.i148, 3
  %i.kz = shl nuw nsw i64 %i.kx, %i.ky
  %i.la = or i64 %i.kz, %.sroa.0.0.i11.i149
  %i.lb = or disjoint i64 %.sroa.03.0.i10.i148, 2
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sroa.03.1.i12.i150 = phi i64 [ %i.lb, %bb.bi ], [ %.sroa.03.0.i10.i148, %bb.bh ] ; 3 uses
  %.sroa.0.1.i13.i151 = phi i64 [ %i.la, %bb.bi ], [ %.sroa.0.0.i11.i149, %bb.bh ] ; 2 uses
  %i.lc = icmp samesign ult i64 %.sroa.03.1.i12.i150, %i.kn
  br i1 %i.lc, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.thread, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.thread: ; preds = %bb.bj
  %i.ld = add nuw nsw i64 %.sroa.03.1.i12.i150, %.sroa.0.1.lcssa.i147 ; 2 uses
  %i.le = icmp samesign ult i64 %i.ld, %i.kh
  call void @llvm.assume(i1 %i.le), !noalias !1661
  %i.lf = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ld
  %i.lg = load i8, ptr %i.lf, align 1, !alias.scope !1650, !noalias !1655, !noundef !4
  %i.lh = zext i8 %i.lg to i64
  %i.li = shl nuw nsw i64 %.sroa.03.1.i12.i150, 3
  %i.lj = shl nuw nsw i64 %i.lh, %i.li
  %i.lk = or i64 %i.lj, %.sroa.0.1.i13.i151
  %i.ll = add nuw i64 %i.kh, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i

.lr.ph.i157:                                      ; preds = %bb.bf, %.lr.ph.i157
  %i.lm = phi i64 [ %i.mf, %.lr.ph.i157 ], [ %i.bn, %bb.bf ]
  %i.ln = phi i64 [ %i.mc, %.lr.ph.i157 ], [ %i.bm, %bb.bf ] ; 3 uses
  %i.lo = phi i64 [ %i.me, %.lr.ph.i157 ], [ %i.bo, %bb.bf ]
  %.sroa.0.118.i162 = phi i64 [ %i.mh, %.lr.ph.i157 ], [ 0, %bb.bf ] ; 2 uses
  %i.lp = phi i64 [ %i.mg, %.lr.ph.i157 ], [ %i.bl, %bb.bf ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.0.118.i162
  %.sroa.07.0.copyload.i163 = load i64, ptr %i.lq, align 1, !alias.scope !1662, !noalias !1655 ; 2 uses
  %i.lr = xor i64 %.sroa.07.0.copyload.i163, %i.lo ; 3 uses
  %i.ls = add i64 %i.lp, %i.ln                    ; 3 uses
  %i.lt = add i64 %i.lr, %i.lm                    ; 2 uses
  %i.lu = call noundef i64 @llvm.fshl.i64(i64 %i.ln, i64 %i.ln, i64 13)
  %i.lv = xor i64 %i.ls, %i.lu                    ; 3 uses
  %i.lw = call noundef i64 @llvm.fshl.i64(i64 %i.lr, i64 %i.lr, i64 16)
  %i.lx = xor i64 %i.lt, %i.lw                    ; 3 uses
  %i.ly = call noundef i64 @llvm.fshl.i64(i64 %i.ls, i64 %i.ls, i64 32)
  %i.lz = add i64 %i.lt, %i.lv                    ; 3 uses
  %i.ma = add i64 %i.lx, %i.ly                    ; 2 uses
  %i.mb = call noundef i64 @llvm.fshl.i64(i64 %i.lv, i64 %i.lv, i64 17)
  %i.mc = xor i64 %i.lz, %i.mb                    ; 2 uses
  %i.md = call noundef i64 @llvm.fshl.i64(i64 %i.lx, i64 %i.lx, i64 21)
  %i.me = xor i64 %i.md, %i.ma                    ; 2 uses
  %i.mf = call noundef i64 @llvm.fshl.i64(i64 %i.lz, i64 %i.lz, i64 32) ; 2 uses
  %i.mg = xor i64 %i.ma, %.sroa.07.0.copyload.i163 ; 2 uses
  %i.mh = add nuw nsw i64 %.sroa.0.118.i162, 8    ; 2 uses
  %i.mi = icmp samesign ult i64 %i.mh, %i.ko
  br i1 %i.mi, label %.lr.ph.i157, label %._crit_edge.i164.loopexit

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166: ; preds = %bb.bj
  %i.mj = add nuw i64 %i.kh, 1                    ; 2 uses
  %i.mk = icmp eq i64 %i.kn, 0
  br i1 %i.mk, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit, label %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.thread
  %i.ml = phi i64 [ %i.ll, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.thread ], [ %i.mj, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ] ; 2 uses
  %.sroa.0.2.i14.i153368 = phi i64 [ %i.lk, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166.thread ], [ %.sroa.0.1.i13.i151, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %i.mm = shl nuw nsw i64 %i.kn, 3
  %i.mn = shl nuw i64 255, %i.mm
  %i.mo = or i64 %i.mn, %.sroa.0.2.i14.i153368    ; 3 uses
  %.not374 = icmp eq i64 %i.kn, 7
  br i1 %.not374, label %.thread, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit

.thread:                                          ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i
  %i.mp = xor i64 %i.mo, %.sroa.32294.4           ; 3 uses
  %i.mq = add i64 %.sroa.0280.4, %.sroa.22289.4   ; 3 uses
  %i.mr = add i64 %i.mp, %.sroa.12.4              ; 2 uses
  %i.ms = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22289.4, i64 %.sroa.22289.4, i64 13)
  %i.mt = xor i64 %i.mq, %i.ms                    ; 3 uses
  %i.mu = call noundef i64 @llvm.fshl.i64(i64 %i.mp, i64 %i.mp, i64 16)
  %i.mv = xor i64 %i.mr, %i.mu                    ; 3 uses
  %i.mw = call noundef i64 @llvm.fshl.i64(i64 %i.mq, i64 %i.mq, i64 32)
  %i.mx = add i64 %i.mr, %i.mt                    ; 3 uses
  %i.my = add i64 %i.mv, %i.mw                    ; 2 uses
  %i.mz = call noundef i64 @llvm.fshl.i64(i64 %i.mt, i64 %i.mt, i64 17)
  %i.na = xor i64 %i.mx, %i.mz
  %i.nb = call noundef i64 @llvm.fshl.i64(i64 %i.mv, i64 %i.mv, i64 21)
  %i.nc = xor i64 %i.nb, %i.my
  %i.nd = call noundef i64 @llvm.fshl.i64(i64 %i.mx, i64 %i.mx, i64 32)
  %i.ne = xor i64 %i.my, %i.mo
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit

_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166, %.thread, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i
  %i.nf = phi i64 [ %i.ml, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %i.ml, %.thread ], [ %i.mj, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %.sroa.50.0 = phi i64 [ %i.mo, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ 0, %.thread ], [ 255, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %.sroa.32294.2 = phi i64 [ %.sroa.32294.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %i.nc, %.thread ], [ %.sroa.32294.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %.sroa.22289.2 = phi i64 [ %.sroa.22289.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %i.na, %.thread ], [ %.sroa.22289.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ] ; 3 uses
  %.sroa.12.2 = phi i64 [ %.sroa.12.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %i.nd, %.thread ], [ %.sroa.12.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %.sroa.0280.2 = phi i64 [ %.sroa.0280.4, %_RNvNtNtCs6JMX4GRUq9U_4core4hash3sip9u8to64_le.exit.i ], [ %i.ne, %.thread ], [ %.sroa.0280.4, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit166 ]
  %i.ng = shl i64 %i.nf, 56
  %i.nh = or i64 %i.ng, %.sroa.50.0               ; 2 uses
  %i.ni = xor i64 %i.nh, %.sroa.32294.2           ; 3 uses
  %i.nj = add i64 %.sroa.0280.2, %.sroa.22289.2   ; 3 uses
  %i.nk = add i64 %.sroa.12.2, %i.ni              ; 2 uses
  %i.nl = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22289.2, i64 %.sroa.22289.2, i64 13)
  %i.nm = xor i64 %i.nj, %i.nl                    ; 3 uses
  %i.nn = call noundef i64 @llvm.fshl.i64(i64 %i.ni, i64 %i.ni, i64 16)
  %i.no = xor i64 %i.nk, %i.nn                    ; 3 uses
  %i.np = call noundef i64 @llvm.fshl.i64(i64 %i.nj, i64 %i.nj, i64 32)
  %i.nq = add i64 %i.nm, %i.nk                    ; 3 uses
  %i.nr = add i64 %i.np, %i.no                    ; 2 uses
  %i.ns = call noundef i64 @llvm.fshl.i64(i64 %i.nm, i64 %i.nm, i64 17)
  %i.nt = xor i64 %i.nq, %i.ns                    ; 3 uses
  %i.nu = call noundef i64 @llvm.fshl.i64(i64 %i.no, i64 %i.no, i64 21)
  %i.nv = xor i64 %i.nr, %i.nu                    ; 3 uses
  %i.nw = call noundef i64 @llvm.fshl.i64(i64 %i.nq, i64 %i.nq, i64 32)
  %i.nx = xor i64 %i.nr, %i.nh
  %i.ny = xor i64 %i.nw, 255
  %i.nz = add i64 %i.nx, %i.nt                    ; 3 uses
  %i.oa = add i64 %i.ny, %i.nv                    ; 2 uses
  %i.ob = call noundef i64 @llvm.fshl.i64(i64 %i.nt, i64 %i.nt, i64 13)
  %i.oc = xor i64 %i.nz, %i.ob                    ; 3 uses
  %i.od = call noundef i64 @llvm.fshl.i64(i64 %i.nv, i64 %i.nv, i64 16)
  %i.oe = xor i64 %i.oa, %i.od                    ; 3 uses
  %i.of = call noundef i64 @llvm.fshl.i64(i64 %i.nz, i64 %i.nz, i64 32)
  %i.og = add i64 %i.oc, %i.oa                    ; 3 uses
  %i.oh = add i64 %i.oe, %i.of                    ; 2 uses
  %i.oi = call noundef i64 @llvm.fshl.i64(i64 %i.oc, i64 %i.oc, i64 17)
  %i.oj = xor i64 %i.og, %i.oi                    ; 3 uses
  %i.ok = call noundef i64 @llvm.fshl.i64(i64 %i.oe, i64 %i.oe, i64 21)
  %i.ol = xor i64 %i.ok, %i.oh                    ; 3 uses
  %i.om = call noundef i64 @llvm.fshl.i64(i64 %i.og, i64 %i.og, i64 32)
  %i.on = add i64 %i.oj, %i.oh                    ; 3 uses
  %i.oo = add i64 %i.ol, %i.om                    ; 2 uses
  %i.op = call noundef i64 @llvm.fshl.i64(i64 %i.oj, i64 %i.oj, i64 13)
  %i.oq = xor i64 %i.op, %i.on                    ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvCsgy7pbN39oAf_6uu_ptx15create_word_set:bb.a
  %i.tf = shl i64 %i.te, 56
  %i.tg = or i64 %.sroa.50333.0, %i.tf            ; 2 uses
  %i.th = xor i64 %i.tg, %.sroa.32323.2           ; 3 uses
  %i.ti = add i64 %.sroa.0308.2, %.sroa.22318.2   ; 3 uses
  %i.tj = add i64 %i.th, %.sroa.12313.2           ; 2 uses
  %i.tk = call noundef i64 @llvm.fshl.i64(i64 %.sroa.22318.2, i64 %.sroa.22318.2, i64 13)
  %i.tl = xor i64 %i.ti, %i.tk                    ; 3 uses
  %i.tm = call noundef i64 @llvm.fshl.i64(i64 %i.th, i64 %i.th, i64 16)
  %i.tn = xor i64 %i.tm, %i.tj                    ; 3 uses
  %i.to = call noundef i64 @llvm.fshl.i64(i64 %i.ti, i64 %i.ti, i64 32)
  %i.tp = add i64 %i.tj, %i.tl                    ; 3 uses
  %i.tq = add i64 %i.tn, %i.to                    ; 2 uses
  %i.tr = call noundef i64 @llvm.fshl.i64(i64 %i.tl, i64 %i.tl, i64 17)
  %i.ts = xor i64 %i.tp, %i.tr                    ; 3 uses
  %i.tt = call noundef i64 @llvm.fshl.i64(i64 %i.tn, i64 %i.tn, i64 21)
  %i.tu = xor i64 %i.tt, %i.tq                    ; 3 uses
  %i.tv = call noundef i64 @llvm.fshl.i64(i64 %i.tp, i64 %i.tp, i64 32)
  %i.tw = xor i64 %i.tq, %i.tg
  %i.tx = xor i64 %i.tv, 255
  %i.ty = add i64 %i.tw, %i.ts                    ; 3 uses
  %i.tz = add i64 %i.tu, %i.tx                    ; 2 uses
  %i.ua = call noundef i64 @llvm.fshl.i64(i64 %i.ts, i64 %i.ts, i64 13)
  %i.ub = xor i64 %i.ty, %i.ua                    ; 3 uses
  %i.uc = call noundef i64 @llvm.fshl.i64(i64 %i.tu, i64 %i.tu, i64 16)
  %i.ud = xor i64 %i.uc, %i.tz                    ; 3 uses
  %i.ue = call noundef i64 @llvm.fshl.i64(i64 %i.ty, i64 %i.ty, i64 32)
  %i.uf = add i64 %i.ub, %i.tz                    ; 3 uses
  %i.ug = add i64 %i.ud, %i.ue                    ; 2 uses
  %i.uh = call noundef i64 @llvm.fshl.i64(i64 %i.ub, i64 %i.ub, i64 17)
  %i.ui = xor i64 %i.uf, %i.uh                    ; 3 uses
  %i.uj = call noundef i64 @llvm.fshl.i64(i64 %i.ud, i64 %i.ud, i64 21)
  %i.uk = xor i64 %i.uj, %i.ug                    ; 3 uses
  %i.ul = call noundef i64 @llvm.fshl.i64(i64 %i.uf, i64 %i.uf, i64 32)
  %i.um = add i64 %i.ui, %i.ug                    ; 3 uses
  %i.un = add i64 %i.uk, %i.ul                    ; 2 uses
  %i.uo = call noundef i64 @llvm.fshl.i64(i64 %i.ui, i64 %i.ui, i64 13)
  %i.up = xor i64 %i.uo, %i.um                    ; 3 uses
  %i.uq = call noundef i64 @llvm.fshl.i64(i64 %i.uk, i64 %i.uk, i64 16)
  %i.ur = xor i64 %i.uq, %i.un                    ; 3 uses
  %i.us = call noundef i64 @llvm.fshl.i64(i64 %i.um, i64 %i.um, i64 32)
  %i.ut = add i64 %i.up, %i.un                    ; 3 uses
  %i.uu = add i64 %i.ur, %i.us                    ; 2 uses
  %i.uv = call noundef i64 @llvm.fshl.i64(i64 %i.up, i64 %i.up, i64 17)
  %i.uw = xor i64 %i.uv, %i.ut                    ; 3 uses
  %i.ux = call noundef i64 @llvm.fshl.i64(i64 %i.ur, i64 %i.ur, i64 21)
  %i.uy = xor i64 %i.ux, %i.uu                    ; 3 uses
  %i.uz = call noundef i64 @llvm.fshl.i64(i64 %i.ut, i64 %i.ut, i64 32)
  %i.va = add i64 %i.uw, %i.uu
  %i.vb = add i64 %i.uy, %i.uz                    ; 2 uses
  %i.vc = call noundef i64 @llvm.fshl.i64(i64 %i.uw, i64 %i.uw, i64 13)
  %i.vd = xor i64 %i.vc, %i.va                    ; 3 uses
  %i.ve = call noundef i64 @llvm.fshl.i64(i64 %i.uy, i64 %i.uy, i64 16)
  %i.vf = xor i64 %i.ve, %i.vb                    ; 2 uses
  %i.vg = add i64 %i.vd, %i.vb                    ; 3 uses
  %i.vh = call noundef i64 @llvm.fshl.i64(i64 %i.vd, i64 %i.vd, i64 17)
  %i.vi = call noundef i64 @llvm.fshl.i64(i64 %i.vf, i64 %i.vf, i64 21)
  %i.vj = call noundef i64 @llvm.fshl.i64(i64 %i.vg, i64 %i.vg, i64 32)
  %i.vk = xor i64 %i.vi, %i.vh
  %i.vl = xor i64 %i.vk, %i.vj
  %i.vm = xor i64 %i.vl, %i.vg                    ; 2 uses
  %i.vn = lshr i64 %i.vm, 57
  %i.vo = trunc nuw nsw i64 %i.vn to i8
  %i.vp = insertelement <16 x i8> poison, i8 %i.vo, i64 0
  %i.vq = shufflevector <16 x i8> %i.vp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195
  %.sroa.9.0.i.i.i89 = phi i64 [ 0, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195 ], [ %i.wj, %bb.bt ]
  %.pn.i.i90 = phi i64 [ %i.vm, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgy7pbN39oAf_6uu_ptx.exit195 ], [ %i.wk, %bb.bt ]
  %.sroa.01.0.i.i.i91 = and i64 %.pn.i.i90, %i.cg ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.01.0.i.i.i91
  %.sroa.0.0.copyload.i25.i.i92 = load <16 x i8>, ptr %i.vr, align 1, !noalias !1691 ; 2 uses
  %i.vs = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i92, %i.vq
  %i.vt = bitcast <16 x i1> %i.vs to i16          ; 2 uses
  %.not.i.not31.i.i93 = icmp eq i16 %i.vt, 0
  br i1 %.not.i.not31.i.i93, label %._crit_edge.i.i99, label %.lr.ph.i.i94

.lr.ph.i.i94:                                     ; preds = %bb.bs, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97
  %.sroa.06.0.i32.i.i95 = phi i16 [ %i.wi, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97 ], [ %i.vt, %bb.bs ] ; 3 uses
  %i.vu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i95, i1 true)
  %i.vv = zext nneg i16 %i.vu to i64
  %i.vw = add i64 %.sroa.01.0.i.i.i91, %i.vv
  %i.vx = and i64 %i.vw, %i.cg
  %i.vy = sub nsw i64 0, %i.vx
  %i.vz = getelementptr inbounds [24 x i8], ptr %i.ch, i64 %i.vy ; 2 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 -8
  %.val3.i.i.i96 = load i64, ptr %i.wa, align 8, !noalias !1700, !noundef !4
  %i.wb = icmp eq i64 %i.kh, %.val3.i.i.i96
  br i1 %i.wb, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i101, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97, !prof !1625

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i101: ; preds = %.lr.ph.i.i94
  %i.wc = getelementptr i8, ptr %i.vz, i64 -16
  %.val2.i.i.i102 = load ptr, ptr %i.wc, align 8, !noalias !1700, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i103 = call i32 @bcmp(ptr nonnull readonly %i.km, ptr nonnull readonly %.val2.i.i.i102, i64 %i.kh), !noalias !1700
  %i.wd = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i103, 0
  br i1 %i.wd, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97, !prof !894

._crit_edge.i.i99:                                ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97, %bb.bs
  %i.we = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i92, splat (i8 -1)
  %i.wf = bitcast <16 x i1> %i.we to i16
  %i.wg = icmp eq i16 %i.wf, 0
  br i1 %i.wg, label %bb.bt, label %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread, !prof !52

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.thread.i.i97: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTNtNtCs7tKScEop1B6_5alloc6string6StringuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i101, %.lr.ph.i.i94
  %i.wh = add i16 %.sroa.06.0.i32.i.i95, -1
  %i.wi = and i16 %i.wh, %.sroa.06.0.i32.i.i95    ; 2 uses
  %.not.i.not.i.i98 = icmp eq i16 %i.wi, 0
  br i1 %.not.i.not.i.i98, label %._crit_edge.i.i99, label %.lr.ph.i.i94

bb.bt:                                            ; preds = %._crit_edge.i.i99
  %i.wj = add i64 %.sroa.9.0.i.i.i89, 16          ; 2 uses
  %i.wk = add i64 %.sroa.01.0.i.i.i91, %i.wj
  br label %bb.bs

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread
  %.sroa.16236.0 = phi i64 [ %.sroa.16236.0.copyload238, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114 ], [ %i.kh, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread ] ; 5 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload235, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114 ], [ %i.km, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread ] ; 5 uses
  %.sroa.0232.0 = phi i64 [ %.sroa.0232.0.copyload233, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114 ], [ %i.kh, %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread ] ; 7 uses
  %.sroa.0.0.val = load ptr, ptr %i.cw, align 8, !nonnull !4, !noundef !4
  %.sroa.0.0.val61 = load i64, ptr %i.cx, align 8, !noundef !4 ; 13 uses
  %i.wl = icmp eq i64 %.sroa.0.0.val61, 0         ; 2 uses
  br i1 %i.wl, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.bu
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1703
  %i.wm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.val61, i64 noundef range(i64 1, 9) 1) #28, !noalias !1703 ; 3 uses
  %i.wn = icmp eq ptr %i.wm, null
  br i1 %i.wn, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val61) #30, !noalias !1711
  unreachable

bb.bw:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wm, ptr nonnull readonly align 1 %.sroa.0.0.val, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val61, i1 false), !noalias !1712
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.bu, %bb.bw
  %.sroa.5278.0 = phi ptr [ %i.wm, %bb.bw ], [ inttoptr (i64 1 to ptr), %bb.bu ] ; 5 uses
  br i1 %.not.i.i105, label %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.thread69.i, label %.preheader

.preheader:                                       ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit, %bb.ce
  %.sroa.3.0.i.i.i = phi i64 [ %i.yi, %bb.ce ], [ %.sroa.7.2.ph.ph, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit ] ; 2 uses
  %.sroa.0.0.i.i.i106 = phi ptr [ %i.yh, %bb.ce ], [ %.sroa.0.2.ph.ph, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit ] ; 11 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i106, i64 890
  %i.wp = load i16, ptr %i.wo, align 2, !noalias !1713, !noundef !4 ; 4 uses
  %i.wq = zext i16 %i.wp to i64                   ; 5 uses
  %.idx1477 = mul nuw nsw i64 %i.wq, 80
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i106, i64 %.idx1477
  %i.ws = icmp eq i16 %i.wp, 0
  br i1 %i.ws, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i

bb.bx:                                            ; preds = %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i
  %i.wt = icmp eq ptr %i.wu, %i.wr
  br i1 %i.wt, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i: ; preds = %.preheader, %bb.bx
  %.sroa.0.01.i.i.i.i1474 = phi ptr [ %i.wu, %bb.bx ], [ %.sroa.0.0.i.i.i106, %.preheader ] ; 9 uses
  %.sroa.8.0.i.i.i.i1473 = phi i64 [ %i.wv, %bb.bx ], [ 0, %.preheader ] ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 80 ; 2 uses
  %i.wv = add nuw nsw i64 %.sroa.8.0.i.i.i.i1473, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8, !alias.scope !1726, !noalias !1729, !nonnull !4, !noundef !4
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 16
  %i.wz = load i64, ptr %i.wy, align 8, !alias.scope !1726, !noalias !1729, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.16236.0, i64 %i.wz)
  %i.xa = call i32 @memcmp(ptr nonnull %.sroa.8.0, ptr nonnull %i.wx, i64 %spec.store.select.i.i.i.i.i), !noalias !1731 ; 2 uses
  %i.xb = sext i32 %i.xa to i64
  %i.xc = icmp eq i32 %i.xa, 0
  %i.xd = sub i64 %.sroa.16236.0, %i.wz
  %spec.select.i.i.i.i.i = select i1 %i.xc, i64 %i.xd, i64 %i.xb ; 2 uses
  %i.xe = call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i, i64 0)
  %i.xf = icmp eq i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.xf, label %bb.by, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.by:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 48
  %i.xh = load i64, ptr %i.xg, align 8, !alias.scope !1726, !noalias !1729, !noundef !4 ; 2 uses
  %i.xi = call i8 @llvm.ucmp.i8.i64(i64 %i.dr, i64 %i.xh)
  %i.xj = icmp eq i64 %i.dr, %i.xh
  br i1 %i.xj, label %bb.bz, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 56
  %i.xl = load i64, ptr %i.xk, align 8, !alias.scope !1726, !noalias !1729, !noundef !4 ; 2 uses
  %i.xm = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.04.0730, i64 %i.xl)
  %i.xn = icmp eq i64 %.sroa.04.0730, %i.xl
  br i1 %i.xn, label %bb.ca, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 64
  %i.xp = load i64, ptr %i.xo, align 8, !alias.scope !1726, !noalias !1729, !noundef !4 ; 2 uses
  %i.xq = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.051.0, i64 %i.xp)
  %i.xr = icmp eq i64 %.sroa.051.0, %i.xp
  br i1 %i.xr, label %bb.cb, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 72
  %i.xt = load i64, ptr %i.xs, align 8, !alias.scope !1726, !noalias !1729, !noundef !4 ; 2 uses
  %i.xu = call i8 @llvm.ucmp.i8.i64(i64 %.sroa.419.i.sink.i.sroa.speculated, i64 %i.xt)
  %i.xv = icmp eq i64 %.sroa.419.i.sink.i.sroa.speculated, %i.xt
  br i1 %i.xv, label %bb.cc, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 32
  %.val18.i.i.i.i.i = load ptr, ptr %i.xw, align 8, !alias.scope !1726, !noalias !1729, !nonnull !4, !noundef !4
  %i.xx = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i1474, i64 40
  %.val19.i.i.i.i.i = load i64, ptr %i.xx, align 8, !alias.scope !1726, !noalias !1729, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.val61, i64 %.val19.i.i.i.i.i)
  %i.xy = call i32 @memcmp(ptr nonnull readonly %.sroa.5278.0, ptr nonnull readonly %.val18.i.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !noalias !1731 ; 2 uses
  %i.xz = sext i32 %i.xy to i64
  %i.ya = icmp eq i32 %i.xy, 0
  %i.yb = sub i64 %.sroa.0.0.val61, %.val19.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.ya, i64 %i.yb, i64 %i.xz
  %i.yc = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i.i.i, i64 0)
  br label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i

_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i
  %.sroa.0.0.i6.i.i.i.i = phi i8 [ %i.yc, %bb.cc ], [ %i.xu, %bb.cb ], [ %i.xq, %bb.ca ], [ %i.xm, %bb.bz ], [ %i.xi, %bb.by ], [ %i.xe, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefEENtNtNtB8_6traits8iterator8Iterator4nextB1z_.exit.i.i.i.i ]
  switch i8 %.sroa.0.0.i6.i.i.i.i, label %bb.cd [
    i8 -1, label %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i._crit_edge
    i8 0, label %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_EB1A_.exit.i.i
    i8 1, label %bb.bx
  ]

bb.cd:                                            ; preds = %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i
  unreachable

_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i._crit_edge: ; preds = %bb.bx, %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i, %.preheader
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.wq, %.preheader ], [ %i.wq, %bb.bx ], [ %.sroa.8.0.i.i.i.i1473, %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i ] ; 12 uses
  %i.yd = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.yd, label %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i._crit_edge
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i106, i64 896
  %i.yf = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  call void @llvm.assume(i1 %i.yf)
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %.sroa.4.0.i.ph.i.i.i
  %i.yh = load ptr, ptr %i.yg, align 8, !noalias !1732, !nonnull !4, !noundef !4
  %i.yi = add i64 %.sroa.3.0.i.i.i, -1
  br label %.preheader

_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_EB1A_.exit.i.i: ; preds = %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i
  %i.yj = icmp eq i64 %.sroa.0232.0, 0
  br i1 %i.yj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_EB1A_.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %.sroa.0232.0, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1733
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.i.i.i: ; preds = %bb.cf, %_RINvMs_NtNtNtCs7tKScEop1B6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB1i_14LeafOrInternalE11search_treeB1y_EB1A_.exit.i.i
  br i1 %i.wl, label %.outer.backedge, label %bb.cg

.outer.backedge:                                  ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.i.i.i, %bb.cg, %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.i, %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.thread69.i
  br label %.outer

bb.cg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5278.0, i64 noundef %.sroa.0.0.val61, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1738
  br label %.outer.backedge

_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.i: ; preds = %_RNvXsb_Csgy7pbN39oAf_6uu_ptxNtB5_7WordRefNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i.i.i.i._crit_edge
  %i.yk = icmp eq i64 %.sroa.0232.0, -1
  br i1 %i.yk, label %.outer.backedge, label %bb.ch

_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.thread69.i: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCsgy7pbN39oAf_6uu_ptx.exit
  %i.yl = icmp eq i64 %.sroa.0232.0, -1
  br i1 %i.yl, label %.outer.backedge, label %bb.dn

bb.ch:                                            ; preds = %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.i
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i106, i64 890 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.019.i.sroa.4.i.i.i)
  %i.yn = icmp ult i16 %i.wp, 11
  br i1 %i.yn, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yo = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 5
  br i1 %i.yo, label %bb.co, label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %.not.i.i.i.i.not.i = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, %i.wq
  br i1 %.not.i.i.i.i.not.i, label %bb.ck, label %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.yp = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i.i.i106, i64 %.sroa.4.0.i.ph.i.i.i ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 80
  %i.yr = sub nuw nsw i64 %i.wq, %.sroa.4.0.i.ph.i.i.i
  %i.ys = mul nuw nsw i64 %i.yr, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yq, ptr nonnull align 8 %i.yp, i64 %i.ys, i1 false), !alias.scope !1742, !noalias !1744
  br label %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i

_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i: ; preds = %bb.ck, %bb.cj
  %i.yt = add nuw nsw i16 %i.wp, 1
  %i.yu = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i.i.i106, i64 %.sroa.4.0.i.ph.i.i.i ; 10 uses
  store i64 %.sroa.0232.0, ptr %i.yu, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.6.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.6.0..sroa_idx33.i, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.737.0..sroa_idx38.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store i64 %.sroa.16236.0, ptr %.sroa.737.0..sroa_idx38.i, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.8.0..sroa_idx42.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  store i64 %.sroa.0.0.val61, ptr %.sroa.8.0..sroa_idx42.i, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.946.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  store ptr %.sroa.5278.0, ptr %.sroa.946.0..sroa_idx47.i, align 8, !alias.scope !1760, !noalias !1761
  %.sroa.1051.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  store i64 %.sroa.0.0.val61, ptr %.sroa.1051.0..sroa_idx52.i, align 8, !noalias !1762
  %.sroa.20251.40..sroa.1051.0..sroa_idx52.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 48
  store i64 %i.dr, ptr %.sroa.20251.40..sroa.1051.0..sroa_idx52.i.sroa_idx, align 8, !noalias !1762
  %.sroa.22.40..sroa.1051.0..sroa_idx52.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 56
  store i64 %.sroa.04.0730, ptr %.sroa.22.40..sroa.1051.0..sroa_idx52.i.sroa_idx, align 8, !noalias !1762
  %.sroa.24256.40..sroa.1051.0..sroa_idx52.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 64
  store i64 %.sroa.051.0, ptr %.sroa.24256.40..sroa.1051.0..sroa_idx52.i.sroa_idx, align 8, !noalias !1762
  %.sroa.26259.40..sroa.1051.0..sroa_idx52.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.yu, i64 72
  store i64 %.sroa.419.i.sink.i.sroa.speculated, ptr %.sroa.26259.40..sroa.1051.0..sroa_idx52.i.sroa_idx, align 8, !noalias !1762
  store i16 %i.yt, ptr %i.ym, align 2, !noalias !1763
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i.sroa.4.i.i.i)
  br label %bb.ct

bb.cl:                                            ; preds = %bb.ci
  switch i64 %.sroa.4.0.i.ph.i.i.i, label %bb.cm [
    i64 5, label %bb.co
    i64 6, label %bb.cn
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.yv = add nsw i64 %.sroa.4.0.i.ph.i.i.i, -7
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.ci
  %.sroa.09.0.i.i.i.i = phi i1 [ true, %bb.cn ], [ true, %bb.cm ], [ false, %bb.ci ], [ false, %bb.cl ]
  %.sroa.510.0.i.i.i.i = phi i64 [ 0, %bb.cn ], [ %i.yv, %bb.cm ], [ %.sroa.4.0.i.ph.i.i.i, %bb.ci ], [ %.sroa.4.0.i.ph.i.i.i, %bb.cl ] ; 4 uses
  %.sroa.013.0.i.i.i.i = phi i64 [ 5, %bb.cn ], [ 6, %bb.cm ], [ 4, %bb.ci ], [ %.sroa.4.0.i.ph.i.i.i, %bb.cl ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1764
  %i.yw = call noalias noundef align 8 dereferenceable_or_null(896) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 896, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1764 ; 7 uses
  %i.yx = icmp eq ptr %i.yw, null
  br i1 %i.yx, label %bb.cp, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_.exit.i.i.i.i.i, !prof !52

bb.cp:                                            ; preds = %bb.co
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 896) #30, !noalias !1764
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_.exit.i.i.i.i.i: ; preds = %bb.co
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 880
  store ptr null, ptr %i.yy, align 8, !noalias !1764
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 890
  call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  %i.za = load i16, ptr %i.ym, align 2, !noalias !1771, !noundef !4
  %i.zb = zext i16 %i.za to i64
  %i.zc = xor i64 %.sroa.013.0.i.i.i.i, -1
  %i.zd = add nsw i64 %i.zb, %i.zc                ; 4 uses
  %i.ze = trunc i64 %i.zd to i16
  store i16 %i.ze, ptr %i.yz, align 2, !alias.scope !1768, !noalias !1773
  %i.zf = icmp ult i64 %i.zd, 12
  br i1 %i.zf, label %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i, label %bb.cq, !prof !1774

bb.cq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_.exit.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.zd, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #27, !noalias !1771
  unreachable

_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1r_.exit.i.i.i.i.i
  %i.zg = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.i.i.i106, i64 %.sroa.013.0.i.i.i.i ; 3 uses
  %i.zh = getelementptr i8, ptr %i.zg, i64 80
  %i.zi = mul nuw nsw i64 %i.zd, 80
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(896) %i.yw, ptr nonnull readonly align 8 %i.zh, i64 %i.zi, i1 false), !alias.scope !1775, !noalias !1773
  %i.zj = trunc nuw nsw i64 %.sroa.013.0.i.i.i.i to i16
  store i16 %i.zj, ptr %i.ym, align 2, !noalias !1771
  %.sroa.019.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.zg, align 8, !noalias !1779 ; 3 uses
  %.sroa.019.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.019.i.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.019.i.sroa.4.0..sroa_idx.i.i.i, i64 72, i1 false), !noalias !1779
  %spec.select36.i.i.i.i = select i1 %.sroa.09.0.i.i.i.i, ptr %i.yw, ptr %.sroa.0.0.i.i.i106 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %spec.select36.i.i.i.i, i64 890 ; 2 uses
  %i.zl = load i16, ptr %i.zk, align 2, !noalias !1780, !noundef !4 ; 2 uses
  %i.zm = zext i16 %i.zl to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %.not.i14.not.i.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i.i, %i.zm
  br i1 %.not.i14.not.i.i.i.i, label %bb.cr, label %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i

bb.cr:                                            ; preds = %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  %i.zn = getelementptr inbounds nuw [80 x i8], ptr %spec.select36.i.i.i.i, i64 %.sroa.510.0.i.i.i.i ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 80
  %i.zp = sub nuw nsw i64 %i.zm, %.sroa.510.0.i.i.i.i
  %i.zq = mul nuw nsw i64 %i.zp, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zo, ptr nonnull align 8 %i.zn, i64 %i.zq, i1 false), !alias.scope !1788, !noalias !1790
  br label %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i

_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i: ; preds = %bb.cr, %_RINvMsV_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  %i.zr = add i16 %i.zl, 1
  %i.zs = getelementptr inbounds nuw [80 x i8], ptr %spec.select36.i.i.i.i, i64 %.sroa.510.0.i.i.i.i ; 10 uses
  store i64 %.sroa.0232.0, ptr %i.zs, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.737.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  store i64 %.sroa.16236.0, ptr %.sroa.737.0..sroa_idx.i, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.8.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.zs, i64 24
  store i64 %.sroa.0.0.val61, ptr %.sroa.8.0..sroa_idx.i109, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.946.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 32
  store ptr %.sroa.5278.0, ptr %.sroa.946.0..sroa_idx.i, align 8, !alias.scope !1791, !noalias !1792
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zs, i64 40
  store i64 %.sroa.0.0.val61, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !1762
  %.sroa.20251.40..sroa.1051.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 48
  store i64 %i.dr, ptr %.sroa.20251.40..sroa.1051.0..sroa_idx.i.sroa_idx, align 8, !noalias !1762
  %.sroa.22.40..sroa.1051.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 56
  store i64 %.sroa.04.0730, ptr %.sroa.22.40..sroa.1051.0..sroa_idx.i.sroa_idx, align 8, !noalias !1762
  %.sroa.24256.40..sroa.1051.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 64
  store i64 %.sroa.051.0, ptr %.sroa.24256.40..sroa.1051.0..sroa_idx.i.sroa_idx, align 8, !noalias !1762
  %.sroa.26259.40..sroa.1051.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.zs, i64 72
  store i64 %.sroa.419.i.sink.i.sroa.speculated, ptr %.sroa.26259.40..sroa.1051.0..sroa_idx.i.sroa_idx, align 8, !noalias !1762
  store i16 %i.zr, ptr %i.zk, align 2, !noalias !1780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.019.i.sroa.4.i.i.i, i64 72, i1 false), !noalias !1793
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.019.i.sroa.4.i.i.i)
  %.not.i.i.i110 = icmp eq i64 %.sroa.019.i.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i110, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i106, i64 880
  %i.zu = load ptr, ptr %i.zt, align 8, !noalias !1795, !noundef !4 ; 2 uses
  %.not.i116.i.i.i = icmp eq ptr %i.zu, null
  br i1 %.not.i116.i.i.i, label %._crit_edge.i.i.i111, label %.lr.ph.preheader.i.i.i

bb.ct:                                            ; preds = %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, %_RINvMsK_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i

._crit_edge.i.i.i111:                             ; preds = %bb.dm, %bb.cs
  %.sroa.0.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.019.i.sroa.0.0.copyload.i.i.i, %bb.cs ], [ %.sroa.034.0.copyload.i.i.i, %bb.dm ]
  %.sroa.11.0.lcssa.i.i.i = phi i64 [ 0, %bb.cs ], [ %i.aai, %bb.dm ]
  %.sroa.9.0.lcssa.i.i.i = phi ptr [ %i.yw, %bb.cs ], [ %i.acr, %bb.dm ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1798
  %i.zv = call noalias noundef align 8 dereferenceable_or_null(992) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 992, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1798 ; 10 uses
  %i.zw = icmp eq ptr %i.zv, null
  br i1 %i.zw, label %bb.cu, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i.i.i.i, !prof !52

bb.cu:                                            ; preds = %._crit_edge.i.i.i111
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 992) #30, !noalias !1798
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i111
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 880
  store ptr null, ptr %i.zx, align 8, !noalias !1798
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zv, i64 890 ; 2 uses
  store i16 0, ptr %i.zy, align 2, !noalias !1798
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 896
  store ptr %.sroa.0.2.ph.ph, ptr %i.zz, align 8, !noalias !1798
  %i.aaa = add i64 %.sroa.7.2.ph.ph, 1            ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aaa, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cv, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_.exit.i.i.i.i, !prof !52

bb.cv:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27, !noalias !1798
  unreachable

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_.exit.i.i.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBL_7set_val9SetValZSTEE13new_uninit_inB1w_.exit.i.i.i.i.i.i.i.i
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph.ph, i64 880
  store ptr %i.zv, ptr %i.aab, align 8, !noalias !1803
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.0.2.ph.ph, i64 888
  store i16 0, ptr %i.aac, align 8, !noalias !1808
  %i.aad = icmp eq i64 %.sroa.11.0.lcssa.i.i.i, %.sroa.7.2.ph.ph
  br i1 %i.aad, label %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i, label %bb.cw, !prof !27

bb.cw:                                            ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_.exit.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #27, !noalias !1809
  unreachable

_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i: ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0EB1F_.exit.i.i.i.i
  store i16 1, ptr %i.zy, align 2, !noalias !1809
  store i64 %.sroa.0.sroa.0.0.lcssa.i.i.i, ptr %i.zv, align 8, !noalias !1794
  %.sroa.021.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.021.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zv, i64 904
  store ptr %.sroa.9.0.lcssa.i.i.i, ptr %i.aae, align 8, !noalias !1809
  %i.aaf = getelementptr inbounds nuw i8, ptr %.sroa.9.0.lcssa.i.i.i, i64 880
  store ptr %i.zv, ptr %i.aaf, align 8, !noalias !1809
  %i.aag = getelementptr inbounds nuw i8, ptr %.sroa.9.0.lcssa.i.i.i, i64 888
  store i16 1, ptr %i.aag, align 8, !noalias !1809
  br label %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cs, %bb.dm
  %i.aah = phi ptr [ %i.agz, %bb.dm ], [ %i.zu, %bb.cs ] ; 15 uses
  %.sroa.7.0121.i.i.i = phi ptr [ %i.aah, %bb.dm ], [ %.sroa.0.0.i.i.i106, %bb.cs ]
  %.sroa.8.0120.i.i.i = phi i64 [ %i.aai, %bb.dm ], [ 0, %bb.cs ]
  %.sroa.9.0119.i.i.i = phi ptr [ %i.acr, %bb.dm ], [ %i.yw, %bb.cs ] ; 2 uses
  %.sroa.0.sroa.0.0117.i.i.i = phi i64 [ %.sroa.034.0.copyload.i.i.i, %bb.dm ], [ %.sroa.019.i.sroa.0.0.copyload.i.i.i, %bb.cs ] ; 4 uses
  %i.aai = add i64 %.sroa.8.0120.i.i.i, 1         ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.7.0121.i.i.i, i64 888
  %i.aak = load i16, ptr %i.aaj, align 8, !noalias !1795 ; 4 uses
  %i.aal = zext i16 %i.aak to i64                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.716.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.015.i.sroa.4.i.i.i)
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aah, i64 890 ; 4 uses
  %i.aan = load i16, ptr %i.aam, align 2, !noalias !1812, !noundef !4 ; 5 uses
  %i.aao = icmp ult i16 %i.aan, 11
  br i1 %i.aao, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.aap = icmp ult i16 %i.aak, 5
  br i1 %i.aap, label %bb.dd, label %bb.da

bb.cy:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.aaq = zext nneg i16 %i.aan to i64            ; 4 uses
  %i.aar = add nuw nsw i16 %i.aan, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1817)
  %i.aas = add nuw nsw i64 %i.aal, 1              ; 6 uses
  %.not.i.i30.not.i.i.i = icmp ult i16 %i.aak, %i.aan
  %i.aat = getelementptr inbounds nuw [80 x i8], ptr %i.aah, i64 %i.aal ; 5 uses
  br i1 %.not.i.i30.not.i.i.i, label %bb.cz, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i.i.i.i.i: ; preds = %bb.cy
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.aat, align 8, !alias.scope !1820, !noalias !1822
  %.sroa.629.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx31.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.aau = getelementptr inbounds nuw [80 x i8], ptr %i.aah, i64 %i.aas
  %i.aav = sub nuw nsw i64 %i.aaq, %i.aal         ; 2 uses
  %i.aaw = mul nuw nsw i64 %i.aav, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aau, ptr nonnull align 8 %i.aat, i64 %i.aaw, i1 false), !alias.scope !1825, !noalias !1826
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.aat, align 8, !alias.scope !1820, !noalias !1822
  %.sroa.629.0..sroa_idx31225.i.i.i = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx31225.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aah, i64 896 ; 2 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.aas
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.aal
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %i.abb = shl nuw nsw i64 %i.aav, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aba, ptr nonnull align 8 %i.aay, i64 %i.abb, i1 false), !alias.scope !1828, !noalias !1831
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i: ; preds = %bb.cz, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i.i.i.i.i
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aah, i64 896 ; 6 uses
  %i.abd = add nuw nsw i64 %i.aaq, 2              ; 2 uses
  %i.abe = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.aas
  store ptr %.sroa.9.0119.i.i.i, ptr %i.abe, align 8, !alias.scope !1828, !noalias !1831
  store i16 %i.aar, ptr %i.aam, align 2, !noalias !1831
  %i.abf = icmp samesign ult i64 %i.aas, %i.abd
  br i1 %i.abf, label %.lr.ph.i.i.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i
  %i.abg = add nuw nsw i64 %i.aaq, 1
  %i.abh = sub nsw i64 %i.abg, %i.aal
  %i.abi = sub nsw i64 %i.aaq, %i.aal
  %xtraiter1713 = and i64 %i.abh, 3               ; 2 uses
  %lcmp.mod1714.not = icmp eq i64 %xtraiter1713, 0
  br i1 %lcmp.mod1714.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.prol = phi i64 [ %i.abj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aas, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter1715 = phi i64 [ %prol.iter1715.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.abj = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.abk = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.abk)
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %.sroa.0.06.i.i.i.i.i.i.prol
  %i.abm = load ptr, ptr %i.abl, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 880
  store ptr %i.aah, ptr %i.abn, align 8, !noalias !1831
  %i.abo = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i.prol to i16
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 888
  store i16 %i.abo, ptr %i.abp, align 8, !noalias !1831
  %prol.iter1715.next = add i64 %prol.iter1715, 1 ; 2 uses
  %prol.iter1715.cmp.not = icmp eq i64 %prol.iter1715.next, %xtraiter1713
  br i1 %prol.iter1715.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1832

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.i.unr = phi i64 [ %i.aas, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.abj, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.abq = icmp ult i64 %i.abi, 3
  br i1 %i.abq, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i = phi i64 [ %i.acj, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.abr = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 1 ; 2 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %.sroa.0.06.i.i.i.i.i.i
  %i.abt = load ptr, ptr %i.abs, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 880
  store ptr %i.aah, ptr %i.abu, align 8, !noalias !1831
  %i.abv = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i to i16
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abt, i64 888
  store i16 %i.abv, ptr %i.abw, align 8, !noalias !1831
  %i.abx = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 2 ; 2 uses
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.abr
  %i.abz = load ptr, ptr %i.aby, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 880
  store ptr %i.aah, ptr %i.aca, align 8, !noalias !1831
  %i.acb = trunc nuw nsw i64 %i.abr to i16
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abz, i64 888
  store i16 %i.acb, ptr %i.acc, align 8, !noalias !1831
  %i.acd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 3 ; 2 uses
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.abx
  %i.acf = load ptr, ptr %i.ace, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 880
  store ptr %i.aah, ptr %i.acg, align 8, !noalias !1831
  %i.ach = trunc nuw nsw i64 %i.abx to i16
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acf, i64 888
  store i16 %i.ach, ptr %i.aci, align 8, !noalias !1831
  %i.acj = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.i, 4 ; 2 uses
  %i.ack = icmp ult i64 %.sroa.0.06.i.i.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ack)
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.acd
  %i.acm = load ptr, ptr %i.acl, align 8, !noalias !1831, !nonnull !4, !noundef !4 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 880
  store ptr %i.aah, ptr %i.acn, align 8, !noalias !1831
  %i.aco = trunc nuw nsw i64 %i.acd to i16
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 888
  store i16 %i.aco, ptr %i.acp, align 8, !noalias !1831
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.acj, %i.abd
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_RNvCsgy7pbN39oAf_6uu_ptx15create_word_set:bb.a
_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa: ; preds = %bb.di
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node13move_to_sliceINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB27_.exit.i.i.i.i.i ], [ %i.aek, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod1710 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1710)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.aeq, %bb.dk ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.dk ]
  %i.aeq = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil, 1
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.adj, i64 %.sroa.0.09.i.i.i.i.i.i.i.epil
  %i.aes = load ptr, ptr %i.aer, align 8, !alias.scope !1855, !noalias !1858, !nonnull !4, !noundef !4 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 880
  store ptr %i.acr, ptr %i.aet, align 8, !noalias !1861
  %i.aeu = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.epil to i16
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aes, i64 888
  store i16 %i.aeu, ptr %i.aev, align 8, !noalias !1858
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i, label %bb.dk, !llvm.loop !1862

_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i: ; preds = %bb.dk, %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i.unr-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.i.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.435.i.i.i, i64 72, i1 false), !noalias !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.435.i.i.i)
  %spec.select.i29.i.i.i = select i1 %.sroa.03.0.i.i.i.i, ptr %i.acr, ptr %i.aah ; 10 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 890 ; 2 uses
  %i.aex = load i16, ptr %i.aew, align 2, !noalias !1863, !noundef !4 ; 2 uses
  %i.aey = zext i16 %i.aex to i64                 ; 5 uses
  %i.aez = add i16 %i.aex, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1867)
  %i.afa = add nuw nsw i64 %.sroa.5.0.i.i.i.i, 1  ; 6 uses
  %.not.i8.not.i.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i.i, %i.aey
  %i.afb = getelementptr inbounds nuw [80 x i8], ptr %spec.select.i29.i.i.i, i64 %.sroa.5.0.i.i.i.i ; 5 uses
  br i1 %.not.i8.not.i.i.i.i, label %bb.dl, label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i: ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.afb, align 8, !alias.scope !1870, !noalias !1872
  %.sroa.629.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i

bb.dl:                                            ; preds = %_RINvMsW_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i.i
  %i.afc = getelementptr inbounds nuw [80 x i8], ptr %spec.select.i29.i.i.i, i64 %i.afa
  %i.afd = sub nuw nsw i64 %i.aey, %.sroa.5.0.i.i.i.i ; 2 uses
  %i.afe = mul nuw nsw i64 %i.afd, 80
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afc, ptr nonnull align 8 %i.afb, i64 %i.afe, i1 false), !alias.scope !1873, !noalias !1874
  store i64 %.sroa.0.sroa.0.0117.i.i.i, ptr %i.afb, align 8, !alias.scope !1870, !noalias !1872
  %.sroa.629.0..sroa_idx30.i.i.i = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.629.0..sroa_idx30.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, i64 72, i1 false), !noalias !1794
  %i.aff = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 896 ; 2 uses
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.aff, i64 %i.afa
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.aff, i64 %.sroa.5.0.i.i.i.i
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %i.afj = shl nuw nsw i64 %i.afd, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afi, ptr nonnull align 8 %i.afg, i64 %i.afj, i1 false), !alias.scope !1875, !noalias !1863
  br label %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i

_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i: ; preds = %bb.dl, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertNtCsgy7pbN39oAf_6uu_ptx7WordRefEB16_.exit.i9.i.i.i.i
  %i.afk = getelementptr inbounds nuw i8, ptr %spec.select.i29.i.i.i, i64 896 ; 6 uses
  %i.afl = add nuw nsw i64 %i.aey, 2              ; 2 uses
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.afa
  store ptr %.sroa.9.0119.i.i.i, ptr %i.afm, align 8, !alias.scope !1875, !noalias !1863
  store i16 %i.aez, ptr %i.aew, align 2, !noalias !1863
  %i.afn = icmp samesign ult i64 %i.afa, %i.afl
  br i1 %i.afn, label %.lr.ph.i.i11.i.i.i.i.preheader, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i

.lr.ph.i.i11.i.i.i.i.preheader:                   ; preds = %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i
  %i.afo = add nuw nsw i64 %i.aey, 1
  %i.afp = sub nsw i64 %i.afo, %.sroa.5.0.i.i.i.i
  %i.afq = sub nsw i64 %i.aey, %.sroa.5.0.i.i.i.i
  %xtraiter1711 = and i64 %i.afp, 3               ; 2 uses
  %lcmp.mod1712.not = icmp eq i64 %xtraiter1711, 0
  br i1 %lcmp.mod1712.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol

.lr.ph.i.i11.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i11.i.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.i.prol = phi i64 [ %i.afr, %.lr.ph.i.i11.i.i.i.i.prol ], [ %i.afa, %.lr.ph.i.i11.i.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.i.preheader ]
  %i.afr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 1 ; 2 uses
  %i.afs = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.i.prol, 12
  call void @llvm.assume(i1 %i.afs)
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %.sroa.0.06.i.i12.i.i.i.i.prol
  %i.afu = load ptr, ptr %i.aft, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.afv, align 8, !noalias !1863
  %i.afw = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i.prol to i16
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afu, i64 888
  store i16 %i.afw, ptr %i.afx, align 8, !noalias !1863
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1711
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.i.prol, !llvm.loop !1878

.lr.ph.i.i11.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i11.i.i.i.i.prol, %.lr.ph.i.i11.i.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.i.unr = phi i64 [ %i.afa, %.lr.ph.i.i11.i.i.i.i.preheader ], [ %i.afr, %.lr.ph.i.i11.i.i.i.i.prol ]
  %i.afy = icmp ult i64 %i.afq, 3
  br i1 %i.afy, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i
  %.sroa.0.06.i.i12.i.i.i.i = phi i64 [ %i.agr, %.lr.ph.i.i11.i.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.i.unr, %.lr.ph.i.i11.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.afz = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 1 ; 2 uses
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %.sroa.0.06.i.i12.i.i.i.i
  %i.agb = load ptr, ptr %i.aga, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agc, align 8, !noalias !1863
  %i.agd = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i to i16
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 888
  store i16 %i.agd, ptr %i.age, align 8, !noalias !1863
  %i.agf = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 2 ; 2 uses
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.afz
  %i.agh = load ptr, ptr %i.agg, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agi, align 8, !noalias !1863
  %i.agj = trunc nuw nsw i64 %i.afz to i16
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 888
  store i16 %i.agj, ptr %i.agk, align 8, !noalias !1863
  %i.agl = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 3 ; 2 uses
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.agf
  %i.agn = load ptr, ptr %i.agm, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.ago, align 8, !noalias !1863
  %i.agp = trunc nuw nsw i64 %i.agf to i16
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agn, i64 888
  store i16 %i.agp, ptr %i.agq, align 8, !noalias !1863
  %i.agr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.i, 4 ; 2 uses
  %i.ags = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.i, 9
  call void @llvm.assume(i1 %i.ags)
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.agl
  %i.agu = load ptr, ptr %i.agt, align 8, !noalias !1863, !nonnull !4, !noundef !4 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 880
  store ptr %spec.select.i29.i.i.i, ptr %i.agv, align 8, !noalias !1863
  %i.agw = trunc nuw nsw i64 %i.agl to i16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 888
  store i16 %i.agw, ptr %i.agx, align 8, !noalias !1863
  %exitcond.not.i.i13.i.i.i.i.3 = icmp eq i64 %i.agr, %i.afl
  br i1 %exitcond.not.i.i13.i.i.i.i.3, label %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, label %.lr.ph.i.i11.i.i.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.i.sroa.4.i.i.i)
  br label %.loopexit.i.i.i

_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i.i, %_RINvNtNtNtCs7tKScEop1B6_5alloc11collections5btree4node12slice_insertINtNtNtCs6JMX4GRUq9U_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB4_7set_val9SetValZSTEEEB26_.exit.i10.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.716.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.i.sroa.4.i.i.i, i64 72, i1 false), !noalias !1879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.015.i.sroa.4.i.i.i)
  %.not27.i.i.i = icmp eq i64 %.sroa.034.0.copyload.i.i.i, -1
  br i1 %.not27.i.i.i, label %.loopexit.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.716.i.i.i, i64 72, i1 false), !noalias !1794
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i.i)
  %i.agy = getelementptr inbounds nuw i8, ptr %i.aah, i64 880
  %i.agz = load ptr, ptr %i.agy, align 8, !noalias !1795, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.agz, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i111, label %.lr.ph.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.i.i.i, %_RINvMsM_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalEB1F_.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.716.i.i.i)
  br label %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i

_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i: ; preds = %.loopexit.i.i.i, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i, %bb.ct
  %.sroa.7.3 = phi i64 [ %.sroa.7.2.ph.ph, %bb.ct ], [ %i.aaa, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i ], [ %.sroa.7.2.ph.ph, %.loopexit.i.i.i ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.2.ph.ph, %bb.ct ], [ %i.zv, %_RNCNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB7_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtBb_7set_val9SetValZSTE12insert_entry0B1n_.exit.i.i.i ], [ %.sroa.0.2.ph.ph, %.loopexit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.7.i.i.i)
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i

bb.dn:                                            ; preds = %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE5entryB19_.exit.thread69.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1880
  %i.aha = call noalias noundef align 8 dereferenceable_or_null(896) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 896, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !1880 ; 14 uses
  %i.ahb = icmp eq ptr %i.aha, null
  br i1 %i.ahb, label %bb.do, label %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i, !prof !52

bb.do:                                            ; preds = %bb.dn
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 896) #30, !noalias !1880
  unreachable

_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i: ; preds = %bb.dn
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 880
  store ptr null, ptr %i.ahc, align 8, !noalias !1880
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 890
  store i16 1, ptr %i.ahd, align 2, !noalias !1881
  store i64 %.sroa.0232.0, ptr %i.aha, align 8, !noalias !1885
  %.sroa.6.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.6.0..sroa_idx35.i, align 8, !noalias !1885
  %.sroa.737.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  store i64 %.sroa.16236.0, ptr %.sroa.737.0..sroa_idx40.i, align 8, !noalias !1885
  %.sroa.8.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 24
  store i64 %.sroa.0.0.val61, ptr %.sroa.8.0..sroa_idx44.i, align 8, !noalias !1885
  %.sroa.946.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 32
  store ptr %.sroa.5278.0, ptr %.sroa.946.0..sroa_idx49.i, align 8, !noalias !1885
  %.sroa.1051.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.aha, i64 40
  store i64 %.sroa.0.0.val61, ptr %.sroa.1051.0..sroa_idx53.i, align 8, !noalias !1762
  %.sroa.20251.40..sroa.1051.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 48
  store i64 %i.dr, ptr %.sroa.20251.40..sroa.1051.0..sroa_idx53.i.sroa_idx, align 8, !noalias !1762
  %.sroa.22.40..sroa.1051.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 56
  store i64 %.sroa.04.0730, ptr %.sroa.22.40..sroa.1051.0..sroa_idx53.i.sroa_idx, align 8, !noalias !1762
  %.sroa.24256.40..sroa.1051.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 64
  store i64 %.sroa.051.0, ptr %.sroa.24256.40..sroa.1051.0..sroa_idx53.i.sroa_idx, align 8, !noalias !1762
  %.sroa.26259.40..sroa.1051.0..sroa_idx53.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aha, i64 72
  store i64 %.sroa.419.i.sink.i.sroa.speculated, ptr %.sroa.26259.40..sroa.1051.0..sroa_idx53.i.sroa_idx, align 8, !noalias !1762
  br label %_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i

_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB9_7set_val9SetValZSTE12insert_entryB1l_.exit.i: ; preds = %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i, %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i
  %.sroa.7.4 = phi i64 [ 0, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i ], [ %.sroa.7.3, %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i ]
  %.sroa.0.4 = phi ptr [ %i.aha, %_RNvMsu_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleB1r_.exit.i.i ], [ %.sroa.0.3, %_RINvMsN_NtNtNtCs7tKScEop1B6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B28_E12insert_entry0EB1F_.exit.i.i ]
  %i.ahe = add i64 %.sroa.10.2.ph.ph, 1
  br label %.outer.outer

bb.dp:                                            ; preds = %_RINvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB6_7HashMapNtNtCs7tKScEop1B6_5alloc6string6StringuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE12contains_keyBO_ECsgy7pbN39oAf_6uu_ptx.exit104.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs3_NtCs7tKScEop1B6_5alloc3stre12to_uppercase(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.km, i64 noundef %i.kh) #28
  br i1 %i.kj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.km, i64 noundef %i.kh, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1886
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit114: ; preds = %bb.dp, %bb.dq
  %.sroa.0232.0.copyload233 = load i64, ptr %i.k, align 8
  %.sroa.8.0.copyload235 = load ptr, ptr %.sroa.8.0..sroa_idx234, align 8
  %.sroa.16236.0.copyload238 = load i64, ptr %.sroa.16236.0..sroa_idx237, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bu

bb.dr:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit122, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit118, %._crit_edge
  ret void

bb.ds:                                            ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1892)
  %i.ahg = load i64, ptr %i.ahf, align 8, !range !173, !alias.scope !1895, !noundef !4 ; 3 uses
  %.not.i.i116 = icmp eq i64 %i.ahg, -1
  br i1 %.not.i.i116, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit118, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.ahh = icmp eq i64 %i.ahg, 0
  br i1 %i.ahh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit118, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i.i.i117 = load ptr, ptr %i.ahi, align 8, !alias.scope !1899, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i117, i64 noundef %i.ahg, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1899
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit118

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit118: ; preds = %bb.ds, %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store ptr null, ptr %0, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dr

bb.dv:                                            ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  %i.ahk = load i64, ptr %i.ahj, align 8, !range !173, !alias.scope !1906, !noundef !4 ; 3 uses
  %.not.i.i120 = icmp eq i64 %i.ahk, -1
  br i1 %.not.i.i120, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit122, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !1907)
  %i.ahl = icmp eq i64 %i.ahk, 0
  br i1 %i.ahl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit122, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val1.i.i.i121 = load ptr, ptr %i.ahm, align 8, !alias.scope !1910, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i121, i64 noundef %i.ahk, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1910
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit122

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtB13_5error5ErrorEECsgy7pbN39oAf_6uu_ptx.exit122: ; preds = %bb.dv, %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store ptr null, ptr %0, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.dr
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCsgy7pbN39oAf_6uu_ptx16format_tex_field(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %1, ptr %i.f, align 8, !noalias !1911
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !noalias !1911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1911
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperENtNtNtB9_6traits8iterator8Iterator4nextB1m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #29, !noalias !1911
  %i.i = load i64, ptr %i.d, align 8, !range !173, !noalias !1911, !noundef !4
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsgy7pbN39oAf_6uu_ptx.exit.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !1914, !noalias !1911, !nonnull !4, !noundef !4 ; 2 uses
  %.val2.i = load ptr, ptr %i.h, align 8, !alias.scope !1914, !noalias !1911, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = ptrtoint ptr %.val2.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub nuw i64 %i.j, %i.k                   ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = and i64 %i.l, 3
  %.not.i.i.i = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not.i.i.i to i64
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.m, %i.o   ; 2 uses
  %i.p = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.p, 1                ; 2 uses
  %i.q = mul i64 %..i.i, 24                       ; 3 uses
  %or.cond.i.i.i = icmp samesign ugt i64 %.sroa.0.0.i.i.i, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.c, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1917
  %i.s = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 8) #28, !noalias !1917 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.b
  %.sroa.10.0.ph.i.i = phi i64 [ %i.q, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ undef, %bb.b ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #30, !noalias !1911
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.c
  %.sroa.5.0.copyload = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.s, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 5 uses
  %.sroa.0.0.copyload = phi i64 [ 0, %bb.c ], [ %..i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %i.u = icmp samesign ult i64 %i.p, %.sroa.0.0.copyload
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1911
  store i64 %.sroa.0.0.copyload, ptr %i.e, align 8, !noalias !1911
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1911
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1926
  store ptr %.val.i, ptr %i.c, align 8, !noalias !1927
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.val2.i, ptr %i.v, align 8, !noalias !1927
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperENtNtNtB9_6traits8iterator8Iterator4nextB1m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #29, !noalias !1927
  %i.w = load i64, ptr %i.b, align 8, !range !173, !noalias !1927, !noundef !4
  %.not2.i.i.i = icmp eq i64 %i.w, -1
  br i1 %.not2.i.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB20_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEE9from_iterB36_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i, %bb.e
  %i.x = phi ptr [ %i.aj, %bb.e ], [ %.sroa.5.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.y = phi i64 [ %i.ak, %bb.e ], [ %.sroa.0.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i ] ; 3 uses
  %i.z = phi i64 [ %i.am, %bb.e ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgy7pbN39oAf_6uu_ptx.exit.i ] ; 4 uses
  %i.aa = icmp samesign ult i64 %i.z, 384307168202282326
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.z, %i.y
  br i1 %i.ab, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i, label %bb.e

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1928, !noalias !1927, !nonnull !4, !noundef !4
  %.val1.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1928, !noalias !1927, !nonnull !4, !noundef !4
  %i.ac = ptrtoint ptr %.val1.i.i.i to i64
  %i.ad = ptrtoint ptr %.val.i.i.i to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad                ; 2 uses
  %i.af = lshr i64 %i.ae, 2
  %i.ag = and i64 %i.ae, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.ag, 0
  %i.ah = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.af, 1
  %i.ai = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i, %i.ah
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.y, i64 noundef range(i64 1, 0) %i.ai, i64 noundef 8, i64 noundef 24) #28, !noalias !1911
  %.pre3.i.i.i = load i64, ptr %i.e, align 8, !range !131, !alias.scope !1931, !noalias !1911
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1931, !noalias !1911
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i ] ; 2 uses
  %i.ak = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %.pre3.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1927
  %i.am = add nuw nsw i64 %i.z, 1                 ; 4 uses
  store i64 %i.am, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1931, !noalias !1911
  call fastcc void @_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperENtNtNtB9_6traits8iterator8Iterator4nextB1m_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #29, !noalias !1927
  %i.an = load i64, ptr %i.b, align 8, !range !173, !noalias !1927, !noundef !4
  %.not.i.i4.i = icmp eq i64 %i.an, -1
  br i1 %.not.i.i4.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB20_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEE9from_iterB36_.exit.thread29, label %.lr.ph.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapNtNtNtB20_3str4iter5CharsNvCsgy7pbN39oAf_6uu_ptx10tex_mapperEE9from_iterB36_.exit.thread29: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1926
end_hunk_2
