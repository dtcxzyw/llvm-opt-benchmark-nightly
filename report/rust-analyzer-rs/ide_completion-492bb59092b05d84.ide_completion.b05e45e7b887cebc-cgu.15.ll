Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.15?download=true
inline.NumInlined: 826
inline.NumDeleted: 426
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyBY_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB34_:bb.a
  %lcmp.mod56 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ab = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.ad = getelementptr [16 x i8], ptr %i.aj, i64 %i.ab ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !alias.scope !361, !noalias !366
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !368, !noalias !357
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !alias.scope !369, !noalias !370
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE7reverseCsf8NQSppxkmK_14ide_completion.exit.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE7reverseCsf8NQSppxkmK_14ide_completion.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i.epil.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE7reverseCsf8NQSppxkmK_14ide_completion.exit.i.loopexit.unr-lcssa, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE7reverseCsf8NQSppxkmK_14ide_completion.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i465357.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i.epil.preheader ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyB15_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3d_.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE7reverseCsf8NQSppxkmK_14ide_completion.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.preheader.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 3 uses
  %xtraiter = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i.epil.preheader, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.preheader.i.i.i.new

_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.ai, 9223372036854775806
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.preheader.i.i.i.new ], [ %i.au, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i ]
  %i.al = xor i64 %.sroa.0.016.i.i.i, -1
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !361, !noalias !366
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !368, !noalias !357
  store <2 x ptr> %i.ao, ptr %i.an, align 8, !alias.scope !369, !noalias !370
  %i.ap = xor i64 %.sroa.0.016.i.i.i, -2
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr [16 x i8], ptr %i.aj, i64 %i.ap ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !alias.scope !361, !noalias !366
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !368, !noalias !357
  store <2 x ptr> %i.at, ptr %i.as, align 8, !alias.scope !369, !noalias !370
  %i.au = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE7reverseCsf8NQSppxkmK_14ide_completion.exit.i.loopexit.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE12split_at_mutCsf8NQSppxkmK_14ide_completion.exit11.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyB15_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3d_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE7reverseCsf8NQSppxkmK_14ide_completion.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCshzWfHUSfYae_4core5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE7reverseCsf8NQSppxkmK_14ide_completion.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.av = lshr i64 %.sroa.023.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av
  %i.ay = add nuw nsw i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit
  %.sroa.02.136 = phi i64 [ %i.be, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.be = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bg, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bi, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4 ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 5 uses
  %i.bm = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm                ; 5 uses
  %i.bo = sub i64 %.sroa.09.0, %i.bn
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo ; 3 uses
  %i.bq = icmp samesign ugt i64 %i.bn, %3
  %i.br = trunc i64 %.sroa.023.135 to i1
  %i.bs = or i64 %i.bk, %.sroa.023.135
  %i.bt = trunc i64 %i.bs to i1
  %or.cond3.i = or i1 %i.bq, %i.bt
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = trunc i64 %i.bk to i1
  br i1 %i.bu, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i64 %i.bn, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.br, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bw = or i64 %i.bl, 1
  %i.bx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyB17_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3f_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 576460752303423488) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bl
  %i.cc = or i64 %i.bm, 1
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyB17_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3f_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 576460752303423488) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyBZ_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB35_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 576460752303423488) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ch = shl nuw nsw i64 %i.bn, 1
  %i.ci = or disjoint i64 %i.ch, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyB18_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3g_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ci, %bb.x ], [ %i.bv, %bb.t ] ; 2 uses
  %i.cj = icmp ugt i64 %i.be, 1
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add i64 %.sroa.02.1.lcssa, 1
  %i.cl = lshr i64 %.sroa.018.0, 1
  %i.cm = add nuw i64 %i.cl, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cn = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cn, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = or i64 %1, 1
  %i.cp = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyB17_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0EB3f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !378, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !378, !noundef !4
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !376 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !378, !nonnull !4, !noundef !4
  %i.h = load i64, ptr %i.d, align 8, !noalias !378, !noundef !4
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.n = load i8, ptr %i.l, align 8, !range !384, !alias.scope !385, !noalias !386, !noundef !4 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !384, !alias.scope !386, !noalias !385, !noundef !4 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !385, !noalias !386, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !386, !noalias !385, !noundef !4
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !304, !alias.scope !385, !noalias !386, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !304, !alias.scope !386, !noalias !385, !noundef !4 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !385, !noalias !386, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !386, !noalias !385, !noundef !4
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !392, !noalias !395, !noundef !4 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !392, !noalias !395, !nonnull !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !392, !noalias !395
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !397, !noalias !400, !noundef !4 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !397, !noalias !400, !nonnull !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !397, !noalias !400
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport17import_on_the_flys1_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !407, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !407, !noundef !4
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !405 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !407, !nonnull !4, !noundef !4
  %i.h = load i64, ptr %i.d, align 8, !noalias !407, !noundef !4
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.n = load i8, ptr %i.l, align 8, !range !384, !alias.scope !413, !noalias !414, !noundef !4 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !384, !alias.scope !414, !noalias !413, !noundef !4 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !413, !noalias !414, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !414, !noalias !413, !noundef !4
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !304, !alias.scope !413, !noalias !414, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !304, !alias.scope !414, !noalias !413, !noundef !4 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !413, !noalias !414, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !414, !noalias !413, !noundef !4
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !420, !noalias !423, !noundef !4 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !420, !noalias !423, !nonnull !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !420, !noalias !423
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !425, !noalias !428, !noundef !4 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !425, !noalias !428, !nonnull !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !425, !noalias !428
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport22import_on_the_fly_pat_s0_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImport7sort_byNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0E0B1R_(ptr nofree readonly captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.a = getelementptr i8, ptr %.0.val, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !435, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !435, !noundef !4
  %i.f = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1), !noalias !433 ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8, !noalias !435, !nonnull !4, !noundef !4
  %i.h = load i64, ptr %i.d, align 8, !noalias !435, !noundef !4
  %i.i = tail call noundef i64 @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport34compute_fuzzy_completion_order_key(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val1) ; 2 uses
  %i.j = tail call i8 @llvm.ucmp.i8.i64(i64 %i.f, i64 %i.i)
  %i.k = icmp eq i64 %i.f, %i.i
  br i1 %i.k, label %bb.b, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.n = load i8, ptr %i.l, align 8, !range !384, !alias.scope !441, !noalias !442, !noundef !4 ; 3 uses
  %i.o = load i8, ptr %i.m, align 8, !range !384, !alias.scope !442, !noalias !441, !noundef !4 ; 2 uses
  %i.p = tail call i8 @llvm.ucmp.i8.i8(i8 %i.n, i8 %i.o)
  %i.q = icmp eq i8 %i.n, %i.o
  br i1 %i.q, label %bb.c, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.c:                                             ; preds = %bb.b
  switch i8 %i.n, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i [
    i8 1, label %bb.d
    i8 4, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !441, !noalias !442, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !442, !noalias !441, !noundef !4
  %i.v = tail call i8 @llvm.ucmp.i8.i8(i8 %i.s, i8 %i.u)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !range !304, !alias.scope !441, !noalias !442, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.z = load i32, ptr %i.y, align 4, !range !304, !alias.scope !442, !noalias !441, !noundef !4 ; 2 uses
  %i.aa = tail call i8 @llvm.ucmp.i8.i32(i32 %i.x, i32 %i.z)
  %i.ab = icmp eq i32 %i.x, %i.z
  br i1 %i.ab, label %bb.f, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !alias.scope !441, !noalias !442, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !alias.scope !442, !noalias !441, !noundef !4
  %i.ag = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ad, i32 %i.af)
  br label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.p, %bb.b ], [ %i.v, %bb.d ], [ %i.ag, %bb.f ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.ah, label %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i, label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !448, !noalias !451, !noundef !4 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 1                   ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !alias.scope !448, !noalias !451, !nonnull !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !448, !noalias !451
  %.sink11.i.i.i = select i1 %i.ak, ptr %i.al, ptr %0
  %.sink10.i.i.i = select i1 %i.ak, i64 %i.an, i64 %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !453, !noalias !456, !noundef !4 ; 2 uses
  %i.aq = icmp ugt i64 %i.ap, 1                   ; 2 uses
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !453, !noalias !456, !nonnull !4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !453, !noalias !456
  %.sink11.i1.i.i = select i1 %i.aq, ptr %i.ar, ptr %1
  %.sink10.i2.i.i = select i1 %i.aq, i64 %i.at, i64 %i.ap
  %i.au = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i.i.i, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sink11.i1.i.i, i64 noundef %.sink10.i2.i.i)
  br label %_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit

_RNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9flyimport24import_on_the_fly_methods0_0B7_.exit: ; preds = %bb.a, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.0.0.i = phi i8 [ %i.au, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i ], [ %.sroa.0.0.i.i, %_RNvXsk_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB5_8PathKindNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i ], [ %i.j, %bb.a ]
  %i.av = icmp eq i8 %.sroa.0.0.i, -1
  ret i1 %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions13format_string13format_string0E0B24_(ptr nonnull captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.f = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val1)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %.noexc9, %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.e) #32
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = and i64 %i.h, 1                          ; 2 uses
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.e, i64 %i.j     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = and i64 %i.o, 1                          ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr i8, ptr %i.f, i64 %i.q     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.u)
  %i.v = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.s, i64 %spec.store.select.i.i.i) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.f, i64 -1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.x = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.w)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.z, ptr %i.d, align 8
  %i.aa = load atomic i64, ptr %i.z acquire, align 8
  %i.ab = icmp eq i64 %i.aa, 2
  br i1 %i.ab, label %bb.e, label %.noexc9, !prof !6

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc9 unwind label %bb.b

.noexc9:                                          ; preds = %bb.e, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.z, ptr %i.c, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc10 unwind label %bb.b

.noexc10:                                         ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit: ; preds = %.noexc10, %bb.c
  %.not.i.i.i.i11 = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i11, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12, label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit
  %i.ac = getelementptr i8, ptr %i.e, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %i.ac)
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.af, ptr %i.b, align 8
  %i.ag = load atomic i64, ptr %i.af acquire, align 8
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.af, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit12: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion.exit, %bb.h
  %i.ai = icmp eq i32 %i.v, 0
  %i.aj = sub i64 %i.n, %i.u
  %i.ak = sext i32 %i.v to i64
  %spec.select.i.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.ak
  %i.al = icmp slt i64 %spec.select.i.i.i, 0
  ret i1 %i.al

bb.i:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #33
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRNtCs8Xq8PKFYOms_3hir5LocalE11sort_by_keyBA_NCNvNtNtCsf8NQSppxkmK_14ide_completion6render8function12ref_of_param0E0B24_(ptr nonnull captures(address, read_provenance) %.0.val, ptr captures(address, read_provenance) %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val) ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.f = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.0.val1)
          to label %bb.c unwind label %bb.b       ; 3 uses

bb.b:                                             ; preds = %.noexc9, %bb.e, %bb.d, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsf8NQSppxkmK_14ide_completion(ptr nonnull %i.e) #32
          to label %bb.j unwind label %bb.i
end_hunk_0
begin_hunk_1_@_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4type18complete_type_paths7_0EB13_
declare hidden noundef zeroext i1 @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4type18complete_type_paths7_0EB13_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1f_Cs8Xq8PKFYOms_3hirNtB6_9TypeParam2ty(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB6_17CompletionContext23iterate_path_candidatesNCNvNtNtB8_11completions4type18complete_type_paths8_0EB8_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext15traits_in_scope(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCsileJQcQObtj_7hir_def7TraitIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB6_17CompletionContext23iterate_path_candidatesNCNvNtNtB8_11completions4type18complete_type_paths3_0EB8_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type19iterate_assoc_itemsuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4type18complete_type_paths4_0EB13_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB1s_8for_each4callBX_NCNvNtNtCsf8NQSppxkmK_14ide_completion11completions4type18complete_type_paths2_0E0EB33_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions15add_crate_roots(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl11type_of_pat(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl12type_of_expr(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs8Xq8PKFYOms_3hir4TypeNtNtCs8K4cjrcxBsw_6hir_ty7display10HirDisplay19display_source_codeCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), i32 noundef range(i32 1, 0), i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions17add_super_keyword(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions11add_keyword(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMsi_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes11UseTreeList15parent_use_tree(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsfw_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_4PathNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1B_Cs8Xq8PKFYOms_3hirNtB6_8ScopeDef5attrs(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsf8NQSppxkmK_14ide_completion7contextNtB5_17CompletionContext15check_stability(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyeECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB5_7Builder15from_resolution(ptr dead_on_unwind noalias nofree noundef writable sret([360 x i8]) align 8 captures(address) dereferenceable(360), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), ptr noundef nonnull, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs2_NtCsf8NQSppxkmK_14ide_completion4itemNtB6_7Builder14with_relevanceNCNvNtNtB8_11completions4use_17complete_use_paths1_0EB8_(ptr noalias nofree noundef align 8 dereferenceable(360), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsf8NQSppxkmK_14ide_completion11completionsNtB5_11Completions17add_enum_variants(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), i32 noundef range(i32 1, 0), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCscFGNKo4Sl5v_9itertools6formatINtB2_10FormatWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterNtCs8Xq8PKFYOms_3hir5FieldEENCNvNtNtCsf8NQSppxkmK_14ide_completion6render7variant16render_tuple_lit0ENtNtB10_3fmt7Display3fmtB2S_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCscFGNKo4Sl5v_9itertools6formatINtB2_10FormatWithINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtNtCsf8NQSppxkmK_14ide_completion6render7variant16render_tuple_lits_0ENtNtBY_3fmt7Display3fmtB26_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCscFGNKo4Sl5v_9itertools6formatINtB2_10FormatWithINtNtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerate9EnumerateINtNtNtB10_5slice4iter4IterNtCs8Xq8PKFYOms_3hir5FieldEENCNvNtNtCsf8NQSppxkmK_14ide_completion6render7variant17render_record_lit0ENtNtB10_3fmt7Display3fmtB2S_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCscFGNKo4Sl5v_9itertools6formatINtB2_10FormatWithINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtCs8Xq8PKFYOms_3hir5FieldENCNvNtNtCsf8NQSppxkmK_14ide_completion6render7variant17render_record_lits_0ENtNtBY_3fmt7Display3fmtB26_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix29build_postfix_snippet_builder(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers19format_string_exprs18parse_format_exprs(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_11SnippetEdit19escape_snippet_bits(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers19format_string_exprs17with_placeholders(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpReNtB5_13SliceContains14slice_containsCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbSS6DM8SDEO_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRReNtB6_7Display3fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsaMQbKjKCVRW_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsf8NQSppxkmK_14ide_completion(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core3mem11conjure_zstuECsf8NQSppxkmK_14ide_completion() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs9GitHPCrz2Q_5rowan11syntax_textNtB5_10SyntaxTextNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB4_5ConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsuAhG64lL82_9text_size5range9TextRangeNtB6_5Debug3fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterReENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterlENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterTReBJ_EENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter7IterMutINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product16MultiProductIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter7IterMutNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green5token14GreenTokenHeadShEE9drop_slowB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs33K2ylI4knu_10hir_expand4name4NameNtB5_8SliceOrd7compareCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty7displayINtB5_17HirDisplayWrapperNtCs8Xq8PKFYOms_3hir4TypeENtNtCshzWfHUSfYae_4core3fmt7Display3fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXstM_NtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodesNtB6_7NameRefNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCshzWfHUSfYae_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input10SourceRootE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs6oosyzwIepl_6ide_db9text_edit5IndelINtNtNtBa_5slice4iter4IterB14_EECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner9new_field(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner18new_lifetime_param(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner23new_type_or_const_param(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #26 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { noinline noreturn }
attributes #31 = { noreturn }
attributes #32 = { cold }
attributes #33 = { cold noreturn nounwind }
attributes #34 = { noinline }
attributes #35 = { nounwind }
attributes #36 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{!"branch_weights", i32 4001, i32 4000000}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!"branch_weights", i32 4000000, i32 4001}
!8 = !{i64 8}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvYNtCs8Xq8PKFYOms_3hir11EnumVariantNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 0"}
!11 = distinct !{!11, !"_RNvYNtCs8Xq8PKFYOms_3hir11EnumVariantNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion"}
!12 = !{i8 -1, i8 4}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir11EnumVariantEs_0B7_: argument 0"}
!15 = distinct !{!15, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir11EnumVariantEs_0B7_"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvYNtCs8Xq8PKFYOms_3hir5ConstNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 0"}
!18 = distinct !{!18, !"_RNvYNtCs8Xq8PKFYOms_3hir5ConstNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir5ConstEs_0B7_: argument 0"}
!21 = distinct !{!21, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir5ConstEs_0B7_"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_RNvYNtCs8Xq8PKFYOms_3hir5MacroNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 0"}
!24 = distinct !{!24, !"_RNvYNtCs8Xq8PKFYOms_3hir5MacroNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion"}
!25 = distinct !{!25, !24, !"_RNvYNtCs8Xq8PKFYOms_3hir5MacroNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 1"}
!26 = !{!23}
!27 = !{!25}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir5MacroEs_0B7_: argument 0"}
!30 = distinct !{!30, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir5MacroEs_0B7_"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvYNtCs8Xq8PKFYOms_3hir5TraitNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 0"}
!33 = distinct !{!33, !"_RNvYNtCs8Xq8PKFYOms_3hir5TraitNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir5TraitEs_0B7_: argument 0"}
!36 = distinct !{!36, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir5TraitEs_0B7_"}
!37 = distinct !{null}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_RNvYNtCs8Xq8PKFYOms_3hir5UnionNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 0"}
!40 = distinct !{!40, !"_RNvYNtCs8Xq8PKFYOms_3hir5UnionNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion"}
!41 = !{!42}
!42 = distinct !{!42, !43, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir5UnionEs_0B7_: argument 0"}
!43 = distinct !{!43, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir5UnionEs_0B7_"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_RNvYNtCs8Xq8PKFYOms_3hir6StructNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 0"}
!46 = distinct !{!46, !"_RNvYNtCs8Xq8PKFYOms_3hir6StructNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir6StructEs_0B7_: argument 0"}
!49 = distinct !{!49, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir6StructEs_0B7_"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 1"}
!52 = distinct !{!52, !"_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion"}
!53 = !{i8 0, i8 2}
!54 = !{!55, !51}
!55 = distinct !{!55, !56, !"_RNvXs0_NtCs8Xq8PKFYOms_3hir5attrsNtB7_8FunctionNtB5_8HasAttrs7attr_id: argument 1"}
!56 = distinct !{!56, !"_RNvXs0_NtCs8Xq8PKFYOms_3hir5attrsNtB7_8FunctionNtB5_8HasAttrs7attr_id"}
!57 = !{!58, !59}
!58 = distinct !{!58, !56, !"_RNvXs0_NtCs8Xq8PKFYOms_3hir5attrsNtB7_8FunctionNtB5_8HasAttrs7attr_id: argument 0"}
!59 = distinct !{!59, !52, !"_RNvYNtCs8Xq8PKFYOms_3hir8FunctionNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 0"}
!60 = !{!59, !51}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir8FunctionEs_0B7_: argument 0"}
!63 = distinct !{!63, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir8FunctionEs_0B7_"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_RNvYNtCs8Xq8PKFYOms_3hir9TypeAliasNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion: argument 0"}
!66 = distinct !{!66, !"_RNvYNtCs8Xq8PKFYOms_3hir9TypeAliasNtNtB4_5attrs8HasAttrs5attrsCsf8NQSppxkmK_14ide_completion"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir9TypeAliasEs_0B7_: argument 0"}
!69 = distinct !{!69, !"_RNCINvMNtCsf8NQSppxkmK_14ide_completion6renderNtB5_13RenderContext13is_deprecatedNtCs8Xq8PKFYOms_3hir9TypeAliasEs_0B7_"}
!70 = !{i64 0, i64 2}
!71 = !{i64 0, i64 -9223372036854775807}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsf8NQSppxkmK_14ide_completion: argument 0"}
!74 = distinct !{!74, !"_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCsf8NQSppxkmK_14ide_completion"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsf8NQSppxkmK_14ide_completion: argument 2"}
!77 = distinct !{!77, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsf8NQSppxkmK_14ide_completion"}
!78 = !{!79}
!79 = distinct !{!79, !77, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsf8NQSppxkmK_14ide_completion: argument 3"}
!80 = !{!81, !82, !79, !83, !85}
!81 = distinct !{!81, !77, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsf8NQSppxkmK_14ide_completion: argument 0"}
!82 = distinct !{!82, !77, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsf8NQSppxkmK_14ide_completion: argument 1"}
!83 = distinct !{!83, !84, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!84 = distinct !{!84, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!85 = distinct !{!85, !84, !"_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!86 = !{!81, !82, !76, !83, !85}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsf8NQSppxkmK_14ide_completion: argument 2"}
!89 = distinct !{!89, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsf8NQSppxkmK_14ide_completion"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_RINvMsx_NtNtCshzWfHUSfYae_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsf8NQSppxkmK_14ide_completion: argument 3"}
!92 = !{!93, !94, !91, !83, !85}
end_hunk_1
