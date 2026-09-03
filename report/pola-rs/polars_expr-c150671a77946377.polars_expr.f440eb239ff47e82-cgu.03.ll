Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.03?download=true
inline.NumInlined: 7491
inline.NumDeleted: 2575
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynaECskY9G75ZWc4U_11polars_expr:bb.a
  %eh.lpad-body82136.i = phi { ptr, i32 } [ %lpad.thr_comm.i60, %.body81.thread138.i ], [ %i.py, %bb.cf ], [ %i.pt, %bb.cc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.po, ptr nonnull @64) #43
          to label %bb.ci unwind label %bb.ch, !dbg !60851, !noalias !60455

bb.ch:                                            ; preds = %bb.cm, %.thread109.i, %bb.ci, %.body81.thread.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !60856, !noalias !60455
  unreachable, !dbg !60856

bb.ci:                                            ; preds = %.body81.thread.i, %bb.bx, %bb.bu
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.bu ], [ true, %bb.bx ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.pn, %bb.bu ], [ %i.pq, %bb.bx ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.k) #43
          to label %bb.bf unwind label %bb.ch, !dbg !60851, !noalias !60455

bb.cj:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qb = icmp ult i64 %.sroa.21.0.i29, %i.lb, !dbg !60753
  br i1 %i.qb, label %bb.cl, label %.split151.us.i, !dbg !60753, !prof !3923

bb.ck:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qc = mul i64 %.sroa.21.0.i29, %3, !dbg !60762
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.qc, !dbg !60763
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr nonnull align 1 %i.pa, i64 %3, i1 false), !dbg !60764, !noalias !60455
  br label %.split.i28.backedge, !dbg !60765

.split151.us.i:                                   ; preds = %bb.cj, %bb.bi
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bd unwind label %.loopexit.split-lp.i12, !dbg !60857, !noalias !60455

bb.cl:                                            ; preds = %bb.cj
  %i.qe = lshr i64 %.sroa.21.0.i29, 3, !dbg !60754
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.qe, !dbg !60755 ; 2 uses
  %i.qg = load i8, ptr %i.qf, align 1, !dbg !60756, !noalias !60455, !noundef !3817
  %i.qh = trunc i64 %.sroa.21.0.i29 to i8, !dbg !60757
  %i.qi = and i8 %i.qh, 7, !dbg !60757
  %i.qj = shl nuw i8 1, %i.qi, !dbg !60757
  %i.qk = xor i8 %i.qj, -1, !dbg !60758
  %i.ql = and i8 %i.qg, %i.qk, !dbg !60759
  store i8 %i.ql, ptr %i.qf, align 1, !dbg !60760, !noalias !60455
  br label %.split.i28.backedge, !dbg !60761

.split.i28.backedge:                              ; preds = %bb.cl, %bb.ck
  br label %.split.i28, !dbg !60766

.thread109.i:                                     ; preds = %bb.br, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bf
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bf ], [ %i.pi, %bb.br ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bf ], [ true, %bb.br ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.m) #43
          to label %bb.ay unwind label %bb.ch, !dbg !60724, !noalias !60455

bb.cm:                                            ; preds = %.thread.i8, %bb.ay
  %.pn68108.i = phi { ptr, i32 } [ %i.kx, %.thread.i8 ], [ %.pn66114.i, %bb.ay ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecaEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.p) #43
          to label %common.resume unwind label %bb.ch, !dbg !60694, !noalias !60455

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ax, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !60855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !60855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !60855
  br label %bb.cn, !dbg !60858

bb.cn:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qm = load i8, ptr %i.ai, align 8, !dbg !60859, !range !4401, !noundef !3817 ; 2 uses
  %i.qn = icmp eq i8 %i.qm, 42, !dbg !60859
  br i1 %i.qn, label %bb.co, label %bb.cp, !dbg !60860

bb.co:                                            ; preds = %bb.cn
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !60861
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i64 72, i1 false), !dbg !60862
  br label %bb.ct, !dbg !60863

bb.cp:                                            ; preds = %bb.cn
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !60864
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80, !dbg !60864
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 80, !dbg !60486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !60864
  store i8 %i.qm, ptr %i.ak, align 8, !dbg !60486
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !60486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !60486
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !60865, !noalias !60487
  %i.qp = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !60866, !noalias !60487 ; 3 uses
  %i.qq = icmp eq ptr %i.qp, null, !dbg !60867
  br i1 %i.qq, label %bb.cq, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !60868, !prof !3850

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cr, !dbg !60869

.noexc:                                           ; preds = %bb.cq
  unreachable, !dbg !60869

bb.cr:                                            ; preds = %bb.cq
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ak) #43
          to label %common.resume unwind label %bb.cs, !dbg !60870

bb.cs:                                            ; preds = %bb.cr
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !60871
  unreachable, !dbg !60871

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qp, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !dbg !60872
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !60873
  store ptr %i.qp, ptr %i.qt, align 8, !dbg !60873
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !60873
  store ptr @85, ptr %i.qu, align 8, !dbg !60873
  store i64 18, ptr %0, align 8, !dbg !60873
  br label %bb.ct, !dbg !60863

bb.ct:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.co
  ret void, !dbg !60863
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60874 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 16               ; 5 uses
  %i.f = alloca [72 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 16               ; 5 uses
  %i.y = alloca [72 x i8], align 16               ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 18 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !61482
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !61482, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !61483 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !61483 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !61483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !61402
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !61484
  %i.av = load ptr, ptr %i.au, align 8, !dbg !61484, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !61485
  %i.aw = load i128, ptr %i.an, align 16, !dbg !61486, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !61487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !61402
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !61488, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !61489
  unreachable, !dbg !61489

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !61490 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !61491

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !61408
  store i64 8, ptr %i.ak, align 8, !dbg !61492, !noalias !61408
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !61493, !noalias !61408, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !61494 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !61494 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !61494
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !61495, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 3, !dbg !61496              ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !61496
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !61497, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !61498, !noalias !61408
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61499
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !61500, !noalias !61408
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !61499
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !61499
  store i8 42, ptr %i.am, align 8, !dbg !61499
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61501

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !61502, !noalias !61408
  call void @llvm.experimental.noalias.scope.decl(metadata !61413), !dbg !61503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !61504, !noalias !61414
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !61504, !noalias !61414
  %i.bj = load i64, ptr %i.v, align 8, !dbg !61504, !range !4010, !noalias !61414, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !61505
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !61506
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !61506, !range !3948, !noalias !61414, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !61506 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !61505, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !61507, !noalias !61414
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !61508, !noalias !61414
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !61509, !noalias !61408
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61510
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !61511, !noalias !61408
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !61510
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !61510
  store i8 42, ptr %i.am, align 8, !dbg !61510
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61512

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !61513

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !61513

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !61514, !noalias !61414, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !61515 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !61515, !noalias !61414
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !61516, !alias.scope !61413, !noalias !61408
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !61516
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !61516, !alias.scope !61413, !noalias !61408
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !61516
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !61516, !alias.scope !61413, !noalias !61408
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !61517   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !61518, !noalias !61408
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !61518, !noalias !61408
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !61519, !noalias !61408, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !61520       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !61520, !noalias !61408
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !61521
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !61521, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !61522, !noalias !61408

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !61523, !noalias !61408
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !61524
  %i.cb = lshr i64 %i.ca, 3, !dbg !61525          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !61526, !noalias !61420
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !61526, !noalias !61408

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !61526, !range !4010, !noalias !61420, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !61527
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !61528
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !61528, !range !3948, !noalias !61420, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !61528 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !61527, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !61529, !noalias !61420
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !61530, !noalias !61408

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !61530

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !61531, !noalias !61420, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !61532
  call void @llvm.assume(i1 %i.cj), !dbg !61533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !61534, !noalias !61420
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !61535, !noalias !61420
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !61536, !noalias !61408
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !61536
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !61536, !noalias !61408
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !61536
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !61536, !noalias !61408
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !61536
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !61536, !noalias !61408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !61537, !noalias !61408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !61538, !noalias !61408
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !61539, !noalias !61408, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !61540, !noalias !61408
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !61540
  store i64 0, ptr %i.cm, align 8, !dbg !61540, !noalias !61408
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !61540
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !61540, !noalias !61408
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !61541 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !61541, !noalias !61408, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !61541
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !61542
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !61543, !noalias !61408

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !61544

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !61545, !noalias !61408
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !61546, !noalias !61408 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !61546
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !61546, !noalias !61408 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !61546
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !61546, !noalias !61408 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !61546
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !61546, !noalias !61408 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !61546
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !61546, !noalias !61408
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !61546
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !61546, !noalias !61408
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !61546
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !61546, !noalias !61408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !61547, !noalias !61408
  %.not.i.i.i = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i, null
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not166.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  %i.cw = shl nuw i64 %3, 3, !dbg !61548
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !61548

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !61549
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !61549

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !61550
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !61551

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !61550
  %i.df = add i64 %i.de, %i.bt, !dbg !61550
end_hunk_0
begin_hunk_1_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !61659, !noalias !61408

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61660, !noalias !61408
  unreachable, !dbg !61660

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !61661, !noalias !61408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !61662, !noalias !61408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !61663, !noalias !61408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !61663, !noalias !61408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !61663, !noalias !61408
  call void @llvm.experimental.noalias.scope.decl(metadata !61441), !dbg !61664
  call void @llvm.experimental.noalias.scope.decl(metadata !61442), !dbg !61664
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !61665, !noalias !61443 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !61666
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !61666

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !61667, !alias.scope !61441, !noalias !61444
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !61668, !noalias !61443

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !61669, !noalias !61443

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61668, !noalias !61443
  unreachable, !dbg !61668

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !61670, !noalias !61408

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !61671, !noalias !61408

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !61672
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !61672, !alias.scope !61442, !noalias !61443, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !61673, !alias.scope !61441, !noalias !61444
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !61673
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !61673, !alias.scope !61441, !noalias !61444
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !61673
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !61673, !alias.scope !61441, !noalias !61444
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !61673
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !61673, !alias.scope !61441, !noalias !61444
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !61674

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !61674, !noalias !61443

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61675, !noalias !61443
  unreachable, !dbg !61675

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !61676

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !61677, !noalias !61408
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @76, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !61678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !61676, !noalias !61408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !61676, !noalias !61408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !61544, !noalias !61408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !61679, !noalias !61408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !61513, !noalias !61408
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61680

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @76) #43
          to label %bb.as unwind label %bb.ar, !dbg !61676, !noalias !61408

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61681, !noalias !61408
  unreachable, !dbg !61681

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !61676, !noalias !61408

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !61574
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !61574, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !61583 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !61584
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !61585
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !61586, !noalias !61408
  %i.kr = call i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !61587
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !61588
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !61589, !noalias !61408
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !61583 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !61584
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !61585
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !61586, !noalias !61408
  %i.kw = call i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !61587
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !61588
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !61589, !noalias !61408
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !61583 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !61584
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !61585
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !61586, !noalias !61408
  %i.lb = call i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !61587
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !61588
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !61589, !noalias !61408
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !61583 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !61584
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !61585
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !61586, !noalias !61408
  %i.lg = call i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !61587
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !61588
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !61589, !noalias !61408
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !61590
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !61591, !llvm.loop !61160

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !61682, !noalias !61408

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !61575
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !61576 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !61577, !noalias !61408, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !61578
  %i.lm = and i8 %i.ll, 7, !dbg !61578
  %i.ln = shl nuw i8 1, %i.lm, !dbg !61578
  %i.lo = xor i8 %i.ln, -1, !dbg !61579
  %i.lp = and i8 %i.lk, %i.lo, !dbg !61580
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !61581, !noalias !61408
  br label %.split.i.backedge, !dbg !61582

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !61544, !noalias !61408

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !61490

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !61513, !noalias !61408

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !61680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !61680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !61680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !61680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !61680
  br label %bb.cr, !dbg !61683

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !61445
  store i64 8, ptr %i.r, align 8, !dbg !61684, !noalias !61445
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !61685, !noalias !61445, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !61686 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !61686 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !61686
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !61687, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 3, !dbg !61688              ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !61688
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !61689, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !61690, !noalias !61445
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61691
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !61692, !noalias !61445
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !61691
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !61691
  store i8 42, ptr %i.am, align 8, !dbg !61691
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61693

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !61694, !noalias !61445
  call void @llvm.experimental.noalias.scope.decl(metadata !61450), !dbg !61695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !61696, !noalias !61451
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !61696, !noalias !61451
  %i.ma = load i64, ptr %i.c, align 8, !dbg !61696, !range !4010, !noalias !61451, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !61697
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !61698
  %i.md = load i64, ptr %i.mc, align 8, !dbg !61698, !range !3948, !noalias !61451, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !61698 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !61697, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !61699, !noalias !61451
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !61700, !noalias !61451
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !61701, !noalias !61445
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61702
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !61703, !noalias !61445
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !61702
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !61702
  store i8 42, ptr %i.am, align 8, !dbg !61702
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61704

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !61705

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !61705

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !61706, !noalias !61451, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !61707, !noalias !61451
  store i64 %i.md, ptr %i.q, align 8, !dbg !61708, !alias.scope !61450, !noalias !61445
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !61708
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !61708, !alias.scope !61450, !noalias !61445
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !61708
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !61708, !alias.scope !61450, !noalias !61445
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !61709   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !61710, !noalias !61445
  store i64 %i.mm, ptr %i.p, align 8, !dbg !61710, !noalias !61445
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !61711, !noalias !61445, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !61712       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !61712, !noalias !61445
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !61713
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !61713, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !61714, !noalias !61445

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !61715, !noalias !61445
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !61716
  %i.mr = lshr i64 %i.mq, 3, !dbg !61717          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !61718, !noalias !61457
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !61718, !noalias !61445

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !61718, !range !4010, !noalias !61457, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !61719
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !61720
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !61720, !range !3948, !noalias !61457, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !61720 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !61719, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !61721, !noalias !61457
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !61722, !noalias !61445

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !61722

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !61723, !noalias !61457, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !61724
  call void @llvm.assume(i1 %i.mz), !dbg !61725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !61726, !noalias !61457
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !61727, !noalias !61457
  store i64 %i.mv, ptr %i.n, align 8, !dbg !61728, !noalias !61445
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !61728
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !61728, !noalias !61445
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !61728
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !61728, !noalias !61445
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !61728
  store i64 %i.mn, ptr %i.na, align 8, !dbg !61728, !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !61729, !noalias !61445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !61730, !noalias !61445
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !61731, !noalias !61445, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !61732, !noalias !61445
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !61732
  store i64 0, ptr %i.nc, align 8, !dbg !61732, !noalias !61445
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !61732
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !61732, !noalias !61445
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !61733 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !61733, !noalias !61445, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !61733
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !61734
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !61735, !noalias !61445

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !61736

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !61737, !noalias !61445
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !61738, !noalias !61445 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !61738
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !61738, !noalias !61445 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !61738
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !61738, !noalias !61445 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !61738
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !61738, !noalias !61445 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !61738
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !61738, !noalias !61445
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !61738
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !61738, !noalias !61445
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !61738
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !61738, !noalias !61445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !61739, !noalias !61445
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !61740
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !61740

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !61740

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !61741 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !61742, !noalias !61458, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !61743, !noalias !61458, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !61744
  call void @llvm.assume(i1 %i.nv), !dbg !61745
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !61746 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !61747, !noalias !61458, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !61748, !noalias !61458, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !61459), !dbg !61749
  call void @llvm.experimental.noalias.scope.decl(metadata !61460), !dbg !61749
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !61750, !alias.scope !61459, !noalias !61461, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !61750
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !61750

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !61751
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !61751, !alias.scope !61459, !noalias !61461, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !61751      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !61752
  call void @llvm.assume(i1 %i.oe), !dbg !61753
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !61754
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !61755
end_hunk_1
begin_hunk_2_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !61863, !noalias !61445

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61868, !noalias !61445
  unreachable, !dbg !61868

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !61863, !noalias !61445

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !61765
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !61765, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !61774
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !61775
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !61776, !noalias !61445
  br label %.split.i28.backedge, !dbg !61777

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !61869, !noalias !61445

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !61766
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !61767 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !61768, !noalias !61445, !noundef !3817
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !61769
  %i.ru = and i8 %i.rt, 7, !dbg !61769
  %i.rv = shl nuw i8 1, %i.ru, !dbg !61769
  %i.rw = xor i8 %i.rv, -1, !dbg !61770
  %i.rx = and i8 %i.rs, %i.rw, !dbg !61771
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !61772, !noalias !61445
  br label %.split.i28.backedge, !dbg !61773

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !61778

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !61736, !noalias !61445

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !61705, !noalias !61445

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !61867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !61867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !61867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !61867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !61867
  br label %bb.cr, !dbg !61870

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !61871, !range !4401, !noundef !3817 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !61871
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !61872

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !61874
  br label %bb.cx, !dbg !61875

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !61876
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !61876
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !61480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !61876
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !61480
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !61480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !61480
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !61877, !noalias !61481
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !61878, !noalias !61481 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !61879
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !61880, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !61881

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !61881

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !61882

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61883
  unreachable, !dbg !61883

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !61884
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61885
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !61885
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !61885
  store ptr @85, ptr %i.sg, align 8, !dbg !61885
  store i64 18, ptr %0, align 8, !dbg !61885
  br label %bb.cx, !dbg !61875

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !61875
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynfECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !61886 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 16               ; 5 uses
  %i.f = alloca [72 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 16               ; 5 uses
  %i.y = alloca [72 x i8], align 16               ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 18 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !62494
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !62494, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !62495 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !62495 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !62495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !62414
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !62496
  %i.av = load ptr, ptr %i.au, align 8, !dbg !62496, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !62497
  %i.aw = load i128, ptr %i.an, align 16, !dbg !62498, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !62499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !62414
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !62500, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !62501
  unreachable, !dbg !62501

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !62502 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !62503

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !62420
  store i64 4, ptr %i.ak, align 8, !dbg !62504, !noalias !62420
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !62505, !noalias !62420, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !62506 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !62506 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !62506
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !62507, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 2, !dbg !62508              ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !62508
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !62509, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !62510, !noalias !62420
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62511
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !62512, !noalias !62420
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !62511
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !62511
  store i8 42, ptr %i.am, align 8, !dbg !62511
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62513

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !62514, !noalias !62420
  call void @llvm.experimental.noalias.scope.decl(metadata !62425), !dbg !62515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !62516, !noalias !62426
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !62516, !noalias !62426
  %i.bj = load i64, ptr %i.v, align 8, !dbg !62516, !range !4010, !noalias !62426, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !62517
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !62518
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !62518, !range !3948, !noalias !62426, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !62518 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !62517, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !62519, !noalias !62426
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !62520, !noalias !62426
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !62521, !noalias !62420
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62522
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !62523, !noalias !62420
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !62522
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !62522
  store i8 42, ptr %i.am, align 8, !dbg !62522
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62524

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !62525

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !62525

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !62526, !noalias !62426, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !62527 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !62527, !noalias !62426
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !62528, !alias.scope !62425, !noalias !62420
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !62528
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !62528, !alias.scope !62425, !noalias !62420
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !62528
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !62528, !alias.scope !62425, !noalias !62420
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !62529   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !62530, !noalias !62420
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !62530, !noalias !62420
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !62531, !noalias !62420, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !62532       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !62532, !noalias !62420
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !62533
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !62533, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !62534, !noalias !62420

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !62535, !noalias !62420
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !62536
  %i.cb = lshr i64 %i.ca, 3, !dbg !62537          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !62538, !noalias !62432
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !62538, !noalias !62420

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !62538, !range !4010, !noalias !62432, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !62539
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !62540
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !62540, !range !3948, !noalias !62432, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !62540 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !62539, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !62541, !noalias !62432
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !62542, !noalias !62420

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !62542

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !62543, !noalias !62432, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !62544
  call void @llvm.assume(i1 %i.cj), !dbg !62545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !62546, !noalias !62432
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !62547, !noalias !62432
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !62548, !noalias !62420
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !62548
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !62548, !noalias !62420
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !62548
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !62548, !noalias !62420
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !62548
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !62548, !noalias !62420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !62549, !noalias !62420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !62550, !noalias !62420
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !62551, !noalias !62420, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !62552, !noalias !62420
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !62552
  store i64 0, ptr %i.cm, align 8, !dbg !62552, !noalias !62420
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !62552
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !62552, !noalias !62420
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !62553 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !62553, !noalias !62420, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !62553
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !62554
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !62555, !noalias !62420

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !62556

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !62557, !noalias !62420
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !62558, !noalias !62420 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !62558
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !62558, !noalias !62420 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !62558
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !62558, !noalias !62420 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !62558
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !62558, !noalias !62420 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !62558
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !62558, !noalias !62420
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !62558
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !62558, !noalias !62420
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !62558
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !62558, !noalias !62420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !62559, !noalias !62420
  %.not.i.i.i = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i, null
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not166.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  %i.cw = shl nuw i64 %3, 2, !dbg !62560
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !62560

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !62561
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !62561

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !62562
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !62563

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !62562
  %i.df = add i64 %i.de, %i.bt, !dbg !62562
end_hunk_2
begin_hunk_3_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynfECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !62671, !noalias !62420

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62672, !noalias !62420
  unreachable, !dbg !62672

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !62673, !noalias !62420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !62674, !noalias !62420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !62675, !noalias !62420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !62675, !noalias !62420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !62675, !noalias !62420
  call void @llvm.experimental.noalias.scope.decl(metadata !62453), !dbg !62676
  call void @llvm.experimental.noalias.scope.decl(metadata !62454), !dbg !62676
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !62677, !noalias !62455 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !62678
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !62678

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !62679, !alias.scope !62453, !noalias !62456
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !62680, !noalias !62455

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !62681, !noalias !62455

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62680, !noalias !62455
  unreachable, !dbg !62680

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !62682, !noalias !62420

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !62683, !noalias !62420

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !62684
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !62684, !alias.scope !62454, !noalias !62455, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !62685, !alias.scope !62453, !noalias !62456
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !62685
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !62685, !alias.scope !62453, !noalias !62456
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !62685
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !62685, !alias.scope !62453, !noalias !62456
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !62685
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !62685, !alias.scope !62453, !noalias !62456
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !62686

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !62686, !noalias !62455

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62687, !noalias !62455
  unreachable, !dbg !62687

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !62688

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !62689, !noalias !62420
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @75, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !62690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !62688, !noalias !62420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !62688, !noalias !62420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !62556, !noalias !62420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !62691, !noalias !62420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !62525, !noalias !62420
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62692

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @75) #43
          to label %bb.as unwind label %bb.ar, !dbg !62688, !noalias !62420

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62693, !noalias !62420
  unreachable, !dbg !62693

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !62688, !noalias !62420

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !62586
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !62586, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !62595 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !62596
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !62597
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !62598, !noalias !62420
  %i.kr = call i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !62599
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !62600
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !62601, !noalias !62420
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !62595 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !62596
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !62597
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !62598, !noalias !62420
  %i.kw = call i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !62599
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !62600
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !62601, !noalias !62420
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !62595 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !62596
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !62597
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !62598, !noalias !62420
  %i.lb = call i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !62599
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !62600
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !62601, !noalias !62420
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !62595 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !62596
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !62597
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !62598, !noalias !62420
  %i.lg = call i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !62599
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !62600
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !62601, !noalias !62420
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !62602
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !62603, !llvm.loop !62172

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !62694, !noalias !62420

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !62587
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !62588 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !62589, !noalias !62420, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !62590
  %i.lm = and i8 %i.ll, 7, !dbg !62590
  %i.ln = shl nuw i8 1, %i.lm, !dbg !62590
  %i.lo = xor i8 %i.ln, -1, !dbg !62591
  %i.lp = and i8 %i.lk, %i.lo, !dbg !62592
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !62593, !noalias !62420
  br label %.split.i.backedge, !dbg !62594

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !62556, !noalias !62420

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !62502

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !62525, !noalias !62420

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !62692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !62692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !62692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !62692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !62692
  br label %bb.cr, !dbg !62695

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !62457
  store i64 4, ptr %i.r, align 8, !dbg !62696, !noalias !62457
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !62697, !noalias !62457, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !62698 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !62698 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !62698
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !62699, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 2, !dbg !62700              ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !62700
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !62701, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !62702, !noalias !62457
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62703
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !62704, !noalias !62457
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !62703
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !62703
  store i8 42, ptr %i.am, align 8, !dbg !62703
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62705

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !62706, !noalias !62457
  call void @llvm.experimental.noalias.scope.decl(metadata !62462), !dbg !62707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !62708, !noalias !62463
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !62708, !noalias !62463
  %i.ma = load i64, ptr %i.c, align 8, !dbg !62708, !range !4010, !noalias !62463, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !62709
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !62710
  %i.md = load i64, ptr %i.mc, align 8, !dbg !62710, !range !3948, !noalias !62463, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !62710 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !62709, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !62711, !noalias !62463
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !62712, !noalias !62463
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !62713, !noalias !62457
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62714
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !62715, !noalias !62457
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !62714
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !62714
  store i8 42, ptr %i.am, align 8, !dbg !62714
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62716

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !62717

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !62717

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !62718, !noalias !62463, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !62719, !noalias !62463
  store i64 %i.md, ptr %i.q, align 8, !dbg !62720, !alias.scope !62462, !noalias !62457
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !62720
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !62720, !alias.scope !62462, !noalias !62457
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !62720
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !62720, !alias.scope !62462, !noalias !62457
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !62721   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !62722, !noalias !62457
  store i64 %i.mm, ptr %i.p, align 8, !dbg !62722, !noalias !62457
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !62723, !noalias !62457, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !62724       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !62724, !noalias !62457
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !62725
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !62725, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !62726, !noalias !62457

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !62727, !noalias !62457
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !62728
  %i.mr = lshr i64 %i.mq, 3, !dbg !62729          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !62730, !noalias !62469
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !62730, !noalias !62457

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !62730, !range !4010, !noalias !62469, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !62731
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !62732
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !62732, !range !3948, !noalias !62469, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !62732 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !62731, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !62733, !noalias !62469
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !62734, !noalias !62457

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !62734

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !62735, !noalias !62469, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !62736
  call void @llvm.assume(i1 %i.mz), !dbg !62737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !62738, !noalias !62469
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !62739, !noalias !62469
  store i64 %i.mv, ptr %i.n, align 8, !dbg !62740, !noalias !62457
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !62740
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !62740, !noalias !62457
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !62740
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !62740, !noalias !62457
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !62740
  store i64 %i.mn, ptr %i.na, align 8, !dbg !62740, !noalias !62457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !62741, !noalias !62457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !62742, !noalias !62457
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !62743, !noalias !62457, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !62744, !noalias !62457
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !62744
  store i64 0, ptr %i.nc, align 8, !dbg !62744, !noalias !62457
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !62744
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !62744, !noalias !62457
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !62745 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !62745, !noalias !62457, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !62745
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !62746
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !62747, !noalias !62457

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !62748

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !62749, !noalias !62457
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !62750, !noalias !62457 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !62750
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !62750, !noalias !62457 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !62750
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !62750, !noalias !62457 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !62750
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !62750, !noalias !62457 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !62750
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !62750, !noalias !62457
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !62750
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !62750, !noalias !62457
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !62750
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !62750, !noalias !62457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !62751, !noalias !62457
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !62752
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !62752

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !62752

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !62753 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !62754, !noalias !62470, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !62755, !noalias !62470, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !62756
  call void @llvm.assume(i1 %i.nv), !dbg !62757
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !62758 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !62759, !noalias !62470, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !62760, !noalias !62470, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !62471), !dbg !62761
  call void @llvm.experimental.noalias.scope.decl(metadata !62472), !dbg !62761
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !62762, !alias.scope !62471, !noalias !62473, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !62762
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !62762

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !62763
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !62763, !alias.scope !62471, !noalias !62473, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !62763      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !62764
  call void @llvm.assume(i1 %i.oe), !dbg !62765
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !62766
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !62767
end_hunk_3
begin_hunk_4_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynhECskY9G75ZWc4U_11polars_expr:bb.a
  %eh.lpad-body83137.i = phi { ptr, i32 } [ %lpad.thr_comm.i60, %.body82.thread139.i ], [ %i.py, %bb.cf ], [ %i.pt, %bb.cc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.po, ptr nonnull @69) #43
          to label %bb.ci unwind label %bb.ch, !dbg !63809, !noalias !63413

bb.ch:                                            ; preds = %bb.cm, %.thread110.i, %bb.ci, %.body82.thread.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63814, !noalias !63413
  unreachable, !dbg !63814

bb.ci:                                            ; preds = %.body82.thread.i, %bb.bx, %bb.bu
  %.sroa.040.1.ph.i = phi i1 [ false, %.body82.thread.i ], [ true, %bb.bu ], [ true, %bb.bx ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body83137.i, %.body82.thread.i ], [ %i.pn, %bb.bu ], [ %i.pq, %bb.bx ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.k) #43
          to label %bb.bf unwind label %bb.ch, !dbg !63809, !noalias !63413

bb.cj:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qb = icmp ult i64 %.sroa.21.0.i29, %i.lb, !dbg !63711
  br i1 %i.qb, label %bb.cl, label %.split152.us.i, !dbg !63711, !prof !3923

bb.ck:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qc = mul i64 %.sroa.21.0.i29, %3, !dbg !63720
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.qc, !dbg !63721
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr nonnull align 1 %i.pa, i64 %3, i1 false), !dbg !63722, !noalias !63413
  br label %.split.i28.backedge, !dbg !63723

.split152.us.i:                                   ; preds = %bb.cj, %bb.bi
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bd unwind label %.loopexit.split-lp.i12, !dbg !63815, !noalias !63413

bb.cl:                                            ; preds = %bb.cj
  %i.qe = lshr i64 %.sroa.21.0.i29, 3, !dbg !63712
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.qe, !dbg !63713 ; 2 uses
  %i.qg = load i8, ptr %i.qf, align 1, !dbg !63714, !noalias !63413, !noundef !3817
  %i.qh = trunc i64 %.sroa.21.0.i29 to i8, !dbg !63715
  %i.qi = and i8 %i.qh, 7, !dbg !63715
  %i.qj = shl nuw i8 1, %i.qi, !dbg !63715
  %i.qk = xor i8 %i.qj, -1, !dbg !63716
  %i.ql = and i8 %i.qg, %i.qk, !dbg !63717
  store i8 %i.ql, ptr %i.qf, align 1, !dbg !63718, !noalias !63413
  br label %.split.i28.backedge, !dbg !63719

.split.i28.backedge:                              ; preds = %bb.cl, %bb.ck
  br label %.split.i28, !dbg !63724

.thread110.i:                                     ; preds = %bb.br, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bf
  %.pn66115.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bf ], [ %i.pi, %bb.br ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1114.i = phi i1 [ false, %bb.bf ], [ true, %bb.br ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.m) #43
          to label %bb.ay unwind label %bb.ch, !dbg !63682, !noalias !63413

bb.cm:                                            ; preds = %.thread.i8, %bb.ay
  %.pn68109.i = phi { ptr, i32 } [ %i.kx, %.thread.i8 ], [ %.pn66115.i, %bb.ay ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.p) #43
          to label %common.resume unwind label %bb.ch, !dbg !63652, !noalias !63413

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ax, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !63813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !63813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !63813
  br label %bb.cn, !dbg !63816

bb.cn:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qm = load i8, ptr %i.ai, align 8, !dbg !63817, !range !4401, !noundef !3817 ; 2 uses
  %i.qn = icmp eq i8 %i.qm, 42, !dbg !63817
  br i1 %i.qn, label %bb.co, label %bb.cp, !dbg !63818

bb.co:                                            ; preds = %bb.cn
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !63819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i64 72, i1 false), !dbg !63820
  br label %bb.ct, !dbg !63821

bb.cp:                                            ; preds = %bb.cn
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !63822
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80, !dbg !63822
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 80, !dbg !63444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !63822
  store i8 %i.qm, ptr %i.ak, align 8, !dbg !63444
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !63444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !63444
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !63823, !noalias !63445
  %i.qp = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !63824, !noalias !63445 ; 3 uses
  %i.qq = icmp eq ptr %i.qp, null, !dbg !63825
  br i1 %i.qq, label %bb.cq, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !63826, !prof !3850

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cr, !dbg !63827

.noexc:                                           ; preds = %bb.cq
  unreachable, !dbg !63827

bb.cr:                                            ; preds = %bb.cq
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ak) #43
          to label %common.resume unwind label %bb.cs, !dbg !63828

bb.cs:                                            ; preds = %bb.cr
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63829
  unreachable, !dbg !63829

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qp, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !dbg !63830
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !63831
  store ptr %i.qp, ptr %i.qt, align 8, !dbg !63831
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !63831
  store ptr @85, ptr %i.qu, align 8, !dbg !63831
  store i64 18, ptr %0, align 8, !dbg !63831
  br label %bb.ct, !dbg !63821

bb.ct:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.co
  ret void, !dbg !63821
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !63832 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 16               ; 5 uses
  %i.f = alloca [72 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 16               ; 5 uses
  %i.y = alloca [72 x i8], align 16               ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 18 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !64440
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !64440, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !64441 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !64441 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !64441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !64360
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !64442
  %i.av = load ptr, ptr %i.au, align 8, !dbg !64442, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !64443
  %i.aw = load i128, ptr %i.an, align 16, !dbg !64444, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !64445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !64360
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !64446, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !64447
  unreachable, !dbg !64447

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !64448 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !64449

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !64366
  store i64 4, ptr %i.ak, align 8, !dbg !64450, !noalias !64366
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !64451, !noalias !64366, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !64452 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !64452 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !64452
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !64453, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 2, !dbg !64454              ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !64454
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !64455, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !64456, !noalias !64366
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64457
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !64458, !noalias !64366
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !64457
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !64457
  store i8 42, ptr %i.am, align 8, !dbg !64457
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64459

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !64460, !noalias !64366
  call void @llvm.experimental.noalias.scope.decl(metadata !64371), !dbg !64461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !64462, !noalias !64372
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !64462, !noalias !64372
  %i.bj = load i64, ptr %i.v, align 8, !dbg !64462, !range !4010, !noalias !64372, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !64463
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !64464
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !64464, !range !3948, !noalias !64372, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !64464 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !64463, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !64465, !noalias !64372
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !64466, !noalias !64372
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !64467, !noalias !64366
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64468
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !64469, !noalias !64366
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !64468
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !64468
  store i8 42, ptr %i.am, align 8, !dbg !64468
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64470

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !64471

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !64471

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !64472, !noalias !64372, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !64473 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !64473, !noalias !64372
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !64474, !alias.scope !64371, !noalias !64366
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !64474
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !64474, !alias.scope !64371, !noalias !64366
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !64474
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !64474, !alias.scope !64371, !noalias !64366
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !64475   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !64476, !noalias !64366
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !64476, !noalias !64366
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !64477, !noalias !64366, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !64478       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !64478, !noalias !64366
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !64479
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !64479, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !64480, !noalias !64366

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !64481, !noalias !64366
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !64482
  %i.cb = lshr i64 %i.ca, 3, !dbg !64483          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !64484, !noalias !64378
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !64484, !noalias !64366

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !64484, !range !4010, !noalias !64378, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !64485
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !64486
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !64486, !range !3948, !noalias !64378, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !64486 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !64485, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !64487, !noalias !64378
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !64488, !noalias !64366

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !64488

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !64489, !noalias !64378, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !64490
  call void @llvm.assume(i1 %i.cj), !dbg !64491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !64492, !noalias !64378
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !64493, !noalias !64378
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !64494, !noalias !64366
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !64494
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !64494, !noalias !64366
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !64494
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !64494, !noalias !64366
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !64494
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !64494, !noalias !64366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !64495, !noalias !64366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !64496, !noalias !64366
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !64497, !noalias !64366, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !64498, !noalias !64366
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !64498
  store i64 0, ptr %i.cm, align 8, !dbg !64498, !noalias !64366
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !64498
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !64498, !noalias !64366
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !64499 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !64499, !noalias !64366, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !64499
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !64500
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !64501, !noalias !64366

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !64502

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !64503, !noalias !64366
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !64504, !noalias !64366 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !64504
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !64504, !noalias !64366 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !64504
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !64504, !noalias !64366 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !64504
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !64504, !noalias !64366 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !64504
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !64504, !noalias !64366
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !64504
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !64504, !noalias !64366
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !64504
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !64504, !noalias !64366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !64505, !noalias !64366
  %.not.i.i.i = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i, null
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not166.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  %i.cw = shl nuw i64 %3, 2, !dbg !64506
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !64506

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !64507
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !64507

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !64508
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !64509

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !64508
  %i.df = add i64 %i.de, %i.bt, !dbg !64508
end_hunk_4
begin_hunk_5_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !64617, !noalias !64366

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64618, !noalias !64366
  unreachable, !dbg !64618

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !64619, !noalias !64366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !64620, !noalias !64366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !64621, !noalias !64366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !64621, !noalias !64366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !64621, !noalias !64366
  call void @llvm.experimental.noalias.scope.decl(metadata !64399), !dbg !64622
  call void @llvm.experimental.noalias.scope.decl(metadata !64400), !dbg !64622
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !64623, !noalias !64401 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !64624
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !64624

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !64625, !alias.scope !64399, !noalias !64402
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !64626, !noalias !64401

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !64627, !noalias !64401

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64626, !noalias !64401
  unreachable, !dbg !64626

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !64628, !noalias !64366

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !64629, !noalias !64366

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !64630
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !64630, !alias.scope !64400, !noalias !64401, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !64631, !alias.scope !64399, !noalias !64402
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !64631
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !64631, !alias.scope !64399, !noalias !64402
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !64631
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !64631, !alias.scope !64399, !noalias !64402
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !64631
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !64631, !alias.scope !64399, !noalias !64402
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !64632

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !64632, !noalias !64401

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64633, !noalias !64401
  unreachable, !dbg !64633

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !64634

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !64635, !noalias !64366
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @66, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !64636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !64634, !noalias !64366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !64634, !noalias !64366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !64502, !noalias !64366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !64637, !noalias !64366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !64471, !noalias !64366
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64638

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @66) #43
          to label %bb.as unwind label %bb.ar, !dbg !64634, !noalias !64366

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64639, !noalias !64366
  unreachable, !dbg !64639

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !64634, !noalias !64366

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !64532
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !64532, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !64541 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !64542
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !64543
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !64544, !noalias !64366
  %i.kr = call noundef i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !64545
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !64546
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !64547, !noalias !64366
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !64541 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !64542
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !64543
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !64544, !noalias !64366
  %i.kw = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !64545
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !64546
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !64547, !noalias !64366
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !64541 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !64542
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !64543
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !64544, !noalias !64366
  %i.lb = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !64545
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !64546
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !64547, !noalias !64366
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !64541 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !64542
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !64543
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !64544, !noalias !64366
  %i.lg = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !64545
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !64546
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !64547, !noalias !64366
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !64548
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !64549, !llvm.loop !64118

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !64640, !noalias !64366

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !64533
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !64534 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !64535, !noalias !64366, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !64536
  %i.lm = and i8 %i.ll, 7, !dbg !64536
  %i.ln = shl nuw i8 1, %i.lm, !dbg !64536
  %i.lo = xor i8 %i.ln, -1, !dbg !64537
  %i.lp = and i8 %i.lk, %i.lo, !dbg !64538
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !64539, !noalias !64366
  br label %.split.i.backedge, !dbg !64540

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !64502, !noalias !64366

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !64448

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !64471, !noalias !64366

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !64638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !64638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !64638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !64638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !64638
  br label %bb.cr, !dbg !64641

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !64403
  store i64 4, ptr %i.r, align 8, !dbg !64642, !noalias !64403
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !64643, !noalias !64403, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !64644 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !64644 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !64644
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !64645, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 2, !dbg !64646              ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !64646
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !64647, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !64648, !noalias !64403
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64649
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !64650, !noalias !64403
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !64649
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !64649
  store i8 42, ptr %i.am, align 8, !dbg !64649
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64651

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !64652, !noalias !64403
  call void @llvm.experimental.noalias.scope.decl(metadata !64408), !dbg !64653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !64654, !noalias !64409
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !64654, !noalias !64409
  %i.ma = load i64, ptr %i.c, align 8, !dbg !64654, !range !4010, !noalias !64409, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !64655
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !64656
  %i.md = load i64, ptr %i.mc, align 8, !dbg !64656, !range !3948, !noalias !64409, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !64656 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !64655, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !64657, !noalias !64409
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !64658, !noalias !64409
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !64659, !noalias !64403
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64660
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !64661, !noalias !64403
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !64660
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !64660
  store i8 42, ptr %i.am, align 8, !dbg !64660
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64662

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !64663

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !64663

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !64664, !noalias !64409, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !64665, !noalias !64409
  store i64 %i.md, ptr %i.q, align 8, !dbg !64666, !alias.scope !64408, !noalias !64403
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !64666
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !64666, !alias.scope !64408, !noalias !64403
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !64666
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !64666, !alias.scope !64408, !noalias !64403
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !64667   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !64668, !noalias !64403
  store i64 %i.mm, ptr %i.p, align 8, !dbg !64668, !noalias !64403
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !64669, !noalias !64403, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !64670       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !64670, !noalias !64403
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !64671
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !64671, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !64672, !noalias !64403

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !64673, !noalias !64403
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !64674
  %i.mr = lshr i64 %i.mq, 3, !dbg !64675          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !64676, !noalias !64415
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !64676, !noalias !64403

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !64676, !range !4010, !noalias !64415, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !64677
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !64678
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !64678, !range !3948, !noalias !64415, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !64678 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !64677, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !64679, !noalias !64415
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !64680, !noalias !64403

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !64680

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !64681, !noalias !64415, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !64682
  call void @llvm.assume(i1 %i.mz), !dbg !64683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64684, !noalias !64415
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !64685, !noalias !64415
  store i64 %i.mv, ptr %i.n, align 8, !dbg !64686, !noalias !64403
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !64686
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !64686, !noalias !64403
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !64686
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !64686, !noalias !64403
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !64686
  store i64 %i.mn, ptr %i.na, align 8, !dbg !64686, !noalias !64403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !64687, !noalias !64403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !64688, !noalias !64403
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !64689, !noalias !64403, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !64690, !noalias !64403
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !64690
  store i64 0, ptr %i.nc, align 8, !dbg !64690, !noalias !64403
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !64690
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !64690, !noalias !64403
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !64691 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !64691, !noalias !64403, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !64691
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !64692
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !64693, !noalias !64403

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !64694

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !64695, !noalias !64403
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !64696, !noalias !64403 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !64696
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !64696, !noalias !64403 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !64696
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !64696, !noalias !64403 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !64696
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !64696, !noalias !64403 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !64696
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !64696, !noalias !64403
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !64696
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !64696, !noalias !64403
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !64696
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !64696, !noalias !64403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !64697, !noalias !64403
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !64698
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !64698

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !64698

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !64699 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !64700, !noalias !64416, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !64701, !noalias !64416, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !64702
  call void @llvm.assume(i1 %i.nv), !dbg !64703
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !64704 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !64705, !noalias !64416, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !64706, !noalias !64416, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !64417), !dbg !64707
  call void @llvm.experimental.noalias.scope.decl(metadata !64418), !dbg !64707
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !64708, !alias.scope !64417, !noalias !64419, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !64708
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !64708

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !64709
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !64709, !alias.scope !64417, !noalias !64419, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !64709      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !64710
  call void @llvm.assume(i1 %i.oe), !dbg !64711
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !64712
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !64713
end_hunk_5
begin_hunk_6_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !64821, !noalias !64403

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64826, !noalias !64403
  unreachable, !dbg !64826

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !64821, !noalias !64403

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !64723
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !64723, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !64732
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !64733
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !64734, !noalias !64403
  br label %.split.i28.backedge, !dbg !64735

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !64827, !noalias !64403

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !64724
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !64725 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !64726, !noalias !64403, !noundef !3817
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !64727
  %i.ru = and i8 %i.rt, 7, !dbg !64727
  %i.rv = shl nuw i8 1, %i.ru, !dbg !64727
  %i.rw = xor i8 %i.rv, -1, !dbg !64728
  %i.rx = and i8 %i.rs, %i.rw, !dbg !64729
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !64730, !noalias !64403
  br label %.split.i28.backedge, !dbg !64731

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !64736

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !64694, !noalias !64403

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !64663, !noalias !64403

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !64825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !64825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !64825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !64825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !64825
  br label %bb.cr, !dbg !64828

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !64829, !range !4401, !noundef !3817 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !64829
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !64830

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !64832
  br label %bb.cx, !dbg !64833

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !64834
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !64834
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !64438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !64834
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !64438
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !64438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !64438
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !64835, !noalias !64439
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !64836, !noalias !64439 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !64837
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !64838, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !64839

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !64839

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !64840

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64841
  unreachable, !dbg !64841

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !64842
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64843
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !64843
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !64843
  store ptr @85, ptr %i.sg, align 8, !dbg !64843
  store i64 18, ptr %0, align 8, !dbg !64843
  br label %bb.cx, !dbg !64833

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !64833
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !64844 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 16               ; 5 uses
  %i.f = alloca [72 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 16               ; 5 uses
  %i.y = alloca [72 x i8], align 16               ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 18 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !65450
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !65450, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !65451 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !65451 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !65451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !65370
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !65452
  %i.av = load ptr, ptr %i.au, align 8, !dbg !65452, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !65453
  %i.aw = load i128, ptr %i.an, align 16, !dbg !65454, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !65455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !65370
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !65456, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !65457
  unreachable, !dbg !65457

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !65458 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !65459

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !65376
  store i64 4, ptr %i.ak, align 8, !dbg !65460, !noalias !65376
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !65461, !noalias !65376, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !65462 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !65462 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !65462
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !65463, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 2, !dbg !65464              ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !65464
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !65465, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !65466, !noalias !65376
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65467
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !65468, !noalias !65376
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !65467
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !65467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !65467
  store i8 42, ptr %i.am, align 8, !dbg !65467
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65469

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !65470, !noalias !65376
  call void @llvm.experimental.noalias.scope.decl(metadata !65381), !dbg !65471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !65472, !noalias !65382
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !65472, !noalias !65382
  %i.bj = load i64, ptr %i.v, align 8, !dbg !65472, !range !4010, !noalias !65382, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !65473
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !65474
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !65474, !range !3948, !noalias !65382, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !65474 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !65473, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !65475, !noalias !65382
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !65476, !noalias !65382
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !65477, !noalias !65376
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65478
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !65479, !noalias !65376
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !65478
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !65478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !65478
  store i8 42, ptr %i.am, align 8, !dbg !65478
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65480

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !65481

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !65481

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !65482, !noalias !65382, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !65483 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !65483, !noalias !65382
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !65484, !alias.scope !65381, !noalias !65376
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !65484
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !65484, !alias.scope !65381, !noalias !65376
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !65484
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !65484, !alias.scope !65381, !noalias !65376
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !65485   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !65486, !noalias !65376
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !65486, !noalias !65376
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !65487, !noalias !65376, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !65488       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !65488, !noalias !65376
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !65489
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !65489, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !65490, !noalias !65376

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !65491, !noalias !65376
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !65492
  %i.cb = lshr i64 %i.ca, 3, !dbg !65493          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !65494, !noalias !65388
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !65494, !noalias !65376

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !65494, !range !4010, !noalias !65388, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !65495
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !65496
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !65496, !range !3948, !noalias !65388, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !65496 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !65495, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !65497, !noalias !65388
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !65498, !noalias !65376

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !65498

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !65499, !noalias !65388, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !65500
  call void @llvm.assume(i1 %i.cj), !dbg !65501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !65502, !noalias !65388
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !65503, !noalias !65388
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !65504, !noalias !65376
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !65504
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !65504, !noalias !65376
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !65504
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !65504, !noalias !65376
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !65504
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !65504, !noalias !65376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !65505, !noalias !65376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !65506, !noalias !65376
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !65507, !noalias !65376, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !65508, !noalias !65376
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !65508
  store i64 0, ptr %i.cm, align 8, !dbg !65508, !noalias !65376
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !65508
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !65508, !noalias !65376
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !65509 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !65509, !noalias !65376, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !65509
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !65510
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !65511, !noalias !65376

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !65512

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !65513, !noalias !65376
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !65514, !noalias !65376 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !65514
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !65514, !noalias !65376 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !65514
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !65514, !noalias !65376 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !65514
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !65514, !noalias !65376 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !65514
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !65514, !noalias !65376
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !65514
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !65514, !noalias !65376
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !65514
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !65514, !noalias !65376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !65515, !noalias !65376
  %.not.i.i.i = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i, null
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not166.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  %i.cw = shl nuw i64 %3, 2, !dbg !65516
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !65516

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !65517
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !65517

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !65518
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !65519

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !65518
  %i.df = add i64 %i.de, %i.bt, !dbg !65518
end_hunk_6
begin_hunk_7_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !65627, !noalias !65376

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65628, !noalias !65376
  unreachable, !dbg !65628

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !65629, !noalias !65376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !65630, !noalias !65376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !65631, !noalias !65376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !65631, !noalias !65376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !65631, !noalias !65376
  call void @llvm.experimental.noalias.scope.decl(metadata !65409), !dbg !65632
  call void @llvm.experimental.noalias.scope.decl(metadata !65410), !dbg !65632
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !65633, !noalias !65411 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !65634
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !65634

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !65635, !alias.scope !65409, !noalias !65412
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !65636, !noalias !65411

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !65637, !noalias !65411

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65636, !noalias !65411
  unreachable, !dbg !65636

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !65638, !noalias !65376

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !65639, !noalias !65376

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !65640
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !65640, !alias.scope !65410, !noalias !65411, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !65641, !alias.scope !65409, !noalias !65412
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !65641
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !65641, !alias.scope !65409, !noalias !65412
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !65641
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !65641, !alias.scope !65409, !noalias !65412
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !65641
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !65641, !alias.scope !65409, !noalias !65412
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !65642

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !65642, !noalias !65411

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65643, !noalias !65411
  unreachable, !dbg !65643

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !65644

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !65645, !noalias !65376
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @71, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !65646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !65644, !noalias !65376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !65644, !noalias !65376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !65512, !noalias !65376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !65647, !noalias !65376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !65481, !noalias !65376
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65648

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @71) #43
          to label %bb.as unwind label %bb.ar, !dbg !65644, !noalias !65376

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65649, !noalias !65376
  unreachable, !dbg !65649

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !65644, !noalias !65376

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !65542
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !65542, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !65551 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !65552
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !65553
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !65554, !noalias !65376
  %i.kr = call noundef i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !65555
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !65556
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !65557, !noalias !65376
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !65551 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !65552
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !65553
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !65554, !noalias !65376
  %i.kw = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !65555
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !65556
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !65557, !noalias !65376
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !65551 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !65552
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !65553
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !65554, !noalias !65376
  %i.lb = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !65555
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !65556
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !65557, !noalias !65376
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !65551 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !65552
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !65553
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !65554, !noalias !65376
  %i.lg = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !65555
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !65556
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !65557, !noalias !65376
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !65558
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !65559, !llvm.loop !65128

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !65650, !noalias !65376

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !65543
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !65544 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !65545, !noalias !65376, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !65546
  %i.lm = and i8 %i.ll, 7, !dbg !65546
  %i.ln = shl nuw i8 1, %i.lm, !dbg !65546
  %i.lo = xor i8 %i.ln, -1, !dbg !65547
  %i.lp = and i8 %i.lk, %i.lo, !dbg !65548
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !65549, !noalias !65376
  br label %.split.i.backedge, !dbg !65550

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !65512, !noalias !65376

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !65458

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !65481, !noalias !65376

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !65648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !65648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !65648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !65648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !65648
  br label %bb.cr, !dbg !65651

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !65413
  store i64 4, ptr %i.r, align 8, !dbg !65652, !noalias !65413
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !65653, !noalias !65413, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !65654 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !65654 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !65654
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !65655, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 2, !dbg !65656              ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !65656
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !65657, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !65658, !noalias !65413
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65659
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !65660, !noalias !65413
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !65659
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !65659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !65659
  store i8 42, ptr %i.am, align 8, !dbg !65659
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65661

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !65662, !noalias !65413
  call void @llvm.experimental.noalias.scope.decl(metadata !65418), !dbg !65663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65664, !noalias !65419
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !65664, !noalias !65419
  %i.ma = load i64, ptr %i.c, align 8, !dbg !65664, !range !4010, !noalias !65419, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !65665
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !65666
  %i.md = load i64, ptr %i.mc, align 8, !dbg !65666, !range !3948, !noalias !65419, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !65666 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !65665, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !65667, !noalias !65419
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !65668, !noalias !65419
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !65669, !noalias !65413
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65670
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !65671, !noalias !65413
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !65670
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !65670
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !65670
  store i8 42, ptr %i.am, align 8, !dbg !65670
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65672

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !65673

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !65673

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !65674, !noalias !65419, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65675, !noalias !65419
  store i64 %i.md, ptr %i.q, align 8, !dbg !65676, !alias.scope !65418, !noalias !65413
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !65676
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !65676, !alias.scope !65418, !noalias !65413
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !65676
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !65676, !alias.scope !65418, !noalias !65413
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !65677   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !65678, !noalias !65413
  store i64 %i.mm, ptr %i.p, align 8, !dbg !65678, !noalias !65413
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !65679, !noalias !65413, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !65680       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !65680, !noalias !65413
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !65681
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !65681, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !65682, !noalias !65413

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !65683, !noalias !65413
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !65684
  %i.mr = lshr i64 %i.mq, 3, !dbg !65685          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !65686, !noalias !65425
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !65686, !noalias !65413

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !65686, !range !4010, !noalias !65425, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !65687
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !65688
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !65688, !range !3948, !noalias !65425, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !65688 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !65687, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !65689, !noalias !65425
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !65690, !noalias !65413

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !65690

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !65691, !noalias !65425, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !65692
  call void @llvm.assume(i1 %i.mz), !dbg !65693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65694, !noalias !65425
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !65695, !noalias !65425
  store i64 %i.mv, ptr %i.n, align 8, !dbg !65696, !noalias !65413
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !65696
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !65696, !noalias !65413
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !65696
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !65696, !noalias !65413
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !65696
  store i64 %i.mn, ptr %i.na, align 8, !dbg !65696, !noalias !65413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !65697, !noalias !65413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !65698, !noalias !65413
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !65699, !noalias !65413, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !65700, !noalias !65413
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !65700
  store i64 0, ptr %i.nc, align 8, !dbg !65700, !noalias !65413
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !65700
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !65700, !noalias !65413
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !65701 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !65701, !noalias !65413, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !65701
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !65702
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !65703, !noalias !65413

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !65704

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65705, !noalias !65413
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !65706, !noalias !65413 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !65706
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !65706, !noalias !65413 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !65706
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !65706, !noalias !65413 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !65706
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !65706, !noalias !65413 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !65706
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !65706, !noalias !65413
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !65706
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !65706, !noalias !65413
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !65706
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !65706, !noalias !65413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !65707, !noalias !65413
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !65708
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !65708

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !65708

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !65709 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !65710, !noalias !65426, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !65711, !noalias !65426, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !65712
  call void @llvm.assume(i1 %i.nv), !dbg !65713
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !65714 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !65715, !noalias !65426, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !65716, !noalias !65426, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !65427), !dbg !65717
  call void @llvm.experimental.noalias.scope.decl(metadata !65428), !dbg !65717
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !65718, !alias.scope !65427, !noalias !65429, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !65718
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !65718

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !65719
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !65719, !alias.scope !65427, !noalias !65429, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !65719      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !65720
  call void @llvm.assume(i1 %i.oe), !dbg !65721
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !65722
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !65723
end_hunk_7
begin_hunk_8_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !65831, !noalias !65413

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65836, !noalias !65413
  unreachable, !dbg !65836

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !65831, !noalias !65413

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !65733
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !65733, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !65742
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !65743
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !65744, !noalias !65413
  br label %.split.i28.backedge, !dbg !65745

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !65837, !noalias !65413

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !65734
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !65735 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !65736, !noalias !65413, !noundef !3817
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !65737
  %i.ru = and i8 %i.rt, 7, !dbg !65737
  %i.rv = shl nuw i8 1, %i.ru, !dbg !65737
  %i.rw = xor i8 %i.rv, -1, !dbg !65738
  %i.rx = and i8 %i.rs, %i.rw, !dbg !65739
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !65740, !noalias !65413
  br label %.split.i28.backedge, !dbg !65741

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !65746

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !65704, !noalias !65413

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !65673, !noalias !65413

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !65835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !65835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !65835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !65835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !65835
  br label %bb.cr, !dbg !65838

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !65839, !range !4401, !noundef !3817 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !65839
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !65840

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !65842
  br label %bb.cx, !dbg !65843

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !65844
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !65844
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !65448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !65844
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !65448
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !65448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !65448
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !65845, !noalias !65449
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !65846, !noalias !65449 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !65847
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !65848, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !65849

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !65849

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !65850

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65851
  unreachable, !dbg !65851

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !65852
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65853
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !65853
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !65853
  store ptr @85, ptr %i.sg, align 8, !dbg !65853
  store i64 18, ptr %0, align 8, !dbg !65853
  br label %bb.cx, !dbg !65843

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !65843
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !65854 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 16               ; 5 uses
  %i.f = alloca [72 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 16               ; 5 uses
  %i.y = alloca [72 x i8], align 16               ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 18 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !66455
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !66455, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !66456 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !66456 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !66456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !66374
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !66457
  %i.av = load ptr, ptr %i.au, align 8, !dbg !66457, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !66458
  %i.aw = load i128, ptr %i.an, align 16, !dbg !66459, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !66460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !66374
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !66461, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !66462
  unreachable, !dbg !66462

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !66463 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !66464

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !66380
  store i64 16, ptr %i.ak, align 8, !dbg !66465, !noalias !66380
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !66466, !noalias !66380, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !66467 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !66467 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !66467
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !66468, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 4, !dbg !66469              ; 4 uses
  %i.bf = icmp ugt i64 %3, 1152921504606846975, !dbg !66469
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !66470, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !66471, !noalias !66380
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66472
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !66473, !noalias !66380
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !66472
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !66472
  store i8 42, ptr %i.am, align 8, !dbg !66472
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66474

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !66475, !noalias !66380
  call void @llvm.experimental.noalias.scope.decl(metadata !66385), !dbg !66476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !66477, !noalias !66386
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !66477, !noalias !66386
  %i.bj = load i64, ptr %i.v, align 8, !dbg !66477, !range !4010, !noalias !66386, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !66478
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !66479
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !66479, !range !3948, !noalias !66386, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !66479 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !66478, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !66480, !noalias !66386
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !66481, !noalias !66386
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !66482, !noalias !66380
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66483
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !66484, !noalias !66380
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !66483
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !66483
  store i8 42, ptr %i.am, align 8, !dbg !66483
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66485

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !66486

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !66486

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !66487, !noalias !66386, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !66488, !noalias !66386
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !66489, !alias.scope !66385, !noalias !66380
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !66489
  store ptr %i.bs, ptr %i.bt, align 8, !dbg !66489, !alias.scope !66385, !noalias !66380
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !66489
  store i64 %i.bc, ptr %i.bu, align 8, !dbg !66489, !alias.scope !66385, !noalias !66380
  %i.bv = shl nuw nsw i64 %i.bc, 4, !dbg !66490   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !66491, !noalias !66380
  store i64 %i.bv, ptr %i.ai, align 8, !dbg !66491, !noalias !66380
  %i.bw = load i64, ptr %i.ay, align 8, !dbg !66492, !noalias !66380, !noundef !3817 ; 6 uses
  %i.bx = mul i64 %i.bw, %i.be, !dbg !66493       ; 2 uses
  store i64 %i.bx, ptr %i.ah, align 8, !dbg !66493, !noalias !66380
  %i.by = icmp eq i64 %i.bv, %i.bx, !dbg !66494
  br i1 %i.by, label %bb.m, label %bb.l, !dbg !66494, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !66495, !noalias !66380

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !66496, !noalias !66380
  %i.bz = call i64 @llvm.uadd.sat.i64(i64 %i.bw, i64 7), !dbg !66497
  %i.ca = lshr i64 %i.bz, 3, !dbg !66498          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !66499, !noalias !66392
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.ca, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !66499, !noalias !66380

.noexc.i:                                         ; preds = %bb.m
  %i.cb = load i64, ptr %i.u, align 8, !dbg !66499, !range !4010, !noalias !66392, !noundef !3817
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !66500
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !66501
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !66501, !range !3948, !noalias !66392, !noundef !3817 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !66501 ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.p, !dbg !66500, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !66502, !noalias !66392
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !66503, !noalias !66380

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !66503

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ch = load ptr, ptr %i.cf, align 8, !dbg !66504, !noalias !66392, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.ci = icmp ule i64 %i.ca, %i.ce, !dbg !66505
  call void @llvm.assume(i1 %i.ci), !dbg !66506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !66507, !noalias !66392
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 -1, i64 %i.ca, i1 false), !dbg !66508, !noalias !66392
  store i64 %i.ce, ptr %i.ag, align 8, !dbg !66509, !noalias !66380
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !66509
  store ptr %i.ch, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !66509, !noalias !66380
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !66509
  store i64 %i.ca, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !66509, !noalias !66380
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !66509
  store i64 %i.bw, ptr %i.cj, align 8, !dbg !66509, !noalias !66380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !66510, !noalias !66380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !66511, !noalias !66380
  %i.ck = load i64, ptr %i.ay, align 8, !dbg !66512, !noalias !66380, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !66513, !noalias !66380
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !66513
  store i64 0, ptr %i.cl, align 8, !dbg !66513, !noalias !66380
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !66513
  store i64 %i.ck, ptr %i.cm, align 8, !dbg !66513, !noalias !66380
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !66514 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !66514, !noalias !66380, !noundef !3817
  %.not.i = icmp eq ptr %i.co, null, !dbg !66514
  %..i = select i1 %.not.i, ptr null, ptr %i.cn, !dbg !66515
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !66516, !noalias !66380

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !66517

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !66518, !noalias !66380
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !66519, !noalias !66380 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !66519
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !66519, !noalias !66380 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !66519
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !66519, !noalias !66380 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !66519
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !66519, !noalias !66380 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !66519
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !66519, !noalias !66380
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !66519
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !66519, !noalias !66380
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !66519
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !66519, !noalias !66380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !66520, !noalias !66380
  %.not.i.i.i = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i, null
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not166.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  %xtraiter = and i64 %3, 1
  %i.cv = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, 1152921504606846974
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod120 = trunc i64 %3 to i1
  br label %.split.i, !dbg !66521

.split.us.i:                                      ; preds = %bb.r
  %i.cw = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !66522
  br i1 %i.cw, label %.loopexit159.i, label %.lr.ph165.i, !dbg !66522

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cx = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %xtraiter122 = and i64 %3, 1
  %i.dc = icmp eq i64 %3, 1
  %unroll_iter125 = and i64 %3, 1152921504606846974
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod124 = trunc i64 %3 to i1
  br label %.lr.ph165.split.us.i, !dbg !66523

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dd, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.dy, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 5 uses
  %i.dd = add nuw i64 %.sroa.795.0.us164.us.i, 1, !dbg !66524 ; 2 uses
  %i.de = load ptr, ptr %i.cy, align 8, !dbg !66525, !noalias !66393, !noundef !3817
  %i.df = load i64, ptr %i.cz, align 8, !dbg !66526, !noalias !66393, !noundef !3817
  %i.dg = icmp ult i64 %.sroa.795.0.us164.us.i, %i.df, !dbg !66527
  call void @llvm.assume(i1 %i.dg), !dbg !66528
end_hunk_8
begin_hunk_9_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.in, label %bb.ag, label %bb.aj, !dbg !66629, !prof !3850

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #40
          to label %.noexc88.i unwind label %bb.ah, !dbg !66630, !noalias !66380

.noexc88.i:                                       ; preds = %bb.ag
  unreachable, !dbg !66630

bb.ah:                                            ; preds = %bb.ag
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !66631, !noalias !66380

bb.ai:                                            ; preds = %bb.ah
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66632, !noalias !66380
  unreachable, !dbg !66632

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.im, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !66633, !noalias !66380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !66634, !noalias !66380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !66635, !noalias !66380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !66635, !noalias !66380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !66635, !noalias !66380
  call void @llvm.experimental.noalias.scope.decl(metadata !66414), !dbg !66636
  call void @llvm.experimental.noalias.scope.decl(metadata !66415), !dbg !66636
  %i.iq = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !66637, !noalias !66416 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.iq, 0, !dbg !66638
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !66638

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !66639, !alias.scope !66414, !noalias !66417
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !66640, !noalias !66416

bb.am:                                            ; preds = %bb.al
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !66641, !noalias !66416

bb.an:                                            ; preds = %bb.am
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66640, !noalias !66416
  unreachable, !dbg !66640

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !66642, !noalias !66380

bb.ao:                                            ; preds = %bb.ak
  %i.it = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !66643, !noalias !66380

.noexc93.i:                                       ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !66644
  %i.iv = load i64, ptr %i.iu, align 8, !dbg !66644, !alias.scope !66415, !noalias !66416, !noundef !3817
  store ptr %i.it, ptr %i.aa, align 8, !dbg !66645, !alias.scope !66414, !noalias !66417
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !66645
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !66645, !alias.scope !66414, !noalias !66417
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !66645
  store i64 %i.iv, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !66645, !alias.scope !66414, !noalias !66417
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !66645
  store i64 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !66645, !alias.scope !66414, !noalias !66417
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !66646

bb.ap:                                            ; preds = %bb.aj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !66646, !noalias !66416

bb.aq:                                            ; preds = %bb.ap
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66647, !noalias !66416
  unreachable, !dbg !66647

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !66648

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !66649, !noalias !66380
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.ik, ptr noundef nonnull %i.im, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @68, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !66650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !66648, !noalias !66380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !66648, !noalias !66380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !66517, !noalias !66380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !66651, !noalias !66380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !66486, !noalias !66380
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66652

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.iw, %bb.ap ], [ %i.ir, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.im, ptr nonnull @68) #43
          to label %bb.as unwind label %bb.ar, !dbg !66648, !noalias !66380

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66653, !noalias !66380
  unreachable, !dbg !66653

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.il, %bb.ae ], [ %i.io, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !66648, !noalias !66380

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.iz = icmp ult i64 %.sroa.21.0.i, %i.bw, !dbg !66547
  br i1 %i.iz, label %bb.au, label %.split162.us.i, !dbg !66547, !prof !3923

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.sroa.065.0160.i = phi i64 [ %i.jf, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ja = or disjoint i64 %.sroa.065.0160.i, 1, !dbg !66556 ; 2 uses
  %i.jb = shl nuw i64 %.sroa.065.0160.i, 4, !dbg !66557
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jb, !dbg !66558
  %.val82.i = load i128, ptr %i.jc, align 1, !dbg !66559, !noalias !66380
  %i.jd = call noundef i128 @llvm.bswap.i128(i128 %.val82.i), !dbg !66560
  %i.je = getelementptr [16 x i8], ptr %i.ia, i64 %.sroa.065.0160.i, !dbg !66561
  store i128 %i.jd, ptr %i.je, align 16, !dbg !66562, !noalias !66380
  %i.jf = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !66556 ; 2 uses
  %i.jg = shl nuw i64 %i.ja, 4, !dbg !66557
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jg, !dbg !66558
  %.val82.i.1 = load i128, ptr %i.jh, align 1, !dbg !66559, !noalias !66380
  %i.ji = call noundef i128 @llvm.bswap.i128(i128 %.val82.i.1), !dbg !66560
  %i.jj = getelementptr [16 x i8], ptr %i.ia, i64 %i.ja, !dbg !66561
  store i128 %i.ji, ptr %i.jj, align 16, !dbg !66562, !noalias !66380
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !66563 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !66563
  br i1 %niter.ncmp.1, label %.split.i.loopexit.unr-lcssa, label %.lr.ph.i.new, !dbg !66563

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !66654, !noalias !66380

bb.au:                                            ; preds = %bb.at
  %i.jk = lshr i64 %.sroa.21.0.i, 3, !dbg !66548
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.jk, !dbg !66549 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !66550, !noalias !66380, !noundef !3817
  %i.jn = trunc i64 %.sroa.21.0.i to i8, !dbg !66551
  %i.jo = and i8 %i.jn, 7, !dbg !66551
  %i.jp = shl nuw i8 1, %i.jo, !dbg !66551
  %i.jq = xor i8 %i.jp, -1, !dbg !66552
  %i.jr = and i8 %i.jm, %i.jq, !dbg !66553
  store i8 %i.jr, ptr %i.jl, align 1, !dbg !66554, !noalias !66380
  br label %.split.i.backedge, !dbg !66555

.split.i.backedge:                                ; preds = %.epil.preheader, %.split.i.loopexit.unr-lcssa, %bb.au, %.preheader.i
  br label %.split.i, !dbg !66521

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ig, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !66517, !noalias !66380

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.qf, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !66463

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !66486, !noalias !66380

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !66652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !66652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !66652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !66652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !66652
  br label %bb.cr, !dbg !66655

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !66418
  store i64 16, ptr %i.r, align 8, !dbg !66656, !noalias !66418
  %i.jt = load i64, ptr %i.ay, align 8, !dbg !66657, !noalias !66418, !noundef !3817 ; 2 uses
  %i.ju = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jt, i64 %3), !dbg !66658 ; 2 uses
  %i.jv = extractvalue { i64, i1 } %i.ju, 0, !dbg !66658 ; 3 uses
  %i.jw = extractvalue { i64, i1 } %i.ju, 1, !dbg !66658
  br i1 %i.jw, label %bb.ay, label %bb.ax, !dbg !66659, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.jx = shl i64 %3, 4, !dbg !66660              ; 7 uses
  %i.jy = icmp ugt i64 %3, 1152921504606846975, !dbg !66660
  br i1 %i.jy, label %bb.bb, label %bb.az, !dbg !66661, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !66662, !noalias !66418
  %i.ka = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66663
  %i.kb = load <2 x i64>, ptr %i.f, align 16, !dbg !66664, !noalias !66418
  store <2 x i64> %i.kb, ptr %i.ka, align 8, !dbg !66663
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.jz, i64 56, i1 false), !dbg !66663
  store i8 42, ptr %i.am, align 8, !dbg !66663
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66665

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !66666, !noalias !66418
  call void @llvm.experimental.noalias.scope.decl(metadata !66423), !dbg !66667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !66668, !noalias !66424
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.jv, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !66668, !noalias !66424
  %i.kc = load i64, ptr %i.c, align 8, !dbg !66668, !range !4010, !noalias !66424, !noundef !3817
  %i.kd = trunc nuw i64 %i.kc to i1, !dbg !66669
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !66670
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !66670, !range !3948, !noalias !66424, !noundef !3817 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !66670 ; 2 uses
  br i1 %i.kd, label %bb.ba, label %bb.bd, !dbg !66669, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !66671, !noalias !66424
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kf, i64 %i.kh) #40, !dbg !66672, !noalias !66424
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !66673, !noalias !66418
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66674
  %i.kj = load <2 x i64>, ptr %i.e, align 16, !dbg !66675, !noalias !66418
  store <2 x i64> %i.kj, ptr %i.ki, align 8, !dbg !66674
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.js, i64 56, i1 false), !dbg !66674
  store i8 42, ptr %i.am, align 8, !dbg !66674
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66676

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !66677

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !66677

bb.bd:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.kg, align 8, !dbg !66678, !noalias !66424, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !66679, !noalias !66424
  store i64 %i.kf, ptr %i.q, align 8, !dbg !66680, !alias.scope !66423, !noalias !66418
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !66680
  store ptr %i.kl, ptr %i.km, align 8, !dbg !66680, !alias.scope !66423, !noalias !66418
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !66680
  store i64 %i.jv, ptr %i.kn, align 8, !dbg !66680, !alias.scope !66423, !noalias !66418
  %i.ko = shl nuw nsw i64 %i.jv, 4, !dbg !66681   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !66682, !noalias !66418
  store i64 %i.ko, ptr %i.p, align 8, !dbg !66682, !noalias !66418
  %i.kp = load i64, ptr %i.ay, align 8, !dbg !66683, !noalias !66418, !noundef !3817 ; 5 uses
  %i.kq = mul i64 %i.kp, %i.jx, !dbg !66684       ; 2 uses
  store i64 %i.kq, ptr %i.o, align 8, !dbg !66684, !noalias !66418
  %i.kr = icmp eq i64 %i.ko, %i.kq, !dbg !66685
  br i1 %i.kr, label %bb.bf, label %bb.be, !dbg !66685, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !66686, !noalias !66418

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !66687, !noalias !66418
  %i.ks = call i64 @llvm.uadd.sat.i64(i64 %i.kp, i64 7), !dbg !66688
  %i.kt = lshr i64 %i.ks, 3, !dbg !66689          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !66690, !noalias !66430
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.kt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !66690, !noalias !66418

.noexc.i9:                                        ; preds = %bb.bf
  %i.ku = load i64, ptr %i.b, align 8, !dbg !66690, !range !4010, !noalias !66430, !noundef !3817
  %i.kv = trunc nuw i64 %i.ku to i1, !dbg !66691
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !66692
  %i.kx = load i64, ptr %i.kw, align 8, !dbg !66692, !range !3948, !noalias !66430, !noundef !3817 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !66692 ; 2 uses
  br i1 %i.kv, label %bb.bg, label %bb.bi, !dbg !66691, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.kz = load i64, ptr %i.ky, align 8, !dbg !66693, !noalias !66430
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kx, i64 %i.kz) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !66694, !noalias !66418

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !66694

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.la = load ptr, ptr %i.ky, align 8, !dbg !66695, !noalias !66430, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.lb = icmp ule i64 %i.kt, %i.kx, !dbg !66696
  call void @llvm.assume(i1 %i.lb), !dbg !66697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !66698, !noalias !66430
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.la, i8 -1, i64 %i.kt, i1 false), !dbg !66699, !noalias !66430
  store i64 %i.kx, ptr %i.n, align 8, !dbg !66700, !noalias !66418
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !66700
  store ptr %i.la, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !66700, !noalias !66418
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !66700
  store i64 %i.kt, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !66700, !noalias !66418
  %i.lc = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !66700
  store i64 %i.kp, ptr %i.lc, align 8, !dbg !66700, !noalias !66418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !66701, !noalias !66418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !66702, !noalias !66418
  %i.ld = load i64, ptr %i.ay, align 8, !dbg !66703, !noalias !66418, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !66704, !noalias !66418
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !66704
  store i64 0, ptr %i.le, align 8, !dbg !66704, !noalias !66418
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !66704
  store i64 %i.ld, ptr %i.lf, align 8, !dbg !66704, !noalias !66418
  %i.lg = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !66705 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !dbg !66705, !noalias !66418, !noundef !3817
  %.not.i10 = icmp eq ptr %i.lh, null, !dbg !66705
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.lg, !dbg !66706
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !66707, !noalias !66418

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !66708

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !66709, !noalias !66418
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !66710, !noalias !66418 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !66710
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !66710, !noalias !66418 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !66710
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !66710, !noalias !66418 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !66710
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !66710, !noalias !66418 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !66710
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !66710, !noalias !66418
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !66710
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !66710, !noalias !66418
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !66710
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !66710, !noalias !66418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !66711, !noalias !66418
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.lo = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !66712
  br i1 %i.lo, label %.loopexit149.i, label %.lr.ph.i71, !dbg !66712

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.lp = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  br label %bb.bl, !dbg !66712

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.lu, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.mp, %bb.bp ] ; 5 uses
  %i.lu = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !66713 ; 2 uses
  %i.lv = load ptr, ptr %i.lq, align 8, !dbg !66714, !noalias !66431, !noundef !3817
  %i.lw = load i64, ptr %i.lr, align 8, !dbg !66715, !noalias !66431, !noundef !3817
  %i.lx = icmp ult i64 %.sroa.786.0.us153.i, %i.lw, !dbg !66716
  call void @llvm.assume(i1 %i.lx), !dbg !66717
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %.sroa.786.0.us153.i, !dbg !66718 ; 4 uses
  %i.lz = load ptr, ptr %i.ls, align 8, !dbg !66719, !noalias !66431, !noundef !3817
  %i.ma = load i64, ptr %i.lt, align 8, !dbg !66720, !noalias !66431, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !66432), !dbg !66721
  call void @llvm.experimental.noalias.scope.decl(metadata !66433), !dbg !66721
  %i.mb = load i32, ptr %i.ly, align 4, !dbg !66722, !alias.scope !66432, !noalias !66434, !noundef !3817 ; 2 uses
  %i.mc = icmp ult i32 %i.mb, 13, !dbg !66722
  br i1 %i.mc, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !66722

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 8, !dbg !66723
  %i.me = load i32, ptr %i.md, align 4, !dbg !66723, !alias.scope !66432, !noalias !66434, !noundef !3817
  %i.mf = zext i32 %i.me to i64, !dbg !66723      ; 2 uses
  %i.mg = icmp samesign ugt i64 %i.ma, %i.mf, !dbg !66724
  call void @llvm.assume(i1 %i.mg), !dbg !66725
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.mf, !dbg !66726
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 12, !dbg !66727
end_hunk_9
begin_hunk_10_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !66835, !noalias !66418

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66840, !noalias !66418
  unreachable, !dbg !66840

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.pb, %bb.by ], [ %i.pe, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !66835, !noalias !66418

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.pp = icmp ult i64 %.sroa.21.0.i29, %i.kp, !dbg !66737
  br i1 %i.pp, label %bb.cp, label %.split151.us.i, !dbg !66737, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.pq = mul i64 %.sroa.21.0.i29, %i.jx, !dbg !66746
  %i.pr = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.pq, !dbg !66747
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pr, ptr nonnull align 1 %i.oo, i64 %i.jx, i1 false), !dbg !66748, !noalias !66418
  br label %.split.i28.backedge, !dbg !66749

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !66841, !noalias !66418

bb.cp:                                            ; preds = %bb.cn
  %i.ps = lshr i64 %.sroa.21.0.i29, 3, !dbg !66738
  %i.pt = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ps, !dbg !66739 ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !dbg !66740, !noalias !66418, !noundef !3817
  %i.pv = trunc i64 %.sroa.21.0.i29 to i8, !dbg !66741
  %i.pw = and i8 %i.pv, 7, !dbg !66741
  %i.px = shl nuw i8 1, %i.pw, !dbg !66741
  %i.py = xor i8 %i.px, -1, !dbg !66742
  %i.pz = and i8 %i.pu, %i.py, !dbg !66743
  store i8 %i.pz, ptr %i.pt, align 1, !dbg !66744, !noalias !66418
  br label %.split.i28.backedge, !dbg !66745

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !66750

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.ow, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !66708, !noalias !66418

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.kk, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !66677, !noalias !66418

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !66839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !66839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !66839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !66839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !66839
  br label %bb.cr, !dbg !66842

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qa = load i8, ptr %i.am, align 8, !dbg !66843, !range !4401, !noundef !3817 ; 2 uses
  %i.qb = icmp eq i8 %i.qa, 42, !dbg !66843
  br i1 %i.qb, label %bb.cs, label %bb.ct, !dbg !66844

bb.cs:                                            ; preds = %bb.cr
  %i.qc = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qc, i64 72, i1 false), !dbg !66846
  br label %bb.cx, !dbg !66847

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !66848
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !66848
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !66453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !66848
  store i8 %i.qa, ptr %i.ao, align 8, !dbg !66453
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !66453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !66453
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !66849, !noalias !66454
  %i.qd = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !66850, !noalias !66454 ; 3 uses
  %i.qe = icmp eq ptr %i.qd, null, !dbg !66851
  br i1 %i.qe, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !66852, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !66853

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !66853

bb.cv:                                            ; preds = %bb.cu
  %i.qf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !66854

bb.cw:                                            ; preds = %bb.cv
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66855
  unreachable, !dbg !66855

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qd, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !66856
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !66857
  store ptr %i.qd, ptr %i.qh, align 8, !dbg !66857
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !66857
  store ptr @85, ptr %i.qi, align 8, !dbg !66857
  store i64 18, ptr %0, align 8, !dbg !66857
  br label %bb.cx, !dbg !66847

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !66847
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynoECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !66858 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 16               ; 5 uses
  %i.f = alloca [72 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 16               ; 5 uses
  %i.y = alloca [72 x i8], align 16               ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 18 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !67456
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !67456, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !67457 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !67457 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !67457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !67376
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !67458
  %i.av = load ptr, ptr %i.au, align 8, !dbg !67458, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !67459
  %i.aw = load i128, ptr %i.an, align 16, !dbg !67460, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !67461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !67376
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !67462, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !67463
  unreachable, !dbg !67463

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !67464 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !67465

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !67382
  store i64 16, ptr %i.ak, align 8, !dbg !67466, !noalias !67382
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !67467, !noalias !67382, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !67468 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !67468 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !67468
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !67469, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 4, !dbg !67470              ; 4 uses
  %i.bf = icmp ugt i64 %3, 1152921504606846975, !dbg !67470
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !67471, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !67472, !noalias !67382
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67473
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !67474, !noalias !67382
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !67473
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !67473
  store i8 42, ptr %i.am, align 8, !dbg !67473
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67475

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !67476, !noalias !67382
  call void @llvm.experimental.noalias.scope.decl(metadata !67387), !dbg !67477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !67478, !noalias !67388
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !67478, !noalias !67388
  %i.bj = load i64, ptr %i.v, align 8, !dbg !67478, !range !4010, !noalias !67388, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !67479
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !67480
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !67480, !range !3948, !noalias !67388, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !67480 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !67479, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !67481, !noalias !67388
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !67482, !noalias !67388
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !67483, !noalias !67382
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67484
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !67485, !noalias !67382
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !67484
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !67484
  store i8 42, ptr %i.am, align 8, !dbg !67484
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67486

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !67487

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !67487

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !67488, !noalias !67388, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !67489, !noalias !67388
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !67490, !alias.scope !67387, !noalias !67382
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !67490
  store ptr %i.bs, ptr %i.bt, align 8, !dbg !67490, !alias.scope !67387, !noalias !67382
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !67490
  store i64 %i.bc, ptr %i.bu, align 8, !dbg !67490, !alias.scope !67387, !noalias !67382
  %i.bv = shl nuw nsw i64 %i.bc, 4, !dbg !67491   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !67492, !noalias !67382
  store i64 %i.bv, ptr %i.ai, align 8, !dbg !67492, !noalias !67382
  %i.bw = load i64, ptr %i.ay, align 8, !dbg !67493, !noalias !67382, !noundef !3817 ; 6 uses
  %i.bx = mul i64 %i.bw, %i.be, !dbg !67494       ; 2 uses
  store i64 %i.bx, ptr %i.ah, align 8, !dbg !67494, !noalias !67382
  %i.by = icmp eq i64 %i.bv, %i.bx, !dbg !67495
  br i1 %i.by, label %bb.m, label %bb.l, !dbg !67495, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !67496, !noalias !67382

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !67497, !noalias !67382
  %i.bz = call i64 @llvm.uadd.sat.i64(i64 %i.bw, i64 7), !dbg !67498
  %i.ca = lshr i64 %i.bz, 3, !dbg !67499          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !67500, !noalias !67394
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.ca, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !67500, !noalias !67382

.noexc.i:                                         ; preds = %bb.m
  %i.cb = load i64, ptr %i.u, align 8, !dbg !67500, !range !4010, !noalias !67394, !noundef !3817
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !67501
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !67502
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !67502, !range !3948, !noalias !67394, !noundef !3817 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !67502 ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.p, !dbg !67501, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !67503, !noalias !67394
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !67504, !noalias !67382

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !67504

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ch = load ptr, ptr %i.cf, align 8, !dbg !67505, !noalias !67394, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.ci = icmp ule i64 %i.ca, %i.ce, !dbg !67506
  call void @llvm.assume(i1 %i.ci), !dbg !67507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !67508, !noalias !67394
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 -1, i64 %i.ca, i1 false), !dbg !67509, !noalias !67394
  store i64 %i.ce, ptr %i.ag, align 8, !dbg !67510, !noalias !67382
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !67510
  store ptr %i.ch, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !67510, !noalias !67382
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !67510
  store i64 %i.ca, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !67510, !noalias !67382
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !67510
  store i64 %i.bw, ptr %i.cj, align 8, !dbg !67510, !noalias !67382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !67511, !noalias !67382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !67512, !noalias !67382
  %i.ck = load i64, ptr %i.ay, align 8, !dbg !67513, !noalias !67382, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !67514, !noalias !67382
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !67514
  store i64 0, ptr %i.cl, align 8, !dbg !67514, !noalias !67382
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !67514
  store i64 %i.ck, ptr %i.cm, align 8, !dbg !67514, !noalias !67382
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !67515 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !67515, !noalias !67382, !noundef !3817
  %.not.i = icmp eq ptr %i.co, null, !dbg !67515
  %..i = select i1 %.not.i, ptr null, ptr %i.cn, !dbg !67516
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !67517, !noalias !67382

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !67518

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !67519, !noalias !67382
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !67520, !noalias !67382 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !67520
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !67520, !noalias !67382 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !67520
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !67520, !noalias !67382 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !67520
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !67520, !noalias !67382 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !67520
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !67520, !noalias !67382
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !67520
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !67520, !noalias !67382
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !67520
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !67520, !noalias !67382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !67521, !noalias !67382
  %.not.i.i.i = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i, null
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 72
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not166.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  %xtraiter = and i64 %3, 1
  %i.cv = icmp eq i64 %3, 1
  %unroll_iter = and i64 %3, 1152921504606846974
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod120 = trunc i64 %3 to i1
  br label %.split.i, !dbg !67522

.split.us.i:                                      ; preds = %bb.r
  %i.cw = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !67523
  br i1 %i.cw, label %.loopexit159.i, label %.lr.ph165.i, !dbg !67523

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cx = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 48 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %xtraiter122 = and i64 %3, 1
  %i.dc = icmp eq i64 %3, 1
  %unroll_iter125 = and i64 %3, 1152921504606846974
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod124 = trunc i64 %3 to i1
  br label %.lr.ph165.split.us.i, !dbg !67524

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dd, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.dy, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 5 uses
  %i.dd = add nuw i64 %.sroa.795.0.us164.us.i, 1, !dbg !67525 ; 2 uses
  %i.de = load ptr, ptr %i.cy, align 8, !dbg !67526, !noalias !67395, !noundef !3817
  %i.df = load i64, ptr %i.cz, align 8, !dbg !67527, !noalias !67395, !noundef !3817
  %i.dg = icmp ult i64 %.sroa.795.0.us164.us.i, %i.df, !dbg !67528
  call void @llvm.assume(i1 %i.dg), !dbg !67529
end_hunk_10
begin_hunk_11_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynoECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.in, label %bb.ag, label %bb.aj, !dbg !67630, !prof !3850

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #40
          to label %.noexc88.i unwind label %bb.ah, !dbg !67631, !noalias !67382

.noexc88.i:                                       ; preds = %bb.ag
  unreachable, !dbg !67631

bb.ah:                                            ; preds = %bb.ag
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !67632, !noalias !67382

bb.ai:                                            ; preds = %bb.ah
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67633, !noalias !67382
  unreachable, !dbg !67633

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.im, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !67634, !noalias !67382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !67635, !noalias !67382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !67636, !noalias !67382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !67636, !noalias !67382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !67636, !noalias !67382
  call void @llvm.experimental.noalias.scope.decl(metadata !67415), !dbg !67637
  call void @llvm.experimental.noalias.scope.decl(metadata !67416), !dbg !67637
  %i.iq = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !67638, !noalias !67417 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.iq, 0, !dbg !67639
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !67639

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !67640, !alias.scope !67415, !noalias !67418
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !67641, !noalias !67417

bb.am:                                            ; preds = %bb.al
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !67642, !noalias !67417

bb.an:                                            ; preds = %bb.am
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67641, !noalias !67417
  unreachable, !dbg !67641

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !67643, !noalias !67382

bb.ao:                                            ; preds = %bb.ak
  %i.it = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !67644, !noalias !67382

.noexc93.i:                                       ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !67645
  %i.iv = load i64, ptr %i.iu, align 8, !dbg !67645, !alias.scope !67416, !noalias !67417, !noundef !3817
  store ptr %i.it, ptr %i.aa, align 8, !dbg !67646, !alias.scope !67415, !noalias !67418
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !67646
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !67646, !alias.scope !67415, !noalias !67418
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !67646
  store i64 %i.iv, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !67646, !alias.scope !67415, !noalias !67418
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !67646
  store i64 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !67646, !alias.scope !67415, !noalias !67418
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !67647

bb.ap:                                            ; preds = %bb.aj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !67647, !noalias !67417

bb.aq:                                            ; preds = %bb.ap
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67648, !noalias !67417
  unreachable, !dbg !67648

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !67649

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !67650, !noalias !67382
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.ik, ptr noundef nonnull %i.im, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @73, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !67651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !67649, !noalias !67382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !67649, !noalias !67382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !67518, !noalias !67382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !67652, !noalias !67382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !67487, !noalias !67382
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67653

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.iw, %bb.ap ], [ %i.ir, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.im, ptr nonnull @73) #43
          to label %bb.as unwind label %bb.ar, !dbg !67649, !noalias !67382

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67654, !noalias !67382
  unreachable, !dbg !67654

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.il, %bb.ae ], [ %i.io, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !67649, !noalias !67382

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.iz = icmp ult i64 %.sroa.21.0.i, %i.bw, !dbg !67548
  br i1 %i.iz, label %bb.au, label %.split162.us.i, !dbg !67548, !prof !3923

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.sroa.065.0160.i = phi i64 [ %i.jf, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ja = or disjoint i64 %.sroa.065.0160.i, 1, !dbg !67557 ; 2 uses
  %i.jb = shl nuw i64 %.sroa.065.0160.i, 4, !dbg !67558
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jb, !dbg !67559
  %.val82.i = load i128, ptr %i.jc, align 1, !dbg !67560, !noalias !67382
  %i.jd = call noundef i128 @llvm.bswap.i128(i128 %.val82.i), !dbg !67561
  %i.je = getelementptr [16 x i8], ptr %i.ia, i64 %.sroa.065.0160.i, !dbg !67562
  store i128 %i.jd, ptr %i.je, align 16, !dbg !67563, !noalias !67382
  %i.jf = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !67557 ; 2 uses
  %i.jg = shl nuw i64 %i.ja, 4, !dbg !67558
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jg, !dbg !67559
  %.val82.i.1 = load i128, ptr %i.jh, align 1, !dbg !67560, !noalias !67382
  %i.ji = call noundef i128 @llvm.bswap.i128(i128 %.val82.i.1), !dbg !67561
  %i.jj = getelementptr [16 x i8], ptr %i.ia, i64 %i.ja, !dbg !67562
  store i128 %i.ji, ptr %i.jj, align 16, !dbg !67563, !noalias !67382
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !67564 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !67564
  br i1 %niter.ncmp.1, label %.split.i.loopexit.unr-lcssa, label %.lr.ph.i.new, !dbg !67564

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !67655, !noalias !67382

bb.au:                                            ; preds = %bb.at
  %i.jk = lshr i64 %.sroa.21.0.i, 3, !dbg !67549
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.jk, !dbg !67550 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !67551, !noalias !67382, !noundef !3817
  %i.jn = trunc i64 %.sroa.21.0.i to i8, !dbg !67552
  %i.jo = and i8 %i.jn, 7, !dbg !67552
  %i.jp = shl nuw i8 1, %i.jo, !dbg !67552
  %i.jq = xor i8 %i.jp, -1, !dbg !67553
  %i.jr = and i8 %i.jm, %i.jq, !dbg !67554
  store i8 %i.jr, ptr %i.jl, align 1, !dbg !67555, !noalias !67382
  br label %.split.i.backedge, !dbg !67556

.split.i.backedge:                                ; preds = %.epil.preheader, %.split.i.loopexit.unr-lcssa, %bb.au, %.preheader.i
  br label %.split.i, !dbg !67522

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ig, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !67518, !noalias !67382

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.qf, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !67464

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !67487, !noalias !67382

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !67653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !67653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !67653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !67653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !67653
  br label %bb.cr, !dbg !67656

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !67419
  store i64 16, ptr %i.r, align 8, !dbg !67657, !noalias !67419
  %i.jt = load i64, ptr %i.ay, align 8, !dbg !67658, !noalias !67419, !noundef !3817 ; 2 uses
  %i.ju = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jt, i64 %3), !dbg !67659 ; 2 uses
  %i.jv = extractvalue { i64, i1 } %i.ju, 0, !dbg !67659 ; 3 uses
  %i.jw = extractvalue { i64, i1 } %i.ju, 1, !dbg !67659
  br i1 %i.jw, label %bb.ay, label %bb.ax, !dbg !67660, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.jx = shl i64 %3, 4, !dbg !67661              ; 7 uses
  %i.jy = icmp ugt i64 %3, 1152921504606846975, !dbg !67661
  br i1 %i.jy, label %bb.bb, label %bb.az, !dbg !67662, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !67663, !noalias !67419
  %i.ka = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67664
  %i.kb = load <2 x i64>, ptr %i.f, align 16, !dbg !67665, !noalias !67419
  store <2 x i64> %i.kb, ptr %i.ka, align 8, !dbg !67664
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.jz, i64 56, i1 false), !dbg !67664
  store i8 42, ptr %i.am, align 8, !dbg !67664
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67666

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !67667, !noalias !67419
  call void @llvm.experimental.noalias.scope.decl(metadata !67424), !dbg !67668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !67669, !noalias !67425
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.jv, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !67669, !noalias !67425
  %i.kc = load i64, ptr %i.c, align 8, !dbg !67669, !range !4010, !noalias !67425, !noundef !3817
  %i.kd = trunc nuw i64 %i.kc to i1, !dbg !67670
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !67671
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !67671, !range !3948, !noalias !67425, !noundef !3817 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !67671 ; 2 uses
  br i1 %i.kd, label %bb.ba, label %bb.bd, !dbg !67670, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !67672, !noalias !67425
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kf, i64 %i.kh) #40, !dbg !67673, !noalias !67425
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !67674, !noalias !67419
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67675
  %i.kj = load <2 x i64>, ptr %i.e, align 16, !dbg !67676, !noalias !67419
  store <2 x i64> %i.kj, ptr %i.ki, align 8, !dbg !67675
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.js, i64 56, i1 false), !dbg !67675
  store i8 42, ptr %i.am, align 8, !dbg !67675
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67677

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !67678

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !67678

bb.bd:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.kg, align 8, !dbg !67679, !noalias !67425, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !67680, !noalias !67425
  store i64 %i.kf, ptr %i.q, align 8, !dbg !67681, !alias.scope !67424, !noalias !67419
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !67681
  store ptr %i.kl, ptr %i.km, align 8, !dbg !67681, !alias.scope !67424, !noalias !67419
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !67681
  store i64 %i.jv, ptr %i.kn, align 8, !dbg !67681, !alias.scope !67424, !noalias !67419
  %i.ko = shl nuw nsw i64 %i.jv, 4, !dbg !67682   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !67683, !noalias !67419
  store i64 %i.ko, ptr %i.p, align 8, !dbg !67683, !noalias !67419
  %i.kp = load i64, ptr %i.ay, align 8, !dbg !67684, !noalias !67419, !noundef !3817 ; 5 uses
  %i.kq = mul i64 %i.kp, %i.jx, !dbg !67685       ; 2 uses
  store i64 %i.kq, ptr %i.o, align 8, !dbg !67685, !noalias !67419
  %i.kr = icmp eq i64 %i.ko, %i.kq, !dbg !67686
  br i1 %i.kr, label %bb.bf, label %bb.be, !dbg !67686, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !67687, !noalias !67419

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !67688, !noalias !67419
  %i.ks = call i64 @llvm.uadd.sat.i64(i64 %i.kp, i64 7), !dbg !67689
  %i.kt = lshr i64 %i.ks, 3, !dbg !67690          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !67691, !noalias !67431
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.kt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !67691, !noalias !67419

.noexc.i9:                                        ; preds = %bb.bf
  %i.ku = load i64, ptr %i.b, align 8, !dbg !67691, !range !4010, !noalias !67431, !noundef !3817
  %i.kv = trunc nuw i64 %i.ku to i1, !dbg !67692
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !67693
  %i.kx = load i64, ptr %i.kw, align 8, !dbg !67693, !range !3948, !noalias !67431, !noundef !3817 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !67693 ; 2 uses
  br i1 %i.kv, label %bb.bg, label %bb.bi, !dbg !67692, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.kz = load i64, ptr %i.ky, align 8, !dbg !67694, !noalias !67431
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kx, i64 %i.kz) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !67695, !noalias !67419

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !67695

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.la = load ptr, ptr %i.ky, align 8, !dbg !67696, !noalias !67431, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.lb = icmp ule i64 %i.kt, %i.kx, !dbg !67697
  call void @llvm.assume(i1 %i.lb), !dbg !67698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !67699, !noalias !67431
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.la, i8 -1, i64 %i.kt, i1 false), !dbg !67700, !noalias !67431
  store i64 %i.kx, ptr %i.n, align 8, !dbg !67701, !noalias !67419
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !67701
  store ptr %i.la, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !67701, !noalias !67419
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !67701
  store i64 %i.kt, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !67701, !noalias !67419
  %i.lc = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !67701
  store i64 %i.kp, ptr %i.lc, align 8, !dbg !67701, !noalias !67419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !67702, !noalias !67419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !67703, !noalias !67419
  %i.ld = load i64, ptr %i.ay, align 8, !dbg !67704, !noalias !67419, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !67705, !noalias !67419
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !67705
  store i64 0, ptr %i.le, align 8, !dbg !67705, !noalias !67419
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !67705
  store i64 %i.ld, ptr %i.lf, align 8, !dbg !67705, !noalias !67419
  %i.lg = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !67706 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !dbg !67706, !noalias !67419, !noundef !3817
  %.not.i10 = icmp eq ptr %i.lh, null, !dbg !67706
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.lg, !dbg !67707
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !67708, !noalias !67419

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !67709

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !67710, !noalias !67419
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !67711, !noalias !67419 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !67711
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !67711, !noalias !67419 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !67711
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !67711, !noalias !67419 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !67711
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !67711, !noalias !67419 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !67711
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !67711, !noalias !67419
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !67711
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !67711, !noalias !67419
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !67711
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !67711, !noalias !67419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !67712, !noalias !67419
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.lo = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !67713
  br i1 %i.lo, label %.loopexit149.i, label %.lr.ph.i71, !dbg !67713

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.lp = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  br label %bb.bl, !dbg !67713

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.lu, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.mp, %bb.bp ] ; 5 uses
  %i.lu = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !67714 ; 2 uses
  %i.lv = load ptr, ptr %i.lq, align 8, !dbg !67715, !noalias !67432, !noundef !3817
  %i.lw = load i64, ptr %i.lr, align 8, !dbg !67716, !noalias !67432, !noundef !3817
  %i.lx = icmp ult i64 %.sroa.786.0.us153.i, %i.lw, !dbg !67717
  call void @llvm.assume(i1 %i.lx), !dbg !67718
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %.sroa.786.0.us153.i, !dbg !67719 ; 4 uses
  %i.lz = load ptr, ptr %i.ls, align 8, !dbg !67720, !noalias !67432, !noundef !3817
  %i.ma = load i64, ptr %i.lt, align 8, !dbg !67721, !noalias !67432, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !67433), !dbg !67722
  call void @llvm.experimental.noalias.scope.decl(metadata !67434), !dbg !67722
  %i.mb = load i32, ptr %i.ly, align 4, !dbg !67723, !alias.scope !67433, !noalias !67435, !noundef !3817 ; 2 uses
  %i.mc = icmp ult i32 %i.mb, 13, !dbg !67723
  br i1 %i.mc, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !67723

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 8, !dbg !67724
  %i.me = load i32, ptr %i.md, align 4, !dbg !67724, !alias.scope !67433, !noalias !67435, !noundef !3817
  %i.mf = zext i32 %i.me to i64, !dbg !67724      ; 2 uses
  %i.mg = icmp samesign ugt i64 %i.ma, %i.mf, !dbg !67725
  call void @llvm.assume(i1 %i.mg), !dbg !67726
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.mf, !dbg !67727
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 12, !dbg !67728
end_hunk_11
begin_hunk_12_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyntECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !69863, !noalias !69445

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.ry = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !69868, !noalias !69445
  unreachable, !dbg !69868

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.rl, %bb.by ], [ %i.ro, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !69863, !noalias !69445

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rz = icmp ult i64 %.sroa.21.0.i29, %i.mz, !dbg !69765
  br i1 %i.rz, label %bb.cp, label %.split151.us.i, !dbg !69765, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.sa = mul i64 %.sroa.21.0.i29, %i.mh, !dbg !69774
  %i.sb = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.sa, !dbg !69775
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sb, ptr nonnull align 1 %i.qy, i64 %i.mh, i1 false), !dbg !69776, !noalias !69445
  br label %.split.i28.backedge, !dbg !69777

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !69869, !noalias !69445

bb.cp:                                            ; preds = %bb.cn
  %i.sc = lshr i64 %.sroa.21.0.i29, 3, !dbg !69766
  %i.sd = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.sc, !dbg !69767 ; 2 uses
  %i.se = load i8, ptr %i.sd, align 1, !dbg !69768, !noalias !69445, !noundef !3817
  %i.sf = trunc i64 %.sroa.21.0.i29 to i8, !dbg !69769
  %i.sg = and i8 %i.sf, 7, !dbg !69769
  %i.sh = shl nuw i8 1, %i.sg, !dbg !69769
  %i.si = xor i8 %i.sh, -1, !dbg !69770
  %i.sj = and i8 %i.se, %i.si, !dbg !69771
  store i8 %i.sj, ptr %i.sd, align 1, !dbg !69772, !noalias !69445
  br label %.split.i28.backedge, !dbg !69773

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !69778

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.rg, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !69736, !noalias !69445

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mu, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VectEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !69705, !noalias !69445

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !69867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !69867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !69867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !69867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !69867
  br label %bb.cr, !dbg !69870

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.sk = load i8, ptr %i.am, align 8, !dbg !69871, !range !4401, !noundef !3817 ; 2 uses
  %i.sl = icmp eq i8 %i.sk, 42, !dbg !69871
  br i1 %i.sl, label %bb.cs, label %bb.ct, !dbg !69872

bb.cs:                                            ; preds = %bb.cr
  %i.sm = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !69873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sm, i64 72, i1 false), !dbg !69874
  br label %bb.cx, !dbg !69875

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !69876
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !69876
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !69480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !69876
  store i8 %i.sk, ptr %i.ao, align 8, !dbg !69480
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !69480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !69480
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !69877, !noalias !69481
  %i.sn = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !69878, !noalias !69481 ; 3 uses
  %i.so = icmp eq ptr %i.sn, null, !dbg !69879
  br i1 %i.so, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !69880, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !69881

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !69881

bb.cv:                                            ; preds = %bb.cu
  %i.sp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !69882

bb.cw:                                            ; preds = %bb.cv
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !69883
  unreachable, !dbg !69883

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sn, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !69884
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !69885
  store ptr %i.sn, ptr %i.sr, align 8, !dbg !69885
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69885
  store ptr @85, ptr %i.ss, align 8, !dbg !69885
  store i64 18, ptr %0, align 8, !dbg !69885
  br label %bb.cx, !dbg !69875

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !69875
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !69886 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 16               ; 5 uses
  %i.f = alloca [72 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 16               ; 5 uses
  %i.y = alloca [72 x i8], align 16               ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 18 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !70494
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !70494, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !70495 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !70495 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !70495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !70414
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !70496
  %i.av = load ptr, ptr %i.au, align 8, !dbg !70496, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !70497
  %i.aw = load i128, ptr %i.an, align 16, !dbg !70498, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !70499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !70414
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !70500, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !70501
  unreachable, !dbg !70501

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !70502 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !70503

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !70420
  store i64 8, ptr %i.ak, align 8, !dbg !70504, !noalias !70420
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !70505, !noalias !70420, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !70506 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !70506 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !70506
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !70507, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 3, !dbg !70508              ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !70508
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !70509, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !70510, !noalias !70420
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70511
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !70512, !noalias !70420
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !70511
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !70511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !70511
  store i8 42, ptr %i.am, align 8, !dbg !70511
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70513

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !70514, !noalias !70420
  call void @llvm.experimental.noalias.scope.decl(metadata !70425), !dbg !70515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !70516, !noalias !70426
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !70516, !noalias !70426
  %i.bj = load i64, ptr %i.v, align 8, !dbg !70516, !range !4010, !noalias !70426, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !70517
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !70518
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !70518, !range !3948, !noalias !70426, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !70518 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !70517, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !70519, !noalias !70426
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !70520, !noalias !70426
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !70521, !noalias !70420
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70522
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !70523, !noalias !70420
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !70522
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !70522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !70522
  store i8 42, ptr %i.am, align 8, !dbg !70522
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70524

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !70525

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !70525

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !70526, !noalias !70426, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !70527 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !70527, !noalias !70426
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !70528, !alias.scope !70425, !noalias !70420
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !70528
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !70528, !alias.scope !70425, !noalias !70420
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !70528
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !70528, !alias.scope !70425, !noalias !70420
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !70529   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !70530, !noalias !70420
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !70530, !noalias !70420
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !70531, !noalias !70420, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !70532       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !70532, !noalias !70420
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !70533
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !70533, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !70534, !noalias !70420

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !70535, !noalias !70420
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !70536
  %i.cb = lshr i64 %i.ca, 3, !dbg !70537          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !70538, !noalias !70432
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !70538, !noalias !70420

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !70538, !range !4010, !noalias !70432, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !70539
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !70540
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !70540, !range !3948, !noalias !70432, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !70540 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !70539, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !70541, !noalias !70432
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !70542, !noalias !70420

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !70542

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !70543, !noalias !70432, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !70544
  call void @llvm.assume(i1 %i.cj), !dbg !70545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !70546, !noalias !70432
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !70547, !noalias !70432
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !70548, !noalias !70420
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !70548
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !70548, !noalias !70420
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !70548
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !70548, !noalias !70420
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !70548
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !70548, !noalias !70420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !70549, !noalias !70420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !70550, !noalias !70420
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !70551, !noalias !70420, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !70552, !noalias !70420
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !70552
  store i64 0, ptr %i.cm, align 8, !dbg !70552, !noalias !70420
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !70552
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !70552, !noalias !70420
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !70553 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !70553, !noalias !70420, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !70553
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !70554
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !70555, !noalias !70420

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !70556

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !70557, !noalias !70420
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !70558, !noalias !70420 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !70558
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !70558, !noalias !70420 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !70558
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !70558, !noalias !70420 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !70558
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !70558, !noalias !70420 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !70558
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !70558, !noalias !70420
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !70558
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !70558, !noalias !70420
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !70558
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !70558, !noalias !70420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !70559, !noalias !70420
  %.not.i.i.i = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i, null
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not166.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  %i.cw = shl nuw i64 %3, 3, !dbg !70560
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !70560

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !70561
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !70561

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !70562
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !70563

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !70562
  %i.df = add i64 %i.de, %i.bt, !dbg !70562
end_hunk_12
begin_hunk_13_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !70671, !noalias !70420

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70672, !noalias !70420
  unreachable, !dbg !70672

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !70673, !noalias !70420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !70674, !noalias !70420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !70675, !noalias !70420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !70675, !noalias !70420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !70675, !noalias !70420
  call void @llvm.experimental.noalias.scope.decl(metadata !70453), !dbg !70676
  call void @llvm.experimental.noalias.scope.decl(metadata !70454), !dbg !70676
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !70677, !noalias !70455 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !70678
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !70678

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !70679, !alias.scope !70453, !noalias !70456
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !70680, !noalias !70455

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !70681, !noalias !70455

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70680, !noalias !70455
  unreachable, !dbg !70680

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !70682, !noalias !70420

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !70683, !noalias !70420

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !70684
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !70684, !alias.scope !70454, !noalias !70455, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !70685, !alias.scope !70453, !noalias !70456
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !70685
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !70685, !alias.scope !70453, !noalias !70456
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !70685
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !70685, !alias.scope !70453, !noalias !70456
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !70685
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !70685, !alias.scope !70453, !noalias !70456
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !70686

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !70686, !noalias !70455

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70687, !noalias !70455
  unreachable, !dbg !70687

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !70688

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !70689, !noalias !70420
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @67, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !70690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !70688, !noalias !70420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !70688, !noalias !70420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !70556, !noalias !70420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !70691, !noalias !70420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !70525, !noalias !70420
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70692

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @67) #43
          to label %bb.as unwind label %bb.ar, !dbg !70688, !noalias !70420

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70693, !noalias !70420
  unreachable, !dbg !70693

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !70688, !noalias !70420

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !70586
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !70586, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !70595 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !70596
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !70597
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !70598, !noalias !70420
  %i.kr = call noundef i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !70599
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !70600
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !70601, !noalias !70420
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !70595 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !70596
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !70597
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !70598, !noalias !70420
  %i.kw = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !70599
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !70600
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !70601, !noalias !70420
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !70595 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !70596
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !70597
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !70598, !noalias !70420
  %i.lb = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !70599
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !70600
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !70601, !noalias !70420
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !70595 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !70596
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !70597
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !70598, !noalias !70420
  %i.lg = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !70599
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !70600
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !70601, !noalias !70420
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !70602
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !70603, !llvm.loop !70172

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !70694, !noalias !70420

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !70587
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !70588 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !70589, !noalias !70420, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !70590
  %i.lm = and i8 %i.ll, 7, !dbg !70590
  %i.ln = shl nuw i8 1, %i.lm, !dbg !70590
  %i.lo = xor i8 %i.ln, -1, !dbg !70591
  %i.lp = and i8 %i.lk, %i.lo, !dbg !70592
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !70593, !noalias !70420
  br label %.split.i.backedge, !dbg !70594

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !70556, !noalias !70420

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !70502

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !70525, !noalias !70420

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !70692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !70692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !70692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !70692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !70692
  br label %bb.cr, !dbg !70695

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !70457
  store i64 8, ptr %i.r, align 8, !dbg !70696, !noalias !70457
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !70697, !noalias !70457, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !70698 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !70698 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !70698
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !70699, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 3, !dbg !70700              ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !70700
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !70701, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !70702, !noalias !70457
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70703
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !70704, !noalias !70457
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !70703
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !70703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !70703
  store i8 42, ptr %i.am, align 8, !dbg !70703
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70705

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !70706, !noalias !70457
  call void @llvm.experimental.noalias.scope.decl(metadata !70462), !dbg !70707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !70708, !noalias !70463
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !70708, !noalias !70463
  %i.ma = load i64, ptr %i.c, align 8, !dbg !70708, !range !4010, !noalias !70463, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !70709
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !70710
  %i.md = load i64, ptr %i.mc, align 8, !dbg !70710, !range !3948, !noalias !70463, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !70710 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !70709, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !70711, !noalias !70463
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !70712, !noalias !70463
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !70713, !noalias !70457
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70714
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !70715, !noalias !70457
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !70714
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !70714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !70714
  store i8 42, ptr %i.am, align 8, !dbg !70714
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70716

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !70717

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !70717

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !70718, !noalias !70463, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !70719, !noalias !70463
  store i64 %i.md, ptr %i.q, align 8, !dbg !70720, !alias.scope !70462, !noalias !70457
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !70720
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !70720, !alias.scope !70462, !noalias !70457
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !70720
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !70720, !alias.scope !70462, !noalias !70457
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !70721   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !70722, !noalias !70457
  store i64 %i.mm, ptr %i.p, align 8, !dbg !70722, !noalias !70457
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !70723, !noalias !70457, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !70724       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !70724, !noalias !70457
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !70725
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !70725, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !70726, !noalias !70457

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !70727, !noalias !70457
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !70728
  %i.mr = lshr i64 %i.mq, 3, !dbg !70729          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !70730, !noalias !70469
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !70730, !noalias !70457

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !70730, !range !4010, !noalias !70469, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !70731
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !70732
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !70732, !range !3948, !noalias !70469, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !70732 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !70731, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !70733, !noalias !70469
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !70734, !noalias !70457

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !70734

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !70735, !noalias !70469, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !70736
  call void @llvm.assume(i1 %i.mz), !dbg !70737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !70738, !noalias !70469
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !70739, !noalias !70469
  store i64 %i.mv, ptr %i.n, align 8, !dbg !70740, !noalias !70457
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !70740
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !70740, !noalias !70457
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !70740
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !70740, !noalias !70457
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !70740
  store i64 %i.mn, ptr %i.na, align 8, !dbg !70740, !noalias !70457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !70741, !noalias !70457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !70742, !noalias !70457
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !70743, !noalias !70457, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !70744, !noalias !70457
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !70744
  store i64 0, ptr %i.nc, align 8, !dbg !70744, !noalias !70457
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !70744
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !70744, !noalias !70457
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !70745 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !70745, !noalias !70457, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !70745
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !70746
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !70747, !noalias !70457

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !70748

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !70749, !noalias !70457
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !70750, !noalias !70457 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !70750
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !70750, !noalias !70457 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !70750
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !70750, !noalias !70457 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !70750
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !70750, !noalias !70457 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !70750
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !70750, !noalias !70457
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !70750
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !70750, !noalias !70457
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !70750
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !70750, !noalias !70457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !70751, !noalias !70457
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !70752
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !70752

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !70752

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !70753 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !70754, !noalias !70470, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !70755, !noalias !70470, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !70756
  call void @llvm.assume(i1 %i.nv), !dbg !70757
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !70758 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !70759, !noalias !70470, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !70760, !noalias !70470, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !70471), !dbg !70761
  call void @llvm.experimental.noalias.scope.decl(metadata !70472), !dbg !70761
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !70762, !alias.scope !70471, !noalias !70473, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !70762
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !70762

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !70763
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !70763, !alias.scope !70471, !noalias !70473, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !70763      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !70764
  call void @llvm.assume(i1 %i.oe), !dbg !70765
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !70766
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !70767
end_hunk_13
begin_hunk_14_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !70875, !noalias !70457

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70880, !noalias !70457
  unreachable, !dbg !70880

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !70875, !noalias !70457

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !70777
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !70777, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !70786
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !70787
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !70788, !noalias !70457
  br label %.split.i28.backedge, !dbg !70789

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !70881, !noalias !70457

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !70778
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !70779 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !70780, !noalias !70457, !noundef !3817
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !70781
  %i.ru = and i8 %i.rt, 7, !dbg !70781
  %i.rv = shl nuw i8 1, %i.ru, !dbg !70781
  %i.rw = xor i8 %i.rv, -1, !dbg !70782
  %i.rx = and i8 %i.rs, %i.rw, !dbg !70783
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !70784, !noalias !70457
  br label %.split.i28.backedge, !dbg !70785

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !70790

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !70748, !noalias !70457

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !70717, !noalias !70457

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !70879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !70879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !70879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !70879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !70879
  br label %bb.cr, !dbg !70882

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !70883, !range !4401, !noundef !3817 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !70883
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !70884

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !70886
  br label %bb.cx, !dbg !70887

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !70888
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !70888
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !70492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !70888
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !70492
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !70492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !70492
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !70889, !noalias !70493
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !70890, !noalias !70493 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !70891
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !70892, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !70893

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !70893

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !70894

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70895
  unreachable, !dbg !70895

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !70896
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70897
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !70897
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70897
  store ptr @85, ptr %i.sg, align 8, !dbg !70897
  store i64 18, ptr %0, align 8, !dbg !70897
  br label %bb.cx, !dbg !70887

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !70887
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynyECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70898 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 16               ; 5 uses
  %i.f = alloca [72 x i8], align 16               ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [32 x i8], align 8                ; 9 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [72 x i8], align 16               ; 5 uses
  %i.y = alloca [72 x i8], align 16               ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 9 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  %i.ad = alloca [72 x i8], align 8               ; 9 uses
  %i.ae = alloca [32 x i8], align 8               ; 7 uses
  %i.af = alloca [64 x i8], align 8               ; 10 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 18 uses
  %i.an = alloca [16 x i8], align 16              ; 4 uses
  %i.ao = alloca [96 x i8], align 8               ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !71504
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !71504, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !71505 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !71505 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !71505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !71424
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !71506
  %i.av = load ptr, ptr %i.au, align 8, !dbg !71506, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !71507
  %i.aw = load i128, ptr %i.an, align 16, !dbg !71508, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !71509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !71424
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !71510, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !71511
  unreachable, !dbg !71511

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !71512 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !71513

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !71430
  store i64 8, ptr %i.ak, align 8, !dbg !71514, !noalias !71430
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !71515, !noalias !71430, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !71516 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !71516 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !71516
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !71517, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 3, !dbg !71518              ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !71518
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !71519, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !71520, !noalias !71430
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !71521
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !71522, !noalias !71430
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !71521
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !71521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !71521
  store i8 42, ptr %i.am, align 8, !dbg !71521
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71523

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !71524, !noalias !71430
  call void @llvm.experimental.noalias.scope.decl(metadata !71435), !dbg !71525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !71526, !noalias !71436
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !71526, !noalias !71436
  %i.bj = load i64, ptr %i.v, align 8, !dbg !71526, !range !4010, !noalias !71436, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !71527
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !71528
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !71528, !range !3948, !noalias !71436, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !71528 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !71527, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !71529, !noalias !71436
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !71530, !noalias !71436
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !71531, !noalias !71430
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !71532
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !71533, !noalias !71430
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !71532
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !71532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !71532
  store i8 42, ptr %i.am, align 8, !dbg !71532
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71534

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !71535

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !71535

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !71536, !noalias !71436, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !71537 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !71537, !noalias !71436
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !71538, !alias.scope !71435, !noalias !71430
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !71538
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !71538, !alias.scope !71435, !noalias !71430
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !71538
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !71538, !alias.scope !71435, !noalias !71430
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !71539   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !71540, !noalias !71430
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !71540, !noalias !71430
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !71541, !noalias !71430, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !71542       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !71542, !noalias !71430
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !71543
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !71543, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !71544, !noalias !71430

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !71545, !noalias !71430
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !71546
  %i.cb = lshr i64 %i.ca, 3, !dbg !71547          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !71548, !noalias !71442
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !71548, !noalias !71430

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !71548, !range !4010, !noalias !71442, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !71549
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !71550
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !71550, !range !3948, !noalias !71442, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !71550 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !71549, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !71551, !noalias !71442
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !71552, !noalias !71430

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !71552

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !71553, !noalias !71442, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !71554
  call void @llvm.assume(i1 %i.cj), !dbg !71555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !71556, !noalias !71442
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !71557, !noalias !71442
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !71558, !noalias !71430
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !71558
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !71558, !noalias !71430
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !71558
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !71558, !noalias !71430
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !71558
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !71558, !noalias !71430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !71559, !noalias !71430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !71560, !noalias !71430
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !71561, !noalias !71430, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !71562, !noalias !71430
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !71562
  store i64 0, ptr %i.cm, align 8, !dbg !71562, !noalias !71430
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !71562
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !71562, !noalias !71430
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !71563 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !71563, !noalias !71430, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !71563
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !71564
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !71565, !noalias !71430

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !71566

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !71567, !noalias !71430
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !71568, !noalias !71430 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !71568
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !71568, !noalias !71430 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !71568
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !71568, !noalias !71430 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !71568
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !71568, !noalias !71430 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !71568
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !71568, !noalias !71430
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !71568
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !71568, !noalias !71430
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !71568
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !71568, !noalias !71430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !71569, !noalias !71430
  %.not.i.i.i = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i, null
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 48
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not166.i = icmp eq i64 %3, 0                  ; 2 uses
  br i1 %.not.i.i.i, label %.split.us.i, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.r
  %i.cw = shl nuw i64 %3, 3, !dbg !71570
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !71570

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !71571
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !71571

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !71572
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !71573

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !71572
  %i.df = add i64 %i.de, %i.bt, !dbg !71572
end_hunk_14
begin_hunk_15_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynyECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !71681, !noalias !71430

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !71682, !noalias !71430
  unreachable, !dbg !71682

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !71683, !noalias !71430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !71684, !noalias !71430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !71685, !noalias !71430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !71685, !noalias !71430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !71685, !noalias !71430
  call void @llvm.experimental.noalias.scope.decl(metadata !71463), !dbg !71686
  call void @llvm.experimental.noalias.scope.decl(metadata !71464), !dbg !71686
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !71687, !noalias !71465 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !71688
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !71688

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !71689, !alias.scope !71463, !noalias !71466
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !71690, !noalias !71465

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !71691, !noalias !71465

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !71690, !noalias !71465
  unreachable, !dbg !71690

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !71692, !noalias !71430

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !71693, !noalias !71430

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !71694
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !71694, !alias.scope !71464, !noalias !71465, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !71695, !alias.scope !71463, !noalias !71466
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !71695
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !71695, !alias.scope !71463, !noalias !71466
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !71695
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !71695, !alias.scope !71463, !noalias !71466
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !71695
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !71695, !alias.scope !71463, !noalias !71466
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !71696

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !71696, !noalias !71465

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !71697, !noalias !71465
  unreachable, !dbg !71697

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !71698

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !71699, !noalias !71430
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @72, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !71700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !71698, !noalias !71430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !71698, !noalias !71430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !71566, !noalias !71430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !71701, !noalias !71430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !71535, !noalias !71430
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71702

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @72) #43
          to label %bb.as unwind label %bb.ar, !dbg !71698, !noalias !71430

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !71703, !noalias !71430
  unreachable, !dbg !71703

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !71698, !noalias !71430

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !71596
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !71596, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !71605 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !71606
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !71607
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !71608, !noalias !71430
  %i.kr = call noundef i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !71609
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !71610
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !71611, !noalias !71430
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !71605 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !71606
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !71607
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !71608, !noalias !71430
  %i.kw = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !71609
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !71610
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !71611, !noalias !71430
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !71605 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !71606
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !71607
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !71608, !noalias !71430
  %i.lb = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !71609
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !71610
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !71611, !noalias !71430
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !71605 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !71606
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !71607
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !71608, !noalias !71430
  %i.lg = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !71609
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !71610
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !71611, !noalias !71430
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !71612
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !71613, !llvm.loop !71182

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !71704, !noalias !71430

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !71597
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !71598 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !71599, !noalias !71430, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !71600
  %i.lm = and i8 %i.ll, 7, !dbg !71600
  %i.ln = shl nuw i8 1, %i.lm, !dbg !71600
  %i.lo = xor i8 %i.ln, -1, !dbg !71601
  %i.lp = and i8 %i.lk, %i.lo, !dbg !71602
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !71603, !noalias !71430
  br label %.split.i.backedge, !dbg !71604

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !71566, !noalias !71430

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !71512

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !71535, !noalias !71430

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !71702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !71702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !71702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !71702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !71702
  br label %bb.cr, !dbg !71705

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !71467
  store i64 8, ptr %i.r, align 8, !dbg !71706, !noalias !71467
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !71707, !noalias !71467, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !71708 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !71708 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !71708
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !71709, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 3, !dbg !71710              ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !71710
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !71711, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !71712, !noalias !71467
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !71713
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !71714, !noalias !71467
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !71713
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !71713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !71713
  store i8 42, ptr %i.am, align 8, !dbg !71713
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71715

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !71716, !noalias !71467
  call void @llvm.experimental.noalias.scope.decl(metadata !71472), !dbg !71717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !71718, !noalias !71473
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !71718, !noalias !71473
  %i.ma = load i64, ptr %i.c, align 8, !dbg !71718, !range !4010, !noalias !71473, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !71719
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !71720
  %i.md = load i64, ptr %i.mc, align 8, !dbg !71720, !range !3948, !noalias !71473, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !71720 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !71719, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !71721, !noalias !71473
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !71722, !noalias !71473
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !71723, !noalias !71467
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !71724
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !71725, !noalias !71467
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !71724
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !71724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !71724
  store i8 42, ptr %i.am, align 8, !dbg !71724
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71726

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !71727

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !71727

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !71728, !noalias !71473, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !71729, !noalias !71473
  store i64 %i.md, ptr %i.q, align 8, !dbg !71730, !alias.scope !71472, !noalias !71467
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !71730
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !71730, !alias.scope !71472, !noalias !71467
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !71730
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !71730, !alias.scope !71472, !noalias !71467
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !71731   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !71732, !noalias !71467
  store i64 %i.mm, ptr %i.p, align 8, !dbg !71732, !noalias !71467
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !71733, !noalias !71467, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !71734       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !71734, !noalias !71467
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !71735
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !71735, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !71736, !noalias !71467

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !71737, !noalias !71467
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !71738
  %i.mr = lshr i64 %i.mq, 3, !dbg !71739          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !71740, !noalias !71479
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !71740, !noalias !71467

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !71740, !range !4010, !noalias !71479, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !71741
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !71742
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !71742, !range !3948, !noalias !71479, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !71742 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !71741, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !71743, !noalias !71479
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !71744, !noalias !71467

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !71744

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !71745, !noalias !71479, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !71746
  call void @llvm.assume(i1 %i.mz), !dbg !71747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !71748, !noalias !71479
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !71749, !noalias !71479
  store i64 %i.mv, ptr %i.n, align 8, !dbg !71750, !noalias !71467
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !71750
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !71750, !noalias !71467
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !71750
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !71750, !noalias !71467
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !71750
  store i64 %i.mn, ptr %i.na, align 8, !dbg !71750, !noalias !71467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !71751, !noalias !71467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71752, !noalias !71467
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !71753, !noalias !71467, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !71754, !noalias !71467
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !71754
  store i64 0, ptr %i.nc, align 8, !dbg !71754, !noalias !71467
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !71754
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !71754, !noalias !71467
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !71755 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !71755, !noalias !71467, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !71755
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !71756
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !71757, !noalias !71467

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !71758

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !71759, !noalias !71467
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !71760, !noalias !71467 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !71760
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !71760, !noalias !71467 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !71760
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !71760, !noalias !71467 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !71760
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !71760, !noalias !71467 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !71760
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !71760, !noalias !71467
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !71760
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !71760, !noalias !71467
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !71760
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !71760, !noalias !71467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !71761, !noalias !71467
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !71762
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !71762

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !71762

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !71763 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !71764, !noalias !71480, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !71765, !noalias !71480, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !71766
  call void @llvm.assume(i1 %i.nv), !dbg !71767
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !71768 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !71769, !noalias !71480, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !71770, !noalias !71480, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !71481), !dbg !71771
  call void @llvm.experimental.noalias.scope.decl(metadata !71482), !dbg !71771
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !71772, !alias.scope !71481, !noalias !71483, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !71772
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !71772

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !71773
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !71773, !alias.scope !71481, !noalias !71483, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !71773      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !71774
  call void @llvm.assume(i1 %i.oe), !dbg !71775
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !71776
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !71777
end_hunk_15
