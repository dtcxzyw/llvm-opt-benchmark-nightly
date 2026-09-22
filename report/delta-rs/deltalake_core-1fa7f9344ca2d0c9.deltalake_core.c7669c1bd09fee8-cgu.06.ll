Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.06?download=true
inline.NumInlined: 10989
inline.NumDeleted: 2487
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2M_s_0ECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !2203, !noalias !2204, !nonnull !92, !noundef !92
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !2203, !noalias !2204, !noundef !92 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !2204, !noalias !2203, !nonnull !92, !noundef !92
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !2204, !noalias !2203, !noundef !92 ; 2 uses
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
  %i.fs = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.fr), !noalias !2205 ; 2 uses
  %i.ft = icmp eq i8 %i.fs, 0
  br i1 %i.ft, label %bb.af, label %_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i

_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i: ; preds = %.lr.ph, %._crit_edge
  %.sroa.0.0.i.i105.i.i = phi i8 [ %i.fp, %._crit_edge ], [ %i.fs, %.lr.ph ] ; 2 uses
  %i.fu = icmp eq i8 %.sroa.0.0.i.i105.i.i, 0
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.fw = load i8, ptr %i.fv, align 8, !range !150, !alias.scope !2203, !noalias !2204
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.fy = load i8, ptr %i.fx, align 8, !range !150, !alias.scope !2204, !noalias !2203
  %i.fz = sub nsw i8 %i.fw, %i.fy
  %.sroa.0.0.i106.i.i = select i1 %i.fu, i8 %i.fz, i8 %.sroa.0.0.i.i105.i.i
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ag:                                            ; preds = %bb.c
  %i.ga = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8, !alias.scope !2182, !noalias !2183, !nonnull !92, !noundef !92
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !alias.scope !2182, !noalias !2183, !noundef !92 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !2183, !noalias !2182, !nonnull !92, !noundef !92
  %i.gg = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !2183, !noalias !2182, !noundef !92 ; 2 uses
  %spec.store.select3.i.i = tail call i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gh)
  %i.gi = tail call i32 @memcmp(ptr nonnull %i.gb, ptr nonnull %i.gf, i64 %spec.store.select3.i.i), !noalias !2195 ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp eq i32 %i.gi, 0
  %i.gl = sub i64 %i.gd, %i.gh
  %spec.select93.i.i = select i1 %i.gk, i64 %i.gl, i64 %i.gj
  %i.gm = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select93.i.i, i64 0)
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ah:                                            ; preds = %bb.c
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gp = tail call fastcc noundef i8 @_RNvXso_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.go) #57 ; 2 uses
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.au, label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ai:                                            ; preds = %bb.c
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gs = load i64, ptr %i.gr, align 8, !range !93, !alias.scope !2182, !noalias !2183, !noundef !92
  %.not.i.i = icmp eq i64 %i.gs, -9223372036854775808
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !range !93, !alias.scope !2183, !noalias !2182, !noundef !92 ; 2 uses
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
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !2182, !noalias !2183, !nonnull !92, !noundef !92
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !2182, !noalias !2183, !noundef !92 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !2183, !noalias !2182, !nonnull !92, !noundef !92
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !2183, !noalias !2182, !noundef !92 ; 2 uses
  %spec.store.select4.i.i = tail call i64 @llvm.umin.i64(i64 %i.gy, i64 %i.hc)
  %i.hd = tail call i32 @memcmp(ptr nonnull %i.gw, ptr nonnull %i.ha, i64 %spec.store.select4.i.i), !noalias !2195 ; 2 uses
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
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !2182, !noalias !2183, !nonnull !92, !noundef !92
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !2182, !noalias !2183, !noundef !92 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !2183, !noalias !2182, !nonnull !92, !noundef !92
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !2183, !noalias !2182, !noundef !92 ; 2 uses
  %spec.store.select5.i.i = tail call i64 @llvm.umin.i64(i64 %i.hl, i64 %i.hp)
  %i.hq = tail call i32 @memcmp(ptr nonnull %i.hj, ptr nonnull %i.hn, i64 %spec.store.select5.i.i), !noalias !2195 ; 2 uses
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp eq i32 %i.hq, 0
  %i.ht = sub i64 %i.hl, %i.hp
  %spec.select96.i.i = select i1 %i.hs, i64 %i.ht, i64 %i.hr
  %i.hu = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select96.i.i, i64 0)
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

bb.ap:                                            ; preds = %bb.ab
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.hw = load i8, ptr %i.hv, align 8, !range !155, !alias.scope !2182, !noalias !2183, !noundef !92 ; 2 uses
  %.not82.i.i = icmp eq i8 %i.hw, 2
  %i.hx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.hy = load i8, ptr %i.hx, align 8, !range !155, !alias.scope !2183, !noalias !2182, !noundef !92 ; 3 uses
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
  %i.ic = load i8, ptr %i.ib, align 8, !range !155, !alias.scope !2182, !noalias !2183, !noundef !92 ; 2 uses
  %.not76.i.i = icmp eq i8 %i.ic, 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ie = load i8, ptr %i.id, align 8, !range !155, !alias.scope !2183, !noalias !2182, !noundef !92 ; 3 uses
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
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !2182, !noalias !2183, !nonnull !92, !noundef !92
  %i.ii = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !2182, !noalias !2183, !noundef !92 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !2183, !noalias !2182, !nonnull !92, !noundef !92
  %i.im = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.in = load i64, ptr %i.im, align 8, !alias.scope !2183, !noalias !2182, !noundef !92 ; 2 uses
  %spec.store.select9.i.i = tail call i64 @llvm.umin.i64(i64 %i.ij, i64 %i.in)
  %i.io = tail call i32 @memcmp(ptr nonnull %i.ih, ptr nonnull %i.il, i64 %spec.store.select9.i.i), !noalias !2195 ; 2 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp eq i32 %i.io, 0
  %i.ir = sub i64 %i.ij, %i.in
  %spec.select101.i.i = select i1 %i.iq, i64 %i.ir, i64 %i.ip
  %i.is = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select101.i.i, i64 0)
  br label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i

_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i: ; preds = %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.az, %bb.ay, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ah, %bb.ag, %_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %._crit_edge55, %.lr.ph59
  %.sroa.0.0.i.i = phi i8 [ %i.g, %.lr.ph59 ], [ %i.hh, %bb.al ], [ %i.gp, %bb.ah ], [ %..i.i, %bb.ak ], [ %i.gm, %bb.ag ], [ %i.ia, %bb.as ], [ %i.hu, %bb.ao ], [ %.100.i.i, %bb.ay ], [ %.95.i.i, %bb.an ], [ %i.u, %._crit_edge55 ], [ %i.ca, %bb.s ], [ %i.cf, %bb.t ], [ %i.cs, %bb.u ], [ %i.df, %bb.v ], [ %i.dn, %bb.x ], [ %i.ef, %bb.z ], [ %i.ek, %bb.aa ], [ %i.ea, %bb.y ], [ %.99.i.i, %bb.aw ], [ %.97.i.i, %bb.ar ], [ %.sroa.0.0.i106.i.i, %_RNvXsqJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_17UnloadPartitionByNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i.i ], [ %i.en, %bb.ab ], [ %i.fb, %bb.ac ], [ %i.if, %bb.av ], [ %i.is, %bb.az ], [ %.98.i.i, %bb.at ], [ %i.hz, %bb.aq ], [ %.sroa.0.0.i.i.i.i.i, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.0.0.i.fr.i = freeze i8 %.sroa.0.0.i.i    ; 2 uses
  %i.it = icmp eq i8 %.sroa.0.0.i.fr.i, 0
  br i1 %i.it, label %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread5.i, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread5.i: ; preds = %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %bb.c
  br label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i, %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread5.i
  %i.iu = phi i8 [ 3, %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread5.i ], [ %.sroa.0.0.i.fr.i, %_RNvXsqf_NtCs4lawaffTVVK_9sqlparser3astNtB6_16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.i ] ; 2 uses
  %.not14 = icmp eq i8 %i.iu, 3
  br i1 %.not14, label %bb.b, label %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread

_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.aq, %bb.av, %bb.as, %bb.am, %bb.ax, %bb.aj, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit, %._crit_edge60
  %.sroa.0.0 = phi i8 [ %i.a, %._crit_edge60 ], [ 1, %bb.aq ], [ 1, %bb.av ], [ 1, %bb.as ], [ 1, %bb.am ], [ 1, %bb.ax ], [ 1, %bb.aj ], [ %i.iu, %_RNCNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtB7_15SlicePartialOrd15partial_compare0Cs14kWLkQVSKO_14deltalake_core.exit ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2O_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 72057594037927936) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
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
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2O_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 20226693063278018) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 20226693063278018) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.f = load i8, ptr %i.e, align 8, !range !152, !alias.scope !2210, !noalias !2211, !noundef !92 ; 3 uses
  %.not.i = icmp eq i8 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.h = load i8, ptr %i.g, align 8, !range !152, !alias.scope !2211, !noalias !2210, !noundef !92 ; 3 uses
  %.not12.i = icmp eq i8 %i.h, 3                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  br i1 %.not12.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  br i1 %.not12.i, label %bb.e, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !93, !alias.scope !2210, !noalias !2211, !noundef !92
  %.not14.i = icmp eq i64 %i.j, -9223372036854775808
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 328 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !range !93, !alias.scope !2211, !noalias !2210, !noundef !92
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
  %i.q = tail call fastcc noundef i8 @_RNvXsk_NtNtCs4lawaffTVVK_9sqlparser3ast9data_typeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.p) #57, !inline_history !2209 ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.k, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.j:                                             ; preds = %bb.g
  %i.s = tail call noundef i8 @_RNvXs2_NtCs4lawaffTVVK_9sqlparser3astNtB5_5IdentNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.k), !inline_history !2209 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit

bb.k:                                             ; preds = %bb.i
  %i.u = load i64, ptr %i.c, align 8, !range !109, !alias.scope !2210, !noalias !2211, !noundef !92
  %.not17.i = icmp eq i64 %i.u, 69
  %i.v = load i64, ptr %i.d, align 8, !range !109, !alias.scope !2211, !noalias !2210, !noundef !92
  %.not18.i = icmp eq i64 %i.v, 69                ; 2 uses
  br i1 %.not17.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %.not18.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread, label %bb.n

bb.m:                                             ; preds = %bb.k
  br i1 %.not18.i, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit, label %_RNvXstf_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.w = tail call fastcc noundef i8 @_RNvXs6K_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(456) %i.d) #57, !inline_history !2209
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
define internal fastcc noundef range(i8 -1, 3) i8 @_RINvNtNtCsbvkFyIu7lgC_4core5slice3cmp13chaining_implNtNtCs4lawaffTVVK_9sqlparser3ast19TruncateTableTargetINtNtB6_6option6OptionNtNtB6_3cmp8OrderingENtNtB6_7convert10InfallibleNCNvXs4_B2_BO_NtB2_15SlicePartialOrd15partial_compare0NCB2P_s_0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 288230376151711744) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %1) ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %1, i64 %3)
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.sroa.01.033 = phi i64 [ %i.b, %.backedge ], [ 0, %bb.a ] ; 3 uses
  %i.b = add nuw nsw i64 %.sroa.01.033, 1         ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.033 ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %.sroa.01.033 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2229, !noalias !2230, !nonnull !92, !noundef !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !2229, !noalias !2230, !noundef !92 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2230, !noalias !2229, !nonnull !92, !noundef !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !2230, !noalias !2229, !noundef !92 ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.l, i64 range(i64 0, 104811045873349726) %i.h) ; 2 uses
  %exitcond36.not49 = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %exitcond36.not49, label %._crit_edge52, label %.lr.ph51

bb.b:                                             ; preds = %_RNvXs4a_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp.exit
  %exitcond36.not = icmp eq i64 %i.n, %.sroa.0.0.i.i.i
  br i1 %exitcond36.not, label %._crit_edge52, label %.lr.ph51

._crit_edge52:                                    ; preds = %bb.b, %.lr.ph
  %i.m = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.h, i64 %i.l)
  br label %_RNvXsl_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmpCs14kWLkQVSKO_14deltalake_core.exit

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %.sroa.01.0.i.i50 = phi i64 [ %i.n, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %i.n = add nuw i64 %.sroa.01.0.i.i50, 1         ; 2 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.f, i64 %.sroa.01.0.i.i50 ; 5 uses
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.j, i64 %.sroa.01.0.i.i50 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  %i.q = load i64, ptr %i.o, align 8, !range !93, !alias.scope !2231, !noalias !2233, !noundef !92
  %i.r = icmp ne i64 %i.q, -9223372036854775808   ; 2 uses
  %i.s = zext i1 %i.r to i8
  %i.t = load i64, ptr %i.p, align 8, !range !93, !alias.scope !2232, !noalias !2234, !noundef !92
  %i.u = icmp ne i64 %i.t, -9223372036854775808   ; 3 uses
  %.neg.i = sext i1 %i.u to i8
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph51
  br i1 %i.u, label %bb.g, label %bb.e

bb.d:                                             ; preds = %.lr.ph51
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ay = load i32, ptr %i.ax, align 8, !range !159, !alias.scope !37855, !noalias !37854, !noundef !92
  %.sroa.0.0.shrunk.i.not = icmp eq i32 %i.ay, %i.aw
  br i1 %.sroa.0.0.shrunk.i.not, label %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread8, label %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread8, %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %.lr.ph15, %.split, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.f, %bb.j, %bb.i, %bb.d, %bb.c, %.lr.ph, %bb.a
  %i.az = phi i1 [ false, %.lr.ph ], [ true, %bb.a ], [ true, %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread8 ], [ false, %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %.lr.ph15 ], [ false, %.split ], [ false, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.f ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %i.az

_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread8: ; preds = %bb.h, %bb.g, %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.ba = add nuw i64 %.sroa.01.014, 1            ; 2 uses
  %exitcond33.not = icmp eq i64 %i.ba, %2
  br i1 %exitcond33.not, label %_RNvXs49_NtCs4lawaffTVVK_9sqlparser3astNtB6_14ObjectNamePartNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.lr.ph15
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37870)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37874)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !37875, !noalias !37876, !noundef !92 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !37876, !noalias !37875, !noundef !92
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !37876, !noalias !37875, !nonnull !92, !noundef !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !37875, !noalias !37876, !nonnull !92, !noundef !92
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f), !noalias !37877, !inline_history !37867
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.p = load i32, ptr %i.o, align 8, !range !159, !alias.scope !37875, !noalias !37876, !noundef !92 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 1114112
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.r = load i32, ptr %i.q, align 8, !range !159, !alias.scope !37876, !noalias !37875, !noundef !92 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.d
  %i.t = icmp eq i32 %i.r, 1114112
  br i1 %i.t, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %.split.i, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !37878, !noalias !37879, !nonnull !92, !noundef !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !37879, !noalias !37878, !nonnull !92, !noundef !92
  %i.y = tail call fastcc noundef zeroext i1 @_RNvXs6J_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.x) #57, !noalias !37880, !inline_history !37868
  br i1 %i.y, label %bb.b, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.c, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %.split.i ], [ false, %_RNvXs_NtCs4lawaffTVVK_9sqlparser3astNtB4_5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15DictionaryFieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15RaisErrorOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #29 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.06
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.06
  %.val = load i8, ptr %i.b, align 1, !range !155, !noundef !92
  %.val5 = load i8, ptr %i.c, align 1, !range !155, !noundef !92
  %.not = icmp eq i8 %.val, %.val5                ; 2 uses
  %i.d = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.d, %2
  %or.cond.not = select i1 %.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15SequenceOptionsINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [336 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [336 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = tail call fastcc noundef zeroext i1 @_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast15SequenceOptionsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(336) %i.c) #57 ; 2 uses
  %i.e = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %2
  %or.cond = select i1 %i.d, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.d, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast15TransactionModeINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #29 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.08 = phi i64 [ %i.h, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.08 ; 2 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.01.08 ; 2 uses
  %.val = load i8, ptr %i.b, align 1, !range !150, !noundef !92
  %i.d = getelementptr i8, ptr %i.b, i64 1
  %.val5 = load i8, ptr %i.d, align 1
  %.val6 = load i8, ptr %i.c, align 1, !range !150, !noundef !92
  %i.e = getelementptr i8, ptr %i.c, i64 1
  %.val7 = load i8, ptr %i.e, align 1
  %i.f = icmp eq i8 %.val, %.val6
  %i.g = icmp eq i8 %.val5, %.val7
  %spec.select.i.not.i.not = select i1 %i.f, i1 %i.g, i1 false ; 2 uses
  %i.h = add nuw i64 %.sroa.01.08, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.h, %2
  %or.cond.not = select i1 %spec.select.i.not.i.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %spec.select.i.not.i.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #27 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9
  %.sroa.01.017 = phi i64 [ %i.iz, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.017 ; 35 uses
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %.sroa.01.017 ; 35 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37914)
  %i.d = load i8, ptr %i.b, align 8, !range !153, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.e = load i8, ptr %i.c, align 8, !range !153, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.d, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9 [
    i8 1, label %bb.c
    i8 8, label %bb.d
    i8 9, label %bb.e
    i8 10, label %bb.f
    i8 12, label %bb.g
    i8 14, label %bb.h
    i8 15, label %bb.i
    i8 18, label %bb.j
    i8 19, label %bb.k
    i8 21, label %bb.l
    i8 22, label %bb.m
    i8 23, label %bb.n
    i8 24, label %bb.o
    i8 26, label %bb.p
    i8 27, label %bb.q
    i8 28, label %bb.r
    i8 29, label %bb.s
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !93, !alias.scope !37915, !noalias !37916, !noundef !92
  %.not36.i.i = icmp eq i64 %i.h, -9223372036854775808 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !93, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.k = icmp eq i64 %i.j, -9223372036854775808   ; 2 uses
  %brmerge.i.i = or i1 %.not36.i.i, %i.k
  %.mux.i.i = and i1 %.not36.i.i, %i.k
  br i1 %brmerge.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.v, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !93, !alias.scope !37915, !noalias !37916, !noundef !92
  %.not33.i.i = icmp eq i64 %i.r, -9223372036854775808 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !93, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.u = icmp eq i64 %i.t, -9223372036854775808   ; 2 uses
  %brmerge54.i.i = or i1 %.not33.i.i, %i.u
  %.mux55.i.i = and i1 %.not33.i.i, %i.u
  br i1 %brmerge54.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.af

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = load i32, ptr %i.v, align 4, !range !151, !alias.scope !37915, !noalias !37916, !noundef !92
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.y = load i32, ptr %i.x, align 4, !range !151, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !150, !alias.scope !37915, !noalias !37916, !noundef !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !range !150, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.ah, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.i:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.ai, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.j:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !93, !alias.scope !37915, !noalias !37916, !noundef !92
  %i.ar = icmp ne i64 %i.aq, -9223372036854775808 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !93, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.au = icmp ne i64 %i.at, -9223372036854775808 ; 2 uses
  %i.av = xor i1 %i.ar, %i.au
  br i1 %i.av, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.aj

bb.k:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !37915, !noalias !37916, !noundef !92
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.ba = icmp eq i64 %i.ax, %i.az
  br i1 %i.ba, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.l:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !150, !alias.scope !37915, !noalias !37916, !noundef !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !range !150, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bi = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bh) #57
  br i1 %i.bi, label %bb.am, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.n:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.ap, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.o:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !range !155, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %.not25.i.i = icmp eq i8 %i.bp, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !range !155, !alias.scope !37916, !noalias !37915, !noundef !92 ; 2 uses
  br i1 %.not25.i.i, label %bb.ar, label %bb.aq

bb.p:                                             ; preds = %bb.b
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bt = load i8, ptr %i.bs, align 8, !range !150, !alias.scope !37915, !noalias !37916, !noundef !92
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bv = load i8, ptr %i.bu, align 8, !range !150, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.bw = icmp eq i8 %i.bt, %i.bv
  br i1 %i.bw, label %bb.as, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.aw, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ce = tail call fastcc noundef zeroext i1 @_RNvXsn_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cd) #57
  br i1 %i.ce, label %bb.ax, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.b
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !93, !alias.scope !37915, !noalias !37916, !noundef !92
  %.not.i.i = icmp eq i64 %i.cg, -9223372036854775808 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !93, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.cj = icmp eq i64 %i.ci, -9223372036854775808 ; 2 uses
  %brmerge56.i.i = or i1 %.not.i.i, %i.cj
  %.mux57.i.i = and i1 %.not.i.i, %i.cj
  br i1 %brmerge56.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %bb.ba

bb.t:                                             ; preds = %bb.c
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.co = icmp eq i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.u, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %bcmp38.i.i = tail call i32 @bcmp(ptr nonnull %i.cs, ptr nonnull %i.cq, i64 %i.cl), !noalias !37917
  %i.ct = icmp eq i32 %bcmp38.i.i, 0
  br i1 %i.ct, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.v:                                             ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %i.cy = icmp eq i64 %i.m, 0
  br i1 %i.cy, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.v, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i
  %.sroa.01.015.i = phi i64 [ %i.fq, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i ], [ 0, %bb.v ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %.sroa.01.015.i ; 7 uses
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %.sroa.01.015.i ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37918), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37919), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37920), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37921), !noalias !37917
  %i.db = load i32, ptr %i.cz, align 8, !range !154, !alias.scope !37922, !noalias !37923, !noundef !92 ; 2 uses
  %i.dc = load i32, ptr %i.da, align 8, !range !154, !alias.scope !37924, !noalias !37925, !noundef !92
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.w, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.w:                                             ; preds = %.lr.ph.i5
  switch i32 %i.db, label %default.unreachable [
    i32 1, label %.split.i
    i32 2, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i
    i32 3, label %bb.x
    i32 4, label %bb.ab
    i32 0, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i
  ]

default.unreachable:                              ; preds = %bb.w
  unreachable

.split.i:                                         ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.df = load i32, ptr %i.de, align 4, !range !151, !alias.scope !37922, !noalias !37923, !noundef !92
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !range !151, !alias.scope !37924, !noalias !37925, !noundef !92
  %i.di = icmp eq i32 %i.df, %i.dh
  br i1 %i.di, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !37922, !noalias !37923, !noundef !92 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !37924, !noalias !37925, !noundef !92
  %i.dn = icmp eq i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.y, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !37924, !noalias !37925, !nonnull !92, !noundef !92
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !37922, !noalias !37923, !nonnull !92, !noundef !92
  %i.ds = icmp eq i64 %i.dk, 0
  br i1 %i.ds, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.dt = add nuw i64 %.sroa.01.06.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dt, %i.dk
  br i1 %exitcond.not.i.i.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %bb.z
  %.sroa.01.06.i.i.i.i = phi i64 [ %i.dt, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.du = getelementptr inbounds nuw [64 x i8], ptr %i.dr, i64 %.sroa.01.06.i.i.i.i ; 3 uses
  %i.dv = getelementptr inbounds nuw [64 x i8], ptr %i.dp, i64 %.sroa.01.06.i.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37926), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37927), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37928), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37929), !noalias !37917
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !37930, !noalias !37931, !noundef !92 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !37932, !noalias !37933, !noundef !92
  %i.ea = icmp eq i64 %i.dx, %i.dz
  br i1 %i.ea, label %bb.aa, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !37932, !noalias !37933, !nonnull !92, !noundef !92
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !37930, !noalias !37931, !nonnull !92, !noundef !92
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ee, ptr nonnull %i.ec, i64 %i.dx), !noalias !37934
  %i.ef = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ef, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.eh = load i32, ptr %i.eg, align 8, !range !159, !alias.scope !37930, !noalias !37931, !noundef !92
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.ej = load i32, ptr %i.ei, align 8, !range !159, !alias.scope !37932, !noalias !37933, !noundef !92
  %.sroa.0.0.shrunk.i.i.not.i.i.i.i = icmp eq i32 %i.ej, %i.eh
  br i1 %.sroa.0.0.shrunk.i.i.not.i.i.i.i, label %bb.z, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ab:                                            ; preds = %bb.w
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !37922, !noalias !37923, !noundef !92 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !37924, !noalias !37925, !noundef !92
  %i.eo = icmp eq i64 %i.el, %i.en
  br i1 %i.eo, label %bb.ac, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !37924, !noalias !37925, !nonnull !92, !noundef !92
  %i.er = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !alias.scope !37922, !noalias !37923, !nonnull !92, !noundef !92
  %i.et = icmp eq i64 %i.el, 0
  br i1 %i.et, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i, label %.lr.ph.i4.i.i.i

bb.ad:                                            ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i8.i.i.i
  %i.eu = add nuw i64 %.sroa.01.06.i5.i.i.i, 1    ; 2 uses
  %exitcond.not.i10.i.i.i = icmp eq i64 %i.eu, %i.el
  br i1 %exitcond.not.i10.i.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %bb.ac, %bb.ad
  %.sroa.01.06.i5.i.i.i = phi i64 [ %i.eu, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [64 x i8], ptr %i.es, i64 %.sroa.01.06.i5.i.i.i ; 3 uses
  %i.ew = getelementptr inbounds nuw [64 x i8], ptr %i.eq, i64 %.sroa.01.06.i5.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37935), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37936), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37937), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37938), !noalias !37917
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !37939, !noalias !37940, !noundef !92 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !37941, !noalias !37942, !noundef !92
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ae, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ae:                                            ; preds = %.lr.ph.i4.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !alias.scope !37941, !noalias !37942, !nonnull !92, !noundef !92
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !alias.scope !37939, !noalias !37940, !nonnull !92, !noundef !92
  %bcmp.i.i.i7.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ff, ptr nonnull %i.fd, i64 %i.ey), !noalias !37943
  %i.fg = icmp eq i32 %bcmp.i.i.i7.i.i.i, 0
  br i1 %i.fg, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i8.i.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i8.i.i.i: ; preds = %bb.ae
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fi = load i32, ptr %i.fh, align 8, !range !159, !alias.scope !37939, !noalias !37940, !noundef !92
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 56
  %i.fk = load i32, ptr %i.fj, align 8, !range !159, !alias.scope !37941, !noalias !37942, !noundef !92
  %.sroa.0.0.shrunk.i.i.not.i9.i.i.i = icmp eq i32 %i.fk, %i.fi
  br i1 %.sroa.0.0.shrunk.i.i.not.i9.i.i.i, label %bb.ad, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.w
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !range !151, !alias.scope !37922, !noalias !37923, !noundef !92
  %i.fn = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !range !151, !alias.scope !37924, !noalias !37925, !noundef !92
  %i.fp = icmp eq i32 %i.fm, %i.fo
  br i1 %i.fp, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i: ; preds = %bb.ad, %bb.z, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ac, %bb.y, %.split.i, %bb.w
  %i.fq = add nuw i64 %.sroa.01.015.i, 1          ; 2 uses
  %exitcond.not.i6 = icmp eq i64 %i.fq, %i.m
  br i1 %exitcond.not.i6, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %.lr.ph.i5

bb.af:                                            ; preds = %bb.e
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.fv = icmp eq i64 %i.fs, %i.fu
  br i1 %i.fv, label %bb.ag, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %bcmp35.i.i = tail call i32 @bcmp(ptr nonnull %i.fz, ptr nonnull %i.fx, i64 %i.fs), !noalias !37917
  %i.ga = icmp eq i32 %bcmp35.i.i, 0
  br i1 %i.ga, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ah:                                            ; preds = %bb.h
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %bcmp32.i.i = tail call i32 @bcmp(ptr nonnull %i.ge, ptr nonnull %i.gc, i64 %i.ag), !noalias !37917
  %i.gf = icmp eq i32 %bcmp32.i.i, 0
  br i1 %i.gf, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ai:                                            ; preds = %bb.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %bcmp31.i.i = tail call i32 @bcmp(ptr nonnull %i.gj, ptr nonnull %i.gh, i64 %i.al), !noalias !37917
  %i.gk = icmp eq i32 %bcmp31.i.i, 0
  br i1 %i.gk, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.aj:                                            ; preds = %bb.j
  %or.cond.i.i = and i1 %i.ar, %i.au
  br i1 %or.cond.i.i, label %bb.ak, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9

bb.ak:                                            ; preds = %bb.aj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gm = load i64, ptr %i.gl, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.al, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gt = load ptr, ptr %i.gs, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %bcmp30.i.i = tail call i32 @bcmp(ptr nonnull %i.gt, ptr nonnull %i.gr, i64 %i.gm), !noalias !37917
  %i.gu = icmp eq i32 %bcmp30.i.i, 0
  br i1 %i.gu, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.am:                                            ; preds = %bb.m
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gw = load i8, ptr %i.gv, align 8, !range !155, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %.not28.i.i = icmp eq i8 %i.gw, 2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.gy = load i8, ptr %i.gx, align 8, !range !155, !alias.scope !37916, !noalias !37915, !noundef !92 ; 2 uses
  br i1 %.not28.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %3 = icmp eq i8 %i.gw, %i.gy
  br i1 %3, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ao:                                            ; preds = %bb.am
  %4 = icmp eq i8 %i.gy, 2
  br i1 %4, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ap:                                            ; preds = %bb.n
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %bcmp27.i.i = tail call i32 @bcmp(ptr nonnull %i.hc, ptr nonnull %i.ha, i64 %i.bk), !noalias !37917
  %i.hd = icmp eq i32 %bcmp27.i.i, 0
  br i1 %i.hd, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.aq:                                            ; preds = %bb.o
  %5 = icmp eq i8 %i.bp, %i.br
  br i1 %5, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ar:                                            ; preds = %bb.o
  %i.he = icmp eq i8 %i.br, 2
  br i1 %i.he, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.as:                                            ; preds = %bb.p
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.hj = icmp eq i64 %i.hg, %i.hi
  br i1 %i.hj, label %bb.at, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.hk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %i.ho = icmp eq i64 %i.hg, 0
  br i1 %i.ho, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %.lr.ph.i

bb.au:                                            ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.hp = add nuw i64 %.sroa.01.06.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hp, %i.hg
  br i1 %exitcond.not.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at, %bb.au
  %.sroa.01.06.i = phi i64 [ %i.hp, %bb.au ], [ 0, %bb.at ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [64 x i8], ptr %i.hn, i64 %.sroa.01.06.i ; 3 uses
  %i.hr = getelementptr inbounds nuw [64 x i8], ptr %i.hl, i64 %.sroa.01.06.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37944), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37945), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37946), !noalias !37917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37947), !noalias !37917
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !37948, !noalias !37949, !noundef !92 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !37950, !noalias !37951, !noundef !92
  %i.hw = icmp eq i64 %i.ht, %i.hv
  br i1 %i.hw, label %bb.av, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.av:                                            ; preds = %.lr.ph.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !37950, !noalias !37951, !nonnull !92, !noundef !92
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !37948, !noalias !37949, !nonnull !92, !noundef !92
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ia, ptr nonnull %i.hy, i64 %i.ht), !noalias !37952
  %i.ib = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ib, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.av
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.id = load i32, ptr %i.ic, align 8, !range !159, !alias.scope !37948, !noalias !37949, !noundef !92
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %i.if = load i32, ptr %i.ie, align 8, !range !159, !alias.scope !37950, !noalias !37951, !noundef !92
  %.sroa.0.0.shrunk.i.i.not.i = icmp eq i32 %i.if, %i.id
  br i1 %.sroa.0.0.shrunk.i.i.not.i, label %bb.au, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.aw:                                            ; preds = %bb.q
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %bcmp24.i.i = tail call i32 @bcmp(ptr nonnull %i.ij, ptr nonnull %i.ih, i64 %i.by), !noalias !37917
  %i.ik = icmp eq i32 %bcmp24.i.i, 0
  br i1 %i.ik, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ax:                                            ; preds = %bb.r
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.im = load i8, ptr %i.il, align 8, !range !155, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %.not22.i.i = icmp eq i8 %i.im, 2
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.io = load i8, ptr %i.in, align 8, !range !155, !alias.scope !37916, !noalias !37915, !noundef !92 ; 2 uses
  br i1 %.not22.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %6 = icmp eq i8 %i.im, %i.io
  br i1 %6, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.az:                                            ; preds = %bb.ax
  %7 = icmp eq i8 %i.io, 2
  br i1 %7, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.ba:                                            ; preds = %bb.s
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !37915, !noalias !37916, !noundef !92 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !37916, !noalias !37915, !noundef !92
  %i.it = icmp eq i64 %i.iq, %i.is
  br i1 %i.it, label %bb.bb, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.bb:                                            ; preds = %bb.ba
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !37916, !noalias !37915, !nonnull !92, !noundef !92
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !37915, !noalias !37916, !nonnull !92, !noundef !92
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.ix, ptr nonnull %i.iv, i64 %i.iq), !noalias !37917
  %i.iy = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.iy, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c, %bb.e, %bb.s
  %.sroa.0.0.shrunk.i.i = phi i1 [ %.mux55.i.i, %bb.e ], [ %.mux.i.i, %bb.c ], [ %.mux57.i.i, %bb.s ]
  br i1 %.sroa.0.0.shrunk.i.i, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, %.lr.ph, %bb.q, %bb.t, %bb.d, %bb.af, %bb.h, %bb.j, %bb.i, %bb.ba, %bb.m, %bb.ak, %bb.n, %bb.p, %bb.as, %bb.r, %bb.ap, %bb.u, %bb.ao, %bb.aq, %bb.al, %bb.aw, %bb.ai, %bb.ar, %bb.ah, %bb.g, %bb.f, %bb.k, %bb.l, %bb.bb, %bb.ag, %bb.an, %bb.az, %bb.ay, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i, %bb.av, %.lr.ph.i, %bb.x, %.split.i, %bb.ab, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i, %.lr.ph.i5, %bb.ae, %.lr.ph.i4.i.i.i, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i8.i.i.i, %bb.aa, %.lr.ph.i.i.i.i, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.a
  %8 = phi i1 [ true, %bb.a ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.ae ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ false, %.lr.ph.i.i.i.i ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i8.i.i.i ], [ false, %.lr.ph.i4.i.i.i ], [ false, %.lr.ph.i5 ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.i ], [ false, %bb.ab ], [ false, %.split.i ], [ false, %.lr.ph.i ], [ false, %bb.av ], [ false, %bb.ai ], [ false, %bb.aw ], [ false, %bb.al ], [ false, %bb.aq ], [ false, %bb.ao ], [ false, %bb.u ], [ false, %bb.ap ], [ false, %bb.af ], [ false, %bb.j ], [ false, %bb.ak ], [ false, %bb.p ], [ false, %bb.as ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.i ], [ false, %bb.ba ], [ false, %bb.m ], [ false, %bb.h ], [ true, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9 ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ], [ false, %.lr.ph ], [ false, %bb.q ], [ false, %bb.t ], [ false, %bb.d ], [ false, %bb.ay ], [ false, %bb.an ], [ false, %bb.bb ], [ false, %bb.f ], [ false, %bb.ah ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.ar ], [ false, %bb.ag ], [ false, %bb.az ]
  ret i1 %8

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread9: ; preds = %bb.au, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast19CopyLegacyCsvOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread7.i, %bb.ay, %bb.az, %bb.an, %bb.ag, %bb.bb, %bb.l, %bb.k, %bb.f, %bb.g, %bb.ah, %bb.ar, %bb.ai, %bb.aw, %bb.al, %bb.aq, %bb.ao, %bb.u, %bb.ap, %bb.aj, %bb.v, %bb.at, %bb.b, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit
  %i.iz = add nuw i64 %.sroa.01.017, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.iz, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16CopyLegacyOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #28 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.06 ; 4 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %.sroa.01.06 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37960)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37962)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load i8, ptr %i.e, align 8, !range !132, !alias.scope !37963, !noalias !37964, !noundef !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load i8, ptr %i.g, align 8, !range !132, !alias.scope !37964, !noalias !37963, !noundef !92
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !37963, !noalias !37964, !noundef !92 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !37964, !noalias !37963, !noundef !92
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !37964, !noalias !37963, !nonnull !92, !noundef !92
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !37963, !noalias !37964, !nonnull !92, !noundef !92
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k), !noalias !37965
  %i.s = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.s, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.u = load i32, ptr %i.t, align 8, !range !159, !alias.scope !37963, !noalias !37964, !noundef !92
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.w = load i32, ptr %i.v, align 8, !range !159, !alias.scope !37964, !noalias !37963, !noundef !92
  %.sroa.0.0.shrunk.i.i.not = icmp eq i32 %i.w, %i.u
  br i1 %.sroa.0.0.shrunk.i.i.not, label %bb.b, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, %bb.d, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %bb.d ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #28 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %.sroa.01.06 ; 6 uses
  %i.d = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %.sroa.01.06 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37975)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !37976, !noalias !37977, !noundef !92 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !37977, !noalias !37976, !noundef !92
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !37977, !noalias !37976, !nonnull !92, !noundef !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !37976, !noalias !37977, !nonnull !92, !noundef !92
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f), !noalias !37978
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.p = load i32, ptr %i.o, align 8, !range !159, !alias.scope !37976, !noalias !37977, !noundef !92 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 1114112
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.r = load i32, ptr %i.q, align 8, !range !159, !alias.scope !37977, !noalias !37976, !noundef !92 ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %bb.g, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i32 %i.r, 1114112
  br i1 %i.t, label %bb.g, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !37976, !noalias !37977, !noundef !92 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !37977, !noalias !37976, !noundef !92
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !37977, !noalias !37976, !nonnull !92, !noundef !92
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !37976, !noalias !37977, !nonnull !92, !noundef !92
  %bcmp6.i.i = tail call i32 @bcmp(ptr nonnull %i.ac, ptr nonnull %i.aa, i64 %i.v), !noalias !37978
  %i.ad = icmp eq i32 %bcmp6.i.i, 0
  br i1 %i.ad, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.af = load i32, ptr %i.ae, align 8, !range !159, !alias.scope !37976, !noalias !37977, !noundef !92
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ah = load i32, ptr %i.ag, align 8, !range !159, !alias.scope !37977, !noalias !37976, !noundef !92
  %.sroa.0.0.shrunk.i.i.not = icmp eq i32 %i.ah, %i.af
  br i1 %.sroa.0.0.shrunk.i.i.not, label %bb.b, label %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread

_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.b, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit, %bb.h, %bb.f, %.lr.ph, %bb.c, %bb.e, %bb.g, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %bb.f ], [ false, %bb.h ], [ false, %_RNvYNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs14kWLkQVSKO_14deltalake_core.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split, %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [456 x i8], ptr %0, i64 %.sroa.01.06 ; 8 uses
  %i.d = getelementptr inbounds nuw [456 x i8], ptr %1, i64 %.sroa.01.06 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37987)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.f = load i8, ptr %i.e, align 8, !range !152, !alias.scope !37986, !noalias !37987, !noundef !92 ; 2 uses
  %.not.i = icmp eq i8 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.h = load i8, ptr %i.g, align 8, !range !152, !alias.scope !37987, !noalias !37986, !noundef !92 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %i.j = icmp eq i8 %i.h, 3
  br i1 %i.j, label %bb.e, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.l = load i64, ptr %i.k, align 8, !range !93, !alias.scope !37986, !noalias !37987, !noundef !92
  %.not4.i = icmp eq i64 %i.l, -9223372036854775808
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  %i.n = load i64, ptr %i.m, align 8, !range !93, !alias.scope !37987, !noalias !37986, !noundef !92
  %i.o = icmp eq i64 %i.n, -9223372036854775808   ; 2 uses
  br i1 %.not4.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.o, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.o, label %bb.k, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37989)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !37990, !noalias !37991, !noundef !92 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !37991, !noalias !37990, !noundef !92
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.i, label %_RNvXste_NtCs4lawaffTVVK_9sqlparser3astNtB6_18OperateFunctionArgNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread

bb.i:                                             ; preds = %bb.h
end_hunk_1
