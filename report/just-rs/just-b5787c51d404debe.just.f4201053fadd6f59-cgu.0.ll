Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11238
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 664
loop-unroll.NumUnrolled: 789
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtNtB3N_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5d_17invocation_parserNtB5X_16InvocationParser16parse_invocations0_0EE0E0EB5d_:bb.a

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i ], [ %i.be, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod120 = trunc i64 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.ac = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ae = getelementptr [16 x i8], ptr %i.an, i64 %i.ac ; 3 uses
  %i.af = load i32, ptr %i.ad, align 8, !range !52, !alias.scope !23975, !noalias !23976, !noundef !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !23975, !noalias !23976, !noundef !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !23977, !noalias !23976
  store i32 %i.af, ptr %i.ae, align 8, !alias.scope !23978, !noalias !23976
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !alias.scope !23978, !noalias !23976
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader ]
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit

bb.q:                                             ; preds = %bb.n
  %i.al = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23979), !noalias !23976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23980), !noalias !23976
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92, %bb.q
  %i.am = phi i64 [ %i.al, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92 ] ; 4 uses
  %.sroa.0.0.i.i9097101 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB1e_11collections5btree3mapINtB21_8BTreeMapcjEINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB2Y_8adapters10filter_map9FilterMapINtNtB3V_9enumerate9EnumerateINtNtB6_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5l_17invocation_parserNtB65_16InvocationParser16parse_invocations0_0EE0E0EB5l_.exit.i.thread92 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9097101 ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.ao = icmp eq i64 %i.am, 1
  br i1 %i.ao, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i
  %unroll_iter = and i64 %i.am, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new ], [ %i.be, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i ]
  %i.ap = xor i64 %.sroa.0.016.i.i, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.ar = getelementptr [16 x i8], ptr %i.an, i64 %i.ap ; 3 uses
  %i.as = load i32, ptr %i.aq, align 8, !range !52, !alias.scope !23975, !noalias !23976, !noundef !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !23975, !noalias !23976, !noundef !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !23977, !noalias !23976
  store i32 %i.as, ptr %i.ar, align 8, !alias.scope !23978, !noalias !23976
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.au, ptr %i.av, align 8, !alias.scope !23978, !noalias !23976
  %i.aw = xor i64 %.sroa.0.016.i.i, -2
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.az = getelementptr [16 x i8], ptr %i.an, i64 %i.aw ; 3 uses
  %i.ba = load i32, ptr %i.ay, align 8, !range !52, !alias.scope !23975, !noalias !23976, !noundef !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !23975, !noalias !23976, !noundef !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !23977, !noalias !23976
  store i32 %i.ba, ptr %i.az, align 8, !alias.scope !23978, !noalias !23976
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !alias.scope !23978, !noalias !23976
  %i.be = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB22_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB2Z_8adapters10filter_map9FilterMapINtNtB3W_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5m_17invocation_parserNtB66_16InvocationParser16parse_invocations0_0EE0E0EB5m_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ak, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE7reverseCskXtk6F4WjxZ_4just.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.bf = lshr i64 %.sroa.023.0, 1
  %i.bg = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bh = sub nsw i64 %factor, %i.bf
  %i.bi = add nuw nsw i64 %i.bg, %factor
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = mul i64 %i.bi, %.sroa.0.0
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bl, i1 false)
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bo, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit ] ; 4 uses
  %i.bo = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !28
  %.not28 = icmp ult i8 %i.bq, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bs, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bo
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !28 ; 3 uses
  %i.bv = lshr i64 %i.bu, 1                       ; 8 uses
  %i.bw = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bx = add nuw i64 %i.bv, %i.bw                ; 4 uses
  %i.by = sub i64 %.sroa.09.0, %i.bx
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.by ; 6 uses
  %i.ca = icmp samesign ugt i64 %i.bx, %3
  %i.cb = trunc i64 %.sroa.023.159 to i1
  %i.cc = or i64 %i.bu, %.sroa.023.159
  %i.cd = trunc i64 %i.cc to i1
  %or.cond3.i = or i1 %i.ca, %i.cd
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ce = trunc i64 %i.bu to i1
  br i1 %i.ce, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cf = shl nuw nsw i64 %i.bx, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cb, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cg = or i64 %i.bv, 1
  %i.ch = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %i.bz, i64 noundef range(i64 0, 576460752303423488) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23962
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bv
  %i.cm = or i64 %i.bw, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %i.cl, i64 noundef range(i64 0, 576460752303423488) %i.bw, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23962
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23982)
  %i.cr = icmp eq i64 %i.bv, 0
  %i.cs = icmp eq i64 %i.bw, 0
  %or.cond.i = or i1 %i.cs, %i.cr
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5e_17invocation_parserNtB5Y_16InvocationParser16parse_invocations0_0EE0E0EB5e_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.ct = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ct, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5e_17invocation_parserNtB5Y_16InvocationParser16parse_invocations0_0EE0E0EB5e_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bv ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bv, %i.bw  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cu, ptr %i.bz
  %i.cv = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cv, i1 false), !alias.scope !23983
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cx = phi ptr [ %i.dh, %.preheader.i ], [ %i.cw, %.critedge.i ]
  %i.cy = phi ptr [ %i.df, %.preheader.i ], [ %i.cu, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.db, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -16 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 -16 ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %.val.i.i = load i32, ptr %i.da, align 4, !range !52, !alias.scope !23982, !noalias !23984, !noundef !28
  %.val12.i.i = load i32, ptr %i.cz, align 4, !range !52, !alias.scope !23981, !noalias !23984, !noundef !28
  %i.dc = icmp samesign ult i32 %.val.i.i, %.val12.i.i ; 3 uses
  %..i17.i = select i1 %i.dc, ptr %i.cz, ptr %i.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !23983, !noalias !23984
  %i.dd = xor i1 %i.dc, true
  %i.de = zext i1 %i.dd to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.de ; 3 uses
  %i.dg = zext i1 %i.dc to i64
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dg ; 3 uses
  %i.di = icmp eq ptr %i.df, %i.bz
  %i.dj = icmp eq ptr %i.dh, %2
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTcjEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapcjEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_9enumerate9EnumerateINtNtB9_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5G_17invocation_parserNtB6q_16InvocationParser16parse_invocations0_0EE0E0EB5G_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dk = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.bz, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cu, %.critedge.i ] ; 3 uses
  %i.dl = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 4, !range !52, !alias.scope !23981, !noalias !23985, !noundef !28
  %.val.i19.i = load i32, ptr %i.dl, align 4, !range !52, !alias.scope !23982, !noalias !23985, !noundef !28
  %i.dm = icmp samesign ult i32 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dn = xor i1 %i.dm, true
  %.sroa.05.0.i.i = select i1 %i.dm, ptr %.sroa.0.02.i.i, ptr %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !23983, !noalias !23985
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.do ; 3 uses
  %i.dq = zext i1 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dt = icmp ne ptr %i.dp, %i.cw
  %i.du = icmp ne ptr %i.dr, %i.m
  %or.cond.i20.i = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTcjEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapcjEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_9enumerate9EnumerateINtNtB9_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5G_17invocation_parserNtB6q_16InvocationParser16parse_invocations0_0EE0E0EB5G_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTcjEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapcjEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_9enumerate9EnumerateINtNtB9_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5G_17invocation_parserNtB6q_16InvocationParser16parse_invocations0_0EE0E0EB5G_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.df, %.preheader.i ], [ %i.ds, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dh, %.preheader.i ], [ %i.cw, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dp, %.lr.ph.i.i ] ; 2 uses
  %i.dv = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dx, i1 false), !alias.scope !23983, !noalias !23986
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5e_17invocation_parserNtB5Y_16InvocationParser16parse_invocations0_0EE0E0EB5e_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5e_17invocation_parserNtB5Y_16InvocationParser16parse_invocations0_0EE0E0EB5e_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateTcjEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapcjEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtNtB4g_9enumerate9EnumerateINtNtB9_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5G_17invocation_parserNtB6q_16InvocationParser16parse_invocations0_0EE0E0EB5G_.exit.i
  %i.dy = shl nuw nsw i64 %i.bx, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB32_8adapters10filter_map9FilterMapINtNtB3Z_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5p_17invocation_parserNtB69_16InvocationParser16parse_invocations0_0EE0E0EB5p_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5e_17invocation_parserNtB5Y_16InvocationParser16parse_invocations0_0EE0E0EB5e_.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtNtB3O_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5e_17invocation_parserNtB5Y_16InvocationParser16parse_invocations0_0EE0E0EB5e_.exit ], [ %i.cf, %bb.u ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bo, 1
  br i1 %i.ea, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eb = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #73, !inline_history !23962
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB15_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef nonnull readnone captures(none) %6) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 8 uses
  %i.n = alloca [64 x i8], align 8                ; 8 uses
  %i.o = alloca [64 x i8], align 8                ; 8 uses
  %i.p = alloca [64 x i8], align 8                ; 8 uses
  %i.q = alloca [64 x i8], align 8                ; 4 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = icmp samesign ult i64 %1, 33
  br i1 %i.v, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph118 = phi ptr [ %i.gx, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph117 = phi i64 [ %i.gi, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph116 = phi i32 [ %i.dd, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph115 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.w = getelementptr i8, ptr %.sroa.0.0.ph118, i64 8
  %i.x = getelementptr i8, ptr %.sroa.0.0.ph118, i64 16
  %i.y = ptrtoint ptr %.sroa.0.0.ph118 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph115, null
  %i.z = getelementptr i8, ptr %.sroa.028.0.ph115, i64 8
  %i.aa = getelementptr i8, ptr %.sroa.028.0.ph115, i64 16
  %i.ab = icmp eq i32 %.sroa.025.0.ph116, 0
  br i1 %i.ab, label %.lr.ph._crit_edge, label %.lr.ph290

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit
  %i.ac = icmp eq i32 %i.dd, 0
  br i1 %i.ac, label %.lr.ph._crit_edge, label %.lr.ph290

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit, %bb.a
  %.sroa.0.0.ph.lcssa109 = phi ptr [ %.sroa.0.0.ph118, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit ], [ %0, %bb.a ], [ %i.gx, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaKJjC64KgbL_3std4path7PathBuf12split_at_mutCskXtk6F4WjxZ_4just.exit ], [ %1, %bb.a ], [ %i.gi, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24029)
  call void @llvm.experimental.noalias.scope.decl(metadata !24030)
  %i.ad = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.ad, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB1s_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.ae = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.af = icmp samesign ult i64 %3, %i.ae
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = lshr i64 %.sroa.16.0.lcssa, 1           ; 6 uses
  %i.ah = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph.lcssa109, i64 %i.ag ; 3 uses
  %i.aj = getelementptr [24 x i8], ptr %2, i64 %i.ag ; 8 uses
  br i1 %i.ah, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB19_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa109, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB19_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noundef %i.ai, ptr noundef %i.aj)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.ph.lcssa109, i64 24, i1 false), !alias.scope !24031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !alias.scope !24031
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.ak = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.ag ; 2 uses
  %i.al = icmp samesign ult i64 %.sroa.0.0.i, %i.ag
  br i1 %i.al, label %.noexc37.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.i, %bb.h
  %i.am = icmp samesign ult i64 %.sroa.0.0.i, %i.ak
  br i1 %i.am, label %.noexc37.1.i, label %.loopexit4.1.i

.noexc37.1.i:                                     ; preds = %.loopexit4.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.1.i
  %.sroa.05.011.1.i = phi i64 [ %i.bb, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.1.i ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 4 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.sroa.05.011.1.i
  %.idx316 = mul nuw nsw i64 %.sroa.05.011.1.i, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx316 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !alias.scope !24031
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val11.i.1.i = load ptr, ptr %i.ap, align 8, !alias.scope !24030, !nonnull !28, !noundef !28 ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  %.val12.i.1.i = load i64, ptr %i.aq, align 8, !alias.scope !24030, !noundef !28 ; 4 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 -16
  %.val13.i.1.i = load ptr, ptr %i.ar, align 8, !alias.scope !24030 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ao, i64 -8
  %.val14.i.1.i = load i64, ptr %i.as, align 8, !alias.scope !24030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !24031
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.1.i, i64 noundef %.val12.i.1.i), !noalias !24031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !24031
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.1.i) ]
  call void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val13.i.1.i, i64 noundef %.val14.i.1.i), !noalias !24031
  %i.at = call noundef range(i8 -1, 2) i8 @_RNvNtCsaKJjC64KgbL_3std4path18compare_components(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.o), !noalias !24031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !24031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !24031
  %i.au = icmp slt i8 %i.at, 0
  br i1 %i.au, label %bb.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsaKJjC64KgbL_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit.1.i

bb.i:                                             ; preds = %.noexc37.1.i
  %.sroa.015.0.copyload.i.1.i = load i64, ptr %i.ao, align 8, !alias.scope !24030 ; 2 uses
  %.sroa.0.0.i36.1.i305 = getelementptr inbounds i8, ptr %i.ao, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i36.1.i305, i64 24, i1 false), !alias.scope !24030
  %i.av = icmp eq i64 %.sroa.05.011.1.i, 1
  br i1 %i.av, label %._crit_edge310, label %.lr.ph309

bb.j:                                             ; preds = %bb.k
  %.sroa.0.0.i36.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1.i307, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i36.1.i307, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i36.1.i, i64 24, i1 false), !alias.scope !24030
  %i.aw = icmp eq ptr %.sroa.0.0.i36.1.i, %i.aj
  br i1 %i.aw, label %._crit_edge310, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i36.1.i307 = phi ptr [ %.sroa.0.0.i36.1.i, %bb.j ], [ %.sroa.0.0.i36.1.i305, %bb.i ] ; 6 uses
  %.sroa.5.0.i.1.i306 = phi ptr [ %.sroa.0.0.i36.1.i307, %bb.j ], [ %i.ao, %bb.i ] ; 4 uses
  %i.ax = getelementptr i8, ptr %.sroa.5.0.i.1.i306, i64 -40
  %.val9.i.1.i = load ptr, ptr %i.ax, align 8, !alias.scope !24030 ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.5.0.i.1.i306, i64 -32
  %.val10.i.1.i = load i64, ptr %i.ay, align 8, !alias.scope !24030
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !24031
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.1.i, i64 noundef %.val12.i.1.i)
          to label %.noexc.i.1.i unwind label %.loopexit.split-lp25.i, !noalias !24031
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTRejENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1i_11collections5btree3mapINtB25_8BTreeMapB16_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB35_8adapters10filter_map9FilterMapINtNtB42_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5s_17invocation_parserNtB6c_16InvocationParser16parse_invocations_0EE0E0EB5s_:bb.a
bb.am:                                            ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTRejENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1M_11collections5btree3mapINtB2z_8BTreeMapB1e_jEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3z_8adapters10filter_map9FilterMapINtNtB4w_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5W_17invocation_parserNtB6G_16InvocationParser16parse_invocations_0EE0E0E0EB5W_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i56, i64 noundef %.sroa.16.0107258, i64 noundef %.sroa.16.0107258, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #74
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph127 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.jm, %.outer ] ; 22 uses
  %.sroa.16.0.ph126 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.ix, %.outer ] ; 2 uses
  %.sroa.025.0.ph125 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.ee, %.outer ] ; 2 uses
  %.sroa.028.0.ph124 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph127 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph124, null
  %i.e = icmp eq i32 %.sroa.025.0.ph125, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph295

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit
  %i.f = icmp eq i32 %i.ee, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph295

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit, %bb.a
  %.sroa.0.0.ph.lcssa118 = phi ptr [ %.sroa.0.0.ph127, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit ], [ %0, %bb.a ], [ %i.jm, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit ], [ %1, %bb.a ], [ %i.ix, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26463)
  call void @llvm.experimental.noalias.scope.decl(metadata !26464)
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1E_11collections5btree3mapINtB2r_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB3o_8adapters10filter_map9FilterMapINtNtB4l_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5L_17invocation_parserNtB6v_16InvocationParser16parse_invocations0_0EE0E0EB5L_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.i = icmp samesign ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1l_11collections5btree3mapINtB28_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB35_8adapters10filter_map9FilterMapINtNtB42_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5s_17invocation_parserNtB6c_16InvocationParser16parse_invocations0_0EE0E0EB5s_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr noundef nonnull align 8 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.j
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1l_11collections5btree3mapINtB28_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB35_8adapters10filter_map9FilterMapINtNtB42_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5s_17invocation_parserNtB6c_16InvocationParser16parse_invocations0_0EE0E0EB5s_(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa118, i64 16
  %.val8.i.i = load i32, ptr %i.q, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val9.i.i = load i32, ptr %.sroa.0.0.ph.lcssa118, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.r = icmp samesign ult i32 %.val8.i.i, %.val9.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa118, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa118, i64 32
  %.val6.i.i = load i32, ptr %i.s, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val7.i.i = load i32, ptr %i.t, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.u = icmp samesign ult i32 %.val6.i.i, %.val7.i.i ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ac ; 3 uses
  %.val4.i.i = load i32, ptr %i.ab, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val5.i.i = load i32, ptr %i.w, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.ae = icmp samesign ult i32 %.val4.i.i, %.val5.i.i ; 3 uses
  %.val2.i.i = load i32, ptr %i.ad, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val3.i.i = load i32, ptr %i.z, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.af = icmp samesign ult i32 %.val2.i.i, %.val3.i.i ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !28
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !28
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !28
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !28 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !28
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !28 ; 3 uses
  %.val.i.i = load i32, ptr %i.al, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val1.i.i = load i32, ptr %i.aj, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.am = icmp samesign ult i32 %.val.i.i, %.val1.i.i ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !28
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !alias.scope !26465
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !26465
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !26465
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !26465
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.j ; 8 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.val8.i30.i = load i32, ptr %i.au, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val9.i31.i = load i32, ptr %i.as, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.av = icmp samesign ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %.val6.i32.i = load i32, ptr %i.aw, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val7.i33.i = load i32, ptr %i.ax, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.ay = icmp samesign ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.az = zext i1 %i.av to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.az ; 3 uses
  %i.bb = xor i1 %i.av, true
  %i.bc = zext i1 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.ay, i64 3, i64 2
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.be ; 4 uses
  %i.bg = select i1 %i.ay, i64 2, i64 3
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bg ; 3 uses
  %.val4.i34.i = load i32, ptr %i.bf, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val5.i35.i = load i32, ptr %i.ba, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.bi = icmp samesign ult i32 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %.val2.i36.i = load i32, ptr %i.bh, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val3.i37.i = load i32, ptr %i.bd, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.bj = icmp samesign ult i32 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.bk = select i1 %i.bi, ptr %i.bf, ptr %i.ba, !unpredictable !28
  %i.bl = select i1 %i.bj, ptr %i.bd, ptr %i.bh, !unpredictable !28
  %i.bm = select i1 %i.bj, ptr %i.bf, ptr %i.bd, !unpredictable !28
  %i.bn = select i1 %i.bi, ptr %i.ba, ptr %i.bm, !unpredictable !28 ; 3 uses
  %i.bo = select i1 %i.bi, ptr %i.bd, ptr %i.bf, !unpredictable !28
  %i.bp = select i1 %i.bj, ptr %i.bh, ptr %i.bo, !unpredictable !28 ; 3 uses
  %.val.i38.i = load i32, ptr %i.bp, align 4, !range !52, !alias.scope !26463, !noundef !28
  %.val1.i39.i = load i32, ptr %i.bn, align 4, !range !52, !alias.scope !26463, !noundef !28
  %i.bq = icmp samesign ult i32 %.val.i38.i, %.val1.i39.i ; 2 uses
  %i.br = select i1 %i.bq, ptr %i.bp, ptr %i.bn, !unpredictable !28
  %i.bs = select i1 %i.bq, ptr %i.bn, ptr %i.bp, !unpredictable !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !alias.scope !26465
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !alias.scope !26465
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !alias.scope !26465
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !alias.scope !26465
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa118, i64 16, i1 false), !alias.scope !26465
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.j
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !alias.scope !26465
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.by = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.j ; 2 uses
  %i.bz = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.bz, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i, %bb.j
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.j
  %i.cb = getelementptr [16 x i8], ptr %2, i64 %i.j ; 6 uses
  %i.cc = icmp samesign ult i64 %.sroa.0.0.i, %i.by
  br i1 %i.cc, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cn, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %.sroa.05.08.1.i
  %.idx313 = shl nuw nsw i64 %.sroa.05.08.1.i, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx313 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !alias.scope !26465
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16 ; 3 uses
  %.val9.i40.1.i = load i32, ptr %i.ce, align 8, !range !52, !alias.scope !26464, !noundef !28 ; 3 uses
  %.val10.i.1.i = load i32, ptr %i.cf, align 8, !range !52, !alias.scope !26464, !noundef !28
  %i.cg = icmp samesign ult i32 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.cg, label %bb.k, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.1.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !26464, !noundef !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false), !alias.scope !26464
  %i.cj = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cj, label %._crit_edge309, label %.lr.ph308

bb.l:                                             ; preds = %.lr.ph308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i306, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !alias.scope !26464
  %i.ck = icmp eq ptr %i.cl, %i.cb
  br i1 %i.ck, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i41.1.i306 = phi ptr [ %i.cl, %bb.l ], [ %i.cf, %bb.k ] ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i306, i64 -16 ; 4 uses
  %.val8.i42.1.i = load i32, ptr %i.cl, align 4, !range !52, !alias.scope !26464, !noundef !28
  %i.cm = icmp samesign ult i32 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.cm, label %bb.l, label %._crit_edge309

._crit_edge309:                                   ; preds = %bb.l, %.lr.ph308, %bb.k
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cb, %bb.k ], [ %i.cb, %bb.l ], [ %.sroa.0.0.i41.1.i306, %.lr.ph308 ] ; 2 uses
  store i32 %.val9.i40.1.i, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !26464, !noalias !26466
  %.sroa.45.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1.i, i64 8
  store i64 %i.ci, ptr %.sroa.45.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !26464, !noalias !26466
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.1.i: ; preds = %._crit_edge309, %.lr.ph.1.i
  %i.cn = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cn, %i.by
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.1.i, %.loopexit.i
  %i.co = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.co
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.co
  %i.cr = getelementptr i8, ptr %i.cb, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cs = getelementptr i8, ptr %i.dh, i64 16     ; 2 uses
  %i.ct = getelementptr i8, ptr %i.dg, i64 16
  %i.cu = and i64 %.sroa.16.0.lcssa, 1
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %bb.n, label %bb.m

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa118, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.cw, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dc, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.cb, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.cq, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cp, %.loopexit.1.i ] ; 2 uses
  %i.cw = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !range !52, !alias.scope !26467, !noundef !28
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !range !52, !alias.scope !26467, !noundef !28
  %i.cx = icmp samesign ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %i.cx, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.cy = xor i1 %i.cx, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !26465, !noalias !26468
  %i.cz = zext i1 %i.cx to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i.i, i64 %i.cz ; 4 uses
  %i.db = zext i1 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i.i, i64 %i.db ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !range !52, !alias.scope !26467, !noundef !28
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !range !52, !alias.scope !26467, !noundef !28
  %i.de = icmp samesign ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.de, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.df = xor i1 %i.de, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !26465, !noalias !26469
  %.neg.i.i.i = sext i1 %i.df to i64
  %i.dg = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.de to i64
  %i.dh = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.cw, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.dj = icmp ult ptr %i.dc, %i.cs               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dj, ptr %i.dc, ptr %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !26465
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dk
  %i.dm = xor i1 %i.dj, true
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dn
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.da, %._crit_edge.i.i ], [ %i.do, %bb.m ]
  %.sroa.06.1.i.i = phi ptr [ %i.dc, %._crit_edge.i.i ], [ %i.dl, %bb.m ]
  %i.dp = icmp ne ptr %.sroa.06.1.i.i, %i.cs
  %i.dq = icmp ne ptr %.sroa.011.1.i.i, %i.ct
  %or.cond.i.i = select i1 %i.dp, i1 true, i1 %i.dq, !prof !46
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1E_11collections5btree3mapINtB2r_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB3o_8adapters10filter_map9FilterMapINtNtB4l_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5L_17invocation_parserNtB6v_16InvocationParser16parse_invocations0_0EE0E0EB5L_.exit, !prof !46

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #74
          to label %.noexc.i unwind label %bb.p, !noalias !26465

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr nonnull align 8 %2, i64 %i.ds, i1 false), !alias.scope !26465, !noalias !26470
  resume { ptr, i32 } %i.dr

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ed, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 4
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false), !alias.scope !26465
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -16 ; 3 uses
  %.val9.i40.i = load i32, ptr %i.du, align 8, !range !52, !alias.scope !26464, !noundef !28 ; 3 uses
  %.val10.i.i = load i32, ptr %i.dv, align 8, !range !52, !alias.scope !26464, !noundef !28
  %i.dw = icmp samesign ult i32 %.val9.i40.i, %.val10.i.i
  br i1 %i.dw, label %bb.q, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !26464, !noundef !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !alias.scope !26464
  %i.dz = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dz, label %._crit_edge302, label %.lr.ph301

bb.r:                                             ; preds = %.lr.ph301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i299, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !alias.scope !26464
  %i.ea = icmp eq ptr %i.eb, %2
  br i1 %i.ea, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.q, %bb.r
  %.sroa.0.0.i41.i299 = phi ptr [ %i.eb, %bb.r ], [ %i.dv, %bb.q ] ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i299, i64 -16 ; 4 uses
  %.val8.i42.i = load i32, ptr %i.eb, align 4, !range !52, !alias.scope !26464, !noundef !28
  %i.ec = icmp samesign ult i32 %.val9.i40.i, %.val8.i42.i
  br i1 %i.ec, label %bb.r, label %._crit_edge302

._crit_edge302:                                   ; preds = %bb.r, %.lr.ph301, %bb.q
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %bb.q ], [ %2, %bb.r ], [ %.sroa.0.0.i41.i299, %.lr.ph301 ] ; 2 uses
  store i32 %.val9.i40.i, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !26464, !noalias !26466
  %.sroa.45.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.i, i64 8
  store i64 %i.dy, ptr %.sroa.45.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !26464, !noalias !26466
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i: ; preds = %._crit_edge302, %.lr.ph.i
  %i.ed = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ed, %i.j
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0120.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtNtB3N_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5d_17invocation_parserNtB5X_16InvocationParser16parse_invocations0_0EE0E0EB5d_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph127, i64 noundef %.sroa.16.0120.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1E_11collections5btree3mapINtB2r_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB3o_8adapters10filter_map9FilterMapINtNtB4l_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5L_17invocation_parserNtB6v_16InvocationParser16parse_invocations0_0EE0E0EB5L_.exit

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0119294 = phi i32 [ %i.ee, %bb.b ], [ %.sroa.025.0.ph125, %.lr.ph ]
  %.sroa.16.0120293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ] ; 21 uses
  %i.ee = add i32 %.sroa.025.0119294, -1          ; 4 uses
  %i.ef = lshr i64 %.sroa.16.0120293, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ef, 6
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ef, 112
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx2.i ; 3 uses
  %i.ei = icmp samesign ult i64 %.sroa.16.0120293, 64
  br i1 %i.ei, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations0_0EE0E0EB5g_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph295
  %i.ej = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB30_8adapters10filter_map9FilterMapINtNtB3X_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5n_17invocation_parserNtB67_16InvocationParser16parse_invocations0_0EE0E0EB5n_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph127, ptr noundef readonly %i.eg, ptr noundef readonly %i.eh, i64 noundef %i.ef)
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations0_0EE0E0EB5g_.exit.i: ; preds = %.lr.ph295
  %.val6.i = load i32, ptr %.sroa.0.0.ph127, align 4, !range !52, !alias.scope !26471, !noundef !28 ; 2 uses
  %.val7.i = load i32, ptr %i.eg, align 4, !range !52, !alias.scope !26471, !noundef !28 ; 2 uses
  %i.ek = icmp samesign ult i32 %.val6.i, %.val7.i ; 2 uses
  %.val5.i = load i32, ptr %i.eh, align 4, !range !52, !alias.scope !26471, !noundef !28 ; 2 uses
  %i.el = icmp samesign ult i32 %.val6.i, %.val5.i
  %i.em = xor i1 %i.ek, %i.el
  %i.en = icmp samesign ult i32 %.val7.i, %.val5.i
  %i.eo = xor i1 %i.ek, %i.en
  %..i.i = select i1 %i.eo, ptr %i.eh, ptr %i.eg
  %.sroa.0.0.i.i = select i1 %i.em, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1E_11collections5btree3mapINtB2r_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB3o_8adapters10filter_map9FilterMapINtNtB4l_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5L_17invocation_parserNtB6v_16InvocationParser16parse_invocations0_0EE0E0EB5L_.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations0_0EE0E0EB5g_.exit.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations0_0EE0E0EB5g_.exit.i ], [ %i.ej, %bb.s ]
  %i.ep = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.eq = sub nuw i64 %i.ep, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.eq, 4        ; 3 uses
  %i.er = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.eq ; 6 uses
  %i.et = load i32, ptr %i.es, align 8            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  store i32 %i.et, ptr %i.a, align 8
  store i64 %i.ev, ptr %i.c, align 8
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph124, align 8, !range !52, !noundef !28
  %i.ew = icmp ult i32 %.sroa.028.0.val, %i.et
  br i1 %i.ew, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !26472)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83, label %bb.x, label %bb.w, !prof !46

bb.w:                                             ; preds = %bb.v
  %i.ex = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.aa, %bb.w
  %.sroa.43.0.i = phi ptr [ %i.ex, %bb.w ], [ %i.gk, %bb.aa ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.aa ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.w ], [ %i.gm, %bb.aa ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.w ], [ %.sroa.16.0120293, %bb.aa ] ; 3 uses
  %i.ey = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.ey ; 2 uses
  %i.fa = icmp ult ptr %.sroa.9.0.i, %i.ez
  br i1 %i.fa, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.y
  %.val22.i = load i32, ptr %i.es, align 8, !range !52, !alias.scope !26473, !noundef !28 ; 4 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i40 ], [ %i.fy, %bb.z ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i40 ], [ %i.fx, %bb.z ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i40 ], [ %i.fu, %bb.z ] ; 4 uses
  %.val21.i = load i32, ptr %.sroa.9.131.i, align 4, !range !52, !alias.scope !26473, !noundef !28
  %i.fb = icmp samesign ult i32 %.val21.i, %.val22.i ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fb, ptr %2, ptr %i.fc
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !26474, !noalias !26475
  %i.fe = zext i1 %i.fb to i64
  %i.ff = add i64 %.sroa.27.130.i, %i.fe          ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val19.i = load i32, ptr %i.fg, align 8, !range !52, !alias.scope !26473, !noundef !28
  %i.fh = icmp samesign ult i32 %.val19.i, %.val22.i ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.fh, ptr %2, ptr %i.fi
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false), !alias.scope !26474, !noalias !26476
  %i.fk = zext i1 %i.fh to i64
  %i.fl = add i64 %i.ff, %i.fk                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 2 uses
  %.val17.i = load i32, ptr %i.fm, align 8, !range !52, !alias.scope !26473, !noundef !28
  %i.fn = icmp samesign ult i32 %.val17.i, %.val22.i ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.fn, ptr %2, ptr %i.fo
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !alias.scope !26474, !noalias !26477
  %i.fq = zext i1 %i.fn to i64
  %i.fr = add i64 %i.fl, %i.fq                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48 ; 2 uses
  %.val15.i = load i32, ptr %i.fs, align 8, !range !52, !alias.scope !26473, !noundef !28
  %i.ft = icmp samesign ult i32 %.val15.i, %.val22.i ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.ft, ptr %2, ptr %i.fu
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i64 16, i1 false), !alias.scope !26474, !noalias !26478
  %i.fw = zext i1 %i.ft to i64
  %i.fx = add i64 %i.fr, %i.fw                    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.fz = icmp ult ptr %i.fy, %i.ez
  br i1 %i.fz, label %bb.z, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.fu, %bb.z ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.fx, %bb.z ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.fy, %bb.z ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.gb = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ga
  br i1 %i.gb, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.ge, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gh, %.lr.ph38.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gi, %.lr.ph38.i ] ; 2 uses
  %i.gc = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0120293
  br i1 %i.gc, label %bb.ab, label %bb.aa

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.gi, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.gh, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.ge, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !range !52, !alias.scope !26473, !noundef !28
  %.val14.i = load i32, ptr %i.es, align 8, !range !52, !alias.scope !26473, !noundef !28
  %i.gd = icmp samesign ult i32 %.val.i, %.val14.i ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.gd, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !26474, !noalias !26479
  %i.gg = zext i1 %i.gd to i64
  %i.gh = add i64 %.sroa.27.235.i, %i.gg          ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.gj = icmp ult ptr %i.gi, %i.ga
  br i1 %i.gj, label %.lr.ph38.i, label %._crit_edge39.i

bb.aa:                                            ; preds = %._crit_edge39.i
  %i.gk = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !26474, !noalias !26480
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.y

bb.ab:                                            ; preds = %._crit_edge39.i
  %i.gn = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.gn, i1 false), !alias.scope !26474
  %i.go = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ab
  %i.gp = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.go, 1
  %i.gq = icmp eq i64 %.sroa.16.0120293, %.neg
  br i1 %i.gq, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.go, -2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.gu, %bb.ac ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.ac ]
  %i.gr = xor i64 %.sroa.07.043.i, -1
  %i.gs = getelementptr [16 x i8], ptr %i.ex, i64 %i.gr
  %i.gt = getelementptr [16 x i8], ptr %i.gp, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !alias.scope !26474
  %i.gu = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.gv = xor i64 %.sroa.07.043.i, -2
  %i.gw = getelementptr [16 x i8], ptr %i.ex, i64 %i.gv
  %i.gx = getelementptr [16 x i8], ptr %i.gp, i64 %.sroa.07.043.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !alias.scope !26474
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ac

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.gu, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod379 = trunc i64 %i.go to i1
  call void @llvm.assume(i1 %lcmp.mod379)
  %i.gz = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.ha = getelementptr [16 x i8], ptr %i.ex, i64 %i.gz
  %i.hb = getelementptr [16 x i8], ptr %i.gp, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i64 16, i1 false), !alias.scope !26474
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ab
  %i.hc = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.hc, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0120293
  br i1 %.not.i41, label %bb.ae, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit, !prof !44

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @786, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @390) #74, !noalias !26481
end_hunk_1
