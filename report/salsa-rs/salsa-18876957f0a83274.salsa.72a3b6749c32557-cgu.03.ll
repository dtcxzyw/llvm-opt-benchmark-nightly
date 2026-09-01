Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.03?download=true
inline.NumInlined: 204
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMB8_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0EB1e_:bb.a
  %i.bv = load i32, ptr %i.bu, align 8, !range !53, !alias.scope !223, !noalias !224, !noundef !16 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, %i.bt
  %i.bx = icmp ult i32 %i.bv, %i.bt
  %i.by = icmp ult i32 %i.br, %i.bp
  %spec.select.i8 = select i1 %i.bw, i1 %i.by, i1 %i.bx
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit6, %bb.e
  %.sroa.0.0.i.i7 = phi i1 [ %i.bn, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit6 ], [ %spec.select.i8, %bb.e ] ; 3 uses
  %i.bz = select i1 %.sroa.0.0.i.i7, ptr %i.ao, ptr %i.am, !unpredictable !16
  %i.ca = select i1 %.sroa.0.0.i.i4, ptr %i.aj, ptr %i.bz, !unpredictable !16 ; 5 uses
  %i.cb = select i1 %.sroa.0.0.i.i4, ptr %i.am, ptr %i.ao, !unpredictable !16
  %i.cc = select i1 %.sroa.0.0.i.i7, ptr %i.aq, ptr %i.cb, !unpredictable !16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !235, !noalias !236, !noundef !16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !alias.scope !236, !noalias !235, !noundef !16 ; 2 uses
  %i.ch = icmp eq i32 %i.ce, %i.cg
  %i.ci = icmp ult i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.f, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit12

bb.f:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !alias.scope !236, !noalias !235, !noundef !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cm = load i32, ptr %i.cl, align 4, !alias.scope !235, !noalias !236, !noundef !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !range !53, !alias.scope !236, !noalias !235, !noundef !16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !range !53, !alias.scope !235, !noalias !236, !noundef !16 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %i.co
  %i.cs = icmp ult i32 %i.cq, %i.co
  %i.ct = icmp ult i32 %i.cm, %i.ck
  %spec.select.i11 = select i1 %i.cr, i1 %i.ct, i1 %i.cs
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit12

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit12: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9, %bb.f
  %.sroa.0.0.i.i10 = phi i1 [ %i.ci, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9 ], [ %spec.select.i11, %bb.f ] ; 2 uses
  %i.cu = select i1 %.sroa.0.0.i.i7, ptr %i.am, ptr %i.aq, !unpredictable !16
  %i.cv = select i1 %.sroa.0.0.i.i4, ptr %i.ao, ptr %i.aj, !unpredictable !16
  %i.cw = select i1 %.sroa.0.0.i.i10, ptr %i.cc, ptr %i.ca, !unpredictable !16
  %i.cx = select i1 %.sroa.0.0.i.i10, ptr %i.ca, ptr %i.cc, !unpredictable !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1k_2id2IdENCINvMB8_SB1f_16sort_unstable_byNCNvMs1_B1i_NtB1i_11IdentityMap5drain0E0EB1k_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 33) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1152 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1x_2id2IdENCINvMB8_SB1s_16sort_unstable_byNCNvMs1_B1v_NtB1v_11IdentityMap5drain0E0EB1x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 1                           ; 6 uses
  %i.d = icmp samesign ugt i64 %1, 7
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.f = getelementptr [24 x i8], ptr %i.a, i64 %i.c ; 7 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMB8_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0EB1e_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMB8_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0EB1e_(ptr noundef %i.e, ptr noundef %i.f)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !240
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 4, %bb.c ], [ 1, %bb.d ] ; 4 uses
  %i.g = sub nuw nsw i64 %1, %i.c                 ; 2 uses
  %i.h = icmp samesign ult i64 %.sroa.0.0.i, %i.c
  br i1 %i.h, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i, %bb.e
  %i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.g
  br i1 %i.i, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ar, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.05.08.1.i
  %.idx.1.i = mul nuw nsw i64 %.sroa.05.08.1.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.1.i ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !alias.scope !240
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !252, !noalias !253, !noundef !16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.p = load i32, ptr %i.o, align 8, !alias.scope !254, !noalias !255, !noundef !16 ; 2 uses
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %.split.i.1.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.1.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.1.i: ; preds = %.lr.ph.1.i
  %i.r = icmp ult i32 %i.n, %i.p
  br i1 %i.r, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.1.i
  %.sroa.622.0..sroa_idx.phi.trans.insert.i.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.622.0.copyload.pre.i.1.i = load i32, ptr %.sroa.622.0..sroa_idx.phi.trans.insert.i.1.i, align 8, !alias.scope !256, !noalias !237
  %.sroa.723.0..sroa_idx.phi.trans.insert.i.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.723.0.copyload.pre.i.1.i = load i32, ptr %.sroa.723.0..sroa_idx.phi.trans.insert.i.1.i, align 4, !alias.scope !256, !noalias !237
  br label %bb.f

.split.i.1.i:                                     ; preds = %.lr.ph.1.i
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !254, !noalias !255, !noundef !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !252, !noalias !253, !noundef !16 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.x = load i32, ptr %i.w, align 8, !range !53, !alias.scope !254, !noalias !255, !noundef !16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.z = load i32, ptr %i.y, align 8, !range !53, !alias.scope !252, !noalias !253, !noundef !16 ; 3 uses
  %i.aa = icmp eq i32 %i.z, %i.x
  %i.ab = icmp ult i32 %i.z, %i.x
  %i.ac = icmp ult i32 %i.v, %i.t
  %spec.select.i.i32.1.i = select i1 %i.aa, i1 %i.ac, i1 %i.ab
  br i1 %spec.select.i.i32.1.i, label %bb.f, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i

bb.f:                                             ; preds = %.split.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i
  %.sroa.723.0.copyload.i.1.i = phi i32 [ %.sroa.723.0.copyload.pre.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i ], [ %i.v, %.split.i.1.i ] ; 2 uses
  %.sroa.622.0.copyload.i.1.i = phi i32 [ %.sroa.622.0.copyload.pre.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i ], [ %i.z, %.split.i.1.i ] ; 3 uses
  %.sroa.019.0.copyload.i.1.i = load i64, ptr %i.k, align 8, !alias.scope !256, !noalias !237
  %.sroa.521.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.521.0.copyload.i.1.i = load i32, ptr %.sroa.521.0..sroa_idx.i.1.i, align 4, !alias.scope !256, !noalias !237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !alias.scope !256, !noalias !237
  %i.ad = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ad, label %.split5._crit_edge.i.1.i, label %.lr.ph.i31.1.i

.lr.ph.i31.1.i:                                   ; preds = %bb.f, %.backedge.i.1.i
  %.sroa.0.06.i.1.i = phi ptr [ %i.ae, %.backedge.i.1.i ], [ %i.l, %bb.f ] ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -24 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -16
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !257, !noalias !262, !noundef !16 ; 2 uses
  %i.ah = icmp eq i32 %i.n, %i.ag
  br i1 %i.ah, label %.split5.i.1.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i: ; preds = %.lr.ph.i31.1.i
  %i.ai = icmp ult i32 %i.n, %i.ag
  br i1 %i.ai, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.split5.i.1.i:                                    ; preds = %.lr.ph.i31.1.i
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !257, !noalias !262, !noundef !16
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -8
  %i.am = load i32, ptr %i.al, align 8, !range !53, !alias.scope !257, !noalias !262, !noundef !16 ; 2 uses
  %i.an = icmp eq i32 %.sroa.622.0.copyload.i.1.i, %i.am
  %i.ao = icmp ult i32 %.sroa.622.0.copyload.i.1.i, %i.am
  %i.ap = icmp ult i32 %.sroa.723.0.copyload.i.1.i, %i.ak
  %spec.select.i9.i.1.i = select i1 %i.an, i1 %i.ap, i1 %i.ao
  br i1 %spec.select.i9.i.1.i, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.backedge.i.1.i:                                  ; preds = %.split5.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !alias.scope !256, !noalias !237
  %i.aq = icmp eq ptr %i.ae, %i.f
  br i1 %i.aq, label %.split5._crit_edge.i.1.i, label %.lr.ph.i31.1.i

.split5._crit_edge.i.1.i:                         ; preds = %.backedge.i.1.i, %.split5.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i, %bb.f
  %.sroa.0.0.lcssa.i.1.i = phi ptr [ %i.l, %bb.f ], [ %.sroa.0.06.i.1.i, %.split5.i.1.i ], [ %.sroa.0.06.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i ], [ %i.f, %.backedge.i.1.i ] ; 5 uses
  store i64 %.sroa.019.0.copyload.i.1.i, ptr %.sroa.0.0.lcssa.i.1.i, align 8, !alias.scope !256, !noalias !265
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 8
  store i32 %i.n, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !256, !noalias !265
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 12
  store i32 %.sroa.521.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !256, !noalias !265
  %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 16
  store i32 %.sroa.622.0.copyload.i.1.i, ptr %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !256, !noalias !265
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 20
  store i32 %.sroa.723.0.copyload.i.1.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !256, !noalias !265
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i: ; preds = %.split5._crit_edge.i.1.i, %.split.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.1.i
  %i.ar = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i, %.loopexit.i
  %i.as = add nsw i64 %1, -1                      ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.as
  %i.av = getelementptr i8, ptr %i.f, i64 -24
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i
  %i.aw = getelementptr i8, ptr %i.cm, i64 24     ; 3 uses
  %i.ax = getelementptr i8, ptr %i.cl, i64 24
  %i.ay = and i64 %1, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.i

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.bs, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ba, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.a, %.loopexit.1.i ] ; 5 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.f, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cm, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.av, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.05.i.i = phi ptr [ %i.cl, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.au, %.loopexit.1.i ] ; 5 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cn, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.at, %.loopexit.1.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !270)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !280, !noalias !283, !noundef !16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !284, !noalias !285, !noundef !16 ; 2 uses
  %i.bf = icmp eq i32 %i.bc, %i.be
  %i.bg = icmp ult i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !alias.scope !284, !noalias !285, !noundef !16
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !280, !noalias !283, !noundef !16
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !range !53, !alias.scope !284, !noalias !285, !noundef !16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !range !53, !alias.scope !280, !noalias !283, !noundef !16 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, %i.bm
  %i.bq = icmp ult i32 %i.bo, %i.bm
  %i.br = icmp ult i32 %i.bk, %i.bi
  %spec.select.i.i.i = select i1 %i.bp, i1 %i.br, i1 %i.bq
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.bg, %.lr.ph.i.i ], [ %spec.select.i.i.i, %bb.g ] ; 3 uses
  %..i23.i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i23.i.i, i64 24, i1 false), !alias.scope !240, !noalias !286
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i.i, i64 24, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i.i, i64 0, i64 24
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !300, !noalias !301, !noundef !16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !alias.scope !302, !noalias !303, !noundef !16 ; 2 uses
  %i.bx = icmp eq i32 %i.bu, %i.bw
  %i.by = icmp ult i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.h, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i

bb.h:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !302, !noalias !303, !noundef !16
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !alias.scope !300, !noalias !301, !noundef !16
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !range !53, !alias.scope !302, !noalias !303, !noundef !16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !range !53, !alias.scope !300, !noalias !301, !noundef !16 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, %i.ce
  %i.ci = icmp ult i32 %i.cg, %i.ce
  %i.cj = icmp ult i32 %i.cc, %i.ca
  %spec.select.i25.i.i = select i1 %i.ch, i1 %i.cj, i1 %i.ci
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i: ; preds = %bb.h, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i
  %.sroa.0.0.i.i24.i.i = phi i1 [ %i.by, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i ], [ %spec.select.i25.i.i, %bb.h ] ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i24.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.ck = xor i1 %.sroa.0.0.i.i24.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !240, !noalias !304
  %.neg.i.i.i = sext i1 %i.ck to i64
  %i.cl = getelementptr [24 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i24.i.i to i64
  %i.cm = getelementptr [24 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %.not.a = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.aw ; 2 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not.a, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i.i, i64 24, i1 false), !alias.scope !240
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not.a, i64 24, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.aw
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 24
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.i ]
  %i.co = icmp ne ptr %.sroa.06.1.i.i, %i.aw
  %i.cp = icmp ne ptr %.sroa.011.1.i.i, %i.ax
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp, !prof !308
  br i1 %or.cond.i.i, label %bb.k, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1x_2id2IdENCINvMB8_SB1s_16sort_unstable_byNCNvMs1_B1v_NtB1v_11IdentityMap5drain0E0EB1x_.exit, !prof !308

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #15
          to label %.noexc.i unwind label %bb.l, !noalias !237

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = mul nuw nsw i64 %1, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.cr, i1 false), !alias.scope !240, !noalias !309
  resume { ptr, i32 } %i.cq

.lr.ph.i:                                         ; preds = %bb.e, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ea, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i ], [ %.sroa.0.0.i, %bb.e ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx.i = mul nuw nsw i64 %.sroa.05.08.i, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !alias.scope !240
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !318)
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !322, !noalias !323, !noundef !16 ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 -16
  %i.cy = load i32, ptr %i.cx, align 8, !alias.scope !324, !noalias !325, !noundef !16 ; 2 uses
  %i.cz = icmp eq i32 %i.cw, %i.cy
  br i1 %i.cz, label %.split.i.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.i

.split.i.i:                                       ; preds = %.lr.ph.i
  %i.da = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !alias.scope !324, !noalias !325, !noundef !16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !alias.scope !322, !noalias !323, !noundef !16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.df = load i32, ptr %i.de, align 8, !range !53, !alias.scope !324, !noalias !325, !noundef !16 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !range !53, !alias.scope !322, !noalias !323, !noundef !16 ; 3 uses
  %i.di = icmp eq i32 %i.dh, %i.df
  %i.dj = icmp ult i32 %i.dh, %i.df
  %i.dk = icmp ult i32 %i.dd, %i.db
  %spec.select.i.i32.i = select i1 %i.di, i1 %i.dk, i1 %i.dj
  br i1 %spec.select.i.i32.i, label %bb.m, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.i: ; preds = %.lr.ph.i
  %i.dl = icmp ult i32 %i.cw, %i.cy
  br i1 %i.dl, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.i
  %.sroa.622.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.622.0.copyload.pre.i.i = load i32, ptr %.sroa.622.0..sroa_idx.phi.trans.insert.i.i, align 8, !alias.scope !256, !noalias !237
  %.sroa.723.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %.sroa.723.0.copyload.pre.i.i = load i32, ptr %.sroa.723.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !256, !noalias !237
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i, %.split.i.i
  %.sroa.723.0.copyload.i.i = phi i32 [ %.sroa.723.0.copyload.pre.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i ], [ %i.dd, %.split.i.i ] ; 2 uses
  %.sroa.622.0.copyload.i.i = phi i32 [ %.sroa.622.0.copyload.pre.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i ], [ %i.dh, %.split.i.i ] ; 3 uses
  %.sroa.019.0.copyload.i.i = load i64, ptr %i.ct, align 8, !alias.scope !256, !noalias !237
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %.sroa.521.0.copyload.i.i = load i32, ptr %.sroa.521.0..sroa_idx.i.i, align 4, !alias.scope !256, !noalias !237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !alias.scope !256, !noalias !237
  %i.dm = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dm, label %.split5._crit_edge.i.i, label %.lr.ph.i31.i

.lr.ph.i31.i:                                     ; preds = %bb.m, %.backedge.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.dn, %.backedge.i.i ], [ %i.cu, %bb.m ] ; 7 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -24 ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -16
  %i.dp = load i32, ptr %i.do, align 8, !alias.scope !257, !noalias !262, !noundef !16 ; 2 uses
  %i.dq = icmp eq i32 %i.cw, %i.dp
  br i1 %i.dq, label %.split5.i.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i

.split5.i.i:                                      ; preds = %.lr.ph.i31.i
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !alias.scope !257, !noalias !262, !noundef !16
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -8
  %i.du = load i32, ptr %i.dt, align 8, !range !53, !alias.scope !257, !noalias !262, !noundef !16 ; 2 uses
  %i.dv = icmp eq i32 %.sroa.622.0.copyload.i.i, %i.du
  %i.dw = icmp ult i32 %.sroa.622.0.copyload.i.i, %i.du
  %i.dx = icmp ult i32 %.sroa.723.0.copyload.i.i, %i.ds
  %spec.select.i9.i.i = select i1 %i.dv, i1 %i.dx, i1 %i.dw
  br i1 %spec.select.i9.i.i, label %.backedge.i.i, label %.split5._crit_edge.i.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i: ; preds = %.lr.ph.i31.i
  %i.dy = icmp ult i32 %i.cw, %i.dp
  br i1 %i.dy, label %.backedge.i.i, label %.split5._crit_edge.i.i

.backedge.i.i:                                    ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i, %.split5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false), !alias.scope !256, !noalias !237
  %i.dz = icmp eq ptr %i.dn, %i.a
  br i1 %i.dz, label %.split5._crit_edge.i.i, label %.lr.ph.i31.i

.split5._crit_edge.i.i:                           ; preds = %.backedge.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i, %.split5.i.i, %bb.m
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.cu, %bb.m ], [ %.sroa.0.06.i.i, %.split5.i.i ], [ %.sroa.0.06.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i ], [ %i.a, %.backedge.i.i ] ; 5 uses
  store i64 %.sroa.019.0.copyload.i.i, ptr %.sroa.0.0.lcssa.i.i, align 8, !alias.scope !256, !noalias !265
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8
  store i32 %i.cw, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !256, !noalias !265
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 12
  store i32 %.sroa.521.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !256, !noalias !265
  %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 16
  store i32 %.sroa.622.0.copyload.i.i, ptr %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !256, !noalias !265
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 20
  store i32 %.sroa.723.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !256, !noalias !265
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i: ; preds = %.split5._crit_edge.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.i, %.split.i.i
  %i.ea = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ea, %i.c
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1x_2id2IdENCINvMB8_SB1s_16sort_unstable_byNCNvMs1_B1v_NtB1v_11IdentityMap5drain0E0EB1x_.exit: ; preds = %bb.a, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCINvMs1_B1o_NtB1o_5Zalsa3newNtNtB1q_13database_impl12DatabaseImplE0E0EB1q_(ptr noalias noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1r_2id2IdENCINvMB8_SB1m_16sort_unstable_byNCNvMs1_B1p_NtB1p_11IdentityMap5drain0E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.aj, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 13 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.f = load i32, ptr %i.e, align 8, !alias.scope !336, !noalias !337, !noundef !16 ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !337, !noalias !336, !noundef !16 ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %.split.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i

.split.i:                                         ; preds = %.lr.ph
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa:bb.a
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.05, align 8, !alias.scope !351, !noalias !354, !noundef !16 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !354, !noalias !351, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %.sroa.0.05, align 8
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i64 %.val8.i, ptr %.sroa.0.0.i8, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 3 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !354, !noalias !351, !noundef !16 ; 2 uses
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !356
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 12 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph108 = phi ptr [ %i.mn, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph107 = phi i64 [ %i.ly, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph106 = phi i32 [ %i.fq, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph105 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph108, i64 32
  %i.e = ptrtoint ptr %.sroa.0.0.ph108 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph105, null
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph105, i64 32
  %i.g = icmp eq i32 %.sroa.025.0.ph106, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph261

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit
  %i.h = icmp eq i32 %i.fq, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph261

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa99 = phi ptr [ %.sroa.0.0.ph108, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.mn, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.ly, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa99, i64 %i.l ; 3 uses
  %i.o = getelementptr [40 x i8], ptr %2, i64 %i.l ; 8 uses
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB19_7sort_byNCINvMs1_B1b_NtB1b_5Zalsa3newNtNtB1d_13database_impl12DatabaseImplE0E0EB1d_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa99, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB19_7sort_byNCINvMs1_B1b_NtB1b_5Zalsa3newNtNtB1d_13database_impl12DatabaseImplE0E0EB1d_(ptr noundef %i.n, ptr noundef %i.o)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.ph.lcssa99, i64 40, i1 false), !alias.scope !366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !alias.scope !366
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.p = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.l  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.r, label %.noexc37.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i, %bb.h
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %i.p
  br i1 %i.s, label %.noexc37.1.i, label %.loopexit4.1.i

.noexc37.1.i:                                     ; preds = %.loopexit4.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i
  %.sroa.05.010.1.i = phi i64 [ %i.bk, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.05.010.1.i
  %.idx279 = mul nuw nsw i64 %.sroa.05.010.1.i, 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx279 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !alias.scope !366
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load i8, ptr %i.w, align 8, !range !13, !alias.scope !377, !noalias !378, !noundef !16 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.z = load i8, ptr %i.y, align 8, !range !13, !alias.scope !379, !noalias !380, !noundef !16 ; 2 uses
  %i.aa = sub nsw i8 %i.x, %i.z
  %i.ab = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u) ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  %i.ae = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  %spec.store.select.i.i.i34.1.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 %i.ag)
  %i.ah = call i32 @memcmp(ptr %i.ac, ptr %i.af, i64 %spec.store.select.i.i.i34.1.i) ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %i.ad, %i.ag
  %spec.select.i.i.i35.1.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp eq i8 %i.x, %i.z
  %i.am = icmp slt i64 %spec.select.i.i.i35.1.i, 0
  %i.an = icmp eq i8 %i.aa, -1
  %i.ao = select i1 %i.al, i1 %i.am, i1 %i.an
  br i1 %i.ao, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i

bb.i:                                             ; preds = %.noexc37.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !361
  %i.ap = load i8, ptr %i.q, align 8, !range !13  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !alias.scope !364, !noalias !361
  %i.aq = icmp eq i64 %.sroa.05.010.1.i, 1
  br i1 %i.aq, label %._crit_edge275, label %.lr.ph274

bb.j:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.1.i272, ptr noundef nonnull align 8 dereferenceable(40) %i.as, i64 40, i1 false), !alias.scope !364, !noalias !361
  %i.ar = icmp eq ptr %i.as, %i.o
  br i1 %i.ar, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i36.1.i272 = phi ptr [ %i.as, %bb.j ], [ %i.v, %bb.i ] ; 5 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1.i272, i64 -40 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1.i272, i64 -8
  %i.au = load i8, ptr %i.at, align 8, !range !13, !alias.scope !381, !noalias !386, !noundef !16 ; 2 uses
  %i.av = sub nsw i8 %i.ap, %i.au
  %i.aw = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %.noexc.i.1.i unwind label %.loopexit.split-lp21.i ; 2 uses

.noexc.i.1.i:                                     ; preds = %.lr.ph274
  %i.ax = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.as)
          to label %bb.k unwind label %.loopexit.split-lp21.i ; 2 uses

bb.k:                                             ; preds = %.noexc.i.1.i
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1      ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.aw, 0
  %i.ba = extractvalue { ptr, i64 } %i.ax, 0
  %i.bb = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %spec.store.select.i.i8.i.1.i = call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.bb)
  %i.bc = call i32 @memcmp(ptr %i.az, ptr %i.ba, i64 %spec.store.select.i.i8.i.1.i) ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %i.bf = sub i64 %i.ay, %i.bb
  %spec.select.i.i9.i.1.i = select i1 %i.be, i64 %i.bf, i64 %i.bd
  %i.bg = icmp eq i8 %i.ap, %i.au
  %i.bh = icmp slt i64 %spec.select.i.i9.i.1.i, 0
  %i.bi = icmp eq i8 %i.av, -1
  %i.bj = select i1 %i.bg, i1 %i.bh, i1 %i.bi
  br i1 %i.bj, label %bb.j, label %._crit_edge275

._crit_edge275:                                   ; preds = %bb.j, %bb.k, %bb.i
  %.sroa.0.0.i36.lcssa.1.i = phi ptr [ %i.o, %bb.i ], [ %i.o, %bb.j ], [ %.sroa.0.0.i36.1.i272, %bb.k ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !366
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i: ; preds = %._crit_edge275, %.noexc37.1.i
  %i.bk = add nuw nsw i64 %.sroa.05.010.1.i, 1    ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.bk, %i.p
  br i1 %exitcond.1.not.i, label %.loopexit4.1.i, label %.noexc37.1.i

.loopexit4.1.i:                                   ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i, %.loopexit4.i
  %i.bl = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa99, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.bl
  %i.bo = getelementptr i8, ptr %i.o, i64 -40
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32.i
  %i.bp = getelementptr i8, ptr %i.do, i64 40     ; 3 uses
  %i.bq = getelementptr i8, ptr %i.dn, i64 40
  %i.br = and i64 %.sroa.16.0.lcssa, 1
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %.noexc32.i, %.loopexit4.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cs, %.noexc32.i ], [ %.sroa.0.0.ph.lcssa99, %.loopexit4.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.bt, %.noexc32.i ], [ 0, %.loopexit4.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.cr, %.noexc32.i ], [ %2, %.loopexit4.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %i.cp, %.noexc32.i ], [ %i.o, %.loopexit4.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.do, %.noexc32.i ], [ %i.bo, %.loopexit4.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dn, %.noexc32.i ], [ %i.bn, %.loopexit4.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dp, %.noexc32.i ], [ %i.bm, %.loopexit4.1.i ] ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 32
  %i.bv = load i8, ptr %i.bu, align 8, !range !13, !alias.scope !404, !noalias !407, !noundef !16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 32
  %i.bx = load i8, ptr %i.bw, align 8, !range !13, !alias.scope !408, !noalias !409, !noundef !16 ; 2 uses
  %i.by = sub nsw i8 %i.bv, %i.bx
  %i.bz = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.011.07.i.i)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.ca = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.06.08.i.i)
          to label %.noexc30.i unwind label %.loopexit.i ; 2 uses

.noexc30.i:                                       ; preds = %.noexc.i
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.bz, 0
  %i.cd = extractvalue { ptr, i64 } %i.ca, 0
  %i.ce = extractvalue { ptr, i64 } %i.ca, 1      ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.ce)
  %i.cf = call i32 @memcmp(ptr %i.cc, ptr %i.cd, i64 %spec.store.select.i.i.i.i) ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp eq i32 %i.cf, 0
  %i.ci = sub i64 %i.cb, %i.ce
  %spec.select.i.i.i.i = select i1 %i.ch, i64 %i.ci, i64 %i.cg
  %i.cj = icmp eq i8 %i.bv, %i.bx
  %i.ck = icmp slt i64 %spec.select.i.i.i.i, 0
  %i.cl = icmp eq i8 %i.by, -1
  %i.cm = select i1 %i.cj, i1 %i.ck, i1 %i.cl     ; 3 uses
  %..i23.i.i = select i1 %i.cm, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.cn = xor i1 %i.cm, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i23.i.i, i64 40, i1 false), !alias.scope !366, !noalias !410
  %i.co = zext i1 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [40 x i8], ptr %.sroa.011.07.i.i, i64 %i.co ; 4 uses
  %i.cq = zext i1 %i.cn to i64
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %.sroa.06.08.i.i, i64 %i.cq ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 32
  %i.cu = load i8, ptr %i.ct, align 8, !range !13, !alias.scope !424, !noalias !425, !noundef !16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 32
  %i.cw = load i8, ptr %i.cv, align 8, !range !13, !alias.scope !426, !noalias !427, !noundef !16 ; 2 uses
  %i.cx = sub nsw i8 %i.cu, %i.cw
  %i.cy = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.017.05.i.i)
          to label %.noexc31.i unwind label %.loopexit.i ; 2 uses

.noexc31.i:                                       ; preds = %.noexc30.i
  %i.cz = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.015.06.i.i)
          to label %.noexc32.i unwind label %.loopexit.i ; 2 uses

.noexc32.i:                                       ; preds = %.noexc31.i
  %i.da = extractvalue { ptr, i64 } %i.cy, 1      ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.cy, 0
  %i.dc = extractvalue { ptr, i64 } %i.cz, 0
  %i.dd = extractvalue { ptr, i64 } %i.cz, 1      ; 2 uses
  %spec.store.select.i.i24.i.i = call i64 @llvm.umin.i64(i64 %i.da, i64 %i.dd)
  %i.de = call i32 @memcmp(ptr %i.db, ptr %i.dc, i64 %spec.store.select.i.i24.i.i) ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp eq i32 %i.de, 0
  %i.dh = sub i64 %i.da, %i.dd
  %spec.select.i.i25.i.i = select i1 %i.dg, i64 %i.dh, i64 %i.df
  %i.di = icmp eq i8 %i.cu, %i.cw
  %i.dj = icmp slt i64 %spec.select.i.i25.i.i, 0
  %i.dk = icmp eq i8 %i.cx, -1
  %i.dl = select i1 %i.di, i1 %i.dj, i1 %i.dk     ; 3 uses
  %..i.i.i = select i1 %i.dl, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dm = xor i1 %i.dl, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i.i.i, i64 40, i1 false), !alias.scope !366, !noalias !428
  %.neg.i.i.i = sext i1 %i.dm to i64
  %i.dn = getelementptr [40 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dl to i64
  %i.do = getelementptr [40 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -40
  %exitcond.not.i.i = icmp eq i64 %i.bt, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.dq = icmp ult ptr %i.cr, %i.bp               ; 2 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dq, ptr %i.cr, ptr %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.0..sroa.011.0.i.i, i64 40, i1 false), !alias.scope !366
  %i.dr = zext i1 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.cr, i64 %i.dr
  %7 = icmp uge ptr %i.cr, %i.bp
  %i.dt = zext i1 %7 to i64
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.dt
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.cp, %._crit_edge.i.i ], [ %i.du, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %i.cr, %._crit_edge.i.i ], [ %i.ds, %bb.l ]
  %i.dv = icmp ne ptr %.sroa.06.1.i.i, %i.bp
  %i.dw = icmp ne ptr %.sroa.011.1.i.i, %i.bq
  %or.cond.i.i = select i1 %i.dv, i1 true, i1 %i.dw, !prof !308
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit, !prof !308

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #15
          to label %.noexc33.i unwind label %.loopexit.split-lp.i

.noexc33.i:                                       ; preds = %bb.n
  unreachable

.loopexit.i:                                      ; preds = %.noexc31.i, %.noexc30.i, %.noexc.i, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dx = mul nuw nsw i64 %.sroa.16.0.lcssa, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa99, ptr nonnull align 8 %2, i64 %i.dx, i1 false), !alias.scope !366, !noalias !432
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.o
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.o ], [ %lpad.phi26.i, %bb.s ]
  resume { ptr, i32 } %.pn.i

.noexc37.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i
  %.sroa.05.010.i = phi i64 [ %i.fp, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa99, i64 %.sroa.05.010.i
  %.idx = mul nuw nsw i64 %.sroa.05.010.i, 40
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %i.dy, i64 40, i1 false), !alias.scope !366
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  call void @llvm.experimental.noalias.scope.decl(metadata !439)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.ec = load i8, ptr %i.eb, align 8, !range !13, !alias.scope !445, !noalias !446, !noundef !16 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ee = load i8, ptr %i.ed, align 8, !range !13, !alias.scope !447, !noalias !448, !noundef !16 ; 2 uses
  %i.ef = sub nsw i8 %i.ec, %i.ee
  %i.eg = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dz) ; 2 uses
  %i.eh = extractvalue { ptr, i64 } %i.eg, 0
  %i.ei = extractvalue { ptr, i64 } %i.eg, 1      ; 2 uses
  %i.ej = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ea) ; 2 uses
  %i.ek = extractvalue { ptr, i64 } %i.ej, 0
  %i.el = extractvalue { ptr, i64 } %i.ej, 1      ; 2 uses
  %spec.store.select.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.ei, i64 %i.el)
  %i.em = call i32 @memcmp(ptr %i.eh, ptr %i.ek, i64 %spec.store.select.i.i.i34.i) ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp eq i32 %i.em, 0
  %i.ep = sub i64 %i.ei, %i.el
  %spec.select.i.i.i35.i = select i1 %i.eo, i64 %i.ep, i64 %i.en
  %i.eq = icmp eq i8 %i.ec, %i.ee
  %i.er = icmp slt i64 %spec.select.i.i.i35.i, 0
  %i.es = icmp eq i8 %i.ef, -1
  %i.et = select i1 %i.eq, i1 %i.er, i1 %i.es
  br i1 %i.et, label %bb.p, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i

bb.p:                                             ; preds = %.noexc37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.dz, i64 40, i1 false), !noalias !361
  %i.eu = load i8, ptr %i.q, align 8, !range !13  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %i.ea, i64 40, i1 false), !alias.scope !364, !noalias !361
  %i.ev = icmp eq i64 %.sroa.05.010.i, 1
  br i1 %i.ev, label %._crit_edge268, label %.lr.ph267

bb.q:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.i265, ptr noundef nonnull align 8 dereferenceable(40) %i.ex, i64 40, i1 false), !alias.scope !364, !noalias !361
  %i.ew = icmp eq ptr %i.ex, %2
  br i1 %i.ew, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.p, %bb.q
  %.sroa.0.0.i36.i265 = phi ptr [ %i.ex, %bb.q ], [ %i.ea, %bb.p ] ; 5 uses
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.i36.i265, i64 -40 ; 4 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.0.0.i36.i265, i64 -8
  %i.ez = load i8, ptr %i.ey, align 8, !range !13, !alias.scope !449, !noalias !452, !noundef !16 ; 2 uses
  %i.fa = sub nsw i8 %i.eu, %i.ez
  %i.fb = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %.noexc.i.i unwind label %.loopexit20.i ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph267
  %i.fc = invoke { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ex)
          to label %bb.r unwind label %.loopexit20.i ; 2 uses

bb.r:                                             ; preds = %.noexc.i.i
  %i.fd = extractvalue { ptr, i64 } %i.fb, 1      ; 2 uses
  %i.fe = extractvalue { ptr, i64 } %i.fb, 0
  %i.ff = extractvalue { ptr, i64 } %i.fc, 0
  %i.fg = extractvalue { ptr, i64 } %i.fc, 1      ; 2 uses
  %spec.store.select.i.i8.i.i = call i64 @llvm.umin.i64(i64 %i.fd, i64 %i.fg)
  %i.fh = call i32 @memcmp(ptr %i.fe, ptr %i.ff, i64 %spec.store.select.i.i8.i.i) ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp eq i32 %i.fh, 0
  %i.fk = sub i64 %i.fd, %i.fg
  %spec.select.i.i9.i.i = select i1 %i.fj, i64 %i.fk, i64 %i.fi
  %i.fl = icmp eq i8 %i.eu, %i.ez
  %i.fm = icmp slt i64 %spec.select.i.i9.i.i, 0
  %i.fn = icmp eq i8 %i.fa, -1
  %i.fo = select i1 %i.fl, i1 %i.fm, i1 %i.fn
  br i1 %i.fo, label %bb.q, label %._crit_edge268

._crit_edge268:                                   ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.0.0.i36.lcssa.i = phi ptr [ %2, %bb.p ], [ %2, %bb.q ], [ %.sroa.0.0.i36.i265, %bb.r ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.lcssa.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !366
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i

.loopexit20.i:                                    ; preds = %.noexc.i.i, %.lr.ph267
  %lpad.loopexit24.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp21.i:                           ; preds = %.noexc.i.1.i, %.lr.ph274
  %lpad.loopexit.split-lp25.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp21.i, %.loopexit20.i
  %.sroa.0.0.i36.lcssa17.i = phi ptr [ %.sroa.0.0.i36.i265, %.loopexit20.i ], [ %.sroa.0.0.i36.1.i272, %.loopexit.split-lp21.i ]
  %lpad.phi26.i = phi { ptr, i32 } [ %lpad.loopexit24.i, %.loopexit20.i ], [ %lpad.loopexit.split-lp25.i, %.loopexit.split-lp21.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.lcssa17.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !455
  br label %.body.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i: ; preds = %._crit_edge268, %.noexc37.i
  %i.fp = add nuw nsw i64 %.sroa.05.010.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fp, %i.l
  br i1 %exitcond.not.i, label %.loopexit4.i, label %.noexc37.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0101.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph107, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph108, i64 noundef %.sroa.16.0101.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit

.lr.ph261:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0100260 = phi i32 [ %i.fq, %bb.b ], [ %.sroa.025.0.ph106, %.lr.ph ]
  %.sroa.16.0101259 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph107, %.lr.ph ] ; 21 uses
  %i.fq = add i32 %.sroa.025.0100260, -1          ; 4 uses
  %i.fr = lshr i64 %.sroa.16.0101259, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.fr, 160
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph108, i64 %.idx.i ; 5 uses
  %.idx2.i = mul nuw nsw i64 %i.fr, 280
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph108, i64 %.idx2.i ; 5 uses
  %i.fu = icmp samesign ult i64 %.sroa.16.0101259, 64
  br i1 %i.fu, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph261
  %i.fv = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCINvMs1_B16_NtB16_5Zalsa3newNtNtB18_13database_impl12DatabaseImplE0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph108, ptr noundef readonly %i.fs, ptr noundef readonly %i.ft, i64 noundef %i.fr)
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph261
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.fw = load i8, ptr %i.d, align 8, !range !13, !alias.scope !470, !noalias !473, !noundef !16 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.fy = load i8, ptr %i.fx, align 8, !range !13, !alias.scope !474, !noalias !475, !noundef !16 ; 4 uses
  %i.fz = sub nsw i8 %i.fw, %i.fy
  %i.ga = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.ph108), !noalias !473 ; 2 uses
  %i.gb = extractvalue { ptr, i64 } %i.ga, 0
  %i.gc = extractvalue { ptr, i64 } %i.ga, 1      ; 2 uses
  %i.gd = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fs) ; 2 uses
  %i.ge = extractvalue { ptr, i64 } %i.gd, 0
  %i.gf = extractvalue { ptr, i64 } %i.gd, 1      ; 2 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.gc, i64 %i.gf)
  %i.gg = call i32 @memcmp(ptr %i.gb, ptr %i.ge, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp eq i32 %i.gg, 0
  %i.gj = sub i64 %i.gc, %i.gf
  %spec.select.i.i.i = select i1 %i.gi, i64 %i.gj, i64 %i.gh
  %i.gk = icmp eq i8 %i.fw, %i.fy
  %i.gl = icmp slt i64 %spec.select.i.i.i, 0
  %i.gm = icmp eq i8 %i.fz, -1
  %i.gn = select i1 %i.gk, i1 %i.gl, i1 %i.gm     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %i.go = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.gp = load i8, ptr %i.go, align 8, !range !13, !alias.scope !482, !noalias !483, !noundef !16 ; 4 uses
  %i.gq = sub nsw i8 %i.fw, %i.gp
  %i.gr = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0.ph108), !noalias !486 ; 2 uses
  %i.gs = extractvalue { ptr, i64 } %i.gr, 0
  %i.gt = extractvalue { ptr, i64 } %i.gr, 1      ; 2 uses
  %i.gu = call { ptr, i64 } @_RNvMs3_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ft) ; 2 uses
  %i.gv = extractvalue { ptr, i64 } %i.gu, 0
  %i.gw = extractvalue { ptr, i64 } %i.gu, 1      ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa:bb.a
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bo)
  store i64 %i.by, ptr %.sroa.02.0.i, align 8, !alias.scope !744
  %i.bz = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 %i.av) ; 2 uses
  %i.ca = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %i.av) ; 2 uses
  %i.cb = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 %i.bu) ; 2 uses
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bu) ; 2 uses
  %i.cd = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %i.br) ; 2 uses
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.br) ; 2 uses
  %i.cf = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bv)
  %i.cg = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bv) ; 2 uses
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !744
  %i.ch = tail call i64 @llvm.umax.i64(i64 %i.bq, i64 %i.bx) ; 2 uses
  %i.ci = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bx) ; 2 uses
  %i.cj = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.ca) ; 2 uses
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 %i.ca) ; 2 uses
  %i.cl = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 %i.bz) ; 2 uses
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.bz) ; 2 uses
  %i.cn = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.cb)
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cb) ; 2 uses
  store i64 %i.cn, ptr %i.p, align 8, !alias.scope !744
  %i.cp = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %i.ci) ; 2 uses
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.ci)
  store i64 %i.cq, ptr %i.o, align 8, !alias.scope !744
  %i.cr = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.ch) ; 2 uses
  %i.cs = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.ch) ; 2 uses
  %i.ct = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 %i.cm) ; 2 uses
  %i.cu = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.cm) ; 2 uses
  %i.cv = tail call i64 @llvm.umax.i64(i64 %i.cd, i64 %i.cl) ; 2 uses
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cl) ; 2 uses
  %i.cx = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %i.cp) ; 2 uses
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.cp)
  store i64 %i.cy, ptr %i.s, align 8, !alias.scope !744
  %i.cz = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cr) ; 2 uses
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cr) ; 2 uses
  %i.db = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cw)
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cw) ; 2 uses
  store i64 %i.db, ptr %i.x, align 8, !alias.scope !744
  %i.dd = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %i.cv)
  %i.de = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %i.cv)
  store i64 %i.de, ptr %i.af, align 8, !alias.scope !744
  store i64 %i.dd, ptr %i.t, align 8, !alias.scope !744
  %i.df = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.cx)
  %i.dg = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %i.cx)
  store i64 %i.dg, ptr %i.w, align 8, !alias.scope !744
  store i64 %i.df, ptr %i.am, align 8, !alias.scope !744
  %i.dh = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.cz)
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 %i.cz)
  store i64 %i.di, ptr %i.aa, align 8, !alias.scope !744
  store i64 %i.dh, ptr %i.ae, align 8, !alias.scope !744
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 24 ; 2 uses
  %.val.i.i14.i = load i64, ptr %i.dj, align 8, !alias.scope !745, !noalias !750, !noundef !16 ; 2 uses
  %.val1.i.i15.i = load i64, ptr %.sroa.02.0.i, align 8, !alias.scope !752, !noalias !753, !noundef !16 ; 2 uses
  %i.dk = tail call i64 @llvm.umax.i64(i64 %.val.i.i14.i, i64 %.val1.i.i15.i) ; 2 uses
  %i.dl = tail call i64 @llvm.umin.i64(i64 %.val.i.i14.i, i64 %.val1.i.i15.i) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 56 ; 2 uses
  %.val.i1.i16.i = load i64, ptr %i.dn, align 8, !alias.scope !754, !noalias !757, !noundef !16 ; 2 uses
  %.val1.i2.i17.i = load i64, ptr %i.dm, align 8, !alias.scope !759, !noalias !760, !noundef !16 ; 2 uses
  %i.do = tail call i64 @llvm.umax.i64(i64 %.val.i1.i16.i, i64 %.val1.i2.i17.i) ; 2 uses
  %i.dp = tail call i64 @llvm.umin.i64(i64 %.val.i1.i16.i, i64 %.val1.i2.i17.i) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 40 ; 2 uses
  %.val.i3.i18.i = load i64, ptr %i.dr, align 8, !alias.scope !761, !noalias !764, !noundef !16 ; 2 uses
  %.val1.i4.i19.i = load i64, ptr %i.dq, align 8, !alias.scope !766, !noalias !767, !noundef !16 ; 2 uses
  %i.ds = tail call i64 @llvm.umax.i64(i64 %.val.i3.i18.i, i64 %.val1.i4.i19.i) ; 2 uses
  %i.dt = tail call i64 @llvm.umin.i64(i64 %.val.i3.i18.i, i64 %.val1.i4.i19.i) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 64 ; 2 uses
  %.val.i5.i20.i = load i64, ptr %i.dv, align 8, !alias.scope !768, !noalias !771, !noundef !16 ; 2 uses
  %.val1.i6.i21.i = load i64, ptr %i.du, align 8, !alias.scope !773, !noalias !774, !noundef !16 ; 2 uses
  %i.dw = tail call i64 @llvm.umax.i64(i64 %.val.i5.i20.i, i64 %.val1.i6.i21.i) ; 2 uses
  %i.dx = tail call i64 @llvm.umin.i64(i64 %.val.i5.i20.i, i64 %.val1.i6.i21.i) ; 2 uses
  %i.dy = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dl) ; 2 uses
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.do, i64 %i.dl) ; 2 uses
  %i.ea = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 %i.dt) ; 2 uses
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dt) ; 2 uses
  %i.ec = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 %i.dk) ; 2 uses
  %i.ed = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.dk) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 48 ; 2 uses
  %.val.i13.i.i = load i64, ptr %i.ee, align 8, !alias.scope !775, !noalias !778, !noundef !16 ; 2 uses
  %i.ef = tail call i64 @llvm.umax.i64(i64 %.val.i13.i.i, i64 %i.ds) ; 2 uses
  %i.eg = tail call i64 @llvm.umin.i64(i64 %.val.i13.i.i, i64 %i.ds) ; 2 uses
  %i.eh = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 %i.dz) ; 2 uses
  %i.ei = tail call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.dz) ; 2 uses
  %i.ej = tail call i64 @llvm.umax.i64(i64 %i.ed, i64 %i.dp) ; 2 uses
  %i.ek = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 %i.dp) ; 2 uses
  %i.el = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 %i.ea) ; 2 uses
  %i.em = tail call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.ea) ; 2 uses
  %i.en = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 %i.dy) ; 2 uses
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 %i.dy) ; 2 uses
  %i.ep = tail call i64 @llvm.umax.i64(i64 %i.em, i64 %i.ek) ; 2 uses
  %i.eq = tail call i64 @llvm.umin.i64(i64 %i.em, i64 %i.ek) ; 2 uses
  %i.er = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 %i.ej) ; 2 uses
  %i.es = tail call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ej) ; 2 uses
  %i.et = tail call i64 @llvm.umax.i64(i64 %i.eo, i64 %i.el) ; 2 uses
  %i.eu = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 %i.el) ; 2 uses
  %i.ev = tail call i64 @llvm.umax.i64(i64 %i.eq, i64 %i.ei) ; 2 uses
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.eq, i64 %i.ei)
  store i64 %i.ew, ptr %.sroa.02.0.i, align 8, !alias.scope !780
  %i.ex = tail call i64 @llvm.umax.i64(i64 %i.ep, i64 %i.eh) ; 2 uses
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 %i.eh) ; 2 uses
  %i.ez = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 %i.es) ; 2 uses
  %i.fa = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.es) ; 2 uses
  %i.fb = tail call i64 @llvm.umax.i64(i64 %i.en, i64 %i.er)
  %i.fc = tail call i64 @llvm.umin.i64(i64 %i.en, i64 %i.er) ; 2 uses
  store i64 %i.fb, ptr %i.dv, align 8, !alias.scope !780
  %i.fd = tail call i64 @llvm.umax.i64(i64 %i.fa, i64 %i.ey) ; 2 uses
  %i.fe = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.ey) ; 2 uses
  %i.ff = tail call i64 @llvm.umax.i64(i64 %i.ez, i64 %i.ex) ; 2 uses
  %i.fg = tail call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.ex) ; 2 uses
  %i.fh = tail call i64 @llvm.umax.i64(i64 %i.et, i64 %i.fc)
  %i.fi = tail call i64 @llvm.umin.i64(i64 %i.et, i64 %i.fc) ; 2 uses
  store i64 %i.fh, ptr %i.dn, align 8, !alias.scope !780
  %i.fj = tail call i64 @llvm.umax.i64(i64 %i.fe, i64 %i.ev)
  %i.fk = tail call i64 @llvm.umin.i64(i64 %i.fe, i64 %i.ev)
  store i64 %i.fk, ptr %i.dm, align 8, !alias.scope !780
  store i64 %i.fj, ptr %i.dq, align 8, !alias.scope !780
  %i.fl = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 %i.fd)
  %i.fm = tail call i64 @llvm.umin.i64(i64 %i.fg, i64 %i.fd)
  store i64 %i.fm, ptr %i.dj, align 8, !alias.scope !780
  store i64 %i.fl, ptr %i.du, align 8, !alias.scope !780
  %i.fn = tail call i64 @llvm.umax.i64(i64 %i.fi, i64 %i.ff)
  %i.fo = tail call i64 @llvm.umin.i64(i64 %i.fi, i64 %i.ff)
  store i64 %i.fo, ptr %i.dr, align 8, !alias.scope !780
  store i64 %i.fn, ptr %i.ee, align 8, !alias.scope !780
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.01.0.i = phi i64 [ 13, %bb.e ], [ 9, %bb.f ], [ 1, %bb.d ] ; 3 uses
  %i.fp = add nsw i64 %.sroa.01.0.i, -1
  %or.cond.not.i.i = icmp ult i64 %i.fp, %.sroa.8.0.i
  br i1 %or.cond.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0.i, i64 %.sroa.8.0.i
  %.not4.i.i = icmp samesign eq i64 %.sroa.01.0.i, %.sroa.8.0.i
  br i1 %.not4.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0.i, i64 %.sroa.01.0.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.fy, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i ], [ %i.fr, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.fs = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 3 uses
  %.val9.i.i.i = load i64, ptr %.sroa.0.05.i.i, align 8, !alias.scope !781, !noalias !786, !noundef !16 ; 3 uses
  %.val10.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !788, !noalias !789, !noundef !16 ; 2 uses
  %i.ft = icmp ult i64 %.val9.i.i.i, %.val10.i.i.i
  br i1 %i.ft, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  store i64 %.val10.i.i.i, ptr %.sroa.0.05.i.i, align 8, !alias.scope !790
  %i.fu = icmp eq ptr %i.fs, %.sroa.02.0.i
  br i1 %i.fu, label %._crit_edge158, label %.lr.ph157

.preheader.i.i:                                   ; preds = %.lr.ph157
  store i64 %.val8.i.i.i, ptr %.sroa.0.0.i.i.i156, align 8, !alias.scope !790
  %i.fv = icmp eq ptr %i.fw, %.sroa.02.0.i
  br i1 %i.fv, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i.i.i156 = phi ptr [ %i.fw, %.preheader.i.i ], [ %i.fs, %.preheader.i.i.preheader ] ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i156, i64 -8 ; 3 uses
  %.val8.i.i.i = load i64, ptr %i.fw, align 8, !alias.scope !788, !noalias !789, !noundef !16 ; 2 uses
  %i.fx = icmp ult i64 %.val9.i.i.i, %.val8.i.i.i
  br i1 %i.fx, label %.preheader.i.i, label %._crit_edge158

._crit_edge158:                                   ; preds = %.preheader.i.i, %.lr.ph157, %.preheader.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %.sroa.02.0.i, %.preheader.i.i.preheader ], [ %.sroa.02.0.i, %.preheader.i.i ], [ %.sroa.0.0.i.i.i156, %.lr.ph157 ]
  store i64 %.val9.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i, align 8, !alias.scope !790, !noalias !791
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %._crit_edge158, %.lr.ph.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fy, %i.fq
  br i1 %.not.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %.lr.ph.i.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i.i, %bb.i
  br i1 %i.g, label %.sink.split.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  %.not.i = icmp eq ptr %.sroa.02.0.i, %.sroa.0.0.lcssa
  br i1 %.not.i, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.fz = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fz
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.h, i64 -8
  br label %.lr.ph.i23.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i23.i
  %i.gd = getelementptr i8, ptr %i.gs, i64 8      ; 3 uses
  %i.ge = getelementptr i8, ptr %i.gr, i64 8
  %i.gf = and i64 %.sroa.15.0.lcssa, 1
  %i.gg = icmp eq i64 %i.gf, 0
  br i1 %i.gg, label %bb.m, label %bb.l

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %bb.k
  %.sroa.0.014.i.i = phi ptr [ %i.go, %.lr.ph.i23.i ], [ %i.a, %bb.k ] ; 2 uses
  %.sroa.04.013.i.i = phi i64 [ %i.gh, %.lr.ph.i23.i ], [ 0, %bb.k ]
  %.sroa.06.012.i.i = phi ptr [ %i.gn, %.lr.ph.i23.i ], [ %.sroa.0.0.lcssa, %bb.k ] ; 2 uses
  %.sroa.011.011.i.i = phi ptr [ %i.gl, %.lr.ph.i23.i ], [ %i.h, %bb.k ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.gs, %.lr.ph.i23.i ], [ %i.gc, %bb.k ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.gr, %.lr.ph.i23.i ], [ %i.gb, %bb.k ] ; 2 uses
  %.sroa.019.08.i.i = phi ptr [ %i.gt, %.lr.ph.i23.i ], [ %i.ga, %bb.k ] ; 2 uses
  %i.gh = add nuw nsw i64 %.sroa.04.013.i.i, 1    ; 2 uses
  %.sroa.011.0.val.i.i = load i64, ptr %.sroa.011.011.i.i, align 8, !alias.scope !799, !noalias !802, !noundef !16 ; 3 uses
  %.sroa.06.0.val.i.i = load i64, ptr %.sroa.06.012.i.i, align 8, !alias.scope !804, !noalias !805, !noundef !16 ; 3 uses
  %i.gi = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %5 = icmp uge i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.gj = tail call i64 @llvm.umin.i64(i64 %.sroa.011.0.val.i.i, i64 %.sroa.06.0.val.i.i)
  store i64 %i.gj, ptr %.sroa.0.014.i.i, align 8, !noalias !806
  %i.gk = zext i1 %i.gi to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.011.i.i, i64 %i.gk ; 4 uses
  %i.gm = zext i1 %5 to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.012.i.i, i64 %i.gm ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i64, ptr %.sroa.017.09.i.i, align 8, !alias.scope !799, !noalias !802, !noundef !16 ; 3 uses
  %.sroa.015.0.val.i.i = load i64, ptr %.sroa.015.010.i.i, align 8, !alias.scope !804, !noalias !805, !noundef !16 ; 3 uses
  %i.gp = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %6 = icmp uge i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.gq = tail call i64 @llvm.umax.i64(i64 %.sroa.017.0.val.i.i, i64 %.sroa.015.0.val.i.i)
  store i64 %i.gq, ptr %.sroa.019.08.i.i, align 8, !noalias !810
  %.neg.i.i.i = sext i1 %6 to i64
  %i.gr = getelementptr [8 x i8], ptr %.sroa.017.09.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.gp to i64
  %i.gs = getelementptr [8 x i8], ptr %.sroa.015.010.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %.sroa.019.08.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.gh, %i.f
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i23.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.gu = icmp ult ptr %i.gn, %i.gd               ; 2 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.gu, ptr %i.gn, ptr %i.gl
  %i.gv = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 8, !alias.scope !814
  store i64 %i.gv, ptr %i.go, align 8, !noalias !814
  %i.gw = zext i1 %i.gu to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gw
  %7 = icmp uge ptr %i.gn, %i.gd
  %i.gy = zext i1 %7 to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gy
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.gl, %._crit_edge.i.i ], [ %i.gz, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %i.gn, %._crit_edge.i.i ], [ %i.gx, %bb.l ]
  %i.ha = icmp ne ptr %.sroa.06.1.i.i, %i.gd
  %i.hb = icmp ne ptr %.sroa.011.1.i.i, %i.ge
  %or.cond.i.i = select i1 %i.ha, i1 true, i1 %i.hb, !prof !308
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, !prof !308

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #15, !noalias !796
  unreachable

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.m
  %i.hc = shl nuw nsw i64 %.sroa.15.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.a, i64 %i.hc, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergejNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !692
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.091.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.090.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091.lcssa, i64 noundef %.sroa.15.090.lcssa, ptr noalias noundef nonnull %4)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

.lr.ph154:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.088153 = phi i32 [ %i.hd, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.089152 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.090151 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.091150 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.hd = add i32 %.sroa.026.088153, -1           ; 3 uses
  %i.he = lshr i64 %.sroa.15.090151, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.he, 5
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.he, 56
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 %.idx2.i ; 3 uses
  %i.hh = icmp samesign ult i64 %.sroa.15.090151, 64
  br i1 %i.hh, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph154
  %i.hi = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noundef nonnull readonly align 8 %.sroa.0.091150, ptr noundef readonly %i.hf, ptr noundef readonly %i.hg, i64 noundef %i.he)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i: ; preds = %.lr.ph154
  %.val6.i = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !815, !noalias !820, !noundef !16 ; 2 uses
  %.val7.i = load i64, ptr %i.hf, align 8, !alias.scope !822, !noalias !823, !noundef !16 ; 2 uses
  %i.hj = icmp ult i64 %.val6.i, %.val7.i         ; 2 uses
  %.val5.i = load i64, ptr %i.hg, align 8, !alias.scope !822, !noalias !823, !noundef !16 ; 2 uses
  %i.hk = icmp ult i64 %.val6.i, %.val5.i
  %i.hl = xor i1 %i.hj, %i.hk
  %i.hm = icmp ult i64 %.val7.i, %.val5.i
  %i.hn = xor i1 %i.hj, %i.hm
  %..i.i = select i1 %i.hn, ptr %i.hg, ptr %i.hf
  %.sroa.0.0.i.i = select i1 %i.hl, ptr %.sroa.0.091150, ptr %..i.i
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.o, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3jNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i ], [ %i.hi, %bb.o ]
  %i.ho = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.hp = ptrtoint ptr %.sroa.0.091150 to i64
  %i.hq = sub nuw i64 %i.ho, %i.hp                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.hq, 3          ; 3 uses
  %i.hr = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.090151
  tail call void @llvm.assume(i1 %i.hr)
  %.not = icmp eq ptr %.sroa.023.089152, null
  br i1 %.not, label %bb.p, label %bb.r

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit: ; preds = %.sink.split.i, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit, %bb.r
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj14swap_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !829, !noalias !827, !noundef !16 ; 2 uses
  %i.hu = getelementptr [8 x i8], ptr %.sroa.0.091150, i64 %.sroa.15.090151 ; 3 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 16 ; 3 uses
  %i.hw = icmp ult ptr %.sroa.13.030.i.i, %i.hv
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !832, !noalias !824 ; 4 uses
  br i1 %i.hw, label %.lr.ph.i.i36, label %.preheader.i.i35

.preheader.i.i35:                                 ; preds = %.lr.ph.i.i36, %bb.p
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.p ], [ %i.io, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.hs, %bb.p ], [ %i.ij, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.p ], [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.hx = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.hu
  br i1 %i.hx, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i35, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i35 ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ic, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ] ; 2 uses
  %.val.i.else.val.i.i = load i64, ptr %.sroa.13.1.i6.i, align 8, !alias.scope !833, !noalias !836, !noundef !16 ; 2 uses
  %i.hy = icmp ult i64 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !alias.scope !829, !noalias !840
  store i64 %i.ia, ptr %.sroa.015.1.i7.i, align 8, !alias.scope !829, !noalias !840
  store i64 %.val.i.else.val.i.i, ptr %i.hz, align 8, !alias.scope !829, !noalias !840
  %i.ib = zext i1 %i.hy to i64
  %i.ic = add i64 %.sroa.23.1.i5.i, %i.ib         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 8 ; 2 uses
  %i.id = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.hu
  br i1 %i.id, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i, label %.cont.i.i

.lr.ph.i.i36:                                     ; preds = %bb.p, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.p ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.ij, %.lr.ph.i.i36 ], [ %i.hs, %bb.p ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.io, %.lr.ph.i.i36 ], [ 0, %bb.p ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !alias.scope !841, !noalias !844, !noundef !16 ; 2 uses
  %i.ie = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.sroa.23.031.i.i ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !829, !noalias !848
  store i64 %i.ig, ptr %.sroa.015.032.i.i, align 8, !alias.scope !829, !noalias !848
  store i64 %.val.i11.i.i, ptr %i.if, align 8, !alias.scope !829, !noalias !848
  %i.ih = zext i1 %i.ie to i64
  %i.ii = add i64 %.sroa.23.031.i.i, %i.ih        ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 3 uses
  %.val.i13.i.i37 = load i64, ptr %i.ij, align 8, !alias.scope !849, !noalias !852, !noundef !16 ; 2 uses
  %i.ik = icmp ult i64 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.ii ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !829, !noalias !856
  store i64 %i.im, ptr %.sroa.13.033.i.i, align 8, !alias.scope !829, !noalias !856
  store i64 %.val.i13.i.i37, ptr %i.il, align 8, !alias.scope !829, !noalias !856
  %i.in = zext i1 %i.ik to i64
  %i.io = add i64 %i.ii, %i.in                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.ip = icmp ult ptr %.sroa.13.0.i.i, %i.hv
  br i1 %i.ip, label %.lr.ph.i.i36, label %.preheader.i.i35

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i: ; preds = %.cont.i.i, %.preheader.i.i35
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ], [ %i.ic, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.iq = icmp ult i64 %i.ht, %.val1.i.pre.i.i
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !829, !noalias !840
  store i64 %i.is, ptr %.sroa.015.1.i.lcssa.i, align 8, !alias.scope !829, !noalias !840
  store i64 %i.ht, ptr %i.ir, align 8, !alias.scope !829, !noalias !840
  %i.it = zext i1 %i.iq to i64
  %i.iu = add i64 %.sroa.23.1.i.lcssa.i, %i.it    ; 5 uses
  %.not7.i = icmp ult i64 %i.iu, %.sroa.15.090151
  br i1 %.not7.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSj12split_at_mutCsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit.i
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj14swap_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef %i.iu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.091150, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = xor i64 %i.iu, -1
  %i.iy = add i64 %.sroa.15.090151, %i.ix
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef %i.iu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.089152, i32 noundef %i.hd, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.r:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotjNvYjNtNtBa_3cmp10PartialOrd2ltECsC8CapfvpQ1_5salsa.exit
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 %i.hq
  %.sroa.023.0.val = load i64, ptr %.sroa.023.089152, align 8, !alias.scope !78, !noalias !81, !noundef !16
  %.val = load i64, ptr %i.iz, align 8, !alias.scope !81, !noalias !78, !noundef !16
  %i.ja = icmp ult i64 %.sroa.023.0.val, %.val
  br i1 %i.ja, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvMNtCs4NRVxsYgnAr_4core5sliceSj14swap_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 %.sroa.0.091150, i64 noundef range(i64 33, 1152921504606846976) %.sroa.15.090151, i64 noundef 0, i64 noundef range(i64 0, 1152921504606846975) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !860)
  %i.jc = load i64, ptr %i.jb, align 8, !alias.scope !862, !noalias !860, !noundef !16 ; 2 uses
  %i.jd = getelementptr [8 x i8], ptr %.sroa.0.091150, i64 %.sroa.15.090151 ; 3 uses
  %i.je = getelementptr i8, ptr %i.jd, i64 -8     ; 2 uses
  %.sroa.13.030.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.091150, i64 16 ; 3 uses
  %i.jf = icmp ult ptr %.sroa.13.030.i.i45, %i.je
  %.val1.i.pre.i.i46 = load i64, ptr %.sroa.0.091150, align 8, !alias.scope !865, !noalias !857 ; 4 uses
  br i1 %i.jf, label %.lr.ph.i.i60, label %.preheader.i.i47

.preheader.i.i47:                                 ; preds = %.lr.ph.i.i60, %bb.s
  %.sroa.23.0.lcssa.i.i48 = phi i64 [ 0, %bb.s ], [ %i.jx, %.lr.ph.i.i60 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i49 = phi ptr [ %i.jb, %bb.s ], [ %i.js, %.lr.ph.i.i60 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i50 = phi ptr [ %.sroa.13.030.i.i45, %bb.s ], [ %.sroa.13.0.i.i66, %.lr.ph.i.i60 ] ; 2 uses
  %i.jg = icmp eq ptr %.sroa.13.0.lcssa.i.i50, %i.jd
  br i1 %i.jg, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicjNCINvB2_9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltE0ECsC8CapfvpQ1_5salsa.exit.i, label %.cont.i.i51

.cont.i.i51:                                      ; preds = %.preheader.i.i47, %.cont.i.i51
  %.sroa.015.1.i7.i52 = phi ptr [ %.sroa.13.1.i6.i53, %.cont.i.i51 ], [ %.sroa.015.0.lcssa.i.i49, %.preheader.i.i47 ]
  %.sroa.13.1.i6.i53 = phi ptr [ %.sroa.13.1.sroa.gep.i.i56, %.cont.i.i51 ], [ %.sroa.13.0.lcssa.i.i50, %.preheader.i.i47 ] ; 4 uses
  %.sroa.23.1.i5.i54 = phi i64 [ %i.jl, %.cont.i.i51 ], [ %.sroa.23.0.lcssa.i.i48, %.preheader.i.i47 ] ; 2 uses
  %.val.i.else.val.i.i55 = load i64, ptr %.sroa.13.1.i6.i53, align 8, !alias.scope !866, !noalias !869, !noundef !16 ; 2 uses
  %i.jh = icmp uge i64 %.val1.i.pre.i.i46, %.val.i.else.val.i.i55
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.sroa.23.1.i5.i54 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !alias.scope !862, !noalias !873
  store i64 %i.jj, ptr %.sroa.015.1.i7.i52, align 8, !alias.scope !862, !noalias !873
  store i64 %.val.i.else.val.i.i55, ptr %i.ji, align 8, !alias.scope !862, !noalias !873
end_hunk_2
