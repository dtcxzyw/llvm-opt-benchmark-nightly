Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.03?download=true
inline.NumInlined: 7491
inline.NumDeleted: 2575
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynaECskY9G75ZWc4U_11polars_expr:bb.a
  %eh.lpad-body82136.i = phi { ptr, i32 } [ %lpad.thr_comm.i60, %.body81.thread138.i ], [ %i.py, %bb.cf ], [ %i.pt, %bb.cc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.po, ptr nonnull @64) #43
          to label %bb.ci unwind label %bb.ch, !dbg !57587, !noalias !57173

bb.ch:                                            ; preds = %bb.cm, %.thread109.i, %bb.ci, %.body81.thread.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !57592, !noalias !57173
  unreachable, !dbg !57592

bb.ci:                                            ; preds = %.body81.thread.i, %bb.bx, %bb.bu
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.bu ], [ true, %bb.bx ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.pn, %bb.bu ], [ %i.pq, %bb.bx ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.k) #43
          to label %bb.bf unwind label %bb.ch, !dbg !57587, !noalias !57173

bb.cj:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qb = icmp ult i64 %.sroa.21.0.i29, %i.lb, !dbg !57368
  br i1 %i.qb, label %bb.cl, label %.split151.us.i, !dbg !57368, !prof !386

bb.ck:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qc = mul i64 %.sroa.21.0.i29, %3, !dbg !57391
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.qc, !dbg !57392
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr nonnull align 1 %i.pa, i64 %3, i1 false), !dbg !57396, !noalias !57173
  br label %.split.i28.backedge, !dbg !57399

.split151.us.i:                                   ; preds = %bb.cj, %bb.bi
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bd unwind label %.loopexit.split-lp.i12, !dbg !57593, !noalias !57173

bb.cl:                                            ; preds = %bb.cj
  %i.qe = lshr i64 %.sroa.21.0.i29, 3, !dbg !57371
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.qe, !dbg !57374 ; 2 uses
  %i.qg = load i8, ptr %i.qf, align 1, !dbg !57380, !noalias !57173, !noundef !14
  %i.qh = trunc i64 %.sroa.21.0.i29 to i8, !dbg !57382
  %i.qi = and i8 %i.qh, 7, !dbg !57382
  %i.qj = shl nuw i8 1, %i.qi, !dbg !57382
  %i.qk = xor i8 %i.qj, -1, !dbg !57385
  %i.ql = and i8 %i.qg, %i.qk, !dbg !57386
  store i8 %i.ql, ptr %i.qf, align 1, !dbg !57389, !noalias !57173
  br label %.split.i28.backedge, !dbg !57390

.split.i28.backedge:                              ; preds = %bb.cl, %bb.ck
  br label %.split.i28, !dbg !57400

.thread109.i:                                     ; preds = %bb.br, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bf
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bf ], [ %i.pi, %bb.br ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bf ], [ true, %bb.br ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.m) #43
          to label %bb.ay unwind label %bb.ch, !dbg !57291, !noalias !57173

bb.cm:                                            ; preds = %.thread.i8, %bb.ay
  %.pn68108.i = phi { ptr, i32 } [ %i.kx, %.thread.i8 ], [ %.pn66114.i, %bb.ay ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecaEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.p) #43
          to label %common.resume unwind label %bb.ch, !dbg !57224, !noalias !57173

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ax, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !57591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !57591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !57591
  br label %bb.cn, !dbg !57594

bb.cn:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qm = load i8, ptr %i.ai, align 8, !dbg !57595, !range !41322, !noundef !14 ; 2 uses
  %i.qn = icmp eq i8 %i.qm, 42, !dbg !57595
  br i1 %i.qn, label %bb.co, label %bb.cp, !dbg !57598

bb.co:                                            ; preds = %bb.cn
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !57599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i64 72, i1 false), !dbg !57600
  br label %bb.ct, !dbg !57601

bb.cp:                                            ; preds = %bb.cn
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !57602
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80, !dbg !57602
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 80, !dbg !57597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !57602
  store i8 %i.qm, ptr %i.ak, align 8, !dbg !57597
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !57597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !57597
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !57603, !noalias !57611
  %i.qp = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !57614, !noalias !57611 ; 3 uses
  %i.qq = icmp eq ptr %i.qp, null, !dbg !57615
  br i1 %i.qq, label %bb.cq, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !57616, !prof !113

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cr, !dbg !57617

.noexc:                                           ; preds = %bb.cq
  unreachable, !dbg !57617

bb.cr:                                            ; preds = %bb.cq
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ak) #43
          to label %common.resume unwind label %bb.cs, !dbg !57618

bb.cs:                                            ; preds = %bb.cr
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !57619
  unreachable, !dbg !57619

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qp, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !dbg !57620
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !57621
  store ptr %i.qp, ptr %i.qt, align 8, !dbg !57621
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !57621
  store ptr @85, ptr %i.qu, align 8, !dbg !57621
  store i64 18, ptr %0, align 8, !dbg !57621
  br label %bb.ct, !dbg !57601

bb.ct:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.co
  ret void, !dbg !57601
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !57622 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !57623
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !57623, !invariant.load !14, !nonnull !14
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !57624 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !57624 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !57624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !57625
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !57628
  %i.av = load ptr, ptr %i.au, align 8, !dbg !57628, !invariant.load !14, !nonnull !14
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !57631
  %i.aw = load i128, ptr %i.an, align 16, !dbg !57632, !noundef !14
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !57641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !57625
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !57642, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !57643
  unreachable, !dbg !57643

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !57646 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !57648

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !57649
  store i64 8, ptr %i.ak, align 8, !dbg !57652, !noalias !57649
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !57657, !noalias !57649, !noundef !14 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !57663 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !57663 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !57663
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !57668, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.be = shl nuw i64 %3, 3, !dbg !57672          ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !57672
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !57677, !prof !113

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !57681, !noalias !57649
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !57684
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !57691, !noalias !57649
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !57684
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !57684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !57684
  store i8 42, ptr %i.am, align 8, !dbg !57684
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !57692

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !57694, !noalias !57649
  call void @llvm.experimental.noalias.scope.decl(metadata !57696), !dbg !57699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !57702, !noalias !57710
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !57702, !noalias !57710
  %i.bj = load i64, ptr %i.v, align 8, !dbg !57702, !range !4081, !noalias !57710, !noundef !14
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !57711
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !57712
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !57712, !range !689, !noalias !57710, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !57712 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !57711, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !57713, !noalias !57710
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !57714, !noalias !57710
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !57716, !noalias !57649
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !57719
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !57725, !noalias !57649
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !57719
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !57719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !57719
  store i8 42, ptr %i.am, align 8, !dbg !57719
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !57726

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !57728

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !57728

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !57729, !noalias !57710, !nonnull !14, !noundef !14 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !57730 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !57730, !noalias !57710
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !57731, !alias.scope !57696, !noalias !57649
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !57731
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !57731, !alias.scope !57696, !noalias !57649
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !57731
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !57731, !alias.scope !57696, !noalias !57649
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !57732   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !57742, !noalias !57649
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !57742, !noalias !57649
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !57743, !noalias !57649, !noundef !14 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !57748       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !57748, !noalias !57649
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !57749
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !57749, !prof !386

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !57752, !noalias !57649

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !57755, !noalias !57649
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !57756
  %i.cb = lshr i64 %i.ca, 3, !dbg !57761          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !57762, !noalias !57769
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !57762, !noalias !57649

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !57762, !range !4081, !noalias !57769, !noundef !14
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !57772
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !57773
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !57773, !range !689, !noalias !57769, !noundef !14 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !57773 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !57772, !prof !113

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !57774, !noalias !57769
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !57775, !noalias !57649

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !57775

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !57776, !noalias !57769, !nonnull !14, !noundef !14 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !57777
  call void @llvm.assume(i1 %i.cj), !dbg !57779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !57781, !noalias !57769
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !57782, !noalias !57769
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !57784, !noalias !57649
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !57784
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !57784, !noalias !57649
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !57784
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !57784, !noalias !57649
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !57784
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !57784, !noalias !57649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !57785, !noalias !57649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !57787, !noalias !57649
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !57790, !noalias !57649, !noundef !14
  store ptr %i.as, ptr %i.w, align 8, !dbg !57798, !noalias !57649
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !57798
  store i64 0, ptr %i.cm, align 8, !dbg !57798, !noalias !57649
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !57798
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !57798, !noalias !57649
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !57799 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !57799, !noalias !57649, !noundef !14
  %.not.i = icmp eq ptr %i.cp, null, !dbg !57799
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !57802
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !57803, !noalias !57649

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !57804

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !57805, !noalias !57649
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !57806, !noalias !57649 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !57806
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !57806, !noalias !57649 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !57806
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !57806, !noalias !57649 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !57806
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !57806, !noalias !57649 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !57806
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !57806, !noalias !57649
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !57806
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !57806, !noalias !57649
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !57806
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !57806, !noalias !57649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !57811, !noalias !57649
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
  %i.cw = shl nuw i64 %3, 3, !dbg !57812
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !57812

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !57818
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !57818

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !57820
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !57821

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !57820
  %i.df = add i64 %i.de, %i.bt, !dbg !57820
end_hunk_0
begin_hunk_1_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !58122, !noalias !57649

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !58123, !noalias !57649
  unreachable, !dbg !58123

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !58124, !noalias !57649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !58125, !noalias !57649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !58126, !noalias !57649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !58126, !noalias !57649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !58126, !noalias !57649
  call void @llvm.experimental.noalias.scope.decl(metadata !58127), !dbg !58130
  call void @llvm.experimental.noalias.scope.decl(metadata !58133), !dbg !58130
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !58135, !noalias !58137 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !58138
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !58138

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !58139, !alias.scope !58127, !noalias !58140
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !58141, !noalias !58137

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !58143, !noalias !58137

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !58141, !noalias !58137
  unreachable, !dbg !58141

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !58145, !noalias !57649

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !58147, !noalias !57649

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !58148
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !58148, !alias.scope !58133, !noalias !58137, !noundef !14
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !58149, !alias.scope !58127, !noalias !58140
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !58149
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !58149, !alias.scope !58127, !noalias !58140
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !58149
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !58149, !alias.scope !58127, !noalias !58140
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !58149
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !58149, !alias.scope !58127, !noalias !58140
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !58150

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !58150, !noalias !58137

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !58151, !noalias !58137
  unreachable, !dbg !58151

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !58152

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !58153, !noalias !57649
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @76, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !58154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !58152, !noalias !57649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !58152, !noalias !57649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !57804, !noalias !57649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !58155, !noalias !57649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !57728, !noalias !57649
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58156

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @76) #43
          to label %bb.as unwind label %bb.ar, !dbg !58152, !noalias !57649

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !58157, !noalias !57649
  unreachable, !dbg !58157

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !58152, !noalias !57649

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !57884
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !57884, !prof !386

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !57907 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !57919
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !57921
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !57931, !noalias !57649
  %i.kr = call i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !57934
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !57951
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !57958, !noalias !57649
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !57907 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !57919
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !57921
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !57931, !noalias !57649
  %i.kw = call i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !57934
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !57951
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !57958, !noalias !57649
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !57907 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !57919
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !57921
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !57931, !noalias !57649
  %i.lb = call i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !57934
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !57951
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !57958, !noalias !57649
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !57907 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !57919
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !57921
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !57931, !noalias !57649
  %i.lg = call i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !57934
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !57951
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !57958, !noalias !57649
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !57959
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !57962, !llvm.loop !58158

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !58159, !noalias !57649

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !57887
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !57890 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !57896, !noalias !57649, !noundef !14
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !57898
  %i.lm = and i8 %i.ll, 7, !dbg !57898
  %i.ln = shl nuw i8 1, %i.lm, !dbg !57898
  %i.lo = xor i8 %i.ln, -1, !dbg !57901
  %i.lp = and i8 %i.lk, %i.lo, !dbg !57902
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !57905, !noalias !57649
  br label %.split.i.backedge, !dbg !57906

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !57804, !noalias !57649

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !57646

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !57728, !noalias !57649

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !58156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !58156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !58156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !58156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !58156
  br label %bb.cr, !dbg !58160

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !58161
  store i64 8, ptr %i.r, align 8, !dbg !58164, !noalias !58161
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !58169, !noalias !58161, !noundef !14 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !58175 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !58175 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !58175
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !58180, !prof !113

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl nuw i64 %3, 3, !dbg !58184          ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !58184
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !58189, !prof !113

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !58193, !noalias !58161
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !58196
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !58203, !noalias !58161
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !58196
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !58196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !58196
  store i8 42, ptr %i.am, align 8, !dbg !58196
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58204

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !58206, !noalias !58161
  call void @llvm.experimental.noalias.scope.decl(metadata !58208), !dbg !58211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !58214, !noalias !58218
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !58214, !noalias !58218
  %i.ma = load i64, ptr %i.c, align 8, !dbg !58214, !range !4081, !noalias !58218, !noundef !14
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !58219
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !58220
  %i.md = load i64, ptr %i.mc, align 8, !dbg !58220, !range !689, !noalias !58218, !noundef !14 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !58220 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !58219, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !58221, !noalias !58218
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !58222, !noalias !58218
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !58223, !noalias !58161
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !58226
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !58232, !noalias !58161
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !58226
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !58226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !58226
  store i8 42, ptr %i.am, align 8, !dbg !58226
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58233

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !58235

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !58235

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !58236, !noalias !58218, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !58237, !noalias !58218
  store i64 %i.md, ptr %i.q, align 8, !dbg !58238, !alias.scope !58208, !noalias !58161
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !58238
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !58238, !alias.scope !58208, !noalias !58161
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !58238
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !58238, !alias.scope !58208, !noalias !58161
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !58239   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !58247, !noalias !58161
  store i64 %i.mm, ptr %i.p, align 8, !dbg !58247, !noalias !58161
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !58248, !noalias !58161, !noundef !14 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !58253       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !58253, !noalias !58161
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !58254
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !58254, !prof !386

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !58257, !noalias !58161

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !58260, !noalias !58161
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !58261
  %i.mr = lshr i64 %i.mq, 3, !dbg !58266          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !58267, !noalias !58274
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !58267, !noalias !58161

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !58267, !range !4081, !noalias !58274, !noundef !14
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !58277
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !58278
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !58278, !range !689, !noalias !58274, !noundef !14 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !58278 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !58277, !prof !113

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !58279, !noalias !58274
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !58280, !noalias !58161

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !58280

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !58281, !noalias !58274, !nonnull !14, !noundef !14 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !58282
  call void @llvm.assume(i1 %i.mz), !dbg !58284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !58286, !noalias !58274
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !58287, !noalias !58274
  store i64 %i.mv, ptr %i.n, align 8, !dbg !58289, !noalias !58161
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !58289
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !58289, !noalias !58161
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !58289
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !58289, !noalias !58161
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !58289
  store i64 %i.mn, ptr %i.na, align 8, !dbg !58289, !noalias !58161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !58290, !noalias !58161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !58292, !noalias !58161
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !58295, !noalias !58161, !noundef !14
  store ptr %i.as, ptr %i.d, align 8, !dbg !58303, !noalias !58161
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !58303
  store i64 0, ptr %i.nc, align 8, !dbg !58303, !noalias !58161
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !58303
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !58303, !noalias !58161
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !58304 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !58304, !noalias !58161, !noundef !14
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !58304
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !58307
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !58308, !noalias !58161

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !58309

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !58310, !noalias !58161
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !58311, !noalias !58161 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !58311
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !58311, !noalias !58161 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !58311
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !58311, !noalias !58161 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !58311
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !58311, !noalias !58161 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !58311
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !58311, !noalias !58161
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !58311
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !58311, !noalias !58161
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !58311
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !58311, !noalias !58161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !58316, !noalias !58161
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !58317
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !58317

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !58317

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !58322 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !58323, !noalias !58328, !noundef !14
  %i.nu = load i64, ptr %i.np, align 8, !dbg !58337, !noalias !58328, !noundef !14
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !58338
  call void @llvm.assume(i1 %i.nv), !dbg !58341
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !58342 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !58343, !noalias !58328, !noundef !14
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !58346, !noalias !58328, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !58347), !dbg !58350
  call void @llvm.experimental.noalias.scope.decl(metadata !58351), !dbg !58350
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !58353, !alias.scope !58347, !noalias !58355, !noundef !14 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !58353
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !58353

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !58356
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !58356, !alias.scope !58347, !noalias !58355, !noundef !14
  %i.od = zext i32 %i.oc to i64, !dbg !58356      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !58358
  call void @llvm.assume(i1 %i.oe), !dbg !58361
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !58362
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !58363
end_hunk_1
begin_hunk_2_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyndECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !58605, !noalias !58161

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !58610, !noalias !58161
  unreachable, !dbg !58610

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !58605, !noalias !58161

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !58386
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !58386, !prof !386

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !58409
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !58410
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !58414, !noalias !58161
  br label %.split.i28.backedge, !dbg !58417

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !58611, !noalias !58161

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !58389
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !58392 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !58398, !noalias !58161, !noundef !14
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !58400
  %i.ru = and i8 %i.rt, 7, !dbg !58400
  %i.rv = shl nuw i8 1, %i.ru, !dbg !58400
  %i.rw = xor i8 %i.rv, -1, !dbg !58403
  %i.rx = and i8 %i.rs, %i.rw, !dbg !58404
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !58407, !noalias !58161
  br label %.split.i28.backedge, !dbg !58408

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !58418

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !58309, !noalias !58161

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !58235, !noalias !58161

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !58609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !58609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !58609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !58609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !58609
  br label %bb.cr, !dbg !58612

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listdKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !58613, !range !41322, !noundef !14 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !58613
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !58616

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !58617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !58618
  br label %bb.cx, !dbg !58619

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !58620
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !58620
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !58615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !58620
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !58615
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !58615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !58615
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !58621, !noalias !58629
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !58632, !noalias !58629 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !58633
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !58634, !prof !113

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !58635

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !58635

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !58636

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !58637
  unreachable, !dbg !58637

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !58638
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58639
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !58639
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !58639
  store ptr @85, ptr %i.sg, align 8, !dbg !58639
  store i64 18, ptr %0, align 8, !dbg !58639
  br label %bb.cx, !dbg !58619

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !58619
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynfECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !58640 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !58641
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !58641, !invariant.load !14, !nonnull !14
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !58642 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !58642 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !58642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !58643
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !58646
  %i.av = load ptr, ptr %i.au, align 8, !dbg !58646, !invariant.load !14, !nonnull !14
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !58649
  %i.aw = load i128, ptr %i.an, align 16, !dbg !58650, !noundef !14
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !58659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !58643
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !58660, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !58661
  unreachable, !dbg !58661

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !58664 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !58666

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !58667
  store i64 4, ptr %i.ak, align 8, !dbg !58670, !noalias !58667
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !58675, !noalias !58667, !noundef !14 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !58681 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !58681 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !58681
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !58686, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.be = shl nuw i64 %3, 2, !dbg !58690          ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !58690
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !58695, !prof !113

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !58699, !noalias !58667
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !58702
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !58709, !noalias !58667
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !58702
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !58702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !58702
  store i8 42, ptr %i.am, align 8, !dbg !58702
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58710

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !58712, !noalias !58667
  call void @llvm.experimental.noalias.scope.decl(metadata !58714), !dbg !58717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !58720, !noalias !58727
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !58720, !noalias !58727
  %i.bj = load i64, ptr %i.v, align 8, !dbg !58720, !range !4081, !noalias !58727, !noundef !14
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !58728
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !58729
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !58729, !range !689, !noalias !58727, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !58729 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !58728, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !58730, !noalias !58727
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !58731, !noalias !58727
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !58733, !noalias !58667
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !58736
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !58742, !noalias !58667
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !58736
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !58736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !58736
  store i8 42, ptr %i.am, align 8, !dbg !58736
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !58743

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !58745

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !58745

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !58746, !noalias !58727, !nonnull !14, !noundef !14 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !58747 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !58747, !noalias !58727
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !58748, !alias.scope !58714, !noalias !58667
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !58748
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !58748, !alias.scope !58714, !noalias !58667
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !58748
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !58748, !alias.scope !58714, !noalias !58667
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !58749   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !58759, !noalias !58667
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !58759, !noalias !58667
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !58760, !noalias !58667, !noundef !14 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !58765       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !58765, !noalias !58667
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !58766
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !58766, !prof !386

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !58769, !noalias !58667

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !58772, !noalias !58667
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !58773
  %i.cb = lshr i64 %i.ca, 3, !dbg !58778          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !58779, !noalias !58786
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !58779, !noalias !58667

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !58779, !range !4081, !noalias !58786, !noundef !14
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !58789
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !58790
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !58790, !range !689, !noalias !58786, !noundef !14 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !58790 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !58789, !prof !113

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !58791, !noalias !58786
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !58792, !noalias !58667

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !58792

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !58793, !noalias !58786, !nonnull !14, !noundef !14 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !58794
  call void @llvm.assume(i1 %i.cj), !dbg !58796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !58798, !noalias !58786
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !58799, !noalias !58786
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !58801, !noalias !58667
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !58801
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !58801, !noalias !58667
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !58801
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !58801, !noalias !58667
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !58801
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !58801, !noalias !58667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !58802, !noalias !58667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !58804, !noalias !58667
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !58807, !noalias !58667, !noundef !14
  store ptr %i.as, ptr %i.w, align 8, !dbg !58815, !noalias !58667
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !58815
  store i64 0, ptr %i.cm, align 8, !dbg !58815, !noalias !58667
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !58815
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !58815, !noalias !58667
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !58816 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !58816, !noalias !58667, !noundef !14
  %.not.i = icmp eq ptr %i.cp, null, !dbg !58816
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !58819
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !58820, !noalias !58667

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !58821

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !58822, !noalias !58667
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !58823, !noalias !58667 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !58823
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !58823, !noalias !58667 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !58823
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !58823, !noalias !58667 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !58823
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !58823, !noalias !58667 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !58823
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !58823, !noalias !58667
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !58823
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !58823, !noalias !58667
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !58823
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !58823, !noalias !58667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !58828, !noalias !58667
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
  %i.cw = shl nuw i64 %3, 2, !dbg !58829
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !58829

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !58835
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !58835

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !58837
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !58838

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !58837
  %i.df = add i64 %i.de, %i.bt, !dbg !58837
end_hunk_2
begin_hunk_3_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynfECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayfEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !59138, !noalias !58667

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !59139, !noalias !58667
  unreachable, !dbg !59139

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !59140, !noalias !58667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !59141, !noalias !58667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !59142, !noalias !58667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !59142, !noalias !58667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !59142, !noalias !58667
  call void @llvm.experimental.noalias.scope.decl(metadata !59143), !dbg !59146
  call void @llvm.experimental.noalias.scope.decl(metadata !59149), !dbg !59146
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !59151, !noalias !59153 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !59154
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !59154

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !59155, !alias.scope !59143, !noalias !59156
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !59157, !noalias !59153

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !59159, !noalias !59153

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !59157, !noalias !59153
  unreachable, !dbg !59157

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !59161, !noalias !58667

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !59163, !noalias !58667

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !59164
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !59164, !alias.scope !59149, !noalias !59153, !noundef !14
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !59165, !alias.scope !59143, !noalias !59156
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !59165
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !59165, !alias.scope !59143, !noalias !59156
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !59165
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !59165, !alias.scope !59143, !noalias !59156
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !59165
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !59165, !alias.scope !59143, !noalias !59156
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !59166

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !59166, !noalias !59153

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !59167, !noalias !59153
  unreachable, !dbg !59167

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !59168

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !59169, !noalias !58667
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @75, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !59170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !59168, !noalias !58667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !59168, !noalias !58667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !58821, !noalias !58667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !59171, !noalias !58667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !58745, !noalias !58667
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59172

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @75) #43
          to label %bb.as unwind label %bb.ar, !dbg !59168, !noalias !58667

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !59173, !noalias !58667
  unreachable, !dbg !59173

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !59168, !noalias !58667

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !58901
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !58901, !prof !386

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !58924 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !58936
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !58938
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !58948, !noalias !58667
  %i.kr = call i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !58951
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !58967
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !58974, !noalias !58667
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !58924 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !58936
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !58938
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !58948, !noalias !58667
  %i.kw = call i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !58951
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !58967
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !58974, !noalias !58667
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !58924 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !58936
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !58938
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !58948, !noalias !58667
  %i.lb = call i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !58951
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !58967
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !58974, !noalias !58667
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !58924 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !58936
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !58938
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !58948, !noalias !58667
  %i.lg = call i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !58951
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !58967
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !58974, !noalias !58667
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !58975
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !58978, !llvm.loop !59174

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !59175, !noalias !58667

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !58904
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !58907 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !58913, !noalias !58667, !noundef !14
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !58915
  %i.lm = and i8 %i.ll, 7, !dbg !58915
  %i.ln = shl nuw i8 1, %i.lm, !dbg !58915
  %i.lo = xor i8 %i.ln, -1, !dbg !58918
  %i.lp = and i8 %i.lk, %i.lo, !dbg !58919
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !58922, !noalias !58667
  br label %.split.i.backedge, !dbg !58923

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !58821, !noalias !58667

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !58664

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !58745, !noalias !58667

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !59172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !59172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !59172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !59172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !59172
  br label %bb.cr, !dbg !59176

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !59177
  store i64 4, ptr %i.r, align 8, !dbg !59180, !noalias !59177
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !59185, !noalias !59177, !noundef !14 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !59191 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !59191 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !59191
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !59196, !prof !113

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl nuw i64 %3, 2, !dbg !59200          ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !59200
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !59205, !prof !113

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !59209, !noalias !59177
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !59212
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !59219, !noalias !59177
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !59212
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !59212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !59212
  store i8 42, ptr %i.am, align 8, !dbg !59212
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59220

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !59222, !noalias !59177
  call void @llvm.experimental.noalias.scope.decl(metadata !59224), !dbg !59227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !59230, !noalias !59234
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !59230, !noalias !59234
  %i.ma = load i64, ptr %i.c, align 8, !dbg !59230, !range !4081, !noalias !59234, !noundef !14
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !59235
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !59236
  %i.md = load i64, ptr %i.mc, align 8, !dbg !59236, !range !689, !noalias !59234, !noundef !14 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !59236 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !59235, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !59237, !noalias !59234
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !59238, !noalias !59234
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !59239, !noalias !59177
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !59242
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !59248, !noalias !59177
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !59242
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !59242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !59242
  store i8 42, ptr %i.am, align 8, !dbg !59242
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listfKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !59249

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !59251

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !59251

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !59252, !noalias !59234, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !59253, !noalias !59234
  store i64 %i.md, ptr %i.q, align 8, !dbg !59254, !alias.scope !59224, !noalias !59177
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !59254
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !59254, !alias.scope !59224, !noalias !59177
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !59254
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !59254, !alias.scope !59224, !noalias !59177
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !59255   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !59263, !noalias !59177
  store i64 %i.mm, ptr %i.p, align 8, !dbg !59263, !noalias !59177
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !59264, !noalias !59177, !noundef !14 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !59269       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !59269, !noalias !59177
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !59270
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !59270, !prof !386

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !59273, !noalias !59177

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !59276, !noalias !59177
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !59277
  %i.mr = lshr i64 %i.mq, 3, !dbg !59282          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !59283, !noalias !59290
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !59283, !noalias !59177

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !59283, !range !4081, !noalias !59290, !noundef !14
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !59293
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !59294
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !59294, !range !689, !noalias !59290, !noundef !14 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !59294 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !59293, !prof !113

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !59295, !noalias !59290
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !59296, !noalias !59177

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !59296

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !59297, !noalias !59290, !nonnull !14, !noundef !14 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !59298
  call void @llvm.assume(i1 %i.mz), !dbg !59300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !59302, !noalias !59290
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !59303, !noalias !59290
  store i64 %i.mv, ptr %i.n, align 8, !dbg !59305, !noalias !59177
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !59305
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !59305, !noalias !59177
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !59305
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !59305, !noalias !59177
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !59305
  store i64 %i.mn, ptr %i.na, align 8, !dbg !59305, !noalias !59177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !59306, !noalias !59177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !59308, !noalias !59177
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !59311, !noalias !59177, !noundef !14
  store ptr %i.as, ptr %i.d, align 8, !dbg !59319, !noalias !59177
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !59319
  store i64 0, ptr %i.nc, align 8, !dbg !59319, !noalias !59177
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !59319
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !59319, !noalias !59177
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !59320 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !59320, !noalias !59177, !noundef !14
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !59320
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !59323
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !59324, !noalias !59177

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !59325

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !59326, !noalias !59177
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !59327, !noalias !59177 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !59327
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !59327, !noalias !59177 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !59327
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !59327, !noalias !59177 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !59327
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !59327, !noalias !59177 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !59327
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !59327, !noalias !59177
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !59327
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !59327, !noalias !59177
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !59327
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !59327, !noalias !59177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !59332, !noalias !59177
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !59333
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !59333

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !59333

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !59338 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !59339, !noalias !59344, !noundef !14
  %i.nu = load i64, ptr %i.np, align 8, !dbg !59353, !noalias !59344, !noundef !14
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !59354
  call void @llvm.assume(i1 %i.nv), !dbg !59357
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !59358 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !59359, !noalias !59344, !noundef !14
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !59362, !noalias !59344, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !59363), !dbg !59366
  call void @llvm.experimental.noalias.scope.decl(metadata !59367), !dbg !59366
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !59369, !alias.scope !59363, !noalias !59371, !noundef !14 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !59369
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !59369

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !59372
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !59372, !alias.scope !59363, !noalias !59371, !noundef !14
  %i.od = zext i32 %i.oc to i64, !dbg !59372      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !59374
  call void @llvm.assume(i1 %i.oe), !dbg !59377
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !59378
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !59379
end_hunk_3
begin_hunk_4_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynhECskY9G75ZWc4U_11polars_expr:bb.a
  %eh.lpad-body83137.i = phi { ptr, i32 } [ %lpad.thr_comm.i60, %.body82.thread139.i ], [ %i.py, %bb.cf ], [ %i.pt, %bb.cc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.po, ptr nonnull @69) #43
          to label %bb.ci unwind label %bb.ch, !dbg !60555, !noalias !60142

bb.ch:                                            ; preds = %bb.cm, %.thread110.i, %bb.ci, %.body82.thread.i
  %i.qa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !60560, !noalias !60142
  unreachable, !dbg !60560

bb.ci:                                            ; preds = %.body82.thread.i, %bb.bx, %bb.bu
  %.sroa.040.1.ph.i = phi i1 [ false, %.body82.thread.i ], [ true, %bb.bu ], [ true, %bb.bx ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body83137.i, %.body82.thread.i ], [ %i.pn, %bb.bu ], [ %i.pq, %bb.bx ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.k) #43
          to label %bb.bf unwind label %bb.ch, !dbg !60555, !noalias !60142

bb.cj:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qb = icmp ult i64 %.sroa.21.0.i29, %i.lb, !dbg !60336
  br i1 %i.qb, label %bb.cl, label %.split152.us.i, !dbg !60336, !prof !386

bb.ck:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.qc = mul i64 %.sroa.21.0.i29, %3, !dbg !60359
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.qc, !dbg !60360
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr nonnull align 1 %i.pa, i64 %3, i1 false), !dbg !60364, !noalias !60142
  br label %.split.i28.backedge, !dbg !60367

.split152.us.i:                                   ; preds = %bb.cj, %bb.bi
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bd unwind label %.loopexit.split-lp.i12, !dbg !60561, !noalias !60142

bb.cl:                                            ; preds = %bb.cj
  %i.qe = lshr i64 %.sroa.21.0.i29, 3, !dbg !60339
  %i.qf = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.qe, !dbg !60342 ; 2 uses
  %i.qg = load i8, ptr %i.qf, align 1, !dbg !60348, !noalias !60142, !noundef !14
  %i.qh = trunc i64 %.sroa.21.0.i29 to i8, !dbg !60350
  %i.qi = and i8 %i.qh, 7, !dbg !60350
  %i.qj = shl nuw i8 1, %i.qi, !dbg !60350
  %i.qk = xor i8 %i.qj, -1, !dbg !60353
  %i.ql = and i8 %i.qg, %i.qk, !dbg !60354
  store i8 %i.ql, ptr %i.qf, align 1, !dbg !60357, !noalias !60142
  br label %.split.i28.backedge, !dbg !60358

.split.i28.backedge:                              ; preds = %bb.cl, %bb.ck
  br label %.split.i28, !dbg !60368

.thread110.i:                                     ; preds = %bb.br, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bf
  %.pn66115.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bf ], [ %i.pi, %bb.br ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1114.i = phi i1 [ false, %bb.bf ], [ true, %bb.br ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.m) #43
          to label %bb.ay unwind label %bb.ch, !dbg !60259, !noalias !60142

bb.cm:                                            ; preds = %.thread.i8, %bb.ay
  %.pn68109.i = phi { ptr, i32 } [ %i.kx, %.thread.i8 ], [ %.pn66115.i, %bb.ay ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.p) #43
          to label %common.resume unwind label %bb.ch, !dbg !60193, !noalias !60142

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ax, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !60559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !60559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !60559
  br label %bb.cn, !dbg !60562

bb.cn:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listhKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qm = load i8, ptr %i.ai, align 8, !dbg !60563, !range !41322, !noundef !14 ; 2 uses
  %i.qn = icmp eq i8 %i.qm, 42, !dbg !60563
  br i1 %i.qn, label %bb.co, label %bb.cp, !dbg !60566

bb.co:                                            ; preds = %bb.cn
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !60567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qo, i64 72, i1 false), !dbg !60568
  br label %bb.ct, !dbg !60569

bb.cp:                                            ; preds = %bb.cn
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !60570
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 80, !dbg !60570
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ak, i64 80, !dbg !60565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !60570
  store i8 %i.qm, ptr %i.ak, align 8, !dbg !60565
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !60565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !60565
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !60571, !noalias !60579
  %i.qp = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !60582, !noalias !60579 ; 3 uses
  %i.qq = icmp eq ptr %i.qp, null, !dbg !60583
  br i1 %i.qq, label %bb.cq, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !60584, !prof !113

bb.cq:                                            ; preds = %bb.cp
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cr, !dbg !60585

.noexc:                                           ; preds = %bb.cq
  unreachable, !dbg !60585

bb.cr:                                            ; preds = %bb.cq
  %i.qr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ak) #43
          to label %common.resume unwind label %bb.cs, !dbg !60586

bb.cs:                                            ; preds = %bb.cr
  %i.qs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !60587
  unreachable, !dbg !60587

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qp, ptr noundef nonnull align 8 dereferenceable(96) %i.ak, i64 96, i1 false), !dbg !60588
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !60589
  store ptr %i.qp, ptr %i.qt, align 8, !dbg !60589
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !60589
  store ptr @85, ptr %i.qu, align 8, !dbg !60589
  store i64 18, ptr %0, align 8, !dbg !60589
  br label %bb.ct, !dbg !60569

bb.ct:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.co
  ret void, !dbg !60569
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !60590 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !60591
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !60591, !invariant.load !14, !nonnull !14
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !60592 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !60592 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !60592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !60593
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !60596
  %i.av = load ptr, ptr %i.au, align 8, !dbg !60596, !invariant.load !14, !nonnull !14
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !60599
  %i.aw = load i128, ptr %i.an, align 16, !dbg !60600, !noundef !14
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !60609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !60593
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !60610, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !60611
  unreachable, !dbg !60611

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !60614 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !60616

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !60617
  store i64 4, ptr %i.ak, align 8, !dbg !60620, !noalias !60617
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !60625, !noalias !60617, !noundef !14 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !60631 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !60631 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !60631
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !60636, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.be = shl nuw i64 %3, 2, !dbg !60640          ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !60640
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !60645, !prof !113

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !60649, !noalias !60617
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !60652
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !60659, !noalias !60617
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !60652
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !60652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !60652
  store i8 42, ptr %i.am, align 8, !dbg !60652
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !60660

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !60662, !noalias !60617
  call void @llvm.experimental.noalias.scope.decl(metadata !60664), !dbg !60667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !60670, !noalias !60677
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !60670, !noalias !60677
  %i.bj = load i64, ptr %i.v, align 8, !dbg !60670, !range !4081, !noalias !60677, !noundef !14
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !60678
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !60679
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !60679, !range !689, !noalias !60677, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !60679 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !60678, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !60680, !noalias !60677
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !60681, !noalias !60677
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !60683, !noalias !60617
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !60686
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !60692, !noalias !60617
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !60686
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !60686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !60686
  store i8 42, ptr %i.am, align 8, !dbg !60686
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !60693

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !60695

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !60695

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !60696, !noalias !60677, !nonnull !14, !noundef !14 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !60697 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !60697, !noalias !60677
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !60698, !alias.scope !60664, !noalias !60617
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !60698
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !60698, !alias.scope !60664, !noalias !60617
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !60698
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !60698, !alias.scope !60664, !noalias !60617
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !60699   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !60709, !noalias !60617
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !60709, !noalias !60617
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !60710, !noalias !60617, !noundef !14 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !60715       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !60715, !noalias !60617
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !60716
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !60716, !prof !386

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !60719, !noalias !60617

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !60722, !noalias !60617
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !60723
  %i.cb = lshr i64 %i.ca, 3, !dbg !60728          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !60729, !noalias !60736
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !60729, !noalias !60617

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !60729, !range !4081, !noalias !60736, !noundef !14
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !60739
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !60740
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !60740, !range !689, !noalias !60736, !noundef !14 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !60740 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !60739, !prof !113

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !60741, !noalias !60736
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !60742, !noalias !60617

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !60742

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !60743, !noalias !60736, !nonnull !14, !noundef !14 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !60744
  call void @llvm.assume(i1 %i.cj), !dbg !60746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !60748, !noalias !60736
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !60749, !noalias !60736
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !60751, !noalias !60617
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !60751
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !60751, !noalias !60617
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !60751
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !60751, !noalias !60617
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !60751
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !60751, !noalias !60617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !60752, !noalias !60617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !60754, !noalias !60617
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !60757, !noalias !60617, !noundef !14
  store ptr %i.as, ptr %i.w, align 8, !dbg !60765, !noalias !60617
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !60765
  store i64 0, ptr %i.cm, align 8, !dbg !60765, !noalias !60617
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !60765
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !60765, !noalias !60617
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !60766 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !60766, !noalias !60617, !noundef !14
  %.not.i = icmp eq ptr %i.cp, null, !dbg !60766
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !60769
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !60770, !noalias !60617

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !60771

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !60772, !noalias !60617
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !60773, !noalias !60617 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !60773
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !60773, !noalias !60617 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !60773
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !60773, !noalias !60617 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !60773
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !60773, !noalias !60617 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !60773
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !60773, !noalias !60617
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !60773
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !60773, !noalias !60617
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !60773
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !60773, !noalias !60617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !60778, !noalias !60617
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
  %i.cw = shl nuw i64 %3, 2, !dbg !60779
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !60779

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !60785
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !60785

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !60787
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !60788

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !60787
  %i.df = add i64 %i.de, %i.bt, !dbg !60787
end_hunk_4
begin_hunk_5_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraylEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !61084, !noalias !60617

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61085, !noalias !60617
  unreachable, !dbg !61085

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !61086, !noalias !60617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !61087, !noalias !60617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !61088, !noalias !60617
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !61088, !noalias !60617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !61088, !noalias !60617
  call void @llvm.experimental.noalias.scope.decl(metadata !61089), !dbg !61092
  call void @llvm.experimental.noalias.scope.decl(metadata !61095), !dbg !61092
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !61097, !noalias !61099 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !61100
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !61100

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !61101, !alias.scope !61089, !noalias !61102
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !61103, !noalias !61099

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !61105, !noalias !61099

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61103, !noalias !61099
  unreachable, !dbg !61103

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !61107, !noalias !60617

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !61109, !noalias !60617

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !61110
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !61110, !alias.scope !61095, !noalias !61099, !noundef !14
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !61111, !alias.scope !61089, !noalias !61102
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !61111
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !61111, !alias.scope !61089, !noalias !61102
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !61111
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !61111, !alias.scope !61089, !noalias !61102
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !61111
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !61111, !alias.scope !61089, !noalias !61102
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !61112

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !61112, !noalias !61099

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61113, !noalias !61099
  unreachable, !dbg !61113

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !61114

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !61115, !noalias !60617
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @66, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !61116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !61114, !noalias !60617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !61114, !noalias !60617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !60771, !noalias !60617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !61117, !noalias !60617
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !60695, !noalias !60617
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61118

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @66) #43
          to label %bb.as unwind label %bb.ar, !dbg !61114, !noalias !60617

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61119, !noalias !60617
  unreachable, !dbg !61119

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !61114, !noalias !60617

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !60851
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !60851, !prof !386

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !60874 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !60886
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !60888
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !60898, !noalias !60617
  %i.kr = call noundef i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !60901
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !60913
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !60920, !noalias !60617
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !60874 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !60886
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !60888
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !60898, !noalias !60617
  %i.kw = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !60901
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !60913
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !60920, !noalias !60617
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !60874 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !60886
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !60888
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !60898, !noalias !60617
  %i.lb = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !60901
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !60913
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !60920, !noalias !60617
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !60874 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !60886
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !60888
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !60898, !noalias !60617
  %i.lg = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !60901
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !60913
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !60920, !noalias !60617
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !60921
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !60924, !llvm.loop !61120

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !61121, !noalias !60617

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !60854
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !60857 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !60863, !noalias !60617, !noundef !14
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !60865
  %i.lm = and i8 %i.ll, 7, !dbg !60865
  %i.ln = shl nuw i8 1, %i.lm, !dbg !60865
  %i.lo = xor i8 %i.ln, -1, !dbg !60868
  %i.lp = and i8 %i.lk, %i.lo, !dbg !60869
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !60872, !noalias !60617
  br label %.split.i.backedge, !dbg !60873

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !60771, !noalias !60617

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !60614

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !60695, !noalias !60617

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !61118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !61118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !61118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !61118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !61118
  br label %bb.cr, !dbg !61122

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !61123
  store i64 4, ptr %i.r, align 8, !dbg !61126, !noalias !61123
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !61131, !noalias !61123, !noundef !14 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !61137 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !61137 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !61137
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !61142, !prof !113

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl nuw i64 %3, 2, !dbg !61146          ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !61146
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !61151, !prof !113

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !61155, !noalias !61123
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61158
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !61165, !noalias !61123
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !61158
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !61158
  store i8 42, ptr %i.am, align 8, !dbg !61158
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61166

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !61168, !noalias !61123
  call void @llvm.experimental.noalias.scope.decl(metadata !61170), !dbg !61173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !61176, !noalias !61180
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !61176, !noalias !61180
  %i.ma = load i64, ptr %i.c, align 8, !dbg !61176, !range !4081, !noalias !61180, !noundef !14
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !61181
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !61182
  %i.md = load i64, ptr %i.mc, align 8, !dbg !61182, !range !689, !noalias !61180, !noundef !14 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !61182 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !61181, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !61183, !noalias !61180
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !61184, !noalias !61180
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !61185, !noalias !61123
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61188
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !61194, !noalias !61123
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !61188
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !61188
  store i8 42, ptr %i.am, align 8, !dbg !61188
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61195

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !61197

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !61197

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !61198, !noalias !61180, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !61199, !noalias !61180
  store i64 %i.md, ptr %i.q, align 8, !dbg !61200, !alias.scope !61170, !noalias !61123
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !61200
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !61200, !alias.scope !61170, !noalias !61123
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !61200
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !61200, !alias.scope !61170, !noalias !61123
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !61201   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !61209, !noalias !61123
  store i64 %i.mm, ptr %i.p, align 8, !dbg !61209, !noalias !61123
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !61210, !noalias !61123, !noundef !14 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !61215       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !61215, !noalias !61123
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !61216
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !61216, !prof !386

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !61219, !noalias !61123

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !61222, !noalias !61123
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !61223
  %i.mr = lshr i64 %i.mq, 3, !dbg !61228          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !61229, !noalias !61236
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !61229, !noalias !61123

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !61229, !range !4081, !noalias !61236, !noundef !14
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !61239
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !61240
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !61240, !range !689, !noalias !61236, !noundef !14 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !61240 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !61239, !prof !113

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !61241, !noalias !61236
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !61242, !noalias !61123

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !61242

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !61243, !noalias !61236, !nonnull !14, !noundef !14 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !61244
  call void @llvm.assume(i1 %i.mz), !dbg !61246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !61248, !noalias !61236
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !61249, !noalias !61236
  store i64 %i.mv, ptr %i.n, align 8, !dbg !61251, !noalias !61123
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !61251
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !61251, !noalias !61123
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !61251
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !61251, !noalias !61123
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !61251
  store i64 %i.mn, ptr %i.na, align 8, !dbg !61251, !noalias !61123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !61252, !noalias !61123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !61254, !noalias !61123
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !61257, !noalias !61123, !noundef !14
  store ptr %i.as, ptr %i.d, align 8, !dbg !61265, !noalias !61123
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !61265
  store i64 0, ptr %i.nc, align 8, !dbg !61265, !noalias !61123
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !61265
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !61265, !noalias !61123
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !61266 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !61266, !noalias !61123, !noundef !14
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !61266
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !61269
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !61270, !noalias !61123

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !61271

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !61272, !noalias !61123
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !61273, !noalias !61123 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !61273
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !61273, !noalias !61123 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !61273
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !61273, !noalias !61123 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !61273
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !61273, !noalias !61123 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !61273
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !61273, !noalias !61123
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !61273
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !61273, !noalias !61123
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !61273
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !61273, !noalias !61123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !61278, !noalias !61123
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !61279
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !61279

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !61279

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !61284 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !61285, !noalias !61290, !noundef !14
  %i.nu = load i64, ptr %i.np, align 8, !dbg !61299, !noalias !61290, !noundef !14
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !61300
  call void @llvm.assume(i1 %i.nv), !dbg !61303
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !61304 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !61305, !noalias !61290, !noundef !14
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !61308, !noalias !61290, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !61309), !dbg !61312
  call void @llvm.experimental.noalias.scope.decl(metadata !61313), !dbg !61312
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !61315, !alias.scope !61309, !noalias !61317, !noundef !14 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !61315
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !61315

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !61318
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !61318, !alias.scope !61309, !noalias !61317, !noundef !14
  %i.od = zext i32 %i.oc to i64, !dbg !61318      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !61320
  call void @llvm.assume(i1 %i.oe), !dbg !61323
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !61324
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !61325
end_hunk_5
begin_hunk_6_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynlECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !61567, !noalias !61123

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61572, !noalias !61123
  unreachable, !dbg !61572

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !61567, !noalias !61123

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !61348
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !61348, !prof !386

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !61371
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !61372
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !61376, !noalias !61123
  br label %.split.i28.backedge, !dbg !61379

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !61573, !noalias !61123

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !61351
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !61354 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !61360, !noalias !61123, !noundef !14
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !61362
  %i.ru = and i8 %i.rt, 7, !dbg !61362
  %i.rv = shl nuw i8 1, %i.ru, !dbg !61362
  %i.rw = xor i8 %i.rv, -1, !dbg !61365
  %i.rx = and i8 %i.rs, %i.rw, !dbg !61366
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !61369, !noalias !61123
  br label %.split.i28.backedge, !dbg !61370

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !61380

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !61271, !noalias !61123

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !61197, !noalias !61123

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !61571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !61571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !61571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !61571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !61571
  br label %bb.cr, !dbg !61574

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listlKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !61575, !range !41322, !noundef !14 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !61575
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !61578

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !61580
  br label %bb.cx, !dbg !61581

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !61582
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !61582
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !61577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !61582
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !61577
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !61577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !61577
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !61583, !noalias !61591
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !61594, !noalias !61591 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !61595
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !61596, !prof !113

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !61597

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !61597

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !61598

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !61599
  unreachable, !dbg !61599

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !61600
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !61601
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !61601
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !61601
  store ptr @85, ptr %i.sg, align 8, !dbg !61601
  store i64 18, ptr %0, align 8, !dbg !61601
  br label %bb.cx, !dbg !61581

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !61581
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !61602 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !61603
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !61603, !invariant.load !14, !nonnull !14
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !61604 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !61604 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !61604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !61605
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !61608
  %i.av = load ptr, ptr %i.au, align 8, !dbg !61608, !invariant.load !14, !nonnull !14
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !61611
  %i.aw = load i128, ptr %i.an, align 16, !dbg !61612, !noundef !14
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !61621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !61605
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !61622, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !61623
  unreachable, !dbg !61623

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !61626 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !61628

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !61629
  store i64 4, ptr %i.ak, align 8, !dbg !61632, !noalias !61629
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !61637, !noalias !61629, !noundef !14 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !61643 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !61643 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !61643
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !61648, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.be = shl nuw i64 %3, 2, !dbg !61652          ; 4 uses
  %i.bf = icmp ugt i64 %3, 4611686018427387903, !dbg !61652
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !61657, !prof !113

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !61661, !noalias !61629
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61664
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !61671, !noalias !61629
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !61664
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !61664
  store i8 42, ptr %i.am, align 8, !dbg !61664
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61672

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !61674, !noalias !61629
  call void @llvm.experimental.noalias.scope.decl(metadata !61676), !dbg !61679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !61682, !noalias !61689
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !61682, !noalias !61689
  %i.bj = load i64, ptr %i.v, align 8, !dbg !61682, !range !4081, !noalias !61689, !noundef !14
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !61690
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !61691
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !61691, !range !689, !noalias !61689, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !61691 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !61690, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !61692, !noalias !61689
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !61693, !noalias !61689
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !61695, !noalias !61629
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !61698
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !61704, !noalias !61629
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !61698
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !61698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !61698
  store i8 42, ptr %i.am, align 8, !dbg !61698
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !61705

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !61707

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !61707

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !61708, !noalias !61689, !nonnull !14, !noundef !14 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !61709 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !61709, !noalias !61689
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !61710, !alias.scope !61676, !noalias !61629
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !61710
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !61710, !alias.scope !61676, !noalias !61629
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !61710
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !61710, !alias.scope !61676, !noalias !61629
  %i.bw = shl nuw nsw i64 %i.bc, 2, !dbg !61711   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !61721, !noalias !61629
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !61721, !noalias !61629
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !61722, !noalias !61629, !noundef !14 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !61727       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !61727, !noalias !61629
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !61728
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !61728, !prof !386

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !61731, !noalias !61629

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !61734, !noalias !61629
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !61735
  %i.cb = lshr i64 %i.ca, 3, !dbg !61740          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !61741, !noalias !61748
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !61741, !noalias !61629

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !61741, !range !4081, !noalias !61748, !noundef !14
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !61751
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !61752
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !61752, !range !689, !noalias !61748, !noundef !14 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !61752 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !61751, !prof !113

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !61753, !noalias !61748
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !61754, !noalias !61629

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !61754

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !61755, !noalias !61748, !nonnull !14, !noundef !14 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !61756
  call void @llvm.assume(i1 %i.cj), !dbg !61758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !61760, !noalias !61748
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !61761, !noalias !61748
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !61763, !noalias !61629
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !61763
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !61763, !noalias !61629
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !61763
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !61763, !noalias !61629
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !61763
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !61763, !noalias !61629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !61764, !noalias !61629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !61766, !noalias !61629
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !61769, !noalias !61629, !noundef !14
  store ptr %i.as, ptr %i.w, align 8, !dbg !61777, !noalias !61629
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !61777
  store i64 0, ptr %i.cm, align 8, !dbg !61777, !noalias !61629
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !61777
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !61777, !noalias !61629
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !61778 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !61778, !noalias !61629, !noundef !14
  %.not.i = icmp eq ptr %i.cp, null, !dbg !61778
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !61781
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !61782, !noalias !61629

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !61783

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !61784, !noalias !61629
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !61785, !noalias !61629 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !61785
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !61785, !noalias !61629 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !61785
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !61785, !noalias !61629 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !61785
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !61785, !noalias !61629 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !61785
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !61785, !noalias !61629
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !61785
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !61785, !noalias !61629
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !61785
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !61785, !noalias !61629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !61790, !noalias !61629
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
  %i.cw = shl nuw i64 %3, 2, !dbg !61791
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !61791

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !61797
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !61797

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 2, !dbg !61799
  %min.iters.check121 = icmp ult i64 %3, 8
  %n.vec123 = and i64 %3, 4611686018427387896     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !61800

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !61799
  %i.df = add i64 %i.de, %i.bt, !dbg !61799
end_hunk_6
begin_hunk_7_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !62094, !noalias !61629

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62095, !noalias !61629
  unreachable, !dbg !62095

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !62096, !noalias !61629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !62097, !noalias !61629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !62098, !noalias !61629
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !62098, !noalias !61629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !62098, !noalias !61629
  call void @llvm.experimental.noalias.scope.decl(metadata !62099), !dbg !62102
  call void @llvm.experimental.noalias.scope.decl(metadata !62105), !dbg !62102
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !62107, !noalias !62109 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !62110
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !62110

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !62111, !alias.scope !62099, !noalias !62112
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !62113, !noalias !62109

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !62115, !noalias !62109

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62113, !noalias !62109
  unreachable, !dbg !62113

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !62117, !noalias !61629

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !62119, !noalias !61629

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !62120
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !62120, !alias.scope !62105, !noalias !62109, !noundef !14
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !62121, !alias.scope !62099, !noalias !62112
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !62121
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !62121, !alias.scope !62099, !noalias !62112
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !62121
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !62121, !alias.scope !62099, !noalias !62112
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !62121
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !62121, !alias.scope !62099, !noalias !62112
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !62122

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !62122, !noalias !62109

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62123, !noalias !62109
  unreachable, !dbg !62123

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !62124

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !62125, !noalias !61629
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @71, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !62126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !62124, !noalias !61629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !62124, !noalias !61629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !61783, !noalias !61629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !62127, !noalias !61629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !61707, !noalias !61629
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62128

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @71) #43
          to label %bb.as unwind label %bb.ar, !dbg !62124, !noalias !61629

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62129, !noalias !61629
  unreachable, !dbg !62129

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !62124, !noalias !61629

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !61863
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !61863, !prof !386

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !61886 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 2, !dbg !61898
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !61900
  %.val82.i = load i32, ptr %i.kq, align 1, !dbg !61910, !noalias !61629
  %i.kr = call noundef i32 @llvm.bswap.i32(i32 %.val82.i), !dbg !61913
  %i.ks = getelementptr [4 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !61923
  store i32 %i.kr, ptr %i.ks, align 4, !dbg !61930, !noalias !61629
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !61886 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 2, !dbg !61898
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !61900
  %.val82.i.1 = load i32, ptr %i.kv, align 1, !dbg !61910, !noalias !61629
  %i.kw = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.1), !dbg !61913
  %i.kx = getelementptr [4 x i8], ptr %i.iy, i64 %i.ko, !dbg !61923
  store i32 %i.kw, ptr %i.kx, align 4, !dbg !61930, !noalias !61629
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !61886 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 2, !dbg !61898
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !61900
  %.val82.i.2 = load i32, ptr %i.la, align 1, !dbg !61910, !noalias !61629
  %i.lb = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.2), !dbg !61913
  %i.lc = getelementptr [4 x i8], ptr %i.iy, i64 %i.kt, !dbg !61923
  store i32 %i.lb, ptr %i.lc, align 4, !dbg !61930, !noalias !61629
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !61886 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 2, !dbg !61898
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !61900
  %.val82.i.3 = load i32, ptr %i.lf, align 1, !dbg !61910, !noalias !61629
  %i.lg = call noundef i32 @llvm.bswap.i32(i32 %.val82.i.3), !dbg !61913
  %i.lh = getelementptr [4 x i8], ptr %i.iy, i64 %i.ky, !dbg !61923
  store i32 %i.lg, ptr %i.lh, align 4, !dbg !61930, !noalias !61629
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !61931
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !61934, !llvm.loop !62130

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !62131, !noalias !61629

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !61866
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !61869 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !61875, !noalias !61629, !noundef !14
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !61877
  %i.lm = and i8 %i.ll, 7, !dbg !61877
  %i.ln = shl nuw i8 1, %i.lm, !dbg !61877
  %i.lo = xor i8 %i.ln, -1, !dbg !61880
  %i.lp = and i8 %i.lk, %i.lo, !dbg !61881
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !61884, !noalias !61629
  br label %.split.i.backedge, !dbg !61885

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !61783, !noalias !61629

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !61626

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !61707, !noalias !61629

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !62128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !62128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !62128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !62128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !62128
  br label %bb.cr, !dbg !62132

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !62133
  store i64 4, ptr %i.r, align 8, !dbg !62136, !noalias !62133
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !62141, !noalias !62133, !noundef !14 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !62147 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !62147 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !62147
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !62152, !prof !113

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl nuw i64 %3, 2, !dbg !62156          ; 7 uses
  %i.lw = icmp ugt i64 %3, 4611686018427387903, !dbg !62156
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !62161, !prof !113

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !62165, !noalias !62133
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62168
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !62175, !noalias !62133
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !62168
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !62168
  store i8 42, ptr %i.am, align 8, !dbg !62168
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62176

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !62178, !noalias !62133
  call void @llvm.experimental.noalias.scope.decl(metadata !62180), !dbg !62183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !62186, !noalias !62190
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !62186, !noalias !62190
  %i.ma = load i64, ptr %i.c, align 8, !dbg !62186, !range !4081, !noalias !62190, !noundef !14
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !62191
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !62192
  %i.md = load i64, ptr %i.mc, align 8, !dbg !62192, !range !689, !noalias !62190, !noundef !14 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !62192 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !62191, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !62193, !noalias !62190
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !62194, !noalias !62190
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !62195, !noalias !62133
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62198
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !62204, !noalias !62133
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !62198
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !62198
  store i8 42, ptr %i.am, align 8, !dbg !62198
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62205

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !62207

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !62207

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !62208, !noalias !62190, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !62209, !noalias !62190
  store i64 %i.md, ptr %i.q, align 8, !dbg !62210, !alias.scope !62180, !noalias !62133
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !62210
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !62210, !alias.scope !62180, !noalias !62133
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !62210
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !62210, !alias.scope !62180, !noalias !62133
  %i.mm = shl nuw nsw i64 %i.lt, 2, !dbg !62211   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !62219, !noalias !62133
  store i64 %i.mm, ptr %i.p, align 8, !dbg !62219, !noalias !62133
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !62220, !noalias !62133, !noundef !14 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !62225       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !62225, !noalias !62133
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !62226
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !62226, !prof !386

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !62229, !noalias !62133

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !62232, !noalias !62133
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !62233
  %i.mr = lshr i64 %i.mq, 3, !dbg !62238          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !62239, !noalias !62246
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !62239, !noalias !62133

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !62239, !range !4081, !noalias !62246, !noundef !14
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !62249
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !62250
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !62250, !range !689, !noalias !62246, !noundef !14 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !62250 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !62249, !prof !113

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !62251, !noalias !62246
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !62252, !noalias !62133

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !62252

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !62253, !noalias !62246, !nonnull !14, !noundef !14 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !62254
  call void @llvm.assume(i1 %i.mz), !dbg !62256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !62258, !noalias !62246
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !62259, !noalias !62246
  store i64 %i.mv, ptr %i.n, align 8, !dbg !62261, !noalias !62133
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !62261
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !62261, !noalias !62133
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !62261
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !62261, !noalias !62133
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !62261
  store i64 %i.mn, ptr %i.na, align 8, !dbg !62261, !noalias !62133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !62262, !noalias !62133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !62264, !noalias !62133
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !62267, !noalias !62133, !noundef !14
  store ptr %i.as, ptr %i.d, align 8, !dbg !62275, !noalias !62133
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !62275
  store i64 0, ptr %i.nc, align 8, !dbg !62275, !noalias !62133
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !62275
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !62275, !noalias !62133
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !62276 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !62276, !noalias !62133, !noundef !14
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !62276
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !62279
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !62280, !noalias !62133

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !62281

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !62282, !noalias !62133
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !62283, !noalias !62133 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !62283
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !62283, !noalias !62133 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !62283
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !62283, !noalias !62133 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !62283
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !62283, !noalias !62133 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !62283
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !62283, !noalias !62133
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !62283
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !62283, !noalias !62133
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !62283
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !62283, !noalias !62133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !62288, !noalias !62133
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !62289
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !62289

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !62289

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !62294 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !62295, !noalias !62300, !noundef !14
  %i.nu = load i64, ptr %i.np, align 8, !dbg !62309, !noalias !62300, !noundef !14
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !62310
  call void @llvm.assume(i1 %i.nv), !dbg !62313
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !62314 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !62315, !noalias !62300, !noundef !14
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !62318, !noalias !62300, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !62319), !dbg !62322
  call void @llvm.experimental.noalias.scope.decl(metadata !62323), !dbg !62322
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !62325, !alias.scope !62319, !noalias !62327, !noundef !14 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !62325
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !62325

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !62328
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !62328, !alias.scope !62319, !noalias !62327, !noundef !14
  %i.od = zext i32 %i.oc to i64, !dbg !62328      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !62330
  call void @llvm.assume(i1 %i.oe), !dbg !62333
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !62334
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !62335
end_hunk_7
begin_hunk_8_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynmECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !62577, !noalias !62133

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62582, !noalias !62133
  unreachable, !dbg !62582

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !62577, !noalias !62133

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !62358
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !62358, !prof !386

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !62381
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !62382
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !62386, !noalias !62133
  br label %.split.i28.backedge, !dbg !62389

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !62583, !noalias !62133

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !62361
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !62364 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !62370, !noalias !62133, !noundef !14
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !62372
  %i.ru = and i8 %i.rt, 7, !dbg !62372
  %i.rv = shl nuw i8 1, %i.ru, !dbg !62372
  %i.rw = xor i8 %i.rv, -1, !dbg !62375
  %i.rx = and i8 %i.rs, %i.rw, !dbg !62376
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !62379, !noalias !62133
  br label %.split.i28.backedge, !dbg !62380

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !62390

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !62281, !noalias !62133

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !62207, !noalias !62133

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !62581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !62581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !62581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !62581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !62581
  br label %bb.cr, !dbg !62584

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listmKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !62585, !range !41322, !noundef !14 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !62585
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !62588

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !62590
  br label %bb.cx, !dbg !62591

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !62592
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !62592
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !62587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !62592
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !62587
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !62587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !62587
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !62593, !noalias !62601
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !62604, !noalias !62601 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !62605
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !62606, !prof !113

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !62607

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !62607

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !62608

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !62609
  unreachable, !dbg !62609

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !62610
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !62611
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !62611
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !62611
  store ptr @85, ptr %i.sg, align 8, !dbg !62611
  store i64 18, ptr %0, align 8, !dbg !62611
  br label %bb.cx, !dbg !62591

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !62591
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !62612 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !62613
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !62613, !invariant.load !14, !nonnull !14
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !62614 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !62614 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !62614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !62615
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !62618
  %i.av = load ptr, ptr %i.au, align 8, !dbg !62618, !invariant.load !14, !nonnull !14
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !62621
  %i.aw = load i128, ptr %i.an, align 16, !dbg !62622, !noundef !14
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !62631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !62615
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !62632, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !62633
  unreachable, !dbg !62633

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !62636 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !62638

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !62639
  store i64 16, ptr %i.ak, align 8, !dbg !62642, !noalias !62639
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !62647, !noalias !62639, !noundef !14 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !62653 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !62653 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !62653
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !62658, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.be = shl nuw i64 %3, 4, !dbg !62662          ; 4 uses
  %i.bf = icmp ugt i64 %3, 1152921504606846975, !dbg !62662
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !62667, !prof !113

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !62671, !noalias !62639
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62674
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !62681, !noalias !62639
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !62674
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !62674
  store i8 42, ptr %i.am, align 8, !dbg !62674
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62682

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !62684, !noalias !62639
  call void @llvm.experimental.noalias.scope.decl(metadata !62686), !dbg !62689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !62692, !noalias !62699
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !62692, !noalias !62699
  %i.bj = load i64, ptr %i.v, align 8, !dbg !62692, !range !4081, !noalias !62699, !noundef !14
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !62700
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !62701
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !62701, !range !689, !noalias !62699, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !62701 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !62700, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !62702, !noalias !62699
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !62703, !noalias !62699
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !62705, !noalias !62639
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !62708
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !62714, !noalias !62639
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !62708
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !62708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !62708
  store i8 42, ptr %i.am, align 8, !dbg !62708
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !62715

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !62717

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !62717

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !62718, !noalias !62699, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !62719, !noalias !62699
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !62720, !alias.scope !62686, !noalias !62639
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !62720
  store ptr %i.bs, ptr %i.bt, align 8, !dbg !62720, !alias.scope !62686, !noalias !62639
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !62720
  store i64 %i.bc, ptr %i.bu, align 8, !dbg !62720, !alias.scope !62686, !noalias !62639
  %i.bv = shl nuw nsw i64 %i.bc, 4, !dbg !62721   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !62731, !noalias !62639
  store i64 %i.bv, ptr %i.ai, align 8, !dbg !62731, !noalias !62639
  %i.bw = load i64, ptr %i.ay, align 8, !dbg !62732, !noalias !62639, !noundef !14 ; 6 uses
  %i.bx = mul i64 %i.bw, %i.be, !dbg !62737       ; 2 uses
  store i64 %i.bx, ptr %i.ah, align 8, !dbg !62737, !noalias !62639
  %i.by = icmp eq i64 %i.bv, %i.bx, !dbg !62738
  br i1 %i.by, label %bb.m, label %bb.l, !dbg !62738, !prof !386

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !62741, !noalias !62639

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !62744, !noalias !62639
  %i.bz = call i64 @llvm.uadd.sat.i64(i64 %i.bw, i64 7), !dbg !62745
  %i.ca = lshr i64 %i.bz, 3, !dbg !62750          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !62751, !noalias !62758
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.ca, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !62751, !noalias !62639

.noexc.i:                                         ; preds = %bb.m
  %i.cb = load i64, ptr %i.u, align 8, !dbg !62751, !range !4081, !noalias !62758, !noundef !14
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !62761
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !62762
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !62762, !range !689, !noalias !62758, !noundef !14 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !62762 ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.p, !dbg !62761, !prof !113

bb.n:                                             ; preds = %.noexc.i
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !62763, !noalias !62758
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !62764, !noalias !62639

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !62764

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ch = load ptr, ptr %i.cf, align 8, !dbg !62765, !noalias !62758, !nonnull !14, !noundef !14 ; 5 uses
  %i.ci = icmp ule i64 %i.ca, %i.ce, !dbg !62766
  call void @llvm.assume(i1 %i.ci), !dbg !62768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !62770, !noalias !62758
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 -1, i64 %i.ca, i1 false), !dbg !62771, !noalias !62758
  store i64 %i.ce, ptr %i.ag, align 8, !dbg !62773, !noalias !62639
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !62773
  store ptr %i.ch, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !62773, !noalias !62639
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !62773
  store i64 %i.ca, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !62773, !noalias !62639
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !62773
  store i64 %i.bw, ptr %i.cj, align 8, !dbg !62773, !noalias !62639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !62774, !noalias !62639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !62776, !noalias !62639
  %i.ck = load i64, ptr %i.ay, align 8, !dbg !62779, !noalias !62639, !noundef !14
  store ptr %i.as, ptr %i.w, align 8, !dbg !62787, !noalias !62639
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !62787
  store i64 0, ptr %i.cl, align 8, !dbg !62787, !noalias !62639
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !62787
  store i64 %i.ck, ptr %i.cm, align 8, !dbg !62787, !noalias !62639
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !62788 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !62788, !noalias !62639, !noundef !14
  %.not.i = icmp eq ptr %i.co, null, !dbg !62788
  %..i = select i1 %.not.i, ptr null, ptr %i.cn, !dbg !62791
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !62792, !noalias !62639

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !62793

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !62794, !noalias !62639
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !62795, !noalias !62639 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !62795
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !62795, !noalias !62639 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !62795
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !62795, !noalias !62639 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !62795
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !62795, !noalias !62639 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !62795
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !62795, !noalias !62639
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !62795
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !62795, !noalias !62639
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !62795
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !62795, !noalias !62639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !62800, !noalias !62639
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
  br label %.split.i, !dbg !62801

.split.us.i:                                      ; preds = %bb.r
  %i.cw = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !62807
  br i1 %i.cw, label %.loopexit159.i, label %.lr.ph165.i, !dbg !62807

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
  br label %.lr.ph165.split.us.i, !dbg !62809

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dd, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.dy, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 5 uses
  %i.dd = add nuw i64 %.sroa.795.0.us164.us.i, 1, !dbg !62813 ; 2 uses
  %i.de = load ptr, ptr %i.cy, align 8, !dbg !62814, !noalias !62817, !noundef !14
  %i.df = load i64, ptr %i.cz, align 8, !dbg !62826, !noalias !62817, !noundef !14
  %i.dg = icmp ult i64 %.sroa.795.0.us164.us.i, %i.df, !dbg !62827
  call void @llvm.assume(i1 %i.dg), !dbg !62830
end_hunk_8
begin_hunk_9_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.in, label %bb.ag, label %bb.aj, !dbg !63098, !prof !113

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #40
          to label %.noexc88.i unwind label %bb.ah, !dbg !63099, !noalias !62639

.noexc88.i:                                       ; preds = %bb.ag
  unreachable, !dbg !63099

bb.ah:                                            ; preds = %bb.ag
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraynEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !63100, !noalias !62639

bb.ai:                                            ; preds = %bb.ah
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63101, !noalias !62639
  unreachable, !dbg !63101

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.im, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !63102, !noalias !62639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !63103, !noalias !62639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !63104, !noalias !62639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !63104, !noalias !62639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !63104, !noalias !62639
  call void @llvm.experimental.noalias.scope.decl(metadata !63105), !dbg !63108
  call void @llvm.experimental.noalias.scope.decl(metadata !63111), !dbg !63108
  %i.iq = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !63113, !noalias !63115 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.iq, 0, !dbg !63116
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !63116

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !63117, !alias.scope !63105, !noalias !63118
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !63119, !noalias !63115

bb.am:                                            ; preds = %bb.al
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !63121, !noalias !63115

bb.an:                                            ; preds = %bb.am
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63119, !noalias !63115
  unreachable, !dbg !63119

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !63123, !noalias !62639

bb.ao:                                            ; preds = %bb.ak
  %i.it = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !63125, !noalias !62639

.noexc93.i:                                       ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !63126
  %i.iv = load i64, ptr %i.iu, align 8, !dbg !63126, !alias.scope !63111, !noalias !63115, !noundef !14
  store ptr %i.it, ptr %i.aa, align 8, !dbg !63127, !alias.scope !63105, !noalias !63118
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !63127
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !63127, !alias.scope !63105, !noalias !63118
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !63127
  store i64 %i.iv, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !63127, !alias.scope !63105, !noalias !63118
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !63127
  store i64 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !63127, !alias.scope !63105, !noalias !63118
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !63128

bb.ap:                                            ; preds = %bb.aj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !63128, !noalias !63115

bb.aq:                                            ; preds = %bb.ap
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63129, !noalias !63115
  unreachable, !dbg !63129

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !63130

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !63131, !noalias !62639
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.ik, ptr noundef nonnull %i.im, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @68, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !63132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !63130, !noalias !62639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !63130, !noalias !62639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !62793, !noalias !62639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !63133, !noalias !62639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !62717, !noalias !62639
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !63134

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.iw, %bb.ap ], [ %i.ir, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.im, ptr nonnull @68) #43
          to label %bb.as unwind label %bb.ar, !dbg !63130, !noalias !62639

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63135, !noalias !62639
  unreachable, !dbg !63135

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.il, %bb.ae ], [ %i.io, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !63130, !noalias !62639

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.iz = icmp ult i64 %.sroa.21.0.i, %i.bw, !dbg !62873
  br i1 %i.iz, label %bb.au, label %.split162.us.i, !dbg !62873, !prof !386

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.sroa.065.0160.i = phi i64 [ %i.jf, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ja = or disjoint i64 %.sroa.065.0160.i, 1, !dbg !62896 ; 2 uses
  %i.jb = shl nuw i64 %.sroa.065.0160.i, 4, !dbg !62908
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jb, !dbg !62910
  %.val82.i = load i128, ptr %i.jc, align 1, !dbg !62920, !noalias !62639
  %i.jd = call noundef i128 @llvm.bswap.i128(i128 %.val82.i), !dbg !62923
  %i.je = getelementptr [16 x i8], ptr %i.ia, i64 %.sroa.065.0160.i, !dbg !62937
  store i128 %i.jd, ptr %i.je, align 16, !dbg !62944, !noalias !62639
  %i.jf = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !62896 ; 2 uses
  %i.jg = shl nuw i64 %i.ja, 4, !dbg !62908
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jg, !dbg !62910
  %.val82.i.1 = load i128, ptr %i.jh, align 1, !dbg !62920, !noalias !62639
  %i.ji = call noundef i128 @llvm.bswap.i128(i128 %.val82.i.1), !dbg !62923
  %i.jj = getelementptr [16 x i8], ptr %i.ia, i64 %i.ja, !dbg !62937
  store i128 %i.ji, ptr %i.jj, align 16, !dbg !62944, !noalias !62639
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !62945 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !62945
  br i1 %niter.ncmp.1, label %.split.i.loopexit.unr-lcssa, label %.lr.ph.i.new, !dbg !62945

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !63136, !noalias !62639

bb.au:                                            ; preds = %bb.at
  %i.jk = lshr i64 %.sroa.21.0.i, 3, !dbg !62876
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.jk, !dbg !62879 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !62885, !noalias !62639, !noundef !14
  %i.jn = trunc i64 %.sroa.21.0.i to i8, !dbg !62887
  %i.jo = and i8 %i.jn, 7, !dbg !62887
  %i.jp = shl nuw i8 1, %i.jo, !dbg !62887
  %i.jq = xor i8 %i.jp, -1, !dbg !62890
  %i.jr = and i8 %i.jm, %i.jq, !dbg !62891
  store i8 %i.jr, ptr %i.jl, align 1, !dbg !62894, !noalias !62639
  br label %.split.i.backedge, !dbg !62895

.split.i.backedge:                                ; preds = %.epil.preheader, %.split.i.loopexit.unr-lcssa, %bb.au, %.preheader.i
  br label %.split.i, !dbg !62801

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ig, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !62793, !noalias !62639

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.qf, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !62636

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !62717, !noalias !62639

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !63134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !63134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !63134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !63134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !63134
  br label %bb.cr, !dbg !63137

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !63138
  store i64 16, ptr %i.r, align 8, !dbg !63141, !noalias !63138
  %i.jt = load i64, ptr %i.ay, align 8, !dbg !63146, !noalias !63138, !noundef !14 ; 2 uses
  %i.ju = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jt, i64 %3), !dbg !63152 ; 2 uses
  %i.jv = extractvalue { i64, i1 } %i.ju, 0, !dbg !63152 ; 3 uses
  %i.jw = extractvalue { i64, i1 } %i.ju, 1, !dbg !63152
  br i1 %i.jw, label %bb.ay, label %bb.ax, !dbg !63157, !prof !113

bb.ax:                                            ; preds = %bb.aw
  %i.jx = shl nuw i64 %3, 4, !dbg !63161          ; 7 uses
  %i.jy = icmp ugt i64 %3, 1152921504606846975, !dbg !63161
  br i1 %i.jy, label %bb.bb, label %bb.az, !dbg !63166, !prof !113

bb.ay:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !63170, !noalias !63138
  %i.ka = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !63173
  %i.kb = load <2 x i64>, ptr %i.f, align 16, !dbg !63180, !noalias !63138
  store <2 x i64> %i.kb, ptr %i.ka, align 8, !dbg !63173
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !63173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.jz, i64 56, i1 false), !dbg !63173
  store i8 42, ptr %i.am, align 8, !dbg !63173
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !63181

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !63183, !noalias !63138
  call void @llvm.experimental.noalias.scope.decl(metadata !63185), !dbg !63188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !63191, !noalias !63195
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.jv, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !63191, !noalias !63195
  %i.kc = load i64, ptr %i.c, align 8, !dbg !63191, !range !4081, !noalias !63195, !noundef !14
  %i.kd = trunc nuw i64 %i.kc to i1, !dbg !63196
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !63197
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !63197, !range !689, !noalias !63195, !noundef !14 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !63197 ; 2 uses
  br i1 %i.kd, label %bb.ba, label %bb.bd, !dbg !63196, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !63198, !noalias !63195
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kf, i64 %i.kh) #40, !dbg !63199, !noalias !63195
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !63200, !noalias !63138
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !63203
  %i.kj = load <2 x i64>, ptr %i.e, align 16, !dbg !63209, !noalias !63138
  store <2 x i64> %i.kj, ptr %i.ki, align 8, !dbg !63203
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !63203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.js, i64 56, i1 false), !dbg !63203
  store i8 42, ptr %i.am, align 8, !dbg !63203
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !63210

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !63212

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !63212

bb.bd:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.kg, align 8, !dbg !63213, !noalias !63195, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !63214, !noalias !63195
  store i64 %i.kf, ptr %i.q, align 8, !dbg !63215, !alias.scope !63185, !noalias !63138
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !63215
  store ptr %i.kl, ptr %i.km, align 8, !dbg !63215, !alias.scope !63185, !noalias !63138
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !63215
  store i64 %i.jv, ptr %i.kn, align 8, !dbg !63215, !alias.scope !63185, !noalias !63138
  %i.ko = shl nuw nsw i64 %i.jv, 4, !dbg !63216   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !63224, !noalias !63138
  store i64 %i.ko, ptr %i.p, align 8, !dbg !63224, !noalias !63138
  %i.kp = load i64, ptr %i.ay, align 8, !dbg !63225, !noalias !63138, !noundef !14 ; 5 uses
  %i.kq = mul i64 %i.kp, %i.jx, !dbg !63230       ; 2 uses
  store i64 %i.kq, ptr %i.o, align 8, !dbg !63230, !noalias !63138
  %i.kr = icmp eq i64 %i.ko, %i.kq, !dbg !63231
  br i1 %i.kr, label %bb.bf, label %bb.be, !dbg !63231, !prof !386

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !63234, !noalias !63138

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !63237, !noalias !63138
  %i.ks = call i64 @llvm.uadd.sat.i64(i64 %i.kp, i64 7), !dbg !63238
  %i.kt = lshr i64 %i.ks, 3, !dbg !63243          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !63244, !noalias !63251
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.kt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !63244, !noalias !63138

.noexc.i9:                                        ; preds = %bb.bf
  %i.ku = load i64, ptr %i.b, align 8, !dbg !63244, !range !4081, !noalias !63251, !noundef !14
  %i.kv = trunc nuw i64 %i.ku to i1, !dbg !63254
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !63255
  %i.kx = load i64, ptr %i.kw, align 8, !dbg !63255, !range !689, !noalias !63251, !noundef !14 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !63255 ; 2 uses
  br i1 %i.kv, label %bb.bg, label %bb.bi, !dbg !63254, !prof !113

bb.bg:                                            ; preds = %.noexc.i9
  %i.kz = load i64, ptr %i.ky, align 8, !dbg !63256, !noalias !63251
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kx, i64 %i.kz) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !63257, !noalias !63138

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !63257

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.la = load ptr, ptr %i.ky, align 8, !dbg !63258, !noalias !63251, !nonnull !14, !noundef !14 ; 4 uses
  %i.lb = icmp ule i64 %i.kt, %i.kx, !dbg !63259
  call void @llvm.assume(i1 %i.lb), !dbg !63261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !63263, !noalias !63251
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.la, i8 -1, i64 %i.kt, i1 false), !dbg !63264, !noalias !63251
  store i64 %i.kx, ptr %i.n, align 8, !dbg !63266, !noalias !63138
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !63266
  store ptr %i.la, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !63266, !noalias !63138
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !63266
  store i64 %i.kt, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !63266, !noalias !63138
  %i.lc = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !63266
  store i64 %i.kp, ptr %i.lc, align 8, !dbg !63266, !noalias !63138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !63267, !noalias !63138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !63269, !noalias !63138
  %i.ld = load i64, ptr %i.ay, align 8, !dbg !63272, !noalias !63138, !noundef !14
  store ptr %i.as, ptr %i.d, align 8, !dbg !63280, !noalias !63138
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !63280
  store i64 0, ptr %i.le, align 8, !dbg !63280, !noalias !63138
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !63280
  store i64 %i.ld, ptr %i.lf, align 8, !dbg !63280, !noalias !63138
  %i.lg = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !63281 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !dbg !63281, !noalias !63138, !noundef !14
  %.not.i10 = icmp eq ptr %i.lh, null, !dbg !63281
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.lg, !dbg !63284
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !63285, !noalias !63138

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !63286

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !63287, !noalias !63138
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !63288, !noalias !63138 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !63288
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !63288, !noalias !63138 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !63288
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !63288, !noalias !63138 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !63288
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !63288, !noalias !63138 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !63288
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !63288, !noalias !63138
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !63288
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !63288, !noalias !63138
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !63288
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !63288, !noalias !63138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !63293, !noalias !63138
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.lo = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !63294
  br i1 %i.lo, label %.loopexit149.i, label %.lr.ph.i71, !dbg !63294

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.lp = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  br label %bb.bl, !dbg !63294

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.lu, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.mp, %bb.bp ] ; 5 uses
  %i.lu = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !63299 ; 2 uses
  %i.lv = load ptr, ptr %i.lq, align 8, !dbg !63300, !noalias !63305, !noundef !14
  %i.lw = load i64, ptr %i.lr, align 8, !dbg !63314, !noalias !63305, !noundef !14
  %i.lx = icmp ult i64 %.sroa.786.0.us153.i, %i.lw, !dbg !63315
  call void @llvm.assume(i1 %i.lx), !dbg !63318
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %.sroa.786.0.us153.i, !dbg !63319 ; 4 uses
  %i.lz = load ptr, ptr %i.ls, align 8, !dbg !63320, !noalias !63305, !noundef !14
  %i.ma = load i64, ptr %i.lt, align 8, !dbg !63323, !noalias !63305, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !63324), !dbg !63327
  call void @llvm.experimental.noalias.scope.decl(metadata !63328), !dbg !63327
  %i.mb = load i32, ptr %i.ly, align 4, !dbg !63330, !alias.scope !63324, !noalias !63332, !noundef !14 ; 2 uses
  %i.mc = icmp ult i32 %i.mb, 13, !dbg !63330
  br i1 %i.mc, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !63330

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 8, !dbg !63333
  %i.me = load i32, ptr %i.md, align 4, !dbg !63333, !alias.scope !63324, !noalias !63332, !noundef !14
  %i.mf = zext i32 %i.me to i64, !dbg !63333      ; 2 uses
  %i.mg = icmp samesign ugt i64 %i.ma, %i.mf, !dbg !63335
  call void @llvm.assume(i1 %i.mg), !dbg !63338
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.mf, !dbg !63339
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 12, !dbg !63340
end_hunk_9
begin_hunk_10_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynnECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !63582, !noalias !63138

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63587, !noalias !63138
  unreachable, !dbg !63587

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.pb, %bb.by ], [ %i.pe, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !63582, !noalias !63138

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.pp = icmp ult i64 %.sroa.21.0.i29, %i.kp, !dbg !63363
  br i1 %i.pp, label %bb.cp, label %.split151.us.i, !dbg !63363, !prof !386

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.pq = mul i64 %.sroa.21.0.i29, %i.jx, !dbg !63386
  %i.pr = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.pq, !dbg !63387
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pr, ptr nonnull align 1 %i.oo, i64 %i.jx, i1 false), !dbg !63391, !noalias !63138
  br label %.split.i28.backedge, !dbg !63394

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !63588, !noalias !63138

bb.cp:                                            ; preds = %bb.cn
  %i.ps = lshr i64 %.sroa.21.0.i29, 3, !dbg !63366
  %i.pt = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.ps, !dbg !63369 ; 2 uses
  %i.pu = load i8, ptr %i.pt, align 1, !dbg !63375, !noalias !63138, !noundef !14
  %i.pv = trunc i64 %.sroa.21.0.i29 to i8, !dbg !63377
  %i.pw = and i8 %i.pv, 7, !dbg !63377
  %i.px = shl nuw i8 1, %i.pw, !dbg !63377
  %i.py = xor i8 %i.px, -1, !dbg !63380
  %i.pz = and i8 %i.pu, %i.py, !dbg !63381
  store i8 %i.pz, ptr %i.pt, align 1, !dbg !63384, !noalias !63138
  br label %.split.i28.backedge, !dbg !63385

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !63395

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.ow, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !63286, !noalias !63138

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.kk, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecnEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !63212, !noalias !63138

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !63586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !63586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !63586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !63586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !63586
  br label %bb.cr, !dbg !63589

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listnKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.qa = load i8, ptr %i.am, align 8, !dbg !63590, !range !41322, !noundef !14 ; 2 uses
  %i.qb = icmp eq i8 %i.qa, 42, !dbg !63590
  br i1 %i.qb, label %bb.cs, label %bb.ct, !dbg !63593

bb.cs:                                            ; preds = %bb.cr
  %i.qc = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !63594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.qc, i64 72, i1 false), !dbg !63595
  br label %bb.cx, !dbg !63596

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !63597
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !63597
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !63592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !63597
  store i8 %i.qa, ptr %i.ao, align 8, !dbg !63592
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !63592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !63592
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !63598, !noalias !63606
  %i.qd = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !63609, !noalias !63606 ; 3 uses
  %i.qe = icmp eq ptr %i.qd, null, !dbg !63610
  br i1 %i.qe, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !63611, !prof !113

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !63612

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !63612

bb.cv:                                            ; preds = %bb.cu
  %i.qf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !63613

bb.cw:                                            ; preds = %bb.cv
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !63614
  unreachable, !dbg !63614

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.qd, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !63615
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !63616
  store ptr %i.qd, ptr %i.qh, align 8, !dbg !63616
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !63616
  store ptr @85, ptr %i.qi, align 8, !dbg !63616
  store i64 18, ptr %0, align 8, !dbg !63616
  br label %bb.cx, !dbg !63596

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !63596
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynoECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !63617 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !63618
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !63618, !invariant.load !14, !nonnull !14
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !63619 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !63619 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !63619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !63620
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !63623
  %i.av = load ptr, ptr %i.au, align 8, !dbg !63623, !invariant.load !14, !nonnull !14
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !63626
  %i.aw = load i128, ptr %i.an, align 16, !dbg !63627, !noundef !14
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !63636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !63620
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !63637, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !63638
  unreachable, !dbg !63638

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !63641 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !63643

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !63644
  store i64 16, ptr %i.ak, align 8, !dbg !63647, !noalias !63644
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !63652, !noalias !63644, !noundef !14 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !63658 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !63658 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !63658
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !63663, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.be = shl nuw i64 %3, 4, !dbg !63667          ; 4 uses
  %i.bf = icmp ugt i64 %3, 1152921504606846975, !dbg !63667
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !63672, !prof !113

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !63676, !noalias !63644
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !63679
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !63686, !noalias !63644
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !63679
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !63679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !63679
  store i8 42, ptr %i.am, align 8, !dbg !63679
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !63687

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !63689, !noalias !63644
  call void @llvm.experimental.noalias.scope.decl(metadata !63691), !dbg !63694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !63697, !noalias !63704
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !63697, !noalias !63704
  %i.bj = load i64, ptr %i.v, align 8, !dbg !63697, !range !4081, !noalias !63704, !noundef !14
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !63705
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !63706
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !63706, !range !689, !noalias !63704, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !63706 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !63705, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !63707, !noalias !63704
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !63708, !noalias !63704
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !63710, !noalias !63644
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !63713
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !63719, !noalias !63644
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !63713
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !63713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !63713
  store i8 42, ptr %i.am, align 8, !dbg !63713
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !63720

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !63722

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !63722

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !63723, !noalias !63704, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !63724, !noalias !63704
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !63725, !alias.scope !63691, !noalias !63644
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !63725
  store ptr %i.bs, ptr %i.bt, align 8, !dbg !63725, !alias.scope !63691, !noalias !63644
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !63725
  store i64 %i.bc, ptr %i.bu, align 8, !dbg !63725, !alias.scope !63691, !noalias !63644
  %i.bv = shl nuw nsw i64 %i.bc, 4, !dbg !63726   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !63736, !noalias !63644
  store i64 %i.bv, ptr %i.ai, align 8, !dbg !63736, !noalias !63644
  %i.bw = load i64, ptr %i.ay, align 8, !dbg !63737, !noalias !63644, !noundef !14 ; 6 uses
  %i.bx = mul i64 %i.bw, %i.be, !dbg !63742       ; 2 uses
  store i64 %i.bx, ptr %i.ah, align 8, !dbg !63742, !noalias !63644
  %i.by = icmp eq i64 %i.bv, %i.bx, !dbg !63743
  br i1 %i.by, label %bb.m, label %bb.l, !dbg !63743, !prof !386

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !63746, !noalias !63644

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !63749, !noalias !63644
  %i.bz = call i64 @llvm.uadd.sat.i64(i64 %i.bw, i64 7), !dbg !63750
  %i.ca = lshr i64 %i.bz, 3, !dbg !63755          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !63756, !noalias !63763
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.ca, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !63756, !noalias !63644

.noexc.i:                                         ; preds = %bb.m
  %i.cb = load i64, ptr %i.u, align 8, !dbg !63756, !range !4081, !noalias !63763, !noundef !14
  %i.cc = trunc nuw i64 %i.cb to i1, !dbg !63766
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !63767
  %i.ce = load i64, ptr %i.cd, align 8, !dbg !63767, !range !689, !noalias !63763, !noundef !14 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !63767 ; 2 uses
  br i1 %i.cc, label %bb.n, label %bb.p, !dbg !63766, !prof !113

bb.n:                                             ; preds = %.noexc.i
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !63768, !noalias !63763
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ce, i64 %i.cg) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !63769, !noalias !63644

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !63769

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ch = load ptr, ptr %i.cf, align 8, !dbg !63770, !noalias !63763, !nonnull !14, !noundef !14 ; 5 uses
  %i.ci = icmp ule i64 %i.ca, %i.ce, !dbg !63771
  call void @llvm.assume(i1 %i.ci), !dbg !63773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !63775, !noalias !63763
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ch, i8 -1, i64 %i.ca, i1 false), !dbg !63776, !noalias !63763
  store i64 %i.ce, ptr %i.ag, align 8, !dbg !63778, !noalias !63644
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !63778
  store ptr %i.ch, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !63778, !noalias !63644
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !63778
  store i64 %i.ca, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !63778, !noalias !63644
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !63778
  store i64 %i.bw, ptr %i.cj, align 8, !dbg !63778, !noalias !63644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !63779, !noalias !63644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !63781, !noalias !63644
  %i.ck = load i64, ptr %i.ay, align 8, !dbg !63784, !noalias !63644, !noundef !14
  store ptr %i.as, ptr %i.w, align 8, !dbg !63792, !noalias !63644
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !63792
  store i64 0, ptr %i.cl, align 8, !dbg !63792, !noalias !63644
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !63792
  store i64 %i.ck, ptr %i.cm, align 8, !dbg !63792, !noalias !63644
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !63793 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !dbg !63793, !noalias !63644, !noundef !14
  %.not.i = icmp eq ptr %i.co, null, !dbg !63793
  %..i = select i1 %.not.i, ptr null, ptr %i.cn, !dbg !63796
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !63797, !noalias !63644

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !63798

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !63799, !noalias !63644
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !63800, !noalias !63644 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !63800
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !63800, !noalias !63644 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !63800
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !63800, !noalias !63644 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !63800
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !63800, !noalias !63644 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !63800
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !63800, !noalias !63644
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !63800
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !63800, !noalias !63644
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !63800
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !63800, !noalias !63644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !63805, !noalias !63644
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
  br label %.split.i, !dbg !63806

.split.us.i:                                      ; preds = %bb.r
  %i.cw = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !63812
  br i1 %i.cw, label %.loopexit159.i, label %.lr.ph165.i, !dbg !63812

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
  br label %.lr.ph165.split.us.i, !dbg !63814

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dd, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.dy, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 5 uses
  %i.dd = add nuw i64 %.sroa.795.0.us164.us.i, 1, !dbg !63818 ; 2 uses
  %i.de = load ptr, ptr %i.cy, align 8, !dbg !63819, !noalias !63822, !noundef !14
  %i.df = load i64, ptr %i.cz, align 8, !dbg !63831, !noalias !63822, !noundef !14
  %i.dg = icmp ult i64 %.sroa.795.0.us164.us.i, %i.df, !dbg !63832
  call void @llvm.assume(i1 %i.dg), !dbg !63835
end_hunk_10
begin_hunk_11_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynoECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.in, label %bb.ag, label %bb.aj, !dbg !64099, !prof !113

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #40
          to label %.noexc88.i unwind label %bb.ah, !dbg !64100, !noalias !63644

.noexc88.i:                                       ; preds = %bb.ag
  unreachable, !dbg !64100

bb.ah:                                            ; preds = %bb.ag
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !64101, !noalias !63644

bb.ai:                                            ; preds = %bb.ah
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64102, !noalias !63644
  unreachable, !dbg !64102

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.im, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !64103, !noalias !63644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !64104, !noalias !63644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !64105, !noalias !63644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !64105, !noalias !63644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !64105, !noalias !63644
  call void @llvm.experimental.noalias.scope.decl(metadata !64106), !dbg !64109
  call void @llvm.experimental.noalias.scope.decl(metadata !64112), !dbg !64109
  %i.iq = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !64114, !noalias !64116 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.iq, 0, !dbg !64117
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !64117

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !64118, !alias.scope !64106, !noalias !64119
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !64120, !noalias !64116

bb.am:                                            ; preds = %bb.al
  %i.ir = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !64122, !noalias !64116

bb.an:                                            ; preds = %bb.am
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64120, !noalias !64116
  unreachable, !dbg !64120

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !64124, !noalias !63644

bb.ao:                                            ; preds = %bb.ak
  %i.it = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !64126, !noalias !63644

.noexc93.i:                                       ; preds = %bb.ao
  %i.iu = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !64127
  %i.iv = load i64, ptr %i.iu, align 8, !dbg !64127, !alias.scope !64112, !noalias !64116, !noundef !14
  store ptr %i.it, ptr %i.aa, align 8, !dbg !64128, !alias.scope !64106, !noalias !64119
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !64128
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !64128, !alias.scope !64106, !noalias !64119
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !64128
  store i64 %i.iv, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !64128, !alias.scope !64106, !noalias !64119
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !64128
  store i64 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !64128, !alias.scope !64106, !noalias !64119
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !64129

bb.ap:                                            ; preds = %bb.aj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !64129, !noalias !64116

bb.aq:                                            ; preds = %bb.ap
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64130, !noalias !64116
  unreachable, !dbg !64130

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !64131

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !64132, !noalias !63644
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.ik, ptr noundef nonnull %i.im, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @73, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !64133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !64131, !noalias !63644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !64131, !noalias !63644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !63798, !noalias !63644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !64134, !noalias !63644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !63722, !noalias !63644
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64135

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.iw, %bb.ap ], [ %i.ir, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.im, ptr nonnull @73) #43
          to label %bb.as unwind label %bb.ar, !dbg !64131, !noalias !63644

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !64136, !noalias !63644
  unreachable, !dbg !64136

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.il, %bb.ae ], [ %i.io, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !64131, !noalias !63644

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.iz = icmp ult i64 %.sroa.21.0.i, %i.bw, !dbg !63878
  br i1 %i.iz, label %bb.au, label %.split162.us.i, !dbg !63878, !prof !386

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.sroa.065.0160.i = phi i64 [ %i.jf, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ja = or disjoint i64 %.sroa.065.0160.i, 1, !dbg !63901 ; 2 uses
  %i.jb = shl nuw i64 %.sroa.065.0160.i, 4, !dbg !63913
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jb, !dbg !63915
  %.val82.i = load i128, ptr %i.jc, align 1, !dbg !63925, !noalias !63644
  %i.jd = call noundef i128 @llvm.bswap.i128(i128 %.val82.i), !dbg !63928
  %i.je = getelementptr [16 x i8], ptr %i.ia, i64 %.sroa.065.0160.i, !dbg !63938
  store i128 %i.jd, ptr %i.je, align 16, !dbg !63945, !noalias !63644
  %i.jf = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !63901 ; 2 uses
  %i.jg = shl nuw i64 %i.ja, 4, !dbg !63913
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.jg, !dbg !63915
  %.val82.i.1 = load i128, ptr %i.jh, align 1, !dbg !63925, !noalias !63644
  %i.ji = call noundef i128 @llvm.bswap.i128(i128 %.val82.i.1), !dbg !63928
  %i.jj = getelementptr [16 x i8], ptr %i.ia, i64 %i.ja, !dbg !63938
  store i128 %i.ji, ptr %i.jj, align 16, !dbg !63945, !noalias !63644
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !63946 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !63946
  br i1 %niter.ncmp.1, label %.split.i.loopexit.unr-lcssa, label %.lr.ph.i.new, !dbg !63946

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !64137, !noalias !63644

bb.au:                                            ; preds = %bb.at
  %i.jk = lshr i64 %.sroa.21.0.i, 3, !dbg !63881
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.jk, !dbg !63884 ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 1, !dbg !63890, !noalias !63644, !noundef !14
  %i.jn = trunc i64 %.sroa.21.0.i to i8, !dbg !63892
  %i.jo = and i8 %i.jn, 7, !dbg !63892
  %i.jp = shl nuw i8 1, %i.jo, !dbg !63892
  %i.jq = xor i8 %i.jp, -1, !dbg !63895
  %i.jr = and i8 %i.jm, %i.jq, !dbg !63896
  store i8 %i.jr, ptr %i.jl, align 1, !dbg !63899, !noalias !63644
  br label %.split.i.backedge, !dbg !63900

.split.i.backedge:                                ; preds = %.epil.preheader, %.split.i.loopexit.unr-lcssa, %bb.au, %.preheader.i
  br label %.split.i, !dbg !63806

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ig, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !63798, !noalias !63644

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.qf, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !63641

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecoEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !63722, !noalias !63644

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !64135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !64135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !64135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !64135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !64135
  br label %bb.cr, !dbg !64138

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !64139
  store i64 16, ptr %i.r, align 8, !dbg !64142, !noalias !64139
  %i.jt = load i64, ptr %i.ay, align 8, !dbg !64147, !noalias !64139, !noundef !14 ; 2 uses
  %i.ju = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jt, i64 %3), !dbg !64153 ; 2 uses
  %i.jv = extractvalue { i64, i1 } %i.ju, 0, !dbg !64153 ; 3 uses
  %i.jw = extractvalue { i64, i1 } %i.ju, 1, !dbg !64153
  br i1 %i.jw, label %bb.ay, label %bb.ax, !dbg !64158, !prof !113

bb.ax:                                            ; preds = %bb.aw
  %i.jx = shl nuw i64 %3, 4, !dbg !64162          ; 7 uses
  %i.jy = icmp ugt i64 %3, 1152921504606846975, !dbg !64162
  br i1 %i.jy, label %bb.bb, label %bb.az, !dbg !64167, !prof !113

bb.ay:                                            ; preds = %bb.aw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.jt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !64171, !noalias !64139
  %i.ka = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64174
  %i.kb = load <2 x i64>, ptr %i.f, align 16, !dbg !64181, !noalias !64139
  store <2 x i64> %i.kb, ptr %i.ka, align 8, !dbg !64174
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.jz, i64 56, i1 false), !dbg !64174
  store i8 42, ptr %i.am, align 8, !dbg !64174
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64182

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !64184, !noalias !64139
  call void @llvm.experimental.noalias.scope.decl(metadata !64186), !dbg !64189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !64192, !noalias !64196
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.jv, i1 noundef zeroext true, i64 noundef 16, i64 noundef 16), !dbg !64192, !noalias !64196
  %i.kc = load i64, ptr %i.c, align 8, !dbg !64192, !range !4081, !noalias !64196, !noundef !14
  %i.kd = trunc nuw i64 %i.kc to i1, !dbg !64197
  %i.ke = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !64198
  %i.kf = load i64, ptr %i.ke, align 8, !dbg !64198, !range !689, !noalias !64196, !noundef !14 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !64198 ; 2 uses
  br i1 %i.kd, label %bb.ba, label %bb.bd, !dbg !64197, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !64199, !noalias !64196
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kf, i64 %i.kh) #40, !dbg !64200, !noalias !64196
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !64201, !noalias !64139
  %i.ki = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !64204
  %i.kj = load <2 x i64>, ptr %i.e, align 16, !dbg !64210, !noalias !64139
  store <2 x i64> %i.kj, ptr %i.ki, align 8, !dbg !64204
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !64204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.js, i64 56, i1 false), !dbg !64204
  store i8 42, ptr %i.am, align 8, !dbg !64204
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listoKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !64211

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !64213

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !64213

bb.bd:                                            ; preds = %bb.az
  %i.kl = load ptr, ptr %i.kg, align 8, !dbg !64214, !noalias !64196, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !64215, !noalias !64196
  store i64 %i.kf, ptr %i.q, align 8, !dbg !64216, !alias.scope !64186, !noalias !64139
  %i.km = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !64216
  store ptr %i.kl, ptr %i.km, align 8, !dbg !64216, !alias.scope !64186, !noalias !64139
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !64216
  store i64 %i.jv, ptr %i.kn, align 8, !dbg !64216, !alias.scope !64186, !noalias !64139
  %i.ko = shl nuw nsw i64 %i.jv, 4, !dbg !64217   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !64225, !noalias !64139
  store i64 %i.ko, ptr %i.p, align 8, !dbg !64225, !noalias !64139
  %i.kp = load i64, ptr %i.ay, align 8, !dbg !64226, !noalias !64139, !noundef !14 ; 5 uses
  %i.kq = mul i64 %i.kp, %i.jx, !dbg !64231       ; 2 uses
  store i64 %i.kq, ptr %i.o, align 8, !dbg !64231, !noalias !64139
  %i.kr = icmp eq i64 %i.ko, %i.kq, !dbg !64232
  br i1 %i.kr, label %bb.bf, label %bb.be, !dbg !64232, !prof !386

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !64235, !noalias !64139

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !64238, !noalias !64139
  %i.ks = call i64 @llvm.uadd.sat.i64(i64 %i.kp, i64 7), !dbg !64239
  %i.kt = lshr i64 %i.ks, 3, !dbg !64244          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !64245, !noalias !64252
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.kt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !64245, !noalias !64139

.noexc.i9:                                        ; preds = %bb.bf
  %i.ku = load i64, ptr %i.b, align 8, !dbg !64245, !range !4081, !noalias !64252, !noundef !14
  %i.kv = trunc nuw i64 %i.ku to i1, !dbg !64255
  %i.kw = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !64256
  %i.kx = load i64, ptr %i.kw, align 8, !dbg !64256, !range !689, !noalias !64252, !noundef !14 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !64256 ; 2 uses
  br i1 %i.kv, label %bb.bg, label %bb.bi, !dbg !64255, !prof !113

bb.bg:                                            ; preds = %.noexc.i9
  %i.kz = load i64, ptr %i.ky, align 8, !dbg !64257, !noalias !64252
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kx, i64 %i.kz) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !64258, !noalias !64139

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !64258

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.la = load ptr, ptr %i.ky, align 8, !dbg !64259, !noalias !64252, !nonnull !14, !noundef !14 ; 4 uses
  %i.lb = icmp ule i64 %i.kt, %i.kx, !dbg !64260
  call void @llvm.assume(i1 %i.lb), !dbg !64262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !64264, !noalias !64252
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.la, i8 -1, i64 %i.kt, i1 false), !dbg !64265, !noalias !64252
  store i64 %i.kx, ptr %i.n, align 8, !dbg !64267, !noalias !64139
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !64267
  store ptr %i.la, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !64267, !noalias !64139
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !64267
  store i64 %i.kt, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !64267, !noalias !64139
  %i.lc = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !64267
  store i64 %i.kp, ptr %i.lc, align 8, !dbg !64267, !noalias !64139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !64268, !noalias !64139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !64270, !noalias !64139
  %i.ld = load i64, ptr %i.ay, align 8, !dbg !64273, !noalias !64139, !noundef !14
  store ptr %i.as, ptr %i.d, align 8, !dbg !64281, !noalias !64139
  %i.le = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !64281
  store i64 0, ptr %i.le, align 8, !dbg !64281, !noalias !64139
  %i.lf = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !64281
  store i64 %i.ld, ptr %i.lf, align 8, !dbg !64281, !noalias !64139
  %i.lg = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !64282 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !dbg !64282, !noalias !64139, !noundef !14
  %.not.i10 = icmp eq ptr %i.lh, null, !dbg !64282
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.lg, !dbg !64285
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !64286, !noalias !64139

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !64287

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !64288, !noalias !64139
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !64289, !noalias !64139 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !64289
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !64289, !noalias !64139 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !64289
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !64289, !noalias !64139 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !64289
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !64289, !noalias !64139 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !64289
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !64289, !noalias !64139
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !64289
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !64289, !noalias !64139
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !64289
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !64289, !noalias !64139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !64294, !noalias !64139
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.lo = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !64295
  br i1 %i.lo, label %.loopexit149.i, label %.lr.ph.i71, !dbg !64295

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.lp = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 72
  br label %bb.bl, !dbg !64295

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.lu, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.mp, %bb.bp ] ; 5 uses
  %i.lu = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !64300 ; 2 uses
  %i.lv = load ptr, ptr %i.lq, align 8, !dbg !64301, !noalias !64306, !noundef !14
  %i.lw = load i64, ptr %i.lr, align 8, !dbg !64315, !noalias !64306, !noundef !14
  %i.lx = icmp ult i64 %.sroa.786.0.us153.i, %i.lw, !dbg !64316
  call void @llvm.assume(i1 %i.lx), !dbg !64319
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %.sroa.786.0.us153.i, !dbg !64320 ; 4 uses
  %i.lz = load ptr, ptr %i.ls, align 8, !dbg !64321, !noalias !64306, !noundef !14
  %i.ma = load i64, ptr %i.lt, align 8, !dbg !64324, !noalias !64306, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !64325), !dbg !64328
  call void @llvm.experimental.noalias.scope.decl(metadata !64329), !dbg !64328
  %i.mb = load i32, ptr %i.ly, align 4, !dbg !64331, !alias.scope !64325, !noalias !64333, !noundef !14 ; 2 uses
  %i.mc = icmp ult i32 %i.mb, 13, !dbg !64331
  br i1 %i.mc, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !64331

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 8, !dbg !64334
  %i.me = load i32, ptr %i.md, align 4, !dbg !64334, !alias.scope !64325, !noalias !64333, !noundef !14
  %i.mf = zext i32 %i.me to i64, !dbg !64334      ; 2 uses
  %i.mg = icmp samesign ugt i64 %i.ma, %i.mf, !dbg !64336
  call void @llvm.assume(i1 %i.mg), !dbg !64339
  %i.mh = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.mf, !dbg !64340
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 12, !dbg !64341
end_hunk_11
begin_hunk_12_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dyntECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !66610, !noalias !66166

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.ry = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66615, !noalias !66166
  unreachable, !dbg !66615

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.rl, %bb.by ], [ %i.ro, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !66610, !noalias !66166

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rz = icmp ult i64 %.sroa.21.0.i29, %i.mz, !dbg !66391
  br i1 %i.rz, label %bb.cp, label %.split151.us.i, !dbg !66391, !prof !386

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.sa = mul i64 %.sroa.21.0.i29, %i.mh, !dbg !66414
  %i.sb = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.sa, !dbg !66415
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sb, ptr nonnull align 1 %i.qy, i64 %i.mh, i1 false), !dbg !66419, !noalias !66166
  br label %.split.i28.backedge, !dbg !66422

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !66616, !noalias !66166

bb.cp:                                            ; preds = %bb.cn
  %i.sc = lshr i64 %.sroa.21.0.i29, 3, !dbg !66394
  %i.sd = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.sc, !dbg !66397 ; 2 uses
  %i.se = load i8, ptr %i.sd, align 1, !dbg !66403, !noalias !66166, !noundef !14
  %i.sf = trunc i64 %.sroa.21.0.i29 to i8, !dbg !66405
  %i.sg = and i8 %i.sf, 7, !dbg !66405
  %i.sh = shl nuw i8 1, %i.sg, !dbg !66405
  %i.si = xor i8 %i.sh, -1, !dbg !66408
  %i.sj = and i8 %i.se, %i.si, !dbg !66409
  store i8 %i.sj, ptr %i.sd, align 1, !dbg !66412, !noalias !66166
  br label %.split.i28.backedge, !dbg !66413

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !66423

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.rg, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !66314, !noalias !66166

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mu, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VectEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !66240, !noalias !66166

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !66614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !66614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !66614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !66614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !66614
  br label %bb.cr, !dbg !66617

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listtKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.sk = load i8, ptr %i.am, align 8, !dbg !66618, !range !41322, !noundef !14 ; 2 uses
  %i.sl = icmp eq i8 %i.sk, 42, !dbg !66618
  br i1 %i.sl, label %bb.cs, label %bb.ct, !dbg !66621

bb.cs:                                            ; preds = %bb.cr
  %i.sm = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sm, i64 72, i1 false), !dbg !66623
  br label %bb.cx, !dbg !66624

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !66625
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !66625
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !66620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !66625
  store i8 %i.sk, ptr %i.ao, align 8, !dbg !66620
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !66620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !66620
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !66626, !noalias !66634
  %i.sn = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !66637, !noalias !66634 ; 3 uses
  %i.so = icmp eq ptr %i.sn, null, !dbg !66638
  br i1 %i.so, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !66639, !prof !113

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !66640

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !66640

bb.cv:                                            ; preds = %bb.cu
  %i.sp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !66641

bb.cw:                                            ; preds = %bb.cv
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !66642
  unreachable, !dbg !66642

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sn, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !66643
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !66644
  store ptr %i.sn, ptr %i.sr, align 8, !dbg !66644
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !66644
  store ptr @85, ptr %i.ss, align 8, !dbg !66644
  store i64 18, ptr %0, align 8, !dbg !66644
  br label %bb.cx, !dbg !66624

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !66624
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !66645 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !66646
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !66646, !invariant.load !14, !nonnull !14
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !66647 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !66647 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !66647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !66648
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !66651
  %i.av = load ptr, ptr %i.au, align 8, !dbg !66651, !invariant.load !14, !nonnull !14
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !66654
  %i.aw = load i128, ptr %i.an, align 16, !dbg !66655, !noundef !14
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !66664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !66648
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !66665, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !66666
  unreachable, !dbg !66666

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !66669 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !66671

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !66672
  store i64 8, ptr %i.ak, align 8, !dbg !66675, !noalias !66672
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !66680, !noalias !66672, !noundef !14 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !66686 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !66686 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !66686
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !66691, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.be = shl nuw i64 %3, 3, !dbg !66695          ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !66695
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !66700, !prof !113

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !66704, !noalias !66672
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66707
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !66714, !noalias !66672
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !66707
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !66707
  store i8 42, ptr %i.am, align 8, !dbg !66707
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66715

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !66717, !noalias !66672
  call void @llvm.experimental.noalias.scope.decl(metadata !66719), !dbg !66722
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !66725, !noalias !66732
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !66725, !noalias !66732
  %i.bj = load i64, ptr %i.v, align 8, !dbg !66725, !range !4081, !noalias !66732, !noundef !14
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !66733
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !66734
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !66734, !range !689, !noalias !66732, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !66734 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !66733, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !66735, !noalias !66732
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !66736, !noalias !66732
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !66738, !noalias !66672
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !66741
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !66747, !noalias !66672
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !66741
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !66741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !66741
  store i8 42, ptr %i.am, align 8, !dbg !66741
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !66748

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !66750

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !66750

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !66751, !noalias !66732, !nonnull !14, !noundef !14 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !66752 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !66752, !noalias !66732
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !66753, !alias.scope !66719, !noalias !66672
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !66753
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !66753, !alias.scope !66719, !noalias !66672
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !66753
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !66753, !alias.scope !66719, !noalias !66672
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !66754   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !66764, !noalias !66672
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !66764, !noalias !66672
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !66765, !noalias !66672, !noundef !14 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !66770       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !66770, !noalias !66672
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !66771
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !66771, !prof !386

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !66774, !noalias !66672

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !66777, !noalias !66672
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !66778
  %i.cb = lshr i64 %i.ca, 3, !dbg !66783          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !66784, !noalias !66791
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !66784, !noalias !66672

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !66784, !range !4081, !noalias !66791, !noundef !14
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !66794
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !66795
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !66795, !range !689, !noalias !66791, !noundef !14 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !66795 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !66794, !prof !113

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !66796, !noalias !66791
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !66797, !noalias !66672

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !66797

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !66798, !noalias !66791, !nonnull !14, !noundef !14 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !66799
  call void @llvm.assume(i1 %i.cj), !dbg !66801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !66803, !noalias !66791
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !66804, !noalias !66791
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !66806, !noalias !66672
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !66806
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !66806, !noalias !66672
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !66806
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !66806, !noalias !66672
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !66806
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !66806, !noalias !66672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !66807, !noalias !66672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !66809, !noalias !66672
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !66812, !noalias !66672, !noundef !14
  store ptr %i.as, ptr %i.w, align 8, !dbg !66820, !noalias !66672
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !66820
  store i64 0, ptr %i.cm, align 8, !dbg !66820, !noalias !66672
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !66820
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !66820, !noalias !66672
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !66821 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !66821, !noalias !66672, !noundef !14
  %.not.i = icmp eq ptr %i.cp, null, !dbg !66821
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !66824
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !66825, !noalias !66672

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !66826

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !66827, !noalias !66672
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !66828, !noalias !66672 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !66828
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !66828, !noalias !66672 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !66828
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !66828, !noalias !66672 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !66828
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !66828, !noalias !66672 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !66828
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !66828, !noalias !66672
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !66828
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !66828, !noalias !66672
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !66828
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !66828, !noalias !66672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !66833, !noalias !66672
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
  %i.cw = shl nuw i64 %3, 3, !dbg !66834
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !66834

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !66840
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !66840

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !66842
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !66843

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !66842
  %i.df = add i64 %i.de, %i.bt, !dbg !66842
end_hunk_12
begin_hunk_13_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !67140, !noalias !66672

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67141, !noalias !66672
  unreachable, !dbg !67141

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !67142, !noalias !66672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !67143, !noalias !66672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !67144, !noalias !66672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !67144, !noalias !66672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !67144, !noalias !66672
  call void @llvm.experimental.noalias.scope.decl(metadata !67145), !dbg !67148
  call void @llvm.experimental.noalias.scope.decl(metadata !67151), !dbg !67148
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !67153, !noalias !67155 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !67156
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !67156

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !67157, !alias.scope !67145, !noalias !67158
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !67159, !noalias !67155

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !67161, !noalias !67155

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67159, !noalias !67155
  unreachable, !dbg !67159

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !67163, !noalias !66672

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !67165, !noalias !66672

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !67166
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !67166, !alias.scope !67151, !noalias !67155, !noundef !14
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !67167, !alias.scope !67145, !noalias !67158
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !67167
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !67167, !alias.scope !67145, !noalias !67158
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !67167
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !67167, !alias.scope !67145, !noalias !67158
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !67167
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !67167, !alias.scope !67145, !noalias !67158
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !67168

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !67168, !noalias !67155

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67169, !noalias !67155
  unreachable, !dbg !67169

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !67170

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !67171, !noalias !66672
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @67, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !67172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !67170, !noalias !66672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !67170, !noalias !66672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !66826, !noalias !66672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !67173, !noalias !66672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !66750, !noalias !66672
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67174

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @67) #43
          to label %bb.as unwind label %bb.ar, !dbg !67170, !noalias !66672

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67175, !noalias !66672
  unreachable, !dbg !67175

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !67170, !noalias !66672

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !66906
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !66906, !prof !386

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !66929 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !66941
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !66943
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !66953, !noalias !66672
  %i.kr = call noundef i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !66956
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !66969
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !66976, !noalias !66672
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !66929 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !66941
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !66943
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !66953, !noalias !66672
  %i.kw = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !66956
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !66969
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !66976, !noalias !66672
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !66929 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !66941
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !66943
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !66953, !noalias !66672
  %i.lb = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !66956
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !66969
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !66976, !noalias !66672
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !66929 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !66941
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !66943
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !66953, !noalias !66672
  %i.lg = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !66956
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !66969
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !66976, !noalias !66672
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !66977
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !66980, !llvm.loop !67176

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !67177, !noalias !66672

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !66909
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !66912 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !66918, !noalias !66672, !noundef !14
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !66920
  %i.lm = and i8 %i.ll, 7, !dbg !66920
  %i.ln = shl nuw i8 1, %i.lm, !dbg !66920
  %i.lo = xor i8 %i.ln, -1, !dbg !66923
  %i.lp = and i8 %i.lk, %i.lo, !dbg !66924
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !66927, !noalias !66672
  br label %.split.i.backedge, !dbg !66928

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !66826, !noalias !66672

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !66669

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !66750, !noalias !66672

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !67174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !67174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !67174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !67174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !67174
  br label %bb.cr, !dbg !67178

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !67179
  store i64 8, ptr %i.r, align 8, !dbg !67182, !noalias !67179
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !67187, !noalias !67179, !noundef !14 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !67193 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !67193 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !67193
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !67198, !prof !113

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl nuw i64 %3, 3, !dbg !67202          ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !67202
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !67207, !prof !113

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !67211, !noalias !67179
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67214
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !67221, !noalias !67179
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !67214
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !67214
  store i8 42, ptr %i.am, align 8, !dbg !67214
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67222

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !67224, !noalias !67179
  call void @llvm.experimental.noalias.scope.decl(metadata !67226), !dbg !67229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !67232, !noalias !67236
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !67232, !noalias !67236
  %i.ma = load i64, ptr %i.c, align 8, !dbg !67232, !range !4081, !noalias !67236, !noundef !14
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !67237
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !67238
  %i.md = load i64, ptr %i.mc, align 8, !dbg !67238, !range !689, !noalias !67236, !noundef !14 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !67238 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !67237, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !67239, !noalias !67236
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !67240, !noalias !67236
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !67241, !noalias !67179
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67244
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !67250, !noalias !67179
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !67244
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !67244
  store i8 42, ptr %i.am, align 8, !dbg !67244
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67251

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !67253

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !67253

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !67254, !noalias !67236, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !67255, !noalias !67236
  store i64 %i.md, ptr %i.q, align 8, !dbg !67256, !alias.scope !67226, !noalias !67179
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !67256
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !67256, !alias.scope !67226, !noalias !67179
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !67256
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !67256, !alias.scope !67226, !noalias !67179
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !67257   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !67265, !noalias !67179
  store i64 %i.mm, ptr %i.p, align 8, !dbg !67265, !noalias !67179
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !67266, !noalias !67179, !noundef !14 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !67271       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !67271, !noalias !67179
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !67272
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !67272, !prof !386

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !67275, !noalias !67179

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !67278, !noalias !67179
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !67279
  %i.mr = lshr i64 %i.mq, 3, !dbg !67284          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !67285, !noalias !67292
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !67285, !noalias !67179

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !67285, !range !4081, !noalias !67292, !noundef !14
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !67295
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !67296
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !67296, !range !689, !noalias !67292, !noundef !14 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !67296 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !67295, !prof !113

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !67297, !noalias !67292
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !67298, !noalias !67179

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !67298

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !67299, !noalias !67292, !nonnull !14, !noundef !14 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !67300
  call void @llvm.assume(i1 %i.mz), !dbg !67302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !67304, !noalias !67292
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !67305, !noalias !67292
  store i64 %i.mv, ptr %i.n, align 8, !dbg !67307, !noalias !67179
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !67307
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !67307, !noalias !67179
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !67307
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !67307, !noalias !67179
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !67307
  store i64 %i.mn, ptr %i.na, align 8, !dbg !67307, !noalias !67179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !67308, !noalias !67179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !67310, !noalias !67179
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !67313, !noalias !67179, !noundef !14
  store ptr %i.as, ptr %i.d, align 8, !dbg !67321, !noalias !67179
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !67321
  store i64 0, ptr %i.nc, align 8, !dbg !67321, !noalias !67179
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !67321
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !67321, !noalias !67179
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !67322 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !67322, !noalias !67179, !noundef !14
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !67322
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !67325
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !67326, !noalias !67179

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !67327

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !67328, !noalias !67179
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !67329, !noalias !67179 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !67329
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !67329, !noalias !67179 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !67329
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !67329, !noalias !67179 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !67329
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !67329, !noalias !67179 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !67329
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !67329, !noalias !67179
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !67329
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !67329, !noalias !67179
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !67329
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !67329, !noalias !67179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !67334, !noalias !67179
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !67335
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !67335

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !67335

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !67340 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !67341, !noalias !67346, !noundef !14
  %i.nu = load i64, ptr %i.np, align 8, !dbg !67355, !noalias !67346, !noundef !14
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !67356
  call void @llvm.assume(i1 %i.nv), !dbg !67359
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !67360 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !67361, !noalias !67346, !noundef !14
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !67364, !noalias !67346, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !67365), !dbg !67368
  call void @llvm.experimental.noalias.scope.decl(metadata !67369), !dbg !67368
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !67371, !alias.scope !67365, !noalias !67373, !noundef !14 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !67371
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !67371

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !67374
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !67374, !alias.scope !67365, !noalias !67373, !noundef !14
  %i.od = zext i32 %i.oc to i64, !dbg !67374      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !67376
  call void @llvm.assume(i1 %i.oe), !dbg !67379
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !67380
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !67381
end_hunk_13
begin_hunk_14_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynxECskY9G75ZWc4U_11polars_expr:bb.a
          to label %bb.cm unwind label %bb.cl, !dbg !67623, !noalias !67179

bb.cl:                                            ; preds = %bb.cq, %.thread109.i, %bb.cm, %.body81.thread.i
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67628, !noalias !67179
  unreachable, !dbg !67628

bb.cm:                                            ; preds = %.body81.thread.i, %bb.cb, %bb.by
  %.sroa.040.1.ph.i = phi i1 [ false, %.body81.thread.i ], [ true, %bb.by ], [ true, %bb.cb ]
  %.pn.ph.i58 = phi { ptr, i32 } [ %eh.lpad-body82136.i, %.body81.thread.i ], [ %i.qz, %bb.by ], [ %i.rc, %bb.cb ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.bj unwind label %bb.cl, !dbg !67623, !noalias !67179

bb.cn:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.rn = icmp ult i64 %.sroa.21.0.i29, %i.mn, !dbg !67404
  br i1 %i.rn, label %bb.cp, label %.split151.us.i, !dbg !67404, !prof !386

bb.co:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i54
  %i.ro = mul i64 %.sroa.21.0.i29, %i.lv, !dbg !67427
  %i.rp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ro, !dbg !67428
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rp, ptr nonnull align 1 %i.qm, i64 %i.lv, i1 false), !dbg !67432, !noalias !67179
  br label %.split.i28.backedge, !dbg !67435

.split151.us.i:                                   ; preds = %bb.cn, %bb.bm
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.bh unwind label %.loopexit.split-lp.i12, !dbg !67629, !noalias !67179

bb.cp:                                            ; preds = %bb.cn
  %i.rq = lshr i64 %.sroa.21.0.i29, 3, !dbg !67407
  %i.rr = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.rq, !dbg !67410 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1, !dbg !67416, !noalias !67179, !noundef !14
  %i.rt = trunc i64 %.sroa.21.0.i29 to i8, !dbg !67418
  %i.ru = and i8 %i.rt, 7, !dbg !67418
  %i.rv = shl nuw i8 1, %i.ru, !dbg !67418
  %i.rw = xor i8 %i.rv, -1, !dbg !67421
  %i.rx = and i8 %i.rs, %i.rw, !dbg !67422
  store i8 %i.rx, ptr %i.rr, align 1, !dbg !67425, !noalias !67179
  br label %.split.i28.backedge, !dbg !67426

.split.i28.backedge:                              ; preds = %bb.cp, %bb.co
  br label %.split.i28, !dbg !67436

.thread109.i:                                     ; preds = %bb.bv, %.loopexit.split-lp.i12, %.loopexit.i51, %bb.bj
  %.pn66114.i = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %i.qu, %bb.bv ], [ %lpad.loopexit.i52, %.loopexit.i51 ], [ %lpad.loopexit.split-lp.i13, %.loopexit.split-lp.i12 ] ; 2 uses
  %.sroa.041.1113.i = phi i1 [ false, %bb.bj ], [ true, %bb.bv ], [ true, %.loopexit.i51 ], [ true, %.loopexit.split-lp.i12 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %bb.bc unwind label %bb.cl, !dbg !67327, !noalias !67179

bb.cq:                                            ; preds = %.thread.i8, %bb.bc
  %.pn68108.i = phi { ptr, i32 } [ %i.mi, %.thread.i8 ], [ %.pn66114.i, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
          to label %common.resume unwind label %bb.cl, !dbg !67253, !noalias !67179

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ay, %bb.bb, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !67627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !67627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !67627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !67627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !67627
  br label %bb.cr, !dbg !67630

bb.cr:                                            ; preds = %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb1_ECskY9G75ZWc4U_11polars_expr.exit, %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listxKb0_ECskY9G75ZWc4U_11polars_expr.exit
  %i.ry = load i8, ptr %i.am, align 8, !dbg !67631, !range !41322, !noundef !14 ; 2 uses
  %i.rz = icmp eq i8 %i.ry, 42, !dbg !67631
  br i1 %i.rz, label %bb.cs, label %bb.ct, !dbg !67634

bb.cs:                                            ; preds = %bb.cr
  %i.sa = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.sa, i64 72, i1 false), !dbg !67636
  br label %bb.cx, !dbg !67637

bb.ct:                                            ; preds = %bb.cr
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !67638
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !67638
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.ao, i64 80, !dbg !67633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.67.0..sroa_idx, i64 16, i1 false), !dbg !67638
  store i8 %i.ry, ptr %i.ao, align 8, !dbg !67633
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !67633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.5.0..sroa_idx, i64 79, i1 false), !dbg !67633
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !dbg !67639, !noalias !67647
  %i.sb = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 96, i64 noundef range(i64 8, 129) 8) #41, !dbg !67650, !noalias !67647 ; 3 uses
  %i.sc = icmp eq ptr %i.sb, null, !dbg !67651
  br i1 %i.sc, label %bb.cu, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, !dbg !67652, !prof !113

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #40
          to label %.noexc unwind label %bb.cv, !dbg !67653

.noexc:                                           ; preds = %bb.cu
  unreachable, !dbg !67653

bb.cv:                                            ; preds = %bb.cu
  %i.sd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ao) #43
          to label %common.resume unwind label %bb.cw, !dbg !67654

bb.cw:                                            ; preds = %bb.cv
  %i.se = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !67655
  unreachable, !dbg !67655

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.sb, ptr noundef nonnull align 8 dereferenceable(96) %i.ao, i64 96, i1 false), !dbg !67656
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !67657
  store ptr %i.sb, ptr %i.sf, align 8, !dbg !67657
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !67657
  store ptr @85, ptr %i.sg, align 8, !dbg !67657
  store i64 18, ptr %0, align 8, !dbg !67657
  br label %bb.cx, !dbg !67637

bb.cx:                                            ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayE3newCskY9G75ZWc4U_11polars_expr.exit, %bb.cs
  ret void, !dbg !67637
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynyECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !67658 {
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
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !67659
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !67659, !invariant.load !14, !nonnull !14
  %i.ar = tail call { ptr, ptr } %i.aq(ptr noundef nonnull %1) #46, !dbg !67660 ; 2 uses
  %i.as = extractvalue { ptr, ptr } %i.ar, 0, !dbg !67660 ; 7 uses
  %i.at = extractvalue { ptr, ptr } %i.ar, 1, !dbg !67660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !67661
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24, !dbg !67664
  %i.av = load ptr, ptr %i.au, align 8, !dbg !67664, !invariant.load !14, !nonnull !14
  call void %i.av(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.an, ptr noundef %i.as) #46, !dbg !67667
  %i.aw = load i128, ptr %i.an, align 16, !dbg !67668, !noundef !14
  %i.ax = icmp eq i128 %i.aw, 1083738700316307889227436073899895373, !dbg !67677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !67661
  br i1 %i.ax, label %bb.c, label %bb.b, !dbg !67678, !prof !386

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #45, !dbg !67679
  unreachable, !dbg !67679

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 48, !dbg !67682 ; 8 uses
  br i1 %4, label %bb.aw, label %bb.d, !dbg !67684

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %3, ptr %i.al, align 8, !noalias !67685
  store i64 8, ptr %i.ak, align 8, !dbg !67688, !noalias !67685
  %i.ba = load i64, ptr %i.ay, align 8, !dbg !67693, !noalias !67685, !noundef !14 ; 2 uses
  %i.bb = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ba, i64 %3), !dbg !67699 ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 0, !dbg !67699 ; 3 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 1, !dbg !67699
  br i1 %i.bd, label %bb.f, label %bb.e, !dbg !67704, !prof !113

bb.e:                                             ; preds = %bb.d
  %i.be = shl nuw i64 %3, 3, !dbg !67708          ; 4 uses
  %i.bf = icmp ugt i64 %3, 2305843009213693951, !dbg !67708
  br i1 %i.bf, label %bb.i, label %bb.g, !dbg !67713, !prof !113

bb.f:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.y, i64 %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !67717, !noalias !67685
  %i.bh = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67720
  %i.bi = load <2 x i64>, ptr %i.y, align 16, !dbg !67727, !noalias !67685
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !dbg !67720
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.354.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.bg, i64 56, i1 false), !dbg !67720
  store i8 42, ptr %i.am, align 8, !dbg !67720
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67728

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !67730, !noalias !67685
  call void @llvm.experimental.noalias.scope.decl(metadata !67732), !dbg !67735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !67738, !noalias !67745
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %i.bc, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !67738, !noalias !67745
  %i.bj = load i64, ptr %i.v, align 8, !dbg !67738, !range !4081, !noalias !67745, !noundef !14
  %i.bk = trunc nuw i64 %i.bj to i1, !dbg !67746
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !67747
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !67747, !range !689, !noalias !67745, !noundef !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !67747 ; 2 uses
  br i1 %i.bk, label %bb.h, label %bb.k, !dbg !67746, !prof !113

bb.h:                                             ; preds = %bb.g
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !67748, !noalias !67745
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bm, i64 %i.bo) #40, !dbg !67749, !noalias !67745
  unreachable

bb.i:                                             ; preds = %bb.e
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al) #46, !dbg !67751, !noalias !67685
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !67754
  %i.bq = load <2 x i64>, ptr %i.x, align 16, !dbg !67760, !noalias !67685
  store <2 x i64> %i.bq, ptr %i.bp, align 8, !dbg !67754
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !67754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.363.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.az, i64 56, i1 false), !dbg !67754
  store i8 42, ptr %i.am, align 8, !dbg !67754
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !67761

bb.j:                                             ; preds = %.thread118.i
  br i1 %.sroa.046.1122.i, label %bb.av, label %common.resume, !dbg !67763

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.av, !dbg !67763

bb.k:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.bn, align 8, !dbg !67764, !noalias !67745, !nonnull !14, !noundef !14 ; 4 uses
  %i.bt = ptrtoaddr ptr %i.bs to i64, !dbg !67765 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !67765, !noalias !67745
  store i64 %i.bm, ptr %i.aj, align 8, !dbg !67766, !alias.scope !67732, !noalias !67685
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !67766
  store ptr %i.bs, ptr %i.bu, align 8, !dbg !67766, !alias.scope !67732, !noalias !67685
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !67766
  store i64 %i.bc, ptr %i.bv, align 8, !dbg !67766, !alias.scope !67732, !noalias !67685
  %i.bw = shl nuw nsw i64 %i.bc, 3, !dbg !67767   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !67777, !noalias !67685
  store i64 %i.bw, ptr %i.ai, align 8, !dbg !67777, !noalias !67685
  %i.bx = load i64, ptr %i.ay, align 8, !dbg !67778, !noalias !67685, !noundef !14 ; 6 uses
  %i.by = mul i64 %i.bx, %i.be, !dbg !67783       ; 2 uses
  store i64 %i.by, ptr %i.ah, align 8, !dbg !67783, !noalias !67685
  %i.bz = icmp eq i64 %i.bw, %i.by, !dbg !67784
  br i1 %i.bz, label %bb.m, label %bb.l, !dbg !67784, !prof !386

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.o unwind label %.thread.i, !dbg !67787, !noalias !67685

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !67790, !noalias !67685
  %i.ca = call i64 @llvm.uadd.sat.i64(i64 %i.bx, i64 7), !dbg !67791
  %i.cb = lshr i64 %i.ca, 3, !dbg !67796          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !67797, !noalias !67804
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.thread.i, !dbg !67797, !noalias !67685

.noexc.i:                                         ; preds = %bb.m
  %i.cc = load i64, ptr %i.u, align 8, !dbg !67797, !range !4081, !noalias !67804, !noundef !14
  %i.cd = trunc nuw i64 %i.cc to i1, !dbg !67807
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !67808
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !67808, !range !689, !noalias !67804, !noundef !14 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !67808 ; 2 uses
  br i1 %i.cd, label %bb.n, label %bb.p, !dbg !67807, !prof !113

bb.n:                                             ; preds = %.noexc.i
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !67809, !noalias !67804
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.cf, i64 %i.ch) #40
          to label %.noexc83.i unwind label %.thread.i, !dbg !67810, !noalias !67685

.noexc83.i:                                       ; preds = %bb.n
  unreachable, !dbg !67810

bb.o:                                             ; preds = %.split162.us.i, %bb.l
  unreachable

bb.p:                                             ; preds = %.noexc.i
  %i.ci = load ptr, ptr %i.cg, align 8, !dbg !67811, !noalias !67804, !nonnull !14, !noundef !14 ; 5 uses
  %i.cj = icmp ule i64 %i.cb, %i.cf, !dbg !67812
  call void @llvm.assume(i1 %i.cj), !dbg !67814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !67816, !noalias !67804
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 -1, i64 %i.cb, i1 false), !dbg !67817, !noalias !67804
  store i64 %i.cf, ptr %i.ag, align 8, !dbg !67819, !noalias !67685
  %.sroa.4108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !67819
  store ptr %i.ci, ptr %.sroa.4108.0..sroa_idx.i, align 8, !dbg !67819, !noalias !67685
  %.sroa.5109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !67819
  store i64 %i.cb, ptr %.sroa.5109.0..sroa_idx.i, align 8, !dbg !67819, !noalias !67685
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !67819
  store i64 %i.bx, ptr %i.ck, align 8, !dbg !67819, !noalias !67685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !67820, !noalias !67685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !67822, !noalias !67685
  %i.cl = load i64, ptr %i.ay, align 8, !dbg !67825, !noalias !67685, !noundef !14
  store ptr %i.as, ptr %i.w, align 8, !dbg !67833, !noalias !67685
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !67833
  store i64 0, ptr %i.cm, align 8, !dbg !67833, !noalias !67685
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !67833
  store i64 %i.cl, ptr %i.cn, align 8, !dbg !67833, !noalias !67685
  %i.co = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !67834 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !67834, !noalias !67685, !noundef !14
  %.not.i = icmp eq ptr %i.cp, null, !dbg !67834
  %..i = select i1 %.not.i, ptr null, ptr %i.co, !dbg !67837
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.w, ptr noundef align 8 %..i)
          to label %bb.r unwind label %.loopexit.split-lp.i, !dbg !67838, !noalias !67685

bb.q:                                             ; preds = %bb.as
  br i1 %.sroa.045.1.ph.i, label %.thread118.i, label %common.resume, !dbg !67839

.loopexit158.i:                                   ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

.loopexit.split-lp.i:                             ; preds = %.split162.us.i, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread118.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !67840, !noalias !67685
  %.sroa.033.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !dbg !67841, !noalias !67685 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !67841
  %.sroa.033.sroa.2.0.copyload.i = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i, align 8, !dbg !67841, !noalias !67685 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !67841
  %.sroa.033.sroa.3.0.copyload.i = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i, align 8, !dbg !67841, !noalias !67685 ; 5 uses
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !67841
  %.sroa.033.sroa.4.0.copyload.i = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 8, !dbg !67841, !noalias !67685 ; 4 uses
  %.sroa.033.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !67841
  %.sroa.033.sroa.6.0.copyload.i = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i, align 8, !dbg !67841, !noalias !67685
  %.sroa.033.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !67841
  %.sroa.033.sroa.7.0.copyload.i = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i, align 8, !dbg !67841, !noalias !67685
  %.sroa.033.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 56, !dbg !67841
  %.sroa.033.sroa.8.0.copyload.i = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i, align 8, !dbg !67841, !noalias !67685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !67846, !noalias !67685
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
  %i.cw = shl nuw i64 %3, 3, !dbg !67847
  %min.iters.check = icmp ult i64 %3, 4
  %n.vec = and i64 %3, 2305843009213693948        ; 3 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.split.i, !dbg !67847

.split.us.i:                                      ; preds = %bb.r
  %i.cx = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i, %.sroa.033.sroa.4.0.copyload.i, !dbg !67853
  br i1 %i.cx, label %.loopexit159.i, label %.lr.ph165.i, !dbg !67853

.lr.ph165.i:                                      ; preds = %.split.us.i
  %i.cy = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i to ptr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 72 ; 2 uses
  br i1 %.not166.i, label %.lr.ph165.split.i, label %.lr.ph165.split.us.i.preheader

.lr.ph165.split.us.i.preheader:                   ; preds = %.lr.ph165.i
  %i.dd = shl nuw i64 %3, 3, !dbg !67855
  %min.iters.check121 = icmp ult i64 %3, 4
  %n.vec123 = and i64 %3, 2305843009213693948     ; 3 uses
  %cmp.n130 = icmp eq i64 %3, %n.vec123
  %xtraiter137 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br label %.lr.ph165.split.us.i, !dbg !67856

.lr.ph165.split.us.i:                             ; preds = %.lr.ph165.split.us.i.preheader, %..loopexit_crit_edge.us.us.i
  %.sroa.795.0.us164.us.i = phi i64 [ %i.dg, %..loopexit_crit_edge.us.us.i ], [ %.sroa.033.sroa.3.0.copyload.i, %.lr.ph165.split.us.i.preheader ] ; 3 uses
  %.sroa.21.0.us163.us.i = phi i64 [ %i.eb, %..loopexit_crit_edge.us.us.i ], [ 0, %.lr.ph165.split.us.i.preheader ] ; 6 uses
  %i.de = mul i64 %i.dd, %.sroa.21.0.us163.us.i, !dbg !67855
  %i.df = add i64 %i.de, %i.bt, !dbg !67855
end_hunk_14
begin_hunk_15_@_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30binview_to_fixed_size_list_dynyECskY9G75ZWc4U_11polars_expr:bb.a
bb.ah:                                            ; preds = %bb.ag
  %i.kc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayyEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ac) #43
          to label %bb.as unwind label %bb.ai, !dbg !68150, !noalias !67685

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !68151, !noalias !67685
  unreachable, !dbg !68151

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ka, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false), !dbg !68152, !noalias !67685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !68153, !noalias !67685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !68154, !noalias !67685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !68154, !noalias !67685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !dbg !68154, !noalias !67685
  call void @llvm.experimental.noalias.scope.decl(metadata !68155), !dbg !68158
  call void @llvm.experimental.noalias.scope.decl(metadata !68161), !dbg !68158
  %i.ke = invoke noundef i64 @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10unset_bits(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %bb.ak unwind label %bb.ap, !dbg !68163, !noalias !68165 ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i = icmp eq i64 %i.ke, 0, !dbg !68166
  br i1 %.not.i.i, label %bb.al, label %bb.ao, !dbg !68166

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %i.aa, align 8, !dbg !68167, !alias.scope !68155, !noalias !68168
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i unwind label %bb.am, !dbg !68169, !noalias !68165

bb.am:                                            ; preds = %bb.al
  %i.kf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.body90.thread.i unwind label %bb.an, !dbg !68171, !noalias !68165

bb.an:                                            ; preds = %bb.am
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !68169, !noalias !68165
  unreachable, !dbg !68169

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i unwind label %.body90.thread147.i, !dbg !68173, !noalias !67685

bb.ao:                                            ; preds = %bb.ak
  %i.kh = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ag)
          to label %.noexc93.i unwind label %.body90.thread147.i, !dbg !68175, !noalias !67685

.noexc93.i:                                       ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !68176
  %i.kj = load i64, ptr %i.ki, align 8, !dbg !68176, !alias.scope !68161, !noalias !68165, !noundef !14
  store ptr %i.kh, ptr %i.aa, align 8, !dbg !68177, !alias.scope !68155, !noalias !68168
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !68177
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !dbg !68177, !alias.scope !68155, !noalias !68168
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !68177
  store i64 %i.kj, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !dbg !68177, !alias.scope !68155, !noalias !68168
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24, !dbg !68177
  store i64 %i.ke, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !68177, !alias.scope !68155, !noalias !68168
  br label %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i, !dbg !68178

bb.ap:                                            ; preds = %bb.aj
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z) #43
          to label %.body90.thread.i unwind label %bb.aq, !dbg !68178, !noalias !68165

bb.aq:                                            ; preds = %bb.ap
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !68179, !noalias !68165
  unreachable, !dbg !68179

.body90.thread147.i:                              ; preds = %bb.ao, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body90.thread.i, !dbg !68180

_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i: ; preds = %.noexc93.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !68181, !noalias !67685
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_listNtB2_18FixedSizeListArray7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ae, i64 noundef %i.jy, ptr noundef nonnull %i.ka, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) @72, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.aa), !dbg !68182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !68180, !noalias !67685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !68180, !noalias !67685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !67839, !noalias !67685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !68183, !noalias !67685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !67763, !noalias !67685
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !68184

.body90.thread.i:                                 ; preds = %.body90.thread147.i, %bb.ap, %bb.am
  %eh.lpad-body91145.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body90.thread147.i ], [ %i.kk, %bb.ap ], [ %i.kf, %bb.am ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr nonnull %i.ka, ptr nonnull @72) #43
          to label %bb.as unwind label %bb.ar, !dbg !68180, !noalias !67685

bb.ar:                                            ; preds = %bb.av, %.thread118.i, %bb.as, %.body90.thread.i
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !68185, !noalias !67685
  unreachable, !dbg !68185

bb.as:                                            ; preds = %.body90.thread.i, %bb.ah, %bb.ae
  %.sroa.045.1.ph.i = phi i1 [ false, %.body90.thread.i ], [ true, %bb.ae ], [ true, %bb.ah ]
  %.pn.ph.i = phi { ptr, i32 } [ %eh.lpad-body91145.i, %.body90.thread.i ], [ %i.jz, %bb.ae ], [ %i.kc, %bb.ah ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #43
          to label %bb.q unwind label %bb.ar, !dbg !68180, !noalias !67685

bb.at:                                            ; preds = %_RNvXs5_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread12.i.i
  %i.kn = icmp ult i64 %.sroa.21.0.i, %i.bx, !dbg !67919
  br i1 %i.kn, label %bb.au, label %.split162.us.i, !dbg !67919, !prof !386

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.065.0160.i = phi i64 [ %i.ld, %scalar.ph ], [ %.sroa.065.0160.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ko = add nuw nsw i64 %.sroa.065.0160.i, 1, !dbg !67942 ; 2 uses
  %i.kp = shl nuw i64 %.sroa.065.0160.i, 3, !dbg !67954
  %i.kq = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kp, !dbg !67956
  %.val82.i = load i64, ptr %i.kq, align 1, !dbg !67966, !noalias !67685
  %i.kr = call noundef i64 @llvm.bswap.i64(i64 %.val82.i), !dbg !67969
  %i.ks = getelementptr [8 x i8], ptr %i.iy, i64 %.sroa.065.0160.i, !dbg !67979
  store i64 %i.kr, ptr %i.ks, align 8, !dbg !67986, !noalias !67685
  %i.kt = add nuw nsw i64 %.sroa.065.0160.i, 2, !dbg !67942 ; 2 uses
  %i.ku = shl nuw i64 %i.ko, 3, !dbg !67954
  %i.kv = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.ku, !dbg !67956
  %.val82.i.1 = load i64, ptr %i.kv, align 1, !dbg !67966, !noalias !67685
  %i.kw = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.1), !dbg !67969
  %i.kx = getelementptr [8 x i8], ptr %i.iy, i64 %i.ko, !dbg !67979
  store i64 %i.kw, ptr %i.kx, align 8, !dbg !67986, !noalias !67685
  %i.ky = add nuw nsw i64 %.sroa.065.0160.i, 3, !dbg !67942 ; 2 uses
  %i.kz = shl nuw i64 %i.kt, 3, !dbg !67954
  %i.la = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.kz, !dbg !67956
  %.val82.i.2 = load i64, ptr %i.la, align 1, !dbg !67966, !noalias !67685
  %i.lb = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.2), !dbg !67969
  %i.lc = getelementptr [8 x i8], ptr %i.iy, i64 %i.kt, !dbg !67979
  store i64 %i.lb, ptr %i.lc, align 8, !dbg !67986, !noalias !67685
  %i.ld = add nuw nsw i64 %.sroa.065.0160.i, 4, !dbg !67942 ; 2 uses
  %i.le = shl nuw i64 %i.ky, 3, !dbg !67954
  %i.lf = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.le, !dbg !67956
  %.val82.i.3 = load i64, ptr %i.lf, align 1, !dbg !67966, !noalias !67685
  %i.lg = call noundef i64 @llvm.bswap.i64(i64 %.val82.i.3), !dbg !67969
  %i.lh = getelementptr [8 x i8], ptr %i.iy, i64 %i.ky, !dbg !67979
  store i64 %i.lg, ptr %i.lh, align 8, !dbg !67986, !noalias !67685
  %exitcond.not.i.3 = icmp eq i64 %i.ld, %3, !dbg !67987
  br i1 %exitcond.not.i.3, label %.split.i.backedge, label %scalar.ph, !dbg !67990, !llvm.loop !68186

.split162.us.i:                                   ; preds = %bb.at, %bb.s, %bb.u
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #40
          to label %bb.o unwind label %.loopexit.split-lp.i, !dbg !68187, !noalias !67685

bb.au:                                            ; preds = %bb.at
  %i.li = lshr i64 %.sroa.21.0.i, 3, !dbg !67922
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.li, !dbg !67925 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !dbg !67931, !noalias !67685, !noundef !14
  %i.ll = trunc i64 %.sroa.21.0.i to i8, !dbg !67933
  %i.lm = and i8 %i.ll, 7, !dbg !67933
  %i.ln = shl nuw i8 1, %i.lm, !dbg !67933
  %i.lo = xor i8 %i.ln, -1, !dbg !67936
  %i.lp = and i8 %i.lk, %i.lo, !dbg !67937
  store i8 %i.lp, ptr %i.lj, align 1, !dbg !67940, !noalias !67685
  br label %.split.i.backedge, !dbg !67941

.thread118.i:                                     ; preds = %bb.ab, %.loopexit.split-lp.i, %.loopexit158.i, %bb.q
  %.pn72123.i = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %i.ju, %bb.ab ], [ %lpad.loopexit.i, %.loopexit158.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.046.1122.i = phi i1 [ false, %bb.q ], [ true, %bb.ab ], [ true, %.loopexit158.i ], [ true, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.ag) #43
          to label %bb.j unwind label %bb.ar, !dbg !67839, !noalias !67685

common.resume:                                    ; preds = %bb.cv, %bb.bc, %bb.bj, %bb.cq, %bb.j, %bb.q, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %.pn.ph.i58, %bb.bj ], [ %.pn.ph.i, %bb.q ], [ %.pn74117.i, %bb.av ], [ %.pn72123.i, %bb.j ], [ %.pn68108.i, %bb.cq ], [ %.pn66114.i, %bb.bc ], [ %i.sd, %bb.cv ]
  resume { ptr, i32 } %common.resume.op, !dbg !67682

bb.av:                                            ; preds = %.thread.i, %bb.j
  %.pn74117.i = phi { ptr, i32 } [ %i.br, %.thread.i ], [ %.pn72123.i, %bb.j ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecyEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #43
          to label %common.resume unwind label %bb.ar, !dbg !67763, !noalias !67685

_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb0_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.f, %bb.i, %_RNvXs2_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB7_9immutable6BitmapEINtNtBV_7convert4FromNtB5_13MutableBitmapE4from.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !68184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !68184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !68184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !68184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !68184
  br label %bb.cr, !dbg !68188

bb.aw:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.lq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %3, ptr %i.s, align 8, !noalias !68189
  store i64 8, ptr %i.r, align 8, !dbg !68192, !noalias !68189
  %i.lr = load i64, ptr %i.ay, align 8, !dbg !68197, !noalias !68189, !noundef !14 ; 2 uses
  %i.ls = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.lr, i64 %3), !dbg !68203 ; 2 uses
  %i.lt = extractvalue { i64, i1 } %i.ls, 0, !dbg !68203 ; 3 uses
  %i.lu = extractvalue { i64, i1 } %i.ls, 1, !dbg !68203
  br i1 %i.lu, label %bb.ay, label %bb.ax, !dbg !68208, !prof !113

bb.ax:                                            ; preds = %bb.aw
  %i.lv = shl nuw i64 %3, 3, !dbg !68212          ; 7 uses
  %i.lw = icmp ugt i64 %3, 2305843009213693951, !dbg !68212
  br i1 %i.lw, label %bb.bb, label %bb.az, !dbg !68217, !prof !113

bb.ay:                                            ; preds = %bb.aw
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_E0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.f, i64 %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !68221, !noalias !68189
  %i.ly = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !68224
  %i.lz = load <2 x i64>, ptr %i.f, align 16, !dbg !68231, !noalias !68189
  store <2 x i64> %i.lz, ptr %i.ly, align 8, !dbg !68224
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !68224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.349.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lx, i64 56, i1 false), !dbg !68224
  store i8 42, ptr %i.am, align 8, !dbg !68224
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !68232

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !68234, !noalias !68189
  call void @llvm.experimental.noalias.scope.decl(metadata !68236), !dbg !68239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !68242, !noalias !68246
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.lt, i1 noundef zeroext true, i64 noundef 8, i64 noundef 8), !dbg !68242, !noalias !68246
  %i.ma = load i64, ptr %i.c, align 8, !dbg !68242, !range !4081, !noalias !68246, !noundef !14
  %i.mb = trunc nuw i64 %i.ma to i1, !dbg !68247
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !68248
  %i.md = load i64, ptr %i.mc, align 8, !dbg !68248, !range !689, !noalias !68246, !noundef !14 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !68248 ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.bd, !dbg !68247, !prof !113

bb.ba:                                            ; preds = %bb.az
  %i.mf = load i64, ptr %i.me, align 8, !dbg !68249, !noalias !68246
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #40, !dbg !68250, !noalias !68246
  unreachable

bb.bb:                                            ; preds = %bb.ax
  call fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_Es_0CskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #46, !dbg !68251, !noalias !68189
  %i.mg = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !68254
  %i.mh = load <2 x i64>, ptr %i.e, align 16, !dbg !68260, !noalias !68189
  store <2 x i64> %i.mh, ptr %i.mg, align 8, !dbg !68254
  %.sroa.358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !68254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.358.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(56) %i.lq, i64 56, i1 false), !dbg !68254
  store i8 42, ptr %i.am, align 8, !dbg !68254
  br label %_RINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listyKb1_ECskY9G75ZWc4U_11polars_expr.exit, !dbg !68261

bb.bc:                                            ; preds = %.thread109.i
  br i1 %.sroa.041.1113.i, label %bb.cq, label %common.resume, !dbg !68263

.thread.i8:                                       ; preds = %bb.bg, %bb.bf, %bb.be
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq, !dbg !68263

bb.bd:                                            ; preds = %bb.az
  %i.mj = load ptr, ptr %i.me, align 8, !dbg !68264, !noalias !68246, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !68265, !noalias !68246
  store i64 %i.md, ptr %i.q, align 8, !dbg !68266, !alias.scope !68236, !noalias !68189
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !68266
  store ptr %i.mj, ptr %i.mk, align 8, !dbg !68266, !alias.scope !68236, !noalias !68189
  %i.ml = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !68266
  store i64 %i.lt, ptr %i.ml, align 8, !dbg !68266, !alias.scope !68236, !noalias !68189
  %i.mm = shl nuw nsw i64 %i.lt, 3, !dbg !68267   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !68275, !noalias !68189
  store i64 %i.mm, ptr %i.p, align 8, !dbg !68275, !noalias !68189
  %i.mn = load i64, ptr %i.ay, align 8, !dbg !68276, !noalias !68189, !noundef !14 ; 5 uses
  %i.mo = mul i64 %i.mn, %i.lv, !dbg !68281       ; 2 uses
  store i64 %i.mo, ptr %i.o, align 8, !dbg !68281, !noalias !68189
  %i.mp = icmp eq i64 %i.mm, %i.mo, !dbg !68282
  br i1 %i.mp, label %bb.bf, label %bb.be, !dbg !68282, !prof !386

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #40
          to label %bb.bh unwind label %.thread.i8, !dbg !68285, !noalias !68189

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !68288, !noalias !68189
  %i.mq = call i64 @llvm.uadd.sat.i64(i64 %i.mn, i64 7), !dbg !68289
  %i.mr = lshr i64 %i.mq, 3, !dbg !68294          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !68295, !noalias !68302
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.mr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i9 unwind label %.thread.i8, !dbg !68295, !noalias !68189

.noexc.i9:                                        ; preds = %bb.bf
  %i.ms = load i64, ptr %i.b, align 8, !dbg !68295, !range !4081, !noalias !68302, !noundef !14
  %i.mt = trunc nuw i64 %i.ms to i1, !dbg !68305
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !68306
  %i.mv = load i64, ptr %i.mu, align 8, !dbg !68306, !range !689, !noalias !68302, !noundef !14 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !68306 ; 2 uses
  br i1 %i.mt, label %bb.bg, label %bb.bi, !dbg !68305, !prof !113

bb.bg:                                            ; preds = %.noexc.i9
  %i.mx = load i64, ptr %i.mw, align 8, !dbg !68307, !noalias !68302
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.mv, i64 %i.mx) #40
          to label %.noexc74.i unwind label %.thread.i8, !dbg !68308, !noalias !68189

.noexc74.i:                                       ; preds = %bb.bg
  unreachable, !dbg !68308

bb.bh:                                            ; preds = %.split151.us.i, %bb.be
  unreachable

bb.bi:                                            ; preds = %.noexc.i9
  %i.my = load ptr, ptr %i.mw, align 8, !dbg !68309, !noalias !68302, !nonnull !14, !noundef !14 ; 4 uses
  %i.mz = icmp ule i64 %i.mr, %i.mv, !dbg !68310
  call void @llvm.assume(i1 %i.mz), !dbg !68312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !68314, !noalias !68302
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.my, i8 -1, i64 %i.mr, i1 false), !dbg !68315, !noalias !68302
  store i64 %i.mv, ptr %i.n, align 8, !dbg !68317, !noalias !68189
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !68317
  store ptr %i.my, ptr %.sroa.499.0..sroa_idx.i, align 8, !dbg !68317, !noalias !68189
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !68317
  store i64 %i.mr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !68317, !noalias !68189
  %i.na = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !68317
  store i64 %i.mn, ptr %i.na, align 8, !dbg !68317, !noalias !68189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !68318, !noalias !68189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !68320, !noalias !68189
  %i.nb = load i64, ptr %i.ay, align 8, !dbg !68323, !noalias !68189, !noundef !14
  store ptr %i.as, ptr %i.d, align 8, !dbg !68331, !noalias !68189
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !68331
  store i64 0, ptr %i.nc, align 8, !dbg !68331, !noalias !68189
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !68331
  store i64 %i.nb, ptr %i.nd, align 8, !dbg !68331, !noalias !68189
  %i.ne = getelementptr inbounds nuw i8, ptr %i.as, i64 80, !dbg !68332 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !dbg !68332, !noalias !68189, !noundef !14
  %.not.i10 = icmp eq ptr %i.nf, null, !dbg !68332
  %..i11 = select i1 %.not.i10, ptr null, ptr %i.ne, !dbg !68335
  invoke void @_RNvMs4_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils12zip_validityINtB5_11ZipValidityRShINtNtNtBb_5array8iterator15ArrayValuesIterINtNtB1v_7binview22BinaryViewArrayGenericB1o_EENtNtB7_8iterator10BitmapIterE17new_with_validityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef align 8 %..i11)
          to label %bb.bk unwind label %.loopexit.split-lp.i12, !dbg !68336, !noalias !68189

bb.bj:                                            ; preds = %bb.cm
  br i1 %.sroa.040.1.ph.i, label %.thread109.i, label %common.resume, !dbg !68337

.loopexit.i51:                                    ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i.i.i.i45
  %lpad.loopexit.i52 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

.loopexit.split-lp.i12:                           ; preds = %.split151.us.i, %bb.bi
  %lpad.loopexit.split-lp.i13 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109.i

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !68338, !noalias !68189
  %.sroa.033.sroa.0.0.copyload.i14 = load ptr, ptr %i.m, align 8, !dbg !68339, !noalias !68189 ; 5 uses
  %.sroa.033.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !68339
  %.sroa.033.sroa.2.0.copyload.i16 = load i64, ptr %.sroa.033.sroa.2.0..sroa_idx.i15, align 8, !dbg !68339, !noalias !68189 ; 2 uses
  %.sroa.033.sroa.3.0..sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !68339
  %.sroa.033.sroa.3.0.copyload.i18 = load i64, ptr %.sroa.033.sroa.3.0..sroa_idx.i17, align 8, !dbg !68339, !noalias !68189 ; 4 uses
  %.sroa.033.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !68339
  %.sroa.033.sroa.4.0.copyload.i20 = load i64, ptr %.sroa.033.sroa.4.0..sroa_idx.i19, align 8, !dbg !68339, !noalias !68189 ; 3 uses
  %.sroa.033.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !68339
  %.sroa.033.sroa.6.0.copyload.i22 = load i64, ptr %.sroa.033.sroa.6.0..sroa_idx.i21, align 8, !dbg !68339, !noalias !68189
  %.sroa.033.sroa.7.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !68339
  %.sroa.033.sroa.7.0.copyload.i24 = load i64, ptr %.sroa.033.sroa.7.0..sroa_idx.i23, align 8, !dbg !68339, !noalias !68189
  %.sroa.033.sroa.8.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !68339
  %.sroa.033.sroa.8.0.copyload.i26 = load i64, ptr %.sroa.033.sroa.8.0..sroa_idx.i25, align 8, !dbg !68339, !noalias !68189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !68344, !noalias !68189
  %.not.i.i.i27 = icmp eq ptr %.sroa.033.sroa.0.0.copyload.i14, null
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 40
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 48
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 64
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.033.sroa.0.0.copyload.i14, i64 72
  %i.nk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i.i.i27, label %.split.us.i70, label %.split.i28

.split.us.i70:                                    ; preds = %bb.bk
  %i.nm = icmp eq i64 %.sroa.033.sroa.3.0.copyload.i18, %.sroa.033.sroa.4.0.copyload.i20, !dbg !68345
  br i1 %i.nm, label %.loopexit149.i, label %.lr.ph.i71, !dbg !68345

.lr.ph.i71:                                       ; preds = %.split.us.i70
  %i.nn = inttoptr i64 %.sroa.033.sroa.2.0.copyload.i16 to ptr ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nn, i64 64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  br label %bb.bl, !dbg !68345

bb.bl:                                            ; preds = %bb.bp, %.lr.ph.i71
  %.sroa.786.0.us153.i = phi i64 [ %.sroa.033.sroa.3.0.copyload.i18, %.lr.ph.i71 ], [ %i.ns, %bb.bp ] ; 3 uses
  %.sroa.21.0.us152.i = phi i64 [ 0, %.lr.ph.i71 ], [ %i.on, %bb.bp ] ; 5 uses
  %i.ns = add nuw i64 %.sroa.786.0.us153.i, 1, !dbg !68350 ; 2 uses
  %i.nt = load ptr, ptr %i.no, align 8, !dbg !68351, !noalias !68356, !noundef !14
  %i.nu = load i64, ptr %i.np, align 8, !dbg !68365, !noalias !68356, !noundef !14
  %i.nv = icmp ult i64 %.sroa.786.0.us153.i, %i.nu, !dbg !68366
  call void @llvm.assume(i1 %i.nv), !dbg !68369
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %.sroa.786.0.us153.i, !dbg !68370 ; 4 uses
  %i.nx = load ptr, ptr %i.nq, align 8, !dbg !68371, !noalias !68356, !noundef !14
  %i.ny = load i64, ptr %i.nr, align 8, !dbg !68374, !noalias !68356, !noundef !14
  call void @llvm.experimental.noalias.scope.decl(metadata !68375), !dbg !68378
  call void @llvm.experimental.noalias.scope.decl(metadata !68379), !dbg !68378
  %i.nz = load i32, ptr %i.nw, align 4, !dbg !68381, !alias.scope !68375, !noalias !68383, !noundef !14 ; 2 uses
  %i.oa = icmp ult i32 %i.nz, 13, !dbg !68381
  br i1 %i.oa, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.thread7.i.i.us.i78, label %_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72, !dbg !68381

_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array8iteratorINtB5_15ArrayValuesIterINtNtB7_7binview22BinaryViewArrayGenericShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.us.i72: ; preds = %bb.bl
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !68384
  %i.oc = load i32, ptr %i.ob, align 4, !dbg !68384, !alias.scope !68375, !noalias !68383, !noundef !14
  %i.od = zext i32 %i.oc to i64, !dbg !68384      ; 2 uses
  %i.oe = icmp samesign ugt i64 %i.ny, %i.od, !dbg !68386
  call void @llvm.assume(i1 %i.oe), !dbg !68389
  %i.of = getelementptr inbounds nuw [24 x i8], ptr %i.nx, i64 %i.od, !dbg !68390
  %i.og = getelementptr inbounds nuw i8, ptr %i.nw, i64 12, !dbg !68391
end_hunk_15
