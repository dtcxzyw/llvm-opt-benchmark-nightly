Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.07?download=true
inline.NumInlined: 2732
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs8774dFTUdNv_12polars_arrow6legacy5array15fixed_size_list16AnonymousBuilderECslFlrwjHoTci_14polars_compute:bb.a
          to label %bb.i unwind label %bb.g, !dbg !9542

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.i, align 8, !dbg !9542, !alias.scope !9527 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.m, label %common.resume, label %bb.h, !dbg !9543

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9542
  %.val3.i.i.i = load ptr, ptr %i.n, align 8, !dbg !9542, !alias.scope !9528, !nonnull !1685, !noundef !1685
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !dbg !9544, !noalias !9529
  br label %common.resume, !dbg !9545

bb.i:                                             ; preds = %bb.f
  %.val.i.i.i = load i64, ptr %i.i, align 8, !dbg !9542, !alias.scope !9527 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.o, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderEECslFlrwjHoTci_14polars_compute.exit, label %bb.j, !dbg !9546

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9542
  %.val1.i.i.i = load ptr, ptr %i.p, align 8, !dbg !9542, !alias.scope !9528, !nonnull !1685, !noundef !1685
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !dbg !9547, !noalias !9530
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderEECslFlrwjHoTci_14polars_compute.exit, !dbg !9548

common.resume:                                    ; preds = %.body, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.l, %bb.h ], [ %i.a, %.body ]
  resume { ptr, i32 } %common.resume.op, !dbg !9540

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderEECslFlrwjHoTci_14polars_compute.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECslFlrwjHoTci_14polars_compute.exit, %bb.i, %bb.j
  ret void, !dbg !9540

bb.k:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !9540
  unreachable, !dbg !9540
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCslFlrwjHoTci_14polars_compute10arithmetic23prim_checked_mul_scalaraEB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9549 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [56 x i8], align 8                ; 12 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !9754
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !9755 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !9755, !noundef !1685 ; 6 uses
  %.not.i = icmp slt i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !dbg !9756, !prof !1790

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.q, 0, !dbg !9757
  br i1 %i.r, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.c, !dbg !9757

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b
  store i64 %i.q, ptr %i.o, align 8, !dbg !9758
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !9758
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !dbg !9758
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !9758
  store i64 0, ptr %i.t, align 8, !dbg !9758
  br label %._crit_edge.thread, !dbg !9759

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !9760, !noalias !9686
  %i.u = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !dbg !9761, !noalias !9686 ; 4 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !9762
  br i1 %i.v, label %bb.d, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit, !dbg !9763

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.q) #37, !dbg !9764
  unreachable, !dbg !9764

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c
  %.pre = load i64, ptr %i.p, align 8, !dbg !9765 ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !dbg !9758
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !9758
  store ptr %i.u, ptr %i.w, align 8, !dbg !9758
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !9758 ; 3 uses
  store i64 0, ptr %i.x, align 8, !dbg !9758
  %.not = icmp eq i64 %.pre, 0, !dbg !9759
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph, !dbg !9759

.lr.ph:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !dbg !9766, !noundef !1685
  %.val37137 = load i8, ptr %i.z, align 1, !dbg !9767, !noundef !1685 ; 2 uses
  %i.aa = tail call { i8, i1 } @llvm.smul.with.overflow.i8(i8 %.val37137, i8 %2), !dbg !9768
  %i.ab = extractvalue { i8, i1 } %i.aa, 1, !dbg !9768
  br i1 %i.ab, label %._crit_edge, label %.lr.ph140.preheader, !dbg !9690

.lr.ph140.preheader:                              ; preds = %.lr.ph
  %i.ac = load i64, ptr %i.p, align 8, !noundef !1685 ; 3 uses
  br label %.lr.ph140, !dbg !9759

._crit_edge:                                      ; preds = %bb.g, %.lr.ph140, %.lr.ph
  %i.ad = phi i64 [ 0, %.lr.ph ], [ %i.ap, %.lr.ph140 ], [ %i.ap, %bb.g ], !dbg !9769 ; 11 uses
  %.lcssa = phi i64 [ %.pre, %.lr.ph ], [ %i.ac, %.lr.ph140 ], [ %i.ac, %bb.g ], !dbg !9765 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !9770
  tail call void @llvm.assume(i1 %i.ae), !dbg !9771
  %i.af = icmp eq i64 %i.ad, %.lcssa, !dbg !9772
  br i1 %i.af, label %._crit_edge.thread, label %bb.h, !dbg !9772

bb.e:                                             ; preds = %bb.ah
  br i1 %.sroa.014.388, label %.thread109, label %.thread, !dbg !9773

.thread65:                                        ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.thread109, !dbg !9773

bb.f:                                             ; preds = %bb.n
  unreachable

bb.g:                                             ; preds = %.lr.ph140
  %i.ah = load ptr, ptr %i.y, align 8, !dbg !9766, !noundef !1685
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq, !dbg !9690
  %.val37 = load i8, ptr %i.ai, align 1, !dbg !9767, !noundef !1685 ; 2 uses
  %i.aj = tail call { i8, i1 } @llvm.smul.with.overflow.i8(i8 %.val37, i8 %2), !dbg !9768
  %i.ak = extractvalue { i8, i1 } %i.aj, 1, !dbg !9768
  br i1 %i.ak, label %._crit_edge, label %.lr.ph140, !dbg !9690

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.g
  %.val37139 = phi i8 [ %.val37, %bb.g ], [ %.val37137, %.lr.ph140.preheader ]
  %.sroa.0.0114138 = phi i64 [ %i.aq, %bb.g ], [ 0, %.lr.ph140.preheader ]
  %i.al = phi i64 [ %i.ap, %bb.g ], [ 0, %.lr.ph140.preheader ] ; 3 uses
  %i.am = mul i8 %.val37139, %2, !dbg !9774
  %i.an = icmp sgt i64 %i.al, -1, !dbg !9775
  tail call void @llvm.assume(i1 %i.an), !dbg !9776
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.al, !dbg !9777
  store i8 %i.am, ptr %i.ao, align 1, !dbg !9778
  %i.ap = add nuw i64 %i.al, 1, !dbg !9779        ; 4 uses
  store i64 %i.ap, ptr %i.x, align 8, !dbg !9780
  %i.aq = add nuw i64 %.sroa.0.0114138, 1, !dbg !9781 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ac, !dbg !9759
  br i1 %i.ar, label %bb.g, label %._crit_edge, !dbg !9759

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9782
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, i64 noundef %.lcssa)
          to label %bb.i unwind label %.thread65, !dbg !9783

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !9784 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !dbg !9784, !noundef !1685 ; 2 uses
  %i.au = and i64 %i.at, 63, !dbg !9784           ; 2 uses
  %i.av = add nuw i64 %i.au, %i.ad, !dbg !9785
  %i.aw = icmp ult i64 %i.av, 64, !dbg !9785
  br i1 %i.aw, label %bb.k, label %bb.j, !dbg !9785, !prof !1816

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k, i64 noundef %i.ad, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.ai, !dbg !9786

bb.k:                                             ; preds = %bb.i
  %notmask = shl nsw i64 -1, %i.ad, !dbg !9787
  %i.ax = xor i64 %notmask, -1, !dbg !9787
  %i.ay = shl i64 %i.ax, %i.au, !dbg !9788
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !9789 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !dbg !9789, !noundef !1685
  %i.bb = or i64 %i.ba, %i.ay, !dbg !9789
  store i64 %i.bb, ptr %i.az, align 8, !dbg !9789
  %i.bc = add i64 %i.at, %i.ad, !dbg !9790
  store i64 %i.bc, ptr %i.as, align 8, !dbg !9790
  br label %bb.l, !dbg !9791

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bd = load i64, ptr %i.p, align 8, !dbg !9792, !noundef !1685 ; 5 uses
  %i.be = icmp ugt i64 %i.ad, %i.bd, !dbg !9793
  br i1 %i.be, label %bb.n, label %bb.m, !dbg !9793, !prof !1777

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !9794
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !9794, !nonnull !1685, !noundef !1685 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd, !dbg !9795
  %i.bi = icmp samesign eq i64 %i.ad, %i.bd, !dbg !9796
  br i1 %i.bi, label %._crit_edge120, label %.lr.ph119, !dbg !9713

.lr.ph119:                                        ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ad, !dbg !9797
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !nonnull !1685
  %.promoted = load i64, ptr %i.as, align 8, !alias.scope !9715
  %.promoted149 = load i64, ptr %i.bk, align 8, !alias.scope !9715
  br label %bb.o, !dbg !9713

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ad, i64 noundef %i.bd, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
          to label %bb.f unwind label %bb.ai, !dbg !9798

bb.o:                                             ; preds = %.lr.ph119, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  %3 = phi i64 [ %.promoted149, %.lr.ph119 ], [ %4, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !9799
  %i.bp = phi i64 [ %.promoted, %.lr.ph119 ], [ %i.cd, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !9799 ; 2 uses
  %i.bq = phi i64 [ %i.ad, %.lr.ph119 ], [ %i.bw, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !9800 ; 3 uses
  %.sroa.017.0117 = phi ptr [ %i.bj, %.lr.ph119 ], [ %i.br, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0117, i64 1, !dbg !9799 ; 2 uses
  %i.bs = load i8, ptr %.sroa.017.0117, align 1, !dbg !9801, !noundef !1685 ; 2 uses
  %i.bt = mul i8 %i.bs, %2, !dbg !9802
  %i.bu = icmp sgt i64 %i.bq, -1, !dbg !9803
  call void @llvm.assume(i1 %i.bu), !dbg !9804
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bq, !dbg !9805
  store i8 %i.bt, ptr %i.bv, align 1, !dbg !9806
  %i.bw = add nuw i64 %i.bq, 1, !dbg !9807        ; 2 uses
  store i64 %i.bw, ptr %i.x, align 8, !dbg !9808
  %i.bx = call { i8, i1 } @llvm.smul.with.overflow.i8(i8 %i.bs, i8 %2), !dbg !9809
  %i.by = extractvalue { i8, i1 } %i.bx, 1, !dbg !9809
  %.sroa.0.0.i44 = xor i1 %i.by, true, !dbg !9809
  call void @llvm.experimental.noalias.scope.decl(metadata !9715), !dbg !9810
  %i.bz = zext i1 %.sroa.0.0.i44 to i64, !dbg !9811
  %i.ca = and i64 %i.bp, 63, !dbg !9812
  %i.cb = shl nuw i64 %i.bz, %i.ca, !dbg !9811
  %i.cc = or i64 %i.cb, %3, !dbg !9813            ; 4 uses
  store i64 %i.cc, ptr %i.bk, align 8, !dbg !9813, !alias.scope !9715
  %i.cd = add i64 %i.bp, 1, !dbg !9814            ; 3 uses
  store i64 %i.cd, ptr %i.as, align 8, !dbg !9814, !alias.scope !9715
  %i.ce = and i64 %i.cd, 63, !dbg !9815
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !9815
  br i1 %i.cf, label %bb.p, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !9816

bb.p:                                             ; preds = %bb.o
  %i.cg = load i64, ptr %i.bl, align 8, !dbg !9817, !alias.scope !9715, !noundef !1685 ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, -1, !dbg !9818
  call void @llvm.assume(i1 %i.ch), !dbg !9819
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cg, !dbg !9820
  store i64 %i.cc, ptr %i.ci, align 1, !dbg !9821, !noalias !9715
  %i.cj = add nuw i64 %i.cg, 8, !dbg !9822
  store i64 %i.cj, ptr %i.bl, align 8, !dbg !9823, !alias.scope !9715
  %i.ck = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cc), !dbg !9824
  %i.cl = load i64, ptr %i.bn, align 8, !dbg !9825, !alias.scope !9715, !noundef !1685
  %i.cm = add i64 %i.cl, %i.ck, !dbg !9825
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !9825, !alias.scope !9715
  store i64 0, ptr %i.bk, align 8, !dbg !9826, !alias.scope !9715
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !9827

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.p, %bb.o
  %4 = phi i64 [ 0, %bb.p ], [ %i.cc, %bb.o ]
  %i.cn = icmp eq ptr %i.br, %i.bh, !dbg !9796
  br i1 %i.cn, label %._crit_edge120, label %bb.o, !dbg !9713

._crit_edge120:                                   ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !9829
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !dbg !9829
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder6freeze(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.q unwind label %.split.thread, !dbg !9830

.split.thread:                                    ; preds = %._crit_edge120
  %lpad.thr_comm.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109, !dbg !9773

bb.q:                                             ; preds = %._crit_edge120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !9831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !9832
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !9833 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !9833, !noundef !1685
  %.not.not = icmp eq ptr %i.cp, null, !dbg !9833 ; 3 uses
  br i1 %.not.not, label %bb.s, label %bb.r, !dbg !9834

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap10bitmap_ops3and(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.co)
          to label %bb.t unwind label %.thread81, !dbg !9835

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !9836
  br label %bb.t, !dbg !9836

.body33.thread:                                   ; preds = %bb.ag, %bb.y, %.body33
  %.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.y ], [ %lpad.thr_comm.split-lp99, %.body33 ], [ %lpad.thr_comm98, %bb.ag ] ; 2 uses
  br i1 %.not.not, label %.thread, label %bb.ah, !dbg !9837

.thread81:                                        ; preds = %bb.r
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah, !dbg !9837

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9838
  store i8 2, ptr %i.g, align 8, !dbg !9839, !alias.scope !9728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !9840
  %i.cr = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageaE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.u unwind label %bb.ae, !dbg !9841

.body33:                                          ; preds = %bb.v
  %lpad.thr_comm.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %.body33.thread, !dbg !9842

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferaE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull %i.cr)
          to label %bb.v unwind label %bb.ae, !dbg !9843

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !9844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !9845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9846
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayaE7try_newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.w unwind label %.body33, !dbg !9846

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !9736), !dbg !9847
  call void @llvm.experimental.noalias.scope.decl(metadata !9737), !dbg !9847
  %i.cs = load i8, ptr %i.c, align 8, !dbg !9848, !range !1842, !alias.scope !9737, !noalias !9736, !noundef !1685
  %i.ct = icmp eq i8 %i.cs, 42, !dbg !9848
  br i1 %i.ct, label %bb.x, label %bb.ab, !dbg !9849, !prof !1777

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9850, !noalias !9738
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.cu, i64 72, i1 false), !dbg !9850, !noalias !9736
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #37
          to label %bb.z unwind label %bb.y, !dbg !9851, !noalias !9738

bb.y:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #35
          to label %.body33.thread unwind label %bb.aa, !dbg !9852, !noalias !9738

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !9853, !noalias !9738
  unreachable, !dbg !9853

bb.ab:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.c, i64 88, i1 false), !dbg !9854, !alias.scope !9738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !9842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !9842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !9842
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !9856
  br i1 %.not.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit, label %bb.ac, !dbg !9837

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9857
  br label %bb.ad, !dbg !9858

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j), !dbg !9859
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit, !dbg !9859

bb.ad:                                            ; preds = %bb.au, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9773
  ret void, !dbg !9858

bb.ae:                                            ; preds = %bb.t, %bb.u
  %lpad.thr_comm98 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.g) #35
          to label %bb.ag unwind label %bb.af, !dbg !9842

bb.af:                                            ; preds = %bb.ah, %bb.ag, %.thread109, %bb.av, %bb.ai, %bb.ae
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !9860
  unreachable, !dbg !9860

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.body33.thread unwind label %bb.af, !dbg !9861

bb.ah:                                            ; preds = %.thread81, %.body33.thread
  %.sroa.014.388 = phi i1 [ true, %.thread81 ], [ false, %.body33.thread ]
  %.pn.pn86 = phi { ptr, i32 } [ %i.cq, %.thread81 ], [ %.pn.pn, %.body33.thread ] ; 2 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.e unwind label %bb.af, !dbg !9862

bb.ai:                                            ; preds = %bb.n, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(56) %i.k) #35
          to label %.thread109 unwind label %bb.af, !dbg !9857

._crit_edge.thread:                               ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit.thread, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9863
  store i8 2, ptr %i.n, align 8, !dbg !9864, !alias.scope !9739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9865
  %i.cy = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStorageaE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.aj unwind label %bb.av, !dbg !9866

bb.aj:                                            ; preds = %._crit_edge.thread
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferaE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.cy)
          to label %bb.ak unwind label %bb.av, !dbg !9867

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9868
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !9869
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !9869, !noundef !1685 ; 4 uses
  %.not28 = icmp eq ptr %i.da, null, !dbg !9869
  br i1 %.not28, label %bb.an, label %bb.al, !dbg !9870

bb.al:                                            ; preds = %bb.ak
  %i.db = load i64, ptr %i.da, align 8, !dbg !9871, !range !1843, !noalias !9746, !noundef !1685
  %i.dc = icmp eq i64 %i.db, 3, !dbg !9872
  br i1 %i.dc, label %bb.ap, label %bb.am, !dbg !9872

bb.am:                                            ; preds = %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24, !dbg !9873
  %i.de = atomicrmw add ptr %i.dd, i64 1 monotonic, align 8, !dbg !9874, !noalias !9746 ; 0 uses
  br label %bb.ap, !dbg !9875

bb.an:                                            ; preds = %bb.ak
  store ptr null, ptr %i.l, align 8, !dbg !9876
  br label %bb.ao, !dbg !9877

bb.ao:                                            ; preds = %bb.ap, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !9878
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayaE7try_newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l), !dbg !9878
  call void @llvm.experimental.noalias.scope.decl(metadata !9751), !dbg !9879
  call void @llvm.experimental.noalias.scope.decl(metadata !9752), !dbg !9879
  %i.df = load i8, ptr %i.d, align 8, !dbg !9880, !range !1842, !alias.scope !9752, !noalias !9751, !noundef !1685
  %i.dg = icmp eq i8 %i.df, 42, !dbg !9880
  br i1 %i.dg, label %bb.aq, label %bb.au, !dbg !9881, !prof !1777

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !9882
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !9883
  %i.dj = load atomic i64, ptr %i.di monotonic, align 8, !dbg !9884, !noalias !9746
  store ptr %i.da, ptr %i.l, align 8, !dbg !9885
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !9885
  %i.dk = load <2 x i64>, ptr %i.dh, align 8, !dbg !9882, !noalias !9746
  store <2 x i64> %i.dk, ptr %.sroa.456.0..sroa_idx, align 8, !dbg !9885
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !9885
  store i64 %i.dj, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !9885
  br label %bb.ao, !dbg !9886

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9887, !noalias !9753
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !9887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dl, i64 72, i1 false), !dbg !9887, !noalias !9751
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #37
end_hunk_0
begin_hunk_1_@_RINvNtCslFlrwjHoTci_14polars_compute10arithmetic23prim_checked_mul_scalaraEB4_:bb.a

bb.ar:                                            ; preds = %bb.aq
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b) #35
          to label %.thread unwind label %bb.at, !dbg !9889, !noalias !9753

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !9890, !noalias !9753
  unreachable, !dbg !9890

bb.au:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.d, i64 88, i1 false), !dbg !9891, !alias.scope !9753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !9892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9893
  br label %bb.ad, !dbg !9858

bb.av:                                            ; preds = %bb.aj, %._crit_edge.thread
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.n) #35
          to label %.thread unwind label %bb.af, !dbg !9893

.thread:                                          ; preds = %.body33.thread, %bb.ar, %bb.av, %.thread109, %bb.e
  %.pn3164 = phi { ptr, i32 } [ %.pn.pn86, %bb.e ], [ %.pn3168, %.thread109 ], [ %i.dm, %bb.ar ], [ %i.do, %bb.av ], [ %.pn.pn, %.body33.thread ]
  resume { ptr, i32 } %.pn3164, !dbg !9860

.thread109:                                       ; preds = %bb.ai, %.split.thread, %.thread65, %bb.e
  %.pn3168 = phi { ptr, i32 } [ %i.ag, %.thread65 ], [ %.pn.pn86, %bb.e ], [ %lpad.thr_comm.split-lp113, %.split.thread ], [ %lpad.thr_comm, %bb.ai ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecaEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.o) #35
          to label %.thread unwind label %bb.af, !dbg !9773
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCslFlrwjHoTci_14polars_compute10arithmetic23prim_checked_mul_scalarhEB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9894 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %i.d = alloca [88 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [56 x i8], align 8                ; 12 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !10098
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !10099 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !10099, !noundef !1685 ; 6 uses
  %.not.i = icmp slt i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !dbg !10100, !prof !1790

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.q, 0, !dbg !10101
  br i1 %i.r, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit.thread, label %bb.c, !dbg !10101

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit.thread: ; preds = %bb.b
  store i64 %i.q, ptr %i.o, align 8, !dbg !10102
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !10102
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8, !dbg !10102
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !10102
  store i64 0, ptr %i.t, align 8, !dbg !10102
  br label %._crit_edge.thread, !dbg !10103

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !dbg !10104, !noalias !10031
  %i.u = tail call noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !dbg !10105, !noalias !10031 ; 4 uses
  %i.v = icmp eq ptr %i.u, null, !dbg !10106
  br i1 %i.v, label %bb.d, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit, !dbg !10107

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.4.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.q) #37, !dbg !10108
  unreachable, !dbg !10108

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.c
  %.pre = load i64, ptr %i.p, align 8, !dbg !10109 ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !dbg !10102
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !10102
  store ptr %i.u, ptr %i.w, align 8, !dbg !10102
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !10102 ; 3 uses
  store i64 0, ptr %i.x, align 8, !dbg !10102
  %.not = icmp eq i64 %.pre, 0, !dbg !10103
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph, !dbg !10103

.lr.ph:                                           ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !dbg !10110, !noundef !1685
  %.val37137 = load i8, ptr %i.z, align 1, !dbg !10111, !noundef !1685 ; 2 uses
  %i.aa = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.val37137, i8 %2), !dbg !10112
  %i.ab = extractvalue { i8, i1 } %i.aa, 1, !dbg !10112
  br i1 %i.ab, label %._crit_edge, label %.lr.ph140.preheader, !dbg !10035

.lr.ph140.preheader:                              ; preds = %.lr.ph
  %i.ac = load i64, ptr %i.p, align 8, !noundef !1685 ; 3 uses
  br label %.lr.ph140, !dbg !10103

._crit_edge:                                      ; preds = %bb.g, %.lr.ph140, %.lr.ph
  %i.ad = phi i64 [ 0, %.lr.ph ], [ %i.ap, %.lr.ph140 ], [ %i.ap, %bb.g ], !dbg !10113 ; 11 uses
  %.lcssa = phi i64 [ %.pre, %.lr.ph ], [ %i.ac, %.lr.ph140 ], [ %i.ac, %bb.g ], !dbg !10109 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !10114
  tail call void @llvm.assume(i1 %i.ae), !dbg !10115
  %i.af = icmp eq i64 %i.ad, %.lcssa, !dbg !10116
  br i1 %i.af, label %._crit_edge.thread, label %bb.h, !dbg !10116

bb.e:                                             ; preds = %bb.ah
  br i1 %.sroa.014.388, label %.thread109, label %.thread, !dbg !10117

.thread65:                                        ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.thread109, !dbg !10117

bb.f:                                             ; preds = %bb.n
  unreachable

bb.g:                                             ; preds = %.lr.ph140
  %i.ah = load ptr, ptr %i.y, align 8, !dbg !10110, !noundef !1685
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq, !dbg !10035
  %.val37 = load i8, ptr %i.ai, align 1, !dbg !10111, !noundef !1685 ; 2 uses
  %i.aj = tail call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %.val37, i8 %2), !dbg !10112
  %i.ak = extractvalue { i8, i1 } %i.aj, 1, !dbg !10112
  br i1 %i.ak, label %._crit_edge, label %.lr.ph140, !dbg !10035

.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %bb.g
  %.val37139 = phi i8 [ %.val37, %bb.g ], [ %.val37137, %.lr.ph140.preheader ]
  %.sroa.0.0114138 = phi i64 [ %i.aq, %bb.g ], [ 0, %.lr.ph140.preheader ]
  %i.al = phi i64 [ %i.ap, %bb.g ], [ 0, %.lr.ph140.preheader ] ; 3 uses
  %i.am = mul i8 %.val37139, %2, !dbg !10118
  %i.an = icmp sgt i64 %i.al, -1, !dbg !10119
  tail call void @llvm.assume(i1 %i.an), !dbg !10120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.al, !dbg !10121
  store i8 %i.am, ptr %i.ao, align 1, !dbg !10122
  %i.ap = add nuw i64 %i.al, 1, !dbg !10123       ; 4 uses
  store i64 %i.ap, ptr %i.x, align 8, !dbg !10124
  %i.aq = add nuw i64 %.sroa.0.0114138, 1, !dbg !10125 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ac, !dbg !10103
  br i1 %i.ar, label %bb.g, label %._crit_edge, !dbg !10103

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10126
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.k, i64 noundef %.lcssa)
          to label %bb.i unwind label %.thread65, !dbg !10127

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !10128 ; 4 uses
  %i.at = load i64, ptr %i.as, align 8, !dbg !10128, !noundef !1685 ; 2 uses
  %i.au = and i64 %i.at, 63, !dbg !10128          ; 2 uses
  %i.av = add nuw i64 %i.au, %i.ad, !dbg !10129
  %i.aw = icmp ult i64 %i.av, 64, !dbg !10129
  br i1 %i.aw, label %bb.k, label %bb.j, !dbg !10129, !prof !1816

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder20extend_constant_slow(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k, i64 noundef %i.ad, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.ai, !dbg !10130

bb.k:                                             ; preds = %bb.i
  %notmask = shl nsw i64 -1, %i.ad, !dbg !10131
  %i.ax = xor i64 %notmask, -1, !dbg !10131
  %i.ay = shl i64 %i.ax, %i.au, !dbg !10132
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !10133 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !dbg !10133, !noundef !1685
  %i.bb = or i64 %i.ba, %i.ay, !dbg !10133
  store i64 %i.bb, ptr %i.az, align 8, !dbg !10133
  %i.bc = add i64 %i.at, %i.ad, !dbg !10134
  store i64 %i.bc, ptr %i.as, align 8, !dbg !10134
  br label %bb.l, !dbg !10135

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bd = load i64, ptr %i.p, align 8, !dbg !10136, !noundef !1685 ; 5 uses
  %i.be = icmp ugt i64 %i.ad, %i.bd, !dbg !10137
  br i1 %i.be, label %bb.n, label %bb.m, !dbg !10137, !prof !1777

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !10138
  %i.bg = load ptr, ptr %i.bf, align 8, !dbg !10138, !nonnull !1685, !noundef !1685 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bd, !dbg !10139
  %i.bi = icmp samesign eq i64 %i.ad, %i.bd, !dbg !10140
  br i1 %i.bi, label %._crit_edge120, label %.lr.ph119, !dbg !10057

.lr.ph119:                                        ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ad, !dbg !10141
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !nonnull !1685
  %.promoted = load i64, ptr %i.as, align 8, !alias.scope !10059
  %.promoted149 = load i64, ptr %i.bk, align 8, !alias.scope !10059
  br label %bb.o, !dbg !10057

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ad, i64 noundef %i.bd, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #37
          to label %bb.f unwind label %bb.ai, !dbg !10142

bb.o:                                             ; preds = %.lr.ph119, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit
  %3 = phi i64 [ %.promoted149, %.lr.ph119 ], [ %4, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !10143
  %i.bp = phi i64 [ %.promoted, %.lr.ph119 ], [ %i.cd, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !10143 ; 2 uses
  %i.bq = phi i64 [ %i.ad, %.lr.ph119 ], [ %i.bw, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ], !dbg !10144 ; 3 uses
  %.sroa.017.0117 = phi ptr [ %i.bj, %.lr.ph119 ], [ %i.br, %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.017.0117, i64 1, !dbg !10143 ; 2 uses
  %i.bs = load i8, ptr %.sroa.017.0117, align 1, !dbg !10145, !noundef !1685 ; 2 uses
  %i.bt = mul i8 %i.bs, %2, !dbg !10146
  %i.bu = icmp sgt i64 %i.bq, -1, !dbg !10147
  call void @llvm.assume(i1 %i.bu), !dbg !10148
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bq, !dbg !10149
  store i8 %i.bt, ptr %i.bv, align 1, !dbg !10150
  %i.bw = add nuw i64 %i.bq, 1, !dbg !10151       ; 2 uses
  store i64 %i.bw, ptr %i.x, align 8, !dbg !10152
  %i.bx = call { i8, i1 } @llvm.umul.with.overflow.i8(i8 %i.bs, i8 %2), !dbg !10153
  %i.by = extractvalue { i8, i1 } %i.bx, 1, !dbg !10153
  %.sroa.0.0.i44 = xor i1 %i.by, true, !dbg !10153
  call void @llvm.experimental.noalias.scope.decl(metadata !10059), !dbg !10154
  %i.bz = zext i1 %.sroa.0.0.i44 to i64, !dbg !10155
  %i.ca = and i64 %i.bp, 63, !dbg !10156
  %i.cb = shl nuw i64 %i.bz, %i.ca, !dbg !10155
  %i.cc = or i64 %i.cb, %3, !dbg !10157           ; 4 uses
  store i64 %i.cc, ptr %i.bk, align 8, !dbg !10157, !alias.scope !10059
  %i.cd = add i64 %i.bp, 1, !dbg !10158           ; 3 uses
  store i64 %i.cd, ptr %i.as, align 8, !dbg !10158, !alias.scope !10059
  %i.ce = and i64 %i.cd, 63, !dbg !10159
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !10159
  br i1 %i.cf, label %bb.p, label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !10160

bb.p:                                             ; preds = %bb.o
  %i.cg = load i64, ptr %i.bl, align 8, !dbg !10161, !alias.scope !10059, !noundef !1685 ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, -1, !dbg !10162
  call void @llvm.assume(i1 %i.ch), !dbg !10163
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cg, !dbg !10164
  store i64 %i.cc, ptr %i.ci, align 1, !dbg !10165, !noalias !10059
  %i.cj = add nuw i64 %i.cg, 8, !dbg !10166
  store i64 %i.cj, ptr %i.bl, align 8, !dbg !10167, !alias.scope !10059
  %i.ck = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cc), !dbg !10168
  %i.cl = load i64, ptr %i.bn, align 8, !dbg !10169, !alias.scope !10059, !noundef !1685
  %i.cm = add i64 %i.cl, %i.ck, !dbg !10169
  store i64 %i.cm, ptr %i.bn, align 8, !dbg !10169, !alias.scope !10059
  store i64 0, ptr %i.bk, align 8, !dbg !10170, !alias.scope !10059
  br label %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, !dbg !10171

_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit: ; preds = %bb.p, %bb.o
  %4 = phi i64 [ 0, %bb.p ], [ %i.cc, %bb.o ]
  %i.cn = icmp eq ptr %i.br, %i.bh, !dbg !10140
  br i1 %i.cn, label %._crit_edge120, label %bb.o, !dbg !10057

._crit_edge120:                                   ; preds = %_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder14push_unchecked.exit, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !10173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !dbg !10173
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder6freeze(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i)
          to label %bb.q unwind label %.split.thread, !dbg !10174

.split.thread:                                    ; preds = %._crit_edge120
  %lpad.thr_comm.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.thread109, !dbg !10117

bb.q:                                             ; preds = %._crit_edge120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !10175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !10176
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !10177 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !10177, !noundef !1685
  %.not.not = icmp eq ptr %i.cp, null, !dbg !10177 ; 3 uses
  br i1 %.not.not, label %bb.s, label %bb.r, !dbg !10178

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap10bitmap_ops3and(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %i.co)
          to label %bb.t unwind label %.thread81, !dbg !10179

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !10180
  br label %bb.t, !dbg !10180

.body33.thread:                                   ; preds = %bb.ag, %bb.y, %.body33
  %.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.y ], [ %lpad.thr_comm.split-lp99, %.body33 ], [ %lpad.thr_comm98, %bb.ag ] ; 2 uses
  br i1 %.not.not, label %.thread, label %bb.ah, !dbg !10181

.thread81:                                        ; preds = %bb.r
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah, !dbg !10181

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !10182
  store i8 7, ptr %i.g, align 8, !dbg !10183, !alias.scope !10072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !10184
  %i.cr = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.u unwind label %bb.ae, !dbg !10185

.body33:                                          ; preds = %bb.v
  %lpad.thr_comm.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %.body33.thread, !dbg !10186

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull %i.cr)
          to label %bb.v unwind label %bb.ae, !dbg !10187

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !10188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !10189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10190
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayhE7try_newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.w unwind label %.body33, !dbg !10190

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !10080), !dbg !10191
  call void @llvm.experimental.noalias.scope.decl(metadata !10081), !dbg !10191
  %i.cs = load i8, ptr %i.c, align 8, !dbg !10192, !range !1842, !alias.scope !10081, !noalias !10080, !noundef !1685
  %i.ct = icmp eq i8 %i.cs, 42, !dbg !10192
  br i1 %i.ct, label %bb.x, label %bb.ab, !dbg !10193, !prof !1777

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10194, !noalias !10082
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !10194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.cu, i64 72, i1 false), !dbg !10194, !noalias !10080
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #37
          to label %bb.z unwind label %bb.y, !dbg !10195, !noalias !10082

bb.y:                                             ; preds = %bb.x
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #35
          to label %.body33.thread unwind label %bb.aa, !dbg !10196, !noalias !10082

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !10197, !noalias !10082
  unreachable, !dbg !10197

bb.ab:                                            ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.c, i64 88, i1 false), !dbg !10198, !alias.scope !10082
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !10186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !10186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !10200
  br i1 %.not.not, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit, label %bb.ac, !dbg !10181

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10201
  br label %bb.ad, !dbg !10202

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j), !dbg !10203
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit, !dbg !10203

bb.ad:                                            ; preds = %bb.au, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECslFlrwjHoTci_14polars_compute.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10117
  ret void, !dbg !10202

bb.ae:                                            ; preds = %bb.t, %bb.u
  %lpad.thr_comm98 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.g) #35
          to label %bb.ag unwind label %bb.af, !dbg !10186

bb.af:                                            ; preds = %bb.ah, %bb.ag, %.thread109, %bb.av, %bb.ai, %bb.ae
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #36, !dbg !10204
  unreachable, !dbg !10204

bb.ag:                                            ; preds = %bb.ae
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.body33.thread unwind label %bb.af, !dbg !10205

bb.ah:                                            ; preds = %.thread81, %.body33.thread
  %.sroa.014.388 = phi i1 [ true, %.thread81 ], [ false, %.body33.thread ]
  %.pn.pn86 = phi { ptr, i32 } [ %i.cq, %.thread81 ], [ %.pn.pn, %.body33.thread ] ; 2 uses
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.e unwind label %bb.af, !dbg !10206

bb.ai:                                            ; preds = %bb.n, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(56) %i.k) #35
          to label %.thread109 unwind label %bb.af, !dbg !10201

._crit_edge.thread:                               ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit.thread, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10207
  store i8 7, ptr %i.n, align 8, !dbg !10208, !alias.scope !10083
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10209
  %i.cy = invoke noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.aj unwind label %bb.av, !dbg !10210

bb.aj:                                            ; preds = %._crit_edge.thread
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.cy)
          to label %bb.ak unwind label %bb.av, !dbg !10211

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !10212
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !10213
  %i.da = load ptr, ptr %i.cz, align 8, !dbg !10213, !noundef !1685 ; 4 uses
  %.not28 = icmp eq ptr %i.da, null, !dbg !10213
  br i1 %.not28, label %bb.an, label %bb.al, !dbg !10214

bb.al:                                            ; preds = %bb.ak
  %i.db = load i64, ptr %i.da, align 8, !dbg !10215, !range !1843, !noalias !10090, !noundef !1685
  %i.dc = icmp eq i64 %i.db, 3, !dbg !10216
  br i1 %i.dc, label %bb.ap, label %bb.am, !dbg !10216

bb.am:                                            ; preds = %bb.al
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 24, !dbg !10217
  %i.de = atomicrmw add ptr %i.dd, i64 1 monotonic, align 8, !dbg !10218, !noalias !10090 ; 0 uses
  br label %bb.ap, !dbg !10219

bb.an:                                            ; preds = %bb.ak
  store ptr null, ptr %i.l, align 8, !dbg !10220
  br label %bb.ao, !dbg !10221

bb.ao:                                            ; preds = %bb.ap, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !10222
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB2_14PrimitiveArrayhE7try_newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l), !dbg !10222
  call void @llvm.experimental.noalias.scope.decl(metadata !10095), !dbg !10223
  call void @llvm.experimental.noalias.scope.decl(metadata !10096), !dbg !10223
  %i.df = load i8, ptr %i.d, align 8, !dbg !10224, !range !1842, !alias.scope !10096, !noalias !10095, !noundef !1685
  %i.dg = icmp eq i8 %i.df, 42, !dbg !10224
  br i1 %i.dg, label %bb.aq, label %bb.au, !dbg !10225, !prof !1777

bb.ap:                                            ; preds = %bb.am, %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !10226
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !10227
  %i.dj = load atomic i64, ptr %i.di monotonic, align 8, !dbg !10228, !noalias !10090
  store ptr %i.da, ptr %i.l, align 8, !dbg !10229
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !10229
  %i.dk = load <2 x i64>, ptr %i.dh, align 8, !dbg !10226, !noalias !10090
  store <2 x i64> %i.dk, ptr %.sroa.456.0..sroa_idx, align 8, !dbg !10229
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !10229
  store i64 %i.dj, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !10229
  br label %bb.ao, !dbg !10230

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10231, !noalias !10097
  %i.dl = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !10231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dl, i64 72, i1 false), !dbg !10231, !noalias !10095
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #37
end_hunk_1
