Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_server-9f9a063b6d2572a4.ruff_server.250241f5eb4d154d-cgu.10?download=true
inline.NumInlined: 2048
inline.NumDeleted: 975
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsE16bulk_steal_rightB1W_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2, i64 40, i1 false)
  %i.ae = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %i.r, i64 %i.ag, i1 false), !alias.scope !1562
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ai = mul nuw nsw i64 %i.q, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.t, i64 %i.ai, i1 false), !alias.scope !1563
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %1
  %i.ak = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.aj, i64 %i.ak, i1 false), !alias.scope !1564
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %1
  %i.am = mul nuw nsw i64 %i.n, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.al, i64 %i.am, i1 false), !alias.scope !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3
  %i.as = icmp eq i64 %i.ar, 0                    ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.as, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.h, label %bb.i, !prof !8

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil.preheader

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader ], [ %i.db, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.at, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil ], [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil.preheader ]
  %i.at = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.au = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23.epil
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.aw, align 8
  %i.ax = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 712
  store i16 %i.ax, ptr %i.ay, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil, !llvm.loop !1555

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.az, i64 %i.bc, i1 false), !alias.scope !1566
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %1
  %i.be = shl nuw nsw i64 %i.n, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bf, i1 false), !alias.scope !1567
  %i.bg = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bi, align 8
  %i.bj = trunc nuw nsw i64 %i.ae to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bj, ptr %i.bk, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bm = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bl to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.br to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bv, ptr %i.bw, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.by = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bx to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.cg, align 8
  %i.ch = trunc nuw nsw i64 %i.cd to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ch, ptr %i.ci, align 8
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cj = add nuw nsw i64 %i.k, 1
  %i.ck = sub nsw i64 %i.cj, %1                   ; 2 uses
  %xtraiter = and i64 %i.ck, 3                    ; 3 uses
  %i.cl = icmp samesign ult i64 %i.n, 3
  br i1 %i.cl, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.epil.preheader, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader.new

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader
  %unroll_iter = and i64 %i.ck, -4
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader.new ], [ %i.db, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit ]
  %i.cm = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.co, align 8
  %i.cp = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 712
  store i16 %i.cp, ptr %i.cq, align 8
  %i.cr = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cm
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.ct, align 8
  %i.cu = trunc nuw nsw i64 %i.cm to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 712
  store i16 %i.cu, ptr %i.cv, align 8
  %i.cw = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.cy, align 8
  %i.cz = trunc nuw nsw i64 %i.cr to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 712
  store i16 %i.cz, ptr %i.da, align 8
  %i.db = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cw
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cw to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 712
  store i16 %i.df, ptr %i.dg, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtNtCs3aZOKTqqjPR_11ruff_server7session5index17WorkspaceSettingsNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB24_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_recvCs3aZOKTqqjPR_11ruff_server(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.0.034 = phi i32 [ 0, %bb.a ], [ %.sroa.0.034.be, %.backedge.backedge ] ; 13 uses
  %.sroa.014.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.014.0.be, %.backedge.backedge ] ; 3 uses
  %.sroa.05.0 = phi i64 [ %i.a, %bb.a ], [ %.sroa.05.0.be, %.backedge.backedge ] ; 5 uses
  %i.e = lshr i64 %.sroa.05.0, 1                  ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 3 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.h = icmp ult i32 %.sroa.0.034, 7
  br i1 %i.h, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.i = icmp ult i32 %.sroa.0.034, 11
  br i1 %i.i, label %.loopexit.i.thread, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.j, %.preheader.i ], [ 0, %bb.b ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.j, %.sroa.0.034
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.k, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.l = add nuw nsw i32 %.sroa.0.034, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.2 = phi i32 [ %i.l, %.loopexit.i.thread ], [ %.sroa.0.034, %.loopexit.i ]
  %i.m = load atomic i64, ptr %0 acquire, align 128
  %i.n = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit
  %.sroa.0.034.be = phi i32 [ %spec.select35, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %.sroa.0.2, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %.sroa.0.3, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  %.sroa.014.0.be = phi ptr [ %i.ai, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.n, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %i.ae, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  %.sroa.05.0.be = phi i64 [ %i.ah, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.m, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %i.ad, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  br label %.backedge

bb.c:                                             ; preds = %.backedge
  %i.o = add i64 %.sroa.05.0, 2                   ; 2 uses
  %i.p = and i64 %.sroa.05.0, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  fence seq_cst
  %i.r = load atomic i64, ptr %i.d monotonic, align 128 ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = icmp eq i64 %i.e, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.unshifted = xor i64 %i.r, %.sroa.05.0
  %.not = icmp ugt i64 %.not.unshifted, 63
  %2 = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.o, %2
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %i.r, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.01.0 = phi i64 [ %i.o, %bb.c ], [ %spec.select, %bb.e ] ; 2 uses
  %i.w = icmp eq ptr %.sroa.014.0, null
  br i1 %i.w, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.x, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.p
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ true, %bb.h ], [ false, %bb.f ]
  ret i1 %.sroa.0.0

bb.j:                                             ; preds = %bb.g
  %i.y = icmp ult i32 %.sroa.0.034, 7
  br i1 %i.y, label %.preheader.i21, label %.loopexit.i20

.loopexit.i20:                                    ; preds = %bb.j
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.z = icmp ult i32 %.sroa.0.034, 11
  br i1 %i.z, label %.loopexit.i20.thread, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24

.preheader.i21:                                   ; preds = %bb.j, %.preheader.i21
  %.sroa.0.03.i22 = phi i32 [ %i.aa, %.preheader.i21 ], [ 0, %bb.j ]
  %i.aa = add nuw nsw i32 %.sroa.0.03.i22, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i23 = lshr i32 %i.aa, %.sroa.0.034
  %i.ab = icmp eq i32 %.sroa.0.0.highbits.i23, 0
  br i1 %i.ab, label %.preheader.i21, label %.loopexit.i20.thread

.loopexit.i20.thread:                             ; preds = %.preheader.i21, %.loopexit.i20
  %i.ac = add nuw nsw i32 %.sroa.0.034, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24: ; preds = %.loopexit.i20, %.loopexit.i20.thread
  %.sroa.0.3 = phi i32 [ %i.ac, %.loopexit.i20.thread ], [ %.sroa.0.034, %.loopexit.i20 ]
  %i.ad = load atomic i64, ptr %0 acquire, align 128
  %i.ae = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.g
  %i.af = cmpxchg weak ptr %0, i64 %.sroa.05.0, i64 %.sroa.01.0 seq_cst acquire, align 8 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load atomic ptr, ptr %i.b acquire, align 8
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034, i32 6)
  br label %bb.m

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit: ; preds = %bb.m
  %i.aj = icmp ult i32 %.sroa.0.034, 7
  %i.ak = zext i1 %i.aj to i32
  %spec.select35 = add nuw nsw i32 %.sroa.0.034, %i.ak
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.al, %bb.m ]
  %i.al = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i26 = lshr i32 %i.al, %.sroa.0.0.i.i
  %i.am = icmp eq i32 %.sroa.0.0.highbits.i26, 0
  br i1 %i.am, label %bb.m, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit

bb.n:                                             ; preds = %bb.k
  %i.an = icmp eq i64 %i.f, 30
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 2976 ; 2 uses
  %i.ap = load atomic ptr, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.lr.ph.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit

.lr.ph.i:                                         ; preds = %bb.o, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.02.i27 = phi i32 [ %.sroa.0.1.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.ar = icmp ult i32 %.sroa.0.02.i27, 7
  br i1 %i.ar, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.as = icmp ult i32 %.sroa.0.02.i27, 11
  br i1 %i.as, label %.loopexit.i.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.at, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.at = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.at, %.sroa.0.02.i27
  %i.au = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.au, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.av = add nuw nsw i32 %.sroa.0.02.i27, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.av, %.loopexit.i.thread.i ], [ %.sroa.0.02.i27, %.loopexit.i.i ]
  %i.aw = load atomic ptr, ptr %i.ao acquire, align 8 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.o
  %.lcssa.i = phi ptr [ %i.ap, %bb.o ], [ %i.aw, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ] ; 2 uses
  %i.ay = and i64 %.sroa.01.0, -2
  %3 = add i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 2976
  %i.ba = load atomic ptr, ptr %i.az monotonic, align 8
  %4 = icmp ne ptr %i.ba, null
  %5 = zext i1 %4 to i64
  %spec.select19 = or disjoint i64 %3, %5
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select19, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.014.0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.bc, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE18disconnect_sendersCs3aZOKTqqjPR_11ruff_server(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtCsfCaL8mGBm0d_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE20disconnect_receiversCs3aZOKTqqjPR_11ruff_server(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.04042.i = phi i32 [ %.sroa.0.2.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.i = icmp ult i32 %.sroa.0.04042.i, 11
  br i1 %i.i, label %.loopexit.i.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.j, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.j, %.sroa.0.04042.i
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.k, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.l = add nuw nsw i32 %.sroa.0.04042.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.l, %.loopexit.i.thread.i ], [ %.sroa.0.04042.i, %.loopexit.i.i ] ; 2 uses
  %i.m = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.n = and i64 %i.m, 62
  %i.o = icmp eq i64 %i.n, 62
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.m, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.2.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %i.p = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.q = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %i.t = lshr i64 %i.q, 1                         ; 3 uses
  %i.u = icmp ne i64 %i.t, %i.p
  %i.v = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.ab, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.t, %i.p
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.3.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.w = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.w, label %.preheader.i22.i, label %.loopexit.i21.i

.loopexit.i21.i:                                  ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.x = icmp ult i32 %.sroa.0.1.i, 11
  br i1 %i.x, label %.loopexit.i21.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

.preheader.i22.i:                                 ; preds = %.preheader.i, %.preheader.i22.i
  %.sroa.0.03.i23.i = phi i32 [ %i.y, %.preheader.i22.i ], [ 0, %.preheader.i ]
  %i.y = add nuw nsw i32 %.sroa.0.03.i23.i, 1     ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i24.i = lshr i32 %i.y, %.sroa.0.1.i
  %i.z = icmp eq i32 %.sroa.0.0.highbits.i24.i, 0
  br i1 %i.z, label %.preheader.i22.i, label %.loopexit.i21.thread.i

.loopexit.i21.thread.i:                           ; preds = %.preheader.i22.i, %.loopexit.i21.i
  %i.aa = add nuw nsw i32 %.sroa.0.1.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i: ; preds = %.loopexit.i21.thread.i, %.loopexit.i21.i
  %.sroa.0.3.i = phi i32 [ %i.aa, %.loopexit.i21.thread.i ], [ %.sroa.0.1.i, %.loopexit.i21.i ]
  %i.ab = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ab, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.f, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.f ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.q, %.loopexit.i ], [ %i.bd, %bb.f ]
  %i.ac = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ac, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE20discard_all_messagesCs3aZOKTqqjPR_11ruff_server.exit, label %bb.c

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.f
  %i.ad = phi i64 [ %i.be, %bb.f ], [ %i.t, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bd, %bb.f ], [ %i.q, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.f ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.ae = and i64 %i.ad, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ae, 31
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 2984, i64 noundef 8) #19
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE20discard_all_messagesCs3aZOKTqqjPR_11ruff_server.exit

bb.d:                                             ; preds = %.lr.ph48.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 2976 ; 3 uses
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ai, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.aj = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.aj, label %.loopexit.i.thread.i.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.ak, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ak = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.ak, %.sroa.0.02.i.i
  %i.al = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.al, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.am = add nuw nsw i32 %.sroa.0.02.i.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.am, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i.i, %.loopexit.i.i.i ]
  %i.an = load atomic ptr, ptr %i.af acquire, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit.i

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.d
  %i.ap = load atomic ptr, ptr %i.af acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.145.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 2984, i64 noundef 8) #19
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph48.i
  %i.aq = getelementptr inbounds nuw [96 x i8], ptr %.sroa.011.145.i, i64 %i.ae ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88 ; 2 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.e, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i
  %.sroa.0.02.i27.i = phi i32 [ %.sroa.0.1.i30.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i ], [ 0, %bb.e ] ; 5 uses
  %i.av = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.av, label %.preheader.i.i32.i, label %.loopexit.i.i28.i

.loopexit.i.i28.i:                                ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.aw = icmp ult i32 %.sroa.0.02.i27.i, 11
  br i1 %i.aw, label %.loopexit.i.thread.i31.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

.preheader.i.i32.i:                               ; preds = %.lr.ph.i26.i, %.preheader.i.i32.i
  %.sroa.0.03.i.i33.i = phi i32 [ %i.ax, %.preheader.i.i32.i ], [ 0, %.lr.ph.i26.i ]
  %i.ax = add nuw nsw i32 %.sroa.0.03.i.i33.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause()
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE4sendCs3aZOKTqqjPR_11ruff_server:bb.a
bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECs3aZOKTqqjPR_11ruff_server.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !1573
  %i.x = tail call noundef align 8 dereferenceable_or_null(2984) ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef 2984, i64 noundef 8) #19, !noalias !1573 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.j, !prof !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 2984) #30
          to label %.noexc24.i unwind label %.loopexit.split-lp.i, !noalias !1573

.noexc24.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = cmpxchg ptr %i.c, ptr null, ptr %i.x release monotonic, align 8, !noalias !1573
  %i.aa = extractvalue { ptr, i1 } %i.z, 1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store atomic ptr %i.x, ptr %i.g release, align 8, !noalias !1573
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ab = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 2984, i64 noundef 8) #19, !noalias !1573
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = load atomic i64, ptr %i.a acquire, align 128, !noalias !1573
  %i.ad = load atomic ptr, ptr %i.c acquire, align 8, !noalias !1573
  br label %.backedge.i

bb.o:                                             ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECs3aZOKTqqjPR_11ruff_server.exit.i
  %.sroa.09.2.i = phi ptr [ %.sroa.09.073.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list5BlockNtNtCshzDG46PUpLf_10lsp_server3msg7MessageEEEECs3aZOKTqqjPR_11ruff_server.exit.i ], [ %i.x, %bb.k ] ; 3 uses
  %i.ae = add i64 %.sroa.01.074.i, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.01.074.i, i64 %i.ae seq_cst acquire, align 8, !noalias !1573 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.p, label %bb.q, label %._crit_edge.i

bb.q:                                             ; preds = %bb.p
  %.not18.i = icmp eq ptr %.sroa.038.3.i, null
  br i1 %.not18.i, label %bb.r, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit.thread34, !prof !8

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #30
          to label %.noexc5 unwind label %.body.thread26

.noexc5:                                          ; preds = %bb.r
  unreachable

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit.thread34: ; preds = %bb.q
  store atomic ptr %.sroa.038.3.i, ptr %i.c release, align 8, !noalias !1573
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !1573 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 2976
  store atomic ptr %.sroa.038.3.i, ptr %i.aj release, align 8, !noalias !1573
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.013.0.copyload37 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx38, i64 80, i1 false)
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE5writeCs3aZOKTqqjPR_11ruff_server.exit.thread

bb.s:                                             ; preds = %bb.o
  %i.ak = load atomic ptr, ptr %i.c acquire, align 8, !noalias !1573
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.072.i, i32 6)
  br label %bb.t

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i: ; preds = %bb.t
  %i.al = icmp ult i32 %.sroa.0.072.i, 7
  %i.am = zext i1 %i.al to i32
  %spec.select.i = add nuw nsw i32 %.sroa.0.072.i, %i.am
  br label %.backedge.i

bb.t:                                             ; preds = %bb.t, %bb.s
  %.sroa.0.02.i.i = phi i32 [ 0, %bb.s ], [ %i.an, %bb.t ]
  %i.an = add nuw nsw i32 %.sroa.0.02.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !1573
  %.sroa.0.0.highbits.i32.i = lshr i32 %i.an, %.sroa.0.0.i.i.i
  %i.ao = icmp eq i32 %.sroa.0.0.highbits.i32.i, 0
  br i1 %i.ao, label %bb.t, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.070.i, %.loopexit.i ], [ %.sroa.038.3.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ap, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.u
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 2984, i64 noundef 8) #19, !noalias !1573
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.p
  %.sroa.9.0 = phi i64 [ %i.i, %bb.p ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.09.2.i, %bb.p ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.038.4.i = phi ptr [ %.sroa.038.3.i, %bb.p ], [ %.sroa.038.0.be.i, %.backedge.i ] ; 2 uses
  %i.aq = icmp eq ptr %.sroa.038.4.i, null
  br i1 %i.aq, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.4.i, i64 noundef 2984, i64 noundef 8) #19, !noalias !1573
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit

.body.thread26:                                   ; preds = %bb.r, %.noexc23.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit: ; preds = %bb.v, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.013.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  %i.ar = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ar, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE5writeCs3aZOKTqqjPR_11ruff_server.exit, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE5writeCs3aZOKTqqjPR_11ruff_server.exit.thread

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE5writeCs3aZOKTqqjPR_11ruff_server.exit.thread: ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit.thread34, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit
  %.sroa.013.0.copyload41 = phi i64 [ %.sroa.013.0.copyload37, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit.thread34 ], [ %.sroa.013.0.copyload, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit ]
  %.sroa.47.140 = phi ptr [ %.sroa.09.2.i, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit.thread34 ], [ %.sroa.47.0, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit ]
  %.sroa.9.139 = phi i64 [ 30, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit.thread34 ], [ %.sroa.9.0, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit ]
  %i.as = getelementptr inbounds nuw [96 x i8], ptr %.sroa.47.140, i64 %.sroa.9.139 ; 3 uses
  store i64 %.sroa.013.0.copyload41, ptr %i.as, align 8, !noalias !1574
  %.sroa.5.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, i64 80, i1 false), !noalias !1574
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !1576 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtCsfCaL8mGBm0d_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.x

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE5writeCs3aZOKTqqjPR_11ruff_server.exit: ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit.thread
  %.sroa.013.0.copyload33 = phi i64 [ %.sroa.013.0.copyload31, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit.thread ], [ %.sroa.013.0.copyload, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE10start_sendCs3aZOKTqqjPR_11ruff_server.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, i64 80, i1 false), !alias.scope !1576
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.013.0.copyload33, -2
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE5writeCs3aZOKTqqjPR_11ruff_server.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.013.0.copyload33, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.y

bb.x:                                             ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE5writeCs3aZOKTqqjPR_11ruff_server.exit.thread, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtCshzDG46PUpLf_10lsp_server3msg7MessageE5writeCs3aZOKTqqjPR_11ruff_server.exit
  store i64 2, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.z:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body24

.body.thread:                                     ; preds = %bb.u, %.thread50.i, %.body.thread26
  %eh.lpad-body24 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread26 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.u ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCshzDG46PUpLf_10lsp_server3msg7MessageECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(88) %2) #31
          to label %bb.z unwind label %bb.aa

bb.aa:                                            ; preds = %.body.thread
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE10start_recvB1d_(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.0.034 = phi i32 [ 0, %bb.a ], [ %.sroa.0.034.be, %.backedge.backedge ] ; 13 uses
  %.sroa.014.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.014.0.be, %.backedge.backedge ] ; 4 uses
  %.sroa.05.0 = phi i64 [ %i.a, %bb.a ], [ %.sroa.05.0.be, %.backedge.backedge ] ; 5 uses
  %i.e = lshr i64 %.sroa.05.0, 1                  ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 3 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.h = icmp ult i32 %.sroa.0.034, 7
  br i1 %i.h, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.i = icmp ult i32 %.sroa.0.034, 11
  br i1 %i.i, label %.loopexit.i.thread, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.j, %.preheader.i ], [ 0, %bb.b ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.j, %.sroa.0.034
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.k, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.l = add nuw nsw i32 %.sroa.0.034, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.2 = phi i32 [ %i.l, %.loopexit.i.thread ], [ %.sroa.0.034, %.loopexit.i ]
  %i.m = load atomic i64, ptr %0 acquire, align 128
  %i.n = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit
  %.sroa.0.034.be = phi i32 [ %spec.select35, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %.sroa.0.2, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %.sroa.0.3, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  %.sroa.014.0.be = phi ptr [ %i.ai, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.n, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %i.ae, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  %.sroa.05.0.be = phi i64 [ %i.ah, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.m, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %i.ad, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  br label %.backedge

bb.c:                                             ; preds = %.backedge
  %i.o = add i64 %.sroa.05.0, 2                   ; 2 uses
  %i.p = and i64 %.sroa.05.0, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  fence seq_cst
  %i.r = load atomic i64, ptr %i.d monotonic, align 128 ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = icmp eq i64 %i.e, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.unshifted = xor i64 %i.r, %.sroa.05.0
  %.not = icmp ugt i64 %.not.unshifted, 63
  %2 = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.o, %2
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %i.r, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.01.0 = phi i64 [ %i.o, %bb.c ], [ %spec.select, %bb.e ] ; 2 uses
  %i.w = icmp eq ptr %.sroa.014.0, null
  br i1 %i.w, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.x, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.p
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ true, %bb.h ], [ false, %bb.f ]
  ret i1 %.sroa.0.0

bb.j:                                             ; preds = %bb.g
  %i.y = icmp ult i32 %.sroa.0.034, 7
  br i1 %i.y, label %.preheader.i21, label %.loopexit.i20

.loopexit.i20:                                    ; preds = %bb.j
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.z = icmp ult i32 %.sroa.0.034, 11
  br i1 %i.z, label %.loopexit.i20.thread, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24

.preheader.i21:                                   ; preds = %bb.j, %.preheader.i21
  %.sroa.0.03.i22 = phi i32 [ %i.aa, %.preheader.i21 ], [ 0, %bb.j ]
  %i.aa = add nuw nsw i32 %.sroa.0.03.i22, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i23 = lshr i32 %i.aa, %.sroa.0.034
  %i.ab = icmp eq i32 %.sroa.0.0.highbits.i23, 0
  br i1 %i.ab, label %.preheader.i21, label %.loopexit.i20.thread

.loopexit.i20.thread:                             ; preds = %.preheader.i21, %.loopexit.i20
  %i.ac = add nuw nsw i32 %.sroa.0.034, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24: ; preds = %.loopexit.i20, %.loopexit.i20.thread
  %.sroa.0.3 = phi i32 [ %i.ac, %.loopexit.i20.thread ], [ %.sroa.0.034, %.loopexit.i20 ]
  %i.ad = load atomic i64, ptr %0 acquire, align 128
  %i.ae = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.g
  %i.af = cmpxchg weak ptr %0, i64 %.sroa.05.0, i64 %.sroa.01.0 seq_cst acquire, align 8 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load atomic ptr, ptr %i.b acquire, align 8
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034, i32 6)
  br label %bb.m

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit: ; preds = %bb.m
  %i.aj = icmp ult i32 %.sroa.0.034, 7
  %i.ak = zext i1 %i.aj to i32
  %spec.select35 = add nuw nsw i32 %.sroa.0.034, %i.ak
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.al, %bb.m ]
  %i.al = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i26 = lshr i32 %i.al, %.sroa.0.0.i.i
  %i.am = icmp eq i32 %.sroa.0.0.highbits.i26, 0
  br i1 %i.am, label %bb.m, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit

bb.n:                                             ; preds = %bb.k
  %i.an = icmp eq i64 %i.f, 30
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = load atomic ptr, ptr %.sroa.014.0 acquire, align 8 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.lr.ph.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE9wait_nextB1a_.exit

.lr.ph.i:                                         ; preds = %bb.o, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.02.i27 = phi i32 [ %.sroa.0.1.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.aq = icmp ult i32 %.sroa.0.02.i27, 7
  br i1 %i.aq, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.ar = icmp ult i32 %.sroa.0.02.i27, 11
  br i1 %i.ar, label %.loopexit.i.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.as, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.as = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.as, %.sroa.0.02.i27
  %i.at = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.at, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.au = add nuw nsw i32 %.sroa.0.02.i27, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.au, %.loopexit.i.thread.i ], [ %.sroa.0.02.i27, %.loopexit.i.i ]
  %i.av = load atomic ptr, ptr %.sroa.014.0 acquire, align 8 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.lr.ph.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE9wait_nextB1a_.exit

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE9wait_nextB1a_.exit: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.o
  %.lcssa.i = phi ptr [ %i.ao, %bb.o ], [ %i.av, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ] ; 2 uses
  %i.ax = and i64 %.sroa.01.0, -2
  %3 = add i64 %i.ax, 2
  %i.ay = load atomic ptr, ptr %.lcssa.i monotonic, align 8
  %4 = icmp ne ptr %i.ay, null
  %5 = zext i1 %4 to i64
  %spec.select19 = or disjoint i64 %3, %5
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select19, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE9wait_nextB1a_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.014.0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.ba, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE18disconnect_sendersB1d_(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtCsfCaL8mGBm0d_17crossbeam_channel5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE20disconnect_receiversB1d_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.04042.i = phi i32 [ %.sroa.0.2.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.i = icmp ult i32 %.sroa.0.04042.i, 11
  br i1 %i.i, label %.loopexit.i.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.j, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.j, %.sroa.0.04042.i
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.k, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.l = add nuw nsw i32 %.sroa.0.04042.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.l, %.loopexit.i.thread.i ], [ %.sroa.0.04042.i, %.loopexit.i.i ] ; 2 uses
  %i.m = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.n = and i64 %i.m, 62
  %i.o = icmp eq i64 %i.n, 62
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.m, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.2.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %i.p = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.q = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %i.t = lshr i64 %i.q, 1                         ; 3 uses
  %i.u = icmp ne i64 %i.t, %i.p
  %i.v = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.ab, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.t, %i.p
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.3.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.w = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.w, label %.preheader.i22.i, label %.loopexit.i21.i

.loopexit.i21.i:                                  ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.x = icmp ult i32 %.sroa.0.1.i, 11
  br i1 %i.x, label %.loopexit.i21.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

.preheader.i22.i:                                 ; preds = %.preheader.i, %.preheader.i22.i
  %.sroa.0.03.i23.i = phi i32 [ %i.y, %.preheader.i22.i ], [ 0, %.preheader.i ]
  %i.y = add nuw nsw i32 %.sroa.0.03.i23.i, 1     ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i24.i = lshr i32 %i.y, %.sroa.0.1.i
  %i.z = icmp eq i32 %.sroa.0.0.highbits.i24.i, 0
  br i1 %i.z, label %.preheader.i22.i, label %.loopexit.i21.thread.i

.loopexit.i21.thread.i:                           ; preds = %.preheader.i22.i, %.loopexit.i21.i
  %i.aa = add nuw nsw i32 %.sroa.0.1.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i: ; preds = %.loopexit.i21.thread.i, %.loopexit.i21.i
  %.sroa.0.3.i = phi i32 [ %i.aa, %.loopexit.i21.thread.i ], [ %.sroa.0.1.i, %.loopexit.i21.i ]
  %i.ab = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ab, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %bb.f, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.f ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.q, %.loopexit.i ], [ %i.bd, %bb.f ]
  %i.ac = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ac, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE20discard_all_messagesB1d_.exit, label %bb.c

.lr.ph48.i:                                       ; preds = %.loopexit.i, %bb.f
  %i.ad = phi i64 [ %i.be, %bb.f ], [ %i.t, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bd, %bb.f ], [ %i.q, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %bb.f ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.ae = and i64 %i.ad, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ae, 31
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 3232, i64 noundef 8) #19
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE20discard_all_messagesB1d_.exit

bb.d:                                             ; preds = %.lr.ph48.i
  %i.af = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE9wait_nextB1a_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ah, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.ai, label %.loopexit.i.thread.i.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.aj, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.aj = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.aj, %.sroa.0.02.i.i
  %i.ak = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.ak, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.al = add nuw nsw i32 %.sroa.0.02.i.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.al, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i.i, %.loopexit.i.i.i ]
  %i.am = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE9wait_nextB1a_.exit.i

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE9wait_nextB1a_.exit.i: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.d
  %i.ao = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 3232, i64 noundef 8) #19
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph48.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 8
  %i.aq = getelementptr inbounds nuw [104 x i8], ptr %i.ap, i64 %i.ae ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 2 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i26.i, label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtCs3aZOKTqqjPR_11ruff_server6server9main_loop5EventE10wait_writeB17_.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.e, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i
  %.sroa.0.02.i27.i = phi i32 [ %.sroa.0.1.i30.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i ], [ 0, %bb.e ] ; 5 uses
  %i.av = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.av, label %.preheader.i.i32.i, label %.loopexit.i.i28.i

.loopexit.i.i28.i:                                ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.aw = icmp ult i32 %.sroa.0.02.i27.i, 11
  br i1 %i.aw, label %.loopexit.i.thread.i31.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

.preheader.i.i32.i:                               ; preds = %.lr.ph.i26.i, %.preheader.i.i32.i
  %.sroa.0.03.i.i33.i = phi i32 [ %i.ax, %.preheader.i.i32.i ], [ 0, %.lr.ph.i26.i ]
  %i.ax = add nuw nsw i32 %.sroa.0.03.i.i33.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i34.i = lshr i32 %i.ax, %.sroa.0.02.i27.i
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE20disconnect_receiversB1h_:bb.a
._crit_edge53.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.q, %.loopexit.i ], [ %i.bq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i ]
  %i.ac = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ac, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE20discard_all_messagesB1h_.exit, label %bb.c

.lr.ph52.i:                                       ; preds = %.loopexit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i
  %i.ad = phi i64 [ %i.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i ], [ %i.t, %.loopexit.i ]
  %.sroa.05.050.i = phi i64 [ %i.bq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i ], [ %i.q, %.loopexit.i ]
  %.sroa.011.149.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 6 uses
  %i.ae = and i64 %i.ad, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ae, 31
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %._crit_edge53.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1000, i64 noundef 8) #19
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE20discard_all_messagesB1h_.exit

bb.d:                                             ; preds = %.lr.ph52.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.011.149.i, i64 992 ; 3 uses
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ai, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.aj = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.aj, label %.loopexit.i.thread.i.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.ak, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.ak = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.ak, %.sroa.0.02.i.i
  %i.al = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.al, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.am = add nuw nsw i32 %.sroa.0.02.i.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.am, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i.i, %.loopexit.i.i.i ]
  %i.an = load atomic ptr, ptr %i.af acquire, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.d
  %i.ap = load atomic ptr, ptr %i.af acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.149.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.149.i, i64 noundef 1000, i64 noundef 8) #19
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i

bb.e:                                             ; preds = %.lr.ph52.i
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.149.i, i64 %i.ae ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8
  %i.at = and i64 %i.as, 1
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i28.i, label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i

.lr.ph.i28.i:                                     ; preds = %bb.e, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i31.i
  %.sroa.0.02.i29.i = phi i32 [ %.sroa.0.1.i32.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i31.i ], [ 0, %bb.e ] ; 5 uses
  %i.av = icmp ult i32 %.sroa.0.02.i29.i, 7
  br i1 %i.av, label %.preheader.i.i34.i, label %.loopexit.i.i30.i

.loopexit.i.i30.i:                                ; preds = %.lr.ph.i28.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.aw = icmp ult i32 %.sroa.0.02.i29.i, 11
  br i1 %i.aw, label %.loopexit.i.thread.i33.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i31.i

.preheader.i.i34.i:                               ; preds = %.lr.ph.i28.i, %.preheader.i.i34.i
  %.sroa.0.03.i.i35.i = phi i32 [ %i.ax, %.preheader.i.i34.i ], [ 0, %.lr.ph.i28.i ]
  %i.ax = add nuw nsw i32 %.sroa.0.03.i.i35.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i36.i = lshr i32 %i.ax, %.sroa.0.02.i29.i
  %i.ay = icmp eq i32 %.sroa.0.0.highbits.i.i36.i, 0
  br i1 %i.ay, label %.preheader.i.i34.i, label %.loopexit.i.thread.i33.i

.loopexit.i.thread.i33.i:                         ; preds = %.preheader.i.i34.i, %.loopexit.i.i30.i
  %i.az = add nuw nsw i32 %.sroa.0.02.i29.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i31.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i31.i: ; preds = %.loopexit.i.thread.i33.i, %.loopexit.i.i30.i
  %.sroa.0.1.i32.i = phi i32 [ %i.az, %.loopexit.i.thread.i33.i ], [ %.sroa.0.02.i29.i, %.loopexit.i.i30.i ]
  %i.ba = load atomic i64, ptr %i.ar acquire, align 8
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i28.i, label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i

_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i31.i, %bb.e
  %.val21.i = load ptr, ptr %i.aq, align 8        ; 5 uses
  %i.bd = getelementptr i8, ptr %i.aq, i64 8
  %.val22.i = load ptr, ptr %i.bd, align 8, !nonnull !3, !align !15, !noundef !3 ; 5 uses
  %i.be = load ptr, ptr %.val22.i, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i) ]
  invoke void %i.be(ptr noundef nonnull %.val21.i)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !16, !invariant.load !3 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !17, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef range(i64 1, -9223372036854775808) %i.bg, i64 noundef range(i64 1, 536870913) %i.bj) #19
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i

bb.i:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = getelementptr inbounds nuw i8, ptr %.val22.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !16, !invariant.load !3 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuEp6OutputuNtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server.exit4.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val22.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !17, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef range(i64 1, -9223372036854775808) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #19
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuEp6OutputuNtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceuEp6OutputuNtNtBO_6marker4SendEL_ENtNtBM_4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server.exit4.i.i.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.bk

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_.exit.i: ; preds = %bb.h, %bb.g, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i
  %.sroa.011.2.i = phi ptr [ %i.ap, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i ], [ %.sroa.011.149.i, %bb.g ], [ %.sroa.011.149.i, %bb.h ] ; 2 uses
  %i.bq = add i64 %.sroa.05.050.i, 2              ; 3 uses
  %i.br = lshr i64 %i.bq, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.br, %i.p
  br i1 %.not.i, label %._crit_edge53.i, label %.lr.ph52.i

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE20discard_all_messagesB1h_.exit: ; preds = %._crit_edge53.i, %bb.c
  %i.bs = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bs, ptr %0 release, align 128
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE20discard_all_messagesB1h_.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4recvB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i32 -1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store i32 -1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.0.021 = phi i32 [ 0, %bb.a ], [ %.sroa.0.021.be, %.backedge ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  %i.s = load atomic i64, ptr %1 acquire, align 128, !noalias !1624
  %i.t = load atomic ptr, ptr %i.o acquire, align 8, !noalias !1624
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.b
  %.sroa.0.034.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.034.i.be, %.backedge.i.backedge ] ; 13 uses
  %.sroa.014.0.i = phi ptr [ %i.t, %bb.b ], [ %.sroa.014.0.i.be, %.backedge.i.backedge ] ; 8 uses
  %.sroa.05.0.i = phi i64 [ %i.s, %bb.b ], [ %.sroa.05.0.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.u = lshr i64 %.sroa.05.0.i, 1                ; 2 uses
  %i.v = and i64 %i.u, 31                         ; 6 uses
  %i.w = icmp eq i64 %i.v, 31
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.backedge.i
  %i.x = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.x, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.c
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !1624
  %i.y = icmp ult i32 %.sroa.0.034.i, 11
  br i1 %i.y, label %.loopexit.i.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.z, %.preheader.i.i ], [ 0, %bb.c ]
  %i.z = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1624
  %.sroa.0.0.highbits.i.i = lshr i32 %i.z, %.sroa.0.034.i
  %i.aa = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.aa, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.ab = add nuw nsw i32 %.sroa.0.034.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.ab, %.loopexit.i.thread.i ], [ %.sroa.0.034.i, %.loopexit.i.i ]
  %i.ac = load atomic i64, ptr %1 acquire, align 128, !noalias !1624
  %i.ad = load atomic ptr, ptr %i.o acquire, align 8, !noalias !1624
  br label %.backedge.i.backedge

bb.d:                                             ; preds = %.backedge.i
  %i.ae = add i64 %.sroa.05.0.i, 2                ; 2 uses
  %i.af = and i64 %.sroa.05.0.i, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  fence seq_cst
  %i.ah = load atomic i64, ptr %i.p monotonic, align 128, !noalias !1624 ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = icmp eq i64 %i.u, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.unshifted.i = xor i64 %i.ah, %.sroa.05.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %4 = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.ae, %4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = and i64 %i.ah, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_recvB1h_.exit, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4readB1h_.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ae, %bb.d ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.am = icmp eq ptr %.sroa.014.0.i, null
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = icmp ult i32 %.sroa.0.034.i, 7
  br i1 %i.an, label %.preheader.i21.i, label %.loopexit.i20.i

.loopexit.i20.i:                                  ; preds = %bb.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !1624
  %i.ao = icmp ult i32 %.sroa.0.034.i, 11
  br i1 %i.ao, label %.loopexit.i20.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i

.preheader.i21.i:                                 ; preds = %bb.i, %.preheader.i21.i
  %.sroa.0.03.i22.i = phi i32 [ %i.ap, %.preheader.i21.i ], [ 0, %bb.i ]
  %i.ap = add nuw nsw i32 %.sroa.0.03.i22.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1624
  %.sroa.0.0.highbits.i23.i = lshr i32 %i.ap, %.sroa.0.034.i
  %i.aq = icmp eq i32 %.sroa.0.0.highbits.i23.i, 0
  br i1 %i.aq, label %.preheader.i21.i, label %.loopexit.i20.thread.i

.loopexit.i20.thread.i:                           ; preds = %.preheader.i21.i, %.loopexit.i20.i
  %i.ar = add nuw nsw i32 %.sroa.0.034.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i: ; preds = %.loopexit.i20.thread.i, %.loopexit.i20.i
  %.sroa.0.3.i = phi i32 [ %i.ar, %.loopexit.i20.thread.i ], [ %.sroa.0.034.i, %.loopexit.i20.i ]
  %i.as = load atomic i64, ptr %1 acquire, align 128, !noalias !1624
  %i.at = load atomic ptr, ptr %i.o acquire, align 8, !noalias !1624
  br label %.backedge.i.backedge

bb.j:                                             ; preds = %bb.h
  %i.au = cmpxchg weak ptr %1, i64 %.sroa.05.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !1624 ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load atomic ptr, ptr %i.o acquire, align 8, !noalias !1624
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034.i, i32 6)
  br label %bb.l

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i: ; preds = %bb.l
  %i.ay = icmp ult i32 %.sroa.0.034.i, 7
  %i.az = zext i1 %i.ay to i32
  %spec.select35.i = add nuw nsw i32 %.sroa.0.034.i, %i.az
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.034.i.be = phi i32 [ %spec.select35.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %.sroa.0.2.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %.sroa.0.3.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  %.sroa.014.0.i.be = phi ptr [ %i.ax, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %i.ad, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %i.at, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  %.sroa.05.0.i.be = phi i64 [ %i.aw, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i ], [ %i.ac, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ %i.as, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24.i ]
  br label %.backedge.i

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.02.i.i = phi i32 [ 0, %bb.k ], [ %i.ba, %bb.l ]
  %i.ba = add nuw nsw i32 %.sroa.0.02.i.i, 1      ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1624
  %.sroa.0.0.highbits.i26.i = lshr i32 %i.ba, %.sroa.0.0.i.i.i
  %i.bb = icmp eq i32 %.sroa.0.0.highbits.i26.i, 0
  br i1 %i.bb, label %bb.l, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i

bb.m:                                             ; preds = %bb.j
  %i.bc = icmp eq i64 %i.v, 30
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i, i64 992 ; 2 uses
  %i.be = load atomic ptr, ptr %i.bd acquire, align 8, !noalias !1624 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.n, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i27.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.n ] ; 5 uses
  %i.bg = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.bg, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !1624
  %i.bh = icmp ult i32 %.sroa.0.02.i27.i, 11
  br i1 %i.bh, label %.loopexit.i.thread.i.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.bi, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.bi = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1624
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.bi, %.sroa.0.02.i27.i
  %i.bj = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.bj, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.bk = add nuw nsw i32 %.sroa.0.02.i27.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.bk, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i27.i, %.loopexit.i.i.i ]
  %i.bl = load atomic ptr, ptr %i.bd acquire, align 8, !noalias !1624 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.n
  %.lcssa.i.i = phi ptr [ %i.be, %bb.n ], [ %i.bl, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ] ; 2 uses
  %i.bn = and i64 %.sroa.01.0.i, -2
  %5 = add i64 %i.bn, 2
  %i.bo = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 992
  %i.bp = load atomic ptr, ptr %i.bo monotonic, align 8, !noalias !1624
  %6 = icmp ne ptr %i.bp, null
  %7 = zext i1 %6 to i64
  %spec.select19.i = or disjoint i64 %5, %7
  store atomic ptr %.lcssa.i.i, ptr %i.o release, align 8, !noalias !1624
  store atomic i64 %spec.select19.i, ptr %1 release, align 128, !noalias !1624
  br label %bb.o

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_recvB1h_.exit: ; preds = %bb.g
  %exitcond = icmp eq i32 %.sroa.0.021, 11
  br i1 %exitcond, label %bb.y, label %bb.w

bb.o:                                             ; preds = %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE9wait_nextB1e_.exit.i, %bb.m
  store ptr %.sroa.014.0.i, ptr %i.k, align 8, !alias.scope !1624
  store i64 %i.v, ptr %i.l, align 8, !alias.scope !1624
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.014.0.i, i64 %i.v ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 3 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !1625
  %i.bt = and i64 %i.bs, 1
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i2, label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i

.lr.ph.i.i2:                                      ; preds = %bb.o, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5
  %.sroa.0.02.i.i3 = phi i32 [ %.sroa.0.1.i.i6, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5 ], [ 0, %bb.o ] ; 5 uses
  %i.bv = icmp ult i32 %.sroa.0.02.i.i3, 7
  br i1 %i.bv, label %.preheader.i.i.i8, label %.loopexit.i.i.i4

.loopexit.i.i.i4:                                 ; preds = %.lr.ph.i.i2
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now(), !noalias !1625
  %i.bw = icmp ult i32 %.sroa.0.02.i.i3, 11
  br i1 %i.bw, label %.loopexit.i.thread.i.i7, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5

.preheader.i.i.i8:                                ; preds = %.lr.ph.i.i2, %.preheader.i.i.i8
  %.sroa.0.03.i.i.i9 = phi i32 [ %i.bx, %.preheader.i.i.i8 ], [ 0, %.lr.ph.i.i2 ]
  %i.bx = add nuw nsw i32 %.sroa.0.03.i.i.i9, 1   ; 2 uses
  call void @llvm.x86.sse2.pause(), !noalias !1625
  %.sroa.0.0.highbits.i.i.i10 = lshr i32 %i.bx, %.sroa.0.02.i.i3
  %i.by = icmp eq i32 %.sroa.0.0.highbits.i.i.i10, 0
  br i1 %i.by, label %.preheader.i.i.i8, label %.loopexit.i.thread.i.i7

.loopexit.i.thread.i.i7:                          ; preds = %.preheader.i.i.i8, %.loopexit.i.i.i4
  %i.bz = add nuw nsw i32 %.sroa.0.02.i.i3, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5: ; preds = %.loopexit.i.thread.i.i7, %.loopexit.i.i.i4
  %.sroa.0.1.i.i6 = phi i32 [ %i.bz, %.loopexit.i.thread.i.i7 ], [ %.sroa.0.02.i.i3, %.loopexit.i.i.i4 ]
  %i.ca = load atomic i64, ptr %i.br acquire, align 8, !noalias !1625
  %i.cb = and i64 %i.ca, 1
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i2, label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i

_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i5, %bb.o
  %i.cd = load <2 x ptr>, ptr %i.bq, align 8, !noalias !1625
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !1625 ; 2 uses
  %i.ce = add nuw nsw i64 %i.v, 1                 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 31
  br i1 %i.cf, label %.lr.ph.i3.i, label %bb.s

.lr.ph.i3.i:                                      ; preds = %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i, %bb.r
  %.sroa.0.04.i.i = phi i64 [ %i.co, %bb.r ], [ 0, %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.04.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 2 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8, !noalias !1625
  %i.cj = and i64 %i.ci, 2
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %.lr.ph.i3.i.1

bb.p:                                             ; preds = %.lr.ph.i3.i
  %i.cl = atomicrmw or ptr %i.ch, i64 4 acq_rel, align 8, !noalias !1625
  %i.cm = and i64 %i.cl, 2
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4readB1h_.exit, label %.lr.ph.i3.i.1

.lr.ph.i3.i.1:                                    ; preds = %bb.p, %.lr.ph.i3.i
  %i.co = add nuw nsw i64 %.sroa.0.04.i.i, 2      ; 2 uses
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.04.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56 ; 2 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8, !noalias !1625
  %i.cs = and i64 %i.cr, 2
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i3.i.1
  %i.cu = atomicrmw or ptr %i.cq, i64 4 acq_rel, align 8, !noalias !1625
  %i.cv = and i64 %i.cu, 2
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4readB1h_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i3.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.co, 30
  br i1 %exitcond.not.i.i.1, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE7destroyB1e_.exit.sink.split.i, label %.lr.ph.i3.i

bb.s:                                             ; preds = %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10wait_writeB1b_.exit.i
  %i.cx = atomicrmw or ptr %i.br, i64 2 acq_rel, align 8, !noalias !1625
  %i.cy = and i64 %i.cx, 4
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4readB1h_.exit, label %bb.t

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE7destroyB1e_.exit.sink.split.i: ; preds = %bb.v, %bb.r, %bb.t
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.014.0.i, i64 noundef 1000, i64 noundef 8) #19, !noalias !1625
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4readB1h_.exit

bb.t:                                             ; preds = %bb.s
  %i.da = icmp samesign ult i64 %i.v, 29
  br i1 %i.da, label %.lr.ph.i5.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE7destroyB1e_.exit.sink.split.i

.lr.ph.i5.i:                                      ; preds = %bb.t, %bb.v
  %.sroa.0.04.i6.i = phi i64 [ %i.db, %bb.v ], [ %i.ce, %bb.t ] ; 2 uses
  %i.db = add nuw nsw i64 %.sroa.0.04.i6.i, 1     ; 2 uses
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.014.0.i, i64 %.sroa.0.04.i6.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8, !noalias !1625
  %i.df = and i64 %i.de, 2
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i5.i
  %i.dh = atomicrmw or ptr %i.dd, i64 4 acq_rel, align 8, !noalias !1625
  %i.di = and i64 %i.dh, 2
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4readB1h_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i5.i
  %exitcond.not.i7.i = icmp eq i64 %i.db, 30
  br i1 %exitcond.not.i7.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE7destroyB1e_.exit.sink.split.i, label %.lr.ph.i5.i

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4readB1h_.exit: ; preds = %bb.u, %bb.p, %bb.q, %bb.s, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE7destroyB1e_.exit.sink.split.i
  %i.dk = and i64 %.sroa.57.0.copyload.i, 255
  %i.dl = icmp eq i64 %i.dk, 2
  br i1 %i.dl, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4readB1h_.exit.thread, label %bb.aq

bb.w:                                             ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_recvB1h_.exit
  %i.dm = icmp samesign ult i32 %.sroa.0.021, 7
  br i1 %i.dm, label %.preheader.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.dn, %.preheader.i ], [ 0, %bb.w ]
  %i.dn = add nuw nsw i32 %.sroa.0.03.i, 1        ; 2 uses
  call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.dn, %.sroa.0.021
  %i.do = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.do, label %.preheader.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.preheader.i, %bb.x
  %i.dp = add nuw nsw i32 %.sroa.0.021, 1
  br label %.backedge

.backedge:                                        ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4recvs_0uEB1T_.exit
  %.sroa.0.021.be = phi i32 [ %i.dp, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ 0, %_RINvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtB3_7Context4withNCNvMs1_NtNtB5_7flavors4listINtB1a_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4recvs_0uEB1T_.exit ]
  br label %bb.b

bb.y:                                             ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_recvB1h_.exit
  %i.dq = load i32, ptr %i.i, align 8, !range !28, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.dq, -1
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.ds = call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.dt = extractvalue { i64, i32 } %i.ds, 0      ; 2 uses
  %i.du = icmp eq i64 %i.dt, %i.dr
  br i1 %i.du, label %.split, label %bb.an

bb.aa:                                            ; preds = %.split, %bb.an, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1626
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.415.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dv = load i8, ptr %i.r, align 8, !range !4, !noalias !1627, !noundef !3
  %i.dw = icmp eq i8 %i.dv, 1
  br i1 %i.dw, label %_RNvYNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCs3aZOKTqqjPR_11ruff_server.exit.thread.i.i, label %_RNvYNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCs3aZOKTqqjPR_11ruff_server.exit.i.i, !prof !9

_RNvYNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCs3aZOKTqqjPR_11ruff_server.exit.i.i: ; preds = %bb.aa
  %i.dx = call noundef ptr @_RINvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1j_6option6OptionNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs3aZOKTqqjPR_11ruff_server(ptr noundef nonnull align 8 %i.q, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !1626 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtBZ_6option6OptionNtNtCsfCaL8mGBm0d_17crossbeam_channel7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtNtB1S_7flavors4listINtB3i_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4recvs_0uEs_0uEB42_.exit.i, label %_RNvYNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCs3aZOKTqqjPR_11ruff_server.exit.thread.i.i

_RNvYNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCs3aZOKTqqjPR_11ruff_server.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCs3aZOKTqqjPR_11ruff_server.exit.i.i, %bb.aa
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.dx, %_RNvYNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCs3aZOKTqqjPR_11ruff_server.exit.i.i ], [ %i.q, %bb.aa ] ; 4 uses
  %i.dz = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1626, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1626
  %.not.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i, label %bb.ab, label %bb.ah, !prof !8

bb.ab:                                            ; preds = %_RNvYNCNKNvNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtBb_7Context4with7CONTEXT00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell4CellIB26_BS_EEEEEE9call_onceCs3aZOKTqqjPR_11ruff_server.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1626
  %i.ea = call noundef nonnull ptr @_RNvMNtCsfCaL8mGBm0d_17crossbeam_channel7contextNtB2_7Context3new(), !noalias !1626 ; 2 uses
  store ptr %i.ea, ptr %i.e, align 8, !noalias !1626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1626
  store ptr %i.g, ptr %i.c, align 8, !noalias !1626
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB7_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4recvs_0B1j_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.ea)
          to label %bb.ae unwind label %bb.ac, !noalias !1626

bb.ac:                                            ; preds = %bb.ab
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1628)
end_hunk_2
begin_hunk_3_@_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE4sendB1h_:bb.a
  store atomic ptr %i.x, ptr %i.g release, align 8, !noalias !1645
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ab = icmp eq ptr %.sroa.038.3.i, null
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.3.i, i64 noundef 1000, i64 noundef 8) #19, !noalias !1645
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ac = load atomic i64, ptr %i.a acquire, align 128, !noalias !1645
  %i.ad = load atomic ptr, ptr %i.c acquire, align 8, !noalias !1645
  br label %.backedge.i

bb.o:                                             ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEEEEB2C_.exit.i
  %.sroa.09.2.i = phi ptr [ %.sroa.09.073.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4list5BlockNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEEEEB2C_.exit.i ], [ %i.x, %bb.k ] ; 3 uses
  %i.ae = add i64 %.sroa.01.074.i, 2
  %i.af = cmpxchg weak ptr %i.a, i64 %.sroa.01.074.i, i64 %i.ae seq_cst acquire, align 8, !noalias !1645 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.p, label %bb.q, label %._crit_edge.i

bb.q:                                             ; preds = %bb.p
  %.not18.i = icmp eq ptr %.sroa.038.3.i, null
  br i1 %.not18.i, label %bb.r, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit.thread42, !prof !8

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #30
          to label %.noexc7 unwind label %.body.thread33

.noexc7:                                          ; preds = %bb.r
  unreachable

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit.thread42: ; preds = %bb.q
  store atomic ptr %.sroa.038.3.i, ptr %i.c release, align 8, !noalias !1645
  %i.ai = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !1645 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.2.i, i64 992
  store atomic ptr %.sroa.038.3.i, ptr %i.aj release, align 8, !noalias !1645
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.012)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload46 = load i8, ptr %.sroa.5.0..sroa_idx45, align 8
  %.sroa.620.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %2, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.620, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.620.0..sroa_idx47, i64 7, i1 false)
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE5writeB1h_.exit.thread

bb.s:                                             ; preds = %bb.o
  %i.ak = load atomic ptr, ptr %i.c acquire, align 8, !noalias !1645
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.072.i, i32 6)
  br label %bb.t

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i: ; preds = %bb.t
  %i.al = icmp ult i32 %.sroa.0.072.i, 7
  %i.am = zext i1 %i.al to i32
  %spec.select.i = add nuw nsw i32 %.sroa.0.072.i, %i.am
  br label %.backedge.i

bb.t:                                             ; preds = %bb.t, %bb.s
  %.sroa.0.02.i.i = phi i32 [ 0, %bb.s ], [ %i.an, %bb.t ]
  %i.an = add nuw nsw i32 %.sroa.0.02.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause(), !noalias !1645
  %.sroa.0.0.highbits.i32.i = lshr i32 %i.an, %.sroa.0.0.i.i.i
  %i.ao = icmp eq i32 %.sroa.0.0.highbits.i32.i, 0
  br i1 %i.ao, label %bb.t, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit.i

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %bb.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.038.1.ph.i = phi ptr [ %.sroa.038.070.i, %.loopexit.i ], [ %.sroa.038.3.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.ap = icmp eq ptr %.sroa.038.1.ph.i, null
  br i1 %i.ap, label %.body.thread, label %.thread50.i

.thread50.i:                                      ; preds = %bb.u
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.1.ph.i, i64 noundef 1000, i64 noundef 8) #19, !noalias !1645
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.p
  %.sroa.9.0 = phi i64 [ %i.i, %bb.p ], [ 0, %.backedge.i ]
  %.sroa.49.0 = phi ptr [ %.sroa.09.2.i, %bb.p ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.038.4.i = phi ptr [ %.sroa.038.3.i, %bb.p ], [ %.sroa.038.0.be.i, %.backedge.i ] ; 2 uses
  %i.aq = icmp eq ptr %.sroa.038.4.i, null
  br i1 %i.aq, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.038.4.i, i64 noundef 1000, i64 noundef 8) #19, !noalias !1645
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit

.body.thread33:                                   ; preds = %bb.r, %.noexc23.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit: ; preds = %bb.v, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.012)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.017)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.620, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.620.0..sroa_idx, i64 7, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1647)
  %i.ar = icmp eq ptr %.sroa.49.0, null
  br i1 %i.ar, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE5writeB1h_.exit, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE5writeB1h_.exit.thread

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE5writeB1h_.exit.thread: ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit.thread42, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit
  %.sroa.5.0.copyload50 = phi i8 [ %.sroa.5.0.copyload46, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit.thread42 ], [ %.sroa.5.0.copyload, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit ]
  %.sroa.49.149 = phi ptr [ %.sroa.09.2.i, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit.thread42 ], [ %.sroa.49.0, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit ]
  %.sroa.9.148 = phi i64 [ 30, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit.thread42 ], [ %.sroa.9.0, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %.sroa.49.149, i64 %.sroa.9.148 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017, i64 16, i1 false), !noalias !1646
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 %.sroa.5.0.copyload50, ptr %.sroa.5.0..sroa_idx18, align 8, !noalias !1646
  %.sroa.620.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.620.0..sroa_idx21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.620, i64 7, i1 false), !noalias !1646
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = atomicrmw or ptr %i.at, i64 1 release, align 8, !noalias !1648 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtCsfCaL8mGBm0d_17crossbeam_channel5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  br label %bb.x

_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE5writeB1h_.exit: ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit.thread
  %.sroa.5.0.copyload41 = phi i8 [ %.sroa.5.0.copyload39, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit.thread ], [ %.sroa.5.0.copyload, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE10start_sendB1h_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017, i64 16, i1 false), !alias.scope !1648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.620, i64 7, i1 false), !alias.scope !1648
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.017)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  %.not = icmp eq i8 %.sroa.5.0.copyload41, 2
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE5writeB1h_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012, i64 16, i1 false)
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6, i64 7, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5.0.copyload41, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.y

bb.x:                                             ; preds = %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE5writeB1h_.exit.thread, %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChannelNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobE5writeB1h_.exit
  store i64 2, ptr %0, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.012)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.z:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body31

.body.thread:                                     ; preds = %bb.u, %.thread50.i, %.body.thread33
  %eh.lpad-body31 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread33 ], [ %lpad.phi.i, %.thread50.i ], [ %lpad.phi.i, %bb.u ]
  %.val = load ptr, ptr %2, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4 = load ptr, ptr %i.aw, align 8, !nonnull !3, !align !15, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCs3aZOKTqqjPR_11ruff_server6server8schedule6thread4pool3JobEBL_(ptr %.val, ptr nonnull %.val4) #31
          to label %bb.z unwind label %bb.aa

bb.aa:                                            ; preds = %.body.thread
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChanneluE10start_recvCs3aZOKTqqjPR_11ruff_server(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.0.034 = phi i32 [ 0, %bb.a ], [ %.sroa.0.034.be, %.backedge.backedge ] ; 13 uses
  %.sroa.014.0 = phi ptr [ %i.c, %bb.a ], [ %.sroa.014.0.be, %.backedge.backedge ] ; 4 uses
  %.sroa.05.0 = phi i64 [ %i.a, %bb.a ], [ %.sroa.05.0.be, %.backedge.backedge ] ; 5 uses
  %i.e = lshr i64 %.sroa.05.0, 1                  ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 3 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.h = icmp ult i32 %.sroa.0.034, 7
  br i1 %i.h, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.i = icmp ult i32 %.sroa.0.034, 11
  br i1 %i.i, label %.loopexit.i.thread, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.j, %.preheader.i ], [ 0, %bb.b ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.j, %.sroa.0.034
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.k, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.l = add nuw nsw i32 %.sroa.0.034, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit: ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.2 = phi i32 [ %i.l, %.loopexit.i.thread ], [ %.sroa.0.034, %.loopexit.i ]
  %i.m = load atomic i64, ptr %0 acquire, align 128
  %i.n = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit
  %.sroa.0.034.be = phi i32 [ %spec.select35, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %.sroa.0.2, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %.sroa.0.3, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  %.sroa.014.0.be = phi ptr [ %i.ai, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.n, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %i.ae, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  %.sroa.05.0.be = phi i64 [ %i.ah, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.m, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ %i.ad, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24 ]
  br label %.backedge

bb.c:                                             ; preds = %.backedge
  %i.o = add i64 %.sroa.05.0, 2                   ; 2 uses
  %i.p = and i64 %.sroa.05.0, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  fence seq_cst
  %i.r = load atomic i64, ptr %i.d monotonic, align 128 ; 3 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = icmp eq i64 %i.e, %i.s
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.unshifted = xor i64 %i.r, %.sroa.05.0
  %.not = icmp ugt i64 %.not.unshifted, 63
  %2 = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.o, %2
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = and i64 %i.r, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.c
  %.sroa.01.0 = phi i64 [ %i.o, %bb.c ], [ %spec.select, %bb.e ] ; 2 uses
  %i.w = icmp eq ptr %.sroa.014.0, null
  br i1 %i.w, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.x, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.p
  %.sroa.0.0 = phi i1 [ true, %bb.p ], [ true, %bb.h ], [ false, %bb.f ]
  ret i1 %.sroa.0.0

bb.j:                                             ; preds = %bb.g
  %i.y = icmp ult i32 %.sroa.0.034, 7
  br i1 %i.y, label %.preheader.i21, label %.loopexit.i20

.loopexit.i20:                                    ; preds = %bb.j
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.z = icmp ult i32 %.sroa.0.034, 11
  br i1 %i.z, label %.loopexit.i20.thread, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24

.preheader.i21:                                   ; preds = %bb.j, %.preheader.i21
  %.sroa.0.03.i22 = phi i32 [ %i.aa, %.preheader.i21 ], [ 0, %bb.j ]
  %i.aa = add nuw nsw i32 %.sroa.0.03.i22, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i23 = lshr i32 %i.aa, %.sroa.0.034
  %i.ab = icmp eq i32 %.sroa.0.0.highbits.i23, 0
  br i1 %i.ab, label %.preheader.i21, label %.loopexit.i20.thread

.loopexit.i20.thread:                             ; preds = %.preheader.i21, %.loopexit.i20
  %i.ac = add nuw nsw i32 %.sroa.0.034, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit24: ; preds = %.loopexit.i20, %.loopexit.i20.thread
  %.sroa.0.3 = phi i32 [ %i.ac, %.loopexit.i20.thread ], [ %.sroa.0.034, %.loopexit.i20 ]
  %i.ad = load atomic i64, ptr %0 acquire, align 128
  %i.ae = load atomic ptr, ptr %i.b acquire, align 8
  br label %.backedge.backedge

bb.k:                                             ; preds = %bb.g
  %i.af = cmpxchg weak ptr %0, i64 %.sroa.05.0, i64 %.sroa.01.0 seq_cst acquire, align 8 ; 2 uses
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  %i.ah = extractvalue { i64, i1 } %i.af, 0
  br i1 %i.ag, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load atomic ptr, ptr %i.b acquire, align 8
  %.sroa.0.0.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.034, i32 6)
  br label %bb.m

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit: ; preds = %bb.m
  %i.aj = icmp ult i32 %.sroa.0.034, 7
  %i.ak = zext i1 %i.aj to i32
  %spec.select35 = add nuw nsw i32 %.sroa.0.034, %i.ak
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.al, %bb.m ]
  %i.al = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i26 = lshr i32 %i.al, %.sroa.0.0.i.i
  %i.am = icmp eq i32 %.sroa.0.0.highbits.i26, 0
  br i1 %i.am, label %bb.m, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit

bb.n:                                             ; preds = %bb.k
  %i.an = icmp eq i64 %i.f, 30
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = load atomic ptr, ptr %.sroa.014.0 acquire, align 8 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.lr.ph.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit

.lr.ph.i:                                         ; preds = %bb.o, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.02.i27 = phi i32 [ %.sroa.0.1.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.o ] ; 5 uses
  %i.aq = icmp ult i32 %.sroa.0.02.i27, 7
  br i1 %i.aq, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.ar = icmp ult i32 %.sroa.0.02.i27, 11
  br i1 %i.ar, label %.loopexit.i.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.as, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.as = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.as, %.sroa.0.02.i27
  %i.at = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.at, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.au = add nuw nsw i32 %.sroa.0.02.i27, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.au, %.loopexit.i.thread.i ], [ %.sroa.0.02.i27, %.loopexit.i.i ]
  %i.av = load atomic ptr, ptr %.sroa.014.0 acquire, align 8 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.lr.ph.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.o
  %.lcssa.i = phi ptr [ %i.ao, %bb.o ], [ %i.av, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ] ; 2 uses
  %i.ax = and i64 %.sroa.01.0, -2
  %3 = add i64 %i.ax, 2
  %i.ay = load atomic ptr, ptr %.lcssa.i monotonic, align 8
  %4 = icmp ne ptr %i.ay, null
  %5 = zext i1 %4 to i64
  %spec.select19 = or disjoint i64 %3, %5
  store atomic ptr %.lcssa.i, ptr %i.b release, align 8
  store atomic i64 %spec.select19, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.sroa.014.0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.ba, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChanneluE20disconnect_receiversCs3aZOKTqqjPR_11ruff_server(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.04042.i = phi i32 [ %.sroa.0.2.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.b ] ; 5 uses
  %i.h = icmp ult i32 %.sroa.0.04042.i, 7
  br i1 %i.h, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.i = icmp ult i32 %.sroa.0.04042.i, 11
  br i1 %i.i, label %.loopexit.i.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.j, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.j, %.sroa.0.04042.i
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.k, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.l = add nuw nsw i32 %.sroa.0.04042.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.2.i = phi i32 [ %i.l, %.loopexit.i.thread.i ], [ %.sroa.0.04042.i, %.loopexit.i.i ] ; 2 uses
  %i.m = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.n = and i64 %i.m, 62
  %i.o = icmp eq i64 %i.n, 62
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.m, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %.sroa.0.040.lcssa.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.2.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ]
  %i.p = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 3 uses
  %i.q = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %i.t = lshr i64 %i.q, 1                         ; 3 uses
  %i.u = icmp ne i64 %i.t, %i.p
  %i.v = icmp eq ptr %i.s, null
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.ab, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ] ; 2 uses
  %.not44.i = icmp eq i64 %i.t, %i.p
  br i1 %.not44.i, label %._crit_edge49.i, label %.lr.ph48.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.3.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i ], [ %.sroa.0.040.lcssa.i, %._crit_edge.i ] ; 5 uses
  %i.w = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.w, label %.preheader.i22.i, label %.loopexit.i21.i

.loopexit.i21.i:                                  ; preds = %.preheader.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.x = icmp ult i32 %.sroa.0.1.i, 11
  br i1 %i.x, label %.loopexit.i21.thread.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

.preheader.i22.i:                                 ; preds = %.preheader.i, %.preheader.i22.i
  %.sroa.0.03.i23.i = phi i32 [ %i.y, %.preheader.i22.i ], [ 0, %.preheader.i ]
  %i.y = add nuw nsw i32 %.sroa.0.03.i23.i, 1     ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i24.i = lshr i32 %i.y, %.sroa.0.1.i
  %i.z = icmp eq i32 %.sroa.0.0.highbits.i24.i, 0
  br i1 %i.z, label %.preheader.i22.i, label %.loopexit.i21.thread.i

.loopexit.i21.thread.i:                           ; preds = %.preheader.i22.i, %.loopexit.i21.i
  %i.aa = add nuw nsw i32 %.sroa.0.1.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit25.i: ; preds = %.loopexit.i21.thread.i, %.loopexit.i21.i
  %.sroa.0.3.i = phi i32 [ %i.aa, %.loopexit.i21.thread.i ], [ %.sroa.0.1.i, %.loopexit.i21.i ]
  %i.ab = atomicrmw xchg ptr %i.r, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.ab, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge49.i:                                  ; preds = %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.q, %.loopexit.i ], [ %i.bc, %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i ]
  %i.ac = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.ac, label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChanneluE20discard_all_messagesCs3aZOKTqqjPR_11ruff_server.exit, label %bb.c

.lr.ph48.i:                                       ; preds = %.loopexit.i, %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i
  %i.ad = phi i64 [ %i.bd, %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i ], [ %i.t, %.loopexit.i ]
  %.sroa.05.046.i = phi i64 [ %i.bc, %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i ], [ %i.q, %.loopexit.i ]
  %.sroa.011.145.i = phi ptr [ %.sroa.011.2.i, %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 7 uses
  %i.ae = and i64 %i.ad, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ae, 31
  br i1 %.not19.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %._crit_edge49.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 256, i64 noundef 8) #19
  br label %_RNvMs1_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB5_7ChanneluE20discard_all_messagesCs3aZOKTqqjPR_11ruff_server.exit

bb.d:                                             ; preds = %.lr.ph48.i
  %i.af = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %.sroa.0.1.i.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i ], [ 0, %bb.d ] ; 5 uses
  %i.ah = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ah, label %.preheader.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 11
  br i1 %i.ai, label %.loopexit.i.thread.i.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader.i.i.i
  %.sroa.0.03.i.i.i = phi i32 [ %i.aj, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i ]
  %i.aj = add nuw nsw i32 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i.i = lshr i32 %i.aj, %.sroa.0.02.i.i
  %i.ak = icmp eq i32 %.sroa.0.0.highbits.i.i.i, 0
  br i1 %i.ak, label %.preheader.i.i.i, label %.loopexit.i.thread.i.i

.loopexit.i.thread.i.i:                           ; preds = %.preheader.i.i.i, %.loopexit.i.i.i
  %i.al = add nuw nsw i32 %.sroa.0.02.i.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i: ; preds = %.loopexit.i.thread.i.i, %.loopexit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.al, %.loopexit.i.thread.i.i ], [ %.sroa.0.02.i.i, %.loopexit.i.i.i ]
  %i.am = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.lr.ph.i.i, label %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit.i

_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i.i, %bb.d
  %i.ao = load atomic ptr, ptr %.sroa.011.145.i acquire, align 8
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.145.i, i64 noundef 256, i64 noundef 8) #19
  br label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i

bb.e:                                             ; preds = %.lr.ph48.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.145.i, i64 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ae ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8
  %i.as = and i64 %i.ar, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i26.i, label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i

.lr.ph.i26.i:                                     ; preds = %bb.e, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i
  %.sroa.0.02.i27.i = phi i32 [ %.sroa.0.1.i30.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i ], [ 0, %bb.e ] ; 5 uses
  %i.au = icmp ult i32 %.sroa.0.02.i27.i, 7
  br i1 %i.au, label %.preheader.i.i32.i, label %.loopexit.i.i28.i

.loopexit.i.i28.i:                                ; preds = %.lr.ph.i26.i
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread9functions9yield_now()
  %i.av = icmp ult i32 %.sroa.0.02.i27.i, 11
  br i1 %i.av, label %.loopexit.i.thread.i31.i, label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

.preheader.i.i32.i:                               ; preds = %.lr.ph.i26.i, %.preheader.i.i32.i
  %.sroa.0.03.i.i33.i = phi i32 [ %i.aw, %.preheader.i.i32.i ], [ 0, %.lr.ph.i26.i ]
  %i.aw = add nuw nsw i32 %.sroa.0.03.i.i33.i, 1  ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i34.i = lshr i32 %i.aw, %.sroa.0.02.i27.i
  %i.ax = icmp eq i32 %.sroa.0.0.highbits.i.i34.i, 0
  br i1 %i.ax, label %.preheader.i.i32.i, label %.loopexit.i.thread.i31.i

.loopexit.i.thread.i31.i:                         ; preds = %.preheader.i.i32.i, %.loopexit.i.i28.i
  %i.ay = add nuw nsw i32 %.sroa.0.02.i27.i, 1
  br label %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i

_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i: ; preds = %.loopexit.i.thread.i31.i, %.loopexit.i.i28.i
  %.sroa.0.1.i30.i = phi i32 [ %i.ay, %.loopexit.i.thread.i31.i ], [ %.sroa.0.02.i27.i, %.loopexit.i.i28.i ]
  %i.az = load atomic i64, ptr %i.aq acquire, align 8
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i26.i, label %_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i

_RNvMNtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB2_4SlotuE10wait_writeCs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i, %bb.e, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit.i
  %.sroa.011.2.i = phi ptr [ %i.ao, %_RNvMs_NtNtCsfCaL8mGBm0d_17crossbeam_channel7flavors4listINtB4_5BlockuE9wait_nextCs3aZOKTqqjPR_11ruff_server.exit.i ], [ %.sroa.011.145.i, %bb.e ], [ %.sroa.011.145.i, %_RNvMNtCs8U8Khs6SiIu_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i29.i ] ; 2 uses
  %i.bc = add i64 %.sroa.05.046.i, 2              ; 3 uses
  %i.bd = lshr i64 %i.bc, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bd, %i.p
end_hunk_3
