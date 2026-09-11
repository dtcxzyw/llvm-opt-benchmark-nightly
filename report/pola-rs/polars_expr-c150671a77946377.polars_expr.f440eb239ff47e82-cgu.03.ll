Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.03?download=true
inline.NumInlined: 7491
inline.NumDeleted: 2575
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynaECskY9G75ZWc4U_11polars_expr:bb.a
  %eh.lpad-body82136.i = phi { ptr, i32 } [ %lpad.thr_comm.i60, %.body81.thread138.i ], [ %i.py, %bb.cf ], [ %i.pt, %bb.cc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.po, ptr nonnull @64) #43
          to label %bb.ci unwind label %bb.ch, !dbg !60852, !noalias !60456

bb.ch:                                            ; preds = %bb.cm, %.thread109.i, %bb.ci, %.body81.thread.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !60857, !noalias !60456
  unreachable, !dbg !60857

bb.ci:                                            ; preds = %.body81.thread.i, %bb.bx, %bb.bu
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.bu ], [ true, %bb.bx ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.pn, %bb.bu ], [ %i.pq, %bb.bx ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.k) #43
          to label %bb.bf unwind label %bb.ch, !dbg !60852, !noalias !60456

bb.cj:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qb = icmp ult i64 %.sroa.21.0.i29, %i.lb, !dbg !60754
  br i1 %i.qb, label %bb.cl, label %.split151.us.i, !dbg !60754, !prof !3923

bb.ck:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qc = mul i64 %.sroa.21.0.i29, %3, !dbg !60763
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.qc, !dbg !60764
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr nonnull align 1 %i.pa, i64 %3, i1 false), !dbg !60765, !noalias !60456
  br label %.split.i28.backedge, !dbg !60766

.split151.us.i:                                   ; preds = %bb.cj, %bb.bi
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bd unwind label %.loopexit.split-lp.i12, !dbg !60858, !noalias !60456

bb.cl:                                            ; preds = %bb.cj
  %i.qe = lshr i64 %.sroa.21.0.i29, 3, !dbg !60755
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.qe, !dbg !60756 ; 2 uses
  %i.qg = load i8, ptr %i.qf, align 1, !dbg !60757, !noalias !60456, !noundef !3817
  %i.qh = trunc i64 %.sroa.21.0.i29 to i8, !dbg !60758
  %i.qi = and i8 %i.qh, 7, !dbg !60758
  %i.qj = shl nuw i8 1, %i.qi, !dbg !60758
  %i.qk = xor i8 %i.qj, -1, !dbg !60759
  %i.ql = and i8 %i.qg, %i.qk, !dbg !60760
  store i8 %i.ql, ptr %i.qf, align 1, !dbg !60761, !noalias !60456
  br label %.split.i28.backedge, !dbg !60762

.split.i28.backedge:                              ; preds = %bb.cl, %bb.ck
  br label %.split.i28, !dbg !60767

.thread109.i:                                     ; preds = %bb.br, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bf
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bf ], [ %i.pi, %bb.br ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bf ], [ true, %bb.br ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.m) #43
          to label %bb.ay unwind label %bb.ch, !dbg !60725, !noalias !60456

bb.cm:                                            ; preds = %.thread.i8, %bb.ay
  %.pn68108.i = phi { ptr, i32 } [ %i.kx, %.thread.i8 ], [ %.pn66114.i, %bb.ay ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecaEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.p) #43
          to label %common.resume unwind label %bb.ch, !dbg !60695, !noalias !60456

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ax, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !60856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !60856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !60856
  br label %bb.cn, !dbg !60859

bb.cn:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qm = load i8, ptr %i.ai, align 8, !dbg !60860, !range !4401, !noundef !3817 ; 2 uses
  %i.qn = icmp eq i8 %i.qm, 42, !dbg !60860
  br i1 %i.qn, label %bb.co, label %bb.cp, !dbg !60861

bb.co:                                            ; preds = %bb.cn
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !60862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i64 72, i1 false), !dbg !60863
  br label %bb.ct, !dbg !60864

bb.cp:                                            ; preds = %bb.cn
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !60865
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80, !dbg !60865
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 80, !dbg !60487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !60865
  store i8 %i.qm, ptr %i.ak, align 8, !dbg !60487
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !60487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !60487
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !60866, !noalias !60488
  %i.qp = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !60867, !noalias !60488 ; 3 uses
  %i.qq = icmp eq ptr %i.qp, null, !dbg !60868
  br i1 %i.qq, label %bb.cq, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !60869, !prof !3850

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cr, !dbg !60870

.noexc:                                           ; preds = %bb.cq
  unreachable, !dbg !60870

bb.cr:                                            ; preds = %bb.cq
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ak) #43
          to label %common.resume unwind label %bb.cs, !dbg !60871

bb.cs:                                            ; preds = %bb.cr
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !60872
  unreachable, !dbg !60872

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qp, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !dbg !60873
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !60874
  store ptr %i.qp, ptr %i.qt, align 8, !dbg !60874
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !60874
  store ptr @85, ptr %i.qu, align 8, !dbg !60874
  store i64 18, ptr %0, align 8, !dbg !60874
  br label %bb.ct, !dbg !60864

bb.ct:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.co
  ret void, !dbg !60864
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60875 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !61483
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !61483, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !61484 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !61484 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !61484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !61403
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !61485
  %i.av = load ptr, ptr %i.au, align 8, !dbg !61485, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !61486
  %i.aw = load i128, ptr %i.an, align 16, !dbg !61487, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !61488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !61403
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !61489, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !61490
  unreachable, !dbg !61490

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !61491 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !61492

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !61409
  store i64 8, ptr %i.ak, align 8, !dbg !61493, !noalias !61409
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !61494, !noalias !61409, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !61495 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !61495 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !61495
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !61496, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 3, !dbg !61497              ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !61497
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !61498, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !61499, !noalias !61409
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61500
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !61501, !noalias !61409
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !61500
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !61500
  store i8 42, ptr %i.am, align 8, !dbg !61500
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61502

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !61503, !noalias !61409
  call void @llvm.experimental.noalias.scope.decl(metadata !61414), !dbg !61504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !61505, !noalias !61415
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !61505, !noalias !61415
  %i.bj = load i64, ptr %i.v, align 8, !dbg !61505, !range !4010, !noalias !61415, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !61506
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !61507
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !61507, !range !3948, !noalias !61415, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !61507 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !61506, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !61508, !noalias !61415
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !61509, !noalias !61415
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !61510, !noalias !61409
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61511
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !61512, !noalias !61409
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !61511
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !61511
  store i8 42, ptr %i.am, align 8, !dbg !61511
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61513

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !61514

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !61514

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !61515, !noalias !61415, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !61516 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !61516, !noalias !61415
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !61517, !alias.scope !61414, !noalias !61409
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !61517
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !61517, !alias.scope !61414, !noalias !61409
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !61517
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !61517, !alias.scope !61414, !noalias !61409
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !61518   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !61519, !noalias !61409
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !61519, !noalias !61409
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !61520, !noalias !61409, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !61521       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !61521, !noalias !61409
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !61522
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !61522, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !61523, !noalias !61409

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !61524, !noalias !61409
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !61525
  %i.cb = lshr i64 %i.ca, 3, !dbg !61526          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !61527, !noalias !61421
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !61527, !noalias !61409

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !61527, !range !4010, !noalias !61421, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !61528
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !61529
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !61529, !range !3948, !noalias !61421, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !61529 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !61528, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !61530, !noalias !61421
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !61531, !noalias !61409

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !61531

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !61532, !noalias !61421, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !61533
  call void @llvm.assume(i1 %i.cj), !dbg !61534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !61535, !noalias !61421
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !61536, !noalias !61421
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !61537, !noalias !61409
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !61537
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !61537, !noalias !61409
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !61537
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !61537, !noalias !61409
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !61537
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !61537, !noalias !61409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !61538, !noalias !61409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !61539, !noalias !61409
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !61540, !noalias !61409, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !61541, !noalias !61409
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !61541
  store i64 0, ptr %i.cm, align 8, !dbg !61541, !noalias !61409
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !61541
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !61541, !noalias !61409
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !61542 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !61542, !noalias !61409, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !61542
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !61543
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !61544, !noalias !61409

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !61545

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !61546, !noalias !61409
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !61547, !noalias !61409 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !61547
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !61547, !noalias !61409 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !61547
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !61547, !noalias !61409 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !61547
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !61547, !noalias !61409 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !61547
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !61547, !noalias !61409
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !61547
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !61547, !noalias !61409
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !61547
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !61547, !noalias !61409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !61548, !noalias !61409
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
  %i.cw = shl nuw i64 %3, 3, !dbg !61549
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !61549

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !61550
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !61550

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !61551
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !61552

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !61551
  %i.df = add i64 %i.de, %i.bt, !dbg !61551
end_hunk_0
begin_hunk_1_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !61660, !noalias !61409

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61661, !noalias !61409
  unreachable, !dbg !61661

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !61662, !noalias !61409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !61663, !noalias !61409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !61664, !noalias !61409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !61664, !noalias !61409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !61664, !noalias !61409
  call void @llvm.experimental.noalias.scope.decl(metadata !61442), !dbg !61665
  call void @llvm.experimental.noalias.scope.decl(metadata !61443), !dbg !61665
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !61666, !noalias !61444 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !61667
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !61667

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !61668, !alias.scope !61442, !noalias !61445
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !61669, !noalias !61444

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !61670, !noalias !61444

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61669, !noalias !61444
  unreachable, !dbg !61669

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !61671, !noalias !61409

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !61672, !noalias !61409

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !61673
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !61673, !alias.scope !61443, !noalias !61444, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !61674, !alias.scope !61442, !noalias !61445
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !61674
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !61674, !alias.scope !61442, !noalias !61445
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !61674
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !61674, !alias.scope !61442, !noalias !61445
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !61674
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !61674, !alias.scope !61442, !noalias !61445
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !61675

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !61675, !noalias !61444

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61676, !noalias !61444
  unreachable, !dbg !61676

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !61677

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !61678, !noalias !61409
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @76, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !61679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !61677, !noalias !61409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !61677, !noalias !61409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !61545, !noalias !61409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !61680, !noalias !61409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !61514, !noalias !61409
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61681

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @76) #43
          to label %bb.as unwind label %bb.ar, !dbg !61677, !noalias !61409

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61682, !noalias !61409
  unreachable, !dbg !61682

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !61677, !noalias !61409

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !61575
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !61575, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !61585 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !61586
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !61587
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !61588, !noalias !61409
  %i.kr = call i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !61589
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !61590
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !61591, !noalias !61409
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !61585 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !61586
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !61587
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !61588, !noalias !61409
  %i.kw = call i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !61589
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !61590
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !61591, !noalias !61409
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !61585 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !61586
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !61587
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !61588, !noalias !61409
  %i.lb = call i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !61589
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !61590
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !61591, !noalias !61409
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !61585 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !61586
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !61587
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !61588, !noalias !61409
  %i.lg = call i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !61589
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !61590
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !61591, !noalias !61409
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !61592
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !61584, !llvm.loop !61161

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !61683, !noalias !61409

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !61576
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !61577 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !61578, !noalias !61409, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !61579
  %i.lm = and i8 %i.ll, 7, !dbg !61579
  %i.ln = shl nuw i8 1, %i.lm, !dbg !61579
  %i.lo = xor i8 %i.ln, -1, !dbg !61580
  %i.lp = and i8 %i.lk, %i.lo, !dbg !61581
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !61582, !noalias !61409
  br label %.split.i.backedge, !dbg !61583

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !61545, !noalias !61409

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !61491

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !61514, !noalias !61409

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !61681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !61681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !61681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !61681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !61681
  br label %bb.cr, !dbg !61684

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !61446
  store i64 8, ptr %i.r, align 8, !dbg !61685, !noalias !61446
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !61686, !noalias !61446, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !61687 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !61687 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !61687
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !61688, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 3, !dbg !61689              ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !61689
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !61690, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !61691, !noalias !61446
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61692
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !61693, !noalias !61446
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !61692
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !61692
  store i8 42, ptr %i.am, align 8, !dbg !61692
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61694

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !61695, !noalias !61446
  call void @llvm.experimental.noalias.scope.decl(metadata !61451), !dbg !61696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !61697, !noalias !61452
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !61697, !noalias !61452
  %i.ma = load i64, ptr %i.c, align 8, !dbg !61697, !range !4010, !noalias !61452, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !61698
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !61699
  %i.md = load i64, ptr %i.mc, align 8, !dbg !61699, !range !3948, !noalias !61452, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !61699 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !61698, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !61700, !noalias !61452
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !61701, !noalias !61452
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !61702, !noalias !61446
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61703
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !61704, !noalias !61446
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !61703
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !61703
  store i8 42, ptr %i.am, align 8, !dbg !61703
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61705

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !61706

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !61706

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !61707, !noalias !61452, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !61708, !noalias !61452
  store i64 %i.md, ptr %i.q, align 8, !dbg !61709, !alias.scope !61451, !noalias !61446
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !61709
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !61709, !alias.scope !61451, !noalias !61446
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !61709
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !61709, !alias.scope !61451, !noalias !61446
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !61710   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !61711, !noalias !61446
  store i64 %i.mm, ptr %i.p, align 8, !dbg !61711, !noalias !61446
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !61712, !noalias !61446, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !61713       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !61713, !noalias !61446
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !61714
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !61714, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !61715, !noalias !61446

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !61716, !noalias !61446
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !61717
  %i.mr = lshr i64 %i.mq, 3, !dbg !61718          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !61719, !noalias !61458
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !61719, !noalias !61446

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !61719, !range !4010, !noalias !61458, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !61720
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !61721
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !61721, !range !3948, !noalias !61458, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !61721 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !61720, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !61722, !noalias !61458
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !61723, !noalias !61446

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !61723

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !61724, !noalias !61458, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !61725
  call void @llvm.assume(i1 %i.mz), !dbg !61726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !61727, !noalias !61458
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !61728, !noalias !61458
  store i64 %i.mv, ptr %i.n, align 8, !dbg !61729, !noalias !61446
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !61729
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !61729, !noalias !61446
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !61729
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !61729, !noalias !61446
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !61729
  store i64 %i.mn, ptr %i.na, align 8, !dbg !61729, !noalias !61446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !61730, !noalias !61446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !61731, !noalias !61446
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !61732, !noalias !61446, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !61733, !noalias !61446
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !61733
  store i64 0, ptr %i.nc, align 8, !dbg !61733, !noalias !61446
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !61733
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !61733, !noalias !61446
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !61734 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !61734, !noalias !61446, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !61734
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !61735
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !61736, !noalias !61446

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !61737

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !61738, !noalias !61446
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !61739, !noalias !61446 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !61739
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !61739, !noalias !61446 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !61739
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !61739, !noalias !61446 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !61739
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !61739, !noalias !61446 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !61739
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !61739, !noalias !61446
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !61739
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !61739, !noalias !61446
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !61739
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !61739, !noalias !61446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !61740, !noalias !61446
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !61741
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !61741

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !61741

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !61742 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !61743, !noalias !61459, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !61744, !noalias !61459, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !61745
  call void @llvm.assume(i1 %i.nv), !dbg !61746
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !61747 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !61748, !noalias !61459, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !61749, !noalias !61459, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !61460), !dbg !61750
  call void @llvm.experimental.noalias.scope.decl(metadata !61461), !dbg !61750
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !61751, !alias.scope !61460, !noalias !61462, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !61751
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !61751

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !61752
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !61752, !alias.scope !61460, !noalias !61462, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !61752      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !61753
  call void @llvm.assume(i1 %i.oe), !dbg !61754
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !61755
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !61756
end_hunk_1
begin_hunk_2_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !61864, !noalias !61446

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61869, !noalias !61446
  unreachable, !dbg !61869

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !61864, !noalias !61446

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !61766
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !61766, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !61775
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !61776
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !61777, !noalias !61446
  br label %.split.i28.backedge, !dbg !61778

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !61870, !noalias !61446

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !61767
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !61768 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !61769, !noalias !61446, !noundef !3817
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !61770
  %i.ru = and i8 %i.rt, 7, !dbg !61770
  %i.rv = shl nuw i8 1, %i.ru, !dbg !61770
  %i.rw = xor i8 %i.rv, -1, !dbg !61771
  %i.rx = and i8 %i.rs, %i.rw, !dbg !61772
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !61773, !noalias !61446
  br label %.split.i28.backedge, !dbg !61774

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !61779

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !61737, !noalias !61446

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !61706, !noalias !61446

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !61868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !61868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !61868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !61868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !61868
  br label %bb.cr, !dbg !61871

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !61872, !range !4401, !noundef !3817 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !61872
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !61873

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !61875
  br label %bb.cx, !dbg !61876

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !61877
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !61877
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !61481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !61877
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !61481
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !61481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !61481
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !61878, !noalias !61482
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !61879, !noalias !61482 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !61880
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !61881, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !61882

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !61882

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !61883

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61884
  unreachable, !dbg !61884

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !61885
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61886
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !61886
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !61886
  store ptr @85, ptr %i.sg, align 8, !dbg !61886
  store i64 18, ptr %0, align 8, !dbg !61886
  br label %bb.cx, !dbg !61876

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !61876
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynfECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !61887 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !62495
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !62495, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !62496 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !62496 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !62496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !62415
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !62497
  %i.av = load ptr, ptr %i.au, align 8, !dbg !62497, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !62498
  %i.aw = load i128, ptr %i.an, align 16, !dbg !62499, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !62500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !62415
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !62501, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !62502
  unreachable, !dbg !62502

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !62503 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !62504

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !62421
  store i64 4, ptr %i.ak, align 8, !dbg !62505, !noalias !62421
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !62506, !noalias !62421, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !62507 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !62507 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !62507
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !62508, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 2, !dbg !62509              ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !62509
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !62510, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !62511, !noalias !62421
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62512
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !62513, !noalias !62421
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !62512
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !62512
  store i8 42, ptr %i.am, align 8, !dbg !62512
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62514

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !62515, !noalias !62421
  call void @llvm.experimental.noalias.scope.decl(metadata !62426), !dbg !62516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !62517, !noalias !62427
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !62517, !noalias !62427
  %i.bj = load i64, ptr %i.v, align 8, !dbg !62517, !range !4010, !noalias !62427, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !62518
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !62519
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !62519, !range !3948, !noalias !62427, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !62519 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !62518, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !62520, !noalias !62427
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !62521, !noalias !62427
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !62522, !noalias !62421
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62523
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !62524, !noalias !62421
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !62523
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !62523
  store i8 42, ptr %i.am, align 8, !dbg !62523
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62525

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !62526

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !62526

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !62527, !noalias !62427, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !62528 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !62528, !noalias !62427
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !62529, !alias.scope !62426, !noalias !62421
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !62529
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !62529, !alias.scope !62426, !noalias !62421
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !62529
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !62529, !alias.scope !62426, !noalias !62421
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !62530   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !62531, !noalias !62421
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !62531, !noalias !62421
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !62532, !noalias !62421, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !62533       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !62533, !noalias !62421
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !62534
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !62534, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !62535, !noalias !62421

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !62536, !noalias !62421
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !62537
  %i.cb = lshr i64 %i.ca, 3, !dbg !62538          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !62539, !noalias !62433
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !62539, !noalias !62421

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !62539, !range !4010, !noalias !62433, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !62540
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !62541
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !62541, !range !3948, !noalias !62433, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !62541 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !62540, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !62542, !noalias !62433
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !62543, !noalias !62421

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !62543

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !62544, !noalias !62433, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !62545
  call void @llvm.assume(i1 %i.cj), !dbg !62546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !62547, !noalias !62433
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !62548, !noalias !62433
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !62549, !noalias !62421
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !62549
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !62549, !noalias !62421
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !62549
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !62549, !noalias !62421
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !62549
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !62549, !noalias !62421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !62550, !noalias !62421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !62551, !noalias !62421
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !62552, !noalias !62421, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !62553, !noalias !62421
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !62553
  store i64 0, ptr %i.cm, align 8, !dbg !62553, !noalias !62421
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !62553
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !62553, !noalias !62421
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !62554 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !62554, !noalias !62421, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !62554
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !62555
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !62556, !noalias !62421

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !62557

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !62558, !noalias !62421
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !62559, !noalias !62421 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !62559
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !62559, !noalias !62421 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !62559
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !62559, !noalias !62421 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !62559
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !62559, !noalias !62421 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !62559
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !62559, !noalias !62421
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !62559
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !62559, !noalias !62421
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !62559
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !62559, !noalias !62421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !62560, !noalias !62421
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
  %i.cw = shl nuw i64 %3, 2, !dbg !62561
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !62561

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !62562
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !62562

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !62563
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !62564

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !62563
  %i.df = add i64 %i.de, %i.bt, !dbg !62563
end_hunk_2
begin_hunk_3_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynfECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !62672, !noalias !62421

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62673, !noalias !62421
  unreachable, !dbg !62673

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !62674, !noalias !62421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !62675, !noalias !62421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !62676, !noalias !62421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !62676, !noalias !62421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !62676, !noalias !62421
  call void @llvm.experimental.noalias.scope.decl(metadata !62454), !dbg !62677
  call void @llvm.experimental.noalias.scope.decl(metadata !62455), !dbg !62677
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !62678, !noalias !62456 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !62679
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !62679

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !62680, !alias.scope !62454, !noalias !62457
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !62681, !noalias !62456

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !62682, !noalias !62456

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62681, !noalias !62456
  unreachable, !dbg !62681

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !62683, !noalias !62421

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !62684, !noalias !62421

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !62685
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !62685, !alias.scope !62455, !noalias !62456, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !62686, !alias.scope !62454, !noalias !62457
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !62686
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !62686, !alias.scope !62454, !noalias !62457
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !62686
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !62686, !alias.scope !62454, !noalias !62457
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !62686
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !62686, !alias.scope !62454, !noalias !62457
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !62687

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !62687, !noalias !62456

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62688, !noalias !62456
  unreachable, !dbg !62688

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !62689

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !62690, !noalias !62421
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @75, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !62691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !62689, !noalias !62421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !62689, !noalias !62421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !62557, !noalias !62421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !62692, !noalias !62421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !62526, !noalias !62421
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62693

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @75) #43
          to label %bb.as unwind label %bb.ar, !dbg !62689, !noalias !62421

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62694, !noalias !62421
  unreachable, !dbg !62694

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !62689, !noalias !62421

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !62587
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !62587, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !62597 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !62598
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !62599
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !62600, !noalias !62421
  %i.kr = call i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !62601
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !62602
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !62603, !noalias !62421
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !62597 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !62598
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !62599
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !62600, !noalias !62421
  %i.kw = call i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !62601
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !62602
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !62603, !noalias !62421
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !62597 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !62598
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !62599
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !62600, !noalias !62421
  %i.lb = call i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !62601
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !62602
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !62603, !noalias !62421
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !62597 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !62598
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !62599
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !62600, !noalias !62421
  %i.lg = call i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !62601
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !62602
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !62603, !noalias !62421
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !62604
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !62596, !llvm.loop !62173

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !62695, !noalias !62421

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !62588
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !62589 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !62590, !noalias !62421, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !62591
  %i.lm = and i8 %i.ll, 7, !dbg !62591
  %i.ln = shl nuw i8 1, %i.lm, !dbg !62591
  %i.lo = xor i8 %i.ln, -1, !dbg !62592
  %i.lp = and i8 %i.lk, %i.lo, !dbg !62593
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !62594, !noalias !62421
  br label %.split.i.backedge, !dbg !62595

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !62557, !noalias !62421

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !62503

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !62526, !noalias !62421

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !62693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !62693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !62693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !62693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !62693
  br label %bb.cr, !dbg !62696

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !62458
  store i64 4, ptr %i.r, align 8, !dbg !62697, !noalias !62458
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !62698, !noalias !62458, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !62699 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !62699 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !62699
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !62700, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 2, !dbg !62701              ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !62701
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !62702, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !62703, !noalias !62458
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62704
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !62705, !noalias !62458
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !62704
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !62704
  store i8 42, ptr %i.am, align 8, !dbg !62704
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62706

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !62707, !noalias !62458
  call void @llvm.experimental.noalias.scope.decl(metadata !62463), !dbg !62708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !62709, !noalias !62464
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !62709, !noalias !62464
  %i.ma = load i64, ptr %i.c, align 8, !dbg !62709, !range !4010, !noalias !62464, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !62710
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !62711
  %i.md = load i64, ptr %i.mc, align 8, !dbg !62711, !range !3948, !noalias !62464, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !62711 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !62710, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !62712, !noalias !62464
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !62713, !noalias !62464
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !62714, !noalias !62458
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62715
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !62716, !noalias !62458
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !62715
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !62715
  store i8 42, ptr %i.am, align 8, !dbg !62715
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62717

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !62718

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !62718

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !62719, !noalias !62464, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !62720, !noalias !62464
  store i64 %i.md, ptr %i.q, align 8, !dbg !62721, !alias.scope !62463, !noalias !62458
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !62721
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !62721, !alias.scope !62463, !noalias !62458
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !62721
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !62721, !alias.scope !62463, !noalias !62458
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !62722   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !62723, !noalias !62458
  store i64 %i.mm, ptr %i.p, align 8, !dbg !62723, !noalias !62458
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !62724, !noalias !62458, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !62725       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !62725, !noalias !62458
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !62726
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !62726, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !62727, !noalias !62458

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !62728, !noalias !62458
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !62729
  %i.mr = lshr i64 %i.mq, 3, !dbg !62730          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !62731, !noalias !62470
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !62731, !noalias !62458

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !62731, !range !4010, !noalias !62470, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !62732
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !62733
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !62733, !range !3948, !noalias !62470, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !62733 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !62732, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !62734, !noalias !62470
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !62735, !noalias !62458

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !62735

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !62736, !noalias !62470, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !62737
  call void @llvm.assume(i1 %i.mz), !dbg !62738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !62739, !noalias !62470
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !62740, !noalias !62470
  store i64 %i.mv, ptr %i.n, align 8, !dbg !62741, !noalias !62458
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !62741
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !62741, !noalias !62458
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !62741
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !62741, !noalias !62458
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !62741
  store i64 %i.mn, ptr %i.na, align 8, !dbg !62741, !noalias !62458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !62742, !noalias !62458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !62743, !noalias !62458
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !62744, !noalias !62458, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !62745, !noalias !62458
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !62745
  store i64 0, ptr %i.nc, align 8, !dbg !62745, !noalias !62458
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !62745
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !62745, !noalias !62458
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !62746 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !62746, !noalias !62458, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !62746
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !62747
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !62748, !noalias !62458

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !62749

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !62750, !noalias !62458
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !62751, !noalias !62458 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !62751
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !62751, !noalias !62458 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !62751
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !62751, !noalias !62458 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !62751
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !62751, !noalias !62458 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !62751
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !62751, !noalias !62458
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !62751
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !62751, !noalias !62458
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !62751
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !62751, !noalias !62458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !62752, !noalias !62458
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !62753
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !62753

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !62753

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !62754 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !62755, !noalias !62471, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !62756, !noalias !62471, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !62757
  call void @llvm.assume(i1 %i.nv), !dbg !62758
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !62759 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !62760, !noalias !62471, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !62761, !noalias !62471, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !62472), !dbg !62762
  call void @llvm.experimental.noalias.scope.decl(metadata !62473), !dbg !62762
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !62763, !alias.scope !62472, !noalias !62474, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !62763
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !62763

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !62764
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !62764, !alias.scope !62472, !noalias !62474, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !62764      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !62765
  call void @llvm.assume(i1 %i.oe), !dbg !62766
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !62767
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !62768
end_hunk_3
begin_hunk_4_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynhECskY9G75ZWc4U_11polars_expr:bb.a
  %eh.lpad-body83137.i = phi { ptr, i32 } [ %lpad.thr_comm.i60, %.body82.thread139.i ], [ %i.py, %bb.cf ], [ %i.pt, %bb.cc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.po, ptr nonnull @69) #43
          to label %bb.ci unwind label %bb.ch, !dbg !63810, !noalias !63414

bb.ch:                                            ; preds = %bb.cm, %.thread110.i, %bb.ci, %.body82.thread.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63815, !noalias !63414
  unreachable, !dbg !63815

bb.ci:                                            ; preds = %.body82.thread.i, %bb.bx, %bb.bu
  %.sroa.040.1.ph.i = phi i1 [ false, %.body82.thread.i ], [ true, %bb.bu ], [ true, %bb.bx ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body83137.i, %.body82.thread.i ], [ %i.pn, %bb.bu ], [ %i.pq, %bb.bx ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.k) #43
          to label %bb.bf unwind label %bb.ch, !dbg !63810, !noalias !63414

bb.cj:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qb = icmp ult i64 %.sroa.21.0.i29, %i.lb, !dbg !63712
  br i1 %i.qb, label %bb.cl, label %.split152.us.i, !dbg !63712, !prof !3923

bb.ck:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qc = mul i64 %.sroa.21.0.i29, %3, !dbg !63721
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.qc, !dbg !63722
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr nonnull align 1 %i.pa, i64 %3, i1 false), !dbg !63723, !noalias !63414
  br label %.split.i28.backedge, !dbg !63724

.split152.us.i:                                   ; preds = %bb.cj, %bb.bi
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bd unwind label %.loopexit.split-lp.i12, !dbg !63816, !noalias !63414

bb.cl:                                            ; preds = %bb.cj
  %i.qe = lshr i64 %.sroa.21.0.i29, 3, !dbg !63713
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.qe, !dbg !63714 ; 2 uses
  %i.qg = load i8, ptr %i.qf, align 1, !dbg !63715, !noalias !63414, !noundef !3817
  %i.qh = trunc i64 %.sroa.21.0.i29 to i8, !dbg !63716
  %i.qi = and i8 %i.qh, 7, !dbg !63716
  %i.qj = shl nuw i8 1, %i.qi, !dbg !63716
  %i.qk = xor i8 %i.qj, -1, !dbg !63717
  %i.ql = and i8 %i.qg, %i.qk, !dbg !63718
  store i8 %i.ql, ptr %i.qf, align 1, !dbg !63719, !noalias !63414
  br label %.split.i28.backedge, !dbg !63720

.split.i28.backedge:                              ; preds = %bb.cl, %bb.ck
  br label %.split.i28, !dbg !63725

.thread110.i:                                     ; preds = %bb.br, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bf
  %.pn66115.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bf ], [ %i.pi, %bb.br ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1114.i = phi i1 [ false, %bb.bf ], [ true, %bb.br ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.m) #43
          to label %bb.ay unwind label %bb.ch, !dbg !63683, !noalias !63414

bb.cm:                                            ; preds = %.thread.i8, %bb.ay
  %.pn68109.i = phi { ptr, i32 } [ %i.kx, %.thread.i8 ], [ %.pn66115.i, %bb.ay ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.p) #43
          to label %common.resume unwind label %bb.ch, !dbg !63653, !noalias !63414

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ax, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !63814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !63814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !63814
  br label %bb.cn, !dbg !63817

bb.cn:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qm = load i8, ptr %i.ai, align 8, !dbg !63818, !range !4401, !noundef !3817 ; 2 uses
  %i.qn = icmp eq i8 %i.qm, 42, !dbg !63818
  br i1 %i.qn, label %bb.co, label %bb.cp, !dbg !63819

bb.co:                                            ; preds = %bb.cn
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !63820
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i64 72, i1 false), !dbg !63821
  br label %bb.ct, !dbg !63822

bb.cp:                                            ; preds = %bb.cn
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !63823
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80, !dbg !63823
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 80, !dbg !63445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !63823
  store i8 %i.qm, ptr %i.ak, align 8, !dbg !63445
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !63445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !63445
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !63824, !noalias !63446
  %i.qp = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !63825, !noalias !63446 ; 3 uses
  %i.qq = icmp eq ptr %i.qp, null, !dbg !63826
  br i1 %i.qq, label %bb.cq, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !63827, !prof !3850

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cr, !dbg !63828

.noexc:                                           ; preds = %bb.cq
  unreachable, !dbg !63828

bb.cr:                                            ; preds = %bb.cq
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ak) #43
          to label %common.resume unwind label %bb.cs, !dbg !63829

bb.cs:                                            ; preds = %bb.cr
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63830
  unreachable, !dbg !63830

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qp, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !dbg !63831
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !63832
  store ptr %i.qp, ptr %i.qt, align 8, !dbg !63832
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !63832
  store ptr @85, ptr %i.qu, align 8, !dbg !63832
  store i64 18, ptr %0, align 8, !dbg !63832
  br label %bb.ct, !dbg !63822

bb.ct:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.co
  ret void, !dbg !63822
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !63833 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !64441
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !64441, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !64442 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !64442 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !64442
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !64361
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !64443
  %i.av = load ptr, ptr %i.au, align 8, !dbg !64443, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !64444
  %i.aw = load i128, ptr %i.an, align 16, !dbg !64445, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !64446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !64361
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !64447, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !64448
  unreachable, !dbg !64448

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !64449 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !64450

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !64367
  store i64 4, ptr %i.ak, align 8, !dbg !64451, !noalias !64367
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !64452, !noalias !64367, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !64453 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !64453 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !64453
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !64454, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 2, !dbg !64455              ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !64455
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !64456, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !64457, !noalias !64367
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64458
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !64459, !noalias !64367
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !64458
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !64458
  store i8 42, ptr %i.am, align 8, !dbg !64458
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64460

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !64461, !noalias !64367
  call void @llvm.experimental.noalias.scope.decl(metadata !64372), !dbg !64462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !64463, !noalias !64373
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !64463, !noalias !64373
  %i.bj = load i64, ptr %i.v, align 8, !dbg !64463, !range !4010, !noalias !64373, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !64464
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !64465
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !64465, !range !3948, !noalias !64373, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !64465 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !64464, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !64466, !noalias !64373
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !64467, !noalias !64373
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !64468, !noalias !64367
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64469
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !64470, !noalias !64367
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !64469
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !64469
  store i8 42, ptr %i.am, align 8, !dbg !64469
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64471

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !64472

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !64472

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !64473, !noalias !64373, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !64474 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !64474, !noalias !64373
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !64475, !alias.scope !64372, !noalias !64367
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !64475
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !64475, !alias.scope !64372, !noalias !64367
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !64475
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !64475, !alias.scope !64372, !noalias !64367
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !64476   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !64477, !noalias !64367
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !64477, !noalias !64367
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !64478, !noalias !64367, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !64479       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !64479, !noalias !64367
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !64480
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !64480, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !64481, !noalias !64367

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !64482, !noalias !64367
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !64483
  %i.cb = lshr i64 %i.ca, 3, !dbg !64484          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !64485, !noalias !64379
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !64485, !noalias !64367

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !64485, !range !4010, !noalias !64379, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !64486
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !64487
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !64487, !range !3948, !noalias !64379, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !64487 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !64486, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !64488, !noalias !64379
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !64489, !noalias !64367

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !64489

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !64490, !noalias !64379, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !64491
  call void @llvm.assume(i1 %i.cj), !dbg !64492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !64493, !noalias !64379
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !64494, !noalias !64379
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !64495, !noalias !64367
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !64495
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !64495, !noalias !64367
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !64495
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !64495, !noalias !64367
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !64495
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !64495, !noalias !64367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !64496, !noalias !64367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !64497, !noalias !64367
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !64498, !noalias !64367, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !64499, !noalias !64367
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !64499
  store i64 0, ptr %i.cm, align 8, !dbg !64499, !noalias !64367
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !64499
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !64499, !noalias !64367
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !64500 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !64500, !noalias !64367, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !64500
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !64501
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !64502, !noalias !64367

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !64503

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !64504, !noalias !64367
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !64505, !noalias !64367 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !64505
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !64505, !noalias !64367 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !64505
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !64505, !noalias !64367 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !64505
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !64505, !noalias !64367 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !64505
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !64505, !noalias !64367
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !64505
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !64505, !noalias !64367
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !64505
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !64505, !noalias !64367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !64506, !noalias !64367
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
  %i.cw = shl nuw i64 %3, 2, !dbg !64507
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !64507

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !64508
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !64508

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !64509
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !64510

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !64509
  %i.df = add i64 %i.de, %i.bt, !dbg !64509
end_hunk_4
begin_hunk_5_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !64618, !noalias !64367

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64619, !noalias !64367
  unreachable, !dbg !64619

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !64620, !noalias !64367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !64621, !noalias !64367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !64622, !noalias !64367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !64622, !noalias !64367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !64622, !noalias !64367
  call void @llvm.experimental.noalias.scope.decl(metadata !64400), !dbg !64623
  call void @llvm.experimental.noalias.scope.decl(metadata !64401), !dbg !64623
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !64624, !noalias !64402 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !64625
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !64625

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !64626, !alias.scope !64400, !noalias !64403
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !64627, !noalias !64402

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !64628, !noalias !64402

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64627, !noalias !64402
  unreachable, !dbg !64627

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !64629, !noalias !64367

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !64630, !noalias !64367

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !64631
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !64631, !alias.scope !64401, !noalias !64402, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !64632, !alias.scope !64400, !noalias !64403
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !64632
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !64632, !alias.scope !64400, !noalias !64403
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !64632
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !64632, !alias.scope !64400, !noalias !64403
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !64632
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !64632, !alias.scope !64400, !noalias !64403
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !64633

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !64633, !noalias !64402

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64634, !noalias !64402
  unreachable, !dbg !64634

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !64635

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !64636, !noalias !64367
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @66, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !64637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !64635, !noalias !64367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !64635, !noalias !64367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !64503, !noalias !64367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !64638, !noalias !64367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !64472, !noalias !64367
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64639

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @66) #43
          to label %bb.as unwind label %bb.ar, !dbg !64635, !noalias !64367

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64640, !noalias !64367
  unreachable, !dbg !64640

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !64635, !noalias !64367

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !64533
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !64533, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !64543 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !64544
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !64545
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !64546, !noalias !64367
  %i.kr = call noundef i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !64547
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !64548
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !64549, !noalias !64367
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !64543 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !64544
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !64545
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !64546, !noalias !64367
  %i.kw = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !64547
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !64548
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !64549, !noalias !64367
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !64543 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !64544
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !64545
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !64546, !noalias !64367
  %i.lb = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !64547
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !64548
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !64549, !noalias !64367
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !64543 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !64544
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !64545
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !64546, !noalias !64367
  %i.lg = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !64547
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !64548
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !64549, !noalias !64367
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !64550
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !64542, !llvm.loop !64119

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !64641, !noalias !64367

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !64534
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !64535 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !64536, !noalias !64367, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !64537
  %i.lm = and i8 %i.ll, 7, !dbg !64537
  %i.ln = shl nuw i8 1, %i.lm, !dbg !64537
  %i.lo = xor i8 %i.ln, -1, !dbg !64538
  %i.lp = and i8 %i.lk, %i.lo, !dbg !64539
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !64540, !noalias !64367
  br label %.split.i.backedge, !dbg !64541

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !64503, !noalias !64367

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !64449

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !64472, !noalias !64367

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !64639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !64639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !64639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !64639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !64639
  br label %bb.cr, !dbg !64642

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !64404
  store i64 4, ptr %i.r, align 8, !dbg !64643, !noalias !64404
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !64644, !noalias !64404, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !64645 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !64645 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !64645
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !64646, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 2, !dbg !64647              ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !64647
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !64648, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !64649, !noalias !64404
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64650
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !64651, !noalias !64404
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !64650
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !64650
  store i8 42, ptr %i.am, align 8, !dbg !64650
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64652

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !64653, !noalias !64404
  call void @llvm.experimental.noalias.scope.decl(metadata !64409), !dbg !64654
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !64655, !noalias !64410
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !64655, !noalias !64410
  %i.ma = load i64, ptr %i.c, align 8, !dbg !64655, !range !4010, !noalias !64410, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !64656
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !64657
  %i.md = load i64, ptr %i.mc, align 8, !dbg !64657, !range !3948, !noalias !64410, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !64657 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !64656, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !64658, !noalias !64410
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !64659, !noalias !64410
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !64660, !noalias !64404
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64661
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !64662, !noalias !64404
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !64661
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !64661
  store i8 42, ptr %i.am, align 8, !dbg !64661
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64663

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !64664

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !64664

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !64665, !noalias !64410, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !64666, !noalias !64410
  store i64 %i.md, ptr %i.q, align 8, !dbg !64667, !alias.scope !64409, !noalias !64404
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !64667
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !64667, !alias.scope !64409, !noalias !64404
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !64667
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !64667, !alias.scope !64409, !noalias !64404
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !64668   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !64669, !noalias !64404
  store i64 %i.mm, ptr %i.p, align 8, !dbg !64669, !noalias !64404
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !64670, !noalias !64404, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !64671       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !64671, !noalias !64404
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !64672
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !64672, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !64673, !noalias !64404

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !64674, !noalias !64404
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !64675
  %i.mr = lshr i64 %i.mq, 3, !dbg !64676          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !64677, !noalias !64416
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !64677, !noalias !64404

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !64677, !range !4010, !noalias !64416, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !64678
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !64679
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !64679, !range !3948, !noalias !64416, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !64679 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !64678, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !64680, !noalias !64416
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !64681, !noalias !64404

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !64681

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !64682, !noalias !64416, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !64683
  call void @llvm.assume(i1 %i.mz), !dbg !64684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64685, !noalias !64416
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !64686, !noalias !64416
  store i64 %i.mv, ptr %i.n, align 8, !dbg !64687, !noalias !64404
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !64687
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !64687, !noalias !64404
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !64687
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !64687, !noalias !64404
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !64687
  store i64 %i.mn, ptr %i.na, align 8, !dbg !64687, !noalias !64404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !64688, !noalias !64404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !64689, !noalias !64404
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !64690, !noalias !64404, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !64691, !noalias !64404
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !64691
  store i64 0, ptr %i.nc, align 8, !dbg !64691, !noalias !64404
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !64691
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !64691, !noalias !64404
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !64692 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !64692, !noalias !64404, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !64692
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !64693
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !64694, !noalias !64404

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !64695

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !64696, !noalias !64404
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !64697, !noalias !64404 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !64697
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !64697, !noalias !64404 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !64697
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !64697, !noalias !64404 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !64697
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !64697, !noalias !64404 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !64697
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !64697, !noalias !64404
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !64697
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !64697, !noalias !64404
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !64697
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !64697, !noalias !64404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !64698, !noalias !64404
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !64699
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !64699

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !64699

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !64700 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !64701, !noalias !64417, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !64702, !noalias !64417, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !64703
  call void @llvm.assume(i1 %i.nv), !dbg !64704
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !64705 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !64706, !noalias !64417, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !64707, !noalias !64417, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !64418), !dbg !64708
  call void @llvm.experimental.noalias.scope.decl(metadata !64419), !dbg !64708
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !64709, !alias.scope !64418, !noalias !64420, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !64709
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !64709

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !64710
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !64710, !alias.scope !64418, !noalias !64420, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !64710      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !64711
  call void @llvm.assume(i1 %i.oe), !dbg !64712
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !64713
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !64714
end_hunk_5
begin_hunk_6_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !64822, !noalias !64404

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64827, !noalias !64404
  unreachable, !dbg !64827

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !64822, !noalias !64404

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !64724
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !64724, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !64733
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !64734
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !64735, !noalias !64404
  br label %.split.i28.backedge, !dbg !64736

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !64828, !noalias !64404

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !64725
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !64726 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !64727, !noalias !64404, !noundef !3817
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !64728
  %i.ru = and i8 %i.rt, 7, !dbg !64728
  %i.rv = shl nuw i8 1, %i.ru, !dbg !64728
  %i.rw = xor i8 %i.rv, -1, !dbg !64729
  %i.rx = and i8 %i.rs, %i.rw, !dbg !64730
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !64731, !noalias !64404
  br label %.split.i28.backedge, !dbg !64732

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !64737

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !64695, !noalias !64404

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !64664, !noalias !64404

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !64826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !64826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !64826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !64826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !64826
  br label %bb.cr, !dbg !64829

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !64830, !range !4401, !noundef !3817 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !64830
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !64831

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !64833
  br label %bb.cx, !dbg !64834

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !64835
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !64835
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !64439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !64835
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !64439
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !64439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !64439
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !64836, !noalias !64440
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !64837, !noalias !64440 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !64838
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !64839, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !64840

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !64840

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !64841

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64842
  unreachable, !dbg !64842

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !64843
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !64844
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !64844
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !64844
  store ptr @85, ptr %i.sg, align 8, !dbg !64844
  store i64 18, ptr %0, align 8, !dbg !64844
  br label %bb.cx, !dbg !64834

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !64834
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !64845 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !65451
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !65451, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !65452 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !65452 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !65452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !65371
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !65453
  %i.av = load ptr, ptr %i.au, align 8, !dbg !65453, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !65454
  %i.aw = load i128, ptr %i.an, align 16, !dbg !65455, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !65456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !65371
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !65457, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !65458
  unreachable, !dbg !65458

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !65459 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !65460

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !65377
  store i64 4, ptr %i.ak, align 8, !dbg !65461, !noalias !65377
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !65462, !noalias !65377, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !65463 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !65463 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !65463
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !65464, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 2, !dbg !65465              ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !65465
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !65466, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !65467, !noalias !65377
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65468
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !65469, !noalias !65377
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !65468
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !65468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !65468
  store i8 42, ptr %i.am, align 8, !dbg !65468
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65470

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !65471, !noalias !65377
  call void @llvm.experimental.noalias.scope.decl(metadata !65382), !dbg !65472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !65473, !noalias !65383
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !65473, !noalias !65383
  %i.bj = load i64, ptr %i.v, align 8, !dbg !65473, !range !4010, !noalias !65383, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !65474
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !65475
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !65475, !range !3948, !noalias !65383, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !65475 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !65474, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !65476, !noalias !65383
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !65477, !noalias !65383
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !65478, !noalias !65377
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65479
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !65480, !noalias !65377
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !65479
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !65479
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !65479
  store i8 42, ptr %i.am, align 8, !dbg !65479
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65481

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !65482

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !65482

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !65483, !noalias !65383, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !65484 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !65484, !noalias !65383
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !65485, !alias.scope !65382, !noalias !65377
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !65485
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !65485, !alias.scope !65382, !noalias !65377
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !65485
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !65485, !alias.scope !65382, !noalias !65377
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !65486   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !65487, !noalias !65377
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !65487, !noalias !65377
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !65488, !noalias !65377, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !65489       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !65489, !noalias !65377
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !65490
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !65490, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !65491, !noalias !65377

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !65492, !noalias !65377
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !65493
  %i.cb = lshr i64 %i.ca, 3, !dbg !65494          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !65495, !noalias !65389
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !65495, !noalias !65377

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !65495, !range !4010, !noalias !65389, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !65496
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !65497
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !65497, !range !3948, !noalias !65389, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !65497 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !65496, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !65498, !noalias !65389
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !65499, !noalias !65377

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !65499

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !65500, !noalias !65389, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !65501
  call void @llvm.assume(i1 %i.cj), !dbg !65502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !65503, !noalias !65389
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !65504, !noalias !65389
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !65505, !noalias !65377
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !65505
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !65505, !noalias !65377
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !65505
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !65505, !noalias !65377
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !65505
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !65505, !noalias !65377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !65506, !noalias !65377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !65507, !noalias !65377
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !65508, !noalias !65377, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !65509, !noalias !65377
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !65509
  store i64 0, ptr %i.cm, align 8, !dbg !65509, !noalias !65377
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !65509
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !65509, !noalias !65377
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !65510 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !65510, !noalias !65377, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !65510
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !65511
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !65512, !noalias !65377

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !65513

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !65514, !noalias !65377
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !65515, !noalias !65377 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !65515
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !65515, !noalias !65377 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !65515
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !65515, !noalias !65377 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !65515
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !65515, !noalias !65377 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !65515
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !65515, !noalias !65377
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !65515
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !65515, !noalias !65377
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !65515
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !65515, !noalias !65377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !65516, !noalias !65377
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
  %i.cw = shl nuw i64 %3, 2, !dbg !65517
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !65517

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !65518
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !65518

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !65519
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !65520

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !65519
  %i.df = add i64 %i.de, %i.bt, !dbg !65519
end_hunk_6
begin_hunk_7_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !65628, !noalias !65377

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65629, !noalias !65377
  unreachable, !dbg !65629

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !65630, !noalias !65377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !65631, !noalias !65377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !65632, !noalias !65377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !65632, !noalias !65377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !65632, !noalias !65377
  call void @llvm.experimental.noalias.scope.decl(metadata !65410), !dbg !65633
  call void @llvm.experimental.noalias.scope.decl(metadata !65411), !dbg !65633
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !65634, !noalias !65412 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !65635
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !65635

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !65636, !alias.scope !65410, !noalias !65413
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !65637, !noalias !65412

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !65638, !noalias !65412

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65637, !noalias !65412
  unreachable, !dbg !65637

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !65639, !noalias !65377

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !65640, !noalias !65377

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !65641
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !65641, !alias.scope !65411, !noalias !65412, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !65642, !alias.scope !65410, !noalias !65413
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !65642
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !65642, !alias.scope !65410, !noalias !65413
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !65642
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !65642, !alias.scope !65410, !noalias !65413
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !65642
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !65642, !alias.scope !65410, !noalias !65413
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !65643

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !65643, !noalias !65412

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65644, !noalias !65412
  unreachable, !dbg !65644

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !65645

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !65646, !noalias !65377
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @71, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !65647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !65645, !noalias !65377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !65645, !noalias !65377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !65513, !noalias !65377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !65648, !noalias !65377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !65482, !noalias !65377
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65649

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @71) #43
          to label %bb.as unwind label %bb.ar, !dbg !65645, !noalias !65377

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65650, !noalias !65377
  unreachable, !dbg !65650

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !65645, !noalias !65377

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !65543
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !65543, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !65553 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !65554
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !65555
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !65556, !noalias !65377
  %i.kr = call noundef i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !65557
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !65558
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !65559, !noalias !65377
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !65553 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !65554
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !65555
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !65556, !noalias !65377
  %i.kw = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !65557
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !65558
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !65559, !noalias !65377
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !65553 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !65554
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !65555
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !65556, !noalias !65377
  %i.lb = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !65557
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !65558
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !65559, !noalias !65377
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !65553 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !65554
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !65555
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !65556, !noalias !65377
  %i.lg = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !65557
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !65558
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !65559, !noalias !65377
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !65560
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !65552, !llvm.loop !65129

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !65651, !noalias !65377

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !65544
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !65545 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !65546, !noalias !65377, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !65547
  %i.lm = and i8 %i.ll, 7, !dbg !65547
  %i.ln = shl nuw i8 1, %i.lm, !dbg !65547
  %i.lo = xor i8 %i.ln, -1, !dbg !65548
  %i.lp = and i8 %i.lk, %i.lo, !dbg !65549
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !65550, !noalias !65377
  br label %.split.i.backedge, !dbg !65551

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !65513, !noalias !65377

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !65459

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !65482, !noalias !65377

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !65649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !65649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !65649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !65649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !65649
  br label %bb.cr, !dbg !65652

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !65414
  store i64 4, ptr %i.r, align 8, !dbg !65653, !noalias !65414
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !65654, !noalias !65414, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !65655 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !65655 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !65655
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !65656, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 2, !dbg !65657              ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !65657
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !65658, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !65659, !noalias !65414
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65660
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !65661, !noalias !65414
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !65660
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !65660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !65660
  store i8 42, ptr %i.am, align 8, !dbg !65660
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65662

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !65663, !noalias !65414
  call void @llvm.experimental.noalias.scope.decl(metadata !65419), !dbg !65664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !65665, !noalias !65420
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !65665, !noalias !65420
  %i.ma = load i64, ptr %i.c, align 8, !dbg !65665, !range !4010, !noalias !65420, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !65666
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !65667
  %i.md = load i64, ptr %i.mc, align 8, !dbg !65667, !range !3948, !noalias !65420, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !65667 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !65666, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !65668, !noalias !65420
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !65669, !noalias !65420
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !65670, !noalias !65414
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65671
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !65672, !noalias !65414
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !65671
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !65671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !65671
  store i8 42, ptr %i.am, align 8, !dbg !65671
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !65673

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !65674

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !65674

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !65675, !noalias !65420, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !65676, !noalias !65420
  store i64 %i.md, ptr %i.q, align 8, !dbg !65677, !alias.scope !65419, !noalias !65414
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !65677
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !65677, !alias.scope !65419, !noalias !65414
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !65677
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !65677, !alias.scope !65419, !noalias !65414
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !65678   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !65679, !noalias !65414
  store i64 %i.mm, ptr %i.p, align 8, !dbg !65679, !noalias !65414
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !65680, !noalias !65414, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !65681       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !65681, !noalias !65414
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !65682
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !65682, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !65683, !noalias !65414

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !65684, !noalias !65414
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !65685
  %i.mr = lshr i64 %i.mq, 3, !dbg !65686          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !65687, !noalias !65426
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !65687, !noalias !65414

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !65687, !range !4010, !noalias !65426, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !65688
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !65689
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !65689, !range !3948, !noalias !65426, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !65689 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !65688, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !65690, !noalias !65426
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !65691, !noalias !65414

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !65691

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !65692, !noalias !65426, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !65693
  call void @llvm.assume(i1 %i.mz), !dbg !65694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !65695, !noalias !65426
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !65696, !noalias !65426
  store i64 %i.mv, ptr %i.n, align 8, !dbg !65697, !noalias !65414
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !65697
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !65697, !noalias !65414
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !65697
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !65697, !noalias !65414
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !65697
  store i64 %i.mn, ptr %i.na, align 8, !dbg !65697, !noalias !65414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !65698, !noalias !65414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !65699, !noalias !65414
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !65700, !noalias !65414, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !65701, !noalias !65414
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !65701
  store i64 0, ptr %i.nc, align 8, !dbg !65701, !noalias !65414
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !65701
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !65701, !noalias !65414
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !65702 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !65702, !noalias !65414, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !65702
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !65703
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !65704, !noalias !65414

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !65705

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !65706, !noalias !65414
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !65707, !noalias !65414 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !65707
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !65707, !noalias !65414 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !65707
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !65707, !noalias !65414 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !65707
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !65707, !noalias !65414 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !65707
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !65707, !noalias !65414
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !65707
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !65707, !noalias !65414
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !65707
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !65707, !noalias !65414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !65708, !noalias !65414
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !65709
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !65709

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !65709

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !65710 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !65711, !noalias !65427, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !65712, !noalias !65427, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !65713
  call void @llvm.assume(i1 %i.nv), !dbg !65714
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !65715 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !65716, !noalias !65427, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !65717, !noalias !65427, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !65428), !dbg !65718
  call void @llvm.experimental.noalias.scope.decl(metadata !65429), !dbg !65718
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !65719, !alias.scope !65428, !noalias !65430, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !65719
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !65719

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !65720
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !65720, !alias.scope !65428, !noalias !65430, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !65720      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !65721
  call void @llvm.assume(i1 %i.oe), !dbg !65722
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !65723
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !65724
end_hunk_7
begin_hunk_8_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !65832, !noalias !65414

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65837, !noalias !65414
  unreachable, !dbg !65837

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !65832, !noalias !65414

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !65734
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !65734, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !65743
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !65744
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !65745, !noalias !65414
  br label %.split.i28.backedge, !dbg !65746

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !65838, !noalias !65414

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !65735
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !65736 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !65737, !noalias !65414, !noundef !3817
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !65738
  %i.ru = and i8 %i.rt, 7, !dbg !65738
  %i.rv = shl nuw i8 1, %i.ru, !dbg !65738
  %i.rw = xor i8 %i.rv, -1, !dbg !65739
  %i.rx = and i8 %i.rs, %i.rw, !dbg !65740
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !65741, !noalias !65414
  br label %.split.i28.backedge, !dbg !65742

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !65747

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !65705, !noalias !65414

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !65674, !noalias !65414

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !65836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !65836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !65836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !65836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !65836
  br label %bb.cr, !dbg !65839

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !65840, !range !4401, !noundef !3817 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !65840
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !65841

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !65842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !65843
  br label %bb.cx, !dbg !65844

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !65845
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !65845
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !65449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !65845
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !65449
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !65449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !65449
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !65846, !noalias !65450
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !65847, !noalias !65450 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !65848
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !65849, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !65850

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !65850

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !65851

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !65852
  unreachable, !dbg !65852

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !65853
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !65854
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !65854
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !65854
  store ptr @85, ptr %i.sg, align 8, !dbg !65854
  store i64 18, ptr %0, align 8, !dbg !65854
  br label %bb.cx, !dbg !65844

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !65844
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !65855 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !66456
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !66456, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !66457 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !66457 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !66457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !66375
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !66458
  %i.av = load ptr, ptr %i.au, align 8, !dbg !66458, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !66459
  %i.aw = load i128, ptr %i.an, align 16, !dbg !66460, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !66461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !66375
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !66462, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !66463
  unreachable, !dbg !66463

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !66464 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !66465

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !66381
  store i64 16, ptr %i.ak, align 8, !dbg !66466, !noalias !66381
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !66467, !noalias !66381, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !66468 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !66468 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !66468
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !66469, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 4, !dbg !66470              ; 4 uses
  %i.bf = icmp ugt i64 %3, 1152921504606846975, !dbg !66470
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !66471, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !66472, !noalias !66381
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66473
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !66474, !noalias !66381
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !66473
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !66473
  store i8 42, ptr %i.am, align 8, !dbg !66473
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66475

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !66476, !noalias !66381
  call void @llvm.experimental.noalias.scope.decl(metadata !66386), !dbg !66477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !66478, !noalias !66387
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !66478, !noalias !66387
  %i.bj = load i64, ptr %i.v, align 8, !dbg !66478, !range !4010, !noalias !66387, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !66479
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !66480
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !66480, !range !3948, !noalias !66387, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !66480 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !66479, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !66481, !noalias !66387
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !66482, !noalias !66387
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !66483, !noalias !66381
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66484
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !66485, !noalias !66381
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !66484
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !66484
  store i8 42, ptr %i.am, align 8, !dbg !66484
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66486

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !66487

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !66487

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !66488, !noalias !66387, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !66489, !noalias !66387
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !66490, !alias.scope !66386, !noalias !66381
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !66490
  store ptr %i.bs, ptr %i.bt, align 8, !dbg !66490, !alias.scope !66386, !noalias !66381
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !66490
  store i64 %i.bc, ptr %i.bu, align 8, !dbg !66490, !alias.scope !66386, !noalias !66381
  %i.bv = shl nuw nsw i64 %i.bc, 4, !dbg !66491   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !66492, !noalias !66381
  store i64 %i.bv, ptr %i.ai, align 8, !dbg !66492, !noalias !66381
  %i.bw = load i64, ptr %i.ay, align 8, !dbg !66493, !noalias !66381, !noundef !3817 ; 6 uses
  %i.bx = mul i64 %i.bw, %i.be, !dbg !66494       ; 2 uses
  store i64 %i.bx, ptr %i.ah, align 8, !dbg !66494, !noalias !66381
  %i.by = icmp eq i64 %i.bv, %i.bx, !dbg !66495
  br i1 %i.by, label %bb.m, label %bb.l, !dbg !66495, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !66496, !noalias !66381

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !66497, !noalias !66381
  %i.bz = call i64 @llvm.uadd.sat.i64(i64 %i.bw, i64 7), !dbg !66498
  %i.ca = lshr i64 %i.bz, 3, !dbg !66499          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !66500, !noalias !66393
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.ca, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !66500, !noalias !66381

.noexc.i:                                         ; preds = %bb.m
  %i.cb = load i64, ptr %i.u, align 8, !dbg !66500, !range !4010, !noalias !66393, !noundef !3817
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !66501
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !66502
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !66502, !range !3948, !noalias !66393, !noundef !3817 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !66502 ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.p, !dbg !66501, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !66503, !noalias !66393
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !66504, !noalias !66381

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !66504

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ch = load ptr, ptr %i.cf, align 8, !dbg !66505, !noalias !66393, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.ci = icmp ule i64 %i.ca, %i.ce, !dbg !66506
  call void @llvm.assume(i1 %i.ci), !dbg !66507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !66508, !noalias !66393
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 -1, i64 %i.ca, i1 false), !dbg !66509, !noalias !66393
  store i64 %i.ce, ptr %i.ag, align 8, !dbg !66510, !noalias !66381
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !66510
  store ptr %i.ch, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !66510, !noalias !66381
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !66510
  store i64 %i.ca, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !66510, !noalias !66381
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !66510
  store i64 %i.bw, ptr %i.cj, align 8, !dbg !66510, !noalias !66381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !66511, !noalias !66381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !66512, !noalias !66381
  %i.ck = load i64, ptr %i.ay, align 8, !dbg !66513, !noalias !66381, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !66514, !noalias !66381
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !66514
  store i64 0, ptr %i.cl, align 8, !dbg !66514, !noalias !66381
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !66514
  store i64 %i.ck, ptr %i.cm, align 8, !dbg !66514, !noalias !66381
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !66515 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !66515, !noalias !66381, !noundef !3817
  %.not.i = icmp eq ptr %i.co, null, !dbg !66515
  %..i = select i1 %.not.i, ptr null, ptr %i.cn, !dbg !66516
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !66517, !noalias !66381

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !66518

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !66519, !noalias !66381
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !66520, !noalias !66381 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !66520
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !66520, !noalias !66381 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !66520
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !66520, !noalias !66381 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !66520
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !66520, !noalias !66381 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !66520
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !66520, !noalias !66381
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !66520
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !66520, !noalias !66381
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !66520
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !66520, !noalias !66381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !66521, !noalias !66381
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
  br label %.split.i, !dbg !66522

.split.us.i:                                      ; preds = %bb.r
  %i.cw = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !66523
  br i1 %i.cw, label %.loopexit159.i, label %.lr.ph165.i, !dbg !66523

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
  br label %.lr.ph165.split.us.i, !dbg !66524

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dd, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.dy, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 5 uses
  %i.dd = add nuw i64 %.sroa.795.0.us164.us.i, 1, !dbg !66525 ; 2 uses
  %i.de = load ptr, ptr %i.cy, align 8, !dbg !66526, !noalias !66394, !noundef !3817
  %i.df = load i64, ptr %i.cz, align 8, !dbg !66527, !noalias !66394, !noundef !3817
  %i.dg = icmp ult i64 %.sroa.795.0.us164.us.i, %i.df, !dbg !66528
  call void @llvm.assume(i1 %i.dg), !dbg !66529
end_hunk_8
begin_hunk_9_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.in, label %bb.ag, label %bb.aj, !dbg !66630, !prof !3850

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #40
          to label %.noexc88.i unwind label %bb.ah, !dbg !66631, !noalias !66381

.noexc88.i:                                       ; preds = %bb.ag
  unreachable, !dbg !66631

bb.ah:                                            ; preds = %bb.ag
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !66632, !noalias !66381

bb.ai:                                            ; preds = %bb.ah
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66633, !noalias !66381
  unreachable, !dbg !66633

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.im, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !66634, !noalias !66381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !66635, !noalias !66381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !66636, !noalias !66381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !66636, !noalias !66381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !66636, !noalias !66381
  call void @llvm.experimental.noalias.scope.decl(metadata !66415), !dbg !66637
  call void @llvm.experimental.noalias.scope.decl(metadata !66416), !dbg !66637
  %i.iq = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !66638, !noalias !66417 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.iq, 0, !dbg !66639
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !66639

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !66640, !alias.scope !66415, !noalias !66418
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !66641, !noalias !66417

bb.am:                                            ; preds = %bb.al
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !66642, !noalias !66417

bb.an:                                            ; preds = %bb.am
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66641, !noalias !66417
  unreachable, !dbg !66641

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !66643, !noalias !66381

bb.ao:                                            ; preds = %bb.ak
  %i.it = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !66644, !noalias !66381

.noexc93.i:                                       ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !66645
  %i.iv = load i64, ptr %i.iu, align 8, !dbg !66645, !alias.scope !66416, !noalias !66417, !noundef !3817
  store ptr %i.it, ptr %i.aa, align 8, !dbg !66646, !alias.scope !66415, !noalias !66418
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !66646
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !66646, !alias.scope !66415, !noalias !66418
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !66646
  store i64 %i.iv, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !66646, !alias.scope !66415, !noalias !66418
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !66646
  store i64 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !66646, !alias.scope !66415, !noalias !66418
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !66647

bb.ap:                                            ; preds = %bb.aj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !66647, !noalias !66417

bb.aq:                                            ; preds = %bb.ap
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66648, !noalias !66417
  unreachable, !dbg !66648

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !66649

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !66650, !noalias !66381
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.ik, ptr noundef nonnull %i.im, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @68, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !66651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !66649, !noalias !66381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !66649, !noalias !66381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !66518, !noalias !66381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !66652, !noalias !66381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !66487, !noalias !66381
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66653

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.iw, %bb.ap ], [ %i.ir, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.im, ptr nonnull @68) #43
          to label %bb.as unwind label %bb.ar, !dbg !66649, !noalias !66381

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66654, !noalias !66381
  unreachable, !dbg !66654

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.il, %bb.ae ], [ %i.io, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !66649, !noalias !66381

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.iz = icmp ult i64 %.sroa.21.0.i, %i.bw, !dbg !66548
  br i1 %i.iz, label %bb.au, label %.split162.us.i, !dbg !66548, !prof !3923

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.sroa.065.0160.i = phi i64 [ %i.jf, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ja = or disjoint i64 %.sroa.065.0160.i, 1, !dbg !66558 ; 2 uses
  %i.jb = shl nuw i64 %.sroa.065.0160.i, 4, !dbg !66559
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jb, !dbg !66560
  %.val82.i = load i128, ptr %i.jc, align 1, !dbg !66561, !noalias !66381
  %i.jd = call noundef i128 @llvm.bswap.i128(i128 %.val82.i), !dbg !66562
  %i.je = getelementptr [16 x i8], ptr %i.ia, i64 %.sroa.065.0160.i, !dbg !66563
  store i128 %i.jd, ptr %i.je, align 16, !dbg !66564, !noalias !66381
  %i.jf = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !66558 ; 2 uses
  %i.jg = shl nuw i64 %i.ja, 4, !dbg !66559
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jg, !dbg !66560
  %.val82.i.1 = load i128, ptr %i.jh, align 1, !dbg !66561, !noalias !66381
  %i.ji = call noundef i128 @llvm.bswap.i128(i128 %.val82.i.1), !dbg !66562
  %i.jj = getelementptr [16 x i8], ptr %i.ia, i64 %i.ja, !dbg !66563
  store i128 %i.ji, ptr %i.jj, align 16, !dbg !66564, !noalias !66381
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !66557 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !66557
  br i1 %niter.ncmp.1, label %.split.i.loopexit.unr-lcssa, label %.lr.ph.i.new, !dbg !66557

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !66655, !noalias !66381

bb.au:                                            ; preds = %bb.at
  %i.jk = lshr i64 %.sroa.21.0.i, 3, !dbg !66549
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.jk, !dbg !66550 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !66551, !noalias !66381, !noundef !3817
  %i.jn = trunc i64 %.sroa.21.0.i to i8, !dbg !66552
  %i.jo = and i8 %i.jn, 7, !dbg !66552
  %i.jp = shl nuw i8 1, %i.jo, !dbg !66552
  %i.jq = xor i8 %i.jp, -1, !dbg !66553
  %i.jr = and i8 %i.jm, %i.jq, !dbg !66554
  store i8 %i.jr, ptr %i.jl, align 1, !dbg !66555, !noalias !66381
  br label %.split.i.backedge, !dbg !66556

.split.i.backedge:                                ; preds = %.epil.preheader, %.split.i.loopexit.unr-lcssa, %bb.au, %.preheader.i
  br label %.split.i, !dbg !66522

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ig, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !66518, !noalias !66381

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.qf, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !66464

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !66487, !noalias !66381

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !66653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !66653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !66653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !66653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !66653
  br label %bb.cr, !dbg !66656

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !66419
  store i64 16, ptr %i.r, align 8, !dbg !66657, !noalias !66419
  %i.jt = load i64, ptr %i.ay, align 8, !dbg !66658, !noalias !66419, !noundef !3817 ; 2 uses
  %i.ju = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jt, i64 %3), !dbg !66659 ; 2 uses
  %i.jv = extractvalue { i64, i1 } %i.ju, 0, !dbg !66659 ; 3 uses
  %i.jw = extractvalue { i64, i1 } %i.ju, 1, !dbg !66659
  br i1 %i.jw, label %bb.ay, label %bb.ax, !dbg !66660, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.jx = shl i64 %3, 4, !dbg !66661              ; 7 uses
  %i.jy = icmp ugt i64 %3, 1152921504606846975, !dbg !66661
  br i1 %i.jy, label %bb.bb, label %bb.az, !dbg !66662, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !66663, !noalias !66419
  %i.ka = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66664
  %i.kb = load <2 x i64>, ptr %i.f, align 16, !dbg !66665, !noalias !66419
  store <2 x i64> %i.kb, ptr %i.ka, align 8, !dbg !66664
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.jz, i64 56, i1 false), !dbg !66664
  store i8 42, ptr %i.am, align 8, !dbg !66664
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66666

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !66667, !noalias !66419
  call void @llvm.experimental.noalias.scope.decl(metadata !66424), !dbg !66668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !66669, !noalias !66425
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.jv, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !66669, !noalias !66425
  %i.kc = load i64, ptr %i.c, align 8, !dbg !66669, !range !4010, !noalias !66425, !noundef !3817
  %i.kd = trunc nuw i64 %i.kc to i1, !dbg !66670
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !66671
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !66671, !range !3948, !noalias !66425, !noundef !3817 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !66671 ; 2 uses
  br i1 %i.kd, label %bb.ba, label %bb.bd, !dbg !66670, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !66672, !noalias !66425
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kf, i64 %i.kh) #40, !dbg !66673, !noalias !66425
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !66674, !noalias !66419
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66675
  %i.kj = load <2 x i64>, ptr %i.e, align 16, !dbg !66676, !noalias !66419
  store <2 x i64> %i.kj, ptr %i.ki, align 8, !dbg !66675
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.js, i64 56, i1 false), !dbg !66675
  store i8 42, ptr %i.am, align 8, !dbg !66675
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66677

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !66678

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !66678

bb.bd:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.kg, align 8, !dbg !66679, !noalias !66425, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !66680, !noalias !66425
  store i64 %i.kf, ptr %i.q, align 8, !dbg !66681, !alias.scope !66424, !noalias !66419
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !66681
  store ptr %i.kl, ptr %i.km, align 8, !dbg !66681, !alias.scope !66424, !noalias !66419
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !66681
  store i64 %i.jv, ptr %i.kn, align 8, !dbg !66681, !alias.scope !66424, !noalias !66419
  %i.ko = shl nuw nsw i64 %i.jv, 4, !dbg !66682   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !66683, !noalias !66419
  store i64 %i.ko, ptr %i.p, align 8, !dbg !66683, !noalias !66419
  %i.kp = load i64, ptr %i.ay, align 8, !dbg !66684, !noalias !66419, !noundef !3817 ; 5 uses
  %i.kq = mul i64 %i.kp, %i.jx, !dbg !66685       ; 2 uses
  store i64 %i.kq, ptr %i.o, align 8, !dbg !66685, !noalias !66419
  %i.kr = icmp eq i64 %i.ko, %i.kq, !dbg !66686
  br i1 %i.kr, label %bb.bf, label %bb.be, !dbg !66686, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !66687, !noalias !66419

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !66688, !noalias !66419
  %i.ks = call i64 @llvm.uadd.sat.i64(i64 %i.kp, i64 7), !dbg !66689
  %i.kt = lshr i64 %i.ks, 3, !dbg !66690          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !66691, !noalias !66431
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.kt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !66691, !noalias !66419

.noexc.i9:                                        ; preds = %bb.bf
  %i.ku = load i64, ptr %i.b, align 8, !dbg !66691, !range !4010, !noalias !66431, !noundef !3817
  %i.kv = trunc nuw i64 %i.ku to i1, !dbg !66692
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !66693
  %i.kx = load i64, ptr %i.kw, align 8, !dbg !66693, !range !3948, !noalias !66431, !noundef !3817 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !66693 ; 2 uses
  br i1 %i.kv, label %bb.bg, label %bb.bi, !dbg !66692, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.kz = load i64, ptr %i.ky, align 8, !dbg !66694, !noalias !66431
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kx, i64 %i.kz) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !66695, !noalias !66419

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !66695

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.la = load ptr, ptr %i.ky, align 8, !dbg !66696, !noalias !66431, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.lb = icmp ule i64 %i.kt, %i.kx, !dbg !66697
  call void @llvm.assume(i1 %i.lb), !dbg !66698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !66699, !noalias !66431
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.la, i8 -1, i64 %i.kt, i1 false), !dbg !66700, !noalias !66431
  store i64 %i.kx, ptr %i.n, align 8, !dbg !66701, !noalias !66419
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !66701
  store ptr %i.la, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !66701, !noalias !66419
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !66701
  store i64 %i.kt, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !66701, !noalias !66419
  %i.lc = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !66701
  store i64 %i.kp, ptr %i.lc, align 8, !dbg !66701, !noalias !66419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !66702, !noalias !66419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !66703, !noalias !66419
  %i.ld = load i64, ptr %i.ay, align 8, !dbg !66704, !noalias !66419, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !66705, !noalias !66419
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !66705
  store i64 0, ptr %i.le, align 8, !dbg !66705, !noalias !66419
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !66705
  store i64 %i.ld, ptr %i.lf, align 8, !dbg !66705, !noalias !66419
  %i.lg = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !66706 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !dbg !66706, !noalias !66419, !noundef !3817
  %.not.i10 = icmp eq ptr %i.lh, null, !dbg !66706
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.lg, !dbg !66707
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !66708, !noalias !66419

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !66709

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !66710, !noalias !66419
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !66711, !noalias !66419 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !66711
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !66711, !noalias !66419 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !66711
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !66711, !noalias !66419 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !66711
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !66711, !noalias !66419 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !66711
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !66711, !noalias !66419
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !66711
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !66711, !noalias !66419
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !66711
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !66711, !noalias !66419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !66712, !noalias !66419
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.lo = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !66713
  br i1 %i.lo, label %.loopexit149.i, label %.lr.ph.i71, !dbg !66713

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.lp = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  br label %bb.bl, !dbg !66713

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.lu, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.mp, %bb.bp ] ; 5 uses
  %i.lu = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !66714 ; 2 uses
  %i.lv = load ptr, ptr %i.lq, align 8, !dbg !66715, !noalias !66432, !noundef !3817
  %i.lw = load i64, ptr %i.lr, align 8, !dbg !66716, !noalias !66432, !noundef !3817
  %i.lx = icmp ult i64 %.sroa.786.0.us153.i, %i.lw, !dbg !66717
  call void @llvm.assume(i1 %i.lx), !dbg !66718
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %.sroa.786.0.us153.i, !dbg !66719 ; 4 uses
  %i.lz = load ptr, ptr %i.ls, align 8, !dbg !66720, !noalias !66432, !noundef !3817
  %i.ma = load i64, ptr %i.lt, align 8, !dbg !66721, !noalias !66432, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !66433), !dbg !66722
  call void @llvm.experimental.noalias.scope.decl(metadata !66434), !dbg !66722
  %i.mb = load i32, ptr %i.ly, align 4, !dbg !66723, !alias.scope !66433, !noalias !66435, !noundef !3817 ; 2 uses
  %i.mc = icmp ult i32 %i.mb, 13, !dbg !66723
  br i1 %i.mc, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !66723

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 8, !dbg !66724
  %i.me = load i32, ptr %i.md, align 4, !dbg !66724, !alias.scope !66433, !noalias !66435, !noundef !3817
  %i.mf = zext i32 %i.me to i64, !dbg !66724      ; 2 uses
  %i.mg = icmp samesign ugt i64 %i.ma, %i.mf, !dbg !66725
  call void @llvm.assume(i1 %i.mg), !dbg !66726
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.mf, !dbg !66727
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 12, !dbg !66728
end_hunk_9
begin_hunk_10_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !66836, !noalias !66419

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66841, !noalias !66419
  unreachable, !dbg !66841

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.pb, %bb.by ], [ %i.pe, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !66836, !noalias !66419

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.pp = icmp ult i64 %.sroa.21.0.i29, %i.kp, !dbg !66738
  br i1 %i.pp, label %bb.cp, label %.split151.us.i, !dbg !66738, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.pq = mul i64 %.sroa.21.0.i29, %i.jx, !dbg !66747
  %i.pr = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.pq, !dbg !66748
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pr, ptr nonnull align 1 %i.oo, i64 %i.jx, i1 false), !dbg !66749, !noalias !66419
  br label %.split.i28.backedge, !dbg !66750

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !66842, !noalias !66419

bb.cp:                                            ; preds = %bb.cn
  %i.ps = lshr i64 %.sroa.21.0.i29, 3, !dbg !66739
  %i.pt = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ps, !dbg !66740 ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !dbg !66741, !noalias !66419, !noundef !3817
  %i.pv = trunc i64 %.sroa.21.0.i29 to i8, !dbg !66742
  %i.pw = and i8 %i.pv, 7, !dbg !66742
  %i.px = shl nuw i8 1, %i.pw, !dbg !66742
  %i.py = xor i8 %i.px, -1, !dbg !66743
  %i.pz = and i8 %i.pu, %i.py, !dbg !66744
  store i8 %i.pz, ptr %i.pt, align 1, !dbg !66745, !noalias !66419
  br label %.split.i28.backedge, !dbg !66746

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !66751

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.ow, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !66709, !noalias !66419

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.kk, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !66678, !noalias !66419

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !66840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !66840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !66840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !66840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !66840
  br label %bb.cr, !dbg !66843

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qa = load i8, ptr %i.am, align 8, !dbg !66844, !range !4401, !noundef !3817 ; 2 uses
  %i.qb = icmp eq i8 %i.qa, 42, !dbg !66844
  br i1 %i.qb, label %bb.cs, label %bb.ct, !dbg !66845

bb.cs:                                            ; preds = %bb.cr
  %i.qc = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qc, i64 72, i1 false), !dbg !66847
  br label %bb.cx, !dbg !66848

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !66849
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !66849
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !66454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !66849
  store i8 %i.qa, ptr %i.ao, align 8, !dbg !66454
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !66454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !66454
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !66850, !noalias !66455
  %i.qd = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !66851, !noalias !66455 ; 3 uses
  %i.qe = icmp eq ptr %i.qd, null, !dbg !66852
  br i1 %i.qe, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !66853, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !66854

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !66854

bb.cv:                                            ; preds = %bb.cu
  %i.qf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !66855

bb.cw:                                            ; preds = %bb.cv
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66856
  unreachable, !dbg !66856

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qd, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !66857
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !66858
  store ptr %i.qd, ptr %i.qh, align 8, !dbg !66858
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !66858
  store ptr @85, ptr %i.qi, align 8, !dbg !66858
  store i64 18, ptr %0, align 8, !dbg !66858
  br label %bb.cx, !dbg !66848

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !66848
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynoECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !66859 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !67457
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !67457, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !67458 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !67458 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !67458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !67377
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !67459
  %i.av = load ptr, ptr %i.au, align 8, !dbg !67459, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !67460
  %i.aw = load i128, ptr %i.an, align 16, !dbg !67461, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !67462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !67377
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !67463, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !67464
  unreachable, !dbg !67464

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !67465 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !67466

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !67383
  store i64 16, ptr %i.ak, align 8, !dbg !67467, !noalias !67383
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !67468, !noalias !67383, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !67469 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !67469 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !67469
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !67470, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 4, !dbg !67471              ; 4 uses
  %i.bf = icmp ugt i64 %3, 1152921504606846975, !dbg !67471
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !67472, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !67473, !noalias !67383
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67474
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !67475, !noalias !67383
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !67474
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !67474
  store i8 42, ptr %i.am, align 8, !dbg !67474
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67476

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !67477, !noalias !67383
  call void @llvm.experimental.noalias.scope.decl(metadata !67388), !dbg !67478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !67479, !noalias !67389
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !67479, !noalias !67389
  %i.bj = load i64, ptr %i.v, align 8, !dbg !67479, !range !4010, !noalias !67389, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !67480
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !67481
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !67481, !range !3948, !noalias !67389, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !67481 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !67480, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !67482, !noalias !67389
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !67483, !noalias !67389
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !67484, !noalias !67383
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67485
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !67486, !noalias !67383
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !67485
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !67485
  store i8 42, ptr %i.am, align 8, !dbg !67485
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67487

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !67488

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !67488

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !67489, !noalias !67389, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !67490, !noalias !67389
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !67491, !alias.scope !67388, !noalias !67383
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !67491
  store ptr %i.bs, ptr %i.bt, align 8, !dbg !67491, !alias.scope !67388, !noalias !67383
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !67491
  store i64 %i.bc, ptr %i.bu, align 8, !dbg !67491, !alias.scope !67388, !noalias !67383
  %i.bv = shl nuw nsw i64 %i.bc, 4, !dbg !67492   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !67493, !noalias !67383
  store i64 %i.bv, ptr %i.ai, align 8, !dbg !67493, !noalias !67383
  %i.bw = load i64, ptr %i.ay, align 8, !dbg !67494, !noalias !67383, !noundef !3817 ; 6 uses
  %i.bx = mul i64 %i.bw, %i.be, !dbg !67495       ; 2 uses
  store i64 %i.bx, ptr %i.ah, align 8, !dbg !67495, !noalias !67383
  %i.by = icmp eq i64 %i.bv, %i.bx, !dbg !67496
  br i1 %i.by, label %bb.m, label %bb.l, !dbg !67496, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !67497, !noalias !67383

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !67498, !noalias !67383
  %i.bz = call i64 @llvm.uadd.sat.i64(i64 %i.bw, i64 7), !dbg !67499
  %i.ca = lshr i64 %i.bz, 3, !dbg !67500          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !67501, !noalias !67395
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.ca, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !67501, !noalias !67383

.noexc.i:                                         ; preds = %bb.m
  %i.cb = load i64, ptr %i.u, align 8, !dbg !67501, !range !4010, !noalias !67395, !noundef !3817
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !67502
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !67503
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !67503, !range !3948, !noalias !67395, !noundef !3817 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !67503 ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.p, !dbg !67502, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !67504, !noalias !67395
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !67505, !noalias !67383

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !67505

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ch = load ptr, ptr %i.cf, align 8, !dbg !67506, !noalias !67395, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.ci = icmp ule i64 %i.ca, %i.ce, !dbg !67507
  call void @llvm.assume(i1 %i.ci), !dbg !67508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !67509, !noalias !67395
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 -1, i64 %i.ca, i1 false), !dbg !67510, !noalias !67395
  store i64 %i.ce, ptr %i.ag, align 8, !dbg !67511, !noalias !67383
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !67511
  store ptr %i.ch, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !67511, !noalias !67383
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !67511
  store i64 %i.ca, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !67511, !noalias !67383
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !67511
  store i64 %i.bw, ptr %i.cj, align 8, !dbg !67511, !noalias !67383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !67512, !noalias !67383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !67513, !noalias !67383
  %i.ck = load i64, ptr %i.ay, align 8, !dbg !67514, !noalias !67383, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !67515, !noalias !67383
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !67515
  store i64 0, ptr %i.cl, align 8, !dbg !67515, !noalias !67383
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !67515
  store i64 %i.ck, ptr %i.cm, align 8, !dbg !67515, !noalias !67383
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !67516 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !67516, !noalias !67383, !noundef !3817
  %.not.i = icmp eq ptr %i.co, null, !dbg !67516
  %..i = select i1 %.not.i, ptr null, ptr %i.cn, !dbg !67517
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !67518, !noalias !67383

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !67519

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !67520, !noalias !67383
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !67521, !noalias !67383 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !67521
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !67521, !noalias !67383 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !67521
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !67521, !noalias !67383 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !67521
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !67521, !noalias !67383 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !67521
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !67521, !noalias !67383
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !67521
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !67521, !noalias !67383
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !67521
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !67521, !noalias !67383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !67522, !noalias !67383
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
  br label %.split.i, !dbg !67523

.split.us.i:                                      ; preds = %bb.r
  %i.cw = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !67524
  br i1 %i.cw, label %.loopexit159.i, label %.lr.ph165.i, !dbg !67524

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
  br label %.lr.ph165.split.us.i, !dbg !67525

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dd, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.dy, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 5 uses
  %i.dd = add nuw i64 %.sroa.795.0.us164.us.i, 1, !dbg !67526 ; 2 uses
  %i.de = load ptr, ptr %i.cy, align 8, !dbg !67527, !noalias !67396, !noundef !3817
  %i.df = load i64, ptr %i.cz, align 8, !dbg !67528, !noalias !67396, !noundef !3817
  %i.dg = icmp ult i64 %.sroa.795.0.us164.us.i, %i.df, !dbg !67529
  call void @llvm.assume(i1 %i.dg), !dbg !67530
end_hunk_10
begin_hunk_11_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynoECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.in, label %bb.ag, label %bb.aj, !dbg !67631, !prof !3850

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #40
          to label %.noexc88.i unwind label %bb.ah, !dbg !67632, !noalias !67383

.noexc88.i:                                       ; preds = %bb.ag
  unreachable, !dbg !67632

bb.ah:                                            ; preds = %bb.ag
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !67633, !noalias !67383

bb.ai:                                            ; preds = %bb.ah
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67634, !noalias !67383
  unreachable, !dbg !67634

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.im, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !67635, !noalias !67383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !67636, !noalias !67383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !67637, !noalias !67383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !67637, !noalias !67383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !67637, !noalias !67383
  call void @llvm.experimental.noalias.scope.decl(metadata !67416), !dbg !67638
  call void @llvm.experimental.noalias.scope.decl(metadata !67417), !dbg !67638
  %i.iq = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !67639, !noalias !67418 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.iq, 0, !dbg !67640
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !67640

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !67641, !alias.scope !67416, !noalias !67419
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !67642, !noalias !67418

bb.am:                                            ; preds = %bb.al
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !67643, !noalias !67418

bb.an:                                            ; preds = %bb.am
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67642, !noalias !67418
  unreachable, !dbg !67642

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !67644, !noalias !67383

bb.ao:                                            ; preds = %bb.ak
  %i.it = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !67645, !noalias !67383

.noexc93.i:                                       ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !67646
  %i.iv = load i64, ptr %i.iu, align 8, !dbg !67646, !alias.scope !67417, !noalias !67418, !noundef !3817
  store ptr %i.it, ptr %i.aa, align 8, !dbg !67647, !alias.scope !67416, !noalias !67419
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !67647
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !67647, !alias.scope !67416, !noalias !67419
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !67647
  store i64 %i.iv, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !67647, !alias.scope !67416, !noalias !67419
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !67647
  store i64 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !67647, !alias.scope !67416, !noalias !67419
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !67648

bb.ap:                                            ; preds = %bb.aj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !67648, !noalias !67418

bb.aq:                                            ; preds = %bb.ap
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67649, !noalias !67418
  unreachable, !dbg !67649

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !67650

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !67651, !noalias !67383
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.ik, ptr noundef nonnull %i.im, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @73, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !67652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !67650, !noalias !67383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !67650, !noalias !67383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !67519, !noalias !67383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !67653, !noalias !67383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !67488, !noalias !67383
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67654

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.iw, %bb.ap ], [ %i.ir, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.im, ptr nonnull @73) #43
          to label %bb.as unwind label %bb.ar, !dbg !67650, !noalias !67383

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67655, !noalias !67383
  unreachable, !dbg !67655

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.il, %bb.ae ], [ %i.io, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !67650, !noalias !67383

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.iz = icmp ult i64 %.sroa.21.0.i, %i.bw, !dbg !67549
  br i1 %i.iz, label %bb.au, label %.split162.us.i, !dbg !67549, !prof !3923

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.sroa.065.0160.i = phi i64 [ %i.jf, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ja = or disjoint i64 %.sroa.065.0160.i, 1, !dbg !67559 ; 2 uses
  %i.jb = shl nuw i64 %.sroa.065.0160.i, 4, !dbg !67560
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jb, !dbg !67561
  %.val82.i = load i128, ptr %i.jc, align 1, !dbg !67562, !noalias !67383
  %i.jd = call noundef i128 @llvm.bswap.i128(i128 %.val82.i), !dbg !67563
  %i.je = getelementptr [16 x i8], ptr %i.ia, i64 %.sroa.065.0160.i, !dbg !67564
  store i128 %i.jd, ptr %i.je, align 16, !dbg !67565, !noalias !67383
  %i.jf = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !67559 ; 2 uses
  %i.jg = shl nuw i64 %i.ja, 4, !dbg !67560
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jg, !dbg !67561
  %.val82.i.1 = load i128, ptr %i.jh, align 1, !dbg !67562, !noalias !67383
  %i.ji = call noundef i128 @llvm.bswap.i128(i128 %.val82.i.1), !dbg !67563
  %i.jj = getelementptr [16 x i8], ptr %i.ia, i64 %i.ja, !dbg !67564
  store i128 %i.ji, ptr %i.jj, align 16, !dbg !67565, !noalias !67383
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !67558 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !67558
  br i1 %niter.ncmp.1, label %.split.i.loopexit.unr-lcssa, label %.lr.ph.i.new, !dbg !67558

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !67656, !noalias !67383

bb.au:                                            ; preds = %bb.at
  %i.jk = lshr i64 %.sroa.21.0.i, 3, !dbg !67550
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.jk, !dbg !67551 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !67552, !noalias !67383, !noundef !3817
  %i.jn = trunc i64 %.sroa.21.0.i to i8, !dbg !67553
  %i.jo = and i8 %i.jn, 7, !dbg !67553
  %i.jp = shl nuw i8 1, %i.jo, !dbg !67553
  %i.jq = xor i8 %i.jp, -1, !dbg !67554
  %i.jr = and i8 %i.jm, %i.jq, !dbg !67555
  store i8 %i.jr, ptr %i.jl, align 1, !dbg !67556, !noalias !67383
  br label %.split.i.backedge, !dbg !67557

.split.i.backedge:                                ; preds = %.epil.preheader, %.split.i.loopexit.unr-lcssa, %bb.au, %.preheader.i
  br label %.split.i, !dbg !67523

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ig, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !67519, !noalias !67383

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.qf, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !67465

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !67488, !noalias !67383

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !67654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !67654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !67654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !67654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !67654
  br label %bb.cr, !dbg !67657

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !67420
  store i64 16, ptr %i.r, align 8, !dbg !67658, !noalias !67420
  %i.jt = load i64, ptr %i.ay, align 8, !dbg !67659, !noalias !67420, !noundef !3817 ; 2 uses
  %i.ju = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jt, i64 %3), !dbg !67660 ; 2 uses
  %i.jv = extractvalue { i64, i1 } %i.ju, 0, !dbg !67660 ; 3 uses
  %i.jw = extractvalue { i64, i1 } %i.ju, 1, !dbg !67660
  br i1 %i.jw, label %bb.ay, label %bb.ax, !dbg !67661, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.jx = shl i64 %3, 4, !dbg !67662              ; 7 uses
  %i.jy = icmp ugt i64 %3, 1152921504606846975, !dbg !67662
  br i1 %i.jy, label %bb.bb, label %bb.az, !dbg !67663, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !67664, !noalias !67420
  %i.ka = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67665
  %i.kb = load <2 x i64>, ptr %i.f, align 16, !dbg !67666, !noalias !67420
  store <2 x i64> %i.kb, ptr %i.ka, align 8, !dbg !67665
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.jz, i64 56, i1 false), !dbg !67665
  store i8 42, ptr %i.am, align 8, !dbg !67665
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67667

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !67668, !noalias !67420
  call void @llvm.experimental.noalias.scope.decl(metadata !67425), !dbg !67669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !67670, !noalias !67426
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.jv, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !67670, !noalias !67426
  %i.kc = load i64, ptr %i.c, align 8, !dbg !67670, !range !4010, !noalias !67426, !noundef !3817
  %i.kd = trunc nuw i64 %i.kc to i1, !dbg !67671
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !67672
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !67672, !range !3948, !noalias !67426, !noundef !3817 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !67672 ; 2 uses
  br i1 %i.kd, label %bb.ba, label %bb.bd, !dbg !67671, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !67673, !noalias !67426
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kf, i64 %i.kh) #40, !dbg !67674, !noalias !67426
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !67675, !noalias !67420
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67676
  %i.kj = load <2 x i64>, ptr %i.e, align 16, !dbg !67677, !noalias !67420
  store <2 x i64> %i.kj, ptr %i.ki, align 8, !dbg !67676
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.js, i64 56, i1 false), !dbg !67676
  store i8 42, ptr %i.am, align 8, !dbg !67676
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67678

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !67679

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !67679

bb.bd:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.kg, align 8, !dbg !67680, !noalias !67426, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !67681, !noalias !67426
  store i64 %i.kf, ptr %i.q, align 8, !dbg !67682, !alias.scope !67425, !noalias !67420
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !67682
  store ptr %i.kl, ptr %i.km, align 8, !dbg !67682, !alias.scope !67425, !noalias !67420
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !67682
  store i64 %i.jv, ptr %i.kn, align 8, !dbg !67682, !alias.scope !67425, !noalias !67420
  %i.ko = shl nuw nsw i64 %i.jv, 4, !dbg !67683   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !67684, !noalias !67420
  store i64 %i.ko, ptr %i.p, align 8, !dbg !67684, !noalias !67420
  %i.kp = load i64, ptr %i.ay, align 8, !dbg !67685, !noalias !67420, !noundef !3817 ; 5 uses
  %i.kq = mul i64 %i.kp, %i.jx, !dbg !67686       ; 2 uses
  store i64 %i.kq, ptr %i.o, align 8, !dbg !67686, !noalias !67420
  %i.kr = icmp eq i64 %i.ko, %i.kq, !dbg !67687
  br i1 %i.kr, label %bb.bf, label %bb.be, !dbg !67687, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !67688, !noalias !67420

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !67689, !noalias !67420
  %i.ks = call i64 @llvm.uadd.sat.i64(i64 %i.kp, i64 7), !dbg !67690
  %i.kt = lshr i64 %i.ks, 3, !dbg !67691          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !67692, !noalias !67432
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.kt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !67692, !noalias !67420

.noexc.i9:                                        ; preds = %bb.bf
  %i.ku = load i64, ptr %i.b, align 8, !dbg !67692, !range !4010, !noalias !67432, !noundef !3817
  %i.kv = trunc nuw i64 %i.ku to i1, !dbg !67693
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !67694
  %i.kx = load i64, ptr %i.kw, align 8, !dbg !67694, !range !3948, !noalias !67432, !noundef !3817 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !67694 ; 2 uses
  br i1 %i.kv, label %bb.bg, label %bb.bi, !dbg !67693, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.kz = load i64, ptr %i.ky, align 8, !dbg !67695, !noalias !67432
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kx, i64 %i.kz) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !67696, !noalias !67420

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !67696

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.la = load ptr, ptr %i.ky, align 8, !dbg !67697, !noalias !67432, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.lb = icmp ule i64 %i.kt, %i.kx, !dbg !67698
  call void @llvm.assume(i1 %i.lb), !dbg !67699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !67700, !noalias !67432
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.la, i8 -1, i64 %i.kt, i1 false), !dbg !67701, !noalias !67432
  store i64 %i.kx, ptr %i.n, align 8, !dbg !67702, !noalias !67420
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !67702
  store ptr %i.la, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !67702, !noalias !67420
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !67702
  store i64 %i.kt, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !67702, !noalias !67420
  %i.lc = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !67702
  store i64 %i.kp, ptr %i.lc, align 8, !dbg !67702, !noalias !67420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !67703, !noalias !67420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !67704, !noalias !67420
  %i.ld = load i64, ptr %i.ay, align 8, !dbg !67705, !noalias !67420, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !67706, !noalias !67420
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !67706
  store i64 0, ptr %i.le, align 8, !dbg !67706, !noalias !67420
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !67706
  store i64 %i.ld, ptr %i.lf, align 8, !dbg !67706, !noalias !67420
  %i.lg = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !67707 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !dbg !67707, !noalias !67420, !noundef !3817
  %.not.i10 = icmp eq ptr %i.lh, null, !dbg !67707
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.lg, !dbg !67708
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !67709, !noalias !67420

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !67710

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !67711, !noalias !67420
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !67712, !noalias !67420 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !67712
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !67712, !noalias !67420 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !67712
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !67712, !noalias !67420 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !67712
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !67712, !noalias !67420 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !67712
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !67712, !noalias !67420
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !67712
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !67712, !noalias !67420
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !67712
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !67712, !noalias !67420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !67713, !noalias !67420
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.lo = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !67714
  br i1 %i.lo, label %.loopexit149.i, label %.lr.ph.i71, !dbg !67714

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.lp = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  br label %bb.bl, !dbg !67714

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.lu, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.mp, %bb.bp ] ; 5 uses
  %i.lu = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !67715 ; 2 uses
  %i.lv = load ptr, ptr %i.lq, align 8, !dbg !67716, !noalias !67433, !noundef !3817
  %i.lw = load i64, ptr %i.lr, align 8, !dbg !67717, !noalias !67433, !noundef !3817
  %i.lx = icmp ult i64 %.sroa.786.0.us153.i, %i.lw, !dbg !67718
  call void @llvm.assume(i1 %i.lx), !dbg !67719
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %.sroa.786.0.us153.i, !dbg !67720 ; 4 uses
  %i.lz = load ptr, ptr %i.ls, align 8, !dbg !67721, !noalias !67433, !noundef !3817
  %i.ma = load i64, ptr %i.lt, align 8, !dbg !67722, !noalias !67433, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !67434), !dbg !67723
  call void @llvm.experimental.noalias.scope.decl(metadata !67435), !dbg !67723
  %i.mb = load i32, ptr %i.ly, align 4, !dbg !67724, !alias.scope !67434, !noalias !67436, !noundef !3817 ; 2 uses
  %i.mc = icmp ult i32 %i.mb, 13, !dbg !67724
  br i1 %i.mc, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !67724

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 8, !dbg !67725
  %i.me = load i32, ptr %i.md, align 4, !dbg !67725, !alias.scope !67434, !noalias !67436, !noundef !3817
  %i.mf = zext i32 %i.me to i64, !dbg !67725      ; 2 uses
  %i.mg = icmp samesign ugt i64 %i.ma, %i.mf, !dbg !67726
  call void @llvm.assume(i1 %i.mg), !dbg !67727
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.mf, !dbg !67728
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 12, !dbg !67729
end_hunk_11
begin_hunk_12_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyntECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !69864, !noalias !69446

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.ry = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !69869, !noalias !69446
  unreachable, !dbg !69869

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.rl, %bb.by ], [ %i.ro, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !69864, !noalias !69446

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rz = icmp ult i64 %.sroa.21.0.i29, %i.mz, !dbg !69766
  br i1 %i.rz, label %bb.cp, label %.split151.us.i, !dbg !69766, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.sa = mul i64 %.sroa.21.0.i29, %i.mh, !dbg !69775
  %i.sb = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.sa, !dbg !69776
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sb, ptr nonnull align 1 %i.qy, i64 %i.mh, i1 false), !dbg !69777, !noalias !69446
  br label %.split.i28.backedge, !dbg !69778

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !69870, !noalias !69446

bb.cp:                                            ; preds = %bb.cn
  %i.sc = lshr i64 %.sroa.21.0.i29, 3, !dbg !69767
  %i.sd = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.sc, !dbg !69768 ; 2 uses
  %i.se = load i8, ptr %i.sd, align 1, !dbg !69769, !noalias !69446, !noundef !3817
  %i.sf = trunc i64 %.sroa.21.0.i29 to i8, !dbg !69770
  %i.sg = and i8 %i.sf, 7, !dbg !69770
  %i.sh = shl nuw i8 1, %i.sg, !dbg !69770
  %i.si = xor i8 %i.sh, -1, !dbg !69771
  %i.sj = and i8 %i.se, %i.si, !dbg !69772
  store i8 %i.sj, ptr %i.sd, align 1, !dbg !69773, !noalias !69446
  br label %.split.i28.backedge, !dbg !69774

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !69779

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.rg, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !69737, !noalias !69446

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mu, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VectEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !69706, !noalias !69446

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !69868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !69868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !69868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !69868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !69868
  br label %bb.cr, !dbg !69871

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.sk = load i8, ptr %i.am, align 8, !dbg !69872, !range !4401, !noundef !3817 ; 2 uses
  %i.sl = icmp eq i8 %i.sk, 42, !dbg !69872
  br i1 %i.sl, label %bb.cs, label %bb.ct, !dbg !69873

bb.cs:                                            ; preds = %bb.cr
  %i.sm = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !69874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sm, i64 72, i1 false), !dbg !69875
  br label %bb.cx, !dbg !69876

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !69877
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !69877
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !69481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !69877
  store i8 %i.sk, ptr %i.ao, align 8, !dbg !69481
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !69481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !69481
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !69878, !noalias !69482
  %i.sn = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !69879, !noalias !69482 ; 3 uses
  %i.so = icmp eq ptr %i.sn, null, !dbg !69880
  br i1 %i.so, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !69881, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !69882

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !69882

bb.cv:                                            ; preds = %bb.cu
  %i.sp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !69883

bb.cw:                                            ; preds = %bb.cv
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !69884
  unreachable, !dbg !69884

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sn, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !69885
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !69886
  store ptr %i.sn, ptr %i.sr, align 8, !dbg !69886
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !69886
  store ptr @85, ptr %i.ss, align 8, !dbg !69886
  store i64 18, ptr %0, align 8, !dbg !69886
  br label %bb.cx, !dbg !69876

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !69876
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !69887 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !70495
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !70495, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !70496 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !70496 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !70496
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !70415
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !70497
  %i.av = load ptr, ptr %i.au, align 8, !dbg !70497, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !70498
  %i.aw = load i128, ptr %i.an, align 16, !dbg !70499, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !70500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !70415
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !70501, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !70502
  unreachable, !dbg !70502

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !70503 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !70504

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !70421
  store i64 8, ptr %i.ak, align 8, !dbg !70505, !noalias !70421
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !70506, !noalias !70421, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !70507 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !70507 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !70507
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !70508, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 3, !dbg !70509              ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !70509
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !70510, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !70511, !noalias !70421
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70512
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !70513, !noalias !70421
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !70512
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !70512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !70512
  store i8 42, ptr %i.am, align 8, !dbg !70512
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70514

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !70515, !noalias !70421
  call void @llvm.experimental.noalias.scope.decl(metadata !70426), !dbg !70516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !70517, !noalias !70427
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !70517, !noalias !70427
  %i.bj = load i64, ptr %i.v, align 8, !dbg !70517, !range !4010, !noalias !70427, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !70518
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !70519
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !70519, !range !3948, !noalias !70427, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !70519 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !70518, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !70520, !noalias !70427
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !70521, !noalias !70427
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !70522, !noalias !70421
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70523
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !70524, !noalias !70421
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !70523
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !70523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !70523
  store i8 42, ptr %i.am, align 8, !dbg !70523
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70525

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !70526

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !70526

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !70527, !noalias !70427, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !70528 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !70528, !noalias !70427
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !70529, !alias.scope !70426, !noalias !70421
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !70529
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !70529, !alias.scope !70426, !noalias !70421
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !70529
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !70529, !alias.scope !70426, !noalias !70421
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !70530   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !70531, !noalias !70421
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !70531, !noalias !70421
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !70532, !noalias !70421, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !70533       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !70533, !noalias !70421
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !70534
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !70534, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !70535, !noalias !70421

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !70536, !noalias !70421
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !70537
  %i.cb = lshr i64 %i.ca, 3, !dbg !70538          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !70539, !noalias !70433
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !70539, !noalias !70421

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !70539, !range !4010, !noalias !70433, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !70540
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !70541
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !70541, !range !3948, !noalias !70433, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !70541 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !70540, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !70542, !noalias !70433
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !70543, !noalias !70421

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !70543

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !70544, !noalias !70433, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !70545
  call void @llvm.assume(i1 %i.cj), !dbg !70546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !70547, !noalias !70433
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !70548, !noalias !70433
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !70549, !noalias !70421
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !70549
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !70549, !noalias !70421
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !70549
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !70549, !noalias !70421
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !70549
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !70549, !noalias !70421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !70550, !noalias !70421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !70551, !noalias !70421
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !70552, !noalias !70421, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !70553, !noalias !70421
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !70553
  store i64 0, ptr %i.cm, align 8, !dbg !70553, !noalias !70421
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !70553
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !70553, !noalias !70421
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !70554 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !70554, !noalias !70421, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !70554
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !70555
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !70556, !noalias !70421

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !70557

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !70558, !noalias !70421
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !70559, !noalias !70421 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !70559
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !70559, !noalias !70421 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !70559
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !70559, !noalias !70421 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !70559
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !70559, !noalias !70421 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !70559
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !70559, !noalias !70421
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !70559
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !70559, !noalias !70421
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !70559
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !70559, !noalias !70421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !70560, !noalias !70421
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
  %i.cw = shl nuw i64 %3, 3, !dbg !70561
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !70561

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !70562
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !70562

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !70563
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !70564

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !70563
  %i.df = add i64 %i.de, %i.bt, !dbg !70563
end_hunk_12
begin_hunk_13_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !70672, !noalias !70421

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70673, !noalias !70421
  unreachable, !dbg !70673

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !70674, !noalias !70421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !70675, !noalias !70421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !70676, !noalias !70421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !70676, !noalias !70421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !70676, !noalias !70421
  call void @llvm.experimental.noalias.scope.decl(metadata !70454), !dbg !70677
  call void @llvm.experimental.noalias.scope.decl(metadata !70455), !dbg !70677
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !70678, !noalias !70456 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !70679
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !70679

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !70680, !alias.scope !70454, !noalias !70457
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !70681, !noalias !70456

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !70682, !noalias !70456

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70681, !noalias !70456
  unreachable, !dbg !70681

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !70683, !noalias !70421

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !70684, !noalias !70421

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !70685
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !70685, !alias.scope !70455, !noalias !70456, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !70686, !alias.scope !70454, !noalias !70457
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !70686
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !70686, !alias.scope !70454, !noalias !70457
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !70686
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !70686, !alias.scope !70454, !noalias !70457
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !70686
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !70686, !alias.scope !70454, !noalias !70457
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !70687

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !70687, !noalias !70456

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70688, !noalias !70456
  unreachable, !dbg !70688

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !70689

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !70690, !noalias !70421
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @67, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !70691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !70689, !noalias !70421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !70689, !noalias !70421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !70557, !noalias !70421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !70692, !noalias !70421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !70526, !noalias !70421
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70693

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @67) #43
          to label %bb.as unwind label %bb.ar, !dbg !70689, !noalias !70421

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70694, !noalias !70421
  unreachable, !dbg !70694

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !70689, !noalias !70421

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !70587
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !70587, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !70597 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !70598
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !70599
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !70600, !noalias !70421
  %i.kr = call noundef i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !70601
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !70602
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !70603, !noalias !70421
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !70597 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !70598
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !70599
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !70600, !noalias !70421
  %i.kw = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !70601
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !70602
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !70603, !noalias !70421
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !70597 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !70598
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !70599
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !70600, !noalias !70421
  %i.lb = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !70601
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !70602
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !70603, !noalias !70421
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !70597 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !70598
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !70599
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !70600, !noalias !70421
  %i.lg = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !70601
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !70602
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !70603, !noalias !70421
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !70604
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !70596, !llvm.loop !70173

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !70695, !noalias !70421

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !70588
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !70589 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !70590, !noalias !70421, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !70591
  %i.lm = and i8 %i.ll, 7, !dbg !70591
  %i.ln = shl nuw i8 1, %i.lm, !dbg !70591
  %i.lo = xor i8 %i.ln, -1, !dbg !70592
  %i.lp = and i8 %i.lk, %i.lo, !dbg !70593
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !70594, !noalias !70421
  br label %.split.i.backedge, !dbg !70595

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !70557, !noalias !70421

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !70503

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !70526, !noalias !70421

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !70693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !70693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !70693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !70693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !70693
  br label %bb.cr, !dbg !70696

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !70458
  store i64 8, ptr %i.r, align 8, !dbg !70697, !noalias !70458
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !70698, !noalias !70458, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !70699 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !70699 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !70699
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !70700, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 3, !dbg !70701              ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !70701
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !70702, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !70703, !noalias !70458
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70704
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !70705, !noalias !70458
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !70704
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !70704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !70704
  store i8 42, ptr %i.am, align 8, !dbg !70704
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70706

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !70707, !noalias !70458
  call void @llvm.experimental.noalias.scope.decl(metadata !70463), !dbg !70708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !70709, !noalias !70464
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !70709, !noalias !70464
  %i.ma = load i64, ptr %i.c, align 8, !dbg !70709, !range !4010, !noalias !70464, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !70710
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !70711
  %i.md = load i64, ptr %i.mc, align 8, !dbg !70711, !range !3948, !noalias !70464, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !70711 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !70710, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !70712, !noalias !70464
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !70713, !noalias !70464
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !70714, !noalias !70458
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70715
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !70716, !noalias !70458
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !70715
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !70715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !70715
  store i8 42, ptr %i.am, align 8, !dbg !70715
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !70717

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !70718

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !70718

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !70719, !noalias !70464, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !70720, !noalias !70464
  store i64 %i.md, ptr %i.q, align 8, !dbg !70721, !alias.scope !70463, !noalias !70458
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !70721
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !70721, !alias.scope !70463, !noalias !70458
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !70721
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !70721, !alias.scope !70463, !noalias !70458
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !70722   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !70723, !noalias !70458
  store i64 %i.mm, ptr %i.p, align 8, !dbg !70723, !noalias !70458
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !70724, !noalias !70458, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !70725       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !70725, !noalias !70458
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !70726
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !70726, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !70727, !noalias !70458

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !70728, !noalias !70458
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !70729
  %i.mr = lshr i64 %i.mq, 3, !dbg !70730          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !70731, !noalias !70470
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !70731, !noalias !70458

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !70731, !range !4010, !noalias !70470, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !70732
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !70733
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !70733, !range !3948, !noalias !70470, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !70733 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !70732, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !70734, !noalias !70470
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !70735, !noalias !70458

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !70735

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !70736, !noalias !70470, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !70737
  call void @llvm.assume(i1 %i.mz), !dbg !70738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !70739, !noalias !70470
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !70740, !noalias !70470
  store i64 %i.mv, ptr %i.n, align 8, !dbg !70741, !noalias !70458
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !70741
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !70741, !noalias !70458
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !70741
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !70741, !noalias !70458
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !70741
  store i64 %i.mn, ptr %i.na, align 8, !dbg !70741, !noalias !70458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !70742, !noalias !70458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !70743, !noalias !70458
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !70744, !noalias !70458, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !70745, !noalias !70458
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !70745
  store i64 0, ptr %i.nc, align 8, !dbg !70745, !noalias !70458
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !70745
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !70745, !noalias !70458
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !70746 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !70746, !noalias !70458, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !70746
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !70747
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !70748, !noalias !70458

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !70749

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !70750, !noalias !70458
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !70751, !noalias !70458 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !70751
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !70751, !noalias !70458 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !70751
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !70751, !noalias !70458 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !70751
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !70751, !noalias !70458 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !70751
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !70751, !noalias !70458
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !70751
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !70751, !noalias !70458
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !70751
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !70751, !noalias !70458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !70752, !noalias !70458
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !70753
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !70753

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !70753

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !70754 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !70755, !noalias !70471, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !70756, !noalias !70471, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !70757
  call void @llvm.assume(i1 %i.nv), !dbg !70758
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !70759 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !70760, !noalias !70471, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !70761, !noalias !70471, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !70472), !dbg !70762
  call void @llvm.experimental.noalias.scope.decl(metadata !70473), !dbg !70762
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !70763, !alias.scope !70472, !noalias !70474, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !70763
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !70763

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !70764
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !70764, !alias.scope !70472, !noalias !70474, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !70764      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !70765
  call void @llvm.assume(i1 %i.oe), !dbg !70766
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !70767
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !70768
end_hunk_13
begin_hunk_14_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !70876, !noalias !70458

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70881, !noalias !70458
  unreachable, !dbg !70881

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !70876, !noalias !70458

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !70778
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !70778, !prof !3923

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !70787
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !70788
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !70789, !noalias !70458
  br label %.split.i28.backedge, !dbg !70790

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !70882, !noalias !70458

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !70779
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !70780 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !70781, !noalias !70458, !noundef !3817
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !70782
  %i.ru = and i8 %i.rt, 7, !dbg !70782
  %i.rv = shl nuw i8 1, %i.ru, !dbg !70782
  %i.rw = xor i8 %i.rv, -1, !dbg !70783
  %i.rx = and i8 %i.rs, %i.rw, !dbg !70784
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !70785, !noalias !70458
  br label %.split.i28.backedge, !dbg !70786

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !70791

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !70749, !noalias !70458

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !70718, !noalias !70458

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !70880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !70880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !70880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !70880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !70880
  br label %bb.cr, !dbg !70883

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !70884, !range !4401, !noundef !3817 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !70884
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !70885

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !70886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !70887
  br label %bb.cx, !dbg !70888

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !70889
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !70889
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !70493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !70889
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !70493
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !70493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !70493
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !70890, !noalias !70494
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !70891, !noalias !70494 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !70892
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !70893, !prof !3850

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !70894

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !70894

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !70895

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !70896
  unreachable, !dbg !70896

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !70897
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70898
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !70898
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70898
  store ptr @85, ptr %i.sg, align 8, !dbg !70898
  store i64 18, ptr %0, align 8, !dbg !70898
  br label %bb.cx, !dbg !70888

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !70888
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynyECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70899 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !71505
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !71505, !invariant.load !3817, !nonnull !3817
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !71506 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !71506 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !71506
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !71425
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !71507
  %i.av = load ptr, ptr %i.au, align 8, !dbg !71507, !invariant.load !3817, !nonnull !3817
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !71508
  %i.aw = load i128, ptr %i.an, align 16, !dbg !71509, !noundef !3817
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !71510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !71425
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !71511, !prof !3923

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !71512
  unreachable, !dbg !71512

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !71513 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !71514

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !71431
  store i64 8, ptr %i.ak, align 8, !dbg !71515, !noalias !71431
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !71516, !noalias !71431, !noundef !3817 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !71517 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !71517 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !71517
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !71518, !prof !3850

bb.e:                                             ; preds = %bb.d
  %i.be = shl i64 %3, 3, !dbg !71519              ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !71519
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !71520, !prof !3850

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !71521, !noalias !71431
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !71522
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !71523, !noalias !71431
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !71522
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !71522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !71522
  store i8 42, ptr %i.am, align 8, !dbg !71522
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71524

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !71525, !noalias !71431
  call void @llvm.experimental.noalias.scope.decl(metadata !71436), !dbg !71526
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !71527, !noalias !71437
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !71527, !noalias !71437
  %i.bj = load i64, ptr %i.v, align 8, !dbg !71527, !range !4010, !noalias !71437, !noundef !3817
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !71528
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !71529
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !71529, !range !3948, !noalias !71437, !noundef !3817 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !71529 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !71528, !prof !3850

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !71530, !noalias !71437
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !71531, !noalias !71437
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !71532, !noalias !71431
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !71533
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !71534, !noalias !71431
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !71533
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !71533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !71533
  store i8 42, ptr %i.am, align 8, !dbg !71533
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71535

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !71536

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !71536

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !71537, !noalias !71437, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !71538 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !71538, !noalias !71437
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !71539, !alias.scope !71436, !noalias !71431
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !71539
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !71539, !alias.scope !71436, !noalias !71431
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !71539
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !71539, !alias.scope !71436, !noalias !71431
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !71540   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !71541, !noalias !71431
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !71541, !noalias !71431
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !71542, !noalias !71431, !noundef !3817 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !71543       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !71543, !noalias !71431
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !71544
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !71544, !prof !3923

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !71545, !noalias !71431

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !71546, !noalias !71431
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !71547
  %i.cb = lshr i64 %i.ca, 3, !dbg !71548          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !71549, !noalias !71443
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !71549, !noalias !71431

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !71549, !range !4010, !noalias !71443, !noundef !3817
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !71550
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !71551
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !71551, !range !3948, !noalias !71443, !noundef !3817 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !71551 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !71550, !prof !3850

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !71552, !noalias !71443
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !71553, !noalias !71431

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !71553

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !71554, !noalias !71443, !nonnull !3817, !noundef !3817 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !71555
  call void @llvm.assume(i1 %i.cj), !dbg !71556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !71557, !noalias !71443
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !71558, !noalias !71443
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !71559, !noalias !71431
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !71559
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !71559, !noalias !71431
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !71559
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !71559, !noalias !71431
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !71559
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !71559, !noalias !71431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !71560, !noalias !71431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !71561, !noalias !71431
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !71562, !noalias !71431, !noundef !3817
  store ptr %i.as, ptr %i.w, align 8, !dbg !71563, !noalias !71431
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !71563
  store i64 0, ptr %i.cm, align 8, !dbg !71563, !noalias !71431
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !71563
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !71563, !noalias !71431
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !71564 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !71564, !noalias !71431, !noundef !3817
  %.not.i = icmp eq ptr %i.cp, null, !dbg !71564
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !71565
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !71566, !noalias !71431

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !71567

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !71568, !noalias !71431
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !71569, !noalias !71431 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !71569
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !71569, !noalias !71431 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !71569
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !71569, !noalias !71431 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !71569
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !71569, !noalias !71431 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !71569
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !71569, !noalias !71431
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !71569
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !71569, !noalias !71431
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !71569
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !71569, !noalias !71431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !71570, !noalias !71431
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
  %i.cw = shl nuw i64 %3, 3, !dbg !71571
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !71571

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !71572
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !71572

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !71573
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !71574

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !71573
  %i.df = add i64 %i.de, %i.bt, !dbg !71573
end_hunk_14
begin_hunk_15_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynyECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !71682, !noalias !71431

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !71683, !noalias !71431
  unreachable, !dbg !71683

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !71684, !noalias !71431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !71685, !noalias !71431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !71686, !noalias !71431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !71686, !noalias !71431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !71686, !noalias !71431
  call void @llvm.experimental.noalias.scope.decl(metadata !71464), !dbg !71687
  call void @llvm.experimental.noalias.scope.decl(metadata !71465), !dbg !71687
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !71688, !noalias !71466 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !71689
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !71689

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !71690, !alias.scope !71464, !noalias !71467
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !71691, !noalias !71466

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !71692, !noalias !71466

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !71691, !noalias !71466
  unreachable, !dbg !71691

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !71693, !noalias !71431

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !71694, !noalias !71431

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !71695
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !71695, !alias.scope !71465, !noalias !71466, !noundef !3817
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !71696, !alias.scope !71464, !noalias !71467
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !71696
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !71696, !alias.scope !71464, !noalias !71467
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !71696
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !71696, !alias.scope !71464, !noalias !71467
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !71696
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !71696, !alias.scope !71464, !noalias !71467
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !71697

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !71697, !noalias !71466

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !71698, !noalias !71466
  unreachable, !dbg !71698

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !71699

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !71700, !noalias !71431
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @72, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !71701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !71699, !noalias !71431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !71699, !noalias !71431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !71567, !noalias !71431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !71702, !noalias !71431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !71536, !noalias !71431
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71703

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @72) #43
          to label %bb.as unwind label %bb.ar, !dbg !71699, !noalias !71431

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !71704, !noalias !71431
  unreachable, !dbg !71704

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !71699, !noalias !71431

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !71597
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !71597, !prof !3923

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !71607 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !71608
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !71609
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !71610, !noalias !71431
  %i.kr = call noundef i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !71611
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !71612
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !71613, !noalias !71431
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !71607 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !71608
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !71609
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !71610, !noalias !71431
  %i.kw = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !71611
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !71612
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !71613, !noalias !71431
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !71607 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !71608
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !71609
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !71610, !noalias !71431
  %i.lb = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !71611
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !71612
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !71613, !noalias !71431
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !71607 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !71608
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !71609
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !71610, !noalias !71431
  %i.lg = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !71611
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !71612
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !71613, !noalias !71431
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !71614
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !71606, !llvm.loop !71183

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !71705, !noalias !71431

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !71598
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !71599 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !71600, !noalias !71431, !noundef !3817
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !71601
  %i.lm = and i8 %i.ll, 7, !dbg !71601
  %i.ln = shl nuw i8 1, %i.lm, !dbg !71601
  %i.lo = xor i8 %i.ln, -1, !dbg !71602
  %i.lp = and i8 %i.lk, %i.lo, !dbg !71603
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !71604, !noalias !71431
  br label %.split.i.backedge, !dbg !71605

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !71567, !noalias !71431

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !71513

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !71536, !noalias !71431

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !71703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !71703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !71703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !71703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !71703
  br label %bb.cr, !dbg !71706

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !71468
  store i64 8, ptr %i.r, align 8, !dbg !71707, !noalias !71468
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !71708, !noalias !71468, !noundef !3817 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !71709 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !71709 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !71709
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !71710, !prof !3850

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl i64 %3, 3, !dbg !71711              ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !71711
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !71712, !prof !3850

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !71713, !noalias !71468
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !71714
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !71715, !noalias !71468
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !71714
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !71714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !71714
  store i8 42, ptr %i.am, align 8, !dbg !71714
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71716

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !71717, !noalias !71468
  call void @llvm.experimental.noalias.scope.decl(metadata !71473), !dbg !71718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !71719, !noalias !71474
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !71719, !noalias !71474
  %i.ma = load i64, ptr %i.c, align 8, !dbg !71719, !range !4010, !noalias !71474, !noundef !3817
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !71720
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !71721
  %i.md = load i64, ptr %i.mc, align 8, !dbg !71721, !range !3948, !noalias !71474, !noundef !3817 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !71721 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !71720, !prof !3850

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !71722, !noalias !71474
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !71723, !noalias !71474
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !71724, !noalias !71468
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !71725
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !71726, !noalias !71468
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !71725
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !71725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !71725
  store i8 42, ptr %i.am, align 8, !dbg !71725
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !71727

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !71728

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !71728

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !71729, !noalias !71474, !nonnull !3817, !noundef !3817 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !71730, !noalias !71474
  store i64 %i.md, ptr %i.q, align 8, !dbg !71731, !alias.scope !71473, !noalias !71468
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !71731
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !71731, !alias.scope !71473, !noalias !71468
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !71731
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !71731, !alias.scope !71473, !noalias !71468
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !71732   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !71733, !noalias !71468
  store i64 %i.mm, ptr %i.p, align 8, !dbg !71733, !noalias !71468
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !71734, !noalias !71468, !noundef !3817 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !71735       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !71735, !noalias !71468
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !71736
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !71736, !prof !3923

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !71737, !noalias !71468

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !71738, !noalias !71468
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !71739
  %i.mr = lshr i64 %i.mq, 3, !dbg !71740          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !71741, !noalias !71480
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !71741, !noalias !71468

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !71741, !range !4010, !noalias !71480, !noundef !3817
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !71742
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !71743
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !71743, !range !3948, !noalias !71480, !noundef !3817 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !71743 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !71742, !prof !3850

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !71744, !noalias !71480
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !71745, !noalias !71468

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !71745

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !71746, !noalias !71480, !nonnull !3817, !noundef !3817 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !71747
  call void @llvm.assume(i1 %i.mz), !dbg !71748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !71749, !noalias !71480
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !71750, !noalias !71480
  store i64 %i.mv, ptr %i.n, align 8, !dbg !71751, !noalias !71468
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !71751
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !71751, !noalias !71468
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !71751
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !71751, !noalias !71468
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !71751
  store i64 %i.mn, ptr %i.na, align 8, !dbg !71751, !noalias !71468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !71752, !noalias !71468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71753, !noalias !71468
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !71754, !noalias !71468, !noundef !3817
  store ptr %i.as, ptr %i.d, align 8, !dbg !71755, !noalias !71468
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !71755
  store i64 0, ptr %i.nc, align 8, !dbg !71755, !noalias !71468
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !71755
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !71755, !noalias !71468
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !71756 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !71756, !noalias !71468, !noundef !3817
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !71756
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !71757
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !71758, !noalias !71468

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !71759

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !71760, !noalias !71468
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !71761, !noalias !71468 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !71761
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !71761, !noalias !71468 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !71761
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !71761, !noalias !71468 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !71761
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !71761, !noalias !71468 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !71761
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !71761, !noalias !71468
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !71761
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !71761, !noalias !71468
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !71761
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !71761, !noalias !71468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !71762, !noalias !71468
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !71763
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !71763

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !71763

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !71764 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !71765, !noalias !71481, !noundef !3817
  %i.nu = load i64, ptr %i.np, align 8, !dbg !71766, !noalias !71481, !noundef !3817
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !71767
  call void @llvm.assume(i1 %i.nv), !dbg !71768
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !71769 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !71770, !noalias !71481, !noundef !3817
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !71771, !noalias !71481, !noundef !3817
  call void @llvm.experimental.noalias.scope.decl(metadata !71482), !dbg !71772
  call void @llvm.experimental.noalias.scope.decl(metadata !71483), !dbg !71772
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !71773, !alias.scope !71482, !noalias !71484, !noundef !3817 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !71773
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !71773

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !71774
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !71774, !alias.scope !71482, !noalias !71484, !noundef !3817
  %i.od = zext i32 %i.oc to i64, !dbg !71774      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !71775
  call void @llvm.assume(i1 %i.oe), !dbg !71776
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !71777
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !71778
end_hunk_15
