Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11828
inline.NumDeleted: 4829
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8lECsfcROwRM8ZtH_11polars_plan:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l, !dbg !44621 ; 3 uses
  %i.n = and i64 %i.i, 63, !dbg !44629            ; 2 uses
  br label %.lr.ph.i.i, !dbg !44630

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64, !dbg !44636 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m, !dbg !44644
  br i1 %i.p, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !44647

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.j
  %.sroa.01.028.i.i = phi ptr [ %i.o, %bb.k ], [ %i.j, %bb.j ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !dbg !44648, !alias.scope !44651, !noalias !44656
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16, !dbg !44659
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.q, align 1, !dbg !44663, !alias.scope !44651, !noalias !44666
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32, !dbg !44669
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.r, align 1, !dbg !44672, !alias.scope !44651, !noalias !44675
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48, !dbg !44678
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.s, align 1, !dbg !44681, !alias.scope !44651, !noalias !44684
  %i.t = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i, !dbg !44687
  %i.u = or <2 x i64> %i.t, %.sroa.0.0.copyload.i10.i.i, !dbg !44691
  %i.v = or <2 x i64> %i.u, %.sroa.0.0.copyload.i11.i.i, !dbg !44693
  %i.w = bitcast <2 x i64> %i.v to <16 x i8>, !dbg !44695
  %i.x = icmp slt <16 x i8> %i.w, zeroinitializer, !dbg !44698
  %i.y = bitcast <16 x i1> %i.x to i16, !dbg !44698
  %i.z = icmp eq i16 %i.y, 0, !dbg !44630
  br i1 %i.z, label %bb.k, label %.loopexit, !dbg !44630

._crit_edge.i.i:                                  ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n, !dbg !44699
  %i.ab = icmp samesign eq i64 %i.n, 0, !dbg !44710
  br i1 %i.ab, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph64, !dbg !44720

bb.l:                                             ; preds = %.lr.ph64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ae, i64 1, !dbg !44721 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.aa, !dbg !44710
  br i1 %i.ad, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph64, !dbg !44720

.lr.ph64:                                         ; preds = %._crit_edge.i.i, %bb.l
  %i.ae = phi ptr [ %i.ac, %bb.l ], [ %i.m, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ae, align 1, !dbg !44724, !alias.scope !44651, !noalias !44725, !noundef !11
  %i.af = icmp sgt i8 %.val.i.i.i, -1, !dbg !44728
  br i1 %i.af, label %bb.l, label %.loopexit, !dbg !44724

bb.m:                                             ; preds = %bb.i
  %i.ag = and i64 %i.i, 56, !dbg !44736           ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ag, !dbg !44743 ; 7 uses
  %i.ai = and i64 %i.i, 7, !dbg !44747            ; 7 uses
  %.not.i2765 = icmp eq i64 %i.ag, 0, !dbg !44748
  br i1 %.not.i2765, label %._crit_edge68, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !44748

bb.n:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i67, i64 8, !dbg !44758
  %i.ak = add nsw i64 %.sroa.6.0.i66, -8, !dbg !44761 ; 2 uses
  %.not.i27 = icmp eq i64 %i.ak, 0, !dbg !44748
  br i1 %.not.i27, label %._crit_edge68, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !44748

._crit_edge68:                                    ; preds = %bb.n, %bb.m
  %i.al = icmp samesign eq i64 %i.ai, 0, !dbg !44762
  br i1 %i.al, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph70, !dbg !44772

bb.o:                                             ; preds = %.lr.ph70
  %i.am = icmp samesign eq i64 %i.ai, 1, !dbg !44762
  br i1 %i.am, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph70.1, !dbg !44772

.lr.ph70.1:                                       ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1, !dbg !44773
  %.val.i.i.1 = load i8, ptr %i.an, align 1, !dbg !44776, !alias.scope !44777, !noalias !44778, !noundef !11
  %i.ao = icmp sgt i8 %.val.i.i.1, -1, !dbg !44781
  br i1 %i.ao, label %bb.p, label %.loopexit, !dbg !44776

bb.p:                                             ; preds = %.lr.ph70.1
  %i.ap = icmp samesign eq i64 %i.ai, 2, !dbg !44762
  br i1 %i.ap, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph70.2, !dbg !44772

.lr.ph70.2:                                       ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 2, !dbg !44773
  %.val.i.i.2 = load i8, ptr %i.aq, align 1, !dbg !44776, !alias.scope !44777, !noalias !44778, !noundef !11
  %i.ar = icmp sgt i8 %.val.i.i.2, -1, !dbg !44781
  br i1 %i.ar, label %bb.q, label %.loopexit, !dbg !44776

bb.q:                                             ; preds = %.lr.ph70.2
  %i.as = icmp samesign eq i64 %i.ai, 3, !dbg !44762
  br i1 %i.as, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph70.3, !dbg !44772

.lr.ph70.3:                                       ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 3, !dbg !44773
  %.val.i.i.3 = load i8, ptr %i.at, align 1, !dbg !44776, !alias.scope !44777, !noalias !44778, !noundef !11
  %i.au = icmp sgt i8 %.val.i.i.3, -1, !dbg !44781
  br i1 %i.au, label %bb.r, label %.loopexit, !dbg !44776

bb.r:                                             ; preds = %.lr.ph70.3
  %i.av = icmp samesign eq i64 %i.ai, 4, !dbg !44762
  br i1 %i.av, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph70.4, !dbg !44772

.lr.ph70.4:                                       ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 4, !dbg !44773
  %.val.i.i.4 = load i8, ptr %i.aw, align 1, !dbg !44776, !alias.scope !44777, !noalias !44778, !noundef !11
  %i.ax = icmp sgt i8 %.val.i.i.4, -1, !dbg !44781
  br i1 %i.ax, label %bb.s, label %.loopexit, !dbg !44776

bb.s:                                             ; preds = %.lr.ph70.4
  %i.ay = icmp samesign eq i64 %i.ai, 5, !dbg !44762
  br i1 %i.ay, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph70.5, !dbg !44772

.lr.ph70.5:                                       ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 5, !dbg !44773
  %.val.i.i.5 = load i8, ptr %i.az, align 1, !dbg !44776, !alias.scope !44777, !noalias !44778, !noundef !11
  %i.ba = icmp sgt i8 %.val.i.i.5, -1, !dbg !44781
  br i1 %i.ba, label %bb.t, label %.loopexit, !dbg !44776

bb.t:                                             ; preds = %.lr.ph70.5
  %i.bb = icmp samesign eq i64 %i.ai, 6, !dbg !44762
  br i1 %i.bb, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph70.6, !dbg !44772

.lr.ph70.6:                                       ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 6, !dbg !44773
  %.val.i.i.6 = load i8, ptr %i.bc, align 1, !dbg !44776, !alias.scope !44777, !noalias !44778, !noundef !11
  %i.bd = icmp sgt i8 %.val.i.i.6, -1, !dbg !44781
  br i1 %i.bd, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit, !dbg !44776

.lr.ph70:                                         ; preds = %._crit_edge68
  %.val.i.i = load i8, ptr %i.ah, align 1, !dbg !44776, !alias.scope !44777, !noalias !44778, !noundef !11
  %i.be = icmp sgt i8 %.val.i.i, -1, !dbg !44781
  br i1 %i.be, label %bb.o, label %.loopexit, !dbg !44776

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.m, %bb.n
  %.sroa.0.017.i67 = phi ptr [ %i.aj, %bb.n ], [ %i.j, %bb.m ] ; 2 uses
  %.sroa.6.0.i66 = phi i64 [ %i.ak, %bb.n ], [ %i.ag, %bb.m ]
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.017.i67, align 1, !dbg !44787, !alias.scope !44777
  %i.bf = and i64 %.sroa.012.0.copyload.i, -9187201950435737472, !dbg !44796
  %i.bg = icmp eq i64 %i.bf, 0, !dbg !44796
  br i1 %i.bg, label %bb.n, label %.loopexit, !dbg !44796

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph64, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i, %.lr.ph70, %.lr.ph70.1, %.lr.ph70.2, %.lr.ph70.3, %.lr.ph70.4, %.lr.ph70.5, %.lr.ph70.6
  br i1 %i.k, label %.split, label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, !dbg !44798

.split:                                           ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44812, !noalias !44815
  call void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.i), !dbg !44812
  %i.bh = load i64, ptr %i.a, align 8, !dbg !44812, !range !352, !noalias !44815, !noundef !11
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !44818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44819, !noalias !44815
  br i1 %i.bi, label %bb.u, label %bb.v, !dbg !44820

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit: ; preds = %.loopexit
  %i.bj = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !44824, !noalias !44815, !nonnull !11, !noundef !11
  %i.bk = tail call noundef zeroext i1 %i.bj(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.i), !dbg !44829, !inline_history !44831
  br i1 %i.bk, label %bb.u, label %bb.v, !dbg !44820

_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %bb.l, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %.lr.ph70.6, %._crit_edge.i.i, %._crit_edge68
  store i64 18, ptr %0, align 8, !dbg !44832
  br label %bb.c, !dbg !44833

bb.u:                                             ; preds = %.split, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit
  tail call void @_RNvXs9_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsh1AXECKMxZe_8simdutf85basic9Utf8ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0), !dbg !44834
  br label %bb.c, !dbg !44841

bb.v:                                             ; preds = %.split, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !44843
  store ptr %1, ptr %i.b, align 8, !dbg !44844
  %.sroa.07.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !44844
  store ptr %i.c, ptr %.sroa.07.sroa.4.0..sroa_idx, align 8, !dbg !44844
  %.sroa.07.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !44844
  store i64 0, ptr %.sroa.07.sroa.5.0..sroa_idx, align 8, !dbg !44844
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !44844
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !44844
  %i.bl = call { i64, i64 } @_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterlEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRlEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8lE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4), !dbg !44850 ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0, !dbg !44850
  %i.bn = trunc nuw i64 %i.bm to i1, !dbg !44855
  br i1 %i.bn, label %bb.w, label %bb.x, !dbg !44855

bb.w:                                             ; preds = %bb.v
  %i.bo = extractvalue { i64, i64 } %i.bl, 1, !dbg !44850 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44861
  %.idx.mask = and i64 %i.bo, 4611686018427387903, !dbg !44862
  %i.bp = icmp eq i64 %.idx.mask, 4611686018427387903, !dbg !44862
  br i1 %i.bp, label %.critedge, label %.lr.ph.preheader, !dbg !44864

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.bq = and i64 %i.bo, 4611686018427387903, !dbg !44864 ; 2 uses
  %i.br = add nuw nsw i64 %i.bq, 1, !dbg !44864   ; 2 uses
  %xtraiter = and i64 %i.br, 3, !dbg !44864       ; 3 uses
  %i.bs = icmp samesign ult i64 %i.bq, 3, !dbg !44864
  br i1 %i.bs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !44864

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.br, 9223372036854775804, !dbg !44864
  br label %.lr.ph, !dbg !44864

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44861
  store i64 18, ptr %0, align 8, !dbg !44875
  br label %bb.c, !dbg !44876

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.019.045 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.cl, %.lr.ph ] ; 5 uses
  %.sroa.011.044 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cq, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.019.045, i64 4, !dbg !44877
  %.sroa.019.0.val = load i32, ptr %.sroa.019.045, align 4, !dbg !44880, !noundef !11
  %5 = sext i32 %.sroa.019.0.val to i64, !dbg !44882 ; 2 uses
  %i.bu = icmp ugt i64 %4, %5, !dbg !44884
  call void @llvm.assume(i1 %i.bu), !dbg !44891
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 %5, !dbg !44892
  %i.bw = load i8, ptr %i.bv, align 1, !dbg !44893, !noundef !11
  %i.bx = icmp slt i8 %i.bw, -64, !dbg !44894
  %i.by = or i1 %.sroa.011.044, %i.bx, !dbg !44896
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.019.045, i64 8, !dbg !44877
  %.sroa.019.0.val.1 = load i32, ptr %i.bt, align 4, !dbg !44880, !noundef !11
  %6 = sext i32 %.sroa.019.0.val.1 to i64, !dbg !44882 ; 2 uses
  %i.ca = icmp ugt i64 %4, %6, !dbg !44884
  call void @llvm.assume(i1 %i.ca), !dbg !44891
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 %6, !dbg !44892
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !44893, !noundef !11
  %i.cd = icmp slt i8 %i.cc, -64, !dbg !44894
  %i.ce = or i1 %i.by, %i.cd, !dbg !44896
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.019.045, i64 12, !dbg !44877
  %.sroa.019.0.val.2 = load i32, ptr %i.bz, align 4, !dbg !44880, !noundef !11
  %7 = sext i32 %.sroa.019.0.val.2 to i64, !dbg !44882 ; 2 uses
  %i.cg = icmp ugt i64 %4, %7, !dbg !44884
  call void @llvm.assume(i1 %i.cg), !dbg !44891
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 %7, !dbg !44892
  %i.ci = load i8, ptr %i.ch, align 1, !dbg !44893, !noundef !11
  %i.cj = icmp slt i8 %i.ci, -64, !dbg !44894
  %i.ck = or i1 %i.ce, %i.cj, !dbg !44896
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.019.045, i64 16, !dbg !44877 ; 2 uses
  %.sroa.019.0.val.3 = load i32, ptr %i.cf, align 4, !dbg !44880, !noundef !11
  %8 = sext i32 %.sroa.019.0.val.3 to i64, !dbg !44882 ; 2 uses
  %i.cm = icmp ugt i64 %4, %8, !dbg !44884
  call void @llvm.assume(i1 %i.cm), !dbg !44891
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 %8, !dbg !44892
  %i.co = load i8, ptr %i.cn, align 1, !dbg !44893, !noundef !11
  %i.cp = icmp slt i8 %i.co, -64, !dbg !44894
  %i.cq = or i1 %i.ck, %i.cp, !dbg !44896         ; 3 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !44864  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !44864
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !dbg !44864

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !44864
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !44864

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.sroa.019.045.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.cl, %._crit_edge.unr-lcssa ]
  %.sroa.011.044.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cq, %._crit_edge.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter, 0, !dbg !44864
  call void @llvm.assume(i1 %lcmp.mod76), !dbg !44864
  br label %.lr.ph.epil, !dbg !44864

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.019.045.epil = phi ptr [ %i.cr, %.lr.ph.epil ], [ %.sroa.019.045.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.011.044.epil = phi i1 [ %i.cw, %.lr.ph.epil ], [ %.sroa.011.044.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.019.045.epil, i64 4, !dbg !44877
  %.sroa.019.0.val.epil = load i32, ptr %.sroa.019.045.epil, align 4, !dbg !44880, !noundef !11
  %9 = sext i32 %.sroa.019.0.val.epil to i64, !dbg !44882 ; 2 uses
  %i.cs = icmp ugt i64 %4, %9, !dbg !44884
  call void @llvm.assume(i1 %i.cs), !dbg !44891
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 %9, !dbg !44892
  %i.cu = load i8, ptr %i.ct, align 1, !dbg !44893, !noundef !11
  %i.cv = icmp slt i8 %i.cu, -64, !dbg !44894
  %i.cw = or i1 %.sroa.011.044.epil, %i.cv, !dbg !44896 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !44864 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !44864
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !dbg !44864, !llvm.loop !44897

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i1 [ %i.cq, %._crit_edge.unr-lcssa ], [ %i.cw, %.lr.ph.epil ], !dbg !44896
  br i1 %.lcssa, label %bb.y, label %.critedge, !dbg !44898

.critedge:                                        ; preds = %bb.w, %._crit_edge
  store i64 18, ptr %0, align 8, !dbg !44899
  br label %bb.c, !dbg !44833

bb.y:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @65, i64 72, i1 false), !dbg !44900
  br label %bb.c, !dbg !44901
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8xECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !44903 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ], !dbg !44904, !prof !4343

bb.b:                                             ; preds = %bb.a
  store i64 18, ptr %0, align 8, !dbg !44905
  br label %bb.c, !dbg !44906

bb.c:                                             ; preds = %bb.x, %bb.y, %bb.u, %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, %.critedge, %bb.f, %bb.b
  ret void, !dbg !44908

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #50, !dbg !44909
  unreachable, !dbg !44909

bb.e:                                             ; preds = %bb.a
  %i.c = getelementptr [8 x i8], ptr %1, i64 %2, !dbg !44910 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -8, !dbg !44910
  %.val26 = load i64, ptr %i.d, align 8, !dbg !44914, !noundef !11 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !44915, !noundef !11 ; 4 uses
  %i.e = icmp ugt i64 %.val26, %4, !dbg !44917
  br i1 %i.e, label %bb.f, label %bb.g, !dbg !44917

bb.f:                                             ; preds = %bb.e
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !44921
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.236.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @71, i64 8), i64 64, i1 false), !dbg !44928
  store i64 2, ptr %0, align 8, !dbg !44921
  br label %bb.c, !dbg !44929

bb.g:                                             ; preds = %bb.e
  %i.f = icmp ult i64 %.val26, %.val, !dbg !44931
  br i1 %i.f, label %bb.h, label %bb.i, !dbg !44931, !prof !54

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %.val26, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #50, !dbg !44938
  unreachable, !dbg !44938

bb.i:                                             ; preds = %bb.g
  %i.g = sub nuw nsw i64 %.val26, %.val, !dbg !44939 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %.val, !dbg !44940 ; 6 uses
  %i.i = icmp samesign ult i64 %i.g, 64, !dbg !44944 ; 2 uses
  br i1 %i.i, label %bb.m, label %bb.j, !dbg !44944

bb.j:                                             ; preds = %bb.i
  %i.j = and i64 %i.g, 9223372036854775744, !dbg !44952
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j, !dbg !44955 ; 3 uses
  %i.l = and i64 %i.g, 63, !dbg !44958            ; 2 uses
  br label %.lr.ph.i.i, !dbg !44959

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64, !dbg !44960 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k, !dbg !44963
  br i1 %i.n, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !44965

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.j
  %.sroa.01.028.i.i = phi ptr [ %i.m, %bb.k ], [ %i.h, %bb.j ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !dbg !44966, !alias.scope !44969, !noalias !44974
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16, !dbg !44977
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.o, align 1, !dbg !44979, !alias.scope !44969, !noalias !44982
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32, !dbg !44985
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.p, align 1, !dbg !44987, !alias.scope !44969, !noalias !44990
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48, !dbg !44993
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.q, align 1, !dbg !44995, !alias.scope !44969, !noalias !44998
  %i.r = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i, !dbg !45001
  %i.s = or <2 x i64> %i.r, %.sroa.0.0.copyload.i10.i.i, !dbg !45003
  %i.t = or <2 x i64> %i.s, %.sroa.0.0.copyload.i11.i.i, !dbg !45005
  %i.u = bitcast <2 x i64> %i.t to <16 x i8>, !dbg !45007
  %i.v = icmp slt <16 x i8> %i.u, zeroinitializer, !dbg !45009
  %i.w = bitcast <16 x i1> %i.v to i16, !dbg !45009
  %i.x = icmp eq i16 %i.w, 0, !dbg !44959
  br i1 %i.x, label %bb.k, label %.loopexit, !dbg !44959

._crit_edge.i.i:                                  ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l, !dbg !45010
  %i.z = icmp samesign eq i64 %i.l, 0, !dbg !45014
  br i1 %i.z, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph63, !dbg !45018

bb.l:                                             ; preds = %.lr.ph63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.ac, i64 1, !dbg !45019 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.y, !dbg !45014
  br i1 %i.ab, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph63, !dbg !45018

.lr.ph63:                                         ; preds = %._crit_edge.i.i, %bb.l
  %i.ac = phi ptr [ %i.aa, %bb.l ], [ %i.k, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ac, align 1, !dbg !45021, !alias.scope !44969, !noalias !45022, !noundef !11
  %i.ad = icmp sgt i8 %.val.i.i.i, -1, !dbg !45025
  br i1 %i.ad, label %bb.l, label %.loopexit, !dbg !45021

bb.m:                                             ; preds = %bb.i
  %i.ae = and i64 %i.g, 56, !dbg !45028           ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ae, !dbg !45031 ; 7 uses
  %i.ag = and i64 %i.g, 7, !dbg !45034            ; 7 uses
  %.not.i2764 = icmp eq i64 %i.ae, 0, !dbg !45035
  br i1 %.not.i2764, label %._crit_edge67, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !45035

bb.n:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i66, i64 8, !dbg !45038
  %i.ai = add nsw i64 %.sroa.6.0.i65, -8, !dbg !45041 ; 2 uses
  %.not.i27 = icmp eq i64 %i.ai, 0, !dbg !45035
  br i1 %.not.i27, label %._crit_edge67, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !45035

._crit_edge67:                                    ; preds = %bb.n, %bb.m
  %i.aj = icmp samesign eq i64 %i.ag, 0, !dbg !45042
  br i1 %i.aj, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph69, !dbg !45046

bb.o:                                             ; preds = %.lr.ph69
  %i.ak = icmp samesign eq i64 %i.ag, 1, !dbg !45042
  br i1 %i.ak, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph69.1, !dbg !45046

.lr.ph69.1:                                       ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 1, !dbg !45047
  %.val.i.i.1 = load i8, ptr %i.al, align 1, !dbg !45049, !alias.scope !45050, !noalias !45051, !noundef !11
  %i.am = icmp sgt i8 %.val.i.i.1, -1, !dbg !45054
  br i1 %i.am, label %bb.p, label %.loopexit, !dbg !45049

bb.p:                                             ; preds = %.lr.ph69.1
  %i.an = icmp samesign eq i64 %i.ag, 2, !dbg !45042
  br i1 %i.an, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph69.2, !dbg !45046

.lr.ph69.2:                                       ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 2, !dbg !45047
  %.val.i.i.2 = load i8, ptr %i.ao, align 1, !dbg !45049, !alias.scope !45050, !noalias !45051, !noundef !11
  %i.ap = icmp sgt i8 %.val.i.i.2, -1, !dbg !45054
  br i1 %i.ap, label %bb.q, label %.loopexit, !dbg !45049

bb.q:                                             ; preds = %.lr.ph69.2
  %i.aq = icmp samesign eq i64 %i.ag, 3, !dbg !45042
  br i1 %i.aq, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph69.3, !dbg !45046

.lr.ph69.3:                                       ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 3, !dbg !45047
  %.val.i.i.3 = load i8, ptr %i.ar, align 1, !dbg !45049, !alias.scope !45050, !noalias !45051, !noundef !11
  %i.as = icmp sgt i8 %.val.i.i.3, -1, !dbg !45054
  br i1 %i.as, label %bb.r, label %.loopexit, !dbg !45049

bb.r:                                             ; preds = %.lr.ph69.3
  %i.at = icmp samesign eq i64 %i.ag, 4, !dbg !45042
  br i1 %i.at, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph69.4, !dbg !45046

.lr.ph69.4:                                       ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 4, !dbg !45047
  %.val.i.i.4 = load i8, ptr %i.au, align 1, !dbg !45049, !alias.scope !45050, !noalias !45051, !noundef !11
  %i.av = icmp sgt i8 %.val.i.i.4, -1, !dbg !45054
  br i1 %i.av, label %bb.s, label %.loopexit, !dbg !45049

bb.s:                                             ; preds = %.lr.ph69.4
  %i.aw = icmp samesign eq i64 %i.ag, 5, !dbg !45042
  br i1 %i.aw, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph69.5, !dbg !45046

.lr.ph69.5:                                       ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 5, !dbg !45047
  %.val.i.i.5 = load i8, ptr %i.ax, align 1, !dbg !45049, !alias.scope !45050, !noalias !45051, !noundef !11
  %i.ay = icmp sgt i8 %.val.i.i.5, -1, !dbg !45054
  br i1 %i.ay, label %bb.t, label %.loopexit, !dbg !45049

bb.t:                                             ; preds = %.lr.ph69.5
  %i.az = icmp samesign eq i64 %i.ag, 6, !dbg !45042
  br i1 %i.az, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph69.6, !dbg !45046

.lr.ph69.6:                                       ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 6, !dbg !45047
  %.val.i.i.6 = load i8, ptr %i.ba, align 1, !dbg !45049, !alias.scope !45050, !noalias !45051, !noundef !11
  %i.bb = icmp sgt i8 %.val.i.i.6, -1, !dbg !45054
  br i1 %i.bb, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit, !dbg !45049

.lr.ph69:                                         ; preds = %._crit_edge67
  %.val.i.i = load i8, ptr %i.af, align 1, !dbg !45049, !alias.scope !45050, !noalias !45051, !noundef !11
  %i.bc = icmp sgt i8 %.val.i.i, -1, !dbg !45054
  br i1 %i.bc, label %bb.o, label %.loopexit, !dbg !45049

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.m, %bb.n
  %.sroa.0.017.i66 = phi ptr [ %i.ah, %bb.n ], [ %i.h, %bb.m ] ; 2 uses
end_hunk_0
