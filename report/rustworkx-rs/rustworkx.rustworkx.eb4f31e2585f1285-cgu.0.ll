Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34142
  store ptr %i.i, ptr %i.hc, align 8, !noalias !34142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34143
  store i64 0, ptr %i.d, align 8, !noalias !34144
  store i64 %.val3.i199, ptr %.sroa.5367.0..sroa_idx368, align 8, !noalias !34144
  store i64 %.val5.i203, ptr %.sroa.6370.0..sroa_idx371, align 8, !noalias !34144
  store i64 %.val4.i200, ptr %.sroa.6370.sroa.4.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store i64 %.val6.i202, ptr %.sroa.6370.sroa.5.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store ptr %i.cg, ptr %.sroa.6370.sroa.6.0..sroa.6370.0..sroa_idx371.sroa_idx, align 8, !noalias !34144
  store i64 1, ptr %i.hd, align 8, !noalias !34143
  %i.ho = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 %i.hf)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EEB40_(i64 noundef %.val3.i199, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34145)
  call void @llvm.experimental.noalias.scope.decl(metadata !34146)
  call void @llvm.experimental.noalias.scope.decl(metadata !34147)
  %i.hp = load i64, ptr %i.hg, align 8, !alias.scope !34148, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34148
  %i.hq = load ptr, ptr %i.i, align 8, !alias.scope !34148, !nonnull !56, !noundef !56
  %i.hr = shl nuw i64 %i.hp, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34148
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond653.not = icmp eq i64 %i.hi, %i.r
  br i1 %exitcond653.not, label %.loopexit470, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body195
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph541, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0540 = phi i64 [ 0, %.lr.ph541 ], [ %i.ht, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.ht = add nuw i64 %.sroa.059.0540, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.059.0540, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.k, align 8
  store i64 %.sroa.059.0540, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc149, %bb.bc
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34149)
  call void @llvm.experimental.noalias.scope.decl(metadata !34150)
  call void @llvm.experimental.noalias.scope.decl(metadata !34151)
  %i.hv = load i64, ptr %i.gy, align 8, !alias.scope !34152, !noundef !56 ; 2 uses
  %.not.i.i.i135 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i135, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136: ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !34152
  %i.hw = load ptr, ptr %i.m, align 8, !alias.scope !34152, !nonnull !56, !noundef !56
  %i.hx = shl nuw i64 %i.hv, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34152
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !noalias !34153
  store ptr %i.m, ptr %i.gt, align 8, !noalias !34153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34154
  store i64 0, ptr %i.gu, align 8, !noalias !34155
  store <2 x i64> %i.hb, ptr %.sroa.10349.56..sroa_idx350, align 8, !noalias !34155
  store i64 %i.r, ptr %.sroa.11352.sroa.4.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store i64 %.sroa.25.0, ptr %.sroa.11352.sroa.5.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store ptr %.sroa.14.0, ptr %.sroa.11352.sroa.6.0..sroa.11352.56..sroa_idx353.sroa_idx, align 8, !noalias !34155
  store i64 0, ptr %i.b, align 8, !noalias !34156
  store i64 %.val3.i199, ptr %.sroa.5341.0..sroa_idx342, align 8, !noalias !34156
  store i64 %.val5.i203, ptr %.sroa.6344.0..sroa_idx345, align 8, !noalias !34156
  store i64 %.val4.i200, ptr %.sroa.6344.sroa.4.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store i64 %.val6.i202, ptr %.sroa.6344.sroa.5.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store ptr %i.cg, ptr %.sroa.6344.sroa.6.0..sroa.6344.0..sroa_idx345.sroa_idx, align 8, !noalias !34156
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34157
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34158
  %i.hy = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc149 unwind label %bb.bb

.noexc149:                                        ; preds = %bb.bc
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.gx)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4H_(i64 noundef %i.gv, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34159)
  call void @llvm.experimental.noalias.scope.decl(metadata !34160)
  call void @llvm.experimental.noalias.scope.decl(metadata !34161)
  %i.hz = load i64, ptr %i.gy, align 8, !alias.scope !34162, !noundef !56 ; 2 uses
  %.not.i.i.i151 = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i.i151, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152: ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !34162
  %i.ia = load ptr, ptr %i.m, align 8, !alias.scope !34162, !nonnull !56, !noundef !56
  %i.ib = shl nuw i64 %i.hz, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ia, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34162
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond652.not = icmp eq i64 %i.ht, %i.r
  br i1 %exitcond652.not, label %.loopexit470, label %bb.az

bb.be:                                            ; preds = %.lr.ph605, %.loopexit469.split.us
  %.sroa.053.0604 = phi i64 [ 0, %.lr.ph605 ], [ %i.ie, %.loopexit469.split.us ] ; 8 uses
  %i.ic = shl i64 %.sroa.053.0604, 3              ; 2 uses
  %scevgep43 = getelementptr i8, ptr %i.cg, i64 %i.ic
  %scevgep44 = getelementptr i8, ptr %i.gg, i64 %i.ic
  %i.id = mul i64 %i.ge, %.sroa.053.0604          ; 2 uses
  %scevgep45 = getelementptr i8, ptr %i.cg, i64 %i.id
  %scevgep46 = getelementptr i8, ptr %i.gi, i64 %i.id
  %i.ie = add nuw i64 %.sroa.053.0604, 1          ; 2 uses
  %i.if = mul i64 %.val6.i202, %.sroa.053.0604
  %i.ig = getelementptr [8 x i8], ptr %i.cg, i64 %i.if ; 2 uses
  %i.ih = mul i64 %.sroa.053.0604, %.val5.i203    ; 5 uses
  %i.ii = mul i64 %.sroa.053.0604, %.sroa.25.0
  %i.ij = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.ii
  %exitcond666.not = icmp eq i64 %.sroa.053.0604, %.val4.i200
  br i1 %exitcond666.not, label %.split553.us.invoke, label %.split557

.split557:                                        ; preds = %bb.be
  %i.ik = icmp ult i64 %.sroa.053.0604, %.val3.i199
  %.fr = freeze i1 %i.ik
  br i1 %.fr, label %.split557.split.us, label %.split553.us.invoke

.split557.split.us:                               ; preds = %.split557
  br i1 %.not67, label %.split557.split.us.split.us.preheader, label %.split557.split.us.split

.split557.split.us.split.us.preheader:            ; preds = %.split557.split.us
  %i.il = insertelement <2 x ptr> poison, ptr %scevgep44, i64 0
  %i.im = insertelement <2 x ptr> %i.il, ptr %scevgep46, i64 1
  %i.in = icmp ult <2 x ptr> %i.gn, %i.im
  %i.io = insertelement <2 x ptr> poison, ptr %scevgep43, i64 0
  %i.ip = insertelement <2 x ptr> %i.io, ptr %scevgep45, i64 1
  %i.iq = icmp ult <2 x ptr> %i.ip, %i.gp
  %i.ir = and <2 x i1> %i.in, %i.iq
  %i.is = bitcast <2 x i1> %i.ir to i2
  %i.it = icmp ne i2 %i.is, 0
  %op.rdx72.reass = or i1 %i.it, %invariant.op
  br label %.split557.split.us.split.us

.split557.split.us.split.us:                      ; preds = %.split557.split.us.split.us.preheader, %.loopexit.us.us
  %.sroa.055.0556.us.us = phi i64 [ %i.iu, %.loopexit.us.us ], [ 0, %.split557.split.us.split.us.preheader ] ; 4 uses
  %i.iu = add nuw i64 %.sroa.055.0556.us.us, 1    ; 2 uses
  %i.iv = mul i64 %.sroa.055.0556.us.us, %.val5.i203 ; 5 uses
  %i.iw = getelementptr [8 x i8], ptr %i.ig, i64 %i.iv ; 3 uses
  %invariant.gep545.us.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.iv ; 5 uses
  %exitcond664.not = icmp eq i64 %.sroa.055.0556.us.us, %.val3.i199
  br i1 %exitcond664.not, label %.split553.us.invoke, label %.split.us.us

.split.us.us:                                     ; preds = %.split557.split.us.split.us
  %i.ix = icmp ult i64 %.sroa.055.0556.us.us, %.val3.i199
  %.fr554.us.us = freeze i1 %i.ix
  br i1 %.fr554.us.us, label %.split.split.split.us560.us.preheader, label %.split.split.split.us.us.us

.split.split.split.us560.us.preheader:            ; preds = %.split.us.us
  %or.cond71.not = xor i1 %or.cond71, true
  %brmerge = select i1 %or.cond71.not, i1 true, i1 %op.rdx72.reass
  br i1 %brmerge, label %.split.split.split.us560.us.preheader73, label %vector.ph55

.split.split.split.us560.us.preheader73:          ; preds = %.split.split.split.us560.us.preheader, %pred.store.continue67
  %.sroa.057.0544.us555.us.us.ph = phi i64 [ %n.vec56, %pred.store.continue67 ], [ 0, %.split.split.split.us560.us.preheader ]
  br label %.split.split.split.us560.us

vector.ph55:                                      ; preds = %.split.split.split.us560.us.preheader
  %i.iy = load double, ptr %i.iw, align 8, !alias.scope !34163
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body57

vector.body57:                                    ; preds = %pred.store.continue67, %vector.ph55
  %index58 = phi i64 [ 0, %vector.ph55 ], [ %index.next68, %pred.store.continue67 ] ; 6 uses
  %i.iz = getelementptr [8 x i8], ptr %i.cg, i64 %index58 ; 2 uses
  %i.ja = getelementptr [8 x i8], ptr %i.iz, i64 %i.ih ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 16
  %wide.load = load <2 x double>, ptr %i.ja, align 8, !alias.scope !34164
  %wide.load59 = load <2 x double>, ptr %i.jb, align 8, !alias.scope !34164
  %i.jc = fadd <2 x double> %broadcast.splat, %wide.load ; 3 uses
  %i.jd = fadd <2 x double> %broadcast.splat, %wide.load59 ; 3 uses
  %i.je = getelementptr [8 x i8], ptr %i.iz, i64 %i.iv ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  %wide.load60 = load <2 x double>, ptr %i.je, align 8, !alias.scope !34165
  %wide.load61 = load <2 x double>, ptr %i.jf, align 8, !alias.scope !34165
  %i.jg = fcmp olt <2 x double> %i.jc, %wide.load60 ; 2 uses
  %i.jh = fcmp olt <2 x double> %i.jd, %wide.load61 ; 2 uses
  %i.ji = extractelement <2 x i1> %i.jg, i64 0
  br i1 %i.ji, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body57
  %i.jj = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index58
  %i.jk = extractelement <2 x double> %i.jc, i64 0
  store double %i.jk, ptr %i.jj, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body57
  %i.jl = extractelement <2 x i1> %i.jg, i64 1
  br i1 %i.jl, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue
  %i.jm = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index58
  %i.jn = getelementptr i8, ptr %i.jm, i64 8
  %i.jo = extractelement <2 x double> %i.jc, i64 1
  store double %i.jo, ptr %i.jn, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue
  %i.jp = extractelement <2 x i1> %i.jh, i64 0
  br i1 %i.jp, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.jq = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index58
  %i.jr = getelementptr i8, ptr %i.jq, i64 16
  %i.js = extractelement <2 x double> %i.jd, i64 0
  store double %i.js, ptr %i.jr, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.jt = extractelement <2 x i1> %i.jh, i64 1
  br i1 %i.jt, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.ju = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %index58
  %i.jv = getelementptr i8, ptr %i.ju, i64 24
  %i.jw = extractelement <2 x double> %i.jd, i64 1
  store double %i.jw, ptr %i.jv, align 8, !alias.scope !34166, !noalias !34167
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %index.next68 = add nuw i64 %index58, 4         ; 2 uses
  %i.jx = icmp eq i64 %index.next68, %n.vec56
  br i1 %i.jx, label %.split.split.split.us560.us.preheader73, label %vector.body57, !llvm.loop !34096

.split.split.split.us.us.us:                      ; preds = %.split.us.us
  %i.jy = load double, ptr %i.iw, align 8, !noundef !56
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.split.split.split.us.us.us
  %.sroa.057.0544.us.us.us = phi i64 [ 0, %.split.split.split.us.us.us ], [ %i.jz, %bb.bh ] ; 3 uses
  %i.jz = add nuw i64 %.sroa.057.0544.us.us.us, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %.sroa.057.0544.us.us.us, %.val4.i200
  br i1 %exitcond660.not, label %.split553.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ka = mul i64 %.val6.i202, %.sroa.057.0544.us.us.us
  %i.kb = getelementptr [8 x i8], ptr %i.cg, i64 %i.ka ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.ih
  %i.kd = load double, ptr %i.kc, align 8, !noundef !56
  %i.ke = fadd double %i.jy, %i.kd
  %i.kf = getelementptr [8 x i8], ptr %i.kb, i64 %i.iv
  %i.kg = load double, ptr %i.kf, align 8, !noundef !56
  %i.kh = fcmp olt double %i.ke, %i.kg
  br i1 %i.kh, label %.split553.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond661.not = icmp eq i64 %i.jz, %i.r
  br i1 %exitcond661.not, label %.loopexit.us.us, label %bb.bf

.split.split.split.us560.us:                      ; preds = %.split.split.split.us560.us.preheader73, %bb.bk
  %.sroa.057.0544.us555.us.us = phi i64 [ %i.ki, %bb.bk ], [ %.sroa.057.0544.us555.us.us.ph, %.split.split.split.us560.us.preheader73 ] ; 3 uses
  %i.ki = add nuw i64 %.sroa.057.0544.us555.us.us, 1 ; 2 uses
  %exitcond662.not = icmp eq i64 %.sroa.057.0544.us555.us.us, %.val4.i200
  br i1 %exitcond662.not, label %.split553.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %.split.split.split.us560.us
  %i.kj = load double, ptr %i.iw, align 8, !noundef !56
  %i.kk = mul i64 %.val6.i202, %.sroa.057.0544.us555.us.us ; 2 uses
  %i.kl = getelementptr [8 x i8], ptr %i.cg, i64 %i.kk ; 2 uses
  %i.km = getelementptr [8 x i8], ptr %i.kl, i64 %i.ih
  %i.kn = load double, ptr %i.km, align 8, !noundef !56
  %i.ko = fadd double %i.kj, %i.kn                ; 2 uses
  %i.kp = getelementptr [8 x i8], ptr %i.kl, i64 %i.iv
  %i.kq = load double, ptr %i.kp, align 8, !noundef !56
  %i.kr = fcmp olt double %i.ko, %i.kq
  br i1 %i.kr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep546.us.us.us = getelementptr [8 x i8], ptr %invariant.gep545.us.us, i64 %i.kk
  store double %i.ko, ptr %gep546.us.us.us, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond663.not = icmp eq i64 %i.ki, %i.r
  br i1 %exitcond663.not, label %.loopexit.us.us, label %.split.split.split.us560.us, !llvm.loop !34097

.loopexit.us.us:                                  ; preds = %bb.bh, %bb.bk
  %exitcond665.not = icmp eq i64 %i.iu, %i.r
  br i1 %exitcond665.not, label %.loopexit469.split.us, label %.split557.split.us.split.us

.split557.split.us.split:                         ; preds = %.split557.split.us, %.loopexit.us
  %.sroa.055.0556.us = phi i64 [ %i.ks, %.loopexit.us ], [ 0, %.split557.split.us ] ; 5 uses
  %i.ks = add nuw i64 %.sroa.055.0556.us, 1       ; 2 uses
  %i.kt = mul i64 %.sroa.055.0556.us, %.val5.i203 ; 4 uses
  %i.ku = getelementptr [8 x i8], ptr %i.ig, i64 %i.kt ; 2 uses
  %invariant.gep545.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.kt
  %i.kv = mul i64 %.sroa.055.0556.us, %i.r        ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.ij, i64 %i.kv
  %invariant.gep547.us = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.kv
  %exitcond658.not = icmp eq i64 %.sroa.055.0556.us, %.val3.i199
  br i1 %exitcond658.not, label %.split553.us.invoke, label %.split.us

.split.us:                                        ; preds = %.split557.split.us.split
  %i.kx = icmp ult i64 %.sroa.055.0556.us, %.val3.i199
  %.fr554.us = freeze i1 %i.kx
  br i1 %.fr554.us, label %.split.split.split.us560, label %.split.split.split.us.us

.split.split.split.us.us:                         ; preds = %.split.us
  %i.ky = load double, ptr %i.ku, align 8, !noundef !56
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.split.split.split.us.us
  %.sroa.057.0544.us.us = phi i64 [ 0, %.split.split.split.us.us ], [ %i.kz, %bb.bn ] ; 3 uses
  %i.kz = add nuw i64 %.sroa.057.0544.us.us, 1    ; 2 uses
  %exitcond654.not = icmp eq i64 %.sroa.057.0544.us.us, %.val4.i200
  br i1 %exitcond654.not, label %.split553.us.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.la = mul i64 %.val6.i202, %.sroa.057.0544.us.us
  %i.lb = getelementptr [8 x i8], ptr %i.cg, i64 %i.la ; 2 uses
  %i.lc = getelementptr [8 x i8], ptr %i.lb, i64 %i.ih
  %i.ld = load double, ptr %i.lc, align 8, !noundef !56
  %i.le = fadd double %i.ky, %i.ld
  %i.lf = getelementptr [8 x i8], ptr %i.lb, i64 %i.kt
  %i.lg = load double, ptr %i.lf, align 8, !noundef !56
  %i.lh = fcmp olt double %i.le, %i.lg
  br i1 %i.lh, label %.split553.us.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exitcond655.not = icmp eq i64 %i.kz, %i.r
  br i1 %exitcond655.not, label %.loopexit.us, label %bb.bl

.split.split.split.us560:                         ; preds = %.split.us, %bb.bq
  %.sroa.057.0544.us562 = phi i64 [ %i.li, %bb.bq ], [ 0, %.split.us ] ; 4 uses
  %i.li = add nuw i64 %.sroa.057.0544.us562, 1    ; 2 uses
  %exitcond656.not = icmp eq i64 %.sroa.057.0544.us562, %.val4.i200
  br i1 %exitcond656.not, label %.split553.us.invoke, label %bb.bo

bb.bo:                                            ; preds = %.split.split.split.us560
  %i.lj = load double, ptr %i.ku, align 8, !noundef !56
  %i.lk = mul i64 %.val6.i202, %.sroa.057.0544.us562 ; 2 uses
  %i.ll = getelementptr [8 x i8], ptr %i.cg, i64 %i.lk ; 2 uses
  %i.lm = getelementptr [8 x i8], ptr %i.ll, i64 %i.ih
  %i.ln = load double, ptr %i.lm, align 8, !noundef !56
  %i.lo = fadd double %i.lj, %i.ln                ; 2 uses
  %i.lp = getelementptr [8 x i8], ptr %i.ll, i64 %i.kt
  %i.lq = load double, ptr %i.lp, align 8, !noundef !56
  %i.lr = fcmp olt double %i.lo, %i.lq
  br i1 %i.lr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %gep546.us563 = getelementptr [8 x i8], ptr %invariant.gep545.us, i64 %i.lk
  store double %i.lo, ptr %gep546.us563, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  %i.ls = load i64, ptr %i.kw, align 8, !noundef !56
  %i.lt = mul i64 %.sroa.057.0544.us562, %.sroa.25.0
  %gep548.us = getelementptr [8 x i8], ptr %invariant.gep547.us, i64 %i.lt
  store i64 %i.ls, ptr %gep548.us, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %exitcond657.not = icmp eq i64 %i.li, %i.r
  br i1 %exitcond657.not, label %.loopexit.us, label %.split.split.split.us560

.loopexit.us:                                     ; preds = %bb.bn, %bb.bq
  %exitcond659.not = icmp eq i64 %i.ks, %i.r
  br i1 %exitcond659.not, label %.loopexit469.split.us, label %.split557.split.us.split

end_hunk_0
begin_hunk_1_@_RINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !34356
  store ptr %i.i, ptr %i.hc, align 8, !noalias !34356
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34357
  store i64 0, ptr %i.d, align 8, !noalias !34358
  store i64 %.val3.i197, ptr %.sroa.5365.0..sroa_idx366, align 8, !noalias !34358
  store i64 %.val5.i201, ptr %.sroa.6368.0..sroa_idx369, align 8, !noalias !34358
  store i64 %.val4.i198, ptr %.sroa.6368.sroa.4.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store i64 %.val6.i200, ptr %.sroa.6368.sroa.5.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store ptr %i.cg, ptr %.sroa.6368.sroa.6.0..sroa.6368.0..sroa_idx369.sroa_idx, align 8, !noalias !34358
  store i64 1, ptr %i.hd, align 8, !noalias !34357
  %i.ho = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc128 unwind label %bb.av

.noexc128:                                        ; preds = %bb.aw
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 %i.hf)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1k_9iterators11AxisIterMutdINtNtNtB1k_9dimension3dim3DimAjj1_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedEs_0EEB40_(i64 noundef %.val3.i197, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.ax unwind label %bb.av

bb.ax:                                            ; preds = %.noexc128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !34359)
  call void @llvm.experimental.noalias.scope.decl(metadata !34360)
  call void @llvm.experimental.noalias.scope.decl(metadata !34361)
  %i.hp = load i64, ptr %i.hg, align 8, !alias.scope !34362, !noundef !56 ; 2 uses
  %.not.i.i.i130 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i130, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131: ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i8 0, i64 16, i1 false), !alias.scope !34362
  %i.hq = load ptr, ptr %i.i, align 8, !alias.scope !34362, !nonnull !56, !noundef !56
  %i.hr = shl nuw i64 %i.hp, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hq, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34362
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit132: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %exitcond651.not = icmp eq i64 %i.hi, %i.r
  br i1 %exitcond651.not, label %.loopexit468, label %bb.aq

bb.ay:                                            ; preds = %bb.c, %.body193
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.az:                                            ; preds = %.lr.ph539, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153
  %.sroa.059.0538 = phi i64 [ 0, %.lr.ph539 ], [ %i.ht, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153 ] ; 3 uses
  %i.ht = add nuw i64 %.sroa.059.0538, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %.sroa.059.0538, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 2, ptr %i.k, align 8
  store i64 %.sroa.059.0538, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.425.sroa.3.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %.sroa.425.sroa.4.0..sroa.425.0..sroa_idx.sroa_idx, align 8
  invoke fastcc void @_RINvMs1_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj2_EE5sliceINtNtB8_5slice9SliceInfoANtB1G_13SliceInfoElemB1s_BY_IBZ_Ajj1_EEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %i.k)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvMs_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB6_8ArrayRefdINtNtNtB6_9dimension3dim3DimAjj1_EE8to_ownedCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %.noexc149, %bb.bc
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34363)
  call void @llvm.experimental.noalias.scope.decl(metadata !34364)
  call void @llvm.experimental.noalias.scope.decl(metadata !34365)
  %i.hv = load i64, ptr %i.gy, align 8, !alias.scope !34366, !noundef !56 ; 2 uses
  %.not.i.i.i135 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i135, label %.body, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i136: ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !34366
  %i.hw = load ptr, ptr %i.m, align 8, !alias.scope !34366, !nonnull !56, !noundef !56
  %i.hx = shl nuw i64 %i.hv, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hw, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34366
  br label %.body

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.c, align 8, !noalias !34367
  store ptr %i.m, ptr %i.gt, align 8, !noalias !34367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34368
  store i64 0, ptr %i.gu, align 8, !noalias !34369
  store <2 x i64> %i.hb, ptr %.sroa.10347.56..sroa_idx348, align 8, !noalias !34369
  store i64 %i.r, ptr %.sroa.11350.sroa.4.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store i64 %.sroa.25.0, ptr %.sroa.11350.sroa.5.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store ptr %.sroa.14.0, ptr %.sroa.11350.sroa.6.0..sroa.11350.56..sroa_idx351.sroa_idx, align 8, !noalias !34369
  store i64 0, ptr %i.b, align 8, !noalias !34370
  store i64 %.val3.i197, ptr %.sroa.5339.0..sroa_idx340, align 8, !noalias !34370
  store i64 %.val5.i201, ptr %.sroa.6342.0..sroa_idx343, align 8, !noalias !34370
  store i64 %.val4.i198, ptr %.sroa.6342.sroa.4.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store i64 %.val6.i200, ptr %.sroa.6342.sroa.5.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store ptr %i.cg, ptr %.sroa.6342.sroa.6.0..sroa.6342.0..sroa_idx343.sroa_idx, align 8, !noalias !34370
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !34371
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !34372
  %i.hy = invoke noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
          to label %.noexc149 unwind label %bb.bb

.noexc149:                                        ; preds = %bb.bc
  %spec.store.select.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hy, i64 %i.gx)
  invoke fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4H_(i64 noundef %i.gv, i1 noundef zeroext false, i64 noundef %spec.store.select.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !34373)
  call void @llvm.experimental.noalias.scope.decl(metadata !34374)
  call void @llvm.experimental.noalias.scope.decl(metadata !34375)
  %i.hz = load i64, ptr %i.gy, align 8, !alias.scope !34376, !noundef !56 ; 2 uses
  %.not.i.i.i151 = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i.i151, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152: ; preds = %bb.bd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i8 0, i64 16, i1 false), !alias.scope !34376
  %i.ia = load ptr, ptr %i.m, align 8, !alias.scope !34376, !nonnull !56, !noundef !56
  %i.ib = shl nuw i64 %i.hz, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ia, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !34376
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit153: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i152, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %exitcond650.not = icmp eq i64 %i.ht, %i.r
  br i1 %exitcond650.not, label %.loopexit468, label %bb.az

bb.be:                                            ; preds = %.lr.ph603, %.loopexit467.split.us
  %.sroa.053.0602 = phi i64 [ 0, %.lr.ph603 ], [ %i.ie, %.loopexit467.split.us ] ; 8 uses
  %i.ic = shl i64 %.sroa.053.0602, 3              ; 2 uses
  %scevgep788 = getelementptr i8, ptr %i.cg, i64 %i.ic
  %scevgep789 = getelementptr i8, ptr %i.gg, i64 %i.ic
  %i.id = mul i64 %i.ge, %.sroa.053.0602          ; 2 uses
  %scevgep790 = getelementptr i8, ptr %i.cg, i64 %i.id
  %scevgep791 = getelementptr i8, ptr %i.gi, i64 %i.id
  %i.ie = add nuw i64 %.sroa.053.0602, 1          ; 2 uses
  %i.if = mul i64 %.val6.i200, %.sroa.053.0602
  %i.ig = getelementptr [8 x i8], ptr %i.cg, i64 %i.if ; 2 uses
  %i.ih = mul i64 %.sroa.053.0602, %.val5.i201    ; 5 uses
  %i.ii = mul i64 %.sroa.053.0602, %.sroa.25.0
  %i.ij = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.ii
  %exitcond664.not = icmp eq i64 %.sroa.053.0602, %.val4.i198
  br i1 %exitcond664.not, label %.split551.us.invoke, label %.split555

.split555:                                        ; preds = %bb.be
  %i.ik = icmp ult i64 %.sroa.053.0602, %.val3.i197
  %.fr = freeze i1 %i.ik
  br i1 %.fr, label %.split555.split.us, label %.split551.us.invoke

.split555.split.us:                               ; preds = %.split555
  br i1 %.not67, label %.split555.split.us.split.us.preheader, label %.split555.split.us.split

.split555.split.us.split.us.preheader:            ; preds = %.split555.split.us
  %i.il = insertelement <2 x ptr> poison, ptr %scevgep789, i64 0
  %i.im = insertelement <2 x ptr> %i.il, ptr %scevgep791, i64 1
  %i.in = icmp ult <2 x ptr> %i.gn, %i.im
  %i.io = insertelement <2 x ptr> poison, ptr %scevgep788, i64 0
  %i.ip = insertelement <2 x ptr> %i.io, ptr %scevgep790, i64 1
  %i.iq = icmp ult <2 x ptr> %i.ip, %i.gp
  %i.ir = and <2 x i1> %i.in, %i.iq
  %i.is = bitcast <2 x i1> %i.ir to i2
  %i.it = icmp ne i2 %i.is, 0
  %op.rdx817.reass = or i1 %i.it, %invariant.op
  br label %.split555.split.us.split.us

.split555.split.us.split.us:                      ; preds = %.split555.split.us.split.us.preheader, %.loopexit.us.us
  %.sroa.055.0554.us.us = phi i64 [ %i.iu, %.loopexit.us.us ], [ 0, %.split555.split.us.split.us.preheader ] ; 4 uses
  %i.iu = add nuw i64 %.sroa.055.0554.us.us, 1    ; 2 uses
  %i.iv = mul i64 %.sroa.055.0554.us.us, %.val5.i201 ; 5 uses
  %i.iw = getelementptr [8 x i8], ptr %i.ig, i64 %i.iv ; 3 uses
  %invariant.gep543.us.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.iv ; 5 uses
  %exitcond662.not = icmp eq i64 %.sroa.055.0554.us.us, %.val3.i197
  br i1 %exitcond662.not, label %.split551.us.invoke, label %.split.us.us

.split.us.us:                                     ; preds = %.split555.split.us.split.us
  %i.ix = icmp ult i64 %.sroa.055.0554.us.us, %.val3.i197
  %.fr552.us.us = freeze i1 %i.ix
  br i1 %.fr552.us.us, label %.split.split.split.us558.us.preheader, label %.split.split.split.us.us.us

.split.split.split.us558.us.preheader:            ; preds = %.split.us.us
  %or.cond816.not = xor i1 %or.cond816, true
  %brmerge = select i1 %or.cond816.not, i1 true, i1 %op.rdx817.reass
  br i1 %brmerge, label %.split.split.split.us558.us.preheader818, label %vector.ph800

.split.split.split.us558.us.preheader818:         ; preds = %.split.split.split.us558.us.preheader, %pred.store.continue812
  %.sroa.057.0542.us553.us.us.ph = phi i64 [ %n.vec801, %pred.store.continue812 ], [ 0, %.split.split.split.us558.us.preheader ]
  br label %.split.split.split.us558.us

vector.ph800:                                     ; preds = %.split.split.split.us558.us.preheader
  %i.iy = load double, ptr %i.iw, align 8, !alias.scope !34377
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.iy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body802

vector.body802:                                   ; preds = %pred.store.continue812, %vector.ph800
  %index803 = phi i64 [ 0, %vector.ph800 ], [ %index.next813, %pred.store.continue812 ] ; 6 uses
  %i.iz = getelementptr [8 x i8], ptr %i.cg, i64 %index803 ; 2 uses
  %i.ja = getelementptr [8 x i8], ptr %i.iz, i64 %i.ih ; 2 uses
  %i.jb = getelementptr i8, ptr %i.ja, i64 16
  %wide.load = load <2 x double>, ptr %i.ja, align 8, !alias.scope !34378
  %wide.load804 = load <2 x double>, ptr %i.jb, align 8, !alias.scope !34378
  %i.jc = fadd <2 x double> %broadcast.splat, %wide.load ; 3 uses
  %i.jd = fadd <2 x double> %broadcast.splat, %wide.load804 ; 3 uses
  %i.je = getelementptr [8 x i8], ptr %i.iz, i64 %i.iv ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  %wide.load805 = load <2 x double>, ptr %i.je, align 8, !alias.scope !34379
  %wide.load806 = load <2 x double>, ptr %i.jf, align 8, !alias.scope !34379
  %i.jg = fcmp olt <2 x double> %i.jc, %wide.load805 ; 2 uses
  %i.jh = fcmp olt <2 x double> %i.jd, %wide.load806 ; 2 uses
  %i.ji = extractelement <2 x i1> %i.jg, i64 0
  br i1 %i.ji, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body802
  %i.jj = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index803
  %i.jk = extractelement <2 x double> %i.jc, i64 0
  store double %i.jk, ptr %i.jj, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body802
  %i.jl = extractelement <2 x i1> %i.jg, i64 1
  br i1 %i.jl, label %pred.store.if807, label %pred.store.continue808

pred.store.if807:                                 ; preds = %pred.store.continue
  %i.jm = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index803
  %i.jn = getelementptr i8, ptr %i.jm, i64 8
  %i.jo = extractelement <2 x double> %i.jc, i64 1
  store double %i.jo, ptr %i.jn, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue808

pred.store.continue808:                           ; preds = %pred.store.if807, %pred.store.continue
  %i.jp = extractelement <2 x i1> %i.jh, i64 0
  br i1 %i.jp, label %pred.store.if809, label %pred.store.continue810

pred.store.if809:                                 ; preds = %pred.store.continue808
  %i.jq = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index803
  %i.jr = getelementptr i8, ptr %i.jq, i64 16
  %i.js = extractelement <2 x double> %i.jd, i64 0
  store double %i.js, ptr %i.jr, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue810

pred.store.continue810:                           ; preds = %pred.store.if809, %pred.store.continue808
  %i.jt = extractelement <2 x i1> %i.jh, i64 1
  br i1 %i.jt, label %pred.store.if811, label %pred.store.continue812

pred.store.if811:                                 ; preds = %pred.store.continue810
  %i.ju = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %index803
  %i.jv = getelementptr i8, ptr %i.ju, i64 24
  %i.jw = extractelement <2 x double> %i.jd, i64 1
  store double %i.jw, ptr %i.jv, align 8, !alias.scope !34380, !noalias !34381
  br label %pred.store.continue812

pred.store.continue812:                           ; preds = %pred.store.if811, %pred.store.continue810
  %index.next813 = add nuw i64 %index803, 4       ; 2 uses
  %i.jx = icmp eq i64 %index.next813, %n.vec801
  br i1 %i.jx, label %.split.split.split.us558.us.preheader818, label %vector.body802, !llvm.loop !34310

.split.split.split.us.us.us:                      ; preds = %.split.us.us
  %i.jy = load double, ptr %i.iw, align 8, !noundef !56
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bh, %.split.split.split.us.us.us
  %.sroa.057.0542.us.us.us = phi i64 [ 0, %.split.split.split.us.us.us ], [ %i.jz, %bb.bh ] ; 3 uses
  %i.jz = add nuw i64 %.sroa.057.0542.us.us.us, 1 ; 2 uses
  %exitcond658.not = icmp eq i64 %.sroa.057.0542.us.us.us, %.val4.i198
  br i1 %exitcond658.not, label %.split551.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ka = mul i64 %.val6.i200, %.sroa.057.0542.us.us.us
  %i.kb = getelementptr [8 x i8], ptr %i.cg, i64 %i.ka ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.ih
  %i.kd = load double, ptr %i.kc, align 8, !noundef !56
  %i.ke = fadd double %i.jy, %i.kd
  %i.kf = getelementptr [8 x i8], ptr %i.kb, i64 %i.iv
  %i.kg = load double, ptr %i.kf, align 8, !noundef !56
  %i.kh = fcmp olt double %i.ke, %i.kg
  br i1 %i.kh, label %.split551.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %exitcond659.not = icmp eq i64 %i.jz, %i.r
  br i1 %exitcond659.not, label %.loopexit.us.us, label %bb.bf

.split.split.split.us558.us:                      ; preds = %.split.split.split.us558.us.preheader818, %bb.bk
  %.sroa.057.0542.us553.us.us = phi i64 [ %i.ki, %bb.bk ], [ %.sroa.057.0542.us553.us.us.ph, %.split.split.split.us558.us.preheader818 ] ; 3 uses
  %i.ki = add nuw i64 %.sroa.057.0542.us553.us.us, 1 ; 2 uses
  %exitcond660.not = icmp eq i64 %.sroa.057.0542.us553.us.us, %.val4.i198
  br i1 %exitcond660.not, label %.split551.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %.split.split.split.us558.us
  %i.kj = load double, ptr %i.iw, align 8, !noundef !56
  %i.kk = mul i64 %.val6.i200, %.sroa.057.0542.us553.us.us ; 2 uses
  %i.kl = getelementptr [8 x i8], ptr %i.cg, i64 %i.kk ; 2 uses
  %i.km = getelementptr [8 x i8], ptr %i.kl, i64 %i.ih
  %i.kn = load double, ptr %i.km, align 8, !noundef !56
  %i.ko = fadd double %i.kj, %i.kn                ; 2 uses
  %i.kp = getelementptr [8 x i8], ptr %i.kl, i64 %i.iv
  %i.kq = load double, ptr %i.kp, align 8, !noundef !56
  %i.kr = fcmp olt double %i.ko, %i.kq
  br i1 %i.kr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %gep544.us.us.us = getelementptr [8 x i8], ptr %invariant.gep543.us.us, i64 %i.kk
  store double %i.ko, ptr %gep544.us.us.us, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %exitcond661.not = icmp eq i64 %i.ki, %i.r
  br i1 %exitcond661.not, label %.loopexit.us.us, label %.split.split.split.us558.us, !llvm.loop !34311

.loopexit.us.us:                                  ; preds = %bb.bh, %bb.bk
  %exitcond663.not = icmp eq i64 %i.iu, %i.r
  br i1 %exitcond663.not, label %.loopexit467.split.us, label %.split555.split.us.split.us

.split555.split.us.split:                         ; preds = %.split555.split.us, %.loopexit.us
  %.sroa.055.0554.us = phi i64 [ %i.ks, %.loopexit.us ], [ 0, %.split555.split.us ] ; 5 uses
  %i.ks = add nuw i64 %.sroa.055.0554.us, 1       ; 2 uses
  %i.kt = mul i64 %.sroa.055.0554.us, %.val5.i201 ; 4 uses
  %i.ku = getelementptr [8 x i8], ptr %i.ig, i64 %i.kt ; 2 uses
  %invariant.gep543.us = getelementptr [8 x i8], ptr %i.cg, i64 %i.kt
  %i.kv = mul i64 %.sroa.055.0554.us, %i.r        ; 2 uses
  %i.kw = getelementptr [8 x i8], ptr %i.ij, i64 %i.kv
  %invariant.gep545.us = getelementptr [8 x i8], ptr %.sroa.14.0, i64 %i.kv
  %exitcond656.not = icmp eq i64 %.sroa.055.0554.us, %.val3.i197
  br i1 %exitcond656.not, label %.split551.us.invoke, label %.split.us

.split.us:                                        ; preds = %.split555.split.us.split
  %i.kx = icmp ult i64 %.sroa.055.0554.us, %.val3.i197
  %.fr552.us = freeze i1 %i.kx
  br i1 %.fr552.us, label %.split.split.split.us558, label %.split.split.split.us.us

.split.split.split.us.us:                         ; preds = %.split.us
  %i.ky = load double, ptr %i.ku, align 8, !noundef !56
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %.split.split.split.us.us
  %.sroa.057.0542.us.us = phi i64 [ 0, %.split.split.split.us.us ], [ %i.kz, %bb.bn ] ; 3 uses
  %i.kz = add nuw i64 %.sroa.057.0542.us.us, 1    ; 2 uses
  %exitcond652.not = icmp eq i64 %.sroa.057.0542.us.us, %.val4.i198
  br i1 %exitcond652.not, label %.split551.us.invoke, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.la = mul i64 %.val6.i200, %.sroa.057.0542.us.us
  %i.lb = getelementptr [8 x i8], ptr %i.cg, i64 %i.la ; 2 uses
  %i.lc = getelementptr [8 x i8], ptr %i.lb, i64 %i.ih
  %i.ld = load double, ptr %i.lc, align 8, !noundef !56
  %i.le = fadd double %i.ky, %i.ld
  %i.lf = getelementptr [8 x i8], ptr %i.lb, i64 %i.kt
  %i.lg = load double, ptr %i.lf, align 8, !noundef !56
  %i.lh = fcmp olt double %i.le, %i.lg
  br i1 %i.lh, label %.split551.us.invoke, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %exitcond653.not = icmp eq i64 %i.kz, %i.r
  br i1 %exitcond653.not, label %.loopexit.us, label %bb.bl

.split.split.split.us558:                         ; preds = %.split.us, %bb.bq
  %.sroa.057.0542.us560 = phi i64 [ %i.li, %bb.bq ], [ 0, %.split.us ] ; 4 uses
  %i.li = add nuw i64 %.sroa.057.0542.us560, 1    ; 2 uses
  %exitcond654.not = icmp eq i64 %.sroa.057.0542.us560, %.val4.i198
  br i1 %exitcond654.not, label %.split551.us.invoke, label %bb.bo

bb.bo:                                            ; preds = %.split.split.split.us558
  %i.lj = load double, ptr %i.ku, align 8, !noundef !56
  %i.lk = mul i64 %.val6.i200, %.sroa.057.0542.us560 ; 2 uses
  %i.ll = getelementptr [8 x i8], ptr %i.cg, i64 %i.lk ; 2 uses
  %i.lm = getelementptr [8 x i8], ptr %i.ll, i64 %i.ih
  %i.ln = load double, ptr %i.lm, align 8, !noundef !56
  %i.lo = fadd double %i.lj, %i.ln                ; 2 uses
  %i.lp = getelementptr [8 x i8], ptr %i.ll, i64 %i.kt
  %i.lq = load double, ptr %i.lp, align 8, !noundef !56
  %i.lr = fcmp olt double %i.lo, %i.lq
  br i1 %i.lr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %gep544.us561 = getelementptr [8 x i8], ptr %invariant.gep543.us, i64 %i.lk
  store double %i.lo, ptr %gep544.us561, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  %i.ls = load i64, ptr %i.kw, align 8, !noundef !56
  %i.lt = mul i64 %.sroa.057.0542.us560, %.sroa.25.0
  %gep546.us = getelementptr [8 x i8], ptr %invariant.gep545.us, i64 %i.lt
  store i64 %i.ls, ptr %gep546.us, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %exitcond655.not = icmp eq i64 %i.li, %i.r
  br i1 %exitcond655.not, label %.loopexit.us, label %.split.split.split.us558

.loopexit.us:                                     ; preds = %bb.bn, %bb.bq
  %exitcond657.not = icmp eq i64 %i.ks, %i.r
  br i1 %exitcond657.not, label %.loopexit467.split.us, label %.split555.split.us.split

end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx10dot_parser21___pyfunction_from_dot:bb.a
  store i8 %.val.i77.i.i.i, ptr %i.aca, align 1, !noalias !95138
  %i.acd = add i64 %.sroa.11.024.i76.i.i.i, 1
  br label %.lr.ph.i74.i.i.i.1

.lr.ph.i74.i.i.i.1:                               ; preds = %bb.hs, %.lr.ph.i74.i.i.i
  %.sroa.11.1.i79.i.i.i = phi i64 [ %i.acd, %bb.hs ], [ %.sroa.11.024.i76.i.i.i, %.lr.ph.i74.i.i.i ] ; 3 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abm, i64 %.sroa.5.025.i75.i.i.i
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 1
  %i.acg = getelementptr i8, ptr %i.abm, i64 %.sroa.11.1.i79.i.i.i ; 2 uses
  %i.ach = getelementptr i8, ptr %i.acg, i64 -1
  %.val.i77.i.i.i.1 = load i8, ptr %i.acf, align 1, !range !133, !noalias !95138, !noundef !56 ; 2 uses
  %.val10.i78.i.i.i.1 = load i8, ptr %i.ach, align 1, !range !133, !noalias !95138, !noundef !56
  %i.aci = icmp eq i8 %.val.i77.i.i.i.1, %.val10.i78.i.i.i.1
  br i1 %i.aci, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph.i74.i.i.i.1
  store i8 %.val.i77.i.i.i.1, ptr %i.acg, align 1, !noalias !95138
  %i.acj = add i64 %.sroa.11.1.i79.i.i.i, 1
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %.lr.ph.i74.i.i.i.1
  %.sroa.11.1.i79.i.i.i.1 = phi i64 [ %i.acj, %bb.ht ], [ %.sroa.11.1.i79.i.i.i, %.lr.ph.i74.i.i.i.1 ] ; 2 uses
  %.sroa.5.0.i80.i.i.i.1 = add nuw nsw i64 %.sroa.5.025.i75.i.i.i, 2 ; 2 uses
  %exitcond.not.i81.i.i.i.1 = icmp eq i64 %.sroa.5.0.i80.i.i.i.1, %.pr71.i.i.i
  br i1 %exitcond.not.i81.i.i.i.1, label %._crit_edge.i72.i.i.i, label %.lr.ph.i74.i.i.i

_RINvMs_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_.exit82.i.i.i: ; preds = %bb.hr, %._crit_edge.i72.i.i.i, %_RINvNtCs87CvPiUlf0m_5alloc5slice11stable_sortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBH_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltEBL_.exit65.i.i.i, %_RINvMs_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_.exit.i.i.i
  %.val3440.i.i.i = phi i64 [ %i.abb, %_RINvMs_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_.exit.i.i.i ], [ %.sroa.11.0.lcssa.i73.i.i.i, %._crit_edge.i72.i.i.i ], [ %.pr71.i.i.i, %_RINvNtCs87CvPiUlf0m_5alloc5slice11stable_sortNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleNvYBH_NtNtCslwFuT2d6ECx_4core3cmp10PartialOrd2ltEBL_.exit65.i.i.i ], [ %.pr71.i.i.i, %bb.hr ]
  %.val35.i.i.i = load ptr, ptr %i.zj, align 8, !noalias !95050, !nonnull !56, !noundef !56
  %.val36.i.i.i = load i64, ptr %i.zl, align 8, !noalias !95050, !noundef !56 ; 7 uses
  %i.ack = icmp eq i64 %.val36.i.i.i, 0           ; 2 uses
  br i1 %i.ack, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %_RINvMs_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_.exit82.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !95139
  %i.acl = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val36.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !95139 ; 3 uses
  %i.acm = icmp eq ptr %i.acl, null
  br i1 %i.acm, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.invoke.i.i.i, label %bb.hw

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.invoke.i.i.i: ; preds = %bb.hv, %bb.hc
  %i.acn = phi i64 [ %.val36.i.i.i, %bb.hv ], [ 18, %bb.hc ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.acn) #61
          to label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.cont.i.i.i unwind label %bb.hd, !noalias !95050

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.cont.i.i.i: ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.invoke.i.i.i
  unreachable

bb.hw:                                            ; preds = %bb.hv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acl, ptr nonnull readonly align 1 %.val35.i.i.i, i64 range(i64 0, -9223372036854775808) %.val36.i.i.i, i1 false), !noalias !95140
  %.val34.pre.i.i.i = load i64, ptr %i.aba, align 8, !noalias !95050
  br label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit.i.i.i

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit.i.i.i: ; preds = %bb.hw, %_RINvMs_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_.exit82.i.i.i
  %.val34.i.i.i = phi i64 [ %.val34.pre.i.i.i, %bb.hw ], [ %.val3440.i.i.i, %_RINvMs_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_.exit82.i.i.i ] ; 6 uses
  %.sroa.6.0.i.i.i = phi ptr [ %i.acl, %bb.hw ], [ inttoptr (i64 1 to ptr), %_RINvMs_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_.exit82.i.i.i ] ; 2 uses
  %.val33.i.i.i = load ptr, ptr %i.aay, align 8, !noalias !95050, !nonnull !56, !noundef !56
  %i.aco = icmp eq i64 %.val34.i.i.i, 0
  br i1 %i.aco, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit88.i.i.i, label %bb.hx

bb.hx:                                            ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !95141
  %i.acp = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val34.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !95141 ; 3 uses
  %i.acq = icmp eq ptr %i.acp, null
  br i1 %i.acq, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i85.i.i.i, label %bb.hy

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i85.i.i.i: ; preds = %bb.hx
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val34.i.i.i) #61
          to label %.noexc87.i.i.i unwind label %bb.hz, !noalias !95050

.noexc87.i.i.i:                                   ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i85.i.i.i
  unreachable

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.acp, ptr nonnull readonly align 1 %.val33.i.i.i, i64 range(i64 0, -9223372036854775808) %.val34.i.i.i, i1 false), !noalias !95142
  br label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit88.i.i.i

bb.hz:                                            ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i85.i.i.i
  %i.acr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ack, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit90.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i89.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i89.i.i.i: ; preds = %bb.hz
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.i.i.i, i64 noundef %.val36.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !95050
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit90.i.i.i

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit88.i.i.i: ; preds = %bb.hy, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit.i.i.i
  %.sroa.5.0.i.i.i = phi ptr [ %i.acp, %bb.hy ], [ inttoptr (i64 1 to ptr), %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit.i.i.i ]
  store i64 %.val36.i.i.i, ptr %i.o, align 8, !noalias !95127
  %.sroa.6.0..sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.6.0..sroa_idx15.i.i.i, align 8, !noalias !95127
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.val36.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !95127
  %i.acs = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.val34.i.i.i, ptr %i.acs, align 8, !noalias !95127
  %.sroa.5.0..sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.5.0..sroa_idx18.i.i.i, align 8, !noalias !95127
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %.val34.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !95127
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ib, %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneBJ_.exit88.i.i.i
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 248
  %i.acu = load i8, ptr %i.act, align 8, !range !58, !noalias !95050, !noundef !56
  %i.acv = trunc nuw i8 %i.acu to i1
  %i.acw = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 280 ; 2 uses
  br i1 %i.acv, label %bb.id, label %bb.ic

bb.ib:                                            ; preds = %bb.hc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.zv, ptr noundef nonnull align 1 dereferenceable(18) @506, i64 18, i1 false), !noalias !95143
  %i.acx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 18, ptr %i.acx, align 8, !noalias !95127
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.zv, ptr %.sroa.430.0..sroa_idx.i.i.i, align 8, !noalias !95127
  %.sroa.531.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 18, ptr %.sroa.531.0..sroa_idx.i.i.i, align 8, !noalias !95127
  store i64 -1, ptr %i.o, align 8, !noalias !95127
  br label %bb.ia

bb.ic:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !95127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !95127
  %i.acy = load i64, ptr %i.acw, align 8, !noalias !95050, !noundef !56
  store ptr %i.at, ptr %i.k, align 8, !noalias !95127
  %i.acz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.av, ptr %i.acz, align 8, !noalias !95127
  %i.ada = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.acy, ptr %i.ada, align 8, !noalias !95127
  invoke fastcc void @_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12new_from_posBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.il unwind label %bb.hd, !noalias !95050

bb.id:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !95127
  %i.adb = load i64, ptr %i.acw, align 8, !noalias !95050, !noundef !56
  store ptr %i.at, ptr %i.n, align 8, !noalias !95127
  %i.adc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.av, ptr %i.adc, align 8, !noalias !95127
  %i.add = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.adb, ptr %i.add, align 8, !noalias !95127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !95127
  call void @llvm.experimental.noalias.scope.decl(metadata !95144)
  call void @llvm.experimental.noalias.scope.decl(metadata !95145)
  %i.ade = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 176
  %.val3.i.i.i.i = load ptr, ptr %i.ade, align 8, !alias.scope !95145, !noalias !95050, !nonnull !56, !noundef !56 ; 11 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 184
  %.val4.i.i.i.i = load i64, ptr %i.adf, align 8, !alias.scope !95145, !noalias !95050, !noundef !56 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !95146)
  %i.adg = shl nuw i64 %.val4.i.i.i.i, 1          ; 3 uses
  %i.adh = icmp eq i64 %.val4.i.i.i.i, 0          ; 2 uses
  br i1 %i.adh, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCscnlsAxKLLci_4pest12parser_state14RulesCallStackNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneB1B_.exit.i.i.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !95147
  %i.adi = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.adg, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !95147 ; 5 uses
  %i.adj = icmp eq ptr %i.adi, null
  br i1 %i.adj, label %bb.if, label %.lr.ph.preheader.i.i.i.i.i.i

bb.if:                                            ; preds = %bb.ie
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.adg) #61
          to label %.noexc95.i.i.i unwind label %bb.io, !noalias !95050

.noexc95.i.i.i:                                   ; preds = %bb.if
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.ie
  %i.adk = getelementptr inbounds nuw [2 x i8], ptr %.val3.i.i.i.i, i64 %.val4.i.i.i.i
  %i.adl = and i64 %.val4.i.i.i.i, 9223372036854775807
  %i.adm = add i64 %.val4.i.i.i.i, -1
  %i.adn = call i64 @llvm.umin.i64(i64 %i.adl, i64 %i.adm) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.adn, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.ado = add nuw i64 %i.adn, 1                  ; 2 uses
  %i.adp = and i64 %i.ado, 7                      ; 2 uses
  %i.adq = icmp eq i64 %i.adp, 0
  %i.adr = select i1 %i.adq, i64 8, i64 %i.adp
  %n.vec = sub i64 %i.ado, %i.adr                 ; 4 uses
  %i.ads = shl i64 %n.vec, 1
  %i.adt = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.ads
  %i.adu = sub i64 %.val4.i.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.adv = shl i64 %index, 1                      ; 8 uses
  %next.gep = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.adv ; 2 uses
  %i.adw = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.adv ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.adw, i64 2
  %i.adx = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.adv ; 2 uses
  %next.gep114 = getelementptr i8, ptr %i.adx, i64 4
  %i.ady = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.adv ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.ady, i64 6
  %i.adz = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.adv ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.adz, i64 8
  %i.aea = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.adv ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.aea, i64 10
  %i.aeb = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.adv ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.aeb, i64 12
  %i.aec = getelementptr i8, ptr %.val3.i.i.i.i, i64 %i.adv ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.aec, i64 14
  %i.aed = load i8, ptr %next.gep, align 1, !alias.scope !95146, !noalias !95148
  %i.aee = load i8, ptr %next.gep113, align 1, !alias.scope !95146, !noalias !95148
  %i.aef = load i8, ptr %next.gep114, align 1, !alias.scope !95146, !noalias !95148
  %i.aeg = load i8, ptr %next.gep115, align 1, !alias.scope !95146, !noalias !95148
  %i.aeh = load i8, ptr %next.gep116, align 1, !alias.scope !95146, !noalias !95148
  %i.aei = load i8, ptr %next.gep117, align 1, !alias.scope !95146, !noalias !95148
  %i.aej = load i8, ptr %next.gep118, align 1, !alias.scope !95146, !noalias !95148
  %i.aek = load i8, ptr %next.gep119, align 1, !alias.scope !95146, !noalias !95148
  %i.ael = insertelement <8 x i8> poison, i8 %i.aed, i64 0
  %i.aem = insertelement <8 x i8> %i.ael, i8 %i.aee, i64 1
  %i.aen = insertelement <8 x i8> %i.aem, i8 %i.aef, i64 2
  %i.aeo = insertelement <8 x i8> %i.aen, i8 %i.aeg, i64 3
  %i.aep = insertelement <8 x i8> %i.aeo, i8 %i.aeh, i64 4
  %i.aeq = insertelement <8 x i8> %i.aep, i8 %i.aei, i64 5
  %i.aer = insertelement <8 x i8> %i.aeq, i8 %i.aej, i64 6
  %i.aes = insertelement <8 x i8> %i.aer, i8 %i.aek, i64 7
  %i.aet = getelementptr i8, ptr %next.gep, i64 1
  %i.aeu = getelementptr i8, ptr %i.adw, i64 3
  %i.aev = getelementptr i8, ptr %i.adx, i64 5
  %i.aew = getelementptr i8, ptr %i.ady, i64 7
  %i.aex = getelementptr i8, ptr %i.adz, i64 9
  %i.aey = getelementptr i8, ptr %i.aea, i64 11
  %i.aez = getelementptr i8, ptr %i.aeb, i64 13
  %i.afa = getelementptr i8, ptr %i.aec, i64 15
  %i.afb = load i8, ptr %i.aet, align 1, !alias.scope !95146, !noalias !95148
  %i.afc = load i8, ptr %i.aeu, align 1, !alias.scope !95146, !noalias !95148
  %i.afd = load i8, ptr %i.aev, align 1, !alias.scope !95146, !noalias !95148
  %i.afe = load i8, ptr %i.aew, align 1, !alias.scope !95146, !noalias !95148
  %i.aff = load i8, ptr %i.aex, align 1, !alias.scope !95146, !noalias !95148
  %i.afg = load i8, ptr %i.aey, align 1, !alias.scope !95146, !noalias !95148
  %i.afh = load i8, ptr %i.aez, align 1, !alias.scope !95146, !noalias !95148
  %i.afi = load i8, ptr %i.afa, align 1, !alias.scope !95146, !noalias !95148
  %i.afj = insertelement <8 x i8> poison, i8 %i.afb, i64 0
  %i.afk = insertelement <8 x i8> %i.afj, i8 %i.afc, i64 1
  %i.afl = insertelement <8 x i8> %i.afk, i8 %i.afd, i64 2
  %i.afm = insertelement <8 x i8> %i.afl, i8 %i.afe, i64 3
  %i.afn = insertelement <8 x i8> %i.afm, i8 %i.aff, i64 4
  %i.afo = insertelement <8 x i8> %i.afn, i8 %i.afg, i64 5
  %i.afp = insertelement <8 x i8> %i.afo, i8 %i.afh, i64 6
  %i.afq = insertelement <8 x i8> %i.afp, i8 %i.afi, i64 7
  %i.afr = getelementptr inbounds nuw [2 x i8], ptr %i.adi, i64 %index
  %interleaved.vec = shufflevector <8 x i8> %i.aes, <8 x i8> %i.afq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.afr, align 1, !noalias !95149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.afs = icmp eq i64 %index.next, %n.vec
  br i1 %i.afs, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !94957

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body, %.lr.ph.preheader.i.i.i.i.i.i
  %.sroa.017.035.i.i.i.i.i.i.ph = phi ptr [ %.val3.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.adt, %vector.body ]
  %.sroa.7.034.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %n.vec, %vector.body ]
  %.sroa.10.033.i.i.i.i.i.i.ph = phi i64 [ %.val4.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.adu, %vector.body ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.ig
  %.sroa.017.035.i.i.i.i.i.i = phi ptr [ %i.afw, %bb.ig ], [ %.sroa.017.035.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.7.034.i.i.i.i.i.i = phi i64 [ %i.afv, %bb.ig ], [ %.sroa.7.034.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.10.033.i.i.i.i.i.i = phi i64 [ %i.afu, %bb.ig ], [ %.sroa.10.033.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.aft = icmp eq ptr %.sroa.017.035.i.i.i.i.i.i, %i.adk
  br i1 %i.aft, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCscnlsAxKLLci_4pest12parser_state14RulesCallStackNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneB1B_.exit.i.i.i.i, label %bb.ig

bb.ig:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.afu = add nsw i64 %.sroa.10.033.i.i.i.i.i.i, -1 ; 2 uses
  %i.afv = add nuw nsw i64 %.sroa.7.034.i.i.i.i.i.i, 1
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.017.035.i.i.i.i.i.i, i64 2
  %.val13.i.i.i.i.i.i = load i8, ptr %.sroa.017.035.i.i.i.i.i.i, align 1, !range !155, !alias.scope !95146, !noalias !95148, !noundef !56
  %i.afx = getelementptr i8, ptr %.sroa.017.035.i.i.i.i.i.i, i64 1
  %.val14.i.i.i.i.i.i = load i8, ptr %i.afx, align 1, !alias.scope !95146, !noalias !95148
  %i.afy = getelementptr inbounds nuw [2 x i8], ptr %i.adi, i64 %.sroa.7.034.i.i.i.i.i.i ; 2 uses
  store i8 %.val13.i.i.i.i.i.i, ptr %i.afy, align 1, !noalias !95149
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 1
  store i8 %.val14.i.i.i.i.i.i, ptr %i.afz, align 1, !noalias !95149
  %i.aga = icmp eq i64 %i.afu, 0
  br i1 %i.aga, label %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCscnlsAxKLLci_4pest12parser_state14RulesCallStackNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneB1B_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !94958

_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCscnlsAxKLLci_4pest12parser_state14RulesCallStackNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneB1B_.exit.i.i.i.i: ; preds = %bb.ig, %.lr.ph.i.i.i.i.i.i, %bb.id
  %i.agb = phi ptr [ inttoptr (i64 1 to ptr), %bb.id ], [ %i.adi, %.lr.ph.i.i.i.i.i.i ], [ %i.adi, %bb.ig ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !95150
  %i.agc = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 200
  %.val7.i.i.i.i = load ptr, ptr %i.agc, align 8, !alias.scope !95145, !noalias !95050, !nonnull !56, !noundef !56
  %i.agd = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 208
  %.val8.i.i.i.i = load i64, ptr %i.agd, align 8, !alias.scope !95145, !noalias !95050, !noundef !56
  invoke fastcc void @_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCscnlsAxKLLci_4pest12parser_state12ParsingTokenENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr nonnull %.val7.i.i.i.i, i64 %.val8.i.i.i.i)
          to label %bb.ij unwind label %bb.ii, !noalias !95151

bb.ih:                                            ; preds = %bb.ik, %bb.ii
  %.pn.i91.i.i.i = phi { ptr, i32 } [ %i.agh, %bb.ik ], [ %i.age, %bb.ii ] ; 2 uses
  br i1 %i.adh, label %bb.it, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i92.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i92.i.i.i: ; preds = %bb.ih
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.agb, i64 noundef %i.adg, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !95151
  br label %bb.it

bb.ii:                                            ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCscnlsAxKLLci_4pest12parser_state14RulesCallStackNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneB1B_.exit.i.i.i.i
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.ij:                                            ; preds = %_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecINtNtCscnlsAxKLLci_4pest12parser_state14RulesCallStackNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneB1B_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !95150
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 224
  %.val5.i.i.i.i = load ptr, ptr %i.agf, align 8, !alias.scope !95145, !noalias !95050, !nonnull !56, !noundef !56
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 232
  %.val6.i.i.i.i = load i64, ptr %i.agg, align 8, !alias.scope !95145, !noalias !95050, !noundef !56
  invoke fastcc void @_RNvXsb_NtCs87CvPiUlf0m_5alloc3vecINtB5_3VecNtNtCscnlsAxKLLci_4pest12parser_state12ParsingTokenENtNtCslwFuT2d6ECx_4core5clone5Clone5cloneCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, ptr nonnull %.val5.i.i.i.i, i64 %.val6.i.i.i.i)
          to label %bb.ip unwind label %bb.ik, !noalias !95151

bb.ik:                                            ; preds = %bb.ij
  %i.agh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCscnlsAxKLLci_4pest12parser_state12ParsingTokenEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #63, !noalias !95151
  br label %bb.ih

bb.il:                                            ; preds = %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !95127
  %.sroa.0.0.copyload83.i = load i64, ptr %i.l, align 8, !noalias !95129
  %.sroa.8.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx85.i, i64 16, i1 false), !noalias !95129
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx85.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.8.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx85.sroa_idx.i, align 8, !noalias !95129
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx85.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.8.sroa.9.0.copyload.i = load ptr, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx85.sroa_idx.i, align 8, !noalias !95129
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx85.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.8.sroa.10.0.copyload.i = load ptr, ptr %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx85.sroa_idx.i, align 8, !noalias !95129
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx85.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.8.sroa.11.0.copyload.i = load ptr, ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx85.sroa_idx.i, align 8, !noalias !95129
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx85.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.8.sroa.12.0.copyload.i = load i64, ptr %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx85.sroa_idx.i, align 8, !noalias !95129
  %.sroa.10.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx87.i, i64 56, i1 false), !noalias !95129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !95127
  br label %bb.im

bb.im:                                            ; preds = %bb.is, %bb.il
  %.sroa.8.sroa.11.0.i = phi ptr [ %.sroa.8.sroa.11.0.copyload138.i, %bb.is ], [ %.sroa.8.sroa.11.0.copyload.i, %bb.il ] ; 2 uses
  %.sroa.8.sroa.10.0.i = phi ptr [ %.sroa.8.sroa.10.0.copyload135.i, %bb.is ], [ %.sroa.8.sroa.10.0.copyload.i, %bb.il ] ; 2 uses
  %.sroa.8.sroa.9.0.i = phi ptr [ %.sroa.8.sroa.9.0.copyload132.i, %bb.is ], [ %.sroa.8.sroa.9.0.copyload.i, %bb.il ] ; 2 uses
  %.sroa.8.sroa.8.0.i = phi i64 [ %.sroa.8.sroa.8.0.copyload129.i, %bb.is ], [ %.sroa.8.sroa.8.0.copyload.i, %bb.il ] ; 2 uses
  %.sroa.8.sroa.12.0.i = phi i64 [ %.sroa.8.sroa.12.0.copyload141.i, %bb.is ], [ %.sroa.8.sroa.12.0.copyload.i, %bb.il ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload84.i, %bb.is ], [ %.sroa.0.0.copyload83.i, %bb.il ] ; 2 uses
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCscnlsAxKLLci_4pest12parser_state11ParserStateNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %.sroa.4.1.i.i.i.i.ph.i.i)
          to label %_RNvXs0_NtCskcxRuJ53GpR_9rustworkx10dot_parserNtB5_9DotParserINtNtCscnlsAxKLLci_4pest6parser6ParserNtB5_4RuleE5parse.exit.i unwind label %bb.in, !noalias !95050

bb.in:                                            ; preds = %bb.im
  %i.agi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.1.i.i.i.i.ph.i.i, i64 noundef 296, i64 noundef 8) #59, !noalias !95050
  br label %common.resume.i

bb.io:                                            ; preds = %bb.if
  %i.agj = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

.body96.i.i.i:                                    ; preds = %bb.ip
  %i.agk = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCscnlsAxKLLci_4pest12parser_state13ParseAttemptsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1w_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.m) #63, !noalias !95152
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1c_.exit90.i.i.i

bb.ip:                                            ; preds = %bb.ij
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.4.1.i.i.i.i.ph.i.i, i64 240
  %i.agm = load i64, ptr %i.agl, align 8, !alias.scope !95145, !noalias !95050, !noundef !56
  %i.agn = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i8 1, ptr %i.agn, align 8, !alias.scope !95144, !noalias !95127
  store i64 %.val4.i.i.i.i, ptr %i.m, align 8, !alias.scope !95144, !noalias !95127
  %.sroa.5.0..sroa_idx.i93.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.agb, ptr %.sroa.5.0..sroa_idx.i93.i.i.i, align 8, !alias.scope !95144, !noalias !95127
  %.sroa.7.0..sroa_idx.i94.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.val4.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i94.i.i.i, align 8, !alias.scope !95144, !noalias !95127
  %i.ago = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ago, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !95153
  %i.agp = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agp, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !95153
  %i.agq = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i64 %i.agm, ptr %i.agq, align 8, !alias.scope !95144, !noalias !95127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !95150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !95150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !95154
  invoke fastcc void @_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleE12new_from_posBM_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.iq unwind label %.body96.i.i.i, !noalias !95050

bb.iq:                                            ; preds = %bb.ip
  %i.agr = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ags = load ptr, ptr %i.agr, align 8, !noalias !95154, !nonnull !56, !noundef !56
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 72 ; 3 uses
  %i.agu = load i64, ptr %i.agt, align 8, !range !55, !alias.scope !95155, !noalias !95156, !noundef !56
  %i.agv = icmp eq i64 %i.agu, -1
  br i1 %i.agv, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCscnlsAxKLLci_4pest12parser_state13ParseAttemptsNtNtCskcxRuJ53GpR_9rustworkx10dot_parser4RuleEEB1w_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.agt), !noalias !95156
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.agt, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !95152
  %.sroa.0.0.copyload84.i = load i64, ptr %i.c, align 8, !noalias !95129
  %.sroa.8.0..sroa_idx86.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx86.i, i64 16, i1 false), !noalias !95129
  %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx86.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.sroa.8.0.copyload129.i = load i64, ptr %.sroa.8.sroa.8.0..sroa.8.0..sroa_idx86.sroa_idx.i, align 8, !noalias !95129
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx86.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.8.sroa.9.0.copyload132.i = load ptr, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx86.sroa_idx.i, align 8, !noalias !95129
  %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx86.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.8.sroa.10.0.copyload135.i = load ptr, ptr %.sroa.8.sroa.10.0..sroa.8.0..sroa_idx86.sroa_idx.i, align 8, !noalias !95129
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx86.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.8.sroa.11.0.copyload138.i = load ptr, ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx86.sroa_idx.i, align 8, !noalias !95129
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx86.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.8.sroa.12.0.copyload141.i = load i64, ptr %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx86.sroa_idx.i, align 8, !noalias !95129
end_hunk_2
begin_hunk_3_@_RNvXs6_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleENtNtCslwFuT2d6ECx_4core3fmt7Display3fmtCskcxRuJ53GpR_9rustworkx:bb.a
_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit192.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i190.i, %_RINvMNtCslwFuT2d6ECx_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs87CvPiUlf0m_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskcxRuJ53GpR_9rustworkx.exit184.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !160288
  call void @llvm.experimental.noalias.scope.decl(metadata !160360)
  call void @llvm.experimental.noalias.scope.decl(metadata !160361)
  %.val.i.i193.i = load i64, ptr %i.j, align 8, !alias.scope !160362, !noalias !160288 ; 2 uses
  %i.ee = icmp eq i64 %.val.i.i193.i, 0
  br i1 %i.ee, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit196.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i194.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i194.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit192.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i.i195.i = load ptr, ptr %i.ef, align 8, !alias.scope !160362, !noalias !160288, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i195.i, i64 noundef %.val.i.i193.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160363
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit196.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit196.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i194.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit192.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !160288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !160288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !160288
  br label %bb.ab

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit179.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i177.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !160288
  call void @llvm.experimental.noalias.scope.decl(metadata !160364)
  call void @llvm.experimental.noalias.scope.decl(metadata !160365)
  %.val.i.i197.i = load i64, ptr %i.z, align 8, !alias.scope !160366, !noalias !160288 ; 2 uses
  %i.eg = icmp eq i64 %.val.i.i197.i, 0
  br i1 %i.eg, label %_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i198.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i198.i: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit179.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val1.i.i199.i = load ptr, ptr %i.eh, align 8, !alias.scope !160366, !noalias !160288, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i199.i, i64 noundef %.val.i.i197.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160367
  br label %_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit

_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit179.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i198.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !160288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ab, ptr %i.aa, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs87CvPiUlf0m_5alloc6stringNtB5_6StringNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !56, !noundef !56
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.ei, align 8, !nonnull !56, !noundef !56
  %i.ej = invoke noundef zeroext i1 @_RNvNtCslwFuT2d6ECx_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val5, ptr noundef nonnull @6, ptr noundef nonnull %i.aa)
          to label %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit unwind label %bb.ah

bb.ah:                                            ; preds = %_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !160368)
  call void @llvm.experimental.noalias.scope.decl(metadata !160369)
  %.val.i.i = load i64, ptr %i.ab, align 8, !alias.scope !160370 ; 2 uses
  %i.el = icmp eq i64 %.val.i.i, 0
  br i1 %i.el, label %common.resume, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i: ; preds = %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i = load ptr, ptr %i.em, align 8, !alias.scope !160370, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160370
  br label %common.resume

_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit: ; preds = %_RNvMs4_NtCscnlsAxKLLci_4pest5errorINtB5_5ErrorNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleE6formatCskcxRuJ53GpR_9rustworkx.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.experimental.noalias.scope.decl(metadata !160371)
  call void @llvm.experimental.noalias.scope.decl(metadata !160372)
  %.val.i.i8 = load i64, ptr %i.ab, align 8, !alias.scope !160373 ; 2 uses
  %i.en = icmp eq i64 %.val.i.i8, 0
  br i1 %i.en, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit11, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i9

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i9: ; preds = %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i10 = load ptr, ptr %i.eo, align 8, !alias.scope !160373, !nonnull !56, !noundef !56
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i10, i64 noundef %.val.i.i8, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !160373
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit11

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx.exit11: ; preds = %_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter9write_fmt.exit, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret i1 %i.ej
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtCshByAT0BfsDP_7ndarray8impl_ops14arithmetic_opsINtB9_9ArrayBaseINtNtB9_9data_repr9OwnedReprdEINtNtNtB9_9dimension3dim3DimAjj1_EdEINtNtNtCslwFuT2d6ECx_4core3ops5arith3AddRINtB9_8ArrayRefdB1E_EE3addCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %lhsv = load i64, ptr %i.h, align 8             ; 6 uses
  %rhsv = load i64, ptr %i.i, align 8             ; 19 uses
  %.not95 = icmp eq i64 %lhsv, %rhsv
  br i1 %.not95, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160456)
  %i.j = icmp eq i64 %lhsv, 1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %rhsv, 1
  %i.l = icmp sgt i64 %lhsv, -1
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.k, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %rhsv, 0
  br i1 %i.m, label %bb.e, label %_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160457
  store i8 1, ptr %i.a, align 1, !noalias !160457
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1539, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #60
          to label %.noexc8 unwind label %.split.thread

.noexc8:                                          ; preds = %bb.e
  unreachable

.split.thread:                                    ; preds = %bb.e, %bb.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !160458)
  call void @llvm.experimental.noalias.scope.decl(metadata !160459)
  call void @llvm.experimental.noalias.scope.decl(metadata !160460)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !160461, !noundef !56 ; 2 uses
  %.not.i.i.i26 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i26, label %.thread, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i27

_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i25.i = load i64, ptr %i.p, align 8, !alias.scope !160462 ; 4 uses
  %.sroa.039.0 = load ptr, ptr %i.g, align 8, !alias.scope !160455, !nonnull !56, !noundef !56 ; 7 uses
  %.sroa.17.0 = load ptr, ptr %2, align 8, !alias.scope !160456, !nonnull !56, !noundef !56 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.q = icmp samesign ugt i64 %rhsv, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160463)
  %i.r = shl i64 %rhsv, 3                         ; 6 uses
  %i.s = icmp samesign ugt i64 %rhsv, 2305843009213693951
  %.not.i.i.i.i = icmp ugt i64 %i.r, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.s, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.i, label %bb.f, !prof !62

bb.f:                                             ; preds = %_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !160464
  %i.u = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !160464 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = ptrtoint ptr %i.u to i64
  br label %_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i

bb.i:                                             ; preds = %bb.g, %_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17
  %.sroa.414.0.ph.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %_RINvNtCshByAT0BfsDP_7ndarray9dimension21size_of_shape_checkedINtNtB2_3dim3DimAjj1_EECskcxRuJ53GpR_9rustworkx.exit.i.i.i17 ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.sroa.414.0.ph.i.i.i, i64 %i.r) #61
          to label %.noexc19 unwind label %.split.thread

.noexc19:                                         ; preds = %bb.i
  unreachable

_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.h, %bb.f
  %.sroa.414.0.i.i.i = phi i64 [ %rhsv, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %.sroa.10.0.i.i.i = phi i64 [ %i.w, %bb.h ], [ 8, %bb.f ]
  %i.x = inttoptr i64 %.sroa.10.0.i.i.i to ptr    ; 10 uses
  %i.y = icmp samesign ule i64 %rhsv, %.sroa.414.0.i.i.i
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i64 %rhsv, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %bb.j

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %min.iters.check = icmp samesign ugt i64 %rhsv, 11
  %ident.check.not = icmp eq i64 %.val.i25.i, 1
  %or.cond11 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond11, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.aa = getelementptr i8, ptr %i.x, i64 %i.r    ; 2 uses
  %i.ab = getelementptr i8, ptr %.sroa.039.0, i64 8
  %i.ac = getelementptr i8, ptr %.sroa.17.0, i64 %i.r
  %bound0 = icmp ugt ptr %i.ab, %i.x
  %bound1 = icmp ult ptr %.sroa.039.0, %i.aa
  %found.conflict = and i1 %bound0, %bound1
  %bound07 = icmp ugt ptr %i.ac, %i.x
  %bound18 = icmp ult ptr %.sroa.17.0, %i.aa
  %found.conflict9 = and i1 %bound07, %bound18
  %conflict.rdx = or i1 %found.conflict, %found.conflict9
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %rhsv, 1152921504606846972     ; 3 uses
  %i.ad = load double, ptr %.sroa.039.0, align 8, !alias.scope !160465, !noalias !160466
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.sroa.17.0, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !alias.scope !160467, !noalias !160466
  %wide.load10 = load <2 x double>, ptr %i.ag, align 8, !alias.scope !160467, !noalias !160466
  %i.ah = fadd <2 x double> %broadcast.splat, %wide.load
  %i.ai = fadd <2 x double> %broadcast.splat, %wide.load10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> %i.ah, ptr %i.af, align 8, !alias.scope !160468, !noalias !160469
  store <2 x double> %i.ai, ptr %i.aj, align 8, !alias.scope !160468, !noalias !160469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !160426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %rhsv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.i.i.i.i.preheader12:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %rhsv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12
  %i.al = mul i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph, %.val.i25.i
  %i.am = getelementptr inbounds [8 x i8], ptr %.sroa.17.0, i64 %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph
  %.val.i.i.i.i.i.i.i.i.i.i.prol = load double, ptr %.sroa.039.0, align 8, !alias.scope !160470, !noalias !160466, !noundef !56
  %.val1.i.i.i.i.i.i.i.i.i.i.prol = load double, ptr %i.am, align 8, !alias.scope !160471, !noalias !160466, !noundef !56
  %i.ao = fadd double %.val.i.i.i.i.i.i.i.i.i.i.prol, %.val1.i.i.i.i.i.i.i.i.i.i.prol
  store double %i.ao, ptr %i.an, align 8, !noalias !160466
  %i.ap = or disjoint i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12
  %.sroa.01.06.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader12 ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.aq = icmp eq i64 %rhsv, %.neg
  br i1 %i.aq, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.01.06.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.01.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ar = mul i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i, %.val.i25.i
  %i.as = getelementptr inbounds [8 x i8], ptr %.sroa.17.0, i64 %i.ar
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.039.0, align 8, !alias.scope !160470, !noalias !160466, !noundef !56
  %.val1.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.as, align 8, !alias.scope !160471, !noalias !160466, !noundef !56
  %i.au = fadd double %.val.i.i.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i.i.i
  store double %i.au, ptr %i.at, align 8, !noalias !160466
  %i.av = add nuw nsw i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aw = mul i64 %i.av, %.val.i25.i
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.17.0, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.av
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %.sroa.039.0, align 8, !alias.scope !160470, !noalias !160466, !noundef !56
  %.val1.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.ax, align 8, !alias.scope !160471, !noalias !160466, !noundef !56
  %i.az = fadd double %.val.i.i.i.i.i.i.i.i.i.i.1, %.val1.i.i.i.i.i.i.i.i.i.i.1
  store double %i.az, ptr %i.ay, align 8, !noalias !160466
  %i.ba = add nuw nsw i64 %.sroa.01.06.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ba, %rhsv
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !160427

bb.j:                                             ; preds = %_RINvMso_NtCshByAT0BfsDP_7ndarray3zipINtB6_3ZipTINtB8_9ArrayBaseINtB8_8ViewReprRdEINtNtNtB8_9dimension3dim3DimAjj1_EdEBJ_EB1h_E3andIBK_INtB8_11RawViewReprOdEB1h_dEECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %rhsv, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.j
  %.val.i.i.i4.i.i.i.i.i.i = load double, ptr %.sroa.039.0, align 8, !alias.scope !160472, !noalias !160473, !noundef !56
  %.val1.i.i.i5.i.i.i.i.i.i = load double, ptr %.sroa.17.0, align 8, !alias.scope !160474, !noalias !160473, !noundef !56
  %i.bb = fadd double %.val.i.i.i4.i.i.i.i.i.i, %.val1.i.i.i5.i.i.i.i.i.i
  store double %i.bb, ptr %i.x, align 8, !noalias !160473
  br label %.loopexit

bb.k:                                             ; preds = %bb.c
  %.sroa.039.0115 = load ptr, ptr %i.g, align 8, !alias.scope !160455, !nonnull !56, !noundef !56
  %.sroa.17.0116 = load ptr, ptr %2, align 8, !alias.scope !160456, !nonnull !56, !noundef !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.17.0116, ptr %i.e, align 8
  %.sroa.847.24..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %lhsv, ptr %.sroa.847.24..sroa_idx117, align 8
  %.sroa.9.24..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.9.24..sroa_idx118, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.058.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.459.0.copyload = load i8, ptr %.sroa.459.0..sroa_idx, align 8 ; 2 uses
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.863.0.copyload = load i64, ptr %.sroa.863.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160476)
  %i.bc = icmp eq ptr %.sroa.058.0.copyload, null
  br i1 %i.bc, label %.noexc6, label %.thread94, !prof !60

.noexc6:                                          ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !160477
  store i8 %.sroa.459.0.copyload, ptr %i.b, align 1, !noalias !160477
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1539, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #60
  unreachable

.thread94:                                        ; preds = %bb.k
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store ptr %.sroa.058.0.copyload, ptr %i.d, align 8, !alias.scope !160478
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %.sroa.459.0.copyload, ptr %.sroa.550.0..sroa_idx, align 8, !alias.scope !160478
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.653.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.560.0..sroa_idx, i64 15, i1 false)
  %.sroa.655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %.sroa.039.0115, ptr %.sroa.655.0..sroa_idx, align 8, !alias.scope !160478
  %.sroa.756.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %lhsv, ptr %.sroa.756.0..sroa_idx, align 8, !alias.scope !160478
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.863.0.copyload, ptr %.sroa.857.0..sroa_idx, align 8, !alias.scope !160478
  call fastcc void @_RINvMsy_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj1_EE23zip_mut_with_same_shapedBY_NCINvNtNtB8_8impl_ops14arithmetic_ops10clone_iopfddNvYdNtNtNtCslwFuT2d6ECx_4core3ops5arith3Add3addE0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.655.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22: ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i21, %.loopexit, %.thread94, %bb.m
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.lr.ph.i.i.i.i.i.i.i.i, %bb.j
  %.sroa.0.0.i.v.i.i.i.i = icmp ne i64 %rhsv, 0
  %.sroa.0.0.i.i.i.i.i = zext i1 %.sroa.0.0.i.v.i.i.i.i to i64
  store ptr %i.x, ptr %0, align 8, !alias.scope !160479
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %rhsv, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !alias.scope !160479
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.414.0.i.i.i, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !alias.scope !160479
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.bd, align 8, !alias.scope !160479
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %rhsv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !160479
  %.sroa.5.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i10.i, align 8, !alias.scope !160479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160482)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !160483, !noundef !56 ; 2 uses
  %.not.i.i.i20 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i20, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i21

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i21: ; preds = %.loopexit
  %i.bg = load ptr, ptr %1, align 8, !alias.scope !160483, !nonnull !56, !noundef !56
  %i.bh = shl nuw i64 %i.bf, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bg, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !160483
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.034.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.636.0.copyload = load ptr, ptr %i.g, align 8, !nonnull !56, !noundef !56
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.838.0.copyload = load i64, ptr %.sroa.838.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160485)
  %i.bi = icmp eq ptr %.sroa.034.0.copyload, null
  br i1 %i.bi, label %.noexc, label %bb.m, !prof !60

.noexc:                                           ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !160486
  store i8 %.sroa.4.0.copyload, ptr %i.c, align 1, !noalias !160486
  call void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1539, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #60
  unreachable

bb.m:                                             ; preds = %bb.l
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store ptr %.sroa.034.0.copyload, ptr %i.f, align 8, !alias.scope !160487
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !160487
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.535.0..sroa_idx, i64 15, i1 false)
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  store ptr %.sroa.636.0.copyload, ptr %.sroa.633.0..sroa_idx, align 8, !alias.scope !160487
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %lhsv, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !160487
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.838.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !160487
  call fastcc void @_RINvMsy_NtCshByAT0BfsDP_7ndarray12impl_methodsINtB8_8ArrayRefdINtNtNtB8_9dimension3dim3DimAjj1_EE23zip_mut_with_same_shapedBY_NCINvNtNtB8_8impl_ops14arithmetic_ops10clone_iopfddNvYdNtNtNtCslwFuT2d6ECx_4core3ops5arith3Add3addE0ECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.633.0..sroa_idx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtCshByAT0BfsDP_7ndarray9ArrayBaseINtNtBE_9data_repr9OwnedReprdEINtNtNtBE_9dimension3dim3DimAjj1_EdEECskcxRuJ53GpR_9rustworkx.exit22

.thread:                                          ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i27, %.split.thread
  resume { ptr, i32 } %lpad.thr_comm

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VecdEECskcxRuJ53GpR_9rustworkx.exit.i.i.i27: ; preds = %.split.thread
  %i.bj = load ptr, ptr %1, align 8, !alias.scope !160461, !nonnull !56, !noundef !56
  %i.bk = shl nuw i64 %i.o, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bj, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !160461
end_hunk_3
