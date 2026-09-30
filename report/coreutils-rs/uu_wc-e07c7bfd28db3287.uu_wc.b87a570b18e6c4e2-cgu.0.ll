Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_wc-e07c7bfd28db3287.uu_wc.b87a570b18e6c4e2-cgu.0?download=true
inline.NumInlined: 1243
inline.NumDeleted: 653
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvCsfPYenFzdTHO_5uu_wc2wc:bb.a
  %i.wa = icmp ugt i64 %.sroa.6.0.i, 1152921504606846975
  %.not.i.i.i = icmp ugt i64 %i.vz, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.wa, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.cr, label %bb.cq, !prof !16

bb.cq:                                            ; preds = %_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit
  %i.wb = icmp eq i64 %i.vz, 0
  br i1 %i.wb, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.cq
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1622
  %i.wc = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.vz, i64 noundef range(i64 1, 9) 8) #28, !noalias !1622 ; 2 uses
  %i.wd = icmp eq ptr %i.wc, null
  br i1 %i.wd, label %bb.cr, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i

bb.cr:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %_RNvCsfPYenFzdTHO_5uu_wc16wc_simd_features.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.vz) #30, !noalias !1623
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.cq
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.cq ], [ %i.wc, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 6 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.cq ], [ %.sroa.6.0.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %i.we = icmp samesign ule i64 %.sroa.6.0.i, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.we)
  %i.wf = icmp eq i64 %.sroa.6.0.i, 0             ; 2 uses
  br i1 %i.wf, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i
  %xtraiter2290 = and i64 %.sroa.6.0.i, 1
  %i.wg = icmp eq i64 %.sroa.6.0.i, 1
  br i1 %i.wg, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.6.0.i, 1152921504606846974
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.wh = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.wt, %.preheader.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i ]
  %i.wi = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %i.wh
  %.val11.i.i.i.i.i.i.i = load i8, ptr %i.wi, align 1, !range !20, !noalias !1624, !noundef !4 ; 2 uses
  %i.wj = zext nneg i8 %.val11.i.i.i.i.i.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.wj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.wk = zext nneg i8 %.val11.i.i.i.i.i.i.i to i64
  %switch.gep1972 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.291, i64 %i.wk
  %switch.load1973 = load ptr, ptr %switch.gep1972, align 8
  %i.wl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i, i64 %i.wh ; 2 uses
  store ptr %switch.load1973, ptr %i.wl, align 8, !noalias !1625, !captures !19
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  store i64 %switch.ext, ptr %i.wm, align 8, !noalias !1626
  %i.wn = or disjoint i64 %i.wh, 1                ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %i.wn
  %.val11.i.i.i.i.i.i.i.1 = load i8, ptr %i.wo, align 1, !range !20, !noalias !1624, !noundef !4 ; 2 uses
  %i.wp = zext nneg i8 %.val11.i.i.i.i.i.i.i.1 to i64
  %switch.gep.1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.wp
  %switch.load.1 = load i8, ptr %switch.gep.1, align 1
  %switch.ext.1 = zext i8 %switch.load.1 to i64
  %i.wq = zext nneg i8 %.val11.i.i.i.i.i.i.i.1 to i64
  %switch.gep1972.1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.291, i64 %i.wq
  %switch.load1973.1 = load ptr, ptr %switch.gep1972.1, align 8
  %i.wr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i, i64 %i.wn ; 2 uses
  store ptr %switch.load1973.1, ptr %i.wr, align 8, !noalias !1625, !captures !19
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store i64 %switch.ext.1, ptr %i.ws, align 8, !noalias !1626
  %i.wt = add nuw nsw i64 %i.wh, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod2291.not = icmp eq i64 %xtraiter2290, 0
  br i1 %lcmp.mod2291.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.wt, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2292 = trunc i64 %.sroa.6.0.i to i1
  call void @llvm.assume(i1 %lcmp.mod2292)
  %i.wu = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %.epil.init
  %.val11.i.i.i.i.i.i.i.epil = load i8, ptr %i.wu, align 1, !range !20, !noalias !1624, !noundef !4 ; 2 uses
  %i.wv = zext nneg i8 %.val11.i.i.i.i.i.i.i.epil to i64
  %switch.gep.epil = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.wv
  %switch.load.epil = load i8, ptr %switch.gep.epil, align 1
  %switch.ext.epil = zext i8 %switch.load.epil to i64
  %i.ww = zext nneg i8 %.val11.i.i.i.i.i.i.i.epil to i64
  %switch.gep1972.epil = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.291, i64 %i.ww
  %switch.load1973.epil = load ptr, ptr %switch.gep1972.epil, align 8
  %i.wx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i, i64 %.epil.init ; 2 uses
  store ptr %switch.load1973.epil, ptr %i.wx, align 8, !noalias !1625, !captures !19
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  store i64 %switch.ext.epil, ptr %i.wy, align 8, !noalias !1626
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit: ; preds = %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit.loopexit.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.24.copyload) ]
  %i.wz = shl i64 %.sroa.13.24.copyload, 4        ; 4 uses
  %i.xa = icmp ugt i64 %.sroa.13.24.copyload, 1152921504606846975
  %.not.i.i.i189 = icmp ugt i64 %i.wz, 9223372036854775800
  %or.cond.i.i.i190 = or i1 %i.xa, %.not.i.i.i189
  br i1 %or.cond.i.i.i190, label %bb.ct, label %bb.cs, !prof !16

bb.cs:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit
  %i.xb = icmp eq i64 %i.wz, 0
  br i1 %i.xb, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i192, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i191

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i191: ; preds = %bb.cs
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1627
  %i.xc = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.wz, i64 noundef range(i64 1, 9) 8) #28, !noalias !1627 ; 2 uses
  %i.xd = icmp eq ptr %i.xc, null
  br i1 %i.xd, label %bb.ct, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i192

bb.ct:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i191, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit
  %.sroa.4.0.ph.i.i203 = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i191 ], [ 0, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i203, i64 %i.wz) #30, !noalias !1628
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i192: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i191, %bb.cs
  %.sroa.10.0.i.i193 = phi ptr [ inttoptr (i64 8 to ptr), %bb.cs ], [ %i.xc, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i191 ] ; 6 uses
  %.sroa.4.0.i.i194 = phi i64 [ 0, %bb.cs ], [ %.sroa.13.24.copyload, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i191 ] ; 3 uses
  %i.xe = icmp samesign ule i64 %.sroa.13.24.copyload, %.sroa.4.0.i.i194
  call void @llvm.assume(i1 %i.xe)
  %i.xf = icmp eq i64 %.sroa.13.24.copyload, 0    ; 2 uses
  br i1 %i.xf, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204, label %.preheader.i.i.i195.preheader

.preheader.i.i.i195.preheader:                    ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i192
  %xtraiter2293 = and i64 %.sroa.13.24.copyload, 1
  %i.xg = icmp eq i64 %.sroa.13.24.copyload, 1
  br i1 %i.xg, label %.preheader.i.i.i195.epil.preheader, label %.preheader.i.i.i195.preheader.new

.preheader.i.i.i195.preheader.new:                ; preds = %.preheader.i.i.i195.preheader
  %unroll_iter2298 = and i64 %.sroa.13.24.copyload, 1152921504606846974
  br label %.preheader.i.i.i195

.preheader.i.i.i195:                              ; preds = %.preheader.i.i.i195, %.preheader.i.i.i195.preheader.new
  %i.xh = phi i64 [ 0, %.preheader.i.i.i195.preheader.new ], [ %i.xt, %.preheader.i.i.i195 ] ; 4 uses
  %niter2299 = phi i64 [ 0, %.preheader.i.i.i195.preheader.new ], [ %niter2299.next.1, %.preheader.i.i.i195 ]
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.11.24.copyload, i64 %i.xh
  %.val11.i.i.i.i.i.i.i196 = load i8, ptr %i.xi, align 1, !range !20, !noalias !1629, !noundef !4 ; 2 uses
  %i.xj = zext nneg i8 %.val11.i.i.i.i.i.i.i196 to i64
  %switch.gep1974 = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.xj
  %switch.load1975 = load i8, ptr %switch.gep1974, align 1
  %switch.ext1976 = zext i8 %switch.load1975 to i64
  %i.xk = zext nneg i8 %.val11.i.i.i.i.i.i.i196 to i64
  %switch.gep1977 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.291, i64 %i.xk
  %switch.load1978 = load ptr, ptr %switch.gep1977, align 8
  %i.xl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i193, i64 %i.xh ; 2 uses
  store ptr %switch.load1978, ptr %i.xl, align 8, !noalias !1630, !captures !19
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store i64 %switch.ext1976, ptr %i.xm, align 8, !noalias !1631
  %i.xn = or disjoint i64 %i.xh, 1                ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.sroa.11.24.copyload, i64 %i.xn
  %.val11.i.i.i.i.i.i.i196.1 = load i8, ptr %i.xo, align 1, !range !20, !noalias !1629, !noundef !4 ; 2 uses
  %i.xp = zext nneg i8 %.val11.i.i.i.i.i.i.i196.1 to i64
  %switch.gep1974.1 = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.xp
  %switch.load1975.1 = load i8, ptr %switch.gep1974.1, align 1
  %switch.ext1976.1 = zext i8 %switch.load1975.1 to i64
  %i.xq = zext nneg i8 %.val11.i.i.i.i.i.i.i196.1 to i64
  %switch.gep1977.1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.291, i64 %i.xq
  %switch.load1978.1 = load ptr, ptr %switch.gep1977.1, align 8
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i193, i64 %i.xn ; 2 uses
  store ptr %switch.load1978.1, ptr %i.xr, align 8, !noalias !1630, !captures !19
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store i64 %switch.ext1976.1, ptr %i.xs, align 8, !noalias !1631
  %i.xt = add nuw nsw i64 %i.xh, 2                ; 2 uses
  %niter2299.next.1 = add i64 %niter2299, 2       ; 2 uses
  %niter2299.ncmp.1 = icmp eq i64 %niter2299.next.1, %unroll_iter2298
  br i1 %niter2299.ncmp.1, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204.loopexit.unr-lcssa, label %.preheader.i.i.i195

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i195
  %lcmp.mod2296.not = icmp eq i64 %xtraiter2293, 0
  br i1 %lcmp.mod2296.not, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204, label %.preheader.i.i.i195.epil.preheader

.preheader.i.i.i195.epil.preheader:               ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204.loopexit.unr-lcssa, %.preheader.i.i.i195.preheader
  %.epil.init2295 = phi i64 [ 0, %.preheader.i.i.i195.preheader ], [ %i.xt, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod2297 = trunc i64 %.sroa.13.24.copyload to i1
  call void @llvm.assume(i1 %lcmp.mod2297)
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.11.24.copyload, i64 %.epil.init2295
  %.val11.i.i.i.i.i.i.i196.epil = load i8, ptr %i.xu, align 1, !range !20, !noalias !1629, !noundef !4 ; 2 uses
  %i.xv = zext nneg i8 %.val11.i.i.i.i.i.i.i196.epil to i64
  %switch.gep1974.epil = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.290, i64 %i.xv
  %switch.load1975.epil = load i8, ptr %switch.gep1974.epil, align 1
  %switch.ext1976.epil = zext i8 %switch.load1975.epil to i64
  %i.xw = zext nneg i8 %.val11.i.i.i.i.i.i.i196.epil to i64
  %switch.gep1977.epil = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvCsfPYenFzdTHO_5uu_wc2wc.291, i64 %i.xw
  %switch.load1978.epil = load ptr, ptr %switch.gep1977.epil, align 8
  %i.xx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.0.i.i193, i64 %.epil.init2295 ; 2 uses
  store ptr %switch.load1978.epil, ptr %i.xx, align 8, !noalias !1630, !captures !19
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store i64 %switch.ext1976.epil, ptr %i.xy, align 8, !noalias !1631
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204: ; preds = %.preheader.i.i.i195.epil.preheader, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204.loopexit.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCsfPYenFzdTHO_5uu_wc.exit.i.i.i192
  %i.xz = icmp ult i64 %.sroa.6.0.i, 576460752303423488
  call void @llvm.assume(i1 %i.xz)
  %i.ya = icmp ult i64 %.sroa.13.24.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.ya)
  %i.yb = icmp sgt i64 %.sroa.17.48.copyload, -1
  call void @llvm.assume(i1 %i.yb)
  %.not = icmp eq i64 %.sroa.17.48.copyload, 0
  br i1 %.not, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204
  br i1 %i.wf, label %bb.fz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %i.xf, label %bb.da, label %bb.cy

bb.cw:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB1F_6copied6CopiedINtNtNtB1J_5slice4iter4IterNtNtNtCsh036I4OHgIr_6uucore8features8hardware15HardwareFeatureEENvCsfPYenFzdTHO_5uu_wc22hardware_feature_labelEE9from_iterB4g_.exit204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da)
  store i64 0, ptr %i.da, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 0, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call fastcc void @_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.10.0.i.i193, i64 noundef %.sroa.13.24.copyload) #28
  %.sroa.0506.0.copyload = load i64, ptr %i.ba, align 8 ; 2 uses
  %.sroa.4507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.4507.0.copyload = load ptr, ptr %.sroa.4507.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %.not.i = icmp slt i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i, label %bb.ge, label %bb.cx, !prof !16

bb.cx:                                            ; preds = %bb.cw
  %i.yc = icmp eq i64 %.sroa.6.0.copyload, 0      ; 2 uses
  br i1 %i.yc, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit.thread649, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.cx
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1632
  %i.yd = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.copyload, i64 noundef range(i64 1, 9) 1) #28, !noalias !1632 ; 3 uses
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %bb.ge, label %bb.gt

bb.cy:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.co, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  store i64 0, ptr %i.cm, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 0, ptr %.sroa.577.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call fastcc void @_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.10.0.i.i193, i64 noundef %.sroa.13.24.copyload) #28
  %.sroa.0530.0.copyload = load i64, ptr %i.ay, align 8 ; 2 uses
  %.sroa.4531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.4531.0.copyload = load ptr, ptr %.sroa.4531.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.6532.0.copyload = load i64, ptr %.sroa.6532.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not.i205 = icmp slt i64 %.sroa.6532.0.copyload, 0
  br i1 %.not.i205, label %bb.dc, label %bb.cz, !prof !16

bb.cz:                                            ; preds = %bb.cy
  %i.yf = icmp eq i64 %.sroa.6532.0.copyload, 0   ; 3 uses
  br i1 %i.yf, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit208.thread620, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i206

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i206: ; preds = %bb.cz
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1633
  %i.yg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.6532.0.copyload, i64 noundef range(i64 1, 9) 1) #28, !noalias !1633 ; 3 uses
  %i.yh = icmp eq ptr %i.yg, null
  br i1 %i.yh, label %bb.dc, label %bb.dr

bb.da:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct)
  store i64 0, ptr %i.ct, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 0, ptr %.sroa.567.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call fastcc void @_RINvNtCs7tKScEop1B6_5alloc3str17join_generic_copyehReECsfPYenFzdTHO_5uu_wc(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.10.0.i.i, i64 noundef %.sroa.6.0.i) #28
  %.sroa.0517.0.copyload = load i64, ptr %i.az, align 8 ; 2 uses
  %.sroa.4518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.4518.0.copyload = load ptr, ptr %.sroa.4518.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.6519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.6519.0.copyload = load i64, ptr %.sroa.6519.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %.not.i209 = icmp slt i64 %.sroa.6519.0.copyload, 0
  br i1 %.not.i209, label %bb.fb, label %bb.db, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.yi = icmp eq i64 %.sroa.6519.0.copyload, 0   ; 2 uses
  br i1 %i.yi, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit212.thread641, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i210

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i210: ; preds = %bb.db
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !1634
  %i.yj = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.6519.0.copyload, i64 noundef range(i64 1, 9) 1) #28, !noalias !1634 ; 3 uses
  %i.yk = icmp eq ptr %i.yj, null
  br i1 %i.yk, label %bb.fb, label %bb.fq

bb.dc:                                            ; preds = %bb.cy, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i206
  %.sroa.4578.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i206 ], [ 0, %bb.cy ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4578.0.ph, i64 %.sroa.6532.0.copyload) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit208.thread620: ; preds = %bb.cz, %bb.dr
  %i.yl = phi ptr [ %i.yg, %bb.dr ], [ inttoptr (i64 1 to ptr), %bb.cz ] ; 8 uses
  %i.ym = icmp eq i64 %.sroa.0530.0.copyload, 0
  br i1 %i.ym, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit, label %bb.dd

bb.dd:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit208.thread620
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4531.0.copyload, i64 noundef %.sroa.0530.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1635
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfPYenFzdTHO_5uu_wc.exit208.thread620, %bb.dd
  switch i64 %.sroa.6532.0.copyload, label %thread-pre-split.i [
    i64 0, label %.loopexit705.a
    i64 1, label %bb.de
  ]

bb.de:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit
  %i.yn = load i8, ptr %i.yl, align 1, !alias.scope !1636, !noalias !1637, !noundef !4 ; 2 uses
  switch i8 %i.yn, label %bb.df [
    i8 43, label %.loopexit705.a
    i8 45, label %.loopexit705.a
  ]

thread-pre-split.i:                               ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfPYenFzdTHO_5uu_wc.exit
  %.pr.i = load i8, ptr %i.yl, align 1, !alias.scope !1636, !noalias !1637
  br label %bb.df

bb.df:                                            ; preds = %thread-pre-split.i, %bb.de
  %i.yo = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.yn, %bb.de ]
  switch i8 %i.yo, label %bb.dm [
    i8 43, label %bb.dg
    i8 45, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 1
  %i.yq = add nsw i64 %.sroa.6532.0.copyload, -1
  br label %bb.dm

bb.dh:                                            ; preds = %bb.df
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yl, i64 1 ; 2 uses
  %i.ys = add nsw i64 %.sroa.6532.0.copyload, -1  ; 3 uses
  %i.yt = icmp samesign ult i64 %.sroa.6532.0.copyload, 17
  br i1 %i.yt, label %.preheader114.i, label %.lr.ph.i214

.preheader114.i:                                  ; preds = %bb.dh
  %.not103137.i = icmp eq i64 %i.ys, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i214:                                      ; preds = %bb.dh, %bb.dk
  %.sroa.0.1136.i = phi ptr [ %i.yu, %bb.dk ], [ %i.yr, %bb.dh ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.yv, %bb.dk ], [ %i.ys, %bb.dh ]
  %.sroa.084.0134.i = phi i64 [ %i.zg, %bb.dk ], [ 0, %bb.dh ]
  %i.yu = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.yv = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.yw = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.yx = extractvalue { i64, i1 } %i.yw, 0
  %i.yy = extractvalue { i64, i1 } %i.yw, 1
  br i1 %i.yy, label %.loopexit705.a, label %bb.di, !prof !9

bb.di:                                            ; preds = %.lr.ph.i214
  %i.yz = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !1636, !noalias !1637, !noundef !4
  %i.za = zext i8 %i.yz to i32
  %i.zb = add nsw i32 %i.za, -48                  ; 2 uses
  %i.zc = icmp ult i32 %i.zb, 10
  br i1 %i.zc, label %bb.dj, label %.loopexit705.a

bb.dj:                                            ; preds = %bb.di
  %i.zd = zext nneg i32 %i.zb to i64
  %i.ze = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.yx, i64 %i.zd) ; 2 uses
  %i.zf = extractvalue { i64, i1 } %i.ze, 1
  br i1 %i.zf, label %.loopexit705.a, label %bb.dk, !prof !9

bb.dk:                                            ; preds = %bb.dj
  %i.zg = extractvalue { i64, i1 } %i.ze, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.yv, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i214

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.dl
  %.sroa.0.2140.i = phi ptr [ %i.zn, %bb.dl ], [ %i.yr, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.zm, %bb.dl ], [ %i.ys, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.zp, %bb.dl ], [ 0, %.preheader114.i ]
  %i.zh = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !1636, !noalias !1637, !noundef !4
  %i.zi = zext i8 %i.zh to i32
  %i.zj = add nsw i32 %i.zi, -48                  ; 2 uses
  %i.zk = icmp ult i32 %i.zj, 10
  br i1 %i.zk, label %bb.dl, label %.loopexit705.a

bb.dl:                                            ; preds = %.lr.ph141.i
  %i.zl = mul i64 %.sroa.084.2138.i, 10
  %i.zm = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.zo = zext nneg i32 %i.zj to i64
  %i.zp = sub i64 %i.zl, %i.zo                    ; 2 uses
  %.not103.i = icmp eq i64 %i.zm, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.dm:                                            ; preds = %bb.dg, %bb.df
  %.sroa.26.0.i = phi i64 [ %i.yq, %bb.dg ], [ %.sroa.6532.0.copyload, %bb.df ] ; 4 uses
  %.sroa.0.0.i215 = phi ptr [ %i.yp, %bb.dg ], [ %i.yl, %bb.df ] ; 2 uses
  %i.zq = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.zq, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.dm
end_hunk_0
