Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/ring-335c34c9cf309207.ring.40ba2f4c2579a305-cgu.0?download=true
inline.NumInlined: 2615
inline.NumDeleted: 1171
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_RINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtB8_5value14ValidatedInput18write_into_mont_RRNtNtBe_3rsa1NEBe_:bb.a
  br i1 %i.bq, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !133

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.body, %bb.p
  %.sroa.9.0.i.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.p ], [ %n.vec, %vector.body ]
  %.sroa.0.02.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ab, %bb.p ], [ %i.bj, %vector.body ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.br = icmp eq i64 %i.d, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %i.br, label %bb.q, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.val.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, align 8, !alias.scope !159, !noalias !160, !noundef !15
  %i.bs = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i.i, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.9.0.i.i.i.i.i.i.i
  store i64 %i.bs, ptr %i.bu, align 8, !alias.scope !161, !noalias !162
  %i.bv = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.bw = icmp eq ptr %i.bt, %i.ba
  br i1 %i.bw, label %bb.r, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !134

bb.q:                                             ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !163
  unreachable

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.au, align 8, !alias.scope !164, !noalias !156, !noundef !15
  %i.by = or i64 %i.bx, 1
  store i64 %i.by, ptr %i.au, align 8, !alias.scope !164, !noalias !156
  %i.bz = shl nuw nsw i64 %i.d, 6                 ; 3 uses
  %i.ca = sub nuw nsw i64 %i.bz, %.val34.i.i      ; 3 uses
  %i.cb = icmp ult i64 %i.bz, %.val34.i.i
  br i1 %i.cb, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = icmp eq i64 %i.bz, %.val34.i.i
  br i1 %i.cc, label %.preheader1.i.i.i.i.i, label %bb.u

bb.t:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #41, !noalias !165
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cd = icmp samesign ult i64 %i.ca, 64
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shr_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #41, !noalias !165
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u
  %i.ce = lshr i64 -1, %i.ca
  %i.cf = getelementptr [8 x i8], ptr %.sroa.0.0.i.i.i.i, i64 %i.bv
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8     ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !166, !noalias !156, !noundef !15
  %i.ci = and i64 %i.ch, %i.ce
  store i64 %i.ci, ptr %i.cg, align 8, !alias.scope !166, !noalias !156
  %.not.i.not.i.not.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.d
  br i1 %.not.i.not.i.not.i.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i, !prof !19

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i = phi i64 [ %i.cj, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i ]
  %i.cj = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i, 1 ; 2 uses
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !167
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.cj, %i.ca
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader1.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

.preheader1.i.i.i.i.i:                            ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i, %bb.s
  %.not.i.not.i.not.i.i9.i.i.i.i = icmp eq i64 %i.bv, %i.d
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i, !prof !19

.preheader.i.i.i.i.i:                             ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.ck = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cl = trunc nuw i64 %i.ck to i1
  br i1 %i.cl, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, !prof !16

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i
  %.sroa.05.02.i.i.i.i.i = phi i64 [ %i.cm, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i ] ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i, 1
  tail call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.au, ptr noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.d) #36, !noalias !169
  %exitcond.not.i12.i.i.i.i = icmp eq i64 %.sroa.05.02.i.i.i.i.i, %.sroa.9.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i12.i.i.i.i, label %.preheader.i.i.i.i.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i10.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

bb.w:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !23, !noalias !168, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.co) #39
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cp = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cr = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.ct = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cv = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.w, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !168
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 %i.au, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i), !noalias !169
  %i.cx = load i64, ptr %i.a, align 8, !range !22, !noalias !168, !noundef !15
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.w, label %bb.x, !prof !16

bb.x:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !168
  %i.cz = add nuw i64 %i.aa, %i.d
  store i64 %i.cz, ptr %i.s, align 8, !alias.scope !156
  br label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i: ; preds = %bb.x, %bb.o, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i, %bb.j, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i
  %i.da = phi i64 [ %.val3.i.i.i, %bb.j ], [ %.val3.i.i.i, %bb.o ], [ %.val3.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ %.pre5.i, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ %.val3.i.i.i, %bb.x ]
  %i.db = phi ptr [ %.val.i.i.i, %bb.j ], [ %.val.i.i.i, %bb.o ], [ %.val.i.i.i, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ %.pre.i, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ %.val.i.i.i, %bb.x ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.j ], [ 1, %bb.o ], [ 1, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i ], [ 1, %._RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit_crit_edge.i ], [ 0, %bb.x ]
  %i.dc = icmp eq ptr %i.db, %i.q
  %i.dd = icmp eq i64 %i.da, %i.m
  %i.de = and i1 %i.dd, %i.dc
  br i1 %i.de, label %bb.y, label %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit, !prof !19

bb.y:                                             ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i
  %i.df = load i64, ptr %i.s, align 8, !noundef !15
  %i.dg = add i64 %i.df, %i.l                     ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.l
  br i1 %i.dh, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %i.dg, ptr %i.k, align 8
  br label %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #41
  unreachable

_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit: ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i, %bb.z
  %.pn.i = phi i64 [ %.sroa.0.0.i.i, %bb.z ], [ 1, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtBg_3rsa1NEs_0Bg_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit
  %.pn = phi i64 [ %.pn.i, %_RINvMsc_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB6_6CursoryE25with_unfilled_buf_checkeduNtNtNtBa_5error18len_mismatch_error16LenMismatchErrorNCINvMs1_NtNtNtNtBa_10arithmetic6bigint7modulus4montNtNtB2z_5value14ValidatedInput18write_into_mont_RRNtNtBa_3rsa1NEs_0EBa_.exit ], [ 1, %bb.d ]
  ret i64 %.pn

bb.ac:                                            ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs6_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_5BoxedNtNtNtBc_3rsa7keypair1PE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp ult i64 %.8.val, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = lshr i64 %i.d, 1                         ; 4 uses
  %i.f = add nuw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.f ; 2 uses
  %i.h = sub nuw nsw i64 %.8.val, %i.f            ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !196, !noalias !197, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.j, %i.e
  br i1 %.not.i.i.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 8
  br i1 %i.k, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.d, 257
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i.i) #39
          to label %.noexc4 unwind label %bb.o

.noexc4:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !198
  store ptr %0, ptr %i.a, align 8, !noalias !198
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.m, align 8, !noalias !198
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.n, align 8, !noalias !198
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.o, align 8, !noalias !198
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.d, 15
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.d, 6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.m, label %.thread3.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  br label %.thread3.i.i

.thread3.i.i:                                     ; preds = %bb.i, %bb.h
  %.not.i.i.i.i = icmp eq i64 %i.h, %i.e
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %.thread3.i.i
  %.not.i.i.i.i.i = icmp eq i64 %1, %i.e
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j, %.thread3.i.i
  %.sroa.6.0.ph.i.i.i = phi i64 [ %i.h, %.thread3.i.i ], [ %1, %bb.j ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i.i.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !199, !noalias !198
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull readonly align 8 %i.g, ptr noundef nonnull readonly align 8 %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %1) #36, !noalias !200, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !199, !noalias !198
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i: ; preds = %bb.l, %bb.k
  %.sink13.i.i.i = phi i64 [ %1, %bb.l ], [ %i.u, %bb.k ]
  %.sink.i.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i.i.i, ptr %i.x, align 8, !alias.scope !199, !noalias !198
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i

bb.m:                                             ; preds = %bb.h
  %i.y = lshr i64 %i.d, 3
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !201, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not.i.i = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not.i.i) #40
  %.pre.i.i = load i64, ptr %i.b, align 8, !range !22, !noalias !198
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i: ; preds = %bb.m, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i
  %i.ac = phi i64 [ %.sink.i.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i.i ], [ %.pre.i.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !198
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %bb.p, !prof !16

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noalias !198, !noundef !15
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
          to label %.noexc5 unwind label %bb.o

.noexc5:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n, %bb.f, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = icmp eq i64 %1, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PEEBK_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.o
  %i.ai = shl nuw nsw i64 %1, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef %i.ai, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PEEBK_.exit

bb.p:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !198
  %i.aj = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ak = insertvalue { ptr, i64 } %i.aj, i64 %1, 1
  ret { ptr, i64 } %i.ak

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PEEBK_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.o
  resume { ptr, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp ult i64 %.8.val, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !228
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = lshr i64 %i.d, 1                         ; 4 uses
  %i.f = add nuw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.f ; 2 uses
  %i.h = sub nuw nsw i64 %.8.val, %i.f            ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !229, !noundef !15
  %.not.i.i = icmp eq i64 %i.j, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 8
  br i1 %i.k, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.d, 257
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtB6_3rsa1NEEB6_(i64 noundef %.sroa.42.0.ph.i) #39
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !230
  store ptr %0, ptr %i.a, align 8, !noalias !230
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.m, align 8, !noalias !230
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.n, align 8, !noalias !230
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.o, align 8, !noalias !230
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.d, 15
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.d, 6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.m, label %.thread3.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  br label %.thread3.i

.thread3.i:                                       ; preds = %bb.h, %bb.i
  %.not.i.i.i = icmp eq i64 %i.h, %i.e
  br i1 %.not.i.i.i, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %.thread3.i
  %.not.i.i.i.i = icmp eq i64 %1, %i.e
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j, %.thread3.i
  %.sroa.6.0.ph.i.i = phi i64 [ %i.h, %.thread3.i ], [ %1, %bb.j ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !231, !noalias !230
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i

bb.l:                                             ; preds = %bb.j
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull readonly align 8 %i.g, ptr noundef nonnull readonly align 8 %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %1) #36, !noalias !232, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !231, !noalias !230
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i: ; preds = %bb.l, %bb.k
  %.sink13.i.i = phi i64 [ %1, %bb.l ], [ %i.u, %bb.k ]
  %.sink.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i.i, ptr %i.x, align 8, !alias.scope !231, !noalias !230
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i

bb.m:                                             ; preds = %bb.h
  %i.y = lshr i64 %i.d, 3
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !233, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not.i = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not.i) #40
  %.pre.i = load i64, ptr %i.b, align 8, !range !22, !noalias !230
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i: ; preds = %bb.m, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i
  %i.ac = phi i64 [ %.sink.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i ], [ %.pre.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !230
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE3mulNtNtBa_10montgomery2RREBc_.exit, !prof !16

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noalias !230, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
  unreachable

_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE3mulNtNtBa_10montgomery2RREBc_.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !230
  %i.ag = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %1, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PNtNtBa_10montgomery8RInverseE11encode_montNtB1s_2RREBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp ult i64 %.8.val, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !260
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = lshr i64 %i.d, 1                         ; 4 uses
  %i.f = add nuw i64 %i.e, 2                      ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.f ; 2 uses
  %i.h = sub nuw nsw i64 %.8.val, %i.f            ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !261, !noundef !15
  %.not.i.i = icmp eq i64 %i.j, %i.e
  br i1 %.not.i.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.d, 8
  br i1 %i.k, label %bb.f, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.d, 257
  br i1 %i.l, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.42.0.ph.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef %.sroa.42.0.ph.i) #39
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !262
  store ptr %0, ptr %i.a, align 8, !noalias !262
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.m, align 8, !noalias !262
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.n, align 8, !noalias !262
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.h, ptr %i.o, align 8, !noalias !262
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.d, 15
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = and i64 %i.d, 6
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.m, label %.thread3.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  br label %.thread3.i

.thread3.i:                                       ; preds = %bb.h, %bb.i
  %.not.i.i.i = icmp eq i64 %i.h, %i.e
  br i1 %.not.i.i.i, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %.thread3.i
  %.not.i.i.i.i = icmp eq i64 %1, %i.e
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j, %.thread3.i
  %.sroa.6.0.ph.i.i = phi i64 [ %i.h, %.thread3.i ], [ %1, %bb.j ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !263, !noalias !262
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i

bb.l:                                             ; preds = %bb.j
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull readonly align 8 %i.g, ptr noundef nonnull readonly align 8 %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %1) #36, !noalias !264, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !263, !noalias !262
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i: ; preds = %bb.l, %bb.k
  %.sink13.i.i = phi i64 [ %1, %bb.l ], [ %i.u, %bb.k ]
  %.sink.i.i = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i.i, ptr %i.x, align 8, !alias.scope !263, !noalias !262
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i

bb.m:                                             ; preds = %bb.h
  %i.y = lshr i64 %i.d, 3
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !265, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not.i = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not.i) #40
  %.pre.i = load i64, ptr %i.b, align 8, !range !22, !noalias !262
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i: ; preds = %bb.m, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i
  %i.ac = phi i64 [ %.sink.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit.i ], [ %.pre.i, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !262
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PNtNtBa_10montgomery8RInverseE3mulNtB1s_2RREBc_.exit, !prof !16

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noalias !262, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
  unreachable

_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PNtNtBa_10montgomery8RInverseE3mulNtB1s_2RREBc_.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !262
  %i.ag = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %1, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.e, align 8
  %i.f = icmp ugt i64 %.8.val, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %.8.val, -2                      ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.g, 7
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.g, 3
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.l = icmp samesign ult i64 %i.g, 4
  br i1 %i.l, label %bb.g, label %.thread3, !prof !24

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %i.g, 128
  br i1 %i.m, label %bb.i, label %.thread3, !prof !25

bb.g:                                             ; preds = %bb.e
  %i.n = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846976) %i.g) #39
  %i.o = extractvalue { i64, i64 } %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.p, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

.thread3:                                         ; preds = %bb.e, %bb.f
  %.not.i.i = icmp eq i64 %3, %i.g
  br i1 %.not.i.i, label %bb.h, label %bb.j, !prof !19

bb.h:                                             ; preds = %.thread3
  %.not.i.i.i = icmp eq i64 %1, %3
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.q = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846976) %i.g) #39
  %i.r = extractvalue { i64, i64 } %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.s, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

bb.j:                                             ; preds = %bb.h, %.thread3
  %.sroa.6.0.ph.i = phi i64 [ %3, %.thread3 ], [ %1, %bb.h ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

bb.k:                                             ; preds = %bb.h
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull %2, ptr noundef nonnull readonly align 8 %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %3) #36, !noalias !286, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.o, %bb.g ], [ %i.r, %bb.i ], [ %i.u, %bb.j ], [ %3, %bb.k ]
  %.sink.i = phi i64 [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i, ptr %i.x, align 8, !alias.scope !285
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit

bb.l:                                             ; preds = %bb.d
  %i.y = lshr exact i64 %i.g, 2
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !287, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not) #40
  %.pre = load i64, ptr %i.b, align 8, !range !22
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit, %bb.l
  %i.ac = phi i64 [ %.sink.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit ], [ %.pre, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
  unreachable

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %1, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PE3mulNtNtBa_10montgomery1REBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %3, ptr %i.e, align 8
  %i.f = icmp ugt i64 %.8.val, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add i64 %.8.val, -2                      ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.i = icmp samesign ugt i64 %i.g, 7
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = and i64 %i.g, 3
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.l, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.l = icmp samesign ult i64 %i.g, 4
  br i1 %i.l, label %bb.g, label %.thread3, !prof !24

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %i.g, 128
  br i1 %i.m, label %bb.i, label %.thread3, !prof !25

bb.g:                                             ; preds = %bb.e
  %i.n = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846976) %i.g) #39
  %i.o = extractvalue { i64, i64 } %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.p, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

.thread3:                                         ; preds = %bb.e, %bb.f
  %.not.i.i = icmp eq i64 %3, %i.g
  br i1 %.not.i.i, label %bb.h, label %bb.j, !prof !19

bb.h:                                             ; preds = %.thread3
  %.not.i.i.i = icmp eq i64 %1, %3
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.q = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846976) %i.g) #39
  %i.r = extractvalue { i64, i64 } %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.s, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

bb.j:                                             ; preds = %bb.h, %.thread3
  %.sroa.6.0.ph.i = phi i64 [ %3, %.thread3 ], [ %1, %bb.h ]
  %i.t = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i) #39
  %i.u = extractvalue { i64, i64 } %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.v, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

bb.k:                                             ; preds = %bb.h
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %0, ptr noundef nonnull %2, ptr noundef nonnull readonly align 8 %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i64 noundef range(i64 0, 1152921504606846976) %3) #36, !noalias !308, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %0, ptr %i.w, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit: ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.sink13.i = phi i64 [ %i.o, %bb.g ], [ %i.r, %bb.i ], [ %i.u, %bb.j ], [ %3, %bb.k ]
  %.sink.i = phi i64 [ 1, %bb.g ], [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sink13.i, ptr %i.x, align 8, !alias.scope !307
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit

bb.l:                                             ; preds = %bb.d
  %i.y = lshr exact i64 %i.g, 2
  %i.z = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !309, !noundef !15 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = and i32 %i.z, 1536
  %brmerge.i.not = icmp eq i32 %i.ab, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val, i1 noundef zeroext %brmerge.i.not) #40
  %.pre = load i64, ptr %i.b, align 8, !range !22
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit, %bb.l
  %i.ac = phi i64 [ %.sink.i, %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiuKj4_Kj1_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1N_EEB6_.exit ], [ %.pre, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !23, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.af) #39
  unreachable

bb.n:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %1, 1
  ret { ptr, i64 } %i.ah
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1PEBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %2, ptr %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp ugt i64 %.8.val, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 6 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %i.d, 1                      ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp eq i64 %1, %i.f
  br i1 %i.g, label %bb.g, label %bb.f, !prof !19

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #41
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #41
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = icmp ugt i64 %1, 128
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %3, ptr nonnull readonly align 8 %0, i64 %i.i, i1 false), !alias.scope !318
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.j, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit, !prof !16

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit: ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.k = tail call noundef i32 @ring_core_0_17_16000__bn_from_montgomery_in_place(ptr noundef nonnull align 8 %2, i64 noundef %i.d, ptr noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noundef nonnull readonly align 8 %i.j, i64 noundef range(i64 0, 1152921504606846976) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) #36, !noalias !319
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %_RNvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery24limbs_from_mont_in_place.exit, label %bb.k, !prof !19

bb.k:                                             ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41
  unreachable

_RNvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery24limbs_from_mont_in_place.exit: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit
  %i.m = insertvalue { ptr, i64 } poison, ptr %2, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %i.d, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtBG_6string6StringB19_bEEECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %.val4.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !326 ; 2 uses
  %i.f = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val5.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !326, !nonnull !15, !noundef !15
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %.val4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !326
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5yxAJGbRKSL_4ring.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !326 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i, label %bb.c
end_hunk_0
begin_hunk_1_@_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !noalias !760
  call void @ring_core_0_17_16000__aes_hw_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !770, !inline_history !1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bk, ptr noundef nonnull align 1 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2hw3KeyNtNtNtB4_3gcm12clmul_x86_643KeyEB6_.exit ], [ 1, %_RNvMNtNtCs5yxAJGbRKSL_4ring4aead3gcmINtB2_7ContextNtNtB2_12clmul_x86_643KeyE3newB6_.exit.thread ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(16) %6, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %7) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 6 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca [16 x i8], align 1                ; 5 uses
  %.sroa.062 = alloca i128, align 16              ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = icmp samesign ugt i64 %5, 68719476704
  br i1 %i.i, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.j = shl nuw nsw i64 %5, 3                    ; 2 uses
  %i.k = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.k, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.l = shl nuw i64 %3, 3                        ; 2 uses
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph.i.preheader.i.lr.ph

.lr.ph.i.preheader.i.lr.ph:                       ; preds = %bb.c
  %i.n = load i64, ptr %1, align 8, !alias.scope !832, !noalias !833, !noundef !15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !832, !noalias !833, !noundef !15 ; 2 uses
  %i.q = xor i64 %i.p, %i.n
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.lr.ph, %.lr.ph.i.preheader.i
  %.sroa.548.sroa.0.086 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bp, %.lr.ph.i.preheader.i ]
  %.sroa.548.sroa.6.085 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bq, %.lr.ph.i.preheader.i ]
  %.sroa.058.084 = phi ptr [ %2, %.lr.ph.i.preheader.i.lr.ph ], [ %i.r, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.559.083 = phi i64 [ %3, %.lr.ph.i.preheader.i.lr.ph ], [ %i.s, %.lr.ph.i.preheader.i ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.559.083, i64 16) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.058.084, i64 %..i.i
  %i.s = sub nuw nsw i64 %.sroa.559.083, %..i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.062)
  store i128 0, ptr %.sroa.062, align 16, !noalias !834
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.062, ptr nonnull readonly align 1 %.sroa.058.084, i64 %..i.i, i1 false), !alias.scope !835, !noalias !836
  %.sroa.062.0..sroa.062.0..sroa.062.0..sroa.062.0..sroa.061.0.copyload = load i128, ptr %.sroa.062, align 16, !noalias !834
  %.sroa.548.sroa.6.0.insert.ext54 = zext i64 %.sroa.548.sroa.6.085 to i128
  %.sroa.548.sroa.6.0.insert.shift55 = shl nuw i128 %.sroa.548.sroa.6.0.insert.ext54, 64
  %.sroa.548.sroa.0.0.insert.ext51 = zext i64 %.sroa.548.sroa.0.086 to i128
  %.sroa.548.sroa.0.0.insert.insert53 = or disjoint i128 %.sroa.548.sroa.6.0.insert.shift55, %.sroa.548.sroa.0.0.insert.ext51
  %i.t = xor i128 %.sroa.062.0..sroa.062.0..sroa.062.0..sroa.062.0..sroa.061.0.copyload, %.sroa.548.sroa.0.0.insert.insert53 ; 2 uses
  %i.u = trunc i128 %i.t to i64
  %i.v = lshr i128 %i.t, 64
  %i.w = trunc nuw i128 %i.v to i64
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %i.u) ; 2 uses
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.w) ; 2 uses
  %i.z = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.y, i64 noundef %i.p) ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0       ; 8 uses
  %i.ab = extractvalue { i64, i64 } %i.z, 1       ; 2 uses
  %i.ac = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.x, i64 noundef %i.n) ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1      ; 2 uses
  %i.af = xor i64 %i.y, %i.x
  %i.ag = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.af, i64 noundef %i.q) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %i.aj = shl i64 %i.aa, 63
  %i.ak = shl i64 %i.aa, 62
  %i.al = shl i64 %i.aa, 57
  %i.am = xor i64 %i.aj, %i.ak
  %i.an = xor i64 %i.am, %i.al
  %i.ao = xor i64 %i.an, %i.ah
  %i.ap = xor i64 %i.ao, %i.aa
  %i.aq = xor i64 %i.ap, %i.ab
  %i.ar = xor i64 %i.aq, %i.ad                    ; 7 uses
  %i.as = lshr i64 %i.aa, 1
  %i.at = shl i64 %i.ar, 63
  %i.au = lshr i64 %i.ar, 1
  %i.av = lshr i64 %i.aa, 2
  %i.aw = shl i64 %i.ar, 62
  %i.ax = lshr i64 %i.ar, 2
  %i.ay = lshr i64 %i.aa, 7
  %i.az = shl i64 %i.ar, 57
  %i.ba = xor i64 %i.av, %i.as
  %i.bb = xor i64 %i.ba, %i.ay
  %i.bc = xor i64 %i.bb, %i.ai
  %i.bd = xor i64 %i.bc, %i.at
  %i.be = xor i64 %i.bd, %i.aw
  %i.bf = xor i64 %i.be, %i.az
  %i.bg = xor i64 %i.bf, %i.ab
  %i.bh = xor i64 %i.bg, %i.aa
  %i.bi = xor i64 %i.bh, %i.ae
  %i.bj = xor i64 %i.bi, %i.ad
  %i.bk = lshr i64 %i.ar, 7
  %i.bl = xor i64 %i.au, %i.ax
  %i.bm = xor i64 %i.bl, %i.bk
  %i.bn = xor i64 %i.bm, %i.ae
  %i.bo = xor i64 %i.bn, %i.ar
  %i.bp = tail call i64 @llvm.bswap.i64(i64 %i.bo) ; 2 uses
  %i.bq = tail call i64 @llvm.bswap.i64(i64 %i.bj) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.062)
  %i.br = icmp eq i64 %i.s, 0
  br i1 %i.br, label %._crit_edge, label %.lr.ph.i.preheader.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.819.0.ph = phi i64 [ %5, %bb.a ], [ %3, %bb.b ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.819.0.ph, ptr %i.bs, align 8
  br label %bb.e

._crit_edge:                                      ; preds = %.lr.ph.i.preheader.i, %bb.c
  %.sroa.548.sroa.6.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.bq, %.lr.ph.i.preheader.i ]
  %.sroa.548.sroa.0.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.bp, %.lr.ph.i.preheader.i ]
  store ptr %1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store i64 %.sroa.548.sroa.0.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.548.sroa.6.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i64 %i.l, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store i64 %i.j, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.bt = and i64 %5, 68719476720
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt ; 2 uses
  %i.bv = and i64 %5, 15                          ; 7 uses
  %i.bw = lshr i64 %5, 4                          ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph: ; preds = %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.promoted = load i32, ptr %i.by, align 1
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %.promoted)
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %i.ca = phi i32 [ %i.bz, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.cd, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ]
  %.sroa.022.089 = phi ptr [ %4, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.cb, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 4 uses
  %.sroa.523.088 = phi i64 [ %i.bw, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.cc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 2 uses
  %..i.i14 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.523.088, i64 192) ; 5 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.022.089, i64 %..i.i14
  %i.cc = sub nuw nsw i64 %.sroa.523.088, %..i.i14 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw nsw i64 %..i.i14 to i32
  tail call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %.sroa.022.089, ptr noundef nonnull %.sroa.022.089, i64 noundef %..i.i14, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %6) #36, !noalias !837, !inline_history !1
  %i.cd = add i32 %i.ca, %.sroa.6.0.extract.trunc.i.i.i.i ; 2 uses
  %i.ce = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  store i32 %i.ce, ptr %i.by, align 1, !alias.scope !838, !noalias !839
  %i.cf = load ptr, ptr %i.g, align 8, !nonnull !15, !align !17, !noundef !15
  call void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallbackNtB5_3KeyNtB7_12UpdateBlocks13update_blocks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cf, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.022.089, i64 noundef %..i.i14)
  %i.cg = icmp eq i64 %i.cc, 0
  br i1 %i.cg, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %.sroa.038.0.copyload.pre = load ptr, ptr %i.g, align 8
  %.sroa.9.0.copyload.pre = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0.copyload.pre = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit, %._crit_edge
  %.sroa.10.0.copyload = phi i64 [ %.sroa.10.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.j, %._crit_edge ]
  %.sroa.9.0.copyload = phi i64 [ %.sroa.9.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.l, %._crit_edge ]
  %.sroa.038.0.copyload = phi ptr [ %.sroa.038.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %1, %._crit_edge ] ; 5 uses
  %.sroa.539.0.copyload = load i128, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.539.sroa.0.0.extract.trunc = trunc i128 %.sroa.539.0.copyload to i64
  %.sroa.539.sroa.6.0.extract.shift = lshr i128 %.sroa.539.0.copyload, 64
  %.sroa.539.sroa.6.0.extract.trunc = trunc nuw i128 %.sroa.539.sroa.6.0.extract.shift to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i18 = icmp eq i64 %i.bv, 0
  br i1 %.not.i18, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread
  %i.ch = sub nuw nsw i64 16, %i.bv
  %i.ci = getelementptr i8, ptr %i.f, i64 %i.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ci, i8 0, i64 %i.ch, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %i.bu, i64 %i.bv, i1 false), !noalias !840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %6, i64 16, i1 false)
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a) #36, !noalias !842, !inline_history !1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !841
  %i.cj = sub nuw nsw i64 16, %i.bv
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, i8 0, i64 %i.cj, i1 false), !noalias !840
  %.sroa.0.0.copyload.i = load i128, ptr %i.e, align 16, !noalias !840
  %i.cl = xor i128 %.sroa.0.0.copyload.i, %.sroa.539.0.copyload ; 2 uses
  %i.cm = load i64, ptr %.sroa.038.0.copyload, align 8, !alias.scope !843, !noalias !844, !noundef !15 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !843, !noalias !844, !noundef !15 ; 2 uses
  %i.cp = trunc i128 %i.cl to i64
  %i.cq = lshr i128 %i.cl, 64
  %i.cr = trunc nuw i128 %i.cq to i64
  %i.cs = call noundef i64 @llvm.bswap.i64(i64 %i.cp) ; 2 uses
  %i.ct = call noundef i64 @llvm.bswap.i64(i64 %i.cr) ; 2 uses
  %i.cu = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ct, i64 noundef %i.co) ; 2 uses
  %i.cv = extractvalue { i64, i64 } %i.cu, 0      ; 8 uses
  %i.cw = extractvalue { i64, i64 } %i.cu, 1      ; 2 uses
  %i.cx = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cs, i64 noundef %i.cm) ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0      ; 2 uses
  %i.cz = extractvalue { i64, i64 } %i.cx, 1      ; 2 uses
  %i.da = xor i64 %i.ct, %i.cs
  %i.db = xor i64 %i.co, %i.cm
  %i.dc = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.da, i64 noundef %i.db) ; 2 uses
  %i.dd = extractvalue { i64, i64 } %i.dc, 0
  %i.de = extractvalue { i64, i64 } %i.dc, 1
  %i.df = shl i64 %i.cv, 63
  %i.dg = shl i64 %i.cv, 62
  %i.dh = shl i64 %i.cv, 57
  %i.di = xor i64 %i.dg, %i.df
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = xor i64 %i.dj, %i.dd
  %i.dl = xor i64 %i.dk, %i.cv
  %i.dm = xor i64 %i.dl, %i.cw
  %i.dn = xor i64 %i.dm, %i.cy                    ; 7 uses
  %i.do = lshr i64 %i.cv, 1
  %i.dp = shl i64 %i.dn, 63
  %i.dq = lshr i64 %i.dn, 1
  %i.dr = lshr i64 %i.cv, 2
  %i.ds = shl i64 %i.dn, 62
  %i.dt = lshr i64 %i.dn, 2
  %i.du = lshr i64 %i.cv, 7
  %i.dv = shl i64 %i.dn, 57
  %i.dw = xor i64 %i.do, %i.dr
  %i.dx = xor i64 %i.dw, %i.du
  %i.dy = xor i64 %i.dx, %i.de
  %i.dz = xor i64 %i.dy, %i.dp
  %i.ea = xor i64 %i.dz, %i.ds
  %i.eb = xor i64 %i.ea, %i.dv
  %i.ec = xor i64 %i.eb, %i.cw
  %i.ed = xor i64 %i.ec, %i.cv
  %i.ee = xor i64 %i.ed, %i.cz
  %i.ef = xor i64 %i.ee, %i.cy
  %i.eg = lshr i64 %i.dn, 7
  %i.eh = xor i64 %i.dt, %i.dq
  %i.ei = xor i64 %i.eh, %i.eg
  %i.ej = xor i64 %i.ei, %i.cz
  %i.ek = xor i64 %i.ej, %i.dn
  %i.el = call i64 @llvm.bswap.i64(i64 %i.ek)
  %i.em = call i64 @llvm.bswap.i64(i64 %i.ef)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 16 dereferenceable(16) %i.e, i64 range(i64 0, -9223372036854775808) %i.bv, i1 false), !noalias !844
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  %.sroa.539.sroa.6.0 = phi i64 [ %i.em, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.539.sroa.6.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.539.sroa.0.0 = phi i64 [ %i.el, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.539.sroa.0.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.539.sroa.6.0.insert.ext43 = zext i64 %.sroa.539.sroa.6.0 to i128
  %.sroa.539.sroa.6.0.insert.shift44 = shl nuw i128 %.sroa.539.sroa.6.0.insert.ext43, 64
  %.sroa.539.sroa.0.0.insert.ext40 = zext i64 %.sroa.539.sroa.0.0 to i128
  %.sroa.539.sroa.0.0.insert.insert42 = or disjoint i128 %.sroa.539.sroa.6.0.insert.shift44, %.sroa.539.sroa.0.0.insert.ext40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %7, i64 16, i1 false), !noalias !846
  %i.en = zext i64 %.sroa.10.0.copyload to i128
  %i.eo = zext i64 %.sroa.9.0.copyload to i128
  %i.ep = shl nuw i128 %i.eo, 64
  %i.eq = or disjoint i128 %i.ep, %i.en
  %.sroa.0.0.insert.insert.i = call i128 @llvm.bswap.i128(i128 %i.eq)
  %i.er = xor i128 %.sroa.539.sroa.0.0.insert.insert42, %.sroa.0.0.insert.insert.i ; 2 uses
  %i.es = load i64, ptr %.sroa.038.0.copyload, align 8, !alias.scope !847, !noalias !848, !noundef !15 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.038.0.copyload, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !847, !noalias !848, !noundef !15 ; 2 uses
  %i.ev = trunc i128 %i.er to i64
  %i.ew = lshr i128 %i.er, 64
  %i.ex = trunc nuw i128 %i.ew to i64
  %i.ey = call noundef i64 @llvm.bswap.i64(i64 %i.ev) ; 2 uses
  %i.ez = call noundef i64 @llvm.bswap.i64(i64 %i.ex) ; 2 uses
  %i.fa = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ez, i64 noundef %i.eu) ; 2 uses
  %i.fb = extractvalue { i64, i64 } %i.fa, 0      ; 8 uses
  %i.fc = extractvalue { i64, i64 } %i.fa, 1      ; 2 uses
  %i.fd = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ey, i64 noundef %i.es) ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.fd, 0      ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fd, 1      ; 2 uses
  %i.fg = xor i64 %i.ez, %i.ey
  %i.fh = xor i64 %i.eu, %i.es
  %i.fi = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fg, i64 noundef %i.fh) ; 2 uses
  %i.fj = extractvalue { i64, i64 } %i.fi, 0
  %i.fk = extractvalue { i64, i64 } %i.fi, 1
  %i.fl = shl i64 %i.fb, 63
  %i.fm = shl i64 %i.fb, 62
  %i.fn = shl i64 %i.fb, 57
  %i.fo = xor i64 %i.fm, %i.fl
  %i.fp = xor i64 %i.fo, %i.fn
  %i.fq = xor i64 %i.fp, %i.fj
  %i.fr = xor i64 %i.fq, %i.fb
  %i.fs = xor i64 %i.fr, %i.fc
  %i.ft = xor i64 %i.fs, %i.fe                    ; 7 uses
  %i.fu = lshr i64 %i.fb, 1
  %i.fv = shl i64 %i.ft, 63
  %i.fw = lshr i64 %i.ft, 1
  %i.fx = lshr i64 %i.fb, 2
  %i.fy = shl i64 %i.ft, 62
  %i.fz = lshr i64 %i.ft, 2
  %i.ga = lshr i64 %i.fb, 7
  %i.gb = shl i64 %i.ft, 57
  %i.gc = xor i64 %i.fu, %i.fx
  %i.gd = xor i64 %i.gc, %i.ga
  %i.ge = xor i64 %i.gd, %i.fk
  %i.gf = xor i64 %i.ge, %i.fv
  %i.gg = xor i64 %i.gf, %i.fy
  %i.gh = xor i64 %i.gg, %i.gb
  %i.gi = xor i64 %i.gh, %i.fc
  %i.gj = xor i64 %i.gi, %i.fb
  %i.gk = xor i64 %i.gj, %i.ff
  %i.gl = xor i64 %i.gk, %i.fe
  %i.gm = lshr i64 %i.ft, 7
  %i.gn = xor i64 %i.fz, %i.fw
  %i.go = xor i64 %i.gn, %i.gm
  %i.gp = xor i64 %i.go, %i.ff
  %i.gq = xor i64 %i.gp, %i.ft
  %i.gr = zext i64 %i.gl to i128
  %i.gs = zext i64 %i.gq to i128
  %i.gt = shl nuw i128 %i.gs, 64
  %i.gu = or disjoint i128 %i.gt, %i.gr
  %.sroa.4.sroa.0.0.insert.insert8.i = call i128 @llvm.bswap.i128(i128 %i.gu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !845
  store i128 %.sroa.4.sroa.0.0.insert.insert8.i, ptr %i.d, align 16, !noalias !849
  call void @ring_core_0_17_16000__vpaes_ctr32_encrypt_blocks(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(244) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.c) #36, !noalias !850, !inline_history !1
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gv, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, %bb.d
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes2vp3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm12seal_stridedNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4, i64 noundef range(i64 0, -9223372036854775808) %5, ptr noalias nofree noundef nonnull align 1 captures(none) dead_on_return dereferenceable(16) %6, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dead_on_return dereferenceable(16) %7) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 1                ; 4 uses
  %i.c = alloca [16 x i8], align 1                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  %i.h = alloca [16 x i8], align 1                ; 5 uses
  %.sroa.059 = alloca i128, align 16              ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = icmp samesign ugt i64 %5, 68719476704
  br i1 %i.l, label %bb.d, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.m = shl nuw nsw i64 %5, 3                    ; 2 uses
  %i.n = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.n, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %3, 3                        ; 2 uses
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph.i.preheader.i.lr.ph

.lr.ph.i.preheader.i.lr.ph:                       ; preds = %bb.c
  %i.q = load i64, ptr %i.k, align 8, !alias.scope !890, !noalias !891, !noundef !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !890, !noalias !891, !noundef !15 ; 2 uses
  %i.t = xor i64 %i.s, %i.q
  br label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i.preheader.i.lr.ph, %.lr.ph.i.preheader.i
  %.sroa.545.sroa.0.083 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bs, %.lr.ph.i.preheader.i ]
  %.sroa.545.sroa.6.082 = phi i64 [ 0, %.lr.ph.i.preheader.i.lr.ph ], [ %i.bt, %.lr.ph.i.preheader.i ]
  %.sroa.055.081 = phi ptr [ %2, %.lr.ph.i.preheader.i.lr.ph ], [ %i.u, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.556.080 = phi i64 [ %3, %.lr.ph.i.preheader.i.lr.ph ], [ %i.v, %.lr.ph.i.preheader.i ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.556.080, i64 16) ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.055.081, i64 %..i.i
  %i.v = sub nuw nsw i64 %.sroa.556.080, %..i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.059)
  store i128 0, ptr %.sroa.059, align 16, !noalias !892
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.059, ptr nonnull readonly align 1 %.sroa.055.081, i64 %..i.i, i1 false), !alias.scope !893, !noalias !894
  %.sroa.059.0..sroa.059.0..sroa.059.0..sroa.059.0..sroa.058.0.copyload = load i128, ptr %.sroa.059, align 16, !noalias !892
  %.sroa.545.sroa.6.0.insert.ext51 = zext i64 %.sroa.545.sroa.6.082 to i128
  %.sroa.545.sroa.6.0.insert.shift52 = shl nuw i128 %.sroa.545.sroa.6.0.insert.ext51, 64
  %.sroa.545.sroa.0.0.insert.ext48 = zext i64 %.sroa.545.sroa.0.083 to i128
  %.sroa.545.sroa.0.0.insert.insert50 = or disjoint i128 %.sroa.545.sroa.6.0.insert.shift52, %.sroa.545.sroa.0.0.insert.ext48
  %i.w = xor i128 %.sroa.059.0..sroa.059.0..sroa.059.0..sroa.059.0..sroa.058.0.copyload, %.sroa.545.sroa.0.0.insert.insert50 ; 2 uses
  %i.x = trunc i128 %i.w to i64
  %i.y = lshr i128 %i.w, 64
  %i.z = trunc nuw i128 %i.y to i64
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %i.x) ; 2 uses
  %i.ab = tail call noundef i64 @llvm.bswap.i64(i64 %i.z) ; 2 uses
  %i.ac = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ab, i64 noundef %i.s) ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0      ; 8 uses
  %i.ae = extractvalue { i64, i64 } %i.ac, 1      ; 2 uses
  %i.af = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.aa, i64 noundef %i.q) ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = xor i64 %i.ab, %i.aa
  %i.aj = tail call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.ai, i64 noundef %i.t) ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  %i.am = shl i64 %i.ad, 63
  %i.an = shl i64 %i.ad, 62
  %i.ao = shl i64 %i.ad, 57
  %i.ap = xor i64 %i.am, %i.an
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = xor i64 %i.aq, %i.ak
  %i.as = xor i64 %i.ar, %i.ad
  %i.at = xor i64 %i.as, %i.ae
  %i.au = xor i64 %i.at, %i.ag                    ; 7 uses
  %i.av = lshr i64 %i.ad, 1
  %i.aw = shl i64 %i.au, 63
  %i.ax = lshr i64 %i.au, 1
  %i.ay = lshr i64 %i.ad, 2
  %i.az = shl i64 %i.au, 62
  %i.ba = lshr i64 %i.au, 2
  %i.bb = lshr i64 %i.ad, 7
  %i.bc = shl i64 %i.au, 57
  %i.bd = xor i64 %i.ay, %i.av
  %i.be = xor i64 %i.bd, %i.bb
  %i.bf = xor i64 %i.be, %i.al
  %i.bg = xor i64 %i.bf, %i.aw
  %i.bh = xor i64 %i.bg, %i.az
  %i.bi = xor i64 %i.bh, %i.bc
  %i.bj = xor i64 %i.bi, %i.ae
  %i.bk = xor i64 %i.bj, %i.ad
  %i.bl = xor i64 %i.bk, %i.ah
  %i.bm = xor i64 %i.bl, %i.ag
  %i.bn = lshr i64 %i.au, 7
  %i.bo = xor i64 %i.ax, %i.ba
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.ah
  %i.br = xor i64 %i.bq, %i.au
  %i.bs = tail call i64 @llvm.bswap.i64(i64 %i.br) ; 2 uses
  %i.bt = tail call i64 @llvm.bswap.i64(i64 %i.bm) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.059)
  %i.bu = icmp eq i64 %i.v, 0
  br i1 %i.bu, label %._crit_edge, label %.lr.ph.i.preheader.i

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.819.0.ph = phi i64 [ %5, %bb.a ], [ %3, %bb.b ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.819.0.ph, ptr %i.bv, align 8
  br label %bb.e

._crit_edge:                                      ; preds = %.lr.ph.i.preheader.i, %bb.c
  %.sroa.545.sroa.6.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.bt, %.lr.ph.i.preheader.i ]
  %.sroa.545.sroa.0.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.bs, %.lr.ph.i.preheader.i ]
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store i64 %.sroa.545.sroa.0.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.545.sroa.6.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  store i64 %i.o, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store i64 %i.m, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %i.bw = and i64 %5, 68719476720
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %i.bw ; 2 uses
  %i.by = and i64 %5, 15                          ; 7 uses
  %i.bz = lshr i64 %5, 4                          ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph: ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %.sroa.022.086 = phi ptr [ %4, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.ce, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 3 uses
  %.sroa.523.085 = phi i64 [ %i.bz, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.lr.ph ], [ %i.cd, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit ] ; 2 uses
  %..i.i14 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.523.085, i64 192) ; 4 uses
  %i.cd = sub nuw nsw i64 %.sroa.523.085, %..i.i14 ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.sroa.022.086, i64 %..i.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cf = shl nuw nsw i64 %..i.i14, 4
  store ptr %.sroa.022.086, ptr %i.i, align 8
  store i64 %i.cf, ptr %i.cb, align 8
  store i64 0, ptr %i.cc, align 8
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull dereferenceable(16) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cg = load ptr, ptr %i.j, align 8, !nonnull !15, !align !17, !noundef !15
  call void @_RNvXs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallbackNtB5_3KeyNtB7_12UpdateBlocks13update_blocks(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cg, ptr noalias nofree noundef nonnull dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.022.086, i64 noundef %..i.i14)
  %i.ch = icmp eq i64 %i.cd, 0
  br i1 %i.ch, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit, label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit
  %.sroa.035.0.copyload.pre = load ptr, ptr %i.j, align 8
  %.sroa.9.0.copyload.pre = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.0.copyload.pre = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  br label %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread

_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit, %._crit_edge
  %.sroa.10.0.copyload = phi i64 [ %.sroa.10.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.m, %._crit_edge ]
  %.sroa.9.0.copyload = phi i64 [ %.sroa.9.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.o, %._crit_edge ]
  %.sroa.035.0.copyload = phi ptr [ %.sroa.035.0.copyload.pre, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread.loopexit ], [ %i.k, %._crit_edge ] ; 5 uses
  %.sroa.536.0.copyload = load i128, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.536.sroa.0.0.extract.trunc = trunc i128 %.sroa.536.0.copyload to i64
  %.sroa.536.sroa.6.0.extract.shift = lshr i128 %.sroa.536.0.copyload, 64
  %.sroa.536.sroa.6.0.extract.trunc = trunc nuw i128 %.sroa.536.sroa.6.0.extract.shift to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.not.i18 = icmp eq i64 %i.by, 0
  br i1 %.not.i18, label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, label %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i

_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread
  %i.ci = sub nuw nsw i64 16, %i.by
  %i.cj = getelementptr i8, ptr %i.h, i64 %i.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, i8 0, i64 %i.ci, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %i.bx, i64 %i.by, i1 false), !noalias !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %6, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !896
  store ptr %i.c, ptr %i.a, align 8, !noalias !896
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %i.ck, align 8, !noalias !896
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.cl, align 8, !noalias !896
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull dereferenceable(16) %i.b) #39, !noalias !897
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.035.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 1 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !896
  %i.cm = sub nuw nsw i64 16, %i.by
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, i8 0, i64 %i.cm, i1 false), !noalias !895
  %.sroa.0.0.copyload.i = load i128, ptr %i.g, align 16, !noalias !895
  %i.co = xor i128 %.sroa.0.0.copyload.i, %.sroa.536.0.copyload ; 2 uses
  %i.cp = load i64, ptr %.sroa.035.0.copyload, align 8, !alias.scope !898, !noalias !895, !noundef !15 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !898, !noalias !895, !noundef !15 ; 2 uses
  %i.cs = trunc i128 %i.co to i64
  %i.ct = lshr i128 %i.co, 64
  %i.cu = trunc nuw i128 %i.ct to i64
  %i.cv = call noundef i64 @llvm.bswap.i64(i64 %i.cs) ; 2 uses
  %i.cw = call noundef i64 @llvm.bswap.i64(i64 %i.cu) ; 2 uses
  %i.cx = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cw, i64 noundef %i.cr) ; 2 uses
  %i.cy = extractvalue { i64, i64 } %i.cx, 0      ; 8 uses
  %i.cz = extractvalue { i64, i64 } %i.cx, 1      ; 2 uses
  %i.da = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.cv, i64 noundef %i.cp) ; 2 uses
  %i.db = extractvalue { i64, i64 } %i.da, 0      ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.da, 1      ; 2 uses
  %i.dd = xor i64 %i.cw, %i.cv
  %i.de = xor i64 %i.cr, %i.cp
  %i.df = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.dd, i64 noundef %i.de) ; 2 uses
  %i.dg = extractvalue { i64, i64 } %i.df, 0
  %i.dh = extractvalue { i64, i64 } %i.df, 1
  %i.di = shl i64 %i.cy, 63
  %i.dj = shl i64 %i.cy, 62
  %i.dk = shl i64 %i.cy, 57
  %i.dl = xor i64 %i.dj, %i.di
  %i.dm = xor i64 %i.dl, %i.dk
  %i.dn = xor i64 %i.dm, %i.dg
  %i.do = xor i64 %i.dn, %i.cy
  %i.dp = xor i64 %i.do, %i.cz
  %i.dq = xor i64 %i.dp, %i.db                    ; 7 uses
  %i.dr = lshr i64 %i.cy, 1
  %i.ds = shl i64 %i.dq, 63
  %i.dt = lshr i64 %i.dq, 1
  %i.du = lshr i64 %i.cy, 2
  %i.dv = shl i64 %i.dq, 62
  %i.dw = lshr i64 %i.dq, 2
  %i.dx = lshr i64 %i.cy, 7
  %i.dy = shl i64 %i.dq, 57
  %i.dz = xor i64 %i.dr, %i.du
  %i.ea = xor i64 %i.dz, %i.dx
  %i.eb = xor i64 %i.ea, %i.dh
  %i.ec = xor i64 %i.eb, %i.ds
  %i.ed = xor i64 %i.ec, %i.dv
  %i.ee = xor i64 %i.ed, %i.dy
  %i.ef = xor i64 %i.ee, %i.cz
  %i.eg = xor i64 %i.ef, %i.cy
  %i.eh = xor i64 %i.eg, %i.dc
  %i.ei = xor i64 %i.eh, %i.db
  %i.ej = lshr i64 %i.dq, 7
  %i.ek = xor i64 %i.dw, %i.dt
  %i.el = xor i64 %i.ek, %i.ej
  %i.em = xor i64 %i.el, %i.dc
  %i.en = xor i64 %i.em, %i.dq
  %i.eo = call i64 @llvm.bswap.i64(i64 %i.en)
  %i.ep = call i64 @llvm.bswap.i64(i64 %i.ei)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 16 dereferenceable(16) %i.g, i64 range(i64 0, -9223372036854775808) %i.by, i1 false), !noalias !895
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit: ; preds = %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i
  %.sroa.536.sroa.6.0 = phi i64 [ %i.ep, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.536.sroa.6.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.536.sroa.0.0 = phi i64 [ %i.eo, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring4aead11overlapping13partial_blockINtB2_12PartialBlockhKj10_E18overwrite_at_startB8_.exit.i ], [ %.sroa.536.sroa.0.0.extract.trunc, %_RNvXs1f_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_9ChunksMutAhj10_ENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring.exit.thread ]
  %.sroa.536.sroa.6.0.insert.ext40 = zext i64 %.sroa.536.sroa.6.0 to i128
  %.sroa.536.sroa.6.0.insert.shift41 = shl nuw i128 %.sroa.536.sroa.6.0.insert.ext40, 64
  %.sroa.536.sroa.0.0.insert.ext37 = zext i64 %.sroa.536.sroa.0.0 to i128
  %.sroa.536.sroa.0.0.insert.insert39 = or disjoint i128 %.sroa.536.sroa.6.0.insert.shift41, %.sroa.536.sroa.0.0.insert.ext37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(16) %7, i64 16, i1 false), !noalias !900
  %i.eq = zext i64 %.sroa.10.0.copyload to i128
  %i.er = zext i64 %.sroa.9.0.copyload to i128
  %i.es = shl nuw i128 %i.er, 64
  %i.et = or disjoint i128 %i.es, %i.eq
  %.sroa.0.0.insert.insert.i = call i128 @llvm.bswap.i128(i128 %i.et)
  %i.eu = xor i128 %.sroa.536.sroa.0.0.insert.insert39, %.sroa.0.0.insert.insert.i ; 2 uses
  %i.ev = load i64, ptr %.sroa.035.0.copyload, align 8, !alias.scope !901, !noalias !902, !noundef !15 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.035.0.copyload, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !901, !noalias !902, !noundef !15 ; 2 uses
  %i.ey = trunc i128 %i.eu to i64
  %i.ez = lshr i128 %i.eu, 64
  %i.fa = trunc nuw i128 %i.ez to i64
  %i.fb = call noundef i64 @llvm.bswap.i64(i64 %i.ey) ; 2 uses
  %i.fc = call noundef i64 @llvm.bswap.i64(i64 %i.fa) ; 2 uses
  %i.fd = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fc, i64 noundef %i.ex) ; 2 uses
  %i.fe = extractvalue { i64, i64 } %i.fd, 0      ; 8 uses
  %i.ff = extractvalue { i64, i64 } %i.fd, 1      ; 2 uses
  %i.fg = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fb, i64 noundef %i.ev) ; 2 uses
  %i.fh = extractvalue { i64, i64 } %i.fg, 0      ; 2 uses
  %i.fi = extractvalue { i64, i64 } %i.fg, 1      ; 2 uses
  %i.fj = xor i64 %i.fc, %i.fb
  %i.fk = xor i64 %i.ex, %i.ev
  %i.fl = call fastcc { i64, i64 } @_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw(i64 noundef %i.fj, i64 noundef %i.fk) ; 2 uses
  %i.fm = extractvalue { i64, i64 } %i.fl, 0
  %i.fn = extractvalue { i64, i64 } %i.fl, 1
  %i.fo = shl i64 %i.fe, 63
  %i.fp = shl i64 %i.fe, 62
  %i.fq = shl i64 %i.fe, 57
  %i.fr = xor i64 %i.fp, %i.fo
  %i.fs = xor i64 %i.fr, %i.fq
  %i.ft = xor i64 %i.fs, %i.fm
  %i.fu = xor i64 %i.ft, %i.fe
  %i.fv = xor i64 %i.fu, %i.ff
  %i.fw = xor i64 %i.fv, %i.fh                    ; 7 uses
  %i.fx = lshr i64 %i.fe, 1
  %i.fy = shl i64 %i.fw, 63
  %i.fz = lshr i64 %i.fw, 1
  %i.ga = lshr i64 %i.fe, 2
  %i.gb = shl i64 %i.fw, 62
  %i.gc = lshr i64 %i.fw, 2
  %i.gd = lshr i64 %i.fe, 7
  %i.ge = shl i64 %i.fw, 57
  %i.gf = xor i64 %i.fx, %i.ga
  %i.gg = xor i64 %i.gf, %i.gd
  %i.gh = xor i64 %i.gg, %i.fn
  %i.gi = xor i64 %i.gh, %i.fy
  %i.gj = xor i64 %i.gi, %i.gb
  %i.gk = xor i64 %i.gj, %i.ge
  %i.gl = xor i64 %i.gk, %i.ff
  %i.gm = xor i64 %i.gl, %i.fe
  %i.gn = xor i64 %i.gm, %i.fi
  %i.go = xor i64 %i.gn, %i.fh
  %i.gp = lshr i64 %i.fw, 7
  %i.gq = xor i64 %i.gc, %i.fz
  %i.gr = xor i64 %i.gq, %i.gp
  %i.gs = xor i64 %i.gr, %i.fi
  %i.gt = xor i64 %i.gs, %i.fw
  %i.gu = zext i64 %i.go to i128
  %i.gv = zext i64 %i.gt to i128
  %i.gw = shl nuw i128 %i.gv, 64
  %i.gx = or disjoint i128 %i.gw, %i.gu
  %.sroa.4.sroa.0.0.insert.insert8.i = call i128 @llvm.bswap.i128(i128 %i.gx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !899
  store i128 %.sroa.4.sroa.0.0.insert.insert8.i, ptr %i.f, align 16, !noalias !903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !899
  store ptr %i.f, ptr %i.d, align 8, !noalias !899
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 16, ptr %i.gy, align 8, !noalias !899
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.gz, align 8, !noalias !899
  call void @_RNvXs4_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3KeyNtB7_12EncryptCtr3220ctr32_encrypt_within(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull dereferenceable(16) %i.e) #39, !noalias !904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !899
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ha, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit, %bb.d
  %storemerge = phi i8 [ 0, %_RINvNtNtCs5yxAJGbRKSL_4ring4aead7aes_gcm11seal_finishNtNtNtB4_3aes8fallback3KeyNtNtNtB4_3gcm8fallback3KeyEB6_.exit ], [ 1, %bb.d ]
  store i8 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i64 %3, 2                    ; 14 uses
  %i.b = icmp samesign ult i64 %3, 2              ; 2 uses
  br i1 %5, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !938)
  br i1 %i.b, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %3, 32
  br i1 %i.c, label %bb.h, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.e = extractvalue { i64, i64 } %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !937
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !938 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.sroa.83.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.83.0.copyload.i = load i64, ptr %.sroa.83.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.83.0.copyload.i, %i.a
  br i1 %.not.i.i, label %bb.f, label %bb.i, !prof !19

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i), "nonnull"(ptr %.sroa.5.0.copyload.i), "nonnull"(ptr %.sroa.02.0.copyload.i) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !938 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i, %i.a
  br i1 %.not.i.i.i, label %bb.g, label %bb.i, !prof !19

bb.g:                                             ; preds = %bb.f
  %.not7.i.i.i = icmp eq i64 %.sroa.6.0.copyload.i, %i.a
  br i1 %.not7.i.i.i, label %bb.j, label %bb.i, !prof !19

bb.h:                                             ; preds = %bb.c
  %i.g = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.h = extractvalue { i64, i64 } %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.i, align 8, !alias.scope !937
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.8.0.ph.i = phi i64 [ %.sroa.83.0.copyload.i, %bb.e ], [ %.sroa.6.0.copyload.i, %bb.g ], [ %.sroa.4.0.copyload.i, %bb.f ]
  %i.j = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.8.0.ph.i) #39
  %i.k = extractvalue { i64, i64 } %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !937
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.j:                                             ; preds = %bb.g
  tail call void @ring_core_0_17_16000__bn_mulx4x_mont(ptr noundef nonnull %.sroa.02.0.copyload.i, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noundef nonnull %.sroa.7.0.copyload.i, ptr noundef nonnull readonly align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i64 noundef range(i64 0, 1152921504606846973) %i.a) #36, !noalias !939, !inline_history !920
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.copyload.i, ptr %i.m, align 8, !alias.scope !937
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  br i1 %i.b, label %bb.m, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  %i.n = icmp samesign ugt i64 %3, 32
  br i1 %i.n, label %bb.q, label %bb.n, !prof !16

bb.m:                                             ; preds = %bb.k
  %i.o = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.p = extractvalue { i64, i64 } %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.q, align 8, !alias.scope !940
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.n:                                             ; preds = %bb.l
  %.sroa.02.0.copyload.i1 = load ptr, ptr %1, align 8, !alias.scope !941 ; 3 uses
  %.sroa.5.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i3 = load ptr, ptr %.sroa.5.0..sroa_idx.i2, align 8, !alias.scope !941 ; 2 uses
  %.sroa.6.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i5 = load i64, ptr %.sroa.6.0..sroa_idx.i4, align 8, !alias.scope !941 ; 2 uses
  %.sroa.7.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload.i7 = load ptr, ptr %.sroa.7.0..sroa_idx.i6, align 8, !alias.scope !941 ; 2 uses
  %.sroa.83.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.83.0.copyload.i9 = load i64, ptr %.sroa.83.0..sroa_idx.i8, align 8, !alias.scope !941 ; 2 uses
  %.not.i.i10 = icmp eq i64 %.sroa.83.0.copyload.i9, %i.a
  br i1 %.not.i.i10, label %bb.o, label %bb.r, !prof !19

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i7), "nonnull"(ptr %.sroa.5.0.copyload.i3), "nonnull"(ptr %.sroa.02.0.copyload.i1) ]
  %.sroa.4.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i15 = load i64, ptr %.sroa.4.0..sroa_idx.i14, align 8, !alias.scope !941 ; 2 uses
  %.not.i.i.i16 = icmp eq i64 %.sroa.4.0.copyload.i15, %i.a
  br i1 %.not.i.i.i16, label %bb.p, label %bb.r, !prof !19

bb.p:                                             ; preds = %bb.o
  %.not7.i.i.i17 = icmp eq i64 %.sroa.6.0.copyload.i5, %i.a
  br i1 %.not7.i.i.i17, label %bb.s, label %bb.r, !prof !19

bb.q:                                             ; preds = %bb.l
  %i.r = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.s = extractvalue { i64, i64 } %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.t, align 8, !alias.scope !940
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.r:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.8.0.ph.i11 = phi i64 [ %.sroa.83.0.copyload.i9, %bb.n ], [ %.sroa.6.0.copyload.i5, %bb.p ], [ %.sroa.4.0.copyload.i15, %bb.o ]
  %i.u = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.8.0.ph.i11) #39
  %i.v = extractvalue { i64, i64 } %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8, !alias.scope !940
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

bb.s:                                             ; preds = %bb.p
  tail call void @ring_core_0_17_16000__bn_mul4x_mont(ptr noundef nonnull %.sroa.02.0.copyload.i1, ptr noundef nonnull %.sroa.5.0.copyload.i3, ptr noundef nonnull %.sroa.7.0.copyload.i7, ptr noundef nonnull readonly align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i64 noundef range(i64 0, 1152921504606846973) %i.a) #36, !noalias !942, !inline_history !936
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.copyload.i1, ptr %i.x, align 8, !alias.scope !940
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill12uninit_slice6UninityERSyB2l_EEB6_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.m, %bb.j, %bb.i, %bb.h, %bb.d
  %.sink14.i12.sink = phi i64 [ %i.a, %bb.j ], [ %i.e, %bb.d ], [ %i.h, %bb.h ], [ %i.k, %bb.i ], [ %i.p, %bb.m ], [ %i.s, %bb.q ], [ %i.v, %bb.r ], [ %i.a, %bb.s ]
  %storemerge = phi i64 [ 0, %bb.j ], [ 1, %bb.d ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.m ], [ 1, %bb.q ], [ 1, %bb.r ], [ 0, %bb.s ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink14.i12.sink, ptr %i.y, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = shl nuw nsw i64 %3, 2                    ; 12 uses
  %i.b = icmp samesign ult i64 %3, 2              ; 2 uses
  br i1 %5, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  br i1 %i.b, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i64 %3, 32
  br i1 %i.c, label %bb.g, label %bb.e, !prof !16

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.e = extractvalue { i64, i64 } %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !973
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.02.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !974 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !974 ; 2 uses
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.63.0.copyload.i = load i64, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !974 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.63.0.copyload.i, %i.a
  br i1 %.not.i.i, label %bb.f, label %bb.h, !prof !19

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i), "nonnull"(ptr %.sroa.02.0.copyload.i) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !974 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i, %i.a
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !19

bb.g:                                             ; preds = %bb.c
  %i.g = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.h = extractvalue { i64, i64 } %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.i, align 8, !alias.scope !973
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.6.0.ph.i = phi i64 [ %.sroa.63.0.copyload.i, %bb.e ], [ %.sroa.4.0.copyload.i, %bb.f ]
  %i.j = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i) #39
  %i.k = extractvalue { i64, i64 } %i.j, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.l, align 8, !alias.scope !973
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.i:                                             ; preds = %bb.f
  tail call void @ring_core_0_17_16000__bn_mulx4x_mont(ptr noundef nonnull align 8 %.sroa.02.0.copyload.i, ptr noundef nonnull align 8 %.sroa.02.0.copyload.i, ptr noundef nonnull %.sroa.5.0.copyload.i, ptr noundef nonnull readonly align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i64 noundef range(i64 0, 1152921504606846973) %i.a) #36, !noalias !975, !inline_history !957
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.copyload.i, ptr %i.m, align 8, !alias.scope !973
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  br i1 %i.b, label %bb.l, label %bb.k, !prof !16

bb.k:                                             ; preds = %bb.j
  %i.n = icmp samesign ugt i64 %3, 32
  br i1 %i.n, label %bb.o, label %bb.m, !prof !16

bb.l:                                             ; preds = %bb.j
  %i.o = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError9too_short(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.p = extractvalue { i64, i64 } %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.q, align 8, !alias.scope !976
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.m:                                             ; preds = %bb.k
  %.sroa.02.0.copyload.i1 = load ptr, ptr %1, align 8, !alias.scope !977 ; 4 uses
  %.sroa.5.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i3 = load ptr, ptr %.sroa.5.0..sroa_idx.i2, align 8, !alias.scope !977 ; 2 uses
  %.sroa.63.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.63.0.copyload.i5 = load i64, ptr %.sroa.63.0..sroa_idx.i4, align 8, !alias.scope !977 ; 2 uses
  %.not.i.i6 = icmp eq i64 %.sroa.63.0.copyload.i5, %i.a
  br i1 %.not.i.i6, label %bb.n, label %bb.p, !prof !19

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i3), "nonnull"(ptr %.sroa.02.0.copyload.i1) ]
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i11 = load i64, ptr %.sroa.4.0..sroa_idx.i10, align 8, !alias.scope !977 ; 2 uses
  %.not.i.i.i12 = icmp eq i64 %.sroa.4.0.copyload.i11, %i.a
  br i1 %.not.i.i.i12, label %bb.q, label %bb.p, !prof !19

bb.o:                                             ; preds = %bb.k
  %i.r = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError8too_long(i64 noundef range(i64 0, 1152921504606846973) %i.a) #39
  %i.s = extractvalue { i64, i64 } %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.t, align 8, !alias.scope !976
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.6.0.ph.i7 = phi i64 [ %.sroa.63.0.copyload.i5, %bb.m ], [ %.sroa.4.0.copyload.i11, %bb.n ]
  %i.u = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %.sroa.6.0.ph.i7) #39
  %i.v = extractvalue { i64, i64 } %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.w, align 8, !alias.scope !976
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

bb.q:                                             ; preds = %bb.n
  tail call void @ring_core_0_17_16000__bn_mul4x_mont(ptr noundef nonnull align 8 %.sroa.02.0.copyload.i1, ptr noundef nonnull align 8 %.sroa.02.0.copyload.i1, ptr noundef nonnull %.sroa.5.0.copyload.i3, ptr noundef nonnull readonly align 8 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, i64 noundef range(i64 0, 1152921504606846973) %i.a) #36, !noalias !978, !inline_history !972
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0.copyload.i1, ptr %i.x, align 8, !alias.scope !976
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic3ffi15bn_mul_mont_ffiTNtNtNtB6_3cpu6x86_643AdxNtBZ_4Bmi2EKj8_Kj4_TINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB2m_EEB6_.exit: ; preds = %bb.q, %bb.p, %bb.o, %bb.l, %bb.i, %bb.h, %bb.g, %bb.d
  %.sink13.i8.sink = phi i64 [ %i.a, %bb.i ], [ %i.e, %bb.d ], [ %i.h, %bb.g ], [ %i.k, %bb.h ], [ %i.p, %bb.l ], [ %i.s, %bb.o ], [ %i.v, %bb.p ], [ %i.a, %bb.q ]
  %storemerge = phi i64 [ 0, %bb.i ], [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.l ], [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %bb.q ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink13.i8.sink, ptr %i.y, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !26, !alias.scope !981, !noundef !15 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !981
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !981
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 57) %4), !noalias !981
  %i.h = load i64, ptr %i.a, align 8, !range !22, !noalias !981, !noundef !15
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !31, !noalias !981, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !981
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #42
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !981, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !981
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !981
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !981
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB4_9PublicKey3news0_0B8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val4 = load ptr, ptr %i.b, align 8            ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val5 = load ptr, ptr %i.c, align 8            ; 2 uses
  %.val6 = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %.val7 = load i64, ptr %i.d, align 8, !noundef !15 ; 4 uses
  %.not.i = icmp eq i64 %.val7, 0
  br i1 %.not.i, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %.val6, align 1, !noundef !15
  %i.f = icmp sgt i8 %i.e, -1                     ; 2 uses
  br i1 %i.f, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i: ; preds = %bb.b
  %i.g = add i64 %.val7, 1                        ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i, !prof !985

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i: ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i, %bb.b
  %.sroa.0.2.ph.i.i = phi i64 [ %i.g, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i ], [ %.val7, %bb.b ] ; 5 uses
  %i.i = icmp ugt i64 %.sroa.0.2.ph.i.i, 65535
  br i1 %i.i, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.c

bb.c:                                             ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i
  %i.j = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef 2) #40, !inline_history !982
  br i1 %i.j, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.07.0.extract.trunc.i.i = trunc i64 %.sroa.0.2.ph.i.i to i8
  %.sroa.48.0.extract.shift10.i.i = lshr i64 %.sroa.0.2.ph.i.i, 8
  %.sroa.48.0.extract.trunc.i.i = trunc nuw i64 %.sroa.48.0.extract.shift10.i.i to i8
  %i.k = icmp samesign ugt i64 %.sroa.0.2.ph.i.i, 255
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.0.2.ph.i.i, 127
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef -126) #40, !inline_history !982
  br i1 %i.m, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef -127) #40, !inline_history !982
  br i1 %i.n, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.e
  %i.o = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef %.sroa.07.0.extract.trunc.i.i) #40, !inline_history !982
  br i1 %i.o, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.p = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef %.sroa.48.0.extract.trunc.i.i) #40, !inline_history !982
  br i1 %i.p, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.f, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef 0) #40, !inline_history !983
  br i1 %i.q, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #41
  unreachable

_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit: ; preds = %bb.j, %bb.k
  %i.r = tail call noundef zeroext i1 %.val5(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6, i64 noundef %.val7) #40, !inline_history !984
  br i1 %i.r, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.m

bb.m:                                             ; preds = %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %.val2 = load ptr, ptr %i.t, align 8            ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val3 = load i64, ptr %i.u, align 8, !noundef !15 ; 4 uses
  %.not.i8 = icmp eq i64 %.val3, 0
  br i1 %.not.i8, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load i8, ptr %.val2, align 1, !noundef !15
  %i.w = icmp sgt i8 %i.v, -1                     ; 2 uses
  br i1 %i.w, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9: ; preds = %bb.n
  %i.x = add i64 %.val3, 1                        ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10, !prof !985

_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10: ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9, %bb.n
  %.sroa.0.2.ph.i.i11 = phi i64 [ %i.x, %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.i.i9 ], [ %.val3, %bb.n ] ; 5 uses
  %i.z = icmp ugt i64 %.sroa.0.2.ph.i.i11, 65535
  br i1 %i.z, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.o

bb.o:                                             ; preds = %_RNCNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer0B7_.exit.thread6.i.i10
  %i.aa = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef 2) #40, !inline_history !982
  br i1 %i.aa, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.07.0.extract.trunc.i.i12 = trunc i64 %.sroa.0.2.ph.i.i11 to i8
  %.sroa.48.0.extract.shift10.i.i13 = lshr i64 %.sroa.0.2.ph.i.i11, 8
  %.sroa.48.0.extract.trunc.i.i14 = trunc nuw i64 %.sroa.48.0.extract.shift10.i.i13 to i8
  %i.ab = icmp samesign ugt i64 %.sroa.0.2.ph.i.i11, 255
  br i1 %i.ab, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = icmp samesign ugt i64 %.sroa.0.2.ph.i.i11, 127
  br i1 %i.ac, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ad = tail call noundef zeroext i1 %.val4(ptr noundef nonnull %1, i8 noundef -126) #40, !inline_history !982
  br i1 %i.ad, label %_RNvNtNtCs5yxAJGbRKSL_4ring2io10der_writer22write_positive_integer.exit16, label %bb.u

bb.s:                                             ; preds = %bb.q
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair16from_components_:bb.a
.noexc12.i.i310:                                  ; preds = %bb.cz
  unreachable

.lr.ph.i.i.i.i.i.i.i.i311:                        ; preds = %bb.cy
  %.not.i.not.i.not.i.i.i.i.i.i.i.i.i312 = icmp eq i64 %i.lc, %.sroa.514.0.copyload.i256
  br i1 %.not.i.not.i.not.i.i.i.i.i.i.i.i.i312, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i313, !prof !19

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i311, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i
  %.sroa.08.05.i.i.i.i.i.i.i.i315 = phi i64 [ %i.ll, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i311 ]
  %i.ll = add nuw nsw i64 %.sroa.08.05.i.i.i.i.i.i.i.i315, 1 ; 2 uses
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.kb, ptr noundef nonnull align 8 %i.kb, ptr noundef nonnull readonly align 8 %i.jj, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i256) #36, !noalias !1342
  %exitcond.not.i.i.i.i.i.i.i.i316 = icmp eq i64 %i.ll, %i.lh
  br i1 %exitcond.not.i.i.i.i.i.i.i.i316, label %.preheader1.i.i.i.i.i.i.i.i317, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i313: ; preds = %.preheader1.i.i.i.i.i.i.i.i317, %.lr.ph.i.i.i.i.i.i.i.i311
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
          to label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i314 unwind label %bb.db

_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.cont.i.i314: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i313
  unreachable

.preheader1.i.i.i.i.i.i.i.i317:                   ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i.i.i.i.i.i.i.i, %bb.cw
  %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i318 = icmp eq i64 %i.lc, %.sroa.514.0.copyload.i256
  br i1 %.not.i.not.i.not.i.i9.i.i.i.i.i.i.i318, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i313, !prof !19

.preheader.i.i.i.i.i.i.i.i321:                    ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1343
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i286), !noalias !1344
  %i.lm = load i64, ptr %i.c, align 8, !range !22, !noalias !1343, !noundef !15
  %i.ln = trunc nuw i64 %i.lm to i1
  br i1 %i.ln, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, !prof !16

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i: ; preds = %.preheader1.i.i.i.i.i.i.i.i317, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i
  %.sroa.05.02.i.i.i.i.i.i.i.i319 = phi i64 [ %i.lo, %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i ], [ 0, %.preheader1.i.i.i.i.i.i.i.i317 ] ; 2 uses
  %i.lo = add nuw nsw i64 %.sroa.05.02.i.i.i.i.i.i.i.i319, 1
  call void @ring_core_0_17_16000__LIMBS_shl_mod(ptr noundef nonnull align 8 %i.kb, ptr noundef nonnull align 8 %i.kb, ptr noundef nonnull readonly align 8 %i.jj, i64 noundef range(i64 0, 1152921504606846976) %.sroa.514.0.copyload.i256) #36, !noalias !1344
  %exitcond.not.i12.i.i.i.i.i.i.i320 = icmp eq i64 %.sroa.05.02.i.i.i.i.i.i.i.i319, %.sroa.9.0.i.i.i.i.i.i.i.i.i.i306
  br i1 %exitcond.not.i12.i.i.i.i.i.i.i320, label %.preheader.i.i.i.i.i.i.i.i321, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6doubleBb_.exit.i11.i.i.i.i.i.i.i

bb.da:                                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i321
  %i.lp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.lq = load i64, ptr %i.lp, align 8, !range !23, !noalias !1343, !noundef !15
  invoke fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.lq) #39
          to label %.noexc15.i.i323 unwind label %bb.db

.noexc15.i.i323:                                  ; preds = %bb.da
  unreachable

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1343
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i286), !noalias !1344
  %i.lr = load i64, ptr %i.c, align 8, !range !22, !noalias !1343, !noundef !15
  %i.ls = trunc nuw i64 %i.lr to i1
  br i1 %i.ls, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1343
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i286), !noalias !1344
  %i.lt = load i64, ptr %i.c, align 8, !range !22, !noalias !1343, !noundef !15
  %i.lu = trunc nuw i64 %i.lt to i1
  br i1 %i.lu, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.1.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1343
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i286), !noalias !1344
  %i.lv = load i64, ptr %i.c, align 8, !range !22, !noalias !1343, !noundef !15
  %i.lw = trunc nuw i64 %i.lv to i1
  br i1 %i.lw, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.2.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1343
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i286), !noalias !1344
  %i.lx = load i64, ptr %i.c, align 8, !range !22, !noalias !1343, !noundef !15
  %i.ly = trunc nuw i64 %i.lx to i1
  br i1 %i.ly, label %bb.da, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.3.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1343
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 %i.kb, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.jj, i64 noundef %.sroa.514.0.copyload.i256, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val.i.i.i.i.i.i286), !noalias !1344
  %i.lz = load i64, ptr %i.c, align 8, !range !22, !noalias !1343, !noundef !15
  %i.ma = trunc nuw i64 %i.lz to i1
  br i1 %i.ma, label %bb.da, label %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i, !prof !16

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i: ; preds = %bb.ct, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE18split_at_spare_mutB9_.exit.i.i.i.i.i.i290, %bb.co, %.noexc5.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1320
  br label %.invoke.i.i302

_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1QNtNtB9_10montgomery1RE6squareBb_.exit.4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1343
  %i.mb = icmp ne ptr %.val.i.i.i.i.i.i286, %i.iz
  %i.mc = icmp ne i64 %.val3.i.i.i.i.i.i283, %i.iv
  %.not27.i.i322 = or i1 %i.mc, %i.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1320
  br i1 %.not27.i.i322, label %.invoke.i.i302, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i, !prof !35

.invoke.i.i302:                                   ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i, %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.thread.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #42
          to label %.cont.i.i303 unwind label %bb.db, !noalias !1326

.cont.i.i303:                                     ; preds = %.invoke.i.i302
  unreachable

bb.db:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb16limbs_double_mod.exit.thread.i.i.i.i.i.i.i.invoke.i.i313, %bb.da, %bb.cs, %.invoke.i.i302, %bb.cz, %bb.cx, %.invoke45.i.i287, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i281
  %i.md = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef %i.ix, i64 noundef 8) #36, !noalias !1326
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit356

bb.dc:                                            ; preds = %bb.cj, %bb.ci
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #41
          to label %.noexc329 unwind label %bb.cf

.noexc329:                                        ; preds = %bb.dc
  unreachable

bb.dd:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.do
  br i1 %.sroa.0150.2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354, label %bb.ce

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354.thread: ; preds = %bb.dn, %bb.dl, %bb.dj, %bb.dh, %bb.dg
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef %i.ix, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit356

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %_RNCINvMs1_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montNtNtBa_5value14ValidatedInput18write_into_mont_RRNtNtNtBg_3rsa7keypair1QEs_0Bg_.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.mf = icmp samesign ult i64 %i.be, %.sroa.514.0.copyload.i256
  br i1 %i.mf, label %select.unfold453, label %bb.de, !prof !16

bb.de:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.w, ptr nonnull readonly align 8 %i.mg, i64 %.idx.i.i.i.i.i.i.i.i.i.i304, i1 false), !alias.scope !1347
  %i.mh = icmp eq i64 %i.be, %.sroa.514.0.copyload.i256
  br i1 %i.mh, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.de
  %i.mi = sub nuw nsw i64 %i.be, %.sroa.514.0.copyload.i256
  %.idx.i.i.i = shl nuw nsw i64 %i.mi, 3
  %i.mj = getelementptr [8 x i8], ptr %i.w, i64 %.sroa.514.0.copyload.i256
  call void @llvm.memset.p0.i64(ptr align 8 %i.mj, i8 0, i64 %.idx.i.i.i, i1 false), !alias.scope !1348, !noalias !1349
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i, %bb.de
  %i.mk = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.ml = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.w, ptr noundef nonnull readonly align 8 %i.mk, i64 noundef range(i64 0, 1152921504606846976) %i.be) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1350
  store i64 %i.ml, ptr %i.b, align 8, !noalias !1350
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.b) #36, !srcloc !37
  %i.mm = load i64, ptr %i.b, align 8, !noalias !1350, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.mm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1350
  br i1 %.not.i.i.i, label %select.unfold453, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  %i.mn = icmp samesign ult i64 %i.be, %.sroa.514.0.copyload.i
  br i1 %i.mn, label %select.unfold453, label %bb.df, !prof !16

bb.df:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.v, ptr nonnull readonly align 8 %i.mo, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !alias.scope !1353
  %i.mp = icmp eq i64 %i.be, %.sroa.514.0.copyload.i
  br i1 %i.mp, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i338, label %.lr.ph.i.i.preheader.i.i336

.lr.ph.i.i.preheader.i.i336:                      ; preds = %bb.df
  %i.mq = sub nuw nsw i64 %i.be, %.sroa.514.0.copyload.i
  %.idx.i.i.i337 = shl nuw nsw i64 %i.mq, 3
  %i.mr = getelementptr [8 x i8], ptr %i.v, i64 %.sroa.514.0.copyload.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.mr, i8 0, i64 %.idx.i.i.i337, i1 false), !alias.scope !1354, !noalias !1355
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i338

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i338: ; preds = %.lr.ph.i.i.preheader.i.i336, %bb.df
  %i.ms = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.v, ptr noundef nonnull readonly align 8 %i.mk, i64 noundef range(i64 0, 1152921504606846976) %i.be) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1356
  store i64 %i.ms, ptr %i.a, align 8, !noalias !1356
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !srcloc !37
  %i.mt = load i64, ptr %i.a, align 8, !noalias !1356, !noundef !15
  %.not.i.i.i339 = icmp eq i64 %i.mt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1356
  br i1 %.not.i.i.i339, label %select.unfold453, label %bb.dg

bb.dg:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i338
  %i.mu = invoke fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef %i.be, ptr nonnull %i.cg, i64 %i.cc)
          to label %bb.dh unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354.thread ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.mv = extractvalue { ptr, i64 } %i.mu, 1
  %i.mw = extractvalue { ptr, i64 } %i.mu, 0
  %i.mx = invoke fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %i.mw, i64 noundef %i.mv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.w, i64 noundef %i.be, ptr nonnull %i.cg, i64 %i.fa)
          to label %bb.di unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354.thread ; 2 uses

bb.di:                                            ; preds = %bb.dh
  %i.my = extractvalue { ptr, i64 } %i.mx, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.my) ]
  %2 = extractvalue { ptr, i64 } %i.mx, 1
  %i.mz = call fastcc noundef zeroext i1 @_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE7is_zeroBb_(ptr nonnull %i.my, i64 %2)
  br i1 %i.mz, label %bb.dj, label %select.unfold453

bb.dj:                                            ; preds = %bb.di
  %i.na = invoke fastcc { ptr, i64 } @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE20from_be_bytes_paddedBb_(ptr noalias nofree noundef align 8 dereferenceable(1024) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ae, ptr nonnull %i.cg, i64 %i.fa)
          to label %bb.dk unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354.thread

bb.dk:                                            ; preds = %bb.dj
  %i.nb = extractvalue { ptr, i64 } %i.na, 0
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %select.unfold453, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.nd = invoke fastcc { ptr, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigintINtNtB2_4elem5BoxedNtNtNtB6_3rsa7keypair1PE20from_be_bytes_paddedB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay, ptr nonnull %i.fl, i64 %i.ir)
          to label %bb.dm unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354.thread ; 2 uses

bb.dm:                                            ; preds = %bb.dl
  %i.ne = extractvalue { ptr, i64 } %i.nd, 0      ; 2 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %select.unfold453, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ng = extractvalue { ptr, i64 } %i.nd, 1
  %i.nh = invoke fastcc { ptr, i64 } @_RINvMs6_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_5BoxedNtNtNtBc_3rsa7keypair1PE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias noundef nonnull align 8 %i.ne, i64 noundef %i.ng, ptr nonnull %i.fl, i64 %i.fh)
          to label %bb.dq unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354.thread ; 2 uses

bb.do:                                            ; preds = %bb.dy, %bb.dp
  %.sroa.0150.2 = phi i1 [ true, %bb.dp ], [ false, %bb.dy ]
  %.sroa.0151.4 = phi i1 [ %.sroa.0151.5, %bb.dp ], [ false, %bb.dy ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.nj, %bb.dp ], [ %i.ob, %bb.dy ] ; 4 uses
  %i.ni = icmp eq i64 %i.nl, 0
  br i1 %i.ni, label %bb.dd, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nk) ]
  %3 = shl nuw nsw i64 %i.nl, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nk, i64 noundef %3, i64 noundef 8) #36
  br label %bb.dd

bb.dp:                                            ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.du
  %.sroa.0151.5 = phi i1 [ true, %bb.dr ], [ true, %bb.dq ], [ false, %bb.du ], [ true, %bb.ds ]
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.dq:                                            ; preds = %bb.dn
  %i.nk = extractvalue { ptr, i64 } %i.nh, 0      ; 7 uses
  %i.nl = extractvalue { ptr, i64 } %i.nh, 1      ; 8 uses
  %i.nm = invoke fastcc { ptr, i64 } @_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1PEBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.w, i64 noundef %i.be, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.v, ptr nonnull %i.fl, i64 %i.ir, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.u)
          to label %bb.dr unwind label %bb.dp     ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %i.nn = extractvalue { ptr, i64 } %i.nm, 0
  %i.no = extractvalue { ptr, i64 } %i.nm, 1
  %i.np = invoke fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PNtNtBa_10montgomery8RInverseE11encode_montNtB1s_2RREBc_(ptr noalias nofree noundef nonnull align 8 %i.nn, i64 noundef %i.no, ptr nonnull %i.fl, i64 %i.fh)
          to label %bb.ds unwind label %bb.dp     ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nk) ]
  %i.nq = extractvalue { ptr, i64 } %i.np, 1
  %i.nr = extractvalue { ptr, i64 } %i.np, 0
  %i.ns = invoke fastcc noundef zeroext i1 @_RNvMse_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PE24verify_inverse_consttimeBb_(ptr noalias nofree noundef nonnull align 8 %i.nr, i64 noundef %i.nq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.nk, i64 noundef %i.nl, ptr nonnull %i.fl, i64 %i.ir)
          to label %bb.dt unwind label %bb.dp     ; 2 uses

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.ns, label %bb.ee, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvMs1_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairINtB5_15PrivateCrtPrimeNtB5_1PE3newB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 %i.fl, i64 noundef %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq)
          to label %bb.dv unwind label %bb.dp

bb.dv:                                            ; preds = %bb.du
  %i.nt = load ptr, ptr %i.s, align 8, !noundef !15 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, null
  %i.nv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ny = load i64, ptr %i.nx, align 8            ; 2 uses
  br i1 %i.nu, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nw, ptr %i.nz, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ny, ptr %i.oa, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ed

bb.dx:                                            ; preds = %bb.dv
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6178.0.copyload = load i64, ptr %.sroa.6178.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store ptr %i.nt, ptr %i.t, align 8
  %.sroa.4127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.nw, ptr %.sroa.4127.0..sroa_idx, align 8
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ny, ptr %.sroa.5128.0..sroa_idx, align 8
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.sroa.6178.0.copyload, ptr %.sroa.6129.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RNvMs1_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairINtB5_15PrivateCrtPrimeNtB5_1QE3newB9_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 %i.iz, i64 noundef %i.iv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.as, i64 noundef %i.au)
          to label %bb.dz unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair15PrivateCrtPrimeNtBE_1PEEBI_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #43
  br label %bb.do

bb.dz:                                            ; preds = %bb.dx
  %i.oc = load ptr, ptr %i.r, align 8, !noundef !15 ; 2 uses
  %i.od = icmp eq ptr %i.oc, null
  %i.oe = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.of = load ptr, ptr %i.oe, align 8            ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.oh = load i64, ptr %i.og, align 8            ; 2 uses
  br i1 %i.od, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.of, ptr %i.oi, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.oh, ptr %i.oj, align 8
  store ptr null, ptr %0, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair15PrivateCrtPrimeNtBE_1PEEBI_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ok = icmp eq i64 %i.nl, 0
  br i1 %i.ok, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key9PublicKeyINtNtNtNtNtBK_10arithmetic6bigint7modulus4mont13BoxedIntoMontNtBI_1NNtNtB1H_10montgomery2RREEEBK_.exit.i349, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i345

bb.eb:                                            ; preds = %bb.dz
  %.sroa.6182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.6182.0.copyload = load i64, ptr %.sroa.6182.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.sroa.10149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10149.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false)
  %.sroa.4144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.oc, ptr %.sroa.4144.0..sroa_idx, align 8
  %.sroa.5145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.of, ptr %.sroa.5145.0..sroa_idx, align 8
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.oh, ptr %.sroa.6146.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.6182.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.nk, ptr %.sroa.8147.0..sroa_idx, align 8
  %.sroa.9148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.nl, ptr %.sroa.9148.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ec

bb.ec:                                            ; preds = %bb.b, %bb.k, %bb.bc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring3rsa10public_key9PublicKeyEBH_.exit, %bb.h, %bb.eb
  ret void

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i345: ; preds = %bb.ea
  %i.ol = shl nuw nsw i64 %i.nl, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nk, i64 noundef %i.ol, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key9PublicKeyINtNtNtNtNtBK_10arithmetic6bigint7modulus4mont13BoxedIntoMontNtBI_1NNtNtB1H_10montgomery2RREEEBK_.exit.i349

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PNtNtBI_10montgomery1REEBK_.exit346: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i347, %bb.ed
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef %i.ix, i64 noundef 8) #36
  br i1 %i.ns, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key9PublicKeyINtNtNtNtNtBK_10arithmetic6bigint7modulus4mont13BoxedIntoMontNtBI_1NNtNtB1H_10montgomery2RREEEBK_.exit.i349

bb.ed:                                            ; preds = %bb.ee, %bb.dw
  %i.om = icmp eq i64 %i.nl, 0
  br i1 %i.om, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PNtNtBI_10montgomery1REEBK_.exit346, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i347

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i347: ; preds = %bb.ed
  %i.on = shl nuw nsw i64 %i.nl, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nk, i64 noundef %i.on, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PNtNtBI_10montgomery1REEBK_.exit346

bb.ee:                                            ; preds = %bb.dt
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @55, ptr %i.oo, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 22, ptr %i.op, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ed

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key9PublicKeyINtNtNtNtNtBK_10arithmetic6bigint7modulus4mont13BoxedIntoMontNtBI_1NNtNtB1H_10montgomery2RREEEBK_.exit.i349: ; preds = %bb.ea, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i345, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PNtNtBI_10montgomery1REEBK_.exit346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef %i.ce, i64 noundef 8) #36, !noalias !1357
  %i.oq = icmp eq i64 %i.ey, 0
  br i1 %i.oq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring3rsa10public_key9PublicKeyEBH_.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i6.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i6.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key9PublicKeyINtNtNtNtNtBK_10arithmetic6bigint7modulus4mont13BoxedIntoMontNtBI_1NNtNtB1H_10montgomery2RREEEBK_.exit.i349
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.er, i64 noundef %i.ey, i64 noundef 1) #36, !noalias !1357
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring3rsa10public_key9PublicKeyEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit: ; preds = %select.unfold453, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elem5BoxedNtNtNtBK_3rsa7keypair1PNtNtBI_10montgomery1REEBK_.exit346
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %i.fj, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key9PublicKeyINtNtNtNtNtBK_10arithmetic6bigint7modulus4mont13BoxedIntoMontNtBI_1NNtNtB1H_10montgomery2RREEEBK_.exit.i349

select.unfold453:                                 ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i338, %bb.dk, %bb.dm, %bb.di
  %.sink510 = phi ptr [ @55, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i ], [ @55, %bb.di ], [ @54, %bb.dm ], [ @55, %bb.dk ], [ @55, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i338 ], [ @55, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i ], [ @55, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i ]
  %.sink508 = phi i64 [ 22, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1PNtNtBb_10montgomery2RRE5valueBd_.exit.i ], [ 22, %bb.di ], [ 16, %bb.dm ], [ 22, %bb.dk ], [ 22, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i338 ], [ 22, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i ], [ 22, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery2RRE5valueBd_.exit.i ]
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink510, ptr %i.or, align 8
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink508, ptr %i.os, align 8
  store ptr null, ptr %0, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef %i.ix, i64 noundef 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs5yxAJGbRKSL_4ring3rsa10public_key9PublicKeyEBH_.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i6.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_key9PublicKeyINtNtNtNtNtBK_10arithmetic6bigint7modulus4mont13BoxedIntoMontNtBI_1NNtNtB1H_10montgomery2RREEEBK_.exit.i349, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ec

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354: ; preds = %bb.dd
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.iz, i64 noundef %i.ix, i64 noundef 8) #36
  br i1 %.sroa.0151.4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit356, label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1PEEBI_.exit356: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354, %bb.db, %bb.cf, %bb.ce
  %.pn187444 = phi { ptr, i32 } [ %.pn, %bb.ce ], [ %i.iq, %bb.cf ], [ %i.md, %bb.db ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354 ], [ %i.me, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5yxAJGbRKSL_4ring3rsa7keypair12PrivatePrimeNtBE_1QEEBI_.exit354.thread ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef %i.fj, i64 noundef 8) #36
  br label %.body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB2_7KeyPair8from_der(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 19 uses
  %i.b = alloca [120 x i8], align 8               ; 8 uses
  %i.c = alloca [120 x i8], align 8               ; 8 uses
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB2_14Ed25519KeyPair4sign:bb.a
  br i1 %.not.i.i7.i, label %_RNCNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB4_14Ed25519KeyPair4sign0Bc_.exit, label %bb.j, !prof !19

bb.j:                                             ; preds = %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit.i
  %i.at = zext nneg i8 %i.as to i64
  call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef 64, i64 noundef range(i64 0, -9223372036854775808) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #41, !noalias !2241
  unreachable

_RNCNvMNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed255197signingNtB4_14Ed25519KeyPair4sign0Bc_.exit: ; preds = %_RNvMs1_NtNtNtCs5yxAJGbRKSL_4ring2ec10curve255193opsNtB5_2P320from_scalarmult_base.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.av, i64 64, i1 false), !alias.scope !2242, !noalias !2243
  call void @ring_core_0_17_16000__x25519_sc_reduce(ptr noalias nofree noundef nonnull dereferenceable(64) %i.b) #36, !noalias !2238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.k, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !2244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2237
  call void @ring_core_0_17_16000__x25519_sc_muladd(ptr noalias nofree noundef nonnull dereferenceable(32) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(32) %i.n) #36, !noalias !2235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  store i64 64, ptr %i.q, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs5yxAJGbRKSL_4ring4hkdfNtB5_4Salt3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [168 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2252
  %i.c = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !2252
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.b, %bb.a
  call fastcc void @_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key7try_new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !2253
  %i.d = load i64, ptr %i.b, align 8, !range !22, !noalias !2252, !noundef !15
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key3new.exit, !prof !16

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2252
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #41, !noalias !2254
  unreachable

_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key3new.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2252
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs5yxAJGbRKSL_4ring4hkdfNtB5_4Salt7extract(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(160) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [168 x i8], align 8               ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCs5yxAJGbRKSL_4ring4hmac4sign(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.d = load ptr, ptr %1, align 8, !noundef !15
  %i.e = icmp eq ptr %i.d, null
  %.sroa.0.0.idx = select i1 %i.e, i64 8, i64 0
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !15, !align !17, !noundef !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.h = load i8, ptr %i.g, align 1, !range !44, !noundef !15
  %i.i = zext nneg i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %.sroa.0.0, align 8, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2262
  %i.l = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !2262
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.b, %bb.a
  call fastcc void @_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key7try_new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.i), !noalias !2263
  %i.m = load i64, ptr %i.b, align 8, !range !22, !noalias !2262, !noundef !15
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key3new.exit, !prof !16

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2262
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #41, !noalias !2264
  unreachable

_RNvMs1_NtCs5yxAJGbRKSL_4ring4hmacNtB5_3Key3new.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.o, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs5yxAJGbRKSL_4ring9agreementNtB5_19EphemeralPrivateKey8generate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  %i.b = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.c = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2270
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !noalias !2270
  store ptr %i.c, ptr %i.a, align 8, !noalias !2270
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2269, !noundef !15 ; 3 uses
  %i.g = icmp ult i64 %i.f, 49
  br i1 %i.g, label %bb.d, label %bb.c, !prof !36

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.f, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #41, !noalias !2271
  unreachable

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2269, !nonnull !15, !noundef !15
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull %i.d, i64 noundef %i.f), !noalias !2272, !inline_history !5
  br i1 %i.j, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit.thread, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2270
  br label %bb.e

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit: ; preds = %bb.d
  %.sroa.01.0.copyload2 = load ptr, ptr %i.a, align 8, !noalias !2273 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !2273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2270
  %i.k = icmp eq ptr %.sroa.01.0.copyload2, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit.thread, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store ptr null, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed8generate.exit
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store ptr %.sroa.01.0.copyload2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE17exponentiate_elem(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 21 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !38, !noundef !15
  %i.g = and i64 %i.f, -2                         ; 7 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2323
  store i8 4, ptr %i.d, align 1, !noalias !2323
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #41, !noalias !2323
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.h, align 8, !noundef !15 ; 3 uses
  %i.i = icmp ult i64 %.val2, 2
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !2324
  unreachable

bb.d:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtB4_3num7nonzero7NonZeroyENtNtBM_5error15TryFromIntErrorE6unwrapCs5yxAJGbRKSL_4ring.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.j = add i64 %.val2, -2                       ; 6 uses
  %i.k = lshr i64 %i.j, 1                         ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !2325, !noundef !15
  %.not.i.i = icmp eq i64 %i.m, %i.k
  br i1 %.not.i.i, label %bb.e, label %bb.g, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ult i64 %i.j, 8
  br i1 %i.n, label %bb.g, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ugt i64 %i.j, 257
  br i1 %i.o, label %bb.g, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit, !prof !16

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.42.0.ph.i = phi i64 [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtB6_3rsa1NEEB6_(i64 noundef %.sroa.42.0.ph.i) #39
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit: ; preds = %bb.f
  %i.p = icmp ugt i64 %3, 128
  br i1 %i.p, label %bb.h, label %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE10clone_intoBb_.exit

bb.h:                                             ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #41, !noalias !2326
  unreachable

_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE10clone_intoBb_.exit: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit
  %i.q = shl nuw nsw i64 %3, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %4, ptr nonnull readonly align 8 %2, i64 %i.q, i1 false), !alias.scope !2327
  %i.r = tail call fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %3, ptr nonnull %.val, i64 %.val2)
  %.fr22 = freeze { ptr, i64 } %i.r               ; 2 uses
  %i.s = extractvalue { ptr, i64 } %.fr22, 0      ; 4 uses
  %i.t = extractvalue { ptr, i64 } %.fr22, 1      ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %i.u = icmp ugt i64 %i.t, 128
  br i1 %i.u, label %bb.i, label %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NNtNtB9_10montgomery1RE10clone_intoBb_.exit.i

bb.i:                                             ; preds = %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE10clone_intoBb_.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #41, !noalias !2330
  unreachable

_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NNtNtB9_10montgomery1RE10clone_intoBb_.exit.i: ; preds = %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE10clone_intoBb_.exit
  %i.v = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %1, ptr nonnull readonly align 8 %i.s, i64 %i.v, i1 false), !alias.scope !2331
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.g, i1 true) ; 2 uses
  %i.x = lshr exact i64 -9223372036854775808, %i.w ; 5 uses
  %.not.i = icmp eq i64 %i.w, 63
  br i1 %.not.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NNtNtB9_10montgomery1RE10clone_intoBb_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.not.i.i.i.not.i = icmp eq i64 %i.t, %i.k      ; 2 uses
  %i.ad = lshr i64 %i.j, 3
  %i.ae = icmp samesign ugt i64 %i.j, 15
  br i1 %i.ae, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i
  %i.af = and i64 %i.j, 6
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.split.us.split.us.split.us.i, label %.lr.ph.split.us.split.us.split.split.i.preheader

.lr.ph.split.us.split.us.split.split.i.preheader: ; preds = %.lr.ph.split.us.split.us.i
  br i1 %.not.i.i.i.not.i, label %.lr.ph.split.us.split.us.split.split.i.us, label %.lr.ph.split.us.split.us.split.split.i, !prof !19

.lr.ph.split.us.split.us.split.split.i.us:        ; preds = %.lr.ph.split.us.split.us.split.split.i.preheader, %bb.j
  %.sroa.05.01.us.us.i.us = phi i64 [ %i.ah, %bb.j ], [ %i.x, %.lr.ph.split.us.split.us.split.split.i.preheader ] ; 2 uses
  %i.ah = lshr i64 %.sroa.05.01.us.us.i.us, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val)
  %i.ai = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i.us, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i.us: ; preds = %.lr.ph.split.us.split.us.split.split.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.ak = and i64 %i.ah, %i.g
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %.thread3.i.us.us.i.us

.thread3.i.us.us.i.us:                            ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2333
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull readonly align 8 %i.s, ptr noundef nonnull readonly align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, i64 noundef range(i64 0, 1152921504606846976) %i.k) #36, !noalias !2334, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2333
  br label %bb.j

bb.j:                                             ; preds = %.thread3.i.us.us.i.us, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i.us
  %i.am = icmp ugt i64 %.sroa.05.01.us.us.i.us, 3
  br i1 %i.am, label %.lr.ph.split.us.split.us.split.split.i.us, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.i, %bb.k
  %.sroa.05.01.us.us.us.i = phi i64 [ %i.an, %bb.k ], [ %i.x, %.lr.ph.split.us.split.us.i ] ; 2 uses
  %i.an = lshr i64 %.sroa.05.01.us.us.us.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val)
  %i.ao = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.us.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.us.i: ; preds = %.lr.ph.split.us.split.us.split.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.aq = and i64 %i.an, %i.g
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.us.us.us.i

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.us.us.us.i: ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2333
  store ptr %1, ptr %i.a, align 8, !noalias !2333
  store i64 %i.t, ptr %i.z, align 8, !noalias !2333
  store ptr %i.s, ptr %i.aa, align 8, !noalias !2333
  store i64 %i.t, ptr %i.ab, align 8, !noalias !2333
  %i.as = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !2335, !noundef !15 ; 2 uses
  %i.at = icmp ne i32 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = and i32 %i.as, 1536
  %brmerge.i.not.i.us.us.us.i = icmp eq i32 %i.au, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, i1 noundef zeroext %brmerge.i.not.i.us.us.us.i) #40
  %.pre.i.us.us.us.i = load i64, ptr %i.b, align 8, !range !22, !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2333
  %i.av = trunc nuw i64 %.pre.i.us.us.us.i to i1
  br i1 %i.av, label %.split3.us.loopexit.i, label %_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulB1g_EBc_.exit.us.us.us.i, !prof !16

_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulB1g_EBc_.exit.us.us.us.i: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.us.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2333
  br label %bb.k

bb.k:                                             ; preds = %_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulB1g_EBc_.exit.us.us.us.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.us.i
  %i.aw = icmp ugt i64 %.sroa.05.01.us.us.us.i, 3
  br i1 %i.aw, label %.lr.ph.split.us.split.us.split.us.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.lr.ph.split.us.split.us.split.split.i:           ; preds = %.lr.ph.split.us.split.us.split.split.i.preheader, %bb.l
  %.sroa.05.01.us.us.i = phi i64 [ %i.ax, %bb.l ], [ %i.x, %.lr.ph.split.us.split.us.split.split.i.preheader ] ; 2 uses
  %i.ax = lshr i64 %.sroa.05.01.us.us.i, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val)
  %i.ay = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i: ; preds = %.lr.ph.split.us.split.us.split.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.ba = and i64 %i.ax, %i.g
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %.thread3.i.us.us.i

.thread3.i.us.us.i:                               ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  br label %.split3.us.i

bb.l:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us.i
  %i.bc = icmp ugt i64 %.sroa.05.01.us.us.i, 3
  br i1 %i.bc, label %.lr.ph.split.us.split.us.split.split.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.i
  br i1 %.not.i.i.i.not.i, label %.lr.ph.split.us.split.split.split.us.split.i, label %.lr.ph.split.us.split.split.split.i, !prof !19

.lr.ph.split.us.split.split.split.us.split.i:     ; preds = %.lr.ph.split.us.split.split.i, %bb.m
  %.sroa.05.01.us.us11.i = phi i64 [ %i.bd, %bb.m ], [ %i.x, %.lr.ph.split.us.split.split.i ] ; 2 uses
  %i.bd = lshr i64 %.sroa.05.01.us.us11.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val)
  %i.be = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.bf = trunc nuw i64 %i.be to i1
  br i1 %i.bf, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us12.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us12.i: ; preds = %.lr.ph.split.us.split.split.split.us.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.bg = and i64 %i.bd, %i.g
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %.thread3.i.us.us13.i

.thread3.i.us.us13.i:                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us12.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2333
  tail call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull readonly align 8 %i.s, ptr noundef nonnull readonly align 8 %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val, i64 noundef range(i64 0, 1152921504606846976) %i.k) #36, !noalias !2334, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2333
  br label %bb.m

bb.m:                                             ; preds = %.thread3.i.us.us13.i, %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.us12.i
  %i.bi = icmp ugt i64 %.sroa.05.01.us.us11.i, 3
  br i1 %i.bi, label %.lr.ph.split.us.split.split.split.us.split.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.lr.ph.split.us.split.split.split.i:              ; preds = %.lr.ph.split.us.split.split.i, %bb.n
  %.sroa.05.01.us.i = phi i64 [ %i.bj, %bb.n ], [ %i.x, %.lr.ph.split.us.split.split.i ] ; 2 uses
  %i.bj = lshr i64 %.sroa.05.01.us.i, 1           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2332
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery17limbs_square_montQSyEB6_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %1, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.y, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val), !noalias !2328
  %i.bk = load i64, ptr %i.c, align 8, !range !22, !noalias !2332, !noundef !15
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %.split.us.i, label %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.i, !prof !16

_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.i: ; preds = %.lr.ph.split.us.split.split.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2332
  %i.bm = and i64 %i.bj, %i.g
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %.thread3.i.us.i

.thread3.i.us.i:                                  ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2333
  br label %.split3.us.i

bb.n:                                             ; preds = %_RNvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NNtNtB9_10montgomery1RE6squareBb_.exit.us.i
  %i.bo = icmp ugt i64 %.sroa.05.01.us.i, 3
  br i1 %i.bo, label %.lr.ph.split.us.split.split.split.i, label %_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit

.split.us.i:                                      ; preds = %.lr.ph.split.us.split.split.split.i, %.lr.ph.split.us.split.split.split.us.split.i, %.lr.ph.split.us.split.us.split.split.i, %.lr.ph.split.us.split.us.split.split.i.us, %.lr.ph.split.us.split.us.split.us.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !23, !noalias !2332, !noundef !15
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.bq) #39
  unreachable

.split3.us.loopexit.i:                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.us.us.us.i
  %.pre.i = load i64, ptr %i.ac, align 8, !range !23, !noalias !2333
  br label %.split3.us.i

.split3.us.i:                                     ; preds = %.thread3.i.us.us.i, %.split3.us.loopexit.i, %.thread3.i.us.i
  %i.br = phi i64 [ 0, %.thread3.i.us.us.i ], [ %.pre.i, %.split3.us.loopexit.i ], [ 0, %.thread3.i.us.i ]
  tail call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.br) #39
  unreachable

_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic11exp_vartimeINtNtNtB4_6bigint4elem3RefNtNtB6_3rsa1NNtNtB4_10montgomery1RE11exp_vartimeB6_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.k, %_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NNtNtB9_10montgomery1RE10clone_intoBb_.exit.i
  %i.bs = add nuw nsw i64 %i.k, 2
  %i.bt = tail call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr nonnull %.val, i64 %i.bs)
  ret { ptr, i64 } %i.bt
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8be_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.c = icmp ult i64 %.val1, 2
  br i1 %i.c, label %bb.b, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !2362
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i: ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8
  %.0.val.fr.i = freeze ptr %.val                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val.fr.i) ]
  %i.d = add i64 %.val1, -2
  %i.e = lshr i64 %i.d, 1                         ; 2 uses
  %i.f = getelementptr i8, ptr %.0.val.fr.i, i64 16 ; 6 uses
  %.idx6.i = shl nuw nsw i64 %i.e, 3              ; 6 uses
  %.ptr7.i = getelementptr i8, ptr %i.f, i64 %.idx6.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2363
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  store i64 0, ptr %i.a, align 8, !alias.scope !2365, !noalias !2366
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.41.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.f, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  store ptr %.ptr7.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  store i64 %.idx6.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2365, !noalias !2366
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  store i8 2, ptr %i.g, align 8, !alias.scope !2367, !noalias !2363
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.promoted20.i.i = load i64, ptr %i.h, align 8, !noalias !2363 ; 2 uses
  %.promoted24.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2363 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %.split.us.i.loopexit.i, label %.split.preheader.i.i.i.i.i

bb.c:                                             ; preds = %.split29.i.i.i.i.i
  %i.i = add i64 %.sroa.0.018.i.i, -1             ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %.split.preheader.i.i.i.i.i, label %..loopexit_crit_edge.i.i

.split.preheader.i.i.i.i.i:                       ; preds = %.lr.ph.i.i, %bb.c
  %i.k = phi i64 [ %i.z, %bb.c ], [ %.idx6.i, %.lr.ph.i.i ] ; 3 uses
  %.idx.i = phi i64 [ %.idx3.i, %bb.c ], [ %.idx6.i, %.lr.ph.i.i ] ; 3 uses
  %i.l = phi i64 [ %i.aa, %bb.c ], [ %.promoted24.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.m = phi i64 [ %i.ab, %bb.c ], [ %.promoted20.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ %i.i, %bb.c ], [ %.idx6.i, %.lr.ph.i.i ]
  %i.n = phi i64 [ %i.ac, %bb.c ], [ 0, %.lr.ph.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  %i.o = trunc nuw i64 %i.n to i1
  %.not.i.i.i.not.i.peel.i.i.i.i.i = icmp ne i64 %i.m, %i.l
  %or.cond166.not.i.i = select i1 %i.o, i1 %.not.i.i.i.not.i.peel.i.i.i.i.i, i1 false
  br i1 %or.cond166.not.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.split.preheader.i.i.i.i.i
  %i.p = icmp eq i64 %.idx.i, 0
  br i1 %i.p, label %.split29.i.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i: ; preds = %bb.d
  %.add.i = add i64 %.idx.i, -8                   ; 2 uses
  %.ptr11.i = getelementptr i8, ptr %i.f, i64 %.add.i
  %i.q = load i64, ptr %.ptr11.i, align 8, !noalias !2371, !noundef !15
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q)
  store i64 %i.r, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, align 8, !alias.scope !2372, !noalias !2363
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i, %.split.preheader.i.i.i.i.i
  %.idx5.i = phi i64 [ %.add.i, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %.idx.i, %.split.preheader.i.i.i.i.i ]
  %i.s = phi i64 [ 8, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.m, %.split.preheader.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.l, %.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.t = icmp ult i64 %.us-phi.i.i.i.i.i, 8
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %i.k, 0
  br i1 %i.u, label %.noexc.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, i64 %.us-phi.i.i.i.i.i
  %i.w = add nuw nsw i64 %.us-phi.i.i.i.i.i, 1
  %.sroa.3.0.i8.pn.i.ph.i.i.i.i = load i8, ptr %i.v, align 1, !alias.scope !2372, !noalias !2363, !noundef !15
  %i.x = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %.sroa.3.0.i8.pn.i.ph.i.i.i.i, 1
  %i.y = add nsw i64 %i.k, -1
  br label %.split29.i.i.i.i.i

.noexc.i.i:                                       ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41, !noalias !2363
  unreachable

.split29.i.i.i.i.i:                               ; preds = %bb.e, %bb.d
  %i.z = phi i64 [ %i.y, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %.idx3.i = phi i64 [ %.idx5.i, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.aa = phi i64 [ %i.w, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  %i.ab = phi i64 [ %i.s, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %i.ac = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]      ; 3 uses
  %i.ad = phi { i1, i8 } [ %i.x, %bb.e ], [ { i1 false, i8 undef }, %bb.d ] ; 2 uses
  %i.ae = extractvalue { i1, i8 } %i.ad, 0        ; 2 uses
  %i.af = extractvalue { i1, i8 } %i.ad, 1        ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0
  %or.cond.i.i = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %.split.us.i.loopexit13.i

..loopexit_crit_edge.i.i:                         ; preds = %bb.c
  %.ptr8.le.i = getelementptr i8, ptr %i.f, i64 %.idx3.i
  store i64 %i.ab, ptr %i.h, align 8, !noalias !2363
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2363
  store ptr %.ptr8.le.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2363
  store i64 0, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !2363
  store i64 %i.z, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2363
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %..loopexit_crit_edge.i.i, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i
  %.lcssa15.i.i = phi i64 [ %i.ac, %..loopexit_crit_edge.i.i ], [ 0, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE5valueBd_.exit.i ]
  store i8 2, ptr %i.g, align 8, !noalias !2363
  store i64 %.lcssa15.i.i, ptr %i.a, align 8, !noalias !2363
  br label %_RNvMs5_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE8be_bytesBd_.exit

.split.us.i.loopexit13.i:                         ; preds = %.split29.i.i.i.i.i
  %.ptr8.le37.i = getelementptr i8, ptr %i.f, i64 %.idx3.i
  %i.ah = zext i1 %i.ae to i8
  br label %.split.us.i.i

.split.us.i.loopexit.i:                           ; preds = %.lr.ph.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2370)
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.loopexit.i, %.split.us.i.loopexit13.i
  %.us-phi58.i.i = phi i64 [ %i.z, %.split.us.i.loopexit13.i ], [ %.idx6.i, %.split.us.i.loopexit.i ]
  %.us-phi61.i.i = phi ptr [ %.ptr8.le37.i, %.split.us.i.loopexit13.i ], [ %.ptr7.i, %.split.us.i.loopexit.i ]
  %.us-phi62.i.i = phi i64 [ %i.aa, %.split.us.i.loopexit13.i ], [ %.promoted24.i.i, %.split.us.i.loopexit.i ]
  %.us-phi63.i.i = phi i64 [ %i.ab, %.split.us.i.loopexit13.i ], [ %.promoted20.i.i, %.split.us.i.loopexit.i ]
  %.us-phi64.i.i = phi i64 [ %i.ac, %.split.us.i.loopexit13.i ], [ 0, %.split.us.i.loopexit.i ]
  %.us-phi65.i.i = phi i8 [ %i.af, %.split.us.i.loopexit13.i ], [ undef, %.split.us.i.loopexit.i ]
  %.us-phi66.in.i.i = phi i8 [ %i.ah, %.split.us.i.loopexit13.i ], [ 0, %.split.us.i.loopexit.i ]
  store i64 %.us-phi63.i.i, ptr %i.h, align 8, !noalias !2363
  store i64 %.us-phi62.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2363
  store ptr %.us-phi61.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2363
  store i64 0, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !2363
  store i64 %.us-phi58.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2363
  store i64 %.us-phi64.i.i, ptr %i.a, align 8, !noalias !2363
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 89
  store i8 %.us-phi66.in.i.i, ptr %i.g, align 8, !alias.scope !2368, !noalias !2363
  store i8 %.us-phi65.i.i, ptr %i.ai, align 1, !alias.scope !2368, !noalias !2363
  br label %_RNvMs5_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE8be_bytesBd_.exit

_RNvMs5_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE8be_bytesBd_.exit: ; preds = %.loopexit.i.i, %.split.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !2373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2363
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_5Batch10shift_rows(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = load i64, ptr %0, align 8, !alias.scope !2376, !noundef !15 ; 4 uses
  %i.b = and i64 %i.a, 4222189076152335
  %i.c = and i64 %i.a, 67555025218437360          ; 2 uses
  %i.d = and i64 %i.a, 1080880403494997760        ; 2 uses
  %i.e = and i64 %i.a, -1152657617789587456       ; 2 uses
  %i.f = tail call noundef range(i64 0, -280375465082880) i64 @llvm.fshl.i64(i64 range(i64 0, 67555025218437361) %i.c, i64 range(i64 0, 67555025218437361) %i.c, i64 48)
  %i.g = tail call noundef range(i64 0, -4026531840) i64 @llvm.fshl.i64(i64 range(i64 0, 1080880403494997761) %i.d, i64 range(i64 0, 1080880403494997761) %i.d, i64 32)
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 0, -1152657617789587455) %i.e, i64 range(i64 0, -1152657617789587455) %i.e, i64 16)
  %i.i = or disjoint i64 %i.f, %i.b
  %i.j = or disjoint i64 %i.i, %i.h
  %i.k = or disjoint i64 %i.j, %i.g
  store i64 %i.k, ptr %0, align 8, !alias.scope !2376
  %.sroa.0.02.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %.sroa.0.02.i.ptr.1, align 8, !alias.scope !2376, !noundef !15 ; 4 uses
  %i.m = and i64 %i.l, 4222189076152335
  %i.n = and i64 %i.l, 67555025218437360          ; 2 uses
  %i.o = and i64 %i.l, 1080880403494997760        ; 2 uses
  %i.p = and i64 %i.l, -1152657617789587456       ; 2 uses
  %i.q = tail call noundef range(i64 0, -280375465082880) i64 @llvm.fshl.i64(i64 range(i64 0, 67555025218437361) %i.n, i64 range(i64 0, 67555025218437361) %i.n, i64 48)
  %i.r = tail call noundef range(i64 0, -4026531840) i64 @llvm.fshl.i64(i64 range(i64 0, 1080880403494997761) %i.o, i64 range(i64 0, 1080880403494997761) %i.o, i64 32)
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 0, -1152657617789587455) %i.p, i64 range(i64 0, -1152657617789587455) %i.p, i64 16)
  %i.t = or disjoint i64 %i.q, %i.m
  %i.u = or disjoint i64 %i.t, %i.s
  %i.v = or disjoint i64 %i.u, %i.r
  store i64 %i.v, ptr %.sroa.0.02.i.ptr.1, align 8, !alias.scope !2376
  %.sroa.0.02.i.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %.sroa.0.02.i.ptr.2, align 8, !alias.scope !2376, !noundef !15 ; 4 uses
  %i.x = and i64 %i.w, 4222189076152335
  %i.y = and i64 %i.w, 67555025218437360          ; 2 uses
  %i.z = and i64 %i.w, 1080880403494997760        ; 2 uses
  %i.aa = and i64 %i.w, -1152657617789587456      ; 2 uses
  %i.ab = tail call noundef range(i64 0, -280375465082880) i64 @llvm.fshl.i64(i64 range(i64 0, 67555025218437361) %i.y, i64 range(i64 0, 67555025218437361) %i.y, i64 48)
  %i.ac = tail call noundef range(i64 0, -4026531840) i64 @llvm.fshl.i64(i64 range(i64 0, 1080880403494997761) %i.z, i64 range(i64 0, 1080880403494997761) %i.z, i64 32)
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 0, -1152657617789587455) %i.aa, i64 range(i64 0, -1152657617789587455) %i.aa, i64 16)
  %i.ae = or disjoint i64 %i.ab, %i.x
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = or disjoint i64 %i.af, %i.ac
  store i64 %i.ag, ptr %.sroa.0.02.i.ptr.2, align 8, !alias.scope !2376
  %.sroa.0.02.i.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i64, ptr %.sroa.0.02.i.ptr.3, align 8, !alias.scope !2376, !noundef !15 ; 4 uses
  %i.ai = and i64 %i.ah, 4222189076152335
  %i.aj = and i64 %i.ah, 67555025218437360        ; 2 uses
  %i.ak = and i64 %i.ah, 1080880403494997760      ; 2 uses
  %i.al = and i64 %i.ah, -1152657617789587456     ; 2 uses
  %i.am = tail call noundef range(i64 0, -280375465082880) i64 @llvm.fshl.i64(i64 range(i64 0, 67555025218437361) %i.aj, i64 range(i64 0, 67555025218437361) %i.aj, i64 48)
  %i.an = tail call noundef range(i64 0, -4026531840) i64 @llvm.fshl.i64(i64 range(i64 0, 1080880403494997761) %i.ak, i64 range(i64 0, 1080880403494997761) %i.ak, i64 32)
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 0, -1152657617789587455) %i.al, i64 range(i64 0, -1152657617789587455) %i.al, i64 16)
  %i.ap = or disjoint i64 %i.am, %i.ai
  %i.aq = or disjoint i64 %i.ap, %i.ao
  %i.ar = or disjoint i64 %i.aq, %i.an
  store i64 %i.ar, ptr %.sroa.0.02.i.ptr.3, align 8, !alias.scope !2376
  %.sroa.0.02.i.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair31from_private_key_and_public_key:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15
  %i.d = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_RNvNtNtCs5yxAJGbRKSL_4ring2ec7suite_b19key_pair_from_bytes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  %i.e = load ptr, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %i.l, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.10.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.68.0..sroa_idx, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.j, ptr %.sroa.8.0..sroa_idx4, align 8
  call fastcc void @_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair3new(ptr noalias nofree noundef align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(168) %i.a, ptr noundef nonnull %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(168) %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.7.i = alloca [32 x i8], align 8          ; 6 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %i.d = alloca [208 x i8], align 8               ; 5 uses
  %i.e = alloca [208 x i8], align 8               ; 11 uses
  %i.f = alloca [64 x i8], align 1                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [48 x i8], align 16               ; 10 uses
  %i.m = alloca [112 x i8], align 8               ; 2 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [56 x i8], align 8                ; 5 uses
  %i.q = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(112) %i.r, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !15, !align !17, !noundef !15
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  %i.y = load i8, ptr %i.x, align 8, !range !34, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %i.z = load ptr, ptr %i.p, align 8, !alias.scope !2522, !nonnull !15, !align !17, !noundef !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !2522, !noundef !15 ; 4 uses
  %i.ac = icmp ult i64 %i.ab, 49
  br i1 %i.ac, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit, label %bb.c, !prof !36

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #41, !noalias !2522
  unreachable

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ae = trunc nuw i8 %i.y to i1                 ; 3 uses
  %..i.i = select i1 %i.ae, i64 6, i64 4          ; 3 uses
  %.sroa.07.0.i.i = select i1 %i.ae, i64 48, i64 32
  %.not.i.i20 = icmp eq i64 %i.ab, %.sroa.07.0.i.i
  br i1 %.not.i.i20, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, i8 0, i64 48, i1 false), !noalias !2523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2525
  store ptr %i.l, ptr %i.j, align 8, !noalias !2525
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %..i.i, ptr %i.af, align 8, !noalias !2525
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.ag, align 8, !noalias !2525
  %i.ah = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef range(i64 0, -9223372036854775808) %i.ab, i64 noundef range(i64 4, 7) %..i.i), !noalias !2526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2525
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i: ; preds = %bb.d
  %i.ak = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.l, ptr noundef nonnull readonly align 8 %i.w, i64 noundef range(i64 4, 7) %..i.i) #36, !noalias !2527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2528
  store i64 %i.ak, ptr %i.i, align 8, !noalias !2528
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.i) #36, !noalias !2527, !srcloc !37
  %i.al = load i64, ptr %i.i, align 8, !noalias !2528, !noundef !15
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2528
  br i1 %.not.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, label %vector.body.1

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %wide.load = load <2 x i64>, ptr %i.l, align 16, !alias.scope !2524, !noalias !2523
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.am, align 16, !alias.scope !2524, !noalias !2523
  %i.an = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ao, align 16
  %i.ap = or <2 x i64> %wide.load.2, %i.an
  %.lcssa = select i1 %i.ae, <2 x i64> %i.ap, <2 x i64> %i.an
  %i.aq = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.ar = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.aq) #36, !noalias !2527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2529
  store i64 %i.ar, ptr %i.k, align 8, !noalias !2529
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.k) #36, !noalias !2527, !srcloc !37
  %i.as = load i64, ptr %i.k, align 8, !noalias !2529, !noundef !15
  %.not.i.not.i.i = icmp eq i64 %i.as, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2529
  br i1 %.not.i.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i: ; preds = %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2523
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #41, !noalias !2530
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit: ; preds = %vector.body.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 16 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2531)
  %i.at = load ptr, ptr %i.t, align 8, !alias.scope !2531, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2532
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !2533
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !2532, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2532
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false), !noalias !2532
  call void %i.aw(ptr noundef nonnull %i.g, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.o, ptr noundef nonnull %i.h) #36, !noalias !2534, !inline_history !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !2535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2532
  %.val17 = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val18 = load ptr, ptr %i.ax, align 8          ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val19 = load ptr, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2536
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !noalias !2536
  %i.az = getelementptr inbounds nuw i8, ptr %.val17, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noalias !2536, !noundef !15 ; 4 uses
  %i.bb = icmp ult i64 %i.ba, 65
  br i1 %i.bb, label %bb.g, label %bb.f, !prof !36

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ba, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #41, !noalias !2536
  unreachable

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  %i.bc = call noundef zeroext i1 %.val19(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull %i.f, i64 noundef %i.ba) #40, !noalias !2536, !inline_history !2510
  br i1 %i.bc, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2536
  %i.bd = load i32, ptr %.val18, align 8, !range !45, !noalias !2536, !noundef !15
  %i.be = trunc nuw i32 %i.bd to i1
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.val18, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 4 dereferenceable(32) %i.bf, i64 32, i1 false), !noalias !2536
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %.sroa.06.0.copyload.i = load ptr, ptr %i.bg, align 8, !noalias !2536
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.47.0..sroa_idx.i, i64 32, i1 false), !noalias !2536
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val18, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i, i64 24, i1 false), !noalias !2536
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.55.0.i = phi ptr [ %.val18, %bb.i ], [ %.sroa.06.0.copyload.i, %bb.j ]
  %.sroa.04.0.i = phi ptr [ null, %bb.i ], [ %.val18, %bb.j ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, i8 0, i64 128, i1 false), !noalias !2536
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr %.sroa.04.0.i, ptr %i.bh, align 8, !noalias !2536
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store ptr %.sroa.55.0.i, ptr %.sroa.03.sroa.4.0..sroa_idx.i, align 8, !noalias !2536
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.03.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !2536
  %.sroa.03.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.03.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !2536
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2536
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.ba), !noalias !2536
  %i.bi = load i64, ptr %i.aa, align 8, !noalias !2537, !noundef !15 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 49
  br i1 %i.bj, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i, label %bb.l, !prof !36

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bi, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #41, !noalias !2537
  unreachable

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i: ; preds = %bb.k
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef %i.bi), !noalias !2538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %i.e, i64 208, i1 false), !noalias !2536
  %i.bk = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !2539
  %.not.i.i.i.i21 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i.i.i21, label %bb.m, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i, !prof !16

bb.m:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i: ; preds = %bb.m, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %i.bl, i64 80, i1 false), !noalias !2541
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.d), !noalias !2542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2540
  %i.bm = load ptr, ptr %i.c, align 8, !noalias !2540, !noundef !15 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !2543 ; 2 uses
  br i1 %i.bn, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i
  %i.bq = trunc nuw i64 %i.bp to i1
  br i1 %i.bq, label %bb.o, label %bb.p, !prof !16

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !2542
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2540
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #41, !noalias !2544
  unreachable

bb.q:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @149, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %i.bs, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.r:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i.i
  %.sroa.8.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.11.16.copyload = load i64, ptr %.sroa.8.0..sroa_idx8.i.i, align 8, !noalias !2545
  %.sroa.15.16..sroa.8.0..sroa_idx8.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.610.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.15.16..sroa.8.0..sroa_idx8.i.i.sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2536
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.bt = inttoptr i64 %i.bp to ptr
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %i.m, i64 112, i1 false)
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.811.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  store ptr %i.bm, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bt, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.16.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signingNtB5_12EcdsaKeyPair4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef range(i64 0, -9223372036854775808) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 31 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 18 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [48 x i8], align 16               ; 10 uses
  %i.p = alloca [48 x i8], align 1                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 7 uses
  %i.s = alloca [120 x i8], align 8               ; 6 uses
  %i.t = alloca [48 x i8], align 8                ; 5 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 5 uses
  %i.w = alloca [48 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 16               ; 8 uses
  %i.z = alloca [48 x i8], align 16               ; 9 uses
  %i.aa = alloca [104 x i8], align 8              ; 6 uses
  %.sroa.42.i = alloca [96 x i8], align 8         ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [144 x i8], align 8              ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 5 uses
  %i.ae = alloca [48 x i8], align 8               ; 6 uses
  %i.af = alloca [48 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [80 x i8], align 8               ; 4 uses
  %i.ai = alloca [72 x i8], align 8               ; 7 uses
  %.sroa.7.i = alloca [32 x i8], align 8          ; 6 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %i.aj = alloca [208 x i8], align 8              ; 5 uses
  %i.ak = alloca [208 x i8], align 8              ; 11 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [72 x i8], align 8               ; 6 uses
  %i.an = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.an, 0
  %.lcssa.sroa.gep91 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.lcssa.sroa.gep93 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.lcssa.sroa.gep95 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !15, !align !17, !noundef !15 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !15, !align !17, !noundef !15 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !2653
  %i.as = load i32, ptr %i.ar, align 8, !range !45, !alias.scope !2652, !noundef !15
  %i.at = trunc nuw i32 %i.as to i1
  br i1 %i.at, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !2654
  br label %bb.e

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
end_hunk_4
begin_hunk_5_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %.not.i93.i.i.i.i = icmp samesign ugt i64 %i.da, %i.du
  br i1 %.not.i93.i.i.i.i, label %bb.ae, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i, !prof !16

bb.ae:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #41, !noalias !3233
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSAINtNtNtB4_3mem12maybe_uninit11MaybeUninityEj8_12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.da ; 2 uses
  %i.dw = sub nuw nsw i64 %i.du, %i.da            ; 2 uses
  %.not.i94.i.i.i.i = icmp samesign ugt i64 %i.da, %i.dw
  br i1 %.not.i94.i.i.i.i, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #41, !noalias !3234
  unreachable

bb.ag:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtNtB4_3mem12maybe_uninit11MaybeUninityE12split_at_mutCs5yxAJGbRKSL_4ring.exit.i.i.i.i
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.da ; 11 uses
  %i.dy = sub nuw nsw i64 %i.dw, %i.da
  %.not.i99.i.i.i.i = icmp eq i64 %i.dy, %i.da
  br i1 %.not.i99.i.i.i.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, !prof !19

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i.i: ; preds = %bb.ag
  %i.dz = shl nuw nsw i64 %i.da, 3                ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.dx, ptr nonnull readonly align 8 %i.dn, i64 %i.dz, i1 false), !alias.scope !3235, !noalias !3236
  %i.ea = call fastcc { ptr, i64 } @_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1PEBc_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull %.val64.i, i64 %i.db, ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %i.ab) #40, !noalias !3237 ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3231
  store ptr %i.dv, ptr %i.n, align 8, !noalias !3231
  %i.ed = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.da, ptr %i.ed, align 8, !noalias !3231
  %i.ee = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.eb, ptr %i.ee, align 8, !noalias !3231
  %i.ef = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.ec, ptr %i.ef, align 8, !noalias !3231
  %i.eg = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.dc, ptr %i.eg, align 8, !noalias !3231
  %i.eh = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %i.dd, ptr %i.eh, align 8, !noalias !3231
  %i.ei = lshr i64 %i.cz, 3                       ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.ei, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i1 noundef zeroext %not.brmerge.i78.i.i.i.i) #40, !noalias !3232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3231
  %i.ej = load i64, ptr %i.p, align 8, !range !22, !noalias !3231, !noundef !15
  %i.ek = trunc nuw i64 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.em = load i64, ptr %i.el, align 8, !noalias !3231, !noundef !15
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3231
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

bb.ai:                                            ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !3231, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3231
  call void @llvm.experimental.noalias.scope.decl(metadata !3238)
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  call void @llvm.experimental.noalias.scope.decl(metadata !3240)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dz
  %i.eq = add nsw i64 %i.dz, -8
  %i.er = lshr exact i64 %i.eq, 3
  %i.es = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.er) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.es, 4
  br i1 %min.iters.check, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.ai
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %i.eu = and i64 %i.et, 3                        ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  %i.ew = select i1 %i.ev, i64 4, i64 %i.eu
  %n.vec = sub nsw i64 %i.et, %i.ew               ; 3 uses
  %i.ex = shl i64 %n.vec, 3
  %i.ey = getelementptr i8, ptr %i.dn, i64 %i.ex
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ez = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dn, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !3240, !noalias !3241
  %wide.load139 = load <2 x i64>, ptr %i.fa, align 8, !alias.scope !3240, !noalias !3241
  %i.fb = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.fc = xor <2 x i64> %wide.load139, splat (i64 -1)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <2 x i64> %i.fb, ptr %i.fd, align 32, !alias.scope !3242, !noalias !3243
  store <2 x i64> %i.fc, ptr %i.fe, align 16, !alias.scope !3242, !noalias !3243
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader, label %vector.body, !llvm.loop !2931

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader: ; preds = %vector.body, %bb.ai
  %.sroa.9.0.i.i.i.i.i.i.ph = phi i64 [ 0, %bb.ai ], [ %n.vec, %vector.body ]
  %.sroa.0.02.i.i.i.i.i.i.i.ph = phi ptr [ %i.dn, %bb.ai ], [ %i.ey, %vector.body ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ %i.fk, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.0.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.02.i.i.i.i.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fg = icmp eq i64 %i.da, %.sroa.9.0.i.i.i.i.i.i
  br i1 %i.fg, label %bb.aj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i.i, align 8, !alias.scope !3240, !noalias !3241, !noundef !15
  %i.fh = xor i64 %.sroa.0.0.val.i.i.i.i.i.i.i, -1
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.sroa.9.0.i.i.i.i.i.i
  store i64 %i.fh, ptr %i.fj, align 8, !alias.scope !3242, !noalias !3243
  %i.fk = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i.i, 1 ; 2 uses
  %i.fl = icmp eq ptr %i.fi, %i.ep
  br i1 %i.fl, label %bb.ak, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !2932

bb.aj:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !3244
  unreachable

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fm = load i64, ptr %i.dt, align 64, !alias.scope !3245, !noalias !3231, !noundef !15
  %i.fn = or i64 %i.fm, 1
  store i64 %i.fn, ptr %i.dt, align 64, !alias.scope !3245, !noalias !3231
  %i.fo = call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dt, i64 noundef %i.fk, ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, i64 noundef 0), !noalias !3232
  %i.fp = extractvalue { i64, i64 } %i.fo, 0
  %.not71.i.i.i.i = icmp eq i64 %i.fp, -1
  %.not.i101.i.i.i.i = icmp eq i64 %i.da, %i.em
  %or.cond.i.i = and i1 %.not.i101.i.i.i.i, %.not71.i.i.i.i
  br i1 %or.cond.i.i, label %bb.al, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, !prof !3246

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.dt, ptr nonnull readonly align 8 %i.eo, i64 %i.dz, i1 false), !alias.scope !3247, !noalias !3232
  %i.fq = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef 1, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not72.i.i.i.i = icmp eq i64 %i.fq, -1
  br i1 %.not72.i.i.i.i, label %.split.split.split.us.i.preheader.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

.split.split.split.us.i.preheader.i.i.i:          ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3231
  store i64 1, ptr %i.o, align 8, !noalias !3231
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 31, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3231
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 5 uses
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  br i1 %.sroa.0.0.i76.i.i.i.i, label %.split.split.split.us.i.us.i.i.i, label %.split.split.split.us.i.i.i.i

.split.split.split.us.i.us.i.i.i:                 ; preds = %.split.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i
  %i.fr = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !range !34, !noalias !3231, !noundef !15
  %i.fs = trunc nuw i8 %i.fr to i1
  %i.ft = load i64, ptr %i.o, align 8, !noalias !3231
  %.sroa.066.0.us91.i.us.i.i.i = select i1 %i.fs, i64 0, i64 %i.ft
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %i.fu = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 noundef %.sroa.066.0.us91.i.us.i.i.i) #40, !noalias !3232 ; 2 uses
  %i.fv = extractvalue { i64, i64 } %i.fu, 0
  %i.fw = extractvalue { i64, i64 } %i.fu, 1      ; 3 uses
  %i.fx = trunc nuw i64 %i.fv to i1
  br i1 %i.fx, label %bb.am, label %.split86.us.i.i.i.i

bb.am:                                            ; preds = %.split.split.split.us.i.us.i.i.i
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.split88.us.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i: ; preds = %bb.am
  %i.fz = add i64 %i.fw, -1
  call void @ring_core_0_17_16000__bn_mulx4x_mont_gather5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull readonly align 8 %i.eo, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.da, i64 noundef range(i64 0, -1) %i.fz) #36, !noalias !3232
  %i.ga = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.fw, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not74.us.i.us.i.i.i = icmp eq i64 %i.ga, -1
  br i1 %.not74.us.i.us.i.i.i, label %.split.split.split.us.i.us.i.i.i, label %.split93.us.i.i.i.i

.split.split.split.us.i.i.i.i:                    ; preds = %.split.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i
  %i.gb = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !range !34, !noalias !3231, !noundef !15
  %i.gc = trunc nuw i8 %i.gb to i1
  %i.gd = load i64, ptr %i.o, align 8, !noalias !3231
  %.sroa.066.0.us91.i.i.i.i = select i1 %i.gc, i64 0, i64 %i.gd
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3231
  %i.ge = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i.i, i64 noundef %.sroa.066.0.us91.i.i.i.i) #40, !noalias !3232 ; 2 uses
  %i.gf = extractvalue { i64, i64 } %i.ge, 0
  %i.gg = extractvalue { i64, i64 } %i.ge, 1      ; 3 uses
  %i.gh = trunc nuw i64 %i.gf to i1
  br i1 %i.gh, label %bb.an, label %.split86.us.i.i.i.i

bb.an:                                            ; preds = %.split.split.split.us.i.i.i.i
  %i.gi = icmp eq i64 %i.gg, 0
  br i1 %i.gi, label %.split88.us.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i: ; preds = %bb.an
  %i.gj = add i64 %i.gg, -1
  call void @ring_core_0_17_16000__bn_mul4x_mont_gather5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull readonly align 8 %i.eo, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.da, i64 noundef range(i64 0, -1) %i.gj) #36, !noalias !3232
  %i.gk = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.q, i64 noundef %i.ds, ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.do, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef %i.gg, i1 noundef zeroext %not.brmerge.i78.i.i.i.i)
  %.not74.us.i.i.i.i = icmp eq i64 %i.gk, -1
  br i1 %.not74.us.i.i.i.i, label %.split.split.split.us.i.i.i.i, label %.split93.us.i.i.i.i

.split86.us.i.i.i.i:                              ; preds = %.split.split.split.us.i.i.i.i, %.split.split.split.us.i.us.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3231
  call void @llvm.experimental.noalias.scope.decl(metadata !3248)
  %i.gl = icmp samesign ugt i64 %.val1.i.i, 288230376151711743
  br i1 %i.gl, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.split86.us.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !3249
  unreachable

bb.ap:                                            ; preds = %.split86.us.i.i.i.i
  %.not.i12.i.i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i12.i.i.i, label %bb.aq, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i, !prof !16

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !3249
  unreachable

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i: ; preds = %bb.ap
  %i.gm = shl nuw i64 %.val1.i.i, 6
  %i.gn = urem i64 %i.gm, 5                       ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  %i.gp = sub nuw nsw i64 64, %i.gn
  %i.gq = select i1 %i.go, i64 59, i64 %i.gp      ; 2 uses
  %i.gr = load i64, ptr %.val.i.i, align 8, !alias.scope !3248, !noalias !3250, !noundef !15
  %i.gs = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %i.gr, i64 noundef 0, i64 noundef %i.gq) #36, !noalias !3249
  %i.gt = add nsw i64 %i.gq, -5
  call void @ring_core_0_17_16000__bn_gather5(ptr noundef nonnull align 8 %i.dt, i64 noundef %i.da, ptr noundef nonnull %i.q, i64 noundef %i.gs) #36, !noalias !3251
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i: ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i
  %.sroa.011.0.us.us.us.i.i.i.i = phi i64 [ %.val.i.us.us.us.i.i.i.i, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ]
  %.sroa.0.0.us.us.us.i.i.i.i = phi i64 [ %i.hf, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ %i.gt, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.us.us.us.i.i.i.i = phi i64 [ %i.hg, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %.sroa.05.0.i.us.us.us.i.i.i.i
  %.val.i.us.us.us.i.i.i.i = load i64, ptr %i.gu, align 8, !alias.scope !3248, !noalias !3252, !noundef !15 ; 4 uses
  %i.gv = icmp ugt i64 %.sroa.0.0.us.us.us.i.i.i.i, 59
  br i1 %i.gv, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %i.gw = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.011.0.us.us.us.i.i.i.i, i64 noundef %.sroa.0.0.us.us.us.i.i.i.i) #36, !noalias !3253 ; 2 uses
  %i.gx = add i64 %.sroa.0.0.us.us.us.i.i.i.i, -5 ; 3 uses
  br i1 %.sroa.0.0.i76.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gw) #36, !noalias !3254
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

bb.as:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i.i
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gw) #36, !noalias !3254
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i: ; preds = %bb.as, %bb.ar
  %i.gy = icmp ult i64 %i.gx, 64
  br i1 %i.gy, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %.sroa.0.1.us.us.us.i.i.i.i = phi i64 [ %i.gx, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %.sroa.0.0.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i ] ; 2 uses
  br i1 %.sroa.0.0.i76.i.i.i.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i
  %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i = phi i64 [ %i.ha, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i ], [ %.sroa.0.1.us.us.us.i.i.i.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i ] ; 2 uses
  %i.gz = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i) #36, !noalias !3255
  %i.ha = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.us.i.i.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.gz) #36, !noalias !3256
  %i.hb = icmp ult i64 %i.ha, 64
  br i1 %i.hb, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i
  %.sroa.0.2.us.us.us.us.us.us.i.i.i.i = phi i64 [ %i.hd, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i ], [ %.sroa.0.1.us.us.us.i.i.i.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i.i ] ; 2 uses
  %i.hc = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.i.i.i) #36, !noalias !3255
  %i.hd = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.i.i.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull align 8 %i.dt, ptr noundef nonnull %i.q, ptr noundef nonnull %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da, i64 noundef %i.hc) #36, !noalias !3256
  %i.he = icmp ult i64 %i.hd, 64
  br i1 %i.he, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i
  %.lcssa.i.i.us.us.us.i.i.i.i = phi i64 [ %i.gx, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %i.ha, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i.i ], [ %i.hd, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i.i ]
  %i.hf = add i64 %.lcssa.i.i.us.us.us.i.i.i.i, 64
  %i.hg = add nuw nsw i64 %.sroa.05.0.i.us.us.us.i.i.i.i, 1 ; 2 uses
  %i.hh = icmp eq i64 %i.hg, %.val1.i.i
  br i1 %i.hh, label %.lr.ph.i.i.preheader.i.i.i.i, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1PKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1PKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull readonly align 64 %i.dt, i64 %i.dz, i1 false), !alias.scope !3257, !noalias !3258
  call void @llvm.experimental.noalias.scope.decl(metadata !3259)
  store i64 1, ptr %i.ab, align 8, !alias.scope !3260, !noalias !3261
  %.idx.i.i.i.i.i = add nsw i64 %i.dz, -8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hi, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !3262, !noalias !3263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3264
  store ptr %i.t, ptr %i.l, align 8, !noalias !3264
  %i.hj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.da, ptr %i.hj, align 8, !noalias !3264
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ab, ptr %i.hk, align 8, !noalias !3264
  %i.hl = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.da, ptr %i.hl, align 8, !noalias !3264
  %i.hm = icmp ugt i64 %i.cz, 15
  br i1 %i.hm, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.preheader.i.i.i.i
  call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.t, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.dn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i64 noundef range(i64 0, 1152921504606846976) %i.da) #36, !noalias !3265, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3264
  br label %bb.au

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i
  %i.hn = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3266, !noundef !15 ; 2 uses
  %i.ho = icmp ne i32 %i.hn, 0
  call void @llvm.assume(i1 %i.ho), !noalias !3267
  %i.hp = and i32 %i.hn, 1536
  %brmerge.i.not.i.i.i.i = icmp eq i32 %i.hp, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.dn, i64 noundef %i.ei, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val64.i, i1 noundef zeroext %brmerge.i.not.i.i.i.i) #40, !noalias !3268
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8, !range !22, !noalias !3264
  %i.hq = trunc nuw i64 %.pre.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3264
  br i1 %i.hq, label %bb.at, label %bb.au, !prof !16

bb.at:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !23, !noalias !3264, !noundef !15
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.hs) #39
  unreachable

.split88.us.i.i.i.i:                              ; preds = %bb.an, %bb.am
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41, !noalias !3232
  unreachable

.split93.us.i.i.i.i:                              ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3231
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i

_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i: ; preds = %.split93.us.i.i.i.i, %bb.al, %bb.ak, %bb.ah, %bb.ag, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3231
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38

bb.au:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i.i, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3231
  call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i92.i = load ptr, ptr %i.ht, align 8, !alias.scope !3272 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i93.i = load i64, ptr %i.hu, align 8, !alias.scope !3272 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3273)
  call void @llvm.experimental.noalias.scope.decl(metadata !3274)
  %i.hv = icmp ult i64 %.val67.i, 2
  br i1 %i.hv, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #41, !noalias !3275
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.hw = add i64 %.val67.i, -2                   ; 9 uses
  %i.hx = lshr i64 %i.hw, 1                       ; 32 uses
  %i.hy = add nuw i64 %i.hx, 2                    ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.val66.i, i64 %i.hy
  %i.ia = sub nuw nsw i64 %.val67.i, %i.hy
  %i.ib = getelementptr inbounds nuw i8, ptr %.val66.i, i64 8
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !3276, !noalias !3277, !noundef !15
  %.not.i.i.i.i94.i = icmp eq i64 %i.ic, %i.hx
  br i1 %.not.i.i.i.i94.i, label %bb.ax, label %bb.az, !prof !19

bb.ax:                                            ; preds = %bb.aw
  %i.id = icmp ult i64 %i.hw, 8
  br i1 %i.id, label %bb.az, label %bb.ay, !prof !16

bb.ay:                                            ; preds = %bb.ax
  %i.ie = icmp ugt i64 %i.hw, 257
  br i1 %i.ie, label %bb.az, label %bb.ba, !prof !16

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.sroa.42.0.ph.i.i.i95.i = phi i64 [ 0, %bb.aw ], [ 1, %bb.ax ], [ 2, %bb.ay ]
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1QEEB6_(i64 noundef %.sroa.42.0.ph.i.i.i95.i) #39
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !3278)
  call void @llvm.experimental.noalias.scope.decl(metadata !3279)
  %i.if = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3280, !noundef !15 ; 3 uses
  %i.ig = icmp ne i32 %i.if, 0
  call void @llvm.assume(i1 %i.ig)
  %i.ih = and i32 %i.if, 1536
  %not.brmerge.i78.i.i.i98.i = icmp eq i32 %i.ih, 1536 ; 4 uses
  %i.ii = and i32 %i.if, 1664
  %.sroa.0.0.i76.i.i.i99.i = icmp eq i32 %i.ii, 1664 ; 3 uses
  %.not.i91.i.i.i100.i = icmp eq i64 %i.hx, 0
  br i1 %.not.i91.i.i.i100.i, label %bb.bb, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i, !prof !16

bb.bb:                                            ; preds = %bb.ba
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41, !noalias !3281
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i: ; preds = %bb.ba
  %i.ij = and i64 %i.hw, 510
  %.not70.i.i.i101.i = icmp eq i64 %i.cv, %i.ij
  br i1 %.not70.i.i.i101.i, label %bb.bc, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, !prof !19

end_hunk_5
begin_hunk_6_@_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair4sign:bb.a
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.hx ; 11 uses
  %i.iv = sub nuw nsw i64 %i.it, %i.hx
  %.not.i99.i.i.i110.i = icmp eq i64 %i.iv, %i.hx
  br i1 %.not.i99.i.i.i110.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, !prof !19

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i: ; preds = %bb.bf
  %i.iw = shl nuw nsw i64 %i.hx, 3                ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.iu, ptr nonnull readonly align 8 %i.ik, i64 %i.iw, i1 false), !alias.scope !3284, !noalias !3285
  call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.ix = icmp samesign ugt i64 %i.cv, 128
  br i1 %i.ix, label %bb.bg, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i

bb.bg:                                            ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #41, !noalias !3288
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i: ; preds = %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE25write_copy_of_slice_exactB9_.exit.i.i.i111.i
  %i.iy = shl nuw nsw i64 %i.cv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.ct, i64 %i.iy, i1 false), !alias.scope !3289, !noalias !3222
  %i.iz = call noundef i32 @ring_core_0_17_16000__bn_from_montgomery_in_place(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, i64 noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, i64 noundef range(i64 0, 1152921504606846976) %i.cv, ptr noundef nonnull readonly align 8 %i.ik, i64 noundef range(i64 0, 1152921504606846976) %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i) #36, !noalias !3290
  %i.ja = icmp eq i32 %i.iz, 1
  br i1 %i.ja, label %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i, label %bb.bh, !prof !19

bb.bh:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !noalias !3291
  unreachable

_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3280
  store ptr %i.is, ptr %i.h, align 8, !noalias !3280
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.hx, ptr %i.jb, align 8, !noalias !3280
  %i.jc = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %i.jc, align 8, !noalias !3280
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.hx, ptr %i.jd, align 8, !noalias !3280
  %i.je = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.hz, ptr %i.je, align 8, !noalias !3280
  %i.jf = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.ia, ptr %i.jf, align 8, !noalias !3280
  %i.jg = lshr i64 %i.hw, 3                       ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill12uninit_slice6UninityERSyB1S_EEBa_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.jg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i) #40, !noalias !3281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3280
  %i.jh = load i64, ptr %i.j, align 8, !range !22, !noalias !3280, !noundef !15
  %i.ji = trunc nuw i64 %i.jh to i1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !3280, !noundef !15
  br i1 %i.ji, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3280
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

bb.bj:                                            ; preds = %_RINvMsb_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3RefNtNtBc_3rsa1NE12reduced_montNtNtB15_7keypair1QEBc_.exit.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !3280, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3280
  call void @llvm.experimental.noalias.scope.decl(metadata !3292)
  call void @llvm.experimental.noalias.scope.decl(metadata !3293)
  call void @llvm.experimental.noalias.scope.decl(metadata !3294)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.iw
  %i.jo = add nsw i64 %i.iw, -8
  %i.jp = lshr exact i64 %i.jo, 3
  %i.jq = call i64 @llvm.umin.i64(i64 %i.hx, i64 %i.jp) ; 2 uses
  %min.iters.check142 = icmp samesign ult i64 %i.jq, 4
  br i1 %min.iters.check142, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %bb.bj
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %i.js = and i64 %i.jr, 3                        ; 2 uses
  %i.jt = icmp eq i64 %i.js, 0
  %i.ju = select i1 %i.jt, i64 4, i64 %i.js
  %n.vec144 = sub nsw i64 %i.jr, %i.ju            ; 3 uses
  %i.jv = shl i64 %n.vec144, 3
  %i.jw = getelementptr i8, ptr %i.ik, i64 %i.jv
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next150, %vector.body145 ] ; 3 uses
  %i.jx = shl i64 %index146, 3
  %next.gep147 = getelementptr i8, ptr %i.ik, i64 %i.jx ; 2 uses
  %i.jy = getelementptr i8, ptr %next.gep147, i64 16
  %wide.load148 = load <2 x i64>, ptr %next.gep147, align 8, !alias.scope !3294, !noalias !3295
  %wide.load149 = load <2 x i64>, ptr %i.jy, align 8, !alias.scope !3294, !noalias !3295
  %i.jz = xor <2 x i64> %wide.load148, splat (i64 -1)
  %i.ka = xor <2 x i64> %wide.load149, splat (i64 -1)
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %index146 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store <2 x i64> %i.jz, ptr %i.kb, align 32, !alias.scope !3296, !noalias !3297
  store <2 x i64> %i.ka, ptr %i.kc, align 16, !alias.scope !3296, !noalias !3297
  %index.next150 = add nuw i64 %index146, 4       ; 2 uses
  %i.kd = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.kd, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, label %vector.body145, !llvm.loop !3045

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader: ; preds = %vector.body145, %bb.bj
  %.sroa.9.0.i.i.i.i.i113.i.ph = phi i64 [ 0, %bb.bj ], [ %n.vec144, %vector.body145 ]
  %.sroa.0.02.i.i.i.i.i.i114.i.ph = phi ptr [ %i.ik, %bb.bj ], [ %i.jw, %vector.body145 ]
  br label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i

_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i: ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i115.i
  %.sroa.9.0.i.i.i.i.i113.i = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i.i.i.i.i115.i ], [ %.sroa.9.0.i.i.i.i.i113.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader ] ; 3 uses
  %.sroa.0.02.i.i.i.i.i.i114.i = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i.i.i.i115.i ], [ %.sroa.0.02.i.i.i.i.i.i114.i.ph, %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i.preheader ] ; 2 uses
  %i.ke = icmp eq i64 %i.hx, %.sroa.9.0.i.i.i.i.i113.i
  br i1 %i.ke, label %bb.bk, label %.lr.ph.i.i.i.i.i.i.i.i.i115.i

.lr.ph.i.i.i.i.i.i.i.i.i115.i:                    ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i
  %.sroa.0.0.val.i.i.i.i.i.i116.i = load i64, ptr %.sroa.0.02.i.i.i.i.i.i114.i, align 8, !alias.scope !3294, !noalias !3295, !noundef !15
  %i.kf = xor i64 %.sroa.0.0.val.i.i.i.i.i.i116.i, -1
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i.i.i.i.i114.i, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %.sroa.9.0.i.i.i.i.i113.i
  store i64 %i.kf, ptr %i.kh, align 8, !alias.scope !3296, !noalias !3297
  %i.ki = add nuw nsw i64 %.sroa.9.0.i.i.i.i.i113.i, 1 ; 2 uses
  %i.kj = icmp eq ptr %i.kg, %i.jn
  br i1 %i.kj, label %bb.bl, label %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i, !llvm.loop !3046

bb.bk:                                            ; preds = %_RNvMsb_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_3BufyE15unfilled_uninitB9_.exit.i.i.i.i.i.i.i.i112.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #41, !noalias !3298
  unreachable

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i115.i
  %i.kk = load i64, ptr %i.iq, align 64, !alias.scope !3299, !noalias !3280, !noundef !15
  %i.kl = or i64 %i.kk, 1
  store i64 %i.kl, ptr %i.iq, align 64, !alias.scope !3299, !noalias !3280
  %i.km = call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iq, i64 noundef %i.ki, ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, i64 noundef 0), !noalias !3281
  %i.kn = extractvalue { i64, i64 } %i.km, 0
  %.not71.i.i.i117.i = icmp eq i64 %i.kn, -1
  %.not.i102.i.i.i.i = icmp eq i64 %i.hx, %i.jk
  %or.cond.i118.i = and i1 %.not.i102.i.i.i.i, %.not71.i.i.i117.i
  br i1 %or.cond.i118.i, label %bb.bm, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, !prof !3246

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.iq, ptr nonnull readonly align 8 %i.jm, i64 %i.iw, i1 false), !alias.scope !3300, !noalias !3281
  %i.ko = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef 1, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not72.i.i.i119.i = icmp eq i64 %i.ko, -1
  br i1 %.not72.i.i.i119.i, label %.split.split.us.i.preheader.i.i.i, label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

.split.split.us.i.preheader.i.i.i:                ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3280
  store i64 1, ptr %i.i, align 8, !noalias !3280
  %.sroa.2.0..sroa_idx.i.i.i120.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i120.i, align 8, !noalias !3280
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i121.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i121.i, align 8, !noalias !3280
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i122.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 31, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i122.i, align 8, !noalias !3280
  %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i123.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i8 0, ptr %.sroa.2.sroa.4.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i123.i, align 8, !noalias !3280
  %.sroa.3.0..sroa_idx.i.i.i124.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 5 uses
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3280
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %.split.split.us.i.us.i.i.i, label %.split.split.us.i.i.i.i

.split.split.us.i.us.i.i.i:                       ; preds = %.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i
  %i.kp = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !range !34, !noalias !3280, !noundef !15
  %i.kq = trunc nuw i8 %i.kp to i1
  %i.kr = load i64, ptr %i.i, align 8, !noalias !3280
  %.sroa.066.0.us.i.us.i.i.i = select i1 %i.kq, i64 0, i64 %i.kr
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3280
  %i.ks = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i120.i, i64 noundef %.sroa.066.0.us.i.us.i.i.i) #40, !noalias !3281 ; 2 uses
  %i.kt = extractvalue { i64, i64 } %i.ks, 0
  %i.ku = extractvalue { i64, i64 } %i.ks, 1      ; 3 uses
  %i.kv = trunc nuw i64 %i.kt to i1
  br i1 %i.kv, label %bb.bn, label %.split86.us.i.i.i125.i

bb.bn:                                            ; preds = %.split.split.us.i.us.i.i.i
  %i.kw = icmp eq i64 %i.ku, 0
  br i1 %i.kw, label %.split88.us.i.i.i147.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i: ; preds = %bb.bn
  %i.kx = add i64 %i.ku, -1
  call void @ring_core_0_17_16000__bn_mulx4x_mont_gather5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull readonly align 8 %i.jm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.hx, i64 noundef range(i64 0, -1) %i.kx) #36, !noalias !3281
  %i.ky = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.ku, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not74.us.i.us.i.i149.i = icmp eq i64 %i.ky, -1
  br i1 %.not74.us.i.us.i.i149.i, label %.split.split.us.i.us.i.i.i, label %.split90.us.i.i.i.i

.split.split.us.i.i.i.i:                          ; preds = %.split.split.us.i.preheader.i.i.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i
  %i.kz = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !range !34, !noalias !3280, !noundef !15
  %i.la = trunc nuw i8 %i.kz to i1
  %i.lb = load i64, ptr %i.i, align 8, !noalias !3280
  %.sroa.066.0.us.i.i.i.i = select i1 %i.la, i64 0, i64 %i.lb
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i124.i, align 8, !noalias !3280
  %i.lc = call fastcc { i64, i64 } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB4_4SkipINtNtB6_3map3MapINtNtNtBa_3ops5range14RangeInclusiveyENcNtNtCs5yxAJGbRKSL_4ring7window512LeakyWindow50EENtNtNtB8_6traits8iterator8Iterator3nthB1V_(ptr noalias nofree noundef align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i.i120.i, i64 noundef %.sroa.066.0.us.i.i.i.i) #40, !noalias !3281 ; 2 uses
  %i.ld = extractvalue { i64, i64 } %i.lc, 0
  %i.le = extractvalue { i64, i64 } %i.lc, 1      ; 3 uses
  %i.lf = trunc nuw i64 %i.ld to i1
  br i1 %i.lf, label %bb.bo, label %.split86.us.i.i.i125.i

bb.bo:                                            ; preds = %.split.split.us.i.i.i.i
  %i.lg = icmp eq i64 %i.le, 0
  br i1 %i.lg, label %.split88.us.i.i.i147.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i, !prof !16

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i: ; preds = %bb.bo
  %i.lh = add i64 %i.le, -1
  call void @ring_core_0_17_16000__bn_mul4x_mont_gather5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull readonly align 8 %i.jm, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.hx, i64 noundef range(i64 0, -1) %i.lh) #36, !noalias !3281
  %i.li = call fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %i.k, i64 noundef %i.ip, ptr noalias nofree noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.iu, i64 noundef %i.il, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef %i.le, i1 noundef zeroext %not.brmerge.i78.i.i.i98.i)
  %.not74.us.i.i.i146.i = icmp eq i64 %i.li, -1
  br i1 %.not74.us.i.i.i146.i, label %.split.split.us.i.i.i.i, label %.split90.us.i.i.i.i

.split86.us.i.i.i125.i:                           ; preds = %.split.split.us.i.i.i.i, %.split.split.us.i.us.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i92.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3280
  call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  %i.lj = icmp samesign ugt i64 %.val1.i93.i, 288230376151711743
  br i1 %i.lj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.split86.us.i.i.i125.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !3302
  unreachable

bb.bq:                                            ; preds = %.split86.us.i.i.i125.i
  %.not.i12.i.i126.i = icmp eq i64 %.val1.i93.i, 0
  br i1 %.not.i12.i.i126.i, label %bb.br, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i, !prof !16

bb.br:                                            ; preds = %bb.bq
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !3302
  unreachable

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i: ; preds = %bb.bq
  %i.lk = shl nuw i64 %.val1.i93.i, 6
  %i.ll = urem i64 %i.lk, 5                       ; 2 uses
  %i.lm = icmp eq i64 %i.ll, 0
  %i.ln = sub nuw nsw i64 64, %i.ll
  %i.lo = select i1 %i.lm, i64 59, i64 %i.ln      ; 2 uses
  %i.lp = load i64, ptr %.val.i92.i, align 8, !alias.scope !3301, !noalias !3303, !noundef !15
  %i.lq = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %i.lp, i64 noundef 0, i64 noundef %i.lo) #36, !noalias !3302
  %i.lr = add nsw i64 %i.lo, -5
  call void @ring_core_0_17_16000__bn_gather5(ptr noundef nonnull align 8 %i.iq, i64 noundef %i.hx, ptr noundef nonnull %i.k, i64 noundef %i.lq) #36, !noalias !3304
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i: ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i
  %.sroa.011.0.us.us.us.i.i.i127.i = phi i64 [ %.val.i.us.us.us.i.i.i130.i, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ]
  %.sroa.0.0.us.us.us.i.i.i128.i = phi i64 [ %i.md, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ %i.lr, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.us.us.us.i.i.i129.i = phi i64 [ %i.me, %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i ], [ 0, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.i.i.i.i ] ; 2 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.val.i92.i, i64 %.sroa.05.0.i.us.us.us.i.i.i129.i
  %.val.i.us.us.us.i.i.i130.i = load i64, ptr %i.ls, align 8, !alias.scope !3301, !noalias !3305, !noundef !15 ; 4 uses
  %i.lt = icmp ugt i64 %.sroa.0.0.us.us.us.i.i.i128.i, 59
  br i1 %i.lt, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %i.lu = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_split_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.011.0.us.us.us.i.i.i127.i, i64 noundef %.sroa.0.0.us.us.us.i.i.i128.i) #36, !noalias !3306 ; 2 uses
  %i.lv = add i64 %.sroa.0.0.us.us.us.i.i.i128.i, -5 ; 3 uses
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lu) #36, !noalias !3307
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

bb.bt:                                            ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage19check_common_with_n.exit.i.i21.i.us.us.us.i.i.i144.i
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lu) #36, !noalias !3307
  br label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i

_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %i.lw = icmp ult i64 %i.lv, 64
  br i1 %i.lw, label %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i: ; preds = %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i
  %.sroa.0.1.us.us.us.i.i.i132.i = phi i64 [ %i.lv, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %.sroa.0.0.us.us.us.i.i.i128.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i ] ; 2 uses
  br i1 %.sroa.0.0.i76.i.i.i99.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i
  %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i = phi i64 [ %i.ly, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i ], [ %.sroa.0.1.us.us.us.i.i.i132.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i ] ; 2 uses
  %i.lx = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i) #36, !noalias !3308
  %i.ly = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.us.i.i143.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_powerx5(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.lx) #36, !noalias !3309
  %i.lz = icmp ult i64 %i.ly, 64
  br i1 %i.lz, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i: ; preds = %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i
  %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i = phi i64 [ %i.mb, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i ], [ %.sroa.0.1.us.us.us.i.i.i132.i, %.lr.ph.i.split.split.preheader.i.us.us.us.i.i.i131.i ] ; 2 uses
  %i.ma = call noundef i64 @ring_core_0_17_16000__LIMBS_window5_unsplit_window(i64 noundef %.val.i.us.us.us.i.i.i130.i, i64 noundef %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i) #36, !noalias !3308
  %i.mb = add nsw i64 %.sroa.0.2.us.us.us.us.us.us.i.i.i134.i, -5 ; 3 uses
  call void @ring_core_0_17_16000__bn_power5_nohw(ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull align 8 %i.iq, ptr noundef nonnull %i.k, ptr noundef nonnull %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx, i64 noundef %i.ma) #36, !noalias !3309
  %i.mc = icmp ult i64 %i.mb, 64
  br i1 %i.mc, label %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i, label %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i

_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i: ; preds = %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i
  %.lcssa.i.i.us.us.us.i.i.i135.i = phi i64 [ %i.lv, %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es1_0Ba_.exit22.i.us.us.us.i.i.i.i ], [ %i.ly, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.us.i.i142.i ], [ %i.mb, %.lr.ph.i.split.split.i.us.us.us.us.us.us.i.i.i133.i ]
  %i.md = add i64 %.lcssa.i.i.us.us.us.i.i.i135.i, 64
  %i.me = add nuw nsw i64 %.sroa.05.0.i.us.us.us.i.i.i129.i, 1 ; 2 uses
  %i.mf = icmp eq i64 %i.me, %.val1.i93.i
  br i1 %i.mf, label %.lr.ph.i.i.preheader.i.i.i136.i, label %_RNCINvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtBa_3rsa1NNtNtB1i_7keypair1QKj460_Es0_0Ba_.exit.split.us.split.us.split.us.i.i.i.i

.lr.ph.i.i.preheader.i.i.i136.i:                  ; preds = %_RNCINvNtCs5yxAJGbRKSL_4ring4limb18fold_5_bit_windowsQSyNCINvNtNtNtB6_10arithmetic6bigint3exp24elem_exp_consttime_innerNtNtB6_3rsa1NNtNtB1U_7keypair1QKj460_Es0_0NCBT_s1_0E0B6_.exit.i.us.us.us.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.s, ptr nonnull readonly align 64 %i.iq, i64 %i.iw, i1 false), !alias.scope !3310, !noalias !3311
  call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  store i64 1, ptr %i.ab, align 8, !alias.scope !3313, !noalias !3314
  %.idx.i.i.i.i137.i = add nsw i64 %i.iw, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.hi, i8 0, i64 %.idx.i.i.i.i137.i, i1 false), !alias.scope !3315, !noalias !3316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3317
  store ptr %i.s, ptr %i.f, align 8, !noalias !3317
  %i.mg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.hx, ptr %i.mg, align 8, !noalias !3317
  %i.mh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.ab, ptr %i.mh, align 8, !noalias !3317
  %i.mi = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.hx, ptr %i.mi, align 8, !noalias !3317
  %i.mj = icmp ugt i64 %i.hw, 15
  br i1 %i.mj, label %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i, label %.thread.i.i.i138.i

.thread.i.i.i138.i:                               ; preds = %.lr.ph.i.i.preheader.i.i.i136.i
  call void @ring_core_0_17_16000__bn_mul_mont_sse2(ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %i.s, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.ik, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i64 noundef range(i64 0, 1152921504606846976) %i.hx) #36, !noalias !3318, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3317
  br label %bb.bv

_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i: ; preds = %.lr.ph.i.i.preheader.i.i.i136.i
  %i.mk = load i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES, align 4, !noalias !3319, !noundef !15 ; 2 uses
  %i.ml = icmp ne i32 %i.mk, 0
  call void @llvm.assume(i1 %i.ml), !noalias !3320
  %i.mm = and i32 %i.mk, 1536
  %brmerge.i.not.i.i.i140.i = icmp eq i32 %i.mm, 1536
  call fastcc void @_RINvNtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic5limbs6x86_644mont12mul_mont5_4xTINtNtNtBa_8polyfill15aliasing_slices5InOutQSyERB1T_EEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ik, i64 noundef %i.jg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val66.i, i1 noundef zeroext %brmerge.i.not.i.i.i140.i) #40, !noalias !3321
  %.pre.i.i.i141.i = load i64, ptr %i.g, align 8, !range !22, !noalias !3317
  %i.mn = trunc nuw i64 %.pre.i.i.i141.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3317
  br i1 %i.mn, label %bb.bu, label %bb.bv, !prof !16

bb.bu:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !range !23, !noalias !3317, !noundef !15
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorQSyEB6_(i64 noundef %i.mp) #39
  unreachable

.split88.us.i.i.i147.i:                           ; preds = %bb.bo, %bb.bn
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #41, !noalias !3281
  unreachable

.split90.us.i.i.i.i:                              ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.i.i145.i, %_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storage12check_common.exit.i.i.us.i.us.i.i148.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3280
  br label %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i

_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i: ; preds = %.split90.us.i.i.i.i, %bb.bm, %bb.bl, %bb.bi, %bb.bf, %_RNvMNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127storageINtB2_14AlignedStorageKj460_E18aligned_chunks_mutB8_.exit.i.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3280
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38

bb.bv:                                            ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic10montgomery14limbs_mul_montTINtNtNtB6_8polyfill15aliasing_slices5InOutQSyERB1L_EEB6_.exit.i.i.i139.i, %.thread.i.i.i138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3280
  %i.mq = load i64, ptr %i.de, align 8, !alias.scope !3322, !noalias !3222, !noundef !15
  %.not.i.i150.i = icmp eq i64 %i.mq, %i.da
  br i1 %.not.i.i150.i, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i, label %bb.bw, !prof !19

bb.bw:                                            ; preds = %bb.bv
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint34unwrap_impossible_limb_slice_errorINtNtNtNtB2_7modulus4mont4base4MontNtNtNtB6_3rsa7keypair1PEEB6_(i64 noundef 0) #39
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i: ; preds = %bb.bv
  call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %.not.i.i.i155.i = icmp eq i64 %i.da, %i.hx
  br i1 %.not.i.i.i155.i, label %bb.by, label %bb.bx, !prof !3246

bb.bx:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #41, !noalias !3325
  unreachable

bb.by:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.s, i64 %i.dz, i1 false), !alias.scope !3326, !noalias !3222
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.dn, i64 noundef range(i64 0, 1152921504606846976) %i.da) #36, !noalias !3327
  call void @ring_core_0_17_16000__LIMBS_sub_mod(ptr noundef nonnull align 8 %i.t, ptr noundef nonnull align 8 %i.t, ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull %i.dn, i64 noundef %i.da) #36, !noalias !3328
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val60.i = load ptr, ptr %i.mr, align 8, !alias.scope !3217, !nonnull !15, !noundef !15
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val61.i = load i64, ptr %i.ms, align 8, !alias.scope !3217, !noundef !15
  %i.mt = call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PE3mulNtNtBa_10montgomery1REBc_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val60.i, i64 noundef %.val61.i, ptr nonnull %.val64.i, i64 %i.db), !noalias !3222 ; 2 uses
  %i.mu = extractvalue { ptr, i64 } %i.mt, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mu) ]
  %9 = extractvalue { ptr, i64 } %i.mt, 1         ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  call void @llvm.experimental.noalias.scope.decl(metadata !3330)
  br i1 %.not.i.i.i, label %bb.bz, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i, !prof !16

bb.bz:                                            ; preds = %bb.by
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #41, !noalias !3331
  unreachable

_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i: ; preds = %bb.by
  call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  %i.mv = icmp ult i64 %i.ak, %9
  br i1 %i.mv, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE26write_copy_of_slice_paddedB9_.exit.thread.i.i, label %bb.ca, !prof !16

bb.ca:                                            ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i
  %i.mw = shl nuw nsw i64 %9, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.mu, i64 %i.mw, i1 false), !alias.scope !3333, !noalias !3222
  %i.mx = icmp eq i64 %i.ak, %9
  br i1 %i.mx, label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.ca
  %i.my = sub nuw nsw i64 %i.ak, %9
  %.idx.i.i.i.i = shl nuw nsw i64 %i.my, 3
  %i.mz = getelementptr [8 x i8], ptr %i.ab, i64 %9
  call void @llvm.memset.p0.i64(ptr align 8 %i.mz, i8 0, i64 %.idx.i.i.i.i, i1 false), !alias.scope !3334, !noalias !3335
  br label %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring8polyfill12uninit_sliceINtB5_6UninityE26write_copy_of_slice_paddedB9_.exit.thread.i.i: ; preds = %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #41, !noalias !3331
  unreachable

_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i, %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !3336)
  call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  %i.na = icmp samesign ult i64 %i.ak, %i.da
  br i1 %i.na, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, label %bb.cb, !prof !16

bb.cb:                                            ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.t, ptr nonnull readonly align 8 %i.ik, i64 %i.dz, i1 false), !alias.scope !3338, !noalias !3222
  %i.nb = icmp eq i64 %i.ak, %i.da                ; 2 uses
  br i1 %i.nb, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i162.i

.lr.ph.i.i.preheader.i.i162.i:                    ; preds = %bb.cb
  %i.nc = sub nuw nsw i64 %i.ak, %i.da
  %.idx.i.i.i163.i = shl nuw nsw i64 %i.nc, 3
  %i.nd = getelementptr [8 x i8], ptr %i.t, i64 %i.da
  call void @llvm.memset.p0.i64(ptr align 8 %i.nd, i8 0, i64 %.idx.i.i.i163.i, i1 false), !alias.scope !3339, !noalias !3340
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i162.i, %bb.cb
  %i.ne = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.nf = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 dereferenceable(1024) %i.t, ptr noundef nonnull readonly align 8 %i.ne, i64 noundef range(i64 0, 1152921504606846976) %i.ak) #36, !noalias !3222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3341
  store i64 %i.nf, ptr %i.e, align 8, !noalias !3341
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.e) #36, !noalias !3222, !srcloc !37
  %i.ng = load i64, ptr %i.e, align 8, !noalias !3341, !noundef !15
  %.not.i.i.i164.i = icmp eq i64 %i.ng, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3341
  br i1 %.not.i.i.i164.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, label %bb.cc

bb.cc:                                            ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %i.nh = call fastcc { ptr, i64 } @_RINvMs7_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NE11encode_montNtNtBa_10montgomery2RREBc_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %i.ak, ptr nonnull %i.af, i64 %i.ah), !noalias !3222 ; 2 uses
  %i.ni = extractvalue { ptr, i64 } %i.nh, 0
  %i.nj = extractvalue { ptr, i64 } %i.nh, 1
  %i.nk = call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtBc_3rsa1NNtNtBa_10montgomery1RE3mulNtB1i_9UnencodedEBc_(ptr noalias nofree noundef nonnull align 8 %i.ni, i64 noundef %i.nj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1024) %i.ab, i64 noundef %i.ak, ptr nonnull %i.af, i64 %i.ck), !noalias !3222 ; 2 uses
  %i.nl = extractvalue { ptr, i64 } %i.nk, 0      ; 2 uses
  %i.nm = extractvalue { ptr, i64 } %i.nk, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3342)
  call void @llvm.experimental.noalias.scope.decl(metadata !3343)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1024) %i.ab, ptr nonnull readonly align 8 %i.s, i64 %i.dz, i1 false), !alias.scope !3344, !noalias !3222
  br i1 %i.nb, label %bb.cd, label %.lr.ph.i.i.preheader.i.i169.i

.lr.ph.i.i.preheader.i.i169.i:                    ; preds = %bb.cc
  %i.nn = sub nuw nsw i64 %i.ak, %i.da
  %.idx.i.i.i170.i = shl nuw nsw i64 %i.nn, 3
  %i.no = getelementptr [8 x i8], ptr %i.ab, i64 %i.da
  call void @llvm.memset.p0.i64(ptr align 8 %i.no, i8 0, i64 %.idx.i.i.i170.i, i1 false), !alias.scope !3345, !noalias !3346
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i.i.preheader.i.i169.i, %bb.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nl) ]
  %.not.i.i.i173.i = icmp eq i64 %i.nm, %i.ak
  br i1 %.not.i.i.i173.i, label %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb20limbs_add_assign_mod.exit.i.i, !prof !19

_RNvNtCs5yxAJGbRKSL_4ring4limb20limbs_add_assign_mod.exit.i.i: ; preds = %bb.cd
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_erroruEB6_() #39
  unreachable

_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i: ; preds = %bb.cd
  call void @ring_core_0_17_16000__LIMBS_add_mod(ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull align 8 dereferenceable(1024) %i.ab, ptr noundef nonnull readonly align 8 %i.nl, ptr noundef nonnull readonly align 8 %i.ne, i64 noundef range(i64 0, 1152921504606846976) %i.ak) #36, !noalias !3347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3219
  call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  %i.np = load i64, ptr %i.cj, align 8, !range !38, !alias.scope !3350, !noundef !15
  store ptr %i.af, ptr %i.r, align 8, !alias.scope !3348, !noalias !3219
  %i.nq = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ah, ptr %i.nq, align 8, !alias.scope !3348, !noalias !3219
  %i.nr = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.np, ptr %i.nr, align 8, !alias.scope !3348, !noalias !3219
  %i.ns = call fastcc { ptr, i64 } @_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base10public_keyINtB5_9PublicKeyINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1e_10montgomery2RREE17exponentiate_elem(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1024) %i.ab, i64 noundef %i.ak, ptr noalias nofree noundef align 8 dereferenceable(1024) %i.s), !noalias !3222 ; 2 uses
  %i.nt = extractvalue { ptr, i64 } %i.ns, 0      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nt) ]
  %10 = extractvalue { ptr, i64 } %i.ns, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3351)
  call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  %.not.i.i174.i = icmp eq i64 %10, %i.cv
  br i1 %.not.i.i174.i, label %.lr.ph.i.i.i.i.preheader, label %bb.ce, !prof !19

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i
  %min.iters.check155 = icmp ult i64 %i.cv, 4
  br i1 %min.iters.check155, label %.lr.ph.i.i.i.i.preheader168, label %vector.ph156

vector.ph156:                                     ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec157 = and i64 %i.cv, 252                  ; 3 uses
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph156
  %index159 = phi i64 [ 0, %vector.ph156 ], [ %index.next165, %vector.body158 ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph156 ], [ %i.oa, %vector.body158 ]
  %vec.phi160 = phi <2 x i64> [ zeroinitializer, %vector.ph156 ], [ %i.ob, %vector.body158 ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %index159 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index159 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %wide.load161 = load <2 x i64>, ptr %i.nu, align 8, !alias.scope !3352, !noalias !3354
  %wide.load162 = load <2 x i64>, ptr %i.nw, align 8, !alias.scope !3352, !noalias !3354
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %wide.load163 = load <2 x i64>, ptr %i.nv, align 8, !alias.scope !3355, !noalias !3356
  %wide.load164 = load <2 x i64>, ptr %i.nx, align 8, !alias.scope !3355, !noalias !3356
  %i.ny = xor <2 x i64> %wide.load163, %wide.load161
  %i.nz = xor <2 x i64> %wide.load164, %wide.load162
  %i.oa = or <2 x i64> %i.ny, %vec.phi            ; 2 uses
  %i.ob = or <2 x i64> %i.nz, %vec.phi160         ; 2 uses
  %index.next165 = add nuw i64 %index159, 4       ; 2 uses
  %i.oc = icmp eq i64 %index.next165, %n.vec157
  br i1 %i.oc, label %middle.block166, label %vector.body158, !llvm.loop !3179

middle.block166:                                  ; preds = %vector.body158
  %bin.rdx = or <2 x i64> %i.ob, %i.oa
  %i.od = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cv, %n.vec157
  br i1 %cmp.n, label %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i, label %.lr.ph.i.i.i.i.preheader168

.lr.ph.i.i.i.i.preheader168:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block166
  %.sroa.0.014.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.od, %middle.block166 ]
  %.sroa.02.013.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %n.vec157, %middle.block166 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader168, %.lr.ph.i.i.i.i
  %.sroa.0.014.i.i.i.i = phi i64 [ %i.oi, %.lr.ph.i.i.i.i ], [ %.sroa.0.014.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader168 ]
  %.sroa.02.013.i.i.i.i = phi i64 [ %i.oe, %.lr.ph.i.i.i.i ], [ %.sroa.02.013.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader168 ] ; 3 uses
  %i.oe = add nuw nsw i64 %.sroa.02.013.i.i.i.i, 1 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %.sroa.02.013.i.i.i.i
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.sroa.02.013.i.i.i.i
  %.val11.i.i.i.i = load i64, ptr %i.of, align 8, !alias.scope !3352, !noalias !3354, !noundef !15
  %.val12.i.i.i.i = load i64, ptr %i.og, align 8, !alias.scope !3355, !noalias !3356, !noundef !15
  %i.oh = xor i64 %.val12.i.i.i.i, %.val11.i.i.i.i
  %i.oi = or i64 %i.oh, %.sroa.0.014.i.i.i.i      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.oe, %i.cv
  br i1 %exitcond.not.i.i.i.i, label %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3180

bb.ce:                                            ; preds = %_RNvMsd_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE3addBb_.exit.i
  call fastcc void @_RINvNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint36unwrap_impossible_len_mismatch_errorNtNtNtB6_2bb8boolmask8BoolMaskEB6_() #39
  unreachable

_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block166
  %.lcssa = phi i64 [ %i.od, %middle.block166 ], [ %i.oi, %.lr.ph.i.i.i.i ]
  %i.oj = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %.lcssa) #36, !noalias !3357
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3358
  store i64 %i.oj, ptr %i.d, align 8, !noalias !3358
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.d) #36, !noalias !3359, !srcloc !37
  %i.ok = load i64, ptr %i.d, align 8, !noalias !3358, !noundef !15
  %.not.i176.i = icmp eq i64 %i.ok, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3219
  br i1 %.not.i176.i, label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38, label %bb.cf

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38: ; preds = %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1PEB6_.exit.thread211.i, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.bc, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1QE9num_limbsBd_.exit.i.i.i.i, %bb.ad, %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtNtBd_3rsa7keypair1PE9num_limbsBd_.exit.i.i.i.i, %_RINvNtNtCs5yxAJGbRKSL_4ring3rsa7keypair18elem_exp_consttimeNtB2_1QEB6_.exit.thread215.i, %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtNtBd_3rsa7keypair1QNtNtBb_10montgomery3RRRE5valueBd_.exit.i.i, %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3219
  br label %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread

_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread: ; preds = %_RNvMs2_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtB5_8IntoMontNtNtBd_3rsa1NNtNtBb_10montgomery2RRE7modulusBd_.exit.i, %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ck

bb.cf:                                            ; preds = %_RNvMsf_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE23verify_equals_consttimeBb_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !3219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3219
  call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  call void @llvm.experimental.noalias.scope.decl(metadata !3361)
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3360
  %.idx.i.i.i = shl nuw nsw i64 %i.ak, 3          ; 2 uses
  store i64 %8, ptr %i.c, align 8, !noalias !3363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3363
  store i64 %.idx.i.i.i, ptr %i.b, align 8, !noalias !3363
  %.not.i.i13 = icmp eq i64 %8, %.idx.i.i.i
  br i1 %.not.i.i13, label %.split.preheader.i.i.i.preheader.i.i.i, label %bb.cg, !prof !19

bb.cg:                                            ; preds = %bb.cf
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #42, !noalias !3363
  unreachable

.split.preheader.i.i.i.preheader.i.i.i:           ; preds = %bb.cf
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3363
  %i.om = getelementptr inbounds nuw i8, ptr %7, i64 %8
  call void @llvm.experimental.noalias.scope.decl(metadata !3364)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %.split.preheader.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i:                     ; preds = %bb.cj, %.split.preheader.i.i.i.preheader.i.i.i
  %i.on = phi i64 [ %i.pe, %bb.cj ], [ %8, %.split.preheader.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.oo = phi ptr [ %i.pf, %bb.cj ], [ %i.ol, %.split.preheader.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.op = phi i64 [ %i.pg, %bb.cj ], [ undef, %.split.preheader.i.i.i.preheader.i.i.i ] ; 3 uses
  %i.oq = phi ptr [ %i.os, %bb.cj ], [ %7, %.split.preheader.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.or = phi i1 [ %i.ph, %bb.cj ], [ false, %.split.preheader.i.i.i.preheader.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3365)
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3366)
  call void @llvm.experimental.noalias.scope.decl(metadata !3367)
  %.not.i.i.i.not.i.peel.i.i.i.i.i.i = icmp ne i64 %i.op, 8
  %or.cond49.not.i.i.i = select i1 %i.or, i1 %.not.i.i.i.not.i.peel.i.i.i.i.i.i, i1 false
  br i1 %or.cond49.not.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.split.preheader.i.i.i.i.i.i
  %i.ot = icmp eq ptr %i.ab, %i.oo
  br i1 %i.ot, label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i: ; preds = %bb.ch
  %i.ou = getelementptr inbounds i8, ptr %i.oo, i64 -8 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !alias.scope !3361, !noalias !3368, !noundef !15
  %i.ow = call noundef i64 @llvm.bswap.i64(i64 %i.ov)
  store i64 %i.ow, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !3369, !noalias !3363
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i
  %i.ox = phi ptr [ %i.ou, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i ], [ %i.oo, %.split.preheader.i.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i.i ], [ %i.op, %.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.oy = icmp ult i64 %.us-phi.i.i.i.i.i.i, 8
  call void @llvm.assume(i1 %i.oy)
  %i.oz = icmp eq i64 %i.on, 0
  br i1 %i.oz, label %.noexc.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i.i, i64 %.us-phi.i.i.i.i.i.i
  %i.pb = add nuw nsw i64 %.us-phi.i.i.i.i.i.i, 1
  %.sroa.3.0.i8.pn.i.ph.i.i.i.i.i = load i8, ptr %i.pa, align 1, !alias.scope !3369, !noalias !3363, !noundef !15
  %i.pc = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %.sroa.3.0.i8.pn.i.ph.i.i.i.i.i, 1
  %i.pd = add nsw i64 %i.on, -1
  br label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41, !noalias !3363
  unreachable

_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i: ; preds = %bb.ci, %bb.ch
  %i.pe = phi i64 [ %i.pd, %bb.ci ], [ %i.on, %bb.ch ]
  %i.pf = phi ptr [ %i.ox, %bb.ci ], [ %i.ab, %bb.ch ]
  %i.pg = phi i64 [ %i.pb, %bb.ci ], [ %i.op, %bb.ch ]
  %i.ph = phi i1 [ true, %bb.ci ], [ false, %bb.ch ]
  %i.pi = phi { i1, i8 } [ %i.pc, %bb.ci ], [ { i1 false, i8 undef }, %bb.ch ] ; 2 uses
  %i.pj = extractvalue { i1, i8 } %i.pi, 0
  br i1 %i.pj, label %bb.cj, label %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit

bb.cj:                                            ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i
  %i.pk = extractvalue { i1, i8 } %i.pi, 1
  store i8 %i.pk, ptr %i.oq, align 1, !alias.scope !3370, !noalias !3364
  %i.pl = icmp eq ptr %i.os, %i.om
  br i1 %i.pl, label %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit, label %.split.preheader.i.i.i.i.i.i

_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit: ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i.i, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ck

bb.ck:                                            ; preds = %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit, %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit, %bb.m, %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread, %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvMs5_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE13fill_be_bytesBb_.exit ], [ true, %bb.m ], [ true, %_RNvMNtNtCs5yxAJGbRKSL_4ring3rsa10public_keyNtB2_9PublicKey11modulus_len.exit ], [ true, %_RNvMs2_NtNtCs5yxAJGbRKSL_4ring3rsa7keypairNtB5_7KeyPair20private_exponentiate.exit.thread ], [ true, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit ], [ true, %_RNvMs0_NtNtNtCs5yxAJGbRKSL_4ring3rsa4base14public_modulusINtB5_13PublicModulusINtNtNtNtNtBb_10arithmetic6bigint7modulus4mont8IntoMontNtB9_1NNtNtB1n_10montgomery2RREE8len_bits.exit.thread ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtBb_3rsa1NE20from_be_bytes_paddedBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1024) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp ugt i64 %.8.val, 1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %.8.val, -2                      ; 7 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %_RNvMs6_NtNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint7modulus4montINtNtB5_4base4MontNtNtBd_3rsa1NE9num_limbsBd_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
end_hunk_6
begin_hunk_7_@_RNvMs2_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB5_3Key3new:bb.a
  %exitcond.not.i.i.i = icmp eq i64 %i.cx, 15
  br i1 %exitcond.not.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_256.exit, label %bb.c

_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_256.exit: ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.cy, ptr noundef nonnull align 8 dereferenceable(240) %i.e, i64 240, i1 false), !noalias !3455
  store i64 1, ptr %0, align 8, !alias.scope !3454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cz = load <2 x i64>, ptr %2, align 1, !alias.scope !3463 ; 3 uses
  %i.da = lshr <2 x i64> %i.cz, splat (i64 4)
  %i.db = xor <2 x i64> %i.da, %i.cz
  %i.dc = and <2 x i64> %i.db, splat (i64 67555025218437360)
  %i.dd = mul nuw nsw <2 x i64> %i.dc, splat (i64 17)
  %i.de = xor <2 x i64> %i.dd, %i.cz
  %i.df = shufflevector <2 x i64> %i.de, <2 x i64> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.dg = lshr <2 x i64> %i.df, splat (i64 8)
  %i.dh = xor <2 x i64> %i.dg, %i.df
  %i.di = and <2 x i64> %i.dh, splat (i64 280375465148160)
  %i.dj = mul nuw nsw <2 x i64> %i.di, splat (i64 257)
  %i.dk = xor <2 x i64> %i.dj, %i.df              ; 3 uses
  %i.dl = lshr <2 x i64> %i.dk, splat (i64 16)
  %i.dm = xor <2 x i64> %i.dl, %i.dk
  %i.dn = and <2 x i64> %i.dm, splat (i64 4294901760)
  %i.do = mul nuw nsw <2 x i64> %i.dn, splat (i64 65537)
  %i.dp = xor <2 x i64> %i.do, %i.dk              ; 3 uses
  %i.dq = and <2 x i64> %i.dp, <i64 -4294967296, i64 4294967295>
  %i.dr = shufflevector <2 x i64> %i.dq, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = shl <2 x i64> %i.dp, splat (i64 32)
  %i.dt = lshr <2 x i64> %i.dp, splat (i64 32)
  %i.du = shufflevector <2 x i64> %i.ds, <2 x i64> %i.dt, <2 x i32> <i32 0, i32 3>
  %i.dv = or disjoint <2 x i64> %i.du, %i.dr      ; 2 uses
  store <2 x i64> %i.dv, ptr %i.b, align 16, !noalias !3462
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %storemerge4.i.i.i = phi i64 [ 1, %bb.h ], [ %i.ew, %bb.i ] ; 3 uses
  %i.dw = phi <2 x i64> [ %i.dv, %bb.h ], [ %i.ev, %bb.i ] ; 3 uses
  %i.dx = getelementptr i8, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback4RCON, i64 %storemerge4.i.i.i
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1
  %i.dz = load i8, ptr %i.dy, align 1, !noalias !3464, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3464
  %i.ea = extractelement <2 x i64> %i.dw, i64 0
  %i.eb = extractelement <2 x i64> %i.dw, i64 1
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback9sub_block(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.a, i64 %i.ea, i64 %i.eb), !noalias !3464
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %storemerge4.i.i.i
  %i.ed = load <2 x i64>, ptr %i.a, align 16, !alias.scope !3465, !noalias !3464 ; 2 uses
  %i.ee = and i8 %i.dz, 15
  %i.ef = zext nneg i8 %i.ee to i64
  %i.eg = lshr i8 %i.dz, 4
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = lshr <2 x i64> %i.ed, splat (i64 52)
  %i.ej = lshr <2 x i64> %i.ed, splat (i64 36)
  %i.ek = and <2 x i64> %i.ej, splat (i64 61440)
  %i.el = or disjoint <2 x i64> %i.ek, %i.ei
  %i.em = insertelement <2 x i64> poison, i64 %i.ef, i64 0
  %i.en = insertelement <2 x i64> %i.em, i64 %i.eh, i64 1
  %i.eo = xor <2 x i64> %i.el, %i.en
  %i.ep = xor <2 x i64> %i.eo, %i.dw              ; 4 uses
  %i.eq = shl <2 x i64> %i.ep, splat (i64 16)
  %i.er = shl <2 x i64> %i.ep, splat (i64 32)
  %i.es = shl <2 x i64> %i.ep, splat (i64 48)
  %i.et = xor <2 x i64> %i.er, %i.eq
  %i.eu = xor <2 x i64> %i.et, %i.es
  %i.ev = xor <2 x i64> %i.eu, %i.ep              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3464
  store <2 x i64> %i.ev, ptr %i.ec, align 16, !noalias !3462
  %i.ew = add nuw nsw i64 %storemerge4.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i7 = icmp eq i64 %i.ew, 11
  br i1 %exitcond.not.i.i.i7, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_128.exit, label %bb.i, !llvm.loop !3453

_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_128.exit: ; preds = %bb.i
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.ex, ptr noundef nonnull align 16 dereferenceable(176) %i.b, i64 176, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !3462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_128.exit, %_RNvNtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallback13setup_key_256.exit
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs3_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3RefNtNtBb_3rsa1NE7is_zeroBb_(ptr nofree readonly captures(none) %.0.val, i64 %.8.val) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = icmp eq i64 %.8.val, 0
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp ult i64 %.8.val, 4
  br i1 %min.iters.check, label %.preheader.preheader3, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %.8.val, -4                    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <2 x i64>, ptr %i.c, align 8
  %wide.load2 = load <2 x i64>, ptr %i.d, align 8
  %i.e = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.f = or <2 x i64> %wide.load2, %vec.phi1      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !3466

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.f, %i.e
  %i.h = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.8.val, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit, label %.preheader.preheader3

.preheader.preheader3:                            ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.h, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader3, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.k, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader3 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.j, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader3 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.i, align 8, !noundef !15
  %i.j = or i64 %.val.i, %.sroa.02.0.i            ; 2 uses
  %i.k = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %.8.val
  br i1 %i.l, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit, label %.preheader, !llvm.loop !3467

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit: ; preds = %.preheader, %middle.block, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.h, %middle.block ], [ %i.j, %.preheader ]
  %i.m = tail call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %.sroa.0.0.i) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.a, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !srcloc !37
  %i.n = load i64, ptr %i.a, align 8, !noundef !15
  %i.o = icmp ne i64 %i.n, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.o
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_bEE8grow_oneCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !26, !noundef !15 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3470)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3470
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !3470
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !3470
  %i.f = load i64, ptr %i.a, align 8, !range !22, !noalias !3470, !noundef !15
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !31, !noalias !3470, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !3470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3470
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !3470, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3470
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !3470
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !3470
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs5yxAJGbRKSL_4ring(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 57) %3) unnamed_addr #17 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !28
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #36
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #36
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context4sign(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8try_sign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(288) %1)
  %i.d = load ptr, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3TagNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_.exit, !prof !16

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #41, !noalias !3474
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtCs5yxAJGbRKSL_4ring4hmac3TagNtNtNtBL_5error11unspecified11UnspecifiedE6unwrapBL_.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  store ptr %i.d, ptr %0, align 8, !alias.scope !3474
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context6update(ptr noalias nofree noundef align 8 dereferenceable(288) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs5yxAJGbRKSL_4ring4hmacNtB5_7Context8try_sign(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(288) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %i.e = alloca [128 x i8], align 1               ; 6 uses
  %i.f = alloca [208 x i8], align 8               ; 5 uses
  %.sroa.432 = alloca [64 x i8], align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.432)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3488
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.f), !noalias !3489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3488
  %i.h = load ptr, ptr %i.b, align 8, !noalias !3488, !noundef !15 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !22, !noalias !3488, !noundef !15
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !3489
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !3488, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8
  store ptr null, ptr %0, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3490
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.432.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.432, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.432.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.7.0.copyload, ptr %.sroa.432, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 89
  %i.r = load i8, ptr %i.q, align 1, !range !44, !noundef !15 ; 2 uses
  %i.s = zext nneg i8 %i.r to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3491)
  %i.t = sub nuw nsw i64 128, %i.s
  %i.u = getelementptr i8, ptr %i.e, i64 %i.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, i8 0, i64 %i.t, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(1) %.sroa.432, i64 range(i64 20, 65) %i.s, i1 false), !alias.scope !3492, !noalias !3493
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 127
  store i8 %i.r, ptr %i.v, align 1, !alias.scope !3494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false)
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.c, ptr noalias nofree noundef dereferenceable(128) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = load ptr, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = trunc nuw i64 %i.z to i1
  br i1 %i.ac, label %bb.i, label %bb.j, !prof !16

bb.g:                                             ; preds = %bb.e
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.628.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.624.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %0, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ab, ptr %.sroa.527.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.k:                                             ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.432)
  ret void
}

end_hunk_7
begin_hunk_8_@_RNvMs_NtNtCs5yxAJGbRKSL_4ring4aead9algorithmNtB4_9Algorithm11open_within:bb.a
  ret { ptr, i64 } %i.j
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvMs_NtNtNtCs5yxAJGbRKSL_4ring4aead3aes8fallbackNtB4_5Batch9sub_bytes(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !15 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !15 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !15 ; 2 uses
  %i.o = load i64, ptr %0, align 8, !noundef !15  ; 5 uses
  %i.p = xor i64 %i.l, %i.h                       ; 3 uses
  %i.q = xor i64 %i.n, %i.b                       ; 4 uses
  %i.r = xor i64 %i.h, %i.b                       ; 3 uses
  %i.s = xor i64 %i.l, %i.b                       ; 4 uses
  %i.t = xor i64 %i.f, %i.d                       ; 3 uses
  %i.u = xor i64 %i.o, %i.t                       ; 5 uses
  %i.v = xor i64 %i.u, %i.h                       ; 2 uses
  %i.w = xor i64 %i.q, %i.p                       ; 3 uses
  %i.x = xor i64 %i.u, %i.b                       ; 2 uses
  %i.y = xor i64 %i.u, %i.n                       ; 3 uses
  %i.z = xor i64 %i.y, %i.s                       ; 2 uses
  %i.aa = xor i64 %i.w, %i.j                      ; 2 uses
  %i.ab = xor i64 %i.aa, %i.l                     ; 4 uses
  %i.ac = xor i64 %i.aa, %i.d                     ; 2 uses
  %i.ad = xor i64 %i.ab, %i.o                     ; 2 uses
  %i.ae = xor i64 %i.ab, %i.t                     ; 4 uses
  %i.af = xor i64 %i.ac, %i.r                     ; 5 uses
  %i.ag = xor i64 %i.af, %i.o                     ; 2 uses
  %i.ah = xor i64 %i.ae, %i.af                    ; 2 uses
  %i.ai = xor i64 %i.af, %i.t                     ; 4 uses
  %i.aj = and i64 %i.ab, %i.w                     ; 2 uses
  %i.ak = and i64 %i.ad, %i.z
  %i.al = and i64 %i.v, %i.o
  %i.am = and i64 %i.ai, %i.q                     ; 2 uses
  %i.an = and i64 %i.y, %i.u
  %i.ao = and i64 %i.ag, %i.x
  %i.ap = and i64 %i.af, %i.r                     ; 2 uses
  %i.aq = and i64 %i.ah, %i.p
  %i.ar = xor i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = and i64 %i.ae, %i.s
  %i.at = xor i64 %i.as, %i.ap                    ; 2 uses
  %i.au = xor i64 %i.ac, %i.ak
  %i.av = xor i64 %i.au, %i.aj
  %i.aw = xor i64 %i.av, %i.ar                    ; 2 uses
  %i.ax = xor i64 %i.al, %i.s
  %i.ay = xor i64 %i.ax, %i.ae
  %i.az = xor i64 %i.ay, %i.aj
  %i.ba = xor i64 %i.az, %i.at                    ; 3 uses
  %i.bb = xor i64 %i.ai, %i.an
  %i.bc = xor i64 %i.bb, %i.am
  %i.bd = xor i64 %i.bc, %i.q
  %i.be = xor i64 %i.bd, %i.ar                    ; 3 uses
  %i.bf = xor i64 %i.ai, %i.ao
  %i.bg = xor i64 %i.bf, %i.am
  %i.bh = xor i64 %i.bg, %i.b
  %i.bi = xor i64 %i.bh, %i.at                    ; 4 uses
  %i.bj = xor i64 %i.aw, %i.ba                    ; 2 uses
  %i.bk = and i64 %i.aw, %i.be                    ; 3 uses
  %i.bl = xor i64 %i.bi, %i.bk                    ; 2 uses
  %i.bm = and i64 %i.bl, %i.bj
  %i.bn = xor i64 %i.bm, %i.ba                    ; 5 uses
  %i.bo = xor i64 %i.bi, %i.be
  %i.bp = xor i64 %i.bk, %i.ba
  %i.bq = and i64 %i.bp, %i.bo                    ; 2 uses
  %i.br = xor i64 %i.bq, %i.bi                    ; 4 uses
  %i.bs = xor i64 %i.bq, %i.bk
  %i.bt = and i64 %i.bs, %i.bi                    ; 2 uses
  %i.bu = xor i64 %i.bt, %i.be                    ; 3 uses
  %i.bv = xor i64 %i.bu, %i.br                    ; 3 uses
  %i.bw = xor i64 %i.bt, %i.bl
  %i.bx = and i64 %i.bw, %i.bn
  %i.by = xor i64 %i.bx, %i.bj                    ; 4 uses
  %i.bz = xor i64 %i.by, %i.bv                    ; 3 uses
  %i.ca = xor i64 %i.bn, %i.br                    ; 3 uses
  %i.cb = xor i64 %i.by, %i.bn                    ; 2 uses
  %i.cc = xor i64 %i.bz, %i.ca                    ; 2 uses
  %i.cd = and i64 %i.bu, %i.ab
  %i.ce = and i64 %i.bv, %i.ad
  %i.cf = and i64 %i.br, %i.o                     ; 2 uses
  %i.cg = and i64 %i.cb, %i.ai                    ; 2 uses
  %i.ch = and i64 %i.by, %i.u                     ; 2 uses
  %i.ci = and i64 %i.bn, %i.ag                    ; 2 uses
  %i.cj = and i64 %i.ca, %i.af
  %i.ck = and i64 %i.cc, %i.ah                    ; 2 uses
  %i.cl = and i64 %i.bz, %i.ae
  %i.cm = and i64 %i.bu, %i.w
  %i.cn = and i64 %i.bv, %i.z                     ; 2 uses
  %i.co = and i64 %i.br, %i.v
  %i.cp = and i64 %i.cb, %i.q                     ; 2 uses
  %i.cq = and i64 %i.by, %i.y
  %i.cr = and i64 %i.bn, %i.x
  %i.cs = and i64 %i.ca, %i.r
  %i.ct = and i64 %i.cc, %i.p                     ; 2 uses
  %i.cu = and i64 %i.bz, %i.s
  %i.cv = xor i64 %i.ct, %i.cs                    ; 2 uses
  %i.cw = xor i64 %i.cn, %i.co
  %i.cx = xor i64 %i.cq, %i.ci                    ; 2 uses
  %i.cy = xor i64 %i.cm, %i.cn
  %i.cz = xor i64 %i.cp, %i.cf
  %i.da = xor i64 %i.cf, %i.ci
  %i.db = xor i64 %i.ck, %i.cl
  %i.dc = xor i64 %i.cg, %i.cd                    ; 2 uses
  %i.dd = xor i64 %i.cz, %i.dc                    ; 2 uses
  %i.de = xor i64 %i.cv, %i.ch                    ; 2 uses
  %i.df = xor i64 %i.cg, %i.cj
  %i.dg = xor i64 %i.df, %i.ck                    ; 2 uses
  %i.dh = xor i64 %i.dd, %i.cr
  %i.di = xor i64 %i.db, %i.de                    ; 2 uses
  %i.dj = xor i64 %i.cy, %i.de                    ; 2 uses
  %i.dk = xor i64 %i.dg, %i.ch                    ; 2 uses
  %i.dl = xor i64 %i.dh, %i.di                    ; 2 uses
  %i.dm = xor i64 %i.dj, %i.ce                    ; 2 uses
  %i.dn = xor i64 %i.dj, %i.dg
  %i.do = xor i64 %i.cx, %i.cp
  %i.dp = xor i64 %i.do, %i.di
  %i.dq = xor i64 %i.dp, -1
  %i.dr = xor i64 %i.cx, %i.dd
  %i.ds = xor i64 %i.dr, %i.cv
  %i.dt = xor i64 %i.ds, -1
  %i.du = xor i64 %i.dm, %i.dc                    ; 2 uses
  %i.dv = xor i64 %i.da, %i.dm
  %i.dw = xor i64 %i.cw, %i.dl
  %i.dx = xor i64 %i.dk, %i.du
  %i.dy = xor i64 %i.dx, -1
  %i.dz = xor i64 %i.dk, %i.cu
  %i.ea = xor i64 %i.dz, %i.ct
  %i.eb = xor i64 %i.ea, %i.dl
  %i.ec = xor i64 %i.eb, -1
  store i64 %i.dt, ptr %0, align 8
  store i64 %i.dq, ptr %i.m, align 8
  store i64 %i.dw, ptr %i.k, align 8
  store i64 %i.dv, ptr %i.i, align 8
  store i64 %i.du, ptr %i.g, align 8
  store i64 %i.ec, ptr %i.e, align 8
  store i64 %i.dy, ptr %i.c, align 8
  store i64 %i.dn, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3opsNtB5_12PublicKeyOps10elem_parse(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %1, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.j = load i8, ptr %i.i, align 8, !range !34, !noundef !15
  %i.k = trunc nuw i8 %i.j to i1                  ; 2 uses
  %. = select i1 %i.k, i64 48, i64 32             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !3736, !noundef !15 ; 3 uses
  %i.n = add i64 %., %i.m                         ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !3736
  %.not.i = icmp ugt i64 %i.n, %i.q
  %or.cond.i = select i1 %i.o, i1 true, i1 %.not.i, !prof !28
  br i1 %or.cond.i, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.r = load ptr, ptr %3, align 8, !alias.scope !3736, !nonnull !15, !noundef !15
  store i64 %i.n, ptr %i.l, align 8, !alias.scope !3736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.val = load ptr, ptr %2, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load i8, ptr %i.s, align 8, !range !34, !noundef !15
  %i.t = trunc nuw i8 %.val6 to i1                ; 2 uses
  %..i = select i1 %i.t, i64 6, i64 4             ; 3 uses
  %i.u = xor i1 %i.k, %i.t
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3737
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false), !noalias !3737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3738
  store ptr %i.c, ptr %i.b, align 8, !noalias !3738
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %..i, ptr %i.w, align 8, !noalias !3738
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.x, align 8, !noalias !3738
  %i.y = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %., i64 noundef range(i64 4, 7) %..i), !noalias !3739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3738
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.i: ; preds = %bb.e
  %i.ab = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.c, ptr noundef nonnull readonly align 8 %.val, i64 noundef range(i64 4, 7) %..i) #36, !noalias !3740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3741
  store i64 %i.ab, ptr %i.a, align 8, !noalias !3741
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !3740, !srcloc !37
  %i.ac = load i64, ptr %i.a, align 8, !noalias !3741, !noundef !15
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3741
  br i1 %.not.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i, label %bb.g

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3737
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i, %bb.d
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.g:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  %i.ae = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15
  call void %i.ae(ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.d) #36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMse_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB5_3MutNtNtNtBb_3rsa7keypair1PE24verify_inverse_consttimeBb_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = tail call fastcc { ptr, i64 } @_RINvMs8_NtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint4elemINtB6_3MutNtNtNtBc_3rsa7keypair1PE3mulNtNtBa_10montgomery1REBc_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr nonnull %.0.val, i64 %.8.val) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3746)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb29verify_limbs_equal_1_leak_bit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3746, !noundef !15
  %i.f = xor i64 %i.e, 1
  %i.g = tail call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.f) #36, !noalias !3746
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = icmp eq i64 %i.c, 1
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw nsw i64 %i.c, 2305843009213693951 ; 2 uses
  %i.k = and i64 %i.j, 2305843009213693951        ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.k, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.j, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !alias.scope !3746
  %wide.load2 = load <2 x i64>, ptr %i.m, align 8, !alias.scope !3746
  %i.n = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.o = or <2 x i64> %wide.load2, %vec.phi1      ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !3744

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.q = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %.sroa.04.0.i.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.i.ph = phi i64 [ 0, %bb.c ], [ %i.q, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.04.0.i.i = phi i64 [ %i.t, %scalar.ph ], [ %.sroa.04.0.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.s, %scalar.ph ], [ %.sroa.02.0.i.i.ph, %scalar.ph.preheader ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.04.0.i.i
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !3746, !noundef !15
  %i.s = or i64 %.val.i.i, %.sroa.02.0.i.i        ; 2 uses
  %i.t = add nuw i64 %.sroa.04.0.i.i, 1           ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.k
  br i1 %i.u, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit.i, label %scalar.ph, !llvm.loop !3745

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit.i: ; preds = %scalar.ph, %middle.block, %bb.b
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.b ], [ %i.q, %middle.block ], [ %i.s, %scalar.ph ]
  %i.v = tail call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %.sroa.0.0.i.i) #36, !noalias !3746
  %i.w = and i64 %i.v, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3746
  store i64 %i.w, ptr %i.a, align 8, !noalias !3746
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !3746, !srcloc !37
  %i.x = load i64, ptr %i.a, align 8, !noalias !3746, !noundef !15
  %.not1.i = icmp eq i64 %i.x, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3746
  br label %_RNvNtCs5yxAJGbRKSL_4ring4limb29verify_limbs_equal_1_leak_bit.exit

_RNvNtCs5yxAJGbRKSL_4ring4limb29verify_limbs_equal_1_leak_bit.exit: ; preds = %bb.a, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit.i
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ %.not1.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCNvNtCs5yxAJGbRKSL_4ring4limb14limbs_are_zero0EB1J_.exit.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsg_NtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3opsNtB5_16PrivateScalarOps18scalar_inv_to_mont(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3751)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !3751, !nonnull !15, !align !17, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3752
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !3753
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3752, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !noalias !3752
  call void %i.g(ptr noundef nonnull %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, ptr noundef nonnull %i.b) #36, !noalias !3754, !inline_history !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3752
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15
  call void %i.i(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs5yxAJGbRKSL_4ring24deprecated_constant_time23verify_slices_are_equal(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3775)
  %.not.i.i = icmp eq i64 %3, %1
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %3, 9223372036854775800          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 7 uses
  %i.e = and i64 %3, 7                            ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 7 uses
  %i.g = lshr i64 %3, 3                           ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB6_3ZipINtNtB8_3map3MapINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterAhj8_EENvMs7_NtBc_3numy13from_le_bytesEBX_EINtB6_7ZipImplBX_BX_E4foldyNCNvNtNtCs5yxAJGbRKSL_4ring2bb5bytes15bytes_are_equal0EB3f_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %min.iters.check = icmp samesign ult i64 %3, 32
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.g, 1152921504606846972      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi7 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 1, !alias.scope !3776, !noalias !3777
  %wide.load8 = load <2 x i64>, ptr %i.i, align 1, !alias.scope !3776, !noalias !3777
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
end_hunk_8
begin_hunk_9_@_RNvNtCs5yxAJGbRKSL_4ring8testutil15parse_test_case:bb.a
  %i.ab = icmp eq i64 %i.v, %.val1.i.ph
  br i1 %i.ab, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring.exit.i.i.i, %bb.f
  %.val2.i = load i64, ptr %i.g, align 8, !range !26, !alias.scope !4237, !noundef !15 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i, 0
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtBG_6string6StringB19_bEEECs5yxAJGbRKSL_4ring.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit.i
  %i.ad = mul nuw i64 %.val2.i, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.ph, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !4237
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtBG_6string6StringB19_bEEECs5yxAJGbRKSL_4ring.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtBG_6string6StringB19_bEEECs5yxAJGbRKSL_4ring.exit: ; preds = %bb.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_bEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5yxAJGbRKSL_4ring.exit.i, %bb.e, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.j:                                             ; preds = %bb.c
  br i1 %.sroa.0.0.ph358, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49.outer357.backedge, label %bb.au

bb.k:                                             ; preds = %bb.c
  %rhsc.i = load i8, ptr %i.q, align 1, !alias.scope !4242
  switch i8 %rhsc.i, label %bb.l [
    i8 35, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49
    i8 91, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 3)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

bb.m:                                             ; preds = %bb.k
  br i1 %.sroa.0.0.ph358, label %bb.ai, label %.invoke, !prof !19

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 0, ptr %.sroa.06.sroa.4.0..sroa_idx, align 8
  store i64 %i.r, ptr %.sroa.06.sroa.5.0..sroa_idx, align 8
  store i8 1, ptr %.sroa.06.sroa.6.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.06.sroa.7.0..sroa_idx, align 1
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4243
  %i.ae = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCs3oUPovFnLWP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.f) #40
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.n
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %.not.i39 = icmp eq ptr %i.af, null
  br i1 %.not.i39, label %.loopexit98.sink.split, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %.noexc
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4244
  %i.ag = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, 9) 8) #36, !noalias !4244 ; 7 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yxAJGbRKSL_4ring.exit.i

bb.o:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #42
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

.noexc41:                                         ; preds = %bb.o
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yxAJGbRKSL_4ring.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %i.ai = extractvalue { ptr, i64 } %i.ae, 1
  store ptr %i.af, ptr %i.ag, align 8, !noalias !4243, !captures !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !noalias !4243
  store i64 4, ptr %i.b, align 8, !noalias !4243
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4243
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !4243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i64 136, i1 false), !noalias !4245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4247)
  %i.ak = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCs3oUPovFnLWP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #40
          to label %.noexc.i unwind label %.loopexit.split-lp.thread.i, !noalias !4243 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yxAJGbRKSL_4ring.exit.i
  %i.al = extractvalue { ptr, i64 } %i.ak, 0      ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not4.i.i.i, label %.loopexit.thread, label %.lr.ph.i.i.i40

.loopexit.thread:                                 ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4243
  br label %.loopexit98.sink.split

.lr.ph.i.i.i40:                                   ; preds = %.noexc.i, %.noexc12.i
  %i.am = phi ptr [ %i.at, %.noexc12.i ], [ %i.ag, %.noexc.i ]
  %i.an = phi i64 [ %i.au, %.noexc12.i ], [ 4, %.noexc.i ] ; 3 uses
  %i.ao = phi i64 [ %i.ax, %.noexc12.i ], [ 1, %.noexc.i ] ; 4 uses
  %.pn.i.i.i = phi { ptr, i64 } [ %i.ay, %.noexc12.i ], [ %i.ak, %.noexc.i ]
  %i.ap = phi ptr [ %i.az, %.noexc12.i ], [ %i.al, %.noexc.i ]
  %i.aq = extractvalue { ptr, i64 } %.pn.i.i.i, 1
  %i.ar = icmp samesign ult i64 %i.ao, 576460752303423488
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp eq i64 %i.ao, %i.an
  br i1 %i.as, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5yxAJGbRKSL_4ring.exit.i.i.i, label %bb.p

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5yxAJGbRKSL_4ring.exit.i.i.i: ; preds = %.lr.ph.i.i.i40
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.an, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc11.i unwind label %.loopexit.split-lp.i, !noalias !4243

.noexc11.i:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5yxAJGbRKSL_4ring.exit.i.i.i
  %.pre5.i.i.i = load i64, ptr %i.b, align 8, !range !26, !alias.scope !4248, !noalias !4243
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4248, !noalias !4243
  br label %bb.p

bb.p:                                             ; preds = %.noexc11.i, %.lr.ph.i.i.i40
  %i.at = phi ptr [ %i.am, %.lr.ph.i.i.i40 ], [ %.pre.i, %.noexc11.i ] ; 2 uses
  %i.au = phi i64 [ %i.an, %.lr.ph.i.i.i40 ], [ %.pre5.i.i.i, %.noexc11.i ]
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ao ; 2 uses
  store ptr %i.ap, ptr %i.av, align 8, !noalias !4249, !captures !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.aq, ptr %i.aw, align 8, !noalias !4249
  %i.ax = add nuw nsw i64 %i.ao, 1                ; 3 uses
  store i64 %i.ax, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !4248, !noalias !4243
  %i.ay = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCs3oUPovFnLWP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #40
          to label %.noexc12.i unwind label %.loopexit.split-lp.i, !noalias !4243 ; 2 uses

.noexc12.i:                                       ; preds = %bb.p
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i10.i, label %.loopexit, label %.lr.ph.i.i.i40

.loopexit.split-lp.thread.i:                      ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5yxAJGbRKSL_4ring.exit.i
  %lpad.loopexit.split-lp13.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp.i:                             ; preds = %bb.p, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecReE7reserveCs5yxAJGbRKSL_4ring.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.pre.i = load i64, ptr %i.b, align 8, !noalias !4243 ; 2 uses
  %i.ba = icmp eq i64 %.val.pre.i, 0
  br i1 %i.ba, label %.body, label %.loopexit.split-lp.i._crit_edge

.loopexit.split-lp.i._crit_edge:                  ; preds = %.loopexit.split-lp.i
  %.val9.i.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4243
  %i.bb = shl nuw i64 %.val.pre.i, 4
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i._crit_edge, %.loopexit.split-lp.thread.i
  %.val9.i = phi ptr [ %i.ag, %.loopexit.split-lp.thread.i ], [ %.val9.i.pre, %.loopexit.split-lp.i._crit_edge ]
  %lpad.phi22.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp13.i, %.loopexit.split-lp.thread.i ], [ %lpad.loopexit.i, %.loopexit.split-lp.i._crit_edge ]
  %.val21.i = phi i64 [ 64, %.loopexit.split-lp.thread.i ], [ %i.bb, %.loopexit.split-lp.i._crit_edge ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %.val21.i, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !4243
  br label %.body

.loopexit:                                        ; preds = %.noexc12.i
  %.sroa.0.0.copyload.pre = load i64, ptr %i.b, align 8, !noalias !4250 ; 8 uses
  %.sroa.6.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4250 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bc = icmp eq i64 %i.ax, 2
  br i1 %i.bc, label %bb.r, label %.loopexit98, !prof !4251

bb.r:                                             ; preds = %.loopexit
  %i.bd = load ptr, ptr %.sroa.6.0.copyload.pre, align 8, !nonnull !15, !noundef !15
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.pre, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !noundef !15
  %i.bg = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bd, i64 noundef %i.bf) ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1      ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.pre, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !15, !noundef !15
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.pre, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !15
  %i.bn = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm) ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 8 uses
  store i64 %i.bp, ptr %i.e, align 8
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.v, label %bb.w, !prof !16

.loopexit98.sink.split:                           ; preds = %.noexc, %.loopexit.thread
  %.sroa.0.06980.ph = phi i64 [ 4, %.loopexit.thread ], [ 0, %.noexc ]
  %.sroa.6.076.ph = phi ptr [ %i.ag, %.loopexit.thread ], [ inttoptr (i64 8 to ptr), %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit98

.loopexit98:                                      ; preds = %.loopexit, %.loopexit98.sink.split
  %.sroa.0.06980 = phi i64 [ %.sroa.0.06980.ph, %.loopexit98.sink.split ], [ %.sroa.0.0.copyload.pre, %.loopexit ]
  %.sroa.6.076 = phi ptr [ %.sroa.6.076.ph, %.loopexit98.sink.split ], [ %.sroa.6.0.copyload.pre, %.loopexit ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @195, ptr noundef nonnull inttoptr (i64 71 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #42
          to label %bb.u unwind label %bb.t

.body47:                                          ; preds = %bb.ab, %bb.aa, %bb.t, %bb.af
  %.sroa.0.06977 = phi i64 [ %.sroa.0.0.copyload.pre, %bb.af ], [ %.sroa.0.06979, %bb.t ], [ %.sroa.0.0.copyload.pre, %bb.aa ], [ %.sroa.0.0.copyload.pre, %bb.ab ] ; 2 uses
  %.sroa.6.073 = phi ptr [ %.sroa.6.0.copyload.pre, %bb.af ], [ %.sroa.6.075, %bb.t ], [ %.sroa.6.0.copyload.pre, %bb.aa ], [ %.sroa.6.0.copyload.pre, %bb.ab ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.af ], [ %i.bs, %bb.t ], [ %i.bz, %bb.aa ], [ %i.bz, %bb.ab ] ; 2 uses
  %i.br = icmp eq i64 %.sroa.0.06977, 0
  br i1 %i.br, label %.body, label %bb.s

bb.s:                                             ; preds = %.body47
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.073) ]
  %4 = shl nuw i64 %.sroa.0.06977, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.073, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %.body

bb.t:                                             ; preds = %bb.y, %bb.v, %.loopexit98
  %.sroa.0.06979 = phi i64 [ %.sroa.0.0.copyload.pre, %bb.y ], [ %.sroa.0.0.copyload.pre, %bb.v ], [ %.sroa.0.06980, %.loopexit98 ]
  %.sroa.6.075 = phi ptr [ %.sroa.6.0.copyload.pre, %bb.y ], [ %.sroa.6.0.copyload.pre, %bb.v ], [ %.sroa.6.076, %.loopexit98 ]
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body47

bb.u:                                             ; preds = %bb.ac, %bb.y, %bb.v, %.loopexit98
  unreachable

bb.v:                                             ; preds = %bb.r
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @29, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #42
          to label %bb.u unwind label %bb.t

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not.i42 = icmp slt i64 %i.bi, 0
  br i1 %.not.i42, label %bb.y, label %bb.x, !prof !28

bb.x:                                             ; preds = %bb.w
  %i.bt = icmp eq i64 %i.bi, 0                    ; 2 uses
  br i1 %i.bt, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yxAJGbRKSL_4ring.exit.thread86, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.x
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4252
  %i.bu = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bi, i64 noundef range(i64 1, 9) 1) #36, !noalias !4252 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.w, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.w ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.bi) #42
          to label %bb.u unwind label %bb.t

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yxAJGbRKSL_4ring.exit.thread86: ; preds = %bb.x, %bb.z
  %i.bw = phi ptr [ %i.bu, %bb.z ], [ inttoptr (i64 1 to ptr), %bb.x ] ; 2 uses
  %.not.i43 = icmp slt i64 %i.bp, 0
  br i1 %.not.i43, label %bb.ac, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i44, !prof !28

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i44: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yxAJGbRKSL_4ring.exit.thread86
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4253
  %i.bx = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bp, i64 noundef range(i64 1, 9) 1) #36, !noalias !4253 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ac, label %bb.ad

bb.z:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %i.bh, i64 %i.bi, i1 false)
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yxAJGbRKSL_4ring.exit.thread86

bb.aa:                                            ; preds = %bb.ac
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bt, label %.body47, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bw, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %.body47

bb.ac:                                            ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yxAJGbRKSL_4ring.exit.thread86, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i44
  %.sroa.466.0.ph = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i44 ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yxAJGbRKSL_4ring.exit.thread86 ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.466.0.ph, i64 %i.bp) #42
          to label %bb.u unwind label %bb.aa

bb.ad:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr align 1 %i.bo, i64 %i.bp, i1 false)
  store i64 %i.bi, ptr %i.d, align 8
  store ptr %i.bw, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.bi, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.bp, ptr %i.l, align 8
  store ptr %i.bx, ptr %.sroa.417.0..sroa_idx, align 8
  store i64 %i.bp, ptr %.sroa.518.0..sroa_idx, align 8
  store i8 0, ptr %i.m, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  %i.ca = load i64, ptr %i.i, align 8, !alias.scope !4254, !noundef !15 ; 3 uses
  %i.cb = load i64, ptr %i.g, align 8, !range !26, !alias.scope !4254, !noundef !15
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBN_bEE8grow_oneCs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.ag unwind label %bb.af, !noalias !4255

bb.af:                                            ; preds = %bb.ae
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCs1xwejQucwHj_5alloc6string6StringBC_bEECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.d) #43, !noalias !4254
  br label %.body47

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.ce = load ptr, ptr %i.h, align 8, !alias.scope !4254, !nonnull !15, !noundef !15 ; 2 uses
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !4254
  %i.cg = add i64 %i.ca, 1                        ; 2 uses
  store i64 %i.cg, ptr %i.i, align 8, !alias.scope !4254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ch = icmp eq i64 %.sroa.0.0.copyload.pre, 0
  br i1 %i.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49.outer.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = shl nuw i64 %.sroa.0.0.copyload.pre, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.pre, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49.outer.backedge

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49.outer.backedge: ; preds = %bb.ah, %bb.ag
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecReEECs5yxAJGbRKSL_4ring.exit49.outer

bb.ai:                                            ; preds = %bb.m
  %i.cj = getelementptr i8, ptr %i.q, i64 %i.r
  %i.ck = getelementptr i8, ptr %i.cj, i64 -1
  %rhsc.i52 = load i8, ptr %i.ck, align 1, !alias.scope !4256
  %i.cl = icmp eq i8 %rhsc.i52, 93
  br i1 %i.cl, label %bb.aj, label %.invoke, !prof !19

.invoke:                                          ; preds = %bb.ai, %bb.m
  %i.cm = phi ptr [ @197, %bb.m ], [ @199, %bb.ai ]
  %i.cn = phi i64 [ 31, %bb.m ], [ 37, %bb.ai ]
  %i.co = phi ptr [ @198, %bb.m ], [ @200, %bb.ai ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #42
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ai
  store i64 0, ptr %i.n, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4257)
  %i.cp = load i64, ptr %1, align 8, !range !26, !alias.scope !4258, !noundef !15
  %i.cq = icmp ugt i64 %i.r, %i.cp
  br i1 %i.cq, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.thread.i, label %bb.ak, !prof !16

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.thread.i: ; preds = %bb.aj
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5yxAJGbRKSL_4ring(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef %i.r, i64 noundef 1, i64 noundef 1)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp

.noexc55:                                         ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5yxAJGbRKSL_4ring.exit.thread.i
  %i.cr = load i64, ptr %i.n, align 8, !alias.scope !4257, !noundef !15 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  tail call void @llvm.assume(i1 %i.cs)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.noexc55
  %i.ct = phi i64 [ %i.cr, %.noexc55 ], [ 0, %bb.aj ] ; 2 uses
  %i.cu = load ptr, ptr %i.o, align 8, !alias.scope !4257, !nonnull !15, !noundef !15 ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull readonly align 1 %i.q, i64 %i.r, i1 false), !noalias !4257
  %i.cw = add i64 %i.ct, %i.r                     ; 9 uses
  store i64 %i.cw, ptr %i.n, align 8, !alias.scope !4257
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4259)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw ; 4 uses
  %i.cy = icmp samesign eq i64 %i.cw, 0
  br i1 %i.cy, label %.loopexit201, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -1
  %i.da = load i8, ptr %i.cz, align 1, !noalias !4260, !noundef !15
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %.thread.i, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i: ; preds = %bb.al
  %i.dc = icmp ne i64 %i.cw, 1
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds i8, ptr %i.cx, i64 -2
  %i.de = load i8, ptr %i.dd, align 1, !noalias !4260, !noundef !15 ; 3 uses
  %i.df = and i8 %i.de, 31
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = icmp slt i8 %i.de, -64
  br i1 %i.dh, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i, label %bb.an

.thread.i:                                        ; preds = %bb.al
  %i.di = icmp sgt i64 %i.cw, -1
  tail call void @llvm.assume(i1 %i.di)
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String3pop.exit

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit17.i.i
  %i.dj = icmp ne i64 %i.cw, 2
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds i8, ptr %i.cx, i64 -3
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !4260, !noundef !15 ; 3 uses
  %i.dm = and i8 %i.dl, 15
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = icmp slt i8 %i.dl, -64
  br i1 %i.do, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i, label %bb.am

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i
  %i.dp = icmp ne i64 %i.cw, 3
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !4260, !noundef !15
  %i.ds = and i8 %i.dr, 7
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 6
  %i.dv = and i8 %i.dl, 63
  %i.dw = zext nneg i8 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw
  br label %bb.am

bb.am:                                            ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit21.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5yxAJGbRKSL_4ring.exit19.i.i
end_hunk_9
begin_hunk_10_@_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b10public_key24parse_uncompressed_point:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key19public_from_private(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull writeonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [48 x i8], align 16               ; 10 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.l = load i8, ptr %i.k, align 8, !range !34, !noundef !15 ; 2 uses
  store ptr %i.j, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.n, align 8
  %i.o = trunc nuw i8 %i.l to i1                  ; 3 uses
  %. = select i1 %i.o, i64 48, i64 32             ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4787)
  %i.q = load ptr, ptr %3, align 8, !alias.scope !4787, !nonnull !15, !align !17, !noundef !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noalias !4787, !noundef !15 ; 3 uses
  %i.t = icmp ult i64 %i.s, 49
  br i1 %i.t, label %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.s, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #41, !noalias !4787
  unreachable

_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit: ; preds = %bb.a
  %..i.i = select i1 %i.o, i64 6, i64 4           ; 3 uses
  %.not.i.i = icmp eq i64 %i.s, %.
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4788
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false), !noalias !4788
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4790
  store ptr %i.e, ptr %i.c, align 8, !noalias !4790
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %..i.i, ptr %i.v, align 8, !noalias !4790
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.w, align 8, !noalias !4790
  %i.x = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %., i64 noundef range(i64 4, 7) %..i.i), !noalias !4791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4790
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i: ; preds = %bb.c
  %i.aa = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.e, ptr noundef nonnull readonly align 8 %i.p, i64 noundef range(i64 4, 7) %..i.i) #36, !noalias !4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4793
  store i64 %i.aa, ptr %i.b, align 8, !noalias !4793
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.b) #36, !noalias !4792, !srcloc !37
  %i.ab = load i64, ptr %i.b, align 8, !noalias !4793, !noundef !15
  %.not.i.i.i.i = icmp eq i64 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4793
  br i1 %.not.i.i.i.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, label %vector.body.1

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %wide.load = load <2 x i64>, ptr %i.e, align 16, !alias.scope !4789, !noalias !4788
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.ac, align 16, !alias.scope !4789, !noalias !4788
  %i.ad = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ae, align 16
  %i.af = or <2 x i64> %wide.load.2, %i.ad
  %.lcssa = select i1 %i.o, <2 x i64> %i.af, <2 x i64> %i.ad
  %i.ag = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.ah = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.ag) #36, !noalias !4792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4794
  store i64 %i.ah, ptr %i.d, align 8, !noalias !4794
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.d) #36, !noalias !4792, !srcloc !37
  %i.ai = load i64, ptr %i.d, align 8, !noalias !4794, !noundef !15
  %.not.i.not.i.i = icmp eq i64 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4794
  br i1 %.not.i.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit, label %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i: ; preds = %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4788
  br label %bb.d

bb.d:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb43parse_big_endian_in_range_and_pad_consttime.exit.thread.i.i, %_RNvMs_NtNtCs5yxAJGbRKSL_4ring2ec4keysNtB4_4Seed15bytes_less_safe.exit
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #41, !noalias !4795
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit: ; preds = %vector.body.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 16 dereferenceable(48) %i.e, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !15, !noundef !15
  call void %i.ak(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  store i8 4, ptr %1, align 1
  %i.al = add nsw i64 %2, -1                      ; 2 uses
  %.not.i = icmp samesign ugt i64 %., %i.al
  br i1 %.not.i, label %bb.f, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh12split_at_mutCs5yxAJGbRKSL_4ring.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @70, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #41, !noalias !4796
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSh12split_at_mutCs5yxAJGbRKSL_4ring.exit: ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.
  %i.ao = sub nuw nsw i64 %i.al, %.
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.ap, align 8
  %i.aq = call fastcc noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key31big_endian_affine_from_jacobian(ptr nonnull %i.i, ptr %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull %i.am, i64 noundef %., ptr noalias nofree noundef nonnull %i.an, i64 %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret i1 %i.aq

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b3ops4elem4ElemNtBM_1NNtNtNtBS_10arithmetic10montgomery9UnencodedENtNtNtBS_5error11unspecified11UnspecifiedE6unwrapBS_.exit
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key20affine_from_jacobian(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i8, ptr %i.t, align 8, !range !34, !noundef !15
  %i.u = trunc nuw i8 %.val to i1                 ; 4 uses
  %..i = select i1 %i.u, i64 6, i64 4             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4823
  %.idx.i = shl nuw nsw i64 %..i, 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  %i.w = shl nuw nsw i64 %..i, 3                  ; 4 uses
  %i.x = select i1 %i.u, i64 0, i64 16            ; 3 uses
  %i.y = getelementptr i8, ptr %i.f, i64 %i.w
  call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.x, i1 false), !noalias !4823
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.v, i64 %i.w, i1 false), !alias.scope !4824, !noalias !4825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !4826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4823
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.z, align 8, !nonnull !15, !align !17, !noundef !15 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4827)
  %i.aa = getelementptr i8, ptr %.val1, i64 256
  %.val.i = load i8, ptr %i.aa, align 8, !range !34, !noalias !4827, !noundef !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4828)
  %i.ab = trunc nuw i8 %.val.i to i1
  %wide.load = load <2 x i64>, ptr %i.s, align 16, !alias.scope !4829
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.ac, align 16, !alias.scope !4829
  %i.ad = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ae, align 16
  %i.af = or <2 x i64> %wide.load.2, %i.ad
  %.lcssa = select i1 %i.ab, <2 x i64> %i.af, <2 x i64> %i.ad
  %i.ag = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.ah = tail call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.ag) #36, !noalias !4829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4829
  store i64 %i.ah, ptr %i.e, align 8, !noalias !4829
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.e) #36, !noalias !4829, !srcloc !37
  %i.ai = load i64, ptr %i.e, align 8, !noalias !4829, !noundef !15
  %.not = icmp eq i64 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4829
  br i1 %.not, label %bb.b, label %bb.a, !prof !19

bb.a:                                             ; preds = %vector.ph
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 55, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #41
  unreachable

bb.b:                                             ; preds = %vector.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %..i4 = select i1 %i.u, i64 48, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4830
  %..i4.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.u, i64 48, i64 32
  %..i4.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.d, i64 %..i4.sroa.sel.v.sroa.sel.v.sroa.sel.v
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %..i4.sroa.sel.v.sroa.sel.v.sroa.sel, i8 0, i64 %i.x, i1 false), !noalias !4830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(144) %2, i64 %..i4, i1 false), !alias.scope !4831, !noalias !4832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !4833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4834
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %..i
  %i.ak = getelementptr i8, ptr %i.c, i64 %i.w
  call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.x, i1 false), !noalias !4834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.aj, i64 %i.w, i1 false), !alias.scope !4835, !noalias !4836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !4837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void %.8.val(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.al = load ptr, ptr %.val1, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  call void %i.al(ptr noundef nonnull %i.j, ptr noundef nonnull %i.r, ptr noundef nonnull %i.p) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  call void %i.an(ptr noundef nonnull %i.i, ptr noundef nonnull %i.p) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ao = load ptr, ptr %.val1, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i8 0, i64 48, i1 false)
  call void %i.ao(ptr noundef nonnull %i.h, ptr noundef nonnull %i.s, ptr noundef nonnull %i.m) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ap = load ptr, ptr %.val1, align 8, !nonnull !15, !noundef !15
  call void %i.ap(ptr noundef nonnull %i.g, ptr noundef nonnull %i.q, ptr noundef nonnull %i.l) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4838
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.aq, i64 48, i1 false), !noalias !4838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4838
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !noalias !4838
  %i.as = call fastcc noundef zeroext i1 @_RNvNtNtCs5yxAJGbRKSL_4ring2ec7suite_b42verify_affine_point_is_on_the_curve_scaled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4838
  br i1 %i.as, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.au, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29generate_private_scalar_bytes(ptr %.0.val, ptr noundef nonnull %0, ptr nofree readonly captures(none) %.40.val, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 16               ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge
  %.sroa.01.01 = phi i32 [ 0, %bb.a ], [ %3, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge ]
  %i.k = call noundef zeroext i1 %.40.val(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2) #40
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %vector.body.1, %bb.b, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge
  %.sroa.0.0 = phi i1 [ true, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge ], [ true, %bb.b ], [ false, %vector.body.1 ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %3 = add nuw nsw i32 %.sroa.01.01, 1            ; 2 uses
  %i.l = load i8, ptr %i.f, align 8, !range !34, !noalias !4857, !noundef !15
  %i.m = trunc nuw i8 %i.l to i1                  ; 3 uses
  %..i.i.i = select i1 %i.m, i64 6, i64 4         ; 3 uses
  %.sroa.07.0.i.i.i = select i1 %i.m, i64 48, i64 32
  %.not.i.i.i = icmp eq i64 %2, %.sroa.07.0.i.i.i
  br i1 %.not.i.i.i, label %bb.e, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4858
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !noalias !4858
  call void @llvm.experimental.noalias.scope.decl(metadata !4859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4860
  store ptr %i.d, ptr %i.b, align 8, !noalias !4860
  store i64 %..i.i.i, ptr %i.g, align 8, !noalias !4860
  store i64 0, ptr %i.h, align 8, !noalias !4860
  %i.n = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 4, 7) %..i.i.i), !noalias !4861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4860
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i: ; preds = %bb.e
  %i.q = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.d, ptr noundef nonnull readonly align 8 %i.e, i64 noundef range(i64 4, 7) %..i.i.i) #36, !noalias !4862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4863
  store i64 %i.q, ptr %i.a, align 8, !noalias !4863
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !noalias !4862, !srcloc !37
  %i.r = load i64, ptr %i.a, align 8, !noalias !4863, !noundef !15
  %.not.i.i.i.i.i = icmp eq i64 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4863
  br i1 %.not.i.i.i.i.i, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i, label %vector.body.1

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i
  %wide.load = load <2 x i64>, ptr %i.d, align 16, !alias.scope !4859, !noalias !4858
  %wide.load.1 = load <2 x i64>, ptr %i.i, align 16, !alias.scope !4859, !noalias !4858
  %i.s = or <2 x i64> %wide.load.1, %wide.load    ; 2 uses
  %wide.load.2 = load <2 x i64>, ptr %i.j, align 16
  %i.t = or <2 x i64> %wide.load.2, %i.s
  %.lcssa = select i1 %i.m, <2 x i64> %i.t, <2 x i64> %i.s
  %i.u = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.v = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.u) #36, !noalias !4862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4864
  store i64 %i.v, ptr %i.c, align 8, !noalias !4864
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.c) #36, !noalias !4862, !srcloc !37
  %i.w = load i64, ptr %i.c, align 8, !noalias !4864, !noundef !15
  %.not.i.not.i.i.i.not = icmp eq i64 %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4858
  br i1 %.not.i.not.i.i.i.not, label %bb.c, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge: ; preds = %vector.body.1, %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i, %bb.d
  %exitcond.not = icmp eq i32 %3, 100
  br i1 %exitcond.not, label %bb.c, label %bb.b

_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key28scalar_from_big_endian_bytes.exit.sink.split.i: ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4858
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key29check_scalar_big_endian_bytes.exit.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key31big_endian_affine_from_jacobian(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull writeonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef writeonly captures(address) %3, i64 %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [120 x i8], align 8               ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.4 = alloca [96 x i8], align 8            ; 3 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [104 x i8], align 8               ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b11private_key20affine_from_jacobian(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.m, ptr %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %5)
  %i.p = load i64, ptr %i.m, align 8, !range !22, !noundef !15
  %i.q = trunc nuw i64 %i.p to i1                 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.j, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i8 0, i64 48, i1 false)
  call void %i.w(ptr noundef nonnull %i.i, ptr noundef nonnull %i.o, ptr noundef nonnull %i.j) #36
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 256 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !34, !noalias !4919, !noundef !15
  %i.z = trunc nuw i8 %i.y to i1                  ; 2 uses
  %..i = select i1 %i.z, i64 48, i64 32           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4920)
  call void @llvm.experimental.noalias.scope.decl(metadata !4921)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %2, ptr %i.f, align 8, !noalias !4922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4922
  store i64 %..i, ptr %i.e, align 8, !noalias !4922
  %.not.i = icmp eq i64 %2, %..i
  br i1 %.not.i, label %.split.preheader.i.i.i.preheader.i.i, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #42, !noalias !4922
  unreachable

.split.preheader.i.i.i.preheader.i.i:             ; preds = %bb.c
  %..i.sroa.sel.v.sroa.sel.v = select i1 %i.z, i64 48, i64 32
  %..i.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i.sroa.sel.v.sroa.sel.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4922
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  call void @llvm.experimental.noalias.scope.decl(metadata !4923)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %.split.preheader.i.i.i.i.i

.split.preheader.i.i.i.i.i:                       ; preds = %bb.g, %.split.preheader.i.i.i.preheader.i.i
  %i.ab = phi i64 [ %i.as, %bb.g ], [ %2, %.split.preheader.i.i.i.preheader.i.i ] ; 3 uses
  %i.ac = phi ptr [ %i.at, %bb.g ], [ %..i.sroa.sel.v.sroa.sel, %.split.preheader.i.i.i.preheader.i.i ] ; 3 uses
  %i.ad = phi i64 [ %i.au, %bb.g ], [ undef, %.split.preheader.i.i.i.preheader.i.i ] ; 3 uses
  %i.ae = phi ptr [ %i.ag, %bb.g ], [ %1, %.split.preheader.i.i.i.preheader.i.i ] ; 2 uses
  %i.af = phi i1 [ %i.av, %bb.g ], [ false, %.split.preheader.i.i.i.preheader.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4924)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  call void @llvm.experimental.noalias.scope.decl(metadata !4926)
  %.not.i.i.i.not.i.peel.i.i.i.i.i = icmp ne i64 %i.ad, 8
  %or.cond49.not.i.i = select i1 %i.af, i1 %.not.i.i.i.not.i.peel.i.i.i.i.i, i1 false
  br i1 %or.cond49.not.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.split.preheader.i.i.i.i.i
  %i.ah = icmp eq ptr %i.l, %i.ac
  br i1 %i.ah, label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i: ; preds = %bb.e
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !4920, !noalias !4927, !noundef !15
  %i.ak = call noundef i64 @llvm.bswap.i64(i64 %i.aj)
  store i64 %i.ak, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, align 8, !alias.scope !4928, !noalias !4922
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i, %.split.preheader.i.i.i.i.i
  %i.al = phi ptr [ %i.ai, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.ac, %.split.preheader.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.ad, %.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.am = icmp ult i64 %.us-phi.i.i.i.i.i, 8
  call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ab, 0
  br i1 %i.an, label %.noexc.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, i64 %.us-phi.i.i.i.i.i
  %i.ap = add nuw nsw i64 %.us-phi.i.i.i.i.i, 1
  %.sroa.3.0.i8.pn.i.ph.i.i.i.i = load i8, ptr %i.ao, align 1, !alias.scope !4928, !noalias !4922, !noundef !15
  %i.aq = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %.sroa.3.0.i8.pn.i.ph.i.i.i.i, 1
  %i.ar = add nsw i64 %i.ab, -1
  br label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i

.noexc.i.i:                                       ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41, !noalias !4922
  unreachable

_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.as = phi i64 [ %i.ar, %bb.f ], [ %i.ab, %bb.e ]
  %i.at = phi ptr [ %i.al, %bb.f ], [ %i.l, %bb.e ]
  %i.au = phi i64 [ %i.ap, %bb.f ], [ %i.ad, %bb.e ]
  %i.av = phi i1 [ true, %bb.f ], [ false, %bb.e ]
  %i.aw = phi { i1, i8 } [ %i.aq, %bb.f ], [ { i1 false, i8 undef }, %bb.e ] ; 2 uses
  %i.ax = extractvalue { i1, i8 } %i.aw, 0
  br i1 %i.ax, label %bb.g, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit

bb.g:                                             ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i
  %i.ay = extractvalue { i1, i8 } %i.aw, 1
  store i8 %i.ay, ptr %i.ae, align 1, !alias.scope !4929, !noalias !4923
  %i.az = icmp eq ptr %i.ag, %i.aa
  br i1 %i.az, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit, label %.split.preheader.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit: ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.m, label %bb.h

bb.h:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.h, align 8
  %i.bb = load ptr, ptr %i.v, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  call void %i.bb(ptr noundef nonnull %i.g, ptr noundef nonnull %i.n, ptr noundef nonnull %i.h) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bc = load i8, ptr %i.x, align 8, !range !34, !noalias !4930, !noundef !15
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %..i7 = select i1 %i.bd, i64 48, i64 32         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4931)
  call void @llvm.experimental.noalias.scope.decl(metadata !4932)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %4, ptr %i.c, align 8, !noalias !4933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4933
  store i64 %..i7, ptr %i.b, align 8, !noalias !4933
  %.not.i9 = icmp eq i64 %4, %..i7
  br i1 %.not.i9, label %.split.preheader.i.i.i.preheader.i.i10, label %bb.i, !prof !19

bb.i:                                             ; preds = %bb.h
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #42, !noalias !4933
  unreachable

.split.preheader.i.i.i.preheader.i.i10:           ; preds = %bb.h
  %..i7.sroa.sel.v.sroa.sel.v = select i1 %i.bd, i64 48, i64 32
  %..i7.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i7.sroa.sel.v.sroa.sel.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4933
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %4
  call void @llvm.experimental.noalias.scope.decl(metadata !4934)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %.split.preheader.i.i.i.i.i12

.split.preheader.i.i.i.i.i12:                     ; preds = %bb.l, %.split.preheader.i.i.i.preheader.i.i10
  %i.bf = phi i64 [ %i.bw, %bb.l ], [ %4, %.split.preheader.i.i.i.preheader.i.i10 ] ; 3 uses
  %i.bg = phi ptr [ %i.bx, %bb.l ], [ %..i7.sroa.sel.v.sroa.sel, %.split.preheader.i.i.i.preheader.i.i10 ] ; 3 uses
  %i.bh = phi i64 [ %i.by, %bb.l ], [ undef, %.split.preheader.i.i.i.preheader.i.i10 ] ; 3 uses
  %i.bi = phi ptr [ %i.bk, %bb.l ], [ %3, %.split.preheader.i.i.i.preheader.i.i10 ] ; 2 uses
  %i.bj = phi i1 [ %i.bz, %bb.l ], [ false, %.split.preheader.i.i.i.preheader.i.i10 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4935)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4936)
  call void @llvm.experimental.noalias.scope.decl(metadata !4937)
  %.not.i.i.i.not.i.peel.i.i.i.i.i13 = icmp ne i64 %i.bh, 8
  %or.cond49.not.i.i14 = select i1 %i.bj, i1 %.not.i.i.i.not.i.peel.i.i.i.i.i13, i1 false
  br i1 %or.cond49.not.i.i14, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i16, label %bb.j

bb.j:                                             ; preds = %.split.preheader.i.i.i.i.i12
  %i.bl = icmp eq ptr %i.k, %i.bg
  br i1 %i.bl, label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i19, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i15

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i15: ; preds = %bb.j
  %i.bm = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !4931, !noalias !4938, !noundef !15
  %i.bo = call noundef i64 @llvm.bswap.i64(i64 %i.bn)
  store i64 %i.bo, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i11, align 8, !alias.scope !4939, !noalias !4933
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i16

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i16: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i15, %.split.preheader.i.i.i.i.i12
  %i.bp = phi ptr [ %i.bm, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i15 ], [ %i.bg, %.split.preheader.i.i.i.i.i12 ]
  %.us-phi.i.i.i.i.i17 = phi i64 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i15 ], [ %i.bh, %.split.preheader.i.i.i.i.i12 ] ; 3 uses
  %i.bq = icmp ult i64 %.us-phi.i.i.i.i.i17, 8
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp eq i64 %i.bf, 0
  br i1 %i.br, label %.noexc.i.i20, label %bb.k

bb.k:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i16
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i11, i64 %.us-phi.i.i.i.i.i17
  %i.bt = add nuw nsw i64 %.us-phi.i.i.i.i.i17, 1
  %.sroa.3.0.i8.pn.i.ph.i.i.i.i18 = load i8, ptr %i.bs, align 1, !alias.scope !4939, !noalias !4933, !noundef !15
  %i.bu = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %.sroa.3.0.i8.pn.i.ph.i.i.i.i18, 1
  %i.bv = add nsw i64 %i.bf, -1
  br label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i19

.noexc.i.i20:                                     ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i16
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41, !noalias !4933
  unreachable

_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i19: ; preds = %bb.k, %bb.j
  %i.bw = phi i64 [ %i.bv, %bb.k ], [ %i.bf, %bb.j ]
  %i.bx = phi ptr [ %i.bp, %bb.k ], [ %i.k, %bb.j ]
  %i.by = phi i64 [ %i.bt, %bb.k ], [ %i.bh, %bb.j ]
  %i.bz = phi i1 [ true, %bb.k ], [ false, %bb.j ]
  %i.ca = phi { i1, i8 } [ %i.bu, %bb.k ], [ { i1 false, i8 undef }, %bb.j ] ; 2 uses
  %i.cb = extractvalue { i1, i8 } %i.ca, 0
  br i1 %i.cb, label %bb.l, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit21

bb.l:                                             ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i19
  %i.cc = extractvalue { i1, i8 } %i.ca, 1
  store i8 %i.cc, ptr %i.bi, align 1, !alias.scope !4940, !noalias !4934
  %i.cd = icmp eq ptr %i.bk, %i.be
  br i1 %i.cd, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit21, label %.split.preheader.i.i.i.i.i12

_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit21: ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i19, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.m

bb.m:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit21, %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
end_hunk_10
begin_hunk_11_@_RNvNtNtNtNtCs5yxAJGbRKSL_4ring4aead3gcm8fallback3w6414gcm_mul64_nohw:bb.a
  %i.r = zext nneg i64 %i.q to i128               ; 4 uses
  %i.s = and i64 %1, 2459565876494606882
  %i.t = zext nneg i64 %i.s to i128               ; 4 uses
  %i.u = mul nuw nsw i128 %i.t, %i.r
  %i.v = xor i128 %i.p, %i.u
  %i.w = mul nuw nsw i128 %i.n, %i.g
  %i.x = mul nuw nsw i128 %i.t, %i.l
  %i.y = xor i128 %i.w, %i.x
  %i.z = mul nuw nsw i128 %i.d, %i.r
  %i.aa = xor i128 %i.y, %i.z
  %i.ab = mul nuw nsw i128 %i.i, %i.b
  %i.ac = xor i128 %i.aa, %i.ab                   ; 2 uses
  %i.ad = mul nuw nsw i128 %i.t, %i.g
  %i.ae = mul nuw nsw i128 %i.d, %i.l
  %i.af = xor i128 %i.ad, %i.ae
  %i.ag = mul nuw nsw i128 %i.i, %i.r
  %i.ah = xor i128 %i.af, %i.ag
  %i.ai = mul nuw nsw i128 %i.n, %i.b
  %i.aj = xor i128 %i.ah, %i.ai                   ; 2 uses
  %i.ak = mul nuw nsw i128 %i.d, %i.g
  %i.al = mul nuw nsw i128 %i.i, %i.l
  %i.am = xor i128 %i.ak, %i.al
  %i.an = mul nuw nsw i128 %i.n, %i.r
  %i.ao = xor i128 %i.am, %i.an
  %i.ap = mul nuw nsw i128 %i.t, %i.b
  %i.aq = xor i128 %i.ao, %i.ap                   ; 2 uses
  %i.ar = xor i128 %i.v, %i.e                     ; 2 uses
  %i.as = and i64 %0, 1
  %i.at = icmp eq i64 %i.as, 0
  %i.au = select i1 %i.at, i64 0, i64 %1
  %i.av = zext i64 %i.au to i128
  %.mask = and i64 %0, 2
  %isneg.not = icmp eq i64 %.mask, 0
  %i.aw = select i1 %isneg.not, i64 0, i64 %1
  %i.ax = zext i64 %i.aw to i128
  %i.ay = shl nuw nsw i128 %i.ax, 1
  %i.az = xor i128 %i.ay, %i.av
  %.mask1 = and i64 %0, 4
  %isneg.not2 = icmp eq i64 %.mask1, 0
  %i.ba = select i1 %isneg.not2, i64 0, i64 %1
  %i.bb = zext i64 %i.ba to i128
  %i.bc = shl nuw nsw i128 %i.bb, 2
  %i.bd = xor i128 %i.az, %i.bc
  %.mask3 = and i64 %0, 8
  %isneg.not4 = icmp eq i64 %.mask3, 0
  %i.be = select i1 %isneg.not4, i64 0, i64 %1
  %i.bf = zext i64 %i.be to i128
  %i.bg = shl nuw nsw i128 %i.bf, 3
  %i.bh = xor i128 %i.bd, %i.bg                   ; 2 uses
  %i.bi = trunc i128 %i.aq to i64
  %i.bj = and i64 %i.bi, 1229782938247303441
  %i.bk = trunc i128 %i.aj to i64
  %i.bl = and i64 %i.bk, 2459565876494606882
  %i.bm = or disjoint i64 %i.bj, %i.bl
  %i.bn = trunc i128 %i.ac to i64
  %i.bo = and i64 %i.bn, 4919131752989213764
  %i.bp = or disjoint i64 %i.bm, %i.bo
  %i.bq = trunc i128 %i.ar to i64
  %i.br = and i64 %i.bq, -8608480567731124088
  %i.bs = or disjoint i64 %i.bp, %i.br
  %i.bt = trunc i128 %i.bh to i64
  %i.bu = xor i64 %i.bs, %i.bt
  %i.bv = lshr i128 %i.aq, 64
  %i.bw = trunc nuw nsw i128 %i.bv to i64
  %i.bx = and i64 %i.bw, 1229782938247303441
  %i.by = lshr i128 %i.aj, 64
  %i.bz = trunc nuw nsw i128 %i.by to i64
  %i.ca = and i64 %i.bz, 2459565876494606882
  %i.cb = or disjoint i64 %i.bx, %i.ca
  %i.cc = lshr i128 %i.ac, 64
  %i.cd = trunc nuw nsw i128 %i.cc to i64
  %i.ce = and i64 %i.cd, 4919131752989213764
  %i.cf = or disjoint i64 %i.cb, %i.ce
  %i.cg = lshr i128 %i.ar, 64
  %i.ch = trunc nuw nsw i128 %i.cg to i64
  %i.ci = and i64 %i.ch, -8608480567731124088
  %i.cj = or disjoint i64 %i.cf, %i.ci
  %i.ck = lshr i128 %i.bh, 64
  %i.cl = trunc nuw nsw i128 %i.ck to i64
  %i.cm = xor i64 %i.cj, %i.cl
  %i.cn = insertvalue { i64, i64 } poison, i64 %i.bu, 0
  %i.co = insertvalue { i64, i64 } %i.cn, i64 %i.cm, 1
  ret { i64, i64 } %i.co
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNvMs_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verificationNtB6_26EcdsaVerificationAlgorithm13verify_digest14sig_r_equals_x(ptr nofree readonly captures(none) %.8.val, i8 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [48 x i8], align 16               ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 16               ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = load ptr, ptr %.8.val, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, i8 0, i64 48, i1 false)
  call void %i.e(ptr noundef nonnull %i.d, ptr noundef nonnull %2, ptr noundef nonnull %0) #36
  %.sroa.0.0.copyload = load <2 x i64>, ptr %i.d, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload = load <2 x i64>, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.5.0.copyload = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  store i64 1, ptr %i.c, align 8
  %i.g = load ptr, ptr %.8.val, align 8, !nonnull !15, !noundef !15
  call void %i.g(ptr noundef nonnull %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.c) #36
  %.sroa.02.0.copyload = load <2 x i64>, ptr %i.b, align 16
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.43.0.copyload = load <2 x i64>, ptr %.sroa.43.0..sroa_idx, align 16
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.54.0.copyload = load <2 x i64>, ptr %.sroa.54.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.h = trunc nuw i8 %.16.val to i1
  %i.i = xor <2 x i64> %.sroa.02.0.copyload, %.sroa.0.0.copyload
  %i.j = xor <2 x i64> %.sroa.43.0.copyload, %.sroa.4.0.copyload
  %i.k = or <2 x i64> %i.j, %i.i                  ; 2 uses
  %i.l = xor <2 x i64> %.sroa.54.0.copyload, %.sroa.5.0.copyload
  %i.m = or <2 x i64> %i.l, %i.k
  %.lcssa = select i1 %i.h, <2 x i64> %i.m, <2 x i64> %i.k
  %i.n = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa)
  %i.o = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.n) #36, !noalias !5804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.o, ptr %i.a, align 8
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.a) #36, !srcloc !37
  %i.p = load i64, ptr %i.a, align 8, !noundef !15
  %i.q = icmp ne i64 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i64 @_RNvNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic6bigint3exp24elem_exp_consttime_inner19scatter_powers_of_2(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 144115188075855872) %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, i64 noundef range(i64 1, 0) %7, i1 noundef zeroext %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %7)
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  %.not34 = icmp eq i64 %i.b, -1
  br i1 %.not34, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = shl nuw nsw i64 %5, 3
  %.not.i = icmp eq i64 %5, 0
  %.not.i.i = icmp eq i64 %3, %i.c
  %i.d = zext i1 %8 to i64
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split, !prof !16

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.e = icmp ugt i64 %7, 15
  br i1 %i.e, label %.loopexit, label %.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = icmp samesign ugt i64 %5, 16
  br i1 %i.f, label %.lr.ph.split.split.us, label %.lr.ph.split.split, !prof !16

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.g = icmp ugt i64 %7, 15
  br i1 %i.g, label %.loopexit, label %.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not.i.i, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split, !prof !19

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split, %bb.b
  %.sroa.03.035.us39 = phi i64 [ %i.i, %bb.b ], [ %7, %.lr.ph.split.split ] ; 2 uses
  %i.h = icmp ugt i64 %.sroa.03.035.us39, 15
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split.split.us
  %i.i = shl nuw nsw i64 %.sroa.03.035.us39, 1    ; 2 uses
  tail call void @ring_core_0_17_16000__bn_sqr8x_mont(ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %2, i64 noundef %i.d, ptr noundef nonnull readonly align 8 %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %6, i64 noundef range(i64 0, 1152921504606846976) %3) #36, !noalias !5812
  %i.j = tail call fastcc { i64, i64 } @_RNvNtNtNtCs5yxAJGbRKSL_4ring10arithmetic8limbs5127scatter8scatter5(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %i.i)
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %.not.us = icmp eq i64 %i.k, -1
  br i1 %.not.us, label %.lr.ph.split.split.split.us, label %.loopexit

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  %i.l = icmp ugt i64 %7, 15
  %spec.select = sext i1 %i.l to i64
  br label %.loopexit

.split.us:                                        ; preds = %.lr.ph.split.split.us, %.lr.ph.split.us
  %.sink19.i = phi i64 [ 1, %.lr.ph.split.us ], [ 2, %.lr.ph.split.split.us ]
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.split.split.us, %bb.b, %.lr.ph.split.split.split, %bb.a, %.lr.ph.split.us, %.lr.ph.split.split.us, %.split.us
  %.sroa.05.0 = phi i64 [ -1, %.lr.ph.split.us ], [ %.sink19.i, %.split.us ], [ %i.b, %bb.a ], [ -1, %.lr.ph.split.split.us ], [ %spec.select, %.lr.ph.split.split.split ], [ %i.k, %bb.b ], [ -1, %.lr.ph.split.split.split.us ]
  ret i64 %.sroa.05.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 2, 52) i64 @_RNvNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa7signing14format_rs_asn118format_integer_tlv(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 0, 9223372036854775806) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [49 x i8], align 16               ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(49) %i.d, i8 0, i64 49, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 256
  %i.f = load i8, ptr %i.e, align 8, !range !34, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1                  ; 5 uses
  %. = select i1 %i.g, i64 48, i64 32             ; 6 uses
  %i.h = or disjoint i64 %., 1                    ; 4 uses
  %..i = select i1 %i.g, i64 6, i64 4             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5844)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.idx.i.i = shl nuw nsw i64 %..i, 3             ; 2 uses
  store i64 %., ptr %i.c, align 8, !noalias !5845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5845
  store i64 %.idx.i.i, ptr %i.b, align 8, !noalias !5845
  %.not.i = icmp eq i64 %., %.idx.i.i
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #42, !noalias !5845
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %..i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5845
  %..sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.g, i64 49, i64 33
  %..sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.d, i64 %..sroa.sel.v.sroa.sel.v.sroa.sel.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5846)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  br label %.split.preheader.i.i.i.i.i

.split.preheader.i.i.i.i.i:                       ; preds = %bb.f, %bb.c
  %i.k = phi i64 [ %i.ab, %bb.f ], [ %., %bb.c ]  ; 3 uses
  %i.l = phi ptr [ %i.ac, %bb.f ], [ %i.i, %bb.c ] ; 3 uses
  %i.m = phi i64 [ %i.ad, %bb.f ], [ undef, %bb.c ] ; 3 uses
  %i.n = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = phi i1 [ %i.ae, %bb.f ], [ false, %bb.c ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5847)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5848)
  call void @llvm.experimental.noalias.scope.decl(metadata !5849)
  %.not.i.i.i.not.i.peel.i.i.i.i.i = icmp ne i64 %i.m, 8
  %or.cond49.not.i.i = select i1 %i.o, i1 %.not.i.i.i.not.i.peel.i.i.i.i.i, i1 false
  br i1 %or.cond49.not.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.split.preheader.i.i.i.i.i
  %i.q = icmp eq ptr %0, %i.l
  br i1 %i.q, label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !5843, !noalias !5850, !noundef !15
  %i.t = call noundef i64 @llvm.bswap.i64(i64 %i.s)
  store i64 %i.t, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, align 8, !alias.scope !5851, !noalias !5845
  br label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i, %.split.preheader.i.i.i.i.i
  %i.u = phi ptr [ %i.r, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.l, %.split.preheader.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i = phi i64 [ 0, %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.loopexit.loopexit.i.i.i.i.i ], [ %i.m, %.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.v = icmp ult i64 %.us-phi.i.i.i.i.i, 8
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %i.k, 0
  br i1 %i.w, label %.noexc.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx5.sroa_idx.i.i.i.i.i, i64 %.us-phi.i.i.i.i.i
  %i.y = add nuw nsw i64 %.us-phi.i.i.i.i.i, 1
  %.sroa.3.0.i8.pn.i.ph.i.i.i.i = load i8, ptr %i.x, align 1, !alias.scope !5851, !noalias !5845, !noundef !15
  %i.z = insertvalue { i1, i8 } { i1 true, i8 poison }, i8 %.sroa.3.0.i8.pn.i.ph.i.i.i.i, 1
  %i.aa = add nsw i64 %i.k, -1
  br label %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i

.noexc.i.i:                                       ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB8_5array4iter8IntoIterhKj8_EhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs5yxAJGbRKSL_4ring.exit.i.i.i.i.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #41, !noalias !5845
  unreachable

_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i: ; preds = %bb.e, %bb.d
  %i.ab = phi i64 [ %i.aa, %bb.e ], [ %i.k, %bb.d ]
  %i.ac = phi ptr [ %i.u, %bb.e ], [ %0, %bb.d ]
  %i.ad = phi i64 [ %i.y, %bb.e ], [ %i.m, %bb.d ]
  %i.ae = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  %i.af = phi { i1, i8 } [ %i.z, %bb.e ], [ { i1 false, i8 undef }, %bb.d ] ; 2 uses
  %i.ag = extractvalue { i1, i8 } %i.af, 0
  br i1 %i.ag, label %bb.f, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit

bb.f:                                             ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i
  %i.ah = extractvalue { i1, i8 } %i.af, 1
  store i8 %i.ah, ptr %i.n, align 1, !alias.scope !5852, !noalias !5846
  %i.ai = icmp eq ptr %i.p, %..sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %i.ai, label %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit, label %.split.preheader.i.i.i.i.i

_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit: ; preds = %_RNvXs_NtNtCs5yxAJGbRKSL_4ring8polyfill14array_flat_mapINtB4_12ArrayFlatMapINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtB1f_3rev3RevINtNtNtB1j_5slice4iter4IteryEEEhNvMs7_NtB1j_3numy11to_be_bytesKj8_ENtNtNtB1h_6traits8iterator8Iterator4nextB8_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %..sroa.sel.v = select i1 %i.g, i64 48, i64 32
  %..sroa.sel = getelementptr inbounds nuw i8, ptr %i.d, i64 %..sroa.sel.v
  %wide.load = load <16 x i8>, ptr %i.d, align 16, !noalias !5853
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.aj = icmp ne <16 x i8> %wide.load.fr, zeroinitializer ; 2 uses
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %.not = icmp eq i16 %i.ak, 0
  br i1 %.not, label %vector.body.1, label %vector.early.exit

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit
  %next.gep.1 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load.1 = load <16 x i8>, ptr %next.gep.1, align 16, !noalias !5853
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.al = icmp ne <16 x i8> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.am = bitcast <16 x i1> %i.al to i16
  %.not.1 = icmp eq i16 %i.am, 0
  br i1 %.not.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.1
  br i1 %i.g, label %vector.body.2, label %.lr.ph.i

vector.body.2:                                    ; preds = %vector.body.interim.1
  %next.gep.2 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %wide.load.2 = load <16 x i8>, ptr %next.gep.2, align 16, !noalias !5853
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.an = icmp ne <16 x i8> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.ao = bitcast <16 x i1> %i.an to i16
  %.not.2 = icmp eq i16 %i.ao, 0
  br i1 %.not.2, label %.lr.ph.i, label %vector.early.exit

vector.early.exit:                                ; preds = %vector.body.2, %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit
  %index.lcssa = phi i64 [ 0, %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit ], [ 16, %vector.body.1 ], [ 32, %vector.body.2 ]
  %.lcssa = phi <16 x i1> [ %i.aj, %_RNvNtCs5yxAJGbRKSL_4ring4limb21big_endian_from_limbs.exit ], [ %i.al, %vector.body.1 ], [ %i.an, %vector.body.2 ]
  %i.ap = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa, i1 false)
  %i.aq = add i64 %index.lcssa, %i.ap
  br label %.loopexit

.lr.ph.i:                                         ; preds = %vector.body.interim.1, %vector.body.2
  %.val.i = load i8, ptr %..sroa.sel, align 16, !noalias !5853, !noundef !15
  %.not.i20 = icmp eq i8 %.val.i, 0
  br i1 %.not.i20, label %.loopexit20, label %.loopexit

.loopexit20:                                      ; preds = %.lr.ph.i
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #41
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %vector.early.exit
  %.sroa.02.07.i.lcssa = phi i64 [ %i.aq, %vector.early.exit ], [ %., %.lr.ph.i ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.02.07.i.lcssa, %.
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.02.07.i.lcssa
  %i.at = load i8, ptr %i.as, align 1, !noundef !15
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.av = icmp eq i64 %.sroa.02.07.i.lcssa, 0
  br i1 %i.av, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.loopexit, %bb.i
  %.sroa.0.0 = phi i64 [ %.sroa.02.07.i.lcssa, %.loopexit ], [ %i.ax, %bb.i ] ; 4 uses
  %i.aw = icmp ugt i64 %.sroa.0.0, %i.h
  br i1 %i.aw, label %bb.l, label %bb.k, !prof !16

bb.i:                                             ; preds = %bb.g
  %i.ax = add nsw i64 %.sroa.02.07.i.lcssa, -1
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #41
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ay = sub nuw nsw i64 %i.h, %.sroa.0.0        ; 5 uses
  %.not17 = icmp eq i64 %2, 0
  br i1 %.not17, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.h
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0, i64 noundef %i.h, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #41
  unreachable

bb.m:                                             ; preds = %bb.k
  store i8 2, ptr %1, align 1
  %.not18 = icmp eq i64 %2, 1
  br i1 %.not18, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #41
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ba = trunc nuw nsw i64 %i.ay to i8
  store i8 %i.ba, ptr %i.az, align 1
  %i.bb = add nsw i64 %2, -2                      ; 2 uses
  %.not19 = icmp ugt i64 %i.ay, %i.bb
  br i1 %.not19, label %bb.q, label %bb.r, !prof !30

bb.p:                                             ; preds = %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #41
  unreachable

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ay, i64 noundef %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #41
  unreachable

bb.r:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %i.bc, i64 range(i64 0, -9223372036854775808) %i.ay, i1 false), !alias.scope !5854
  %i.be = add nuw nsw i64 %i.ay, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.be
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { i64, i64 } @_RNvXNtCs5yxAJGbRKSL_4ring10arithmeticNtNtB2_16limb_slice_error14LimbSliceErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtNtNtB4_5error18len_mismatch_error16LenMismatchErrorE4from(i64 noundef %0) unnamed_addr #22 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @_RNvMNtNtCs5yxAJGbRKSL_4ring10arithmetic16limb_slice_errorNtB2_14LimbSliceError12len_mismatch(i64 noundef %0) #39
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs5yxAJGbRKSL_4ring2ecNtB2_5CurveNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !range !53, !noundef !15 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring2ec5CurveNtB6_5Debug3fmtBA_, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5yxAJGbRKSL_4ring2ec5CurveNtB6_5Debug3fmtBA_.551, i64 %i.d
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs5yxAJGbRKSL_4ring5debugNtB2_6HexStrNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 1)
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !15 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %.not.i = icmp samesign eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val1) ]
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.01.02.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5857
  store ptr %.sroa.01.02.i, ptr %i.b, align 8, !noalias !5857, !captures !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5857
  store ptr %i.b, ptr %i.a, align 8, !noalias !5857
  store ptr @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs5yxAJGbRKSL_4ring, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !5857
  %i.i = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @177, ptr noundef nonnull %i.a)
  br i1 %i.i, label %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.02.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5857
  %.not3.i = icmp eq ptr %i.j, %i.h
  br i1 %.not3.i, label %.loopexit, label %bb.c

_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5857
  br label %bb.e

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit, %.loopexit, %bb.a
  %.sroa.0.0 = phi i1 [ true, %_RNvNtCs5yxAJGbRKSL_4ring5debug15write_hex_bytes.exit ], [ true, %bb.a ], [ %i.k, %.loopexit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs5yxAJGbRKSL_4ring3rsa12verificationNtB4_13RsaParametersNtNtB6_9signature21VerificationAlgorithm7verify_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(none) %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5878)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !alias.scope !5878, !noalias !5879, !noundef !15 ; 2 uses
  %i.d = and i8 %i.c, 31
  %i.e = icmp ne i8 %i.d, 31
  %i.f = icmp ne i64 %2, 1
  %or.cond.i.i.i.i.i = and i1 %i.f, %i.e
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !5878, !noalias !5879, !noundef !15 ; 3 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i8 %i.h to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  switch i8 %i.h, label %bb.r [
    i8 -127, label %bb.g
    i8 -126, label %bb.h
  ]

bb.f:                                             ; preds = %bb.k, %bb.j, %bb.d
  %i.k = phi i64 [ 2, %bb.d ], [ 3, %bb.j ], [ 4, %bb.k ] ; 2 uses
  %.sroa.019.0.i.i.i.i.i.i = phi i64 [ %i.j, %bb.d ], [ %i.r, %bb.j ], [ %i.z, %bb.k ] ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.019.0.i.i.i.i.i.i, %i.k ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ule i64 %i.l, %2
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 48
  %or.cond17.i.i = and i1 %.not.i.i.i.i.i, %.not.i.i.i.i.i.i.i
  br i1 %or.cond17.i.i, label %bb.l, label %bb.r, !prof !39

bb.g:                                             ; preds = %bb.e
  %i.m = icmp ugt i64 %2, 2
  br i1 %i.m, label %bb.i, label %bb.r

bb.h:                                             ; preds = %bb.e
  %i.n = icmp ugt i64 %2, 3
  br i1 %i.n, label %bb.k, label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !5878, !noalias !5879, !noundef !15 ; 2 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = zext i8 %i.p to i64
  br label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !5878, !noalias !5879, !noundef !15 ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !5878, !noalias !5879, !noundef !15
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.u, 8
  %i.z = or disjoint i64 %i.y, %i.x
  %i.aa = icmp eq i8 %i.t, 0
  br i1 %i.aa, label %bb.r, label %bb.f

bb.l:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5880
  store ptr %i.ab, ptr %i.a, align 8, !noalias !5880
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.019.0.i.i.i.i.i.i, ptr %i.ac, align 8, !noalias !5880
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !noalias !5880
  %i.ae = call { ptr, i64 } @_RNvNtNtCs5yxAJGbRKSL_4ring2io3der19nonnegative_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !5881 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = icmp eq ptr %i.af, null
  br i1 %i.ah, label %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = call { ptr, i64 } @_RNvNtNtCs5yxAJGbRKSL_4ring2io3der19nonnegative_integer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !5881 ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load i64, ptr %i.ad, align 8, !noalias !5880, !noundef !15
  %i.am = load i64, ptr %i.ac, align 8, !noalias !5880, !noundef !15
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.o, label %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i

_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5880
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5880
  %i.ao = icmp eq i64 %i.l, %2
  br i1 %i.ao, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ap = extractvalue { ptr, i64 } %i.ai, 1
  store ptr %i.af, ptr %i.b, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ag, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aj, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ap, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aq = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i1 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i1, label %bb.q, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.p, %bb.q
  %i.ar = call noundef zeroext i1 @_RNvNtNtCs5yxAJGbRKSL_4ring3rsa12verification6verify(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.b, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.k, %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i, %bb.a, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %.sroa.0.0 = phi i1 [ %i.ar, %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit ], [ true, %bb.a ], [ true, %_RNCNvNtCs5yxAJGbRKSL_4ring3rsa16parse_public_key0B5_.exit.thread12.i.i ], [ true, %bb.k ], [ true, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.b ], [ true, %bb.o ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs5yxAJGbRKSL_4ring4aead4quicNtB2_19HeaderProtectionKeyINtNtCs3oUPovFnLWP_4core7convert4FromINtNtB6_4hkdf3OkmRNtB2_9AlgorithmEE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([264 x i8]) align 8 captures(none) dereferenceable(264) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [256 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !15, !align !17, !noundef !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !15 ; 4 uses
  %i.h = icmp ult i64 %i.g, 33
  br i1 %i.h, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.g, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5891)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !5891, !nonnull !15, !align !17, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5891, !nonnull !15, !align !17, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !5891, !noundef !15
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !5891, !noundef !15
  %i.p = call noundef zeroext i1 @_RNvNtCs5yxAJGbRKSL_4ring4hkdf8fill_okm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias nofree noundef nonnull %i.c, i64 noundef range(i64 0, 33) %i.g, i64 noundef %i.o), !noalias !5891
  br i1 %i.p, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #41
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5892)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5893
  %i.q = load ptr, ptr %i.e, align 8, !alias.scope !5892, !nonnull !15, !noundef !15
  %i.r = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4, !noalias !5893
  %.not.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i.i, label %bb.e, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i, !prof !16

bb.e:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit
  tail call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i: ; preds = %bb.e, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCs5yxAJGbRKSL_4ring5error11unspecified11UnspecifiedE6unwrapBO_.exit
  call void %i.q(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(address) dereferenceable(256) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.g), !noalias !5894, !inline_history !5895
  %i.s = load i32, ptr %i.b, align 8, !range !49, !noalias !5893, !noundef !15 ; 2 uses
  %i.t = icmp eq i32 %i.s, -2
  br i1 %i.t, label %bb.f, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCs5yxAJGbRKSL_4ring4aead4quic19HeaderProtectionKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapBN_.exit

bb.f:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5893
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #41, !noalias !5896
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultNtNtNtCs5yxAJGbRKSL_4ring4aead4quic19HeaderProtectionKeyNtNtNtBN_5error11unspecified11UnspecifiedE6unwrapBN_.exit: ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit.i
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(252) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(252) %.sroa.6.0..sroa_idx2, i64 252, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5893
  call void @llvm.experimental.noalias.scope.decl(metadata !5897)
  call void @llvm.experimental.noalias.scope.decl(metadata !5898)
  store i32 %i.s, ptr %0, align 8, !alias.scope !5896
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.e, ptr %.sroa.63.0..sroa_idx, align 8, !alias.scope !5896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs5yxAJGbRKSL_4ring5error11unspecifiedNtB2_11UnspecifiedNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @266, i64 noundef 24)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_RNvXNtNtCs5yxAJGbRKSL_4ring5error16into_unspecifiedNtNtB4_11unspecified11UnspecifiedINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsjVYLllkLn3D_9untrusted6reader10EndOfInputE4from() unnamed_addr #20 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding3pssNtB2_3PSSNtB4_7Padding11digest_alg_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXNtNtNtCs5yxAJGbRKSL_4ring3rsa7padding5pkcs1NtB2_5PKCS1NtB4_7Padding11digest_alg_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtNtCs5yxAJGbRKSL_4ring2ec10curve255197ed2551912verificationNtB2_15EdDSAParametersNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !15, !align !17, !noundef !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !15, !nonnull !15
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @267, i64 noundef 24) #40
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verificationNtB2_26EcdsaVerificationAlgorithmNtNtBa_9signature21VerificationAlgorithm7verify_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 16               ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 16               ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 4 uses
  %i.u = alloca [48 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 16               ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [8 x i8], align 8                ; 5 uses
  %i.af = alloca [48 x i8], align 16              ; 10 uses
  %i.ag = alloca [8 x i8], align 8                ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [48 x i8], align 16              ; 10 uses
  %i.ak = alloca [48 x i8], align 8               ; 5 uses
  %i.al = alloca [48 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 4 uses
  %i.an = alloca [48 x i8], align 8               ; 9 uses
  %i.ao = alloca [48 x i8], align 8               ; 6 uses
  %i.ap = alloca [48 x i8], align 8               ; 6 uses
  %i.aq = alloca [144 x i8], align 8              ; 8 uses
  %i.ar = alloca [48 x i8], align 8               ; 5 uses
  %i.as = alloca [48 x i8], align 8               ; 5 uses
  %i.at = alloca [48 x i8], align 8               ; 6 uses
  %i.au = alloca [48 x i8], align 8               ; 5 uses
  %i.av = alloca [48 x i8], align 8               ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 5 uses
  %i.ax = alloca [48 x i8], align 8               ; 5 uses
  %i.ay = alloca [104 x i8], align 8              ; 6 uses
  %i.az = alloca [96 x i8], align 8               ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [80 x i8], align 8               ; 4 uses
  %i.bc = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.7.i = alloca [32 x i8], align 8          ; 6 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 5 uses
  %i.bd = alloca [208 x i8], align 8              ; 5 uses
  %i.be = alloca [208 x i8], align 8              ; 11 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [24 x i8], align 8               ; 7 uses
  %i.bh = alloca [72 x i8], align 8               ; 6 uses
  %.val11 = load ptr, ptr %0, align 8, !nonnull !15, !align !17, !noundef !15 ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val12 = load ptr, ptr %i.bi, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !6014
  store ptr %5, ptr %i.bg, align 8, !noalias !6014
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store i64 %6, ptr %i.bj, align 8, !noalias !6014
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store i64 0, ptr %i.bk, align 8, !noalias !6014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !6014
  %i.bl = load ptr, ptr %.val11, align 8, !noalias !6015, !nonnull !15, !align !17, !noundef !15
  call void %.val12(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg), !noalias !6014, !inline_history !5904
  %i.bm = load ptr, ptr %i.bf, align 8, !noalias !6014, !noundef !15 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !6014
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.65.i.sroa.0.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !6014
  %.sroa.65.i.sroa.4.0..sroa.410.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.65.i.sroa.4.0.copyload = load ptr, ptr %.sroa.65.i.sroa.4.0..sroa.410.0..sroa_idx.i.sroa_idx, align 8, !noalias !6014 ; 2 uses
  %.sroa.65.i.sroa.5.0..sroa.410.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.65.i.sroa.5.0.copyload = load i64, ptr %.sroa.65.i.sroa.5.0..sroa.410.0..sroa_idx.i.sroa_idx, align 8, !noalias !6014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !6014
  %i.bo = load i64, ptr %i.bk, align 8, !noalias !6014, !noundef !15
  %i.bp = load i64, ptr %i.bj, align 8, !noalias !6014, !noundef !15
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !6014
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !6014
  %i.br = load atomic i32, ptr @_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags8FEATURES acquire, align 4
  %.not.i.i = icmp eq i32 %i.br, 0
  br i1 %.not.i.i, label %bb.f, label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit, !prof !16

bb.f:                                             ; preds = %bb.e
  call fastcc void @_RINvMNtNtNtCs5yxAJGbRKSL_4ring8polyfill9once_cell4raceINtB3_14OnceNonZeroU32NtB3_14AcquireReleaseE4initNCNvNtNtNtB9_3cpu6x86_6412featureflags11get_or_init0EB9_() #39
  br label %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit

_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !15, !align !17, !noundef !15 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6016)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !6017
  %i.bu = load i32, ptr %i.bt, align 8, !range !45, !alias.scope !6016, !noundef !15
  %i.bv = trunc nuw i32 %i.bu to i1
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bw, i64 32, i1 false), !noalias !6018
  br label %bb.i

bb.h:                                             ; preds = %_RNvNtNtNtCs5yxAJGbRKSL_4ring3cpu6x86_6412featureflags11get_or_init.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bx, align 8, !alias.scope !6016
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, i64 32, i1 false), !noalias !6018
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.53.0..sroa_idx.i, i64 24, i1 false), !noalias !6018
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i = phi ptr [ %i.bt, %bb.g ], [ %.sroa.0.0.copyload.i, %bb.h ]
  %.sroa.01.0.i = phi ptr [ null, %bb.g ], [ %i.bt, %bb.h ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.be, i8 0, i64 128, i1 false), !noalias !6017
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 128 ; 2 uses
  store ptr %.sroa.01.0.i, ptr %i.by, align 8, !noalias !6017
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  store ptr %.sroa.5.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !6017
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i, i64 32, i1 false), !noalias !6017
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !6017
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6017
  call void @_RNvMs_NtCs5yxAJGbRKSL_4ring6digestNtB4_7Context6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4), !noalias !6019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !6017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %i.be, i64 208, i1 false), !noalias !6017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !6020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !6020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bb, ptr noundef nonnull align 8 dereferenceable(80) %i.by, i64 80, i1 false), !noalias !6017
  call fastcc void @_RNvMNtCs5yxAJGbRKSL_4ring6digestNtB2_12BlockContext10try_finish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.bc, ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.bd), !noalias !6021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !6020
  %i.bz = load ptr, ptr %i.bc, align 8, !noalias !6020, !noundef !15 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %7 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %8 = load i64, ptr %7, align 8, !range !22, !noalias !6020, !noundef !15
  %i.cb = trunc nuw i64 %8 to i1
  br i1 %i.cb, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #41, !noalias !6021
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !6020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !6017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !6017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.ae

bb.m:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.65.i.sroa.4.0.copyload) ]
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.723.0.copyload = load i64, ptr %.sroa.723.0..sroa_idx, align 8, !noalias !6022
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx3.sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.10.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !6020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !6017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !6017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store ptr %i.bz, ptr %i.bh, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store i64 %.sroa.723.0.copyload, ptr %.sroa.3.0..sroa_idx3, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 89
  %i.cd = load i8, ptr %i.cc, align 1, !range !44, !noundef !15
  %i.ce = zext nneg i8 %i.cd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.cf = getelementptr inbounds nuw i8, ptr %.val11, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !6023, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.ch = load ptr, ptr %.val11, align 8, !noalias !6023, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !6023
  %i.ci = load ptr, ptr %i.cg, align 8, !noalias !6023, !nonnull !15, !align !17, !noundef !15 ; 12 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 256 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 8, !range !34, !noalias !6023, !noundef !15 ; 3 uses
  store ptr %i.cj, ptr %i.ba, align 8, !noalias !6023
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i8 %i.cl, ptr %i.cm, align 8, !noalias !6023
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.ci, ptr %i.cn, align 8, !noalias !6023
  %i.co = load ptr, ptr %i.ch, align 8, !noalias !6023, !nonnull !15, !align !17, !noundef !15 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 112 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 256
  %i.cr = load i8, ptr %i.cq, align 8, !range !34, !noalias !6023, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !6023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !6023
  call fastcc void @_RNvNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b10public_key24parse_uncompressed_point(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !6024
  %i.cs = load i64, ptr %i.ay, align 8, !range !22, !noalias !6023, !noundef !15
  %i.ct = trunc nuw i64 %i.cs to i1
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !6023
  br label %_RNvMs_NtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa12verificationNtB4_26EcdsaVerificationAlgorithm13verify_digest.exit

bb.o:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.az, ptr noundef nonnull align 8 dereferenceable(96) %i.cu, i64 96, i1 false), !noalias !6023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !6023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !6023
  %i.cv = trunc nuw i8 %i.cr to i1                ; 4 uses
  %..i.i = select i1 %i.cv, i64 6, i64 4          ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6025
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false), !noalias !6025
  call void @llvm.experimental.noalias.scope.decl(metadata !6026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6027
  store ptr %i.aj, ptr %i.ah, align 8, !noalias !6027
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %..i.i, ptr %i.cw, align 8, !noalias !6027
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 0, ptr %i.cx, align 8, !noalias !6027
  %i.cy = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bm, i64 noundef %.sroa.65.i.sroa.0.0.copyload, i64 noundef range(i64 4, 7) %..i.i), !noalias !6028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !6027
  %i.cz = extractvalue { i64, i64 } %i.cy, 0
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.p, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i: ; preds = %bb.o
  %i.db = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.aj, ptr noundef nonnull readonly align 8 %i.cp, i64 noundef range(i64 4, 7) %..i.i) #36, !noalias !6029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !6030
  store i64 %i.db, ptr %i.ag, align 8, !noalias !6030
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.ag) #36, !noalias !6029, !srcloc !37
  %i.dc = load i64, ptr %i.ag, align 8, !noalias !6030, !noundef !15
  %.not.i.i.i.i = icmp eq i64 %i.dc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6030
  br i1 %.not.i.i.i.i, label %bb.p, label %vector.body.1

vector.body.1:                                    ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i
  %wide.load = load <2 x i64>, ptr %i.aj, align 16, !alias.scope !6026, !noalias !6025
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.dd, align 16, !alias.scope !6026, !noalias !6025
  %i.de = or <2 x i64> %wide.load.1, %wide.load   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.df, align 16
  %i.dg = or <2 x i64> %wide.load.2, %i.de
  %.lcssa81 = select i1 %i.cv, <2 x i64> %i.dg, <2 x i64> %i.de
  %i.dh = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa81)
  %i.di = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.dh) #36, !noalias !6029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !6031
  store i64 %i.di, ptr %i.ai, align 8, !noalias !6031
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.ai) #36, !noalias !6029, !srcloc !37
  %i.dj = load i64, ptr %i.ai, align 8, !noalias !6031, !noundef !15
  %.not.i.not.i.i = icmp eq i64 %i.dj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !6031
  br i1 %.not.i.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %vector.body.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6025
  br label %bb.ad

bb.q:                                             ; preds = %vector.body.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 16 dereferenceable(48) %i.aj, i64 48, i1 false), !noalias !6023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !6025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false), !noalias !6023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !6023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.af, i8 0, i64 48, i1 false), !noalias !6032
  call void @llvm.experimental.noalias.scope.decl(metadata !6033)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6034
  store ptr %i.af, ptr %i.ad, align 8, !noalias !6034
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %..i.i, ptr %i.dk, align 8, !noalias !6034
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %i.dl, align 8, !noalias !6034
  %i.dm = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.65.i.sroa.4.0.copyload, i64 noundef %.sroa.65.i.sroa.5.0.copyload, i64 noundef range(i64 4, 7) %..i.i), !noalias !6035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6034
  %i.dn = extractvalue { i64, i64 } %i.dm, 0
  %i.do = trunc nuw i64 %i.dn to i1
  br i1 %i.do, label %bb.r, label %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i23.i, !prof !29

_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i23.i: ; preds = %bb.q
  %i.dp = call noundef i64 @ring_core_0_17_16000__LIMBS_less_than(ptr noundef nonnull readonly align 8 %i.af, ptr noundef nonnull readonly align 8 %i.cp, i64 noundef range(i64 4, 7) %..i.i) #36, !noalias !6036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6037
  store i64 %i.dp, ptr %i.ac, align 8, !noalias !6037
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.ac) #36, !noalias !6036, !srcloc !37
  %i.dq = load i64, ptr %i.ac, align 8, !noalias !6037, !noundef !15
  %.not.i.i.i24.i = icmp eq i64 %i.dq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6037
  br i1 %.not.i.i.i24.i, label %bb.r, label %vector.body58.1

vector.body58.1:                                  ; preds = %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i23.i
  %wide.load61 = load <2 x i64>, ptr %i.af, align 16, !alias.scope !6033, !noalias !6032
  %i.dr = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load61.1 = load <2 x i64>, ptr %i.dr, align 16, !alias.scope !6033, !noalias !6032
  %i.ds = or <2 x i64> %wide.load61.1, %wide.load61 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %wide.load61.2 = load <2 x i64>, ptr %i.dt, align 16
  %i.du = or <2 x i64> %wide.load61.2, %i.ds
  %.lcssa80 = select i1 %i.cv, <2 x i64> %i.du, <2 x i64> %i.ds
  %i.dv = call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %.lcssa80)
  %i.dw = call noundef i64 @ring_core_0_17_16000__LIMB_is_zero(i64 noundef %i.dv) #36, !noalias !6036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6038
  store i64 %i.dw, ptr %i.ae, align 8, !noalias !6038
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i.ae) #36, !noalias !6036, !srcloc !37
  %i.dx = load i64, ptr %i.ae, align 8, !noalias !6038, !noundef !15
  %.not.i.not.i30.i = icmp eq i64 %i.dx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6038
  br i1 %.not.i.not.i30.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %vector.body58.1, %_RNvNtCs5yxAJGbRKSL_4ring4limb37verify_limbs_less_than_limbs_leak_bit.exit.i.i23.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6032
  br label %bb.ac

bb.s:                                             ; preds = %vector.body58.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 16 dereferenceable(48) %i.af, i64 48, i1 false), !noalias !6023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !6023
  %..i34.i = select i1 %i.cv, i64 48, i64 32
  %.sroa.5.0.i.i = call i64 @llvm.umin.i64(i64 range(i64 20, 65) %i.ce, i64 %..i34.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !6039
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false), !noalias !6039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6040
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !6040
  %i.dy = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %..i.i, ptr %i.dy, align 8, !noalias !6040
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.dz, align 8, !noalias !6040
  %i.ea = call fastcc { i64, i64 } @_RNvNtCs5yxAJGbRKSL_4ring4limb26limbs_from_be_bytes_padded(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.3.0..sroa_idx3, i64 noundef range(i64 20, 49) %.sroa.5.0.i.i, i64 noundef range(i64 4, 7) %..i.i), !noalias !6041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6040
  %i.eb = extractvalue { i64, i64 } %i.ea, 0
  %i.ec = trunc nuw i64 %i.eb to i1
  br i1 %i.ec, label %bb.t, label %_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i, !prof !16

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6039
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #41, !noalias !6042
  unreachable

_RNvNtNtNtNtCs5yxAJGbRKSL_4ring2ec7suite_b5ecdsa13digest_scalar13digest_scalar.exit.i: ; preds = %bb.s
  call void @ring_core_0_17_16000__LIMBS_reduce_once(ptr noundef nonnull align 8 %i.ab, ptr noundef nonnull readonly align 8 %i.cp, i64 noundef range(i64 0, 1152921504606846976) %..i.i) #36, !noalias !6043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false), !noalias !6044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6039
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !6023
  %i.ed = getelementptr i8, ptr %.val11, i64 24
  %.val14.i = load ptr, ptr %i.ed, align 8, !noalias !6023, !nonnull !15, !noundef !15
  call void %.val14.i(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.av), !noalias !6024, !inline_history !5954
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !6023
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !6024, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !6023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i8 0, i64 48, i1 false), !noalias !6023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 0, i64 48, i1 false), !noalias !6023
  call void %i.ef(ptr noundef nonnull %i.al, ptr noundef nonnull %i.au, ptr noundef nonnull %i.at) #36, !noalias !6024, !inline_history !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull align 8 dereferenceable(48) %i.al, i64 48, i1 false), !noalias !6023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !6023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !6023
  %i.eg = load ptr, ptr %i.ee, align 8, !noalias !6024, !nonnull !15, !noundef !15
  call void %i.eg(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.at) #36, !noalias !6024, !inline_history !5955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false), !noalias !6023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !6023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !6023
  %i.eh = getelementptr inbounds nuw i8, ptr %.val11, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !6023, !nonnull !15, !noundef !15
  call void %i.ei(ptr noalias nofree noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.az), !noalias !6024, !inline_history !5955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !6023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6045
  %i.ej = trunc nuw i8 %i.cl to i1                ; 7 uses
  %..i.i35.i = select i1 %i.ej, i64 6, i64 4      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6046
  %.idx.i.i.i = shl nuw nsw i64 %..i.i35.i, 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i.i
  %i.el = shl nuw nsw i64 %..i.i35.i, 3           ; 4 uses
  %i.em = select i1 %i.ej, i64 0, i64 16          ; 4 uses
  %i.en = getelementptr i8, ptr %i.k, i64 %i.el
  call void @llvm.memset.p0.i64(ptr align 8 %i.en, i8 0, i64 %i.em, i1 false), !noalias !6046
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ek, i64 %i.el, i1 false), !alias.scope !6047, !noalias !6048
end_hunk_11
