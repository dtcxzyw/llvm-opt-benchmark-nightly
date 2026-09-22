Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.04?download=true
inline.NumInlined: 8498
inline.NumDeleted: 3151
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2M_s_0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !6999, !noalias !7000, !nonnull !31, !noundef !31
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !6999, !noalias !7000, !noundef !31 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !7000, !noalias !6999, !nonnull !31, !noundef !31
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !7000, !noalias !6999, !noundef !31 ; 2 uses
  %.sroa.0.0.i.i.i104.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.fn, i64 range(i64 0, 144115188075855872) %i.fj) ; 2 uses
  %exitcond.not.i.i.i.i39 = icmp eq i64 %.sroa.0.0.i.i.i104.i.i, 0
  br i1 %exitcond.not.i.i.i.i39, label %._crit_edge, label %.lr.ph

bb.af:                                            ; preds = %.lr.ph
  %i.fo = add nuw nsw i64 %.sroa.01.0.i.i.i.i40, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fo, %.sroa.0.0.i.i.i104.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.af, %bb.ae
  %i.fp = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 144115188075855872) %i.fj, i64 range(i64 0, 144115188075855872) %i.fn)
  br label %_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.01.0.i.i.i.i40 = phi i64 [ %i.fo, %bb.af ], [ 0, %bb.ae ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [64 x i8], ptr %i.fh, i64 %.sroa.01.0.i.i.i.i40
  %i.fr = getelementptr inbounds nuw [64 x i8], ptr %i.fl, i64 %.sroa.01.0.i.i.i.i40
  %i.fs = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fr), !noalias !7001 ; 2 uses
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.af, label %_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i

_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i: ; preds = %.lr.ph, %._crit_edge
  %.sroa.0.0.i.i105.i.i = phi i8 [ %i.fp, %._crit_edge ], [ %i.fs, %.lr.ph ] ; 2 uses
  %i.fu = icmp eq i8 %.sroa.0.0.i.i105.i.i, 0
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fw = load i8, ptr %i.fv, align 8, !range !52, !alias.scope !6999, !noalias !7000
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fy = load i8, ptr %i.fx, align 8, !range !52, !alias.scope !7000, !noalias !6999
  %i.fz = sub nsw i8 %i.fw, %i.fy
  %.sroa.0.0.i106.i.i = select i1 %i.fu, i8 %i.fz, i8 %.sroa.0.0.i.i105.i.i
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ag:                                            ; preds = %bb.c
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !6977, !noalias !6978, !nonnull !31, !noundef !31
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !6977, !noalias !6978, !noundef !31 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !6978, !noalias !6977, !nonnull !31, !noundef !31
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !6978, !noalias !6977, !noundef !31 ; 2 uses
  %spec.store.select3.i.i = tail call i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gh)
  %i.gi = tail call i32 @memcmp(ptr nonnull %i.gb, ptr nonnull %i.gf, i64 %spec.store.select3.i.i), !noalias !6991 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp eq i32 %i.gi, 0
  %i.gl = sub i64 %i.gd, %i.gh
  %spec.select93.i.i = select i1 %i.gk, i64 %i.gl, i64 %i.gj
  %i.gm = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select93.i.i, i64 0)
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ah:                                            ; preds = %bb.c
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gp = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.go) #62 ; 2 uses
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.au, label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ai:                                            ; preds = %bb.c
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !33, !alias.scope !6977, !noalias !6978, !noundef !31
  %.not.i.i = icmp eq i64 %i.gs, -9223372036854775808
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !range !33, !alias.scope !6978, !noalias !6977, !noundef !31 ; 2 uses
  br i1 %.not.i.i, label %bb.ay, label %bb.ax

bb.aj:                                            ; preds = %bb.d
  %.not90.i.i = icmp eq i64 %i.l, -9223372036854775808
  br i1 %.not90.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.al

bb.ak:                                            ; preds = %bb.d
  %.not89.i.i = icmp ne i64 %i.l, -9223372036854775808
  %..i.i = sext i1 %.not89.i.i to i8
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.gv = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !6977, !noalias !6978, !nonnull !31, !noundef !31
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !6977, !noalias !6978, !noundef !31 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !6978, !noalias !6977, !nonnull !31, !noundef !31
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !6978, !noalias !6977, !noundef !31 ; 2 uses
  %spec.store.select4.i.i = tail call i64 @llvm.umin.i64(i64 %i.gy, i64 %i.hc)
  %i.hd = tail call i32 @memcmp(ptr nonnull %i.gw, ptr nonnull %i.ha, i64 %spec.store.select4.i.i), !noalias !6991 ; 2 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp eq i32 %i.hd, 0
  %i.hg = sub i64 %i.gy, %i.hc
  %spec.select94.i.i = select i1 %i.hf, i64 %i.hg, i64 %i.he
  %i.hh = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select94.i.i, i64 0)
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.am:                                            ; preds = %bb.r
  %.not87.i.i = icmp eq i64 %i.bv, -9223372036854775808
  br i1 %.not87.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.ao

bb.an:                                            ; preds = %bb.r
  %.not86.i.i = icmp ne i64 %i.bv, -9223372036854775808
  %.95.i.i = sext i1 %.not86.i.i to i8
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !6977, !noalias !6978, !nonnull !31, !noundef !31
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !6977, !noalias !6978, !noundef !31 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !6978, !noalias !6977, !nonnull !31, !noundef !31
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !6978, !noalias !6977, !noundef !31 ; 2 uses
  %spec.store.select5.i.i = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 %i.hp)
  %i.hq = tail call i32 @memcmp(ptr nonnull %i.hj, ptr nonnull %i.hn, i64 %spec.store.select5.i.i), !noalias !6991 ; 2 uses
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp eq i32 %i.hq, 0
  %i.ht = sub i64 %i.hl, %i.hp
  %spec.select96.i.i = select i1 %i.hs, i64 %i.ht, i64 %i.hr
  %i.hu = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select96.i.i, i64 0)
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ap:                                            ; preds = %bb.ab
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.hw = load i8, ptr %i.hv, align 8, !range !63, !alias.scope !6977, !noalias !6978, !noundef !31 ; 2 uses
  %.not82.i.i = icmp eq i8 %i.hw, 2
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.hy = load i8, ptr %i.hx, align 8, !range !63, !alias.scope !6978, !noalias !6977, !noundef !31 ; 3 uses
  br i1 %.not82.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not84.i.i = icmp eq i8 %i.hy, 2
  %i.hz = sub nsw i8 %i.hw, %i.hy
  br i1 %.not84.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ar:                                            ; preds = %bb.ap
  %.not83.i.i = icmp ne i8 %i.hy, 2
  %.97.i.i = sext i1 %.not83.i.i to i8
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.as:                                            ; preds = %bb.ad
  %.not81.i.i = icmp eq i8 %i.ff, 2
  %i.ia = sub nsw i8 %i.fd, %i.ff
  br i1 %.not81.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.at:                                            ; preds = %bb.ad
  %.not80.i.i = icmp ne i8 %i.ff, 2
  %.98.i.i = sext i1 %.not80.i.i to i8
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.au:                                            ; preds = %bb.ah
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ic = load i8, ptr %i.ib, align 8, !range !63, !alias.scope !6977, !noalias !6978, !noundef !31 ; 2 uses
  %.not76.i.i = icmp eq i8 %i.ic, 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ie = load i8, ptr %i.id, align 8, !range !63, !alias.scope !6978, !noalias !6977, !noundef !31 ; 3 uses
  br i1 %.not76.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not78.i.i = icmp eq i8 %i.ie, 2
  %i.if = sub nsw i8 %i.ic, %i.ie
  br i1 %.not78.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.aw:                                            ; preds = %bb.au
  %.not77.i.i = icmp ne i8 %i.ie, 2
  %.99.i.i = sext i1 %.not77.i.i to i8
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ax:                                            ; preds = %bb.ai
  %.not75.i.i = icmp eq i64 %i.gu, -9223372036854775808
  br i1 %.not75.i.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.az

bb.ay:                                            ; preds = %bb.ai
  %.not74.i.i = icmp ne i64 %i.gu, -9223372036854775808
  %.100.i.i = sext i1 %.not74.i.i to i8
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !6977, !noalias !6978, !nonnull !31, !noundef !31
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !6977, !noalias !6978, !noundef !31 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !6978, !noalias !6977, !nonnull !31, !noundef !31
  %i.im = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !6978, !noalias !6977, !noundef !31 ; 2 uses
  %spec.store.select9.i.i = tail call i64 @llvm.umin.i64(i64 %i.ij, i64 %i.in)
  %i.io = tail call i32 @memcmp(ptr nonnull %i.ih, ptr nonnull %i.il, i64 %spec.store.select9.i.i), !noalias !6991 ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp eq i32 %i.io, 0
  %i.ir = sub i64 %i.ij, %i.in
  %spec.select101.i.i = select i1 %i.iq, i64 %i.ir, i64 %i.ip
  %i.is = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select101.i.i, i64 0)
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ah, %bb.ag, %_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %._crit_edge55, %.lr.ph59
  %.sroa.0.0.i.i = phi i8 [ %i.g, %.lr.ph59 ], [ %i.hh, %bb.al ], [ %i.ea, %bb.y ], [ %..i.i, %bb.ak ], [ %i.gm, %bb.ag ], [ %.99.i.i, %bb.aw ], [ %i.hu, %bb.ao ], [ %.100.i.i, %bb.ay ], [ %.95.i.i, %bb.an ], [ %i.hz, %bb.aq ], [ %i.ca, %bb.s ], [ %i.cf, %bb.t ], [ %i.cs, %bb.u ], [ %i.df, %bb.v ], [ %i.u, %._crit_edge55 ], [ %i.ef, %bb.z ], [ %i.ek, %bb.aa ], [ %i.dn, %bb.x ], [ %i.ia, %bb.as ], [ %.97.i.i, %bb.ar ], [ %i.gp, %bb.ah ], [ %i.en, %bb.ab ], [ %i.fb, %bb.ac ], [ %.sroa.0.0.i106.i.i, %_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i ], [ %i.is, %bb.az ], [ %.98.i.i, %bb.at ], [ %i.if, %bb.av ], [ %.sroa.0.0.i.i.i.i.i, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.0.0.i.fr.i = freeze i8 %.sroa.0.0.i.i    ; 2 uses
  %i.it = icmp eq i8 %.sroa.0.0.i.fr.i, 0
  br i1 %i.it, label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread5.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread5.i: ; preds = %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %bb.c
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread5.i
  %i.iu = phi i8 [ 3, %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread5.i ], [ %.sroa.0.0.i.fr.i, %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i ] ; 2 uses
  %.not14 = icmp eq i8 %i.iu, 3
  br i1 %.not14, label %bb.b, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.aq, %bb.av, %bb.as, %bb.ax, %bb.am, %bb.aj, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %._crit_edge60
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge60 ], [ 1, %bb.aq ], [ 1, %bb.av ], [ 1, %bb.as ], [ 1, %bb.ax ], [ 1, %bb.am ], [ 1, %bb.aj ], [ %i.iu, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2O_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not17 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not17, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.018 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.018, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.01.018 ; 2 uses
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %2, i64 %.sroa.01.018 ; 2 uses
  %i.e = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.d) ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.i = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h)
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.lr.ph, %bb.c
  %.sroa.0.0.i.i = phi i8 [ %i.i, %bb.c ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.j = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.j, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ %.sroa.0.0.i.i, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2O_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 20226693063278018) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 20226693063278018) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %exitcond.not24 = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %exitcond.not24, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond.not = icmp eq i64 %i.b, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.025 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.025, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [456 x i8], ptr %0, i64 %.sroa.01.025 ; 5 uses
  %i.d = getelementptr inbounds nuw [456 x i8], ptr %2, i64 %.sroa.01.025 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7007)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.f = load i8, ptr %i.e, align 8, !range !98, !alias.scope !7006, !noalias !7007, !noundef !31 ; 3 uses
  %.not.i = icmp eq i8 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.h = load i8, ptr %i.g, align 8, !range !98, !alias.scope !7007, !noalias !7006, !noundef !31 ; 3 uses
  %.not12.i = icmp eq i8 %i.h, 3                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  br i1 %.not12.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  br i1 %.not12.i, label %bb.e, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !33, !alias.scope !7006, !noalias !7007, !noundef !31
  %.not14.i = icmp eq i64 %i.j, -9223372036854775808
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 328 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !33, !alias.scope !7007, !noalias !7006, !noundef !31
  %.not15.i = icmp eq i64 %i.l, -9223372036854775808 ; 2 uses
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.f, i8 %i.h)
  %i.n = icmp eq i8 %i.f, %i.h
  br i1 %i.n, label %bb.e, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.g:                                             ; preds = %bb.e
  br i1 %.not15.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.j

bb.h:                                             ; preds = %bb.e
  br i1 %.not15.i, label %bb.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %i.q = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #62, !inline_history !7005 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.k, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.j:                                             ; preds = %bb.g
  %i.s = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.k), !inline_history !7005 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.i
  %i.u = load i64, ptr %i.c, align 8, !range !96, !alias.scope !7006, !noalias !7007, !noundef !31
  %.not17.i = icmp eq i64 %i.u, 69
  %i.v = load i64, ptr %i.d, align 8, !range !96, !alias.scope !7007, !noalias !7006, !noundef !31
  %.not18.i = icmp eq i64 %i.v, 69                ; 2 uses
  br i1 %.not17.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not18.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  br i1 %.not18.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.w = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %i.d) #62, !inline_history !7005
  br label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit: ; preds = %bb.m, %bb.f, %bb.i, %bb.j, %bb.n
  %.sroa.0.0.i16 = phi i8 [ %i.w, %bb.n ], [ %i.s, %bb.j ], [ %i.m, %bb.f ], [ %i.q, %bb.i ], [ 0, %bb.m ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i16, 0
  br i1 %i.x, label %bb.b, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread: ; preds = %bb.l, %bb.c, %bb.h, %bb.g, %bb.m, %bb.d, %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ -1, %bb.d ], [ -1, %bb.m ], [ 1, %bb.g ], [ -1, %bb.h ], [ 1, %bb.c ], [ 1, %bb.l ], [ %.sroa.0.0.i16, %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast19TruncateTableTargetINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 288230376151711744) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.sroa.01.018 = phi i64 [ %i.o, %.backedge ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.018 ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.sroa.01.018 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7017)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !7018, !noalias !7019, !nonnull !31, !noundef !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val5.i.i = load i64, ptr %i.e, align 8, !alias.scope !7018, !noalias !7019, !noundef !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val6.i.i = load ptr, ptr %i.f, align 8, !alias.scope !7019, !noalias !7018, !nonnull !31, !noundef !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val7.i.i = load i64, ptr %i.g, align 8, !alias.scope !7019, !noalias !7018, !noundef !31
  %i.h = tail call noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val.i.i, i64 noundef %.val5.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val6.i.i, i64 noundef %.val7.i.i), !noalias !7020 ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !52, !alias.scope !7018, !noalias !7019
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !52, !alias.scope !7019, !noalias !7018
  %i.n = sub nsw i8 %i.k, %i.m
  %.sroa.0.0.i.i = select i1 %i.i, i8 %i.n, i8 %i.h ; 2 uses
  %cond = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %cond, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.01.018, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %.sroa.0.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge ], [ %.sroa.0.0.i.i, %.lr.ph ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast26AttachDuckDBDatabaseOptionINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2W_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.sroa.01.018 = phi i64 [ %i.b, %.backedge ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.018, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEE5force0E0Cs14kWLkQVSKO_14deltalake_core:bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !align !36, !noundef !31 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !36, !noundef !31 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !52, !noundef !31
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !34

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #61
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !31, !noundef !31
  %i.f = tail call noundef nonnull ptr %i.e(), !inline_history !14247
  store ptr %i.f, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !align !36, !noundef !31 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !36, !noundef !31 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !52, !noundef !31
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !34

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #61
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine16arrow_expression22ArrowEvaluationHandlerEE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !31, !noundef !31
  %i.f = tail call noundef nonnull ptr %i.e(), !inline_history !14248
  store ptr %i.f, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !align !36, !noundef !31 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !36, !noundef !31 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !52, !noundef !31
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !34

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #61
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockINtNtNtCsbvkFyIu7lgC_4core3num7nonzero7NonZeroyEE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !31, !noundef !31
  %i.f = tail call noundef range(i64 1, 0) i64 %i.e(), !inline_history !14249
  store i64 %i.f, ptr %i.b, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !31, !align !36, !noundef !31 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !36, !noundef !31 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !52, !noundef !31
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !34

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #61
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !31, !noundef !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a), !inline_history !14250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !align !36, !noundef !31 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !36, !noundef !31 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.c, align 4, !range !52, !noundef !31
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %bb.c, label %_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0Cs14kWLkQVSKO_14deltalake_core.exit, !prof !34

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lock14panic_poisoned() #61
  unreachable

_RNCNvMNtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsbvkFyIu7lgC_4core4time8DurationE5force0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !31, !noundef !31
  %i.f = tail call { i64, i32 } %i.e(), !inline_history !14251 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 0
  %i.h = extractvalue { i64, i32 } %i.f, 1
  store i64 %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.i, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #61
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB1s_22GenericByteViewBuilderNtNtB1w_5types14BinaryViewTypeE16try_append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEs1_0NCB1m_s0_0E0Cs14kWLkQVSKO_14deltalake_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !align !36, !noundef !31 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !31, !align !36, !noundef !31
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !31, !noundef !31
  %i.e = sub nsw i64 0, %1
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !31, !align !36, !noundef !31 ; 6 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8
  %.val2 = load ptr, ptr %i.h, align 8            ; 3 uses
  %.val3 = load i64, ptr %i.g, align 8, !noundef !31 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14254)
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !14254, !noundef !31
  %i.k = icmp ult i64 %.val3, %i.j
  br i1 %i.k, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #61, !noalias !14254
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !14254, !nonnull !31, !noundef !31
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.val3 ; 2 uses
  %i.o = load i128, ptr %i.n, align 16, !noalias !14254, !noundef !31 ; 6 uses
  %i.p = trunc i128 %i.o to i32
  %i.q = icmp ult i32 %i.p, 13
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i128 %i.o, 64                       ; 2 uses
  %i.s = trunc i128 %i.r to i32
  %i.t = lshr i128 %i.o, 96
  %2 = trunc nuw nsw i128 %i.t to i64             ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !14254, !noundef !31 ; 4 uses
  %i.w = icmp ult i64 %i.v, 384307168202282326
  tail call void @llvm.assume(i1 %i.w)
  %i.x = trunc i64 %i.v to i32
  %i.y = icmp ult i32 %i.s, %i.x
  br i1 %i.y, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = trunc i128 %i.o to i64
  %i.aa = and i64 %i.z, 15
  %i.ab = getelementptr i8, ptr %i.n, i64 4
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ac = trunc i128 %i.o to i64
  %i.ad = and i64 %i.ac, 4294967295               ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, %2               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !14254, !noundef !31 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i.i, label %bb.h, label %bb.i, !prof !34

bb.g:                                             ; preds = %bb.d
  %i.ah = trunc nuw i128 %i.r to i64
  %i.ai = and i64 %i.ah, 4294967295               ; 3 uses
  %i.aj = icmp samesign ult i64 %i.ai, %i.v
  br i1 %i.aj, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.ae, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #61, !noalias !14254
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !14254, !nonnull !31, !noundef !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %2
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i

bb.j:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !14254, !nonnull !31, !noundef !31
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !14254, !noundef !31 ; 2 uses
  %i.as = trunc i128 %i.o to i64
  %i.at = and i64 %i.as, 4294967295               ; 2 uses
  %i.au = add nuw nsw i64 %i.at, %2               ; 2 uses
  %.not12.i.i = icmp ugt i64 %i.au, %i.ar
  br i1 %.not12.i.i, label %bb.l, label %bb.m, !prof !34

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #61, !noalias !14254
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.au, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #61, !noalias !14254
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !14254, !noundef !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %2
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.m, %bb.i, %bb.e
  %.sroa.4.0.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.at, %bb.m ], [ %i.ad, %bb.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ab, %bb.e ], [ %i.ax, %bb.m ], [ %i.am, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !31
  %i.ba = icmp eq i64 %i.az, %.sroa.4.0.i.i
  br i1 %i.ba, label %bb.n, label %_RNCINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14BinaryViewTypeE16try_append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEs1_0Cs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.bb = load ptr, ptr %.val2, align 8, !nonnull !31, !noundef !31
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.bb, ptr nonnull %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i)
  %i.bc = icmp eq i32 %bcmp.i, 0
  br label %_RNCINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14BinaryViewTypeE16try_append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEs1_0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCINvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB7_22GenericByteViewBuilderNtNtBb_5types14BinaryViewTypeE16try_append_valueINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEs1_0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.n
  %.sroa.0.0.i = phi i1 [ %i.bc, %bb.n ], [ false, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core.exit.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_projects0_0Bh_(ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, align 8, !nonnull !31, !align !36, !noundef !31
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNvMs1_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB7_19DeltaScanMetaStream13batch_project10___CALLSITE, align 8, !nonnull !31, !align !36, !noundef !31 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !31, !noundef !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !31
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !31, !nonnull !31
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #62
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates0_0B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 4 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %1, align 8, !nonnull !31, !align !59, !noundef !31
  invoke fastcc void @_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMsa_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9Predicate6binaryNtB6_10ExpressionNtNtB6_7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.a, i8 noundef 2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.b)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !14257
  %i.e = call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 112, i64 noundef range(i64 8, 17) 16) #60, !noalias !14257 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.f, !prof !34

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #56
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a) #59
          to label %.body.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.e, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.i, align 8
  store i64 10, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body.thread:                                     ; preds = %bb.d, %bb.g
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body4

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #59
          to label %.body.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions26filter_to_kernel_predicates_0B9_(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !31, !align !59, !noundef !31
  invoke fastcc void @_RNvXs1M_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_10ExpressionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false)
  call void @_RINvMsa_NtCs8ulvy0Wg6Ot_12delta_kernel11expressionsNtB6_9Predicate6binaryNtB6_10ExpressionNtNtB6_7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, i8 noundef 2, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 dereferenceable(96) %2) #59
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalar0Bb_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 16 captures(address) dead_on_return dereferenceable(96) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @99, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

.body26:                                          ; preds = %bb.j, %bb.b, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.h, %bb.b ], [ %i.u, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %1) #59
          to label %bb.n unwind label %bb.l

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i25, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body26

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine11expressions9to_kernel27datafusion_scalar_to_scalars_0Bb_:bb.a
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.i, %bb.c ], [ %i.s, %bb.h ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #59
          to label %.body26 unwind label %bb.l

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.e, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit
  %i.j = load i64, ptr %i.a, align 8, !range !32, !noundef !31
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !33, !noundef !31 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f, !prof !34

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.n, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.o) #56
          to label %bb.m unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.n, align 8, !nonnull !31, !noundef !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.q, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @29, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit23 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #59
          to label %.body unwind label %bb.l

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit23: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit23
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit23
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i25 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body26 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i25: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit28 unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit28: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 7, ptr %0, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(96) %1)
  ret void

bb.l:                                             ; preds = %bb.g, %.body, %.body26
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.m:                                             ; preds = %bb.e
  unreachable

bb.n:                                             ; preds = %.body26
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4exec21split_by_file_id_runss_0Bd_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, i64 noundef range(i64 0, -1) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = getelementptr i8, ptr %.0.val, i64 32
  %.val = load ptr, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %.0.val, i64 40
  %.val6 = load i64, ptr %i.j, align 8, !noundef !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8
  %i.k = lshr i64 %.val6, 1                       ; 2 uses
  %i.l = icmp ult i64 %1, %i.k
  br i1 %i.l, label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.k, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.m, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @178, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #61
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.val, i64 %1
  %i.o = load i16, ptr %i.n, align 2, !noundef !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.p = zext i16 %i.o to i64                     ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.q = load i64, ptr %.8.val, align 8, !range !32, !noundef !31
  %i.r = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.s = trunc nuw i64 %i.q to i1
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !31, !align !36, !noundef !31 ; 5 uses
  br i1 %i.s, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14262)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.p, ptr %i.c, align 8, !noalias !14262
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !14262, !noundef !31
  %i.w = lshr i64 %i.v, 4                         ; 2 uses
  %i.x = icmp samesign ugt i64 %i.w, %i.p
  br i1 %i.x, label %bb.e, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14262
  store i64 %i.w, ptr %i.b, align 8, !noalias !14262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14262
  store ptr %i.c, ptr %i.a, align 8, !noalias !14262
  %.sroa.42.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i7, align 8, !noalias !14262
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @177, ptr %i.y, align 8, !noalias !14262
  %.sroa.46.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.46.0..sroa_idx.i8, align 8, !noalias !14262
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.z, align 8, !noalias !14262
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !14262
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @173, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #61, !noalias !14262
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14263)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !14264, !noundef !31
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.p ; 2 uses
  %i.ad = load i128, ptr %i.ac, align 16, !noalias !14264, !noundef !31 ; 5 uses
  %i.ae = trunc i128 %i.ad to i32
  %i.af = icmp ult i32 %i.ae, 13
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = lshr i128 %i.ad, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = lshr i128 %i.ad, 96
  %2 = trunc nuw nsw i128 %i.ai to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !14264, !nonnull !31, !noundef !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !14264, !noundef !31
  %i.an = and i64 %i.ah, 4294967295               ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !14264, !noundef !31
  %i.as = trunc i128 %i.ad to i64
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.e
  %i.av = trunc i128 %i.ad to i64
  %i.aw = and i64 %i.av, 15
  %i.ax = getelementptr i8, ptr %i.ac, i64 4
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.i = phi i64 [ %i.aw, %bb.g ], [ %i.at, %bb.f ] ; 6 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.au, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %.sroa.3.0.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ay = load i64, ptr %i.g, align 8, !range !32, !noundef !31
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !33, !noundef !31 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.az, label %bb.m, label %bb.n, !prof !34

bb.h:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE5valueCs14kWLkQVSKO_14deltalake_core.exit
  %i.bd = tail call { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericStringTypelEE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.t, i64 noundef %i.p) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.bf, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bg = load i64, ptr %i.h, align 8, !range !32, !noundef !31
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !33, !noundef !31 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.bh, label %bb.i, label %bb.j, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.bl = load i64, ptr %i.bk, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bj, i64 %i.bl) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %i.bk, align 8, !nonnull !31, !noundef !31 ; 3 uses
  %i.bn = icmp ule i64 %i.bf, %i.bj
  tail call void @llvm.assume(i1 %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr align 1 %i.be, i64 %i.bf, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.n, %bb.o
  %.sink6 = phi i64 [ %i.bb, %bb.n ], [ %i.bb, %bb.o ], [ %i.bj, %bb.k ], [ %i.bj, %bb.j ]
  %.sink = phi ptr [ %i.bp, %bb.n ], [ %i.bp, %bb.o ], [ %i.bm, %bb.k ], [ %i.bm, %bb.j ]
  %.sroa.3.0.i.i.sink = phi i64 [ %.sroa.3.0.i.i, %bb.n ], [ %.sroa.3.0.i.i, %bb.o ], [ %i.bf, %bb.k ], [ %i.bf, %bb.j ]
  store i64 %.sink6, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.i.i.sink, ptr %.sroa.63.0..sroa_idx, align 8
  ret void

bb.m:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit
  %i.bo = load i64, ptr %i.bc, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bb, i64 %i.bo) #56
  unreachable

bb.n:                                             ; preds = %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5valueCs14kWLkQVSKO_14deltalake_core.exit
  %i.bp = load ptr, ptr %i.bc, align 8, !nonnull !31, !noundef !31 ; 3 uses
  %i.bq = icmp samesign ule i64 %.sroa.3.0.i.i, %i.bb
  tail call void @llvm.assume(i1 %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not5 = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %.not5, label %bb.l, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i, i1 false)
  br label %bb.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan15process_filterss0_0Bd_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree nonnull readonly captures(address, read_provenance) %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [144 x i8], align 8               ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [112 x i8], align 16              ; 5 uses
  %i.m = alloca [112 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.l, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.0.val1) #62
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = getelementptr i8, ptr %.0.val, i64 664
  %.val = load ptr, ptr %i.n, align 8, !nonnull !31, !noundef !31 ; 5 uses
  %i.o = getelementptr i8, ptr %.0.val, i64 680
  %.val1 = load i8, ptr %i.o, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14339
  %i.p = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !14339
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %.val, ptr %i.j, align 8, !noalias !14339
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  invoke void @_RINvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB6_10StructType6leavesINtNtCsbvkFyIu7lgC_4core6option6OptionReEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r, ptr noalias noundef readonly captures(address, read_provenance) null, i64 undef)
          to label %bb.f unwind label %bb.d, !noalias !14339

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14341)
  %i.t = load ptr, ptr %i.j, align 8, !alias.scope !14342, !noalias !14339, !nonnull !31, !noundef !31
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !14343
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.thread.i unwind label %bb.an, !noalias !14339

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14345)
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !14346, !noalias !14339, !nonnull !31, !noundef !31
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !14347
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i unwind label %bb.h, !noalias !14339

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i, %bb.l, %bb.k, %bb.h
  %.pn17.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn15.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i ], [ %.pn.i, %bb.l ], [ %.pn.i, %bb.k ] ; 2 uses
  %.sroa.05.0.i = phi i1 [ %.sroa.05.1.i, %bb.h ], [ %.sroa.05.2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit26.i ], [ true, %bb.l ], [ true, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema19ColumnNamesAndTypesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.k) #59
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.an, !noalias !14339

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i, %bb.g
  %.sroa.05.1.i = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_names10ColumnNameB1l_EECs14kWLkQVSKO_14deltalake_core.exit35.invoke.i ], [ true, %bb.g ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14339
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !14339, !nonnull !31, !noundef !31 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !14339, !noundef !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14339
  %i.ae = atomicrmw add ptr %.val, i64 1 monotonic, align 8, !noalias !14339
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i
  store ptr %.val, ptr %i.g, align 8, !noalias !14339
  invoke void @_RNvMsb_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_10StructType13make_physical(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.r, i8 noundef %.val1)
          to label %bb.n unwind label %bb.m, !noalias !14339

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit22.i
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.o, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.aj, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14348)
  call void @llvm.experimental.noalias.scope.decl(metadata !14349)
  %i.ag = load ptr, ptr %i.g, align 8, !alias.scope !14350, !noalias !14339, !nonnull !31, !noundef !31
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !14351
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs14kWLkQVSKO_14deltalake_core.exit24.i

bb.l:                                             ; preds = %bb.k
end_hunk_2
begin_hunk_3_@_RNvMs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitionsNtB5_19DeltaTablePartition20from_partition_value:bb.a
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !31, !noundef !31 ; 2 uses
  %i.p = icmp ule i64 %i.f, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.l, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXsH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalarsNtB5_6ScalarNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.h)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #59
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEE8try_lockCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #57
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.k = load atomic i8, ptr %i.d monotonic, align 4
  %i.l = icmp ne i8 %i.k, 0
  call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1s_5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEEENCNvMs9_B10_BX_3new0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %i.l, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  %i.m = load i64, ptr %i.a, align 8, !range !32, !noundef !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !31, !align !36, !noundef !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !52, !noundef !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.r, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink3 = phi i8 [ %i.q, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.m, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink3, ptr %i.s, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #57
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_B10_BX_3new0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !40

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #57
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2pqxYH9ZEk8_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !31
  %i.f = lshr i64 %i.e, 4                         ; 2 uses
  %i.g = icmp ult i64 %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @172, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @173, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #61
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15638)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !15638, !noundef !31
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %1 ; 2 uses
  %i.m = load i128, ptr %i.l, align 16, !noalias !15638, !noundef !31 ; 5 uses
  %i.n = trunc i128 %i.m to i32
  %i.o = icmp ult i32 %i.n, 13
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i128 %i.m, 64
  %i.q = trunc nuw i128 %i.p to i64
  %i.r = lshr i128 %i.m, 96
  %2 = trunc nuw nsw i128 %i.r to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !15638, !nonnull !31, !noundef !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !15638, !noundef !31
  %i.w = and i64 %i.q, 4294967295                 ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !15638, !noundef !31
  %i.ab = trunc i128 %i.m to i64
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = trunc i128 %i.m to i64
  %i.af = and i64 %i.ae, 15
  %i.ag = getelementptr i8, ptr %i.l, i64 4
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.af, %bb.e ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi ptr [ %i.ag, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE5valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !31
  %i.f = lshr i64 %i.e, 4                         ; 2 uses
  %i.g = icmp ult i64 %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @177, ptr %i.h, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.46.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.i, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @173, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #61
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15641)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !15641, !noundef !31
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %1 ; 2 uses
  %i.m = load i128, ptr %i.l, align 16, !noalias !15641, !noundef !31 ; 5 uses
  %i.n = trunc i128 %i.m to i32
  %i.o = icmp ult i32 %i.n, 13
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i128 %i.m, 64
  %i.q = trunc nuw i128 %i.p to i64
  %i.r = lshr i128 %i.m, 96
  %2 = trunc nuw nsw i128 %i.r to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !15641, !nonnull !31, !noundef !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !15641, !noundef !31
  %i.w = and i64 %i.q, 4294967295                 ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.v
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !15641, !noundef !31
  %i.ab = trunc i128 %i.m to i64
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = trunc i128 %i.m to i64
  %i.af = and i64 %i.ae, 15
  %i.ag = getelementptr i8, ptr %i.l, i64 4
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi i64 [ %i.af, %bb.e ], [ %i.ac, %bb.d ]
  %.sroa.0.0.i = phi ptr [ %i.ag, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.ah = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ai = insertvalue { ptr, i64 } %i.ah, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ai
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder15boolean_builderNtB4_14BooleanBuilder12append_array(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !31
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder13append_buffer(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !31 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !range !33, !noundef !31
  %.not1 = icmp eq i64 %i.g, 0
  br i1 %.not1, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15646)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !15646, !noundef !31 ; 2 uses
  %i.j = add i64 %i.i, %i.e                       ; 3 uses
  %i.k = lshr i64 %i.j, 3                         ; 2 uses
  %i.l = and i64 %i.j, 7                          ; 2 uses
  %.not.i = icmp ne i64 %i.l, 0                   ; 2 uses
  %i.m = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.k, %i.m       ; 8 uses
  %i.n = and i64 %i.i, 7                          ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !15646 ; 5 uses
  br i1 %i.o, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %i.p = icmp ugt i64 %.sroa.0.0.i, %.pre.i
  br i1 %i.p, label %bb.h, label %bb.m

bb.e:                                             ; preds = %bb.d
  %.not8.i = icmp eq i64 %.pre.i, 0
  br i1 %.not8.i, label %bb.f, label %bb.g, !prof !34

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #61, !noalias !15646
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !15646, !nonnull !31, !noundef !31
  %i.s = trunc nuw nsw i64 %i.n to i8
  %notmask.i = shl nsw i8 -1, %i.s
  %i.t = getelementptr i8, ptr %i.r, i64 %.pre.i
  %i.u = getelementptr i8, ptr %i.t, i64 -1       ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !15646, !noundef !31
  %i.w = or i8 %i.v, %notmask.i
  store i8 %i.w, ptr %i.u, align 1, !noalias !15646
  br label %._crit_edge.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = sub nuw nsw i64 %.sroa.0.0.i, %.pre.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15647)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !15648, !noundef !31 ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.0.0.i, %i.z
  br i1 %i.aa, label %bb.i, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !34

bb.i:                                             ; preds = %bb.h
  %i.ab = and i64 %.sroa.0.0.i, 63
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 4611686018427387840
  %i.ad = add nuw nsw i64 %reass.sub.i.i, 64      ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %.sroa.0.0.i
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.i ], [ %i.ad, %bb.j ]
  %i.af = shl nuw nsw i64 %i.z, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.af, i64 %.sroa.4.0.i.i)
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer10reallocate(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f, i64 noundef %.sroa.0.0.i.i)
  %.pre11.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !15646
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #61, !noalias !15648
  unreachable

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i: ; preds = %bb.k, %bb.h
  %i.ag = phi i64 [ %.pre.i, %bb.h ], [ %.pre11.i, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !15646, !nonnull !31, !noundef !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 -1, i64 %i.x, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, %._crit_edge.i
  store i64 %.sroa.0.0.i, ptr %.phi.trans.insert.i, align 8, !alias.scope !15646
  br i1 %.not.i, label %bb.n, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !15646, !nonnull !31, !noundef !31
  %i.am = trunc nuw nsw i64 %i.l to i8
  %notmask9.i = shl nsw i8 -1, %i.am
  %i.an = xor i8 %notmask9.i, -1
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.k   ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !31
  %i.aq = and i8 %i.ap, %i.an
  store i8 %i.aq, ptr %i.ao, align 1
  br label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit

_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit: ; preds = %bb.m, %bb.n
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !15646
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !31
  %i.at = add i64 %i.as, %i.e
  store i64 %i.at, ptr %i.ar, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder8append_n.exit, %bb.o, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14BinaryViewTypeE11append_nullCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  tail call void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder21materialize_if_needed(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
  %i.b = load i64, ptr %i.a, align 8, !range !33, !noundef !31
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15655)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !15655, !noundef !31
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.e, 7
  %.not.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i to i64
  %.sroa.0.0.i = add nuw nsw i64 %i.f, %i.h       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !15655, !noundef !31 ; 3 uses
  %i.k = icmp ugt i64 %.sroa.0.0.i, %i.j
  br i1 %i.k, label %bb.c, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder7booleanNtB2_20BooleanBufferBuilder7advance.exit

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i64 %.sroa.0.0.i, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15656)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !15657, !noundef !31 ; 2 uses
  %i.o = icmp ugt i64 %.sroa.0.0.i, %i.n
  br i1 %i.o, label %bb.d, label %_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer7reserve.exit.i, !prof !34

bb.d:                                             ; preds = %bb.c
  %i.p = and i64 %.sroa.0.0.i, 63
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %reass.sub.i.i = and i64 %.sroa.0.0.i, 4611686018427387840
  %i.r = add nuw nsw i64 %reass.sub.i.i, 64       ; 2 uses
  %i.s = icmp samesign ult i64 %i.r, %.sroa.0.0.i
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.r, %bb.e ]
  %i.t = shl nuw nsw i64 %i.n, 1
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE17flush_in_progressCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !15742
  unreachable

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE14push_completedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !15747, !noalias !15748, !nonnull !31, !noundef !31
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.at = add nuw nsw i64 %i.ab, 1
  store i64 %i.at, ptr %i.aa, align 8, !alias.scope !15747, !noalias !15748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15743
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE14push_completedCs14kWLkQVSKO_14deltalake_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE6finishCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  tail call fastcc void @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE17flush_in_progressCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(208) %1) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvMNtNtCs7xHNgVo2C7m_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder6finish(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %bb.c unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l, %.body, %bb.m, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %eh.lpad-body, %bb.m ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.d) #59
          to label %bb.p unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !31
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE5clearCs14kWLkQVSKO_14deltalake_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !15770, !noundef !31
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE5clearCs14kWLkQVSKO_14deltalake_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner13drop_elementsjECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !15770, !noundef !31 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !15770, !nonnull !31, !noundef !31
  %i.r = add i64 %i.o, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 -1, i64 %i.r, i1 false)
  %.pre.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !15770
  %.pre.fr.i.i.i.i = freeze i64 %.pre.i.i.i.i     ; 3 uses
  %i.s = icmp ult i64 %.pre.fr.i.i.i.i, 8
  %i.t = add i64 %.pre.fr.i.i.i.i, 1
  %i.u = lshr i64 %i.t, 3
  %i.v = mul nuw i64 %i.u, 7
  %spec.select.i.i.i.i = select i1 %i.s, i64 %.pre.fr.i.i.i.i, i64 %i.v
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !15770, !noundef !31 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECs14kWLkQVSKO_14deltalake_core.exit5.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.h, align 8, !alias.scope !15770, !nonnull !31, !noundef !31
  %i.aa = add i64 %i.x, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.z, i8 -1, i64 %i.aa, i1 false)
  %.pre.i.i.i2.i = load i64, ptr %i.w, align 8, !alias.scope !15770
  %.pre.fr.i.i.i3.i = freeze i64 %.pre.i.i.i2.i   ; 3 uses
  %i.ab = icmp ult i64 %.pre.fr.i.i.i3.i, 8
  %i.ac = add i64 %.pre.fr.i.i.i3.i, 1
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = mul nuw i64 %i.ad, 7
  %spec.select.i.i.i4.i = select i1 %i.ab, i64 %.pre.fr.i.i.i3.i, i64 %i.ae
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECs14kWLkQVSKO_14deltalake_core.exit5.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECs14kWLkQVSKO_14deltalake_core.exit5.i: ; preds = %bb.i, %bb.h
  %i.af = phi i64 [ %spec.select.i.i.i4.i, %bb.i ], [ 0, %bb.h ]
  store i64 0, ptr %i.j, align 8, !alias.scope !15770
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.af, ptr %i.ag, align 8, !alias.scope !15770
  br label %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE5clearCs14kWLkQVSKO_14deltalake_core.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ah = phi i64 [ %spec.select.i.i.i.i, %bb.g ], [ 0, %bb.f ]
  store i64 0, ptr %i.j, align 8, !alias.scope !15770
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %i.ah, ptr %i.ai, align 8, !alias.scope !15770
  br label %.body

_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE5clearCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown10scopeguard10ScopeGuardQINtNtBL_3raw8RawTablejENCNvMs6_B1B_B1y_5clear0EECs14kWLkQVSKO_14deltalake_core.exit5.i, %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  store i64 0, ptr %1, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs5_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferoEINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecoEE4fromCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE5clearCs14kWLkQVSKO_14deltalake_core.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.m, %bb.j ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15771)
  %i.ak = load ptr, ptr %i.c, align 8, !alias.scope !15771, !noundef !31 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.l

bb.l:                                             ; preds = %.body
  %i.am = atomicrmw sub ptr %i.ak, i64 1 release, align 8, !noalias !15772
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c) #57
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.o

bb.n:                                             ; preds = %_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE5clearCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 26, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.o:                                             ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array7builder26generic_bytes_view_builderINtB4_22GenericByteViewBuilderNtNtB8_5types14StringViewTypeE9get_valueCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !31
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @187) #61
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !31, !noundef !31
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %1 ; 2 uses
  %i.g = load i128, ptr %i.f, align 16, !noundef !31 ; 6 uses
  %i.h = trunc i128 %i.g to i32
  %i.i = icmp ult i32 %i.h, 13
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i128 %i.g, 64                       ; 2 uses
  %i.k = trunc i128 %i.j to i32
  %i.l = lshr i128 %i.g, 96
  %2 = trunc nuw nsw i128 %i.l to i64             ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !31 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = trunc i64 %i.n to i32
  %i.q = icmp ult i32 %i.k, %i.p
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = trunc i128 %i.g to i64
  %i.s = and i64 %i.r, 15
  %i.t = getelementptr i8, ptr %i.f, i64 4
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.u = trunc i128 %i.g to i64
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %2                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i64, ptr %i.x, align 8, !noundef !31 ; 2 uses
  %.not = icmp ugt i64 %i.w, %i.y
  br i1 %.not, label %bb.h, label %bb.i, !prof !34

bb.g:                                             ; preds = %bb.d
  %i.z = trunc nuw i128 %i.j to i64
  %i.aa = and i64 %i.z, 4294967295                ; 3 uses
  %i.ab = icmp samesign ult i64 %i.aa, %i.n
  br i1 %i.ab, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.w, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #61
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !31, !noundef !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %2
  br label %bb.n

bb.j:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !31, !noundef !31
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.aa ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !31 ; 2 uses
  %i.ak = trunc i128 %i.g to i64
  %i.al = and i64 %i.ak, 4294967295               ; 2 uses
  %i.am = add nuw nsw i64 %i.al, %2               ; 2 uses
  %.not12 = icmp ugt i64 %i.am, %i.aj
  br i1 %.not12, label %bb.l, label %bb.m, !prof !34

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #61
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.am, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #61
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noundef !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %2
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m, %bb.e
  %.sroa.4.0 = phi i64 [ %i.s, %bb.e ], [ %i.al, %bb.m ], [ %i.v, %bb.i ]
  %.sroa.0.0 = phi ptr [ %i.t, %bb.e ], [ %i.ap, %bb.m ], [ %i.ae, %bb.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  %i.aq = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ar = insertvalue { ptr, i64 } %i.aq, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.ar
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB4_9BufWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE9flush_bufCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !31 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %.not3.not = icmp eq i64 %i.d, 0
  br i1 %.not3.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  store i8 1, ptr %i.f, align 8
  %i.j = invoke { ptr, i64 } @_RNvMNvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.j, 0
  %i.m = extractvalue { ptr, i64 } %i.j, 1        ; 5 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.m)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  %i.n = load i64, ptr %i.h, align 8, !alias.scope !15778, !noalias !15779, !noundef !31 ; 3 uses
  %i.o = icmp sgt i64 %i.n, -1
  call void @llvm.assume(i1 %i.o)
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc
  store i64 %i.n, ptr %i.h, align 8, !alias.scope !15778, !noalias !15779
  store i8 0, ptr %i.f, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.a, %bb.e
  %.sroa.0.1 = phi ptr [ @192, %bb.e ], [ null, %bb.a ], [ null, %bb.f ]
  call void @_RNvXs_NvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.1

bb.f:                                             ; preds = %.noexc
  %i.p = load ptr, ptr %i.i, align 8, !alias.scope !15778, !noalias !15779, !nonnull !31, !noundef !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.l, i64 range(i64 0, -9223372036854775808) %i.m, i1 false)
  %.pre.i.i = load i64, ptr %i.h, align 8, !alias.scope !15778, !noalias !15779
  %i.r = add i64 %.pre.i.i, %i.m
  store i64 %i.r, ptr %i.h, align 8, !alias.scope !15778, !noalias !15779
  store i8 0, ptr %i.f, align 8
  %i.s = load i64, ptr %i.b, align 8, !noundef !31
  %i.t = add i64 %i.s, %i.m                       ; 2 uses
  store i64 %i.t, ptr %i.b, align 8
  %i.u = load ptr, ptr %i.a, align 8, !nonnull !31, !align !36, !noundef !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !31 ; 2 uses
  %i.x = icmp sgt i64 %i.w, -1
  call void @llvm.assume(i1 %i.x)
  %.not = icmp ult i64 %i.t, %i.w
  br i1 %.not, label %bb.b, label %._crit_edge

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtBN_9BufWriterpE9flush_buf8BufGuardECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE14write_all_coldB1a_(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !noundef !31 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !31 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE9flush_bufB1a_(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !range !35
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ]
  %.not4 = icmp samesign ult i64 %2, %i.h
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15790)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !15790, !noalias !15791, !noundef !31 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15790, !noalias !15791, !nonnull !31, !noundef !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, 9223372036854775807) %2, i1 false), !noalias !15790
  %i.n = add nuw i64 %i.i, %2
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !15790, !noalias !15791
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.o, align 8
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferNtNtCs2pqxYH9ZEk8_3std2io5Write9write_allB8_.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.q, align 8, !nonnull !31, !noundef !31 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.v = cmpxchg weak ptr %i.r, i64 0, i64 8 acquire monotonic, align 8, !noalias !15792
  %i.w = extractvalue { i64, i1 } %i.v, 1
  br i1 %i.w, label %bb.g, label %bb.f, !prof !40

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.x = tail call noundef zeroext i1 @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.r, i64 undef, i32 noundef 1000000000), !noalias !15792 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.i
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef range(i64 0, -9223372036854775808) %2)
          to label %bb.h unwind label %bb.j, !noalias !15792

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !15793, !noalias !15792, !noundef !31 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = load ptr, ptr %i.u, align 8, !alias.scope !15793, !noalias !15792, !nonnull !31, !noundef !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !15794
  %.pre.i.i.us.i = load i64, ptr %i.t, align 8, !alias.scope !15793, !noalias !15792
  %i.ac = add i64 %.pre.i.i.us.i, %2
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !15793, !noalias !15792
  %i.ad = cmpxchg ptr %i.r, i64 8, i64 0 release monotonic, align 8, !noalias !15792
  %.sroa.18.0.in.i.i.i.i4.i.us.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.sroa.18.0.in.i.i.i.i4.i.us.i, label %_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferNtNtCs2pqxYH9ZEk8_3std2io5Write9write_allB8_.exit, label %bb.i, !prof !40

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.r, i1 noundef zeroext false), !noalias !15792
  br label %_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferNtNtCs2pqxYH9ZEk8_3std2io5Write9write_allB8_.exit

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = cmpxchg ptr %i.r, i64 8, i64 0 release monotonic, align 8, !noalias !15792
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.af, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %common.resume.i, label %bb.k, !prof !40

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs8_NtCs8fBJGmGoRiY_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.r, i1 noundef zeroext false)
          to label %common.resume.i unwind label %bb.l, !noalias !15792

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !15792
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.ae

_RNvYNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferNtNtCs2pqxYH9ZEk8_3std2io5Write9write_allB8_.exit: ; preds = %bb.e, %bb.h, %bb.i
end_hunk_4
begin_hunk_5_@_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cf, ptr %i.ch, align 1
  store i8 39, ptr %0, align 8
  br label %bb.as

bb.bo:                                            ; preds = %bb.aq
  tail call void @llvm.trap()
  unreachable

bb.bp:                                            ; preds = %bb.ar
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !31, !noundef !31 ; 2 uses
  %i.ck = atomicrmw add ptr %i.cj, i64 1 monotonic, align 8
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.ar
  tail call void @llvm.trap()
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cj, ptr %i.cn, align 8
  store i8 40, ptr %0, align 8
  br label %bb.as

bb.bs:                                            ; preds = %bb.bp
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs2_NtCshmPyUV8PP35_6chrono6formatNtB5_10ParseErrorNtNtCsbvkFyIu7lgC_4core5error5Error11description(ptr noalias readonly captures(none) %0) unnamed_addr #18 {
bb.a:
  ret { ptr, i64 } { ptr @558, i64 41 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physicalNtB5_20MetricObserverStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RNvXs_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBK_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBK_6marker4SendEL_EENtB4_6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.d = load i64, ptr %i.b, align 8, !range !61, !noundef !31 ; 3 uses
  %i.e = icmp eq i64 %i.d, 3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 3, ptr %0, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %or.cond.not.i = icmp eq i64 %i.d, 0
  br i1 %or.cond.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.45.0..sroa_idx, i64 40, i1 false)
  br label %_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physicalNtB7_20MetricObserverStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0Bb_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.45.0..sroa_idx, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !19315, !nonnull !31, !noundef !31
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void %i.g(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.g unwind label %bb.f, !noalias !19315

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #59
          to label %bb.i unwind label %bb.h, !noalias !19315

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.45.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19315
  br label %_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physicalNtB7_20MetricObserverStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0Bb_.exit

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #58, !noalias !19316
  unreachable

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physicalNtB7_20MetricObserverStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0Bb_.exit: ; preds = %bb.d, %bb.g
  store i64 %i.d, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.j

bb.j:                                             ; preds = %_RNCNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physicalNtB7_20MetricObserverStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0Bb_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion8physicalNtB5_20MetricObserverStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9size_hint(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !31, !noundef !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !31, !align !36, !noundef !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !31, !nonnull !31
  tail call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.b) #62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array18logical_null_count(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !noundef !31
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %.not, i64 0, i64 %i.d
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array3len(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !31
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef align 8 ptr @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array5nulls(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !31
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array6as_any(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %0) unnamed_addr #18 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @559, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array6offset(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #18 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array8is_empty(ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !31
  %i.c = icmp eq i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array12struct_arrayNtB5_11StructArrayNtB7_5Array9data_type(ptr noalias noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(104) %0) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayRINtB5_20GenericByteViewArrayNtNtB9_5types14BinaryViewTypeENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !align !36, !noundef !31 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19319)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !19319, !noundef !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !19319, !noundef !31
  %i.f = lshr i64 %i.e, 4
  %i.g = icmp ult i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %i.i = load i128, ptr %i.h, align 16, !noalias !19319, !noundef !31 ; 5 uses
  %i.j = trunc i128 %i.i to i32
  %i.k = icmp ult i32 %i.j, 13
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i128 %i.i, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = lshr i128 %i.i, 96
  %2 = trunc nuw nsw i128 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !19319, !nonnull !31, !noundef !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !19319, !noundef !31
  %i.s = and i64 %i.m, 4294967295                 ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !19319, !noundef !31
  %i.x = trunc i128 %i.i to i64
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %2
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = trunc i128 %i.i to i64
  %i.ab = and i64 %i.aa, 15
  %i.ac = getelementptr i8, ptr %i.h, i64 4
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14BinaryViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.ab, %bb.c ], [ %i.y, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.ad = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ae
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs2_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayRINtB5_20GenericByteViewArrayNtNtB9_5types14StringViewTypeENtB7_13ArrayAccessor15value_uncheckedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !31, !align !36, !noundef !31 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19322)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !19322, !noundef !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !19322, !noundef !31
  %i.f = lshr i64 %i.e, 4
  %i.g = icmp ult i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %i.i = load i128, ptr %i.h, align 16, !noalias !19322, !noundef !31 ; 5 uses
  %i.j = trunc i128 %i.i to i32
  %i.k = icmp ult i32 %i.j, 13
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i128 %i.i, 64
  %i.m = trunc nuw i128 %i.l to i64
  %i.n = lshr i128 %i.i, 96
  %2 = trunc nuw nsw i128 %i.n to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !19322, !nonnull !31, !noundef !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !19322, !noundef !31
  %i.s = and i64 %i.m, 4294967295                 ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !19322, !noundef !31
  %i.x = trunc i128 %i.i to i64
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %2
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = trunc i128 %i.i to i64
  %i.ab = and i64 %i.aa, 15
  %i.ac = getelementptr i8, ptr %i.h, i64 4
  br label %_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit

_RNvMs_NtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_arrayINtB4_20GenericByteViewArrayNtNtB8_5types14StringViewTypeE15value_uncheckedCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.ab, %bb.c ], [ %i.y, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.ac, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.ad = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.ae
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #7 {
bb.a:
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #62
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i64 @_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher6finish(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #21 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 8, !alias.scope !19325
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !19325
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.17.0..sroa_idx.i, align 8, !alias.scope !19325 ; 3 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !alias.scope !19325
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !19325, !noundef !31
  %i.c = shl i64 %i.b, 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !19325, !noundef !31
  %i.f = or i64 %i.c, %i.e                        ; 2 uses
  %i.g = xor i64 %i.f, %.sroa.22.0.copyload.i     ; 3 uses
  %i.h = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.i = add i64 %i.g, %.sroa.10.0.copyload.i     ; 2 uses
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.k = xor i64 %i.j, %i.h                       ; 3 uses
  %i.l = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 16)
  %i.m = xor i64 %i.l, %i.i                       ; 3 uses
  %i.n = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 32)
  %i.o = add i64 %i.i, %i.k                       ; 3 uses
  %i.p = add i64 %i.m, %i.n                       ; 2 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.k, i64 %i.k, i64 17)
  %i.r = xor i64 %i.o, %i.q                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 21)
  %i.t = xor i64 %i.s, %i.p                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 32)
  %i.v = xor i64 %i.p, %i.f
  %i.w = xor i64 %i.u, 255
  %i.x = add i64 %i.v, %i.r                       ; 3 uses
  %i.y = add i64 %i.t, %i.w                       ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 13)
  %i.aa = xor i64 %i.x, %i.z                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.aa, %i.y                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.ah, %i.af                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.ao = xor i64 %i.an, %i.al                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = add i64 %i.ao, %i.am                    ; 3 uses
  %i.at = add i64 %i.aq, %i.ar                    ; 2 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 17)
  %i.av = xor i64 %i.au, %i.as                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 21)
  %i.ax = xor i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.az = add i64 %i.av, %i.at
  %i.ba = add i64 %i.ax, %i.ay                    ; 2 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 13)
  %i.bc = xor i64 %i.bb, %i.az                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 16)
  %i.be = xor i64 %i.bd, %i.ba                    ; 2 uses
  %i.bf = add i64 %i.bc, %i.ba                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 17)
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  %i.bj = xor i64 %i.bh, %i.bg
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = xor i64 %i.bk, %i.bf
  ret i64 %i.bl
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  tail call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19329
  store i8 -1, ptr %i.a, align 1, !noalias !19329
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #62, !noalias !19330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19329
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extensionNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier12MergeBarrierNtB5_22UserDefinedLogicalNode11expressionsB1a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(448) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19334)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !19335
  %i.b = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2113) 112, i64 noundef range(i64 8, 17) 16) #60, !noalias !19335 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i, !prof !34

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #56, !noalias !19335
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !19335
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d)
          to label %_RNvXs5_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB5_12MergeBarrierNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore11expressions.exit unwind label %bb.c, !noalias !19334

bb.c:                                             ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 16) #60, !noalias !19334
  resume { ptr, i32 } %i.e

_RNvXs5_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB5_12MergeBarrierNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore11expressions.exit: ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !19334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !19335
  store i64 1, ptr %0, align 8, !alias.scope !19334, !noalias !19336
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.f, align 8, !alias.scope !19334, !noalias !19336
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.g, align 8, !alias.scope !19334, !noalias !19336
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extensionNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier12MergeBarrierNtB5_22UserDefinedLogicalNode15fmt_for_explainB1a_(ptr noalias readonly align 16 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19339)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !19339, !nonnull !31, !noundef !31
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !19339, !nonnull !31, !align !36, !noundef !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !31, !noalias !19339, !nonnull !31
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @397, i64 noundef 12) #62, !noalias !19339, !inline_history !19340
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extensionNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier12MergeBarrierNtB5_22UserDefinedLogicalNode16check_invariantsB1a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noalias readonly align 16 captures(none) %1, i1 zeroext %2) unnamed_addr #20 {
bb.a:
  store i64 20, ptr %0, align 8, !alias.scope !19343
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extensionNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrier12MergeBarrierNtB5_22UserDefinedLogicalNode21with_exprs_and_inputsB1a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(448) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [464 x i8], align 16              ; 9 uses
  %i.b = alloca [448 x i8], align 16              ; 7 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB5_12MergeBarrierNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9extension26UserDefinedLogicalNodeCore21with_exprs_and_inputs(ptr noalias noundef nonnull sret([448 x i8]) align 16 captures(none) dereferenceable(448) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(448) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %3)
  %i.c = load i64, ptr %i.b, align 16, !range !50, !noundef !31 ; 2 uses
  %i.d = icmp eq i64 %i.c, 36
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(400) %.sroa.66.0..sroa_idx, i64 400, i1 false)
end_hunk_5
