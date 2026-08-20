inline.NumInlined: 1358
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCsk4T2nMguaqB_13gen_lsp_types9generated10structures20ParameterInformationE3lenCsjNt1Wzngcv_9ty_server:bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 72
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsjNt1Wzngcv_9ty_server6server8schedule6threadNtB2_7Builder4name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs2_Cs3bRTD9q0ySo_10jod_threadNtB5_7Builder4name(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !5, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE15bulk_steal_leftB2e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [152 x i8], align 8           ; 2 uses
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1946 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !3
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1946 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !3
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !1542
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 4 uses
  %i.u = getelementptr inbounds nuw [152 x i8], ptr %i.t, i64 %1
  %i.v = mul nuw nsw i64 %i.k, 152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.v, i1 false), !alias.scope !1545
  %i.w = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.x = sub nuw nsw i64 %i.f, %i.w               ; 5 uses
  %i.y = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEB18_.exit, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32, !noalias !1553
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEB18_.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.w
  %i.ac = mul nuw nsw i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.ab, i64 %i.ac, i1 false), !alias.scope !1553
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ae = getelementptr inbounds nuw [152 x i8], ptr %i.ad, i64 %i.w
  %i.af = mul nuw nsw i64 %i.x, 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ae, i64 %i.af, i1 false), !alias.scope !1554
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw [152 x i8], ptr %i.ad, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.ah, i64 152, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ai, align 8, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.val17 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 272
  %i.am = getelementptr inbounds nuw [152 x i8], ptr %i.al, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(152) %i.am, i64 152, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !1558
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw [152 x i8], ptr %i.t, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ao, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.2, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !3
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i64, ptr %i.as, align 8, !noundef !3
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEB18_.exit
  br i1 %i.au, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit, label %bb.j, !prof !10

bb.h:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEB18_.exit
  br i1 %i.au, label %bb.j, label %bb.k, !prof !6

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bz, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.av, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.av = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i.epil
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1944
  store i16 %i.ay, ptr %i.az, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit, label %bb.i, !llvm.loop !1562

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #32
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 1952 ; 8 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %1
  %i.bc = shl nuw nsw i64 %i.k, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bd, i1 false), !alias.scope !1563
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 1952
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.w
  %i.bg = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !alias.scope !1566
  %i.bh = add nuw nsw i64 %1, %i.k
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bj = icmp samesign ult i64 %i.l, 3
  br i1 %i.bj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bi, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bz, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bk = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1944
  store i16 %i.bn, ptr %i.bo, align 8
  %i.bp = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bk
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bk to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 1944
  store i16 %i.bs, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bp
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.bw, align 8
  %i.bx = trunc nuw nsw i64 %i.bp to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1944
  store i16 %i.bx, ptr %i.by, align 8
  %i.bz = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bu
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bu to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1944
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE16bulk_steal_rightB2e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [152 x i8], align 8           ; 2 uses
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1946 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !3 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1946 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !3
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 4 uses
  %i.u = getelementptr inbounds nuw [152 x i8], ptr %i.t, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.u, i64 152, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.v, align 8, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 272
  %i.z = getelementptr inbounds nuw [152 x i8], ptr %i.y, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(152) %i.z, i64 152, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !1570
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw [152 x i8], ptr %i.ac, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ad, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.2, i64 152, i1 false)
  %i.ae = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %i.r, i64 %i.ag, i1 false), !alias.scope !1574
  %i.ah = getelementptr inbounds nuw [152 x i8], ptr %i.ac, i64 %i.ae
  %i.ai = mul nuw nsw i64 %i.q, 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.t, i64 %i.ai, i1 false), !alias.scope !1578
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %1
  %i.ak = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.aj, i64 %i.ak, i1 false), !alias.scope !1582
  %i.al = getelementptr inbounds nuw [152 x i8], ptr %i.t, i64 %1
  %i.am = mul nuw nsw i64 %i.n, 152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.al, i64 %i.am, i1 false), !alias.scope !1585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3
  %i.as = icmp eq i64 %i.ar, 0                    ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.as, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.h, label %bb.i, !prof !6

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader ], [ %i.db, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.at, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil ], [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader ]
  %i.at = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.au = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23.epil
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.aw, align 8
  %i.ax = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1944
  store i16 %i.ax, ptr %i.ay, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil, !llvm.loop !1588

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #32
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 1952 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 1952 ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.az, i64 %i.bc, i1 false), !alias.scope !1589
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %1
  %i.be = shl nuw nsw i64 %i.n, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bf, i1 false), !alias.scope !1593
  %i.bg = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bi, align 8
  %i.bj = trunc nuw nsw i64 %i.ae to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1944
  store i16 %i.bj, ptr %i.bk, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bm = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bl to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1944
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.br to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1944
  store i16 %i.bv, ptr %i.bw, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.by = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bx to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1944
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.cg, align 8
  %i.ch = trunc nuw nsw i64 %i.cd to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1944
  store i16 %i.ch, ptr %i.ci, align 8
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
end_hunk_0
begin_hunk_1_@_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE16bulk_steal_rightB2e_:bb.a
  %i.cz = trunc nuw nsw i64 %i.cr to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1944
  store i16 %i.cz, ptr %i.da, align 8
  %i.db = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cw
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cw to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 1944
  store i16 %i.df, ptr %i.dg, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceE15bulk_steal_leftB2e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [104 x i8], align 8           ; 2 uses
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1418 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !3
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1418 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !3
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !1596
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 4 uses
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %1
  %i.v = mul nuw nsw i64 %i.k, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.v, i1 false), !alias.scope !1599
  %i.w = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.x = sub nuw nsw i64 %i.f, %i.w               ; 5 uses
  %i.y = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEB18_.exit, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32, !noalias !1607
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEB18_.exit: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.w
  %i.ac = mul nuw nsw i64 %i.x, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.ab, i64 %i.ac, i1 false), !alias.scope !1607
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ae = getelementptr inbounds nuw [104 x i8], ptr %i.ad, i64 %i.w
  %i.af = mul nuw nsw i64 %i.x, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.ae, i64 %i.af, i1 false), !alias.scope !1608
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.ad, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.ah, i64 104, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ai, align 8, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.val17 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 272
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.al, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(104) %i.am, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !1612
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ao, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !3
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i64, ptr %i.as, align 8, !noundef !3
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEB18_.exit
  br i1 %i.au, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit, label %bb.j, !prof !10

bb.h:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEB18_.exit
  br i1 %i.au, label %bb.j, label %bb.k, !prof !6

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bz, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.av, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.av = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i.epil
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1416
  store i16 %i.ay, ptr %i.az, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit, label %bb.i, !llvm.loop !1616

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #32
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 1424 ; 8 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %1
  %i.bc = shl nuw nsw i64 %i.k, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bd, i1 false), !alias.scope !1617
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 1424
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.w
  %i.bg = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !alias.scope !1620
  %i.bh = add nuw nsw i64 %1, %i.k
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bj = icmp samesign ult i64 %i.l, 3
  br i1 %i.bj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bi, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bz, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bk = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1416
  store i16 %i.bn, ptr %i.bo, align 8
  %i.bp = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bk
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bk to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 1416
  store i16 %i.bs, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bp
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.bw, align 8
  %i.bx = trunc nuw nsw i64 %i.bp to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1416
  store i16 %i.bx, ptr %i.by, align 8
  %i.bz = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bu
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bu to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1416
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceE16bulk_steal_rightB2e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [104 x i8], align 8           ; 2 uses
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1418 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !3 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1418 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !3
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 272 ; 4 uses
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.u, i64 104, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.v, align 8, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 272
  %i.z = getelementptr inbounds nuw [104 x i8], ptr %i.y, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !1624
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.ad = getelementptr inbounds nuw [104 x i8], ptr %i.ac, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2, i64 104, i1 false)
  %i.ae = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %i.r, i64 %i.ag, i1 false), !alias.scope !1628
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.ac, i64 %i.ae
  %i.ai = mul nuw nsw i64 %i.q, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.t, i64 %i.ai, i1 false), !alias.scope !1632
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %1
  %i.ak = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.aj, i64 %i.ak, i1 false), !alias.scope !1636
  %i.al = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %1
  %i.am = mul nuw nsw i64 %i.n, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.al, i64 %i.am, i1 false), !alias.scope !1639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !3
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3
  %i.as = icmp eq i64 %i.ar, 0                    ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.as, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25, label %bb.h, !prof !10

bb.g:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.h, label %bb.i, !prof !6

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader ], [ %i.db, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.at, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil ], [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil.preheader ]
  %i.at = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.au = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23.epil
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.h, ptr %i.aw, align 8
  %i.ax = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1416
  store i16 %i.ax, ptr %i.ay, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil, !llvm.loop !1642

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #32
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 1424 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 1424 ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.az, i64 %i.bc, i1 false), !alias.scope !1643
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %1
  %i.be = shl nuw nsw i64 %i.n, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bf, i1 false), !alias.scope !1647
  %i.bg = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ae
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bi, align 8
  %i.bj = trunc nuw nsw i64 %i.ae to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 1416
  store i16 %i.bj, ptr %i.bk, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bm = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bl to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 1416
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.br to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1416
  store i16 %i.bv, ptr %i.bw, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.by = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bx to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1416
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.c, ptr %i.cg, align 8
  %i.ch = trunc nuw nsw i64 %i.cd to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1416
  store i16 %i.ch, ptr %i.ci, align 8
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
end_hunk_1
begin_hunk_2_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueE6insertCsjNt1Wzngcv_9ty_server:bb.a
  %i.dh = shl nuw nsw i64 %i.dd, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.df, i64 %i.dh, i1 false), !alias.scope !1931, !noalias !1933
  br label %bb.an

bb.ak:                                            ; preds = %bb.am, %bb.al
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !1934
  unreachable

.thread.i.i:                                      ; preds = %bb.w, %bb.v
  %i.dj = add nuw nsw i16 %i.bm, 1
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13.0, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !1935, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %i.dj, ptr %i.bl, align 2, !noalias !1936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1870
  br label %bb.ap

bb.al:                                            ; preds = %bb.ag, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.cm, %.thread.i.i.i.i ], [ %i.co, %bb.ag ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #34
          to label %bb.am unwind label %bb.ak, !noalias !1937

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #34
          to label %.thread unwind label %bb.ak, !noalias !1934

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %i.dl = add i16 %i.cx, 1
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i.i.i, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !1938, !noalias !1917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.dl, ptr %i.cw, align 2, !noalias !1917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.426.i.i, i64 48, i1 false), !noalias !1939
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1870
  %.not.i.i = icmp eq i64 %.sroa.025.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i, i64 48, i1 false), !noalias !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 352
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !1940, !noundef !3 ; 2 uses
  %.not.i145.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i145.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 5 uses
  br label %bb.bf

bb.ap:                                            ; preds = %bb.an, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cq

._crit_edge.i.i:                                  ; preds = %bb.cl, %bb.ao
  %.sroa.0.0.i.i10 = phi i64 [ %.sroa.025.0.copyload.i.i, %bb.ao ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %.lcssa137.i.i = phi i64 [ 0, %bb.ao ], [ %i.es, %bb.cl ] ; 3 uses
  %.lcssa129.i.i = phi ptr [ %i.ca, %bb.ao ], [ %i.hg, %bb.cl ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.ao ], [ %i.eo, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1870
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7244.i.i, i64 48, i1 false), !noalias !1870
  store i64 %.sroa.0.0.i.i10, ptr %i.j, align 8, !noalias !1870
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1870
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa137.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1870
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa129.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !1870
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa137.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !1870
  %i.dq = load ptr, ptr %1, align 8, !noalias !1943, !noundef !3 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i23.i.i, label %bb.aq, label %bb.as, !prof !6

bb.aq:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
          to label %bb.ar unwind label %bb.bc, !noalias !1943

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !1946, !noalias !1943, !noundef !3 ; 2 uses
  %i.dt = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCsjNt1Wzngcv_9ty_server()
          to label %.noexc.i.i.i.i unwind label %bb.aw, !noalias !1949 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 352
  store ptr null, ptr %i.du, align 8, !noalias !1949
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 626 ; 3 uses
  store i16 0, ptr %i.dv, align 2, !noalias !1949
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 632 ; 2 uses
  store ptr %i.dq, ptr %i.dw, align 8, !noalias !1949
  %i.dx = add i64 %i.ds, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.at, label %bb.ax, !prof !6

bb.at:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #32
          to label %bb.au unwind label %bb.av, !noalias !1949

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dt, i64 noundef 728, i64 noundef 8) #33, !noalias !1949
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %bb.as
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aw, %bb.av
  tail call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %.noexc.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 352
  store ptr %i.dt, ptr %i.ea, align 8, !noalias !1950
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 624
  store i16 0, ptr %i.eb, align 8, !noalias !1955
  store ptr %i.dt, ptr %1, align 8, !alias.scope !1946, !noalias !1943
  store i64 %i.dx, ptr %i.dr, align 8, !alias.scope !1946, !noalias !1943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false), !noalias !1870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1943
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ec, i64 32, i1 false), !noalias !1870
  %i.ed = icmp eq i64 %.lcssa137.i.i, %i.ds
  br i1 %i.ed, label %bb.ay, label %.invoke.i.i.i.i, !prof !10

.invoke.i.i.i.i:                                  ; preds = %bb.ay, %bb.ax
  %i.ee = phi ptr [ @53, %bb.ax ], [ @51, %bb.ay ]
  %i.ef = phi i64 [ 48, %bb.ax ], [ 32, %bb.ay ]
  %i.eg = phi ptr [ @54, %bb.ax ], [ @55, %bb.ay ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ee, i64 noundef %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg) #32
          to label %.cont.i.i.i.i unwind label %bb.az, !noalias !1956

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.eh = load i16, ptr %i.dv, align 2, !noalias !1956, !noundef !3 ; 3 uses
  %i.ei = icmp ult i16 %i.eh, 11
  br i1 %i.ei, label %bb.cm, label %.invoke.i.i.i.i, !prof !10

bb.az:                                            ; preds = %.invoke.i.i.i.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #34
          to label %bb.bb unwind label %bb.ba, !noalias !1960

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !1943
  unreachable

bb.bb:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #34
          to label %.thread unwind label %bb.ba, !noalias !1943

bb.bc:                                            ; preds = %bb.aq
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j) #34
          to label %bb.be unwind label %bb.bd, !noalias !1870

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !1870
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(32) %i.en) #34
          to label %.thread unwind label %bb.bd, !noalias !1870

bb.bf:                                            ; preds = %.lr.ph.i.i, %bb.cl
  %.sroa.0.1.i.i = phi i64 [ %.sroa.025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %i.eo = phi ptr [ %i.do, %.lr.ph.i.i ], [ %i.lf, %bb.cl ] ; 20 uses
  %i.ep = phi ptr [ %.sroa.13.0, %.lr.ph.i.i ], [ %i.eo, %bb.cl ]
  %i.eq = phi i64 [ 0, %.lr.ph.i.i ], [ %i.es, %bb.cl ]
  %i.er = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %i.hg, %bb.cl ] ; 2 uses
  %i.es = add i64 %i.eq, 1                        ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 624
  %i.eu = load i16, ptr %i.et, align 8, !noalias !1940 ; 4 uses
  %i.ev = zext i16 %i.eu to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1870
  store i64 %.sroa.0.1.i.i, ptr %i.l, align 8, !noalias !1870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.i.i, i64 16, i1 false), !noalias !1870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !1870
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 626 ; 4 uses
  %i.ex = load i16, ptr %i.ew, align 2, !noalias !1961, !noundef !3 ; 5 uses
  %i.ey = icmp ult i16 %i.ex, 11
  br i1 %i.ey, label %bb.bh, label %bb.bg

.loopexit45.i.i:                                  ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bg:                                            ; preds = %bb.bf
  %i.ez = icmp ult i16 %i.eu, 5
  br i1 %i.ez, label %bb.bo, label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.fa = zext nneg i16 %i.ex to i64              ; 4 uses
  %i.fb = add nuw nsw i16 %i.ex, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eo, i64 360 ; 2 uses
  %i.fd = add nuw nsw i64 %i.ev, 1                ; 7 uses
  %.not.i.i32.not.i.i = icmp ult i16 %i.eu, %i.ex
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.ev ; 3 uses
  br i1 %.not.i.i32.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1967
  %i.ff = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !1870
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.fd
  %i.fh = sub nsw i64 %i.fa, %i.ev                ; 3 uses
  %i.fi = mul nsw i64 %i.fh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fg, ptr nonnull align 8 %i.fe, i64 %i.fi, i1 false), !alias.scope !1968, !noalias !1971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1967
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.ev ; 2 uses
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.fd
  %i.fl = shl nsw i64 %i.fh, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fk, ptr nonnull align 8 %i.fj, i64 %i.fl, i1 false), !alias.scope !1977, !noalias !1980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !1870
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 632 ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fd
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.ev
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = shl nsw i64 %i.fh, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fp, ptr nonnull align 8 %i.fn, i64 %i.fq, i1 false), !alias.scope !1982, !noalias !1985
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eo, i64 632 ; 6 uses
  %i.fs = add nuw nsw i64 %i.fa, 2                ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fd
  store ptr %i.er, ptr %i.ft, align 8, !alias.scope !1982, !noalias !1985
  store i16 %i.fb, ptr %i.ew, align 2, !noalias !1985
  %i.fu = icmp samesign ult i64 %i.fd, %i.fs
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.preheader, label %.thread41.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.fv = add nuw nsw i64 %i.fa, 1
  %i.fw = sub nsw i64 %i.fv, %i.ev
  %i.fx = sub nsw i64 %i.fa, %i.ev
  %xtraiter410 = and i64 %i.fw, 3                 ; 2 uses
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.fy, %.lr.ph.i.i.i.i.i.prol ], [ %i.fd, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter412 = phi i64 [ %prol.iter412.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fz = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !1985, !nonnull !3, !noundef !3 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr %i.eo, ptr %i.gc, align 8, !noalias !1985
  %i.gd = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 624
  store i16 %i.gd, ptr %i.ge, align 8, !noalias !1985
  %prol.iter412.next = add i64 %prol.iter412, 1   ; 2 uses
  %prol.iter412.cmp.not = icmp eq i64 %prol.iter412.next, %xtraiter410
  br i1 %prol.iter412.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1986

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fy, %.lr.ph.i.i.i.i.i.prol ]
  %i.gf = icmp ult i64 %i.fx, 3
  br i1 %i.gf, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.gy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gg = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i.i.i.i.i
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1985, !nonnull !3, !noundef !3 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 352
  store ptr %i.eo, ptr %i.gj, align 8, !noalias !1985
  %i.gk = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 624
  store i16 %i.gk, ptr %i.gl, align 8, !noalias !1985
  %i.gm = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gg
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !1985, !nonnull !3, !noundef !3 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 352
  store ptr %i.eo, ptr %i.gp, align 8, !noalias !1985
  %i.gq = trunc nuw nsw i64 %i.gg to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 624
  store i16 %i.gq, ptr %i.gr, align 8, !noalias !1985
  %i.gs = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gm
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !1985, !nonnull !3, !noundef !3 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 352
  store ptr %i.eo, ptr %i.gv, align 8, !noalias !1985
  %i.gw = trunc nuw nsw i64 %i.gm to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 624
  store i16 %i.gw, ptr %i.gx, align 8, !noalias !1985
  %i.gy = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.gz = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gs
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !1985, !nonnull !3, !noundef !3 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 352
  store ptr %i.eo, ptr %i.hc, align 8, !noalias !1985
  %i.hd = trunc nuw nsw i64 %i.gs to i16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 624
  store i16 %i.hd, ptr %i.he, align 8, !noalias !1985
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gy, %i.fs
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bg
  switch i16 %i.eu, label %bb.bm [
    i16 5, label %bb.bo
    i16 6, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.hf = add nsw i64 %i.ev, -7
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bg
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bn ], [ 6, %bb.bm ], [ 4, %bb.bg ], [ 5, %bb.bl ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.hf, %bb.bm ], [ %i.ev, %bb.bg ], [ 5, %bb.bl ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bl ]
  %i.hg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCsjNt1Wzngcv_9ty_server()
          to label %.noexc.i29.i.i unwind label %.loopexit45.i.i, !noalias !1961 ; 10 uses

.noexc.i29.i.i:                                   ; preds = %bb.bo
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 352
  store ptr null, ptr %i.hh, align 8, !noalias !1987
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 626 ; 3 uses
  store i16 0, ptr %i.hi, align 2, !noalias !1987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1987
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  %i.hj = load i16, ptr %i.ew, align 2, !noalias !1994, !noundef !3
  %i.hk = zext i16 %i.hj to i64
  %i.hl = xor i64 %.sroa.06.0.i.i.i, -1
  %i.hm = add nsw i64 %i.hk, %i.hl                ; 5 uses
  %i.hn = trunc i64 %i.hm to i16
  store i16 %i.hn, ptr %i.hi, align 2, !alias.scope !1991, !noalias !1996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1994
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eo, i64 360 ; 2 uses
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i64 24, i1 false), !noalias !1994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1994
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.hq, i64 32, i1 false), !noalias !1994
  %i.hr = icmp ult i64 %i.hm, 12
  br i1 %i.hr, label %bb.bu, label %bb.bp, !prof !1699

bb.bp:                                            ; preds = %.noexc.i29.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hm, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #32
          to label %bb.br unwind label %bb.bq, !noalias !1994

bb.bq:                                            ; preds = %bb.bp
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(32) %i.a) #34
          to label %bb.bt unwind label %bb.bs, !noalias !1994

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %bb.bt, %bb.bq
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !1994
  unreachable

bb.bt:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.cd unwind label %bb.bs, !noalias !1994

bb.bu:                                            ; preds = %.noexc.i29.i.i
  %i.hu = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.hv = getelementptr inbounds nuw [24 x i8], ptr %i.ho, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hg, i64 360
  %i.hx = mul nuw nsw i64 %i.hm, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr nonnull readonly align 8 %i.hv, i64 %i.hx, i1 false), !alias.scope !1997, !noalias !1996
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %i.hu
  %i.hz = shl nuw nsw i64 %i.hm, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.hg, ptr nonnull readonly align 8 %i.hy, i64 %i.hz, i1 false), !alias.scope !2001, !noalias !1996
  %i.ia = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.ia, ptr %i.ew, align 2, !noalias !1994
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !2005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1994
  %i.ib = load i16, ptr %i.hi, align 2, !noalias !1987, !noundef !3 ; 2 uses
  %i.ic = zext i16 %i.ib to i64                   ; 3 uses
  %i.id = add nuw nsw i64 %i.ic, 1                ; 3 uses
  %i.ie = icmp ult i16 %i.ib, 12
  br i1 %i.ie, label %bb.bv, label %bb.bx, !prof !1699

bb.bv:                                            ; preds = %bb.bu
  %i.if = getelementptr inbounds nuw i8, ptr %i.hg, i64 632 ; 2 uses
  %i.ig = zext i16 %i.ex to i64
  %i.ih = sub nuw nsw i64 %i.ig, %.sroa.06.0.i.i.i
  %i.ii = icmp eq i64 %i.ih, %i.id
  br i1 %i.ii, label %bb.bz, label %bb.bw, !prof !10

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32
          to label %.noexc.i.i30.i.i unwind label %bb.by, !noalias !1987

.noexc.i.i30.i.i:                                 ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.id, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #32
          to label %bb.cb unwind label %bb.by, !noalias !1987

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(56) %i.c) #34
          to label %bb.cd unwind label %bb.cc, !noalias !1987

bb.bz:                                            ; preds = %bb.bv
  %i.ik = getelementptr i8, ptr %i.eo, i64 640
  %i.il = getelementptr [8 x i8], ptr %i.ik, i64 %.sroa.06.0.i.i.i
  %i.im = shl nuw nsw i64 %i.id, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.if, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.il, i64 %i.im, i1 false), !alias.scope !2006, !noalias !1987
  %4 = icmp ne i64 %i.es, 0
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %bb.bz ], [ %spec.select10.i.i.i.i.i.i, %bb.ca ] ; 5 uses
  %i.in = icmp samesign uge i64 %.sroa.0.013.i.i.i.i.i.i, %i.ic ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.in, true
  %i.io = zext i1 %not..i.i.i.i.i.i to i64
  %spec.select10.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, %i.io ; 2 uses
  %i.ip = icmp samesign ult i64 %.sroa.0.013.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !2010, !noalias !2013, !nonnull !3, !noundef !3 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 352
  store ptr %i.hg, ptr %i.is, align 8, !noalias !2016
  %i.it = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i to i16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 624
  store i16 %i.it, ptr %i.iu, align 8, !noalias !2013
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i.i.i, %i.ic
  %or.cond.i.i.i.i.i.i = select i1 %i.in, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ce, label %bb.ca

bb.cb:                                            ; preds = %bb.bx
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.iv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !1987
  unreachable

bb.cd:                                            ; preds = %bb.by, %bb.bt
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ij, %bb.by ], [ %i.hs, %bb.bt ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hg, i64 noundef 728, i64 noundef 8) #33, !noalias !1987
  br label %bb.cj

bb.ce:                                            ; preds = %bb.ca
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !1961 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 48, i1 false), !noalias !1961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1987
  %spec.select.i31.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.hg, ptr %i.eo ; 12 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 626 ; 2 uses
  %i.ix = load i16, ptr %i.iw, align 2, !noalias !2017, !noundef !3 ; 2 uses
  %i.iy = zext i16 %i.ix to i64                   ; 5 uses
  %i.iz = add i16 %i.ix, 1
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 360 ; 2 uses
  %i.jb = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.iy
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1967
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31.i.i, i64 %.sroa.5.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !1870
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.je = getelementptr inbounds nuw [24 x i8], ptr %i.ja, i64 %i.jb
  %i.jf = sub nuw nsw i64 %i.iy, %.sroa.5.0.i.i.i ; 3 uses
  %i.jg = mul nuw nsw i64 %i.jf, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.je, ptr nonnull align 8 %i.jc, i64 %i.jg, i1 false), !alias.scope !2022, !noalias !2025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jc, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1967
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31.i.i, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31.i.i, i64 %i.jb
  %i.jj = shl nuw nsw i64 %i.jf, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ji, ptr nonnull align 8 %i.jh, i64 %i.jj, i1 false), !alias.scope !2027, !noalias !2030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7244.24..sroa_idx.i.i, i64 32, i1 false), !noalias !1870
  %i.jk = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 632 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jb
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.sroa.5.0.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = shl nuw nsw i64 %i.jf, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jn, ptr nonnull align 8 %i.jl, i64 %i.jo, i1 false), !alias.scope !2032, !noalias !2017
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jp = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 632 ; 6 uses
  %i.jq = add nuw nsw i64 %i.iy, 2                ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jb
  store ptr %i.er, ptr %i.jr, align 8, !alias.scope !2032, !noalias !2017
  store i16 %i.iz, ptr %i.iw, align 2, !noalias !2017
  %i.js = icmp samesign ult i64 %i.jb, %i.jq
  br i1 %i.js, label %.lr.ph.i.i11.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.ch
  %i.jt = add nuw nsw i64 %i.iy, 1
  %i.ju = sub nsw i64 %i.jt, %.sroa.5.0.i.i.i
  %i.jv = sub nsw i64 %i.iy, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.ju, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.jw, %.lr.ph.i.i11.i.i.i.prol ], [ %i.jb, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.jx = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !2017, !nonnull !3, !noundef !3 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.ka, align 8, !noalias !2017
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 624
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !2017
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !2035

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.jb, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.jw, %.lr.ph.i.i11.i.i.i.prol ]
  %i.kd = icmp ult i64 %i.jv, 3
  br i1 %i.kd, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.kw, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.ke = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.sroa.0.06.i.i12.i.i.i
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !2017, !nonnull !3, !noundef !3 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.kh, align 8, !noalias !2017
  %i.ki = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 624
  store i16 %i.ki, ptr %i.kj, align 8, !noalias !2017
  %i.kk = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.ke
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !2017, !nonnull !3, !noundef !3 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.kn, align 8, !noalias !2017
  %i.ko = trunc nuw nsw i64 %i.ke to i16
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 624
  store i16 %i.ko, ptr %i.kp, align 8, !noalias !2017
  %i.kq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.kk
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !2017, !nonnull !3, !noundef !3 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.kt, align 8, !noalias !2017
  %i.ku = trunc nuw nsw i64 %i.kk to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 624
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !2017
  %i.kw = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.kx = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.kx)
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.kq
  %i.kz = load ptr, ptr %i.ky, align 8, !noalias !2017, !nonnull !3, !noundef !3 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 352
  store ptr %spec.select.i31.i.i, ptr %i.la, align 8, !noalias !2017
  %i.lb = trunc nuw nsw i64 %i.kq to i16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 624
  store i16 %i.lb, ptr %i.lc, align 8, !noalias !2017
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.kw, %i.jq
  br i1 %exitcond.not.i.i13.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

bb.ci:                                            ; preds = %bb.ck, %bb.cj
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2036
  unreachable

bb.cj:                                            ; preds = %bb.cd, %.loopexit45.i.i
  %.pn.ph.i27.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.cd ], [ %lpad.loopexit.i.i, %.loopexit45.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #34
          to label %bb.ck unwind label %bb.ci, !noalias !2037

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #34
          to label %.thread unwind label %bb.ci, !noalias !2036

.thread41.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1870
  br label %.loopexit46.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.i.i, i64 48, i1 false), !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1870
  %.not16.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -1
  br i1 %.not16.i.i, label %.loopexit46.i.i, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.i.i, i64 48, i1 false), !noalias !1870
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  %i.le = getelementptr inbounds nuw i8, ptr %i.eo, i64 352
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1940, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.bf

.loopexit46.i.i:                                  ; preds = %.loopexit.i.i, %.thread41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.i.i)
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ay
  %i.lg = zext nneg i16 %i.eh to i64              ; 3 uses
  %i.lh = add nuw nsw i16 %i.eh, 1
  store i16 %i.lh, ptr %i.dv, align 2, !noalias !1956
end_hunk_2
begin_hunk_3_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE6insertB23_:bb.a
  %i.dd = getelementptr inbounds nuw [152 x i8], ptr %i.db, i64 %i.cx
  %i.de = mul nuw nsw i64 %i.cz, 152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.dc, i64 %i.de, i1 false), !alias.scope !2135, !noalias !2137
  br label %bb.an

bb.ak:                                            ; preds = %bb.am, %bb.al
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2138
  unreachable

.thread.i.i:                                      ; preds = %bb.w, %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 272
  %i.dh = add nuw nsw i16 %i.bg, 1
  %i.di = getelementptr inbounds nuw [152 x i8], ptr %i.dg, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.i, i64 152, i1 false), !alias.scope !2139, !noalias !2140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %i.dh, ptr %i.bf, align 2, !noalias !2140
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2074
  br label %bb.ap

bb.al:                                            ; preds = %bb.ag, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.ch, %.thread.i.i.i.i ], [ %i.cj, %bb.ag ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEBF_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.m) #34
          to label %bb.am unwind label %bb.ak, !noalias !2141

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #34
          to label %.thread unwind label %bb.ak, !noalias !2138

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %i.dj = getelementptr inbounds nuw i8, ptr %spec.select32.i.i.i, i64 272
  %i.dk = add i16 %i.ct, 1
  %i.dl = getelementptr inbounds nuw [152 x i8], ptr %i.dj, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.f, i64 152, i1 false), !alias.scope !2142, !noalias !2121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.dk, ptr %i.cs, align 2, !noalias !2121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.426.i.i, i64 168, i1 false), !noalias !2143
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2074
  %.not.i.i = icmp eq i64 %.sroa.025.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.i.i, i64 168, i1 false), !noalias !2074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.dm = load ptr, ptr %.sroa.13.0, align 8, !noalias !2144, !noundef !3 ; 2 uses
  %.not.i145.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i145.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 5 uses
  br label %bb.bf

bb.ap:                                            ; preds = %bb.an, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cq

._crit_edge.i.i:                                  ; preds = %bb.cl, %bb.ao
  %.sroa.0.0.i.i9 = phi i64 [ %.sroa.025.0.copyload.i.i, %bb.ao ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %.lcssa137.i.i = phi i64 [ 0, %bb.ao ], [ %i.eo, %bb.cl ] ; 3 uses
  %.lcssa129.i.i = phi ptr [ %i.bv, %bb.ao ], [ %i.gz, %bb.cl ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.ao ], [ %i.ek, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2074
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7244.i.i, i64 168, i1 false), !noalias !2074
  store i64 %.sroa.0.0.i.i9, ptr %i.j, align 8, !noalias !2074
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2074
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  store i64 %.lcssa137.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !2074
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store ptr %.lcssa129.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !2074
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 200
  store i64 %.lcssa137.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !2074
  %i.do = load ptr, ptr %1, align 8, !noalias !2147, !noundef !3 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i23.i.i, label %bb.aq, label %bb.as, !prof !6

bb.aq:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
          to label %bb.ar unwind label %bb.bc, !noalias !2147

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !2150, !noalias !2147, !noundef !3 ; 2 uses
  %i.dr = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEE13new_uninit_inB2q_()
          to label %.noexc.i.i.i.i unwind label %bb.aw, !noalias !2153 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.as
  store ptr null, ptr %i.dr, align 8, !noalias !2153
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1946 ; 3 uses
  store i16 0, ptr %i.ds, align 2, !noalias !2153
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 1952 ; 2 uses
  store ptr %i.do, ptr %i.dt, align 8, !noalias !2153
  %i.du = add i64 %i.dq, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.at, label %bb.ax, !prof !6

bb.at:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #32
          to label %bb.au unwind label %bb.av, !noalias !2153

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dr, i64 noundef 2048, i64 noundef 8) #33, !noalias !2153
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %bb.as
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aw, %bb.av
  tail call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %.noexc.i.i.i.i
  store ptr %i.dr, ptr %i.do, align 8, !noalias !2154
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 1944
  store i16 0, ptr %i.dx, align 8, !noalias !2159
  store ptr %i.dr, ptr %1, align 8, !alias.scope !2150, !noalias !2147
  store i64 %i.du, ptr %i.dp, align 8, !alias.scope !2150, !noalias !2147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %i.j, i64 24, i1 false), !noalias !2074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2147
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %i.dy, i64 152, i1 false), !noalias !2074
  %i.dz = icmp eq i64 %.lcssa137.i.i, %i.dq
  br i1 %i.dz, label %bb.ay, label %.invoke.i.i.i.i, !prof !10

.invoke.i.i.i.i:                                  ; preds = %bb.ay, %bb.ax
  %i.ea = phi ptr [ @53, %bb.ax ], [ @51, %bb.ay ]
  %i.eb = phi i64 [ 48, %bb.ax ], [ 32, %bb.ay ]
  %i.ec = phi ptr [ @54, %bb.ax ], [ @55, %bb.ay ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec) #32
          to label %.cont.i.i.i.i unwind label %bb.az, !noalias !2160

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ed = load i16, ptr %i.ds, align 2, !noalias !2160, !noundef !3 ; 3 uses
  %i.ee = icmp ult i16 %i.ed, 11
  br i1 %i.ee, label %bb.cm, label %.invoke.i.i.i.i, !prof !10

bb.az:                                            ; preds = %.invoke.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEBF_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.d) #34
          to label %bb.bb unwind label %bb.ba, !noalias !2164

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2147
  unreachable

bb.bb:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #34
          to label %.thread unwind label %bb.ba, !noalias !2147

bb.bc:                                            ; preds = %bb.aq
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.j) #34
          to label %bb.be unwind label %bb.bd, !noalias !2074

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2074
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEBF_(ptr noalias noundef align 8 dereferenceable(152) %i.ej) #34
          to label %.thread unwind label %bb.bd, !noalias !2074

bb.bf:                                            ; preds = %.lr.ph.i.i, %bb.cl
  %.sroa.0.1.i.i = phi i64 [ %.sroa.025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %i.ek = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.ku, %bb.cl ] ; 18 uses
  %i.el = phi ptr [ %.sroa.13.0, %.lr.ph.i.i ], [ %i.ek, %bb.cl ]
  %i.em = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eo, %bb.cl ]
  %i.en = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.gz, %bb.cl ] ; 2 uses
  %i.eo = add i64 %i.em, 1                        ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 1944
  %i.eq = load i16, ptr %i.ep, align 8, !noalias !2144 ; 4 uses
  %i.er = zext i16 %i.eq to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2074
  store i64 %.sroa.0.1.i.i, ptr %i.l, align 8, !noalias !2074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.i.i, i64 16, i1 false), !noalias !2074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7244.24..sroa_idx.i.i, i64 152, i1 false), !noalias !2074
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 1946 ; 4 uses
  %i.et = load i16, ptr %i.es, align 2, !noalias !2165, !noundef !3 ; 5 uses
  %i.eu = icmp ult i16 %i.et, 11
  br i1 %i.eu, label %bb.bh, label %bb.bg

.loopexit45.i.i:                                  ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bg:                                            ; preds = %bb.bf
  %i.ev = icmp ult i16 %i.eq, 5
  br i1 %i.ev, label %bb.bo, label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.ew = zext nneg i16 %i.et to i64              ; 4 uses
  %i.ex = add nuw nsw i16 %i.et, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.ez = add nuw nsw i64 %i.er, 1                ; 7 uses
  %.not.i.i32.not.i.i = icmp ult i16 %i.eq, %i.et
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.er ; 3 uses
  br i1 %.not.i.i32.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2171
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 272
  %i.fc = getelementptr inbounds nuw [152 x i8], ptr %i.fb, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.fc, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7244.24..sroa_idx.i.i, i64 152, i1 false), !noalias !2074
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.ez
  %i.fe = sub nsw i64 %i.ew, %i.er                ; 3 uses
  %i.ff = mul nsw i64 %i.fe, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr nonnull align 8 %i.fa, i64 %i.ff, i1 false), !alias.scope !2172, !noalias !2175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2171
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ek, i64 272 ; 2 uses
  %i.fh = getelementptr inbounds nuw [152 x i8], ptr %i.fg, i64 %i.er ; 2 uses
  %i.fi = getelementptr inbounds nuw [152 x i8], ptr %i.fg, i64 %i.ez
  %i.fj = mul nsw i64 %i.fe, 152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fi, ptr nonnull align 8 %i.fh, i64 %i.fj, i1 false), !alias.scope !2181, !noalias !2184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.fh, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7244.24..sroa_idx.i.i, i64 152, i1 false), !noalias !2074
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ek, i64 1952 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.ez
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.er
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = shl nsw i64 %i.fe, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr nonnull align 8 %i.fl, i64 %i.fo, i1 false), !alias.scope !2186, !noalias !2189
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ek, i64 1952 ; 6 uses
  %i.fq = add nuw nsw i64 %i.ew, 2                ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.ez
  store ptr %i.en, ptr %i.fr, align 8, !alias.scope !2186, !noalias !2189
  store i16 %i.ex, ptr %i.es, align 2, !noalias !2189
  %i.fs = icmp samesign ult i64 %i.ez, %i.fq
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i.preheader, label %.thread41.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.ft = add nuw nsw i64 %i.ew, 1
  %i.fu = sub nsw i64 %i.ft, %i.er
  %i.fv = sub nsw i64 %i.ew, %i.er
  %xtraiter418 = and i64 %i.fu, 3                 ; 2 uses
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.fw, %.lr.ph.i.i.i.i.i.prol ], [ %i.ez, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter420 = phi i64 [ %prol.iter420.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fx = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !2189, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.fz, align 8, !noalias !2189
  %i.ga = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1944
  store i16 %i.ga, ptr %i.gb, align 8, !noalias !2189
  %prol.iter420.next = add i64 %prol.iter420, 1   ; 2 uses
  %prol.iter420.cmp.not = icmp eq i64 %prol.iter420.next, %xtraiter418
  br i1 %prol.iter420.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2190

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fw, %.lr.ph.i.i.i.i.i.prol ]
  %i.gc = icmp ult i64 %i.fv, 3
  br i1 %i.gc, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.0.06.i.i.i.i.i
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !2189, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.gf, align 8, !noalias !2189
  %i.gg = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 1944
  store i16 %i.gg, ptr %i.gh, align 8, !noalias !2189
  %i.gi = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gd
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !2189, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.gk, align 8, !noalias !2189
  %i.gl = trunc nuw nsw i64 %i.gd to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 1944
  store i16 %i.gl, ptr %i.gm, align 8, !noalias !2189
  %i.gn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gi
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !2189, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.gp, align 8, !noalias !2189
  %i.gq = trunc nuw nsw i64 %i.gi to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 1944
  store i16 %i.gq, ptr %i.gr, align 8, !noalias !2189
  %i.gs = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.gt = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gn
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !2189, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.gv, align 8, !noalias !2189
  %i.gw = trunc nuw nsw i64 %i.gn to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1944
  store i16 %i.gw, ptr %i.gx, align 8, !noalias !2189
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gs, %i.fq
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bg
  switch i16 %i.eq, label %bb.bm [
    i16 5, label %bb.bo
    i16 6, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.gy = add nsw i64 %i.er, -7
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bg
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bn ], [ 6, %bb.bm ], [ 4, %bb.bg ], [ 5, %bb.bl ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.gy, %bb.bm ], [ %i.er, %bb.bg ], [ 5, %bb.bl ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bl ]
  %i.gz = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEE13new_uninit_inB2q_()
          to label %.noexc.i29.i.i unwind label %.loopexit45.i.i, !noalias !2165 ; 10 uses

.noexc.i29.i.i:                                   ; preds = %bb.bo
  store ptr null, ptr %i.gz, align 8, !noalias !2191
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1946 ; 3 uses
  store i16 0, ptr %i.ha, align 2, !noalias !2191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2191
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2195)
  %i.hb = load i16, ptr %i.es, align 2, !noalias !2198, !noundef !3
  %i.hc = zext i16 %i.hb to i64
  %i.hd = xor i64 %.sroa.06.0.i.i.i, -1
  %i.he = add nsw i64 %i.hc, %i.hd                ; 5 uses
  %i.hf = trunc i64 %i.he to i16
  store i16 %i.hf, ptr %i.ha, align 2, !alias.scope !2195, !noalias !2200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2198
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.hh, i64 24, i1 false), !noalias !2198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2198
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ek, i64 272 ; 2 uses
  %i.hj = getelementptr inbounds nuw [152 x i8], ptr %i.hi, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.hj, i64 152, i1 false), !noalias !2198
  %i.hk = icmp ult i64 %i.he, 12
  br i1 %i.hk, label %bb.bu, label %bb.bp, !prof !1699

bb.bp:                                            ; preds = %.noexc.i29.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.he, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #32
          to label %bb.br unwind label %bb.bq, !noalias !2198

bb.bq:                                            ; preds = %bb.bp
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEBF_(ptr noalias noundef align 8 dereferenceable(152) %i.a) #34
          to label %bb.bt unwind label %bb.bs, !noalias !2198

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %bb.bt, %bb.bq
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2198
  unreachable

bb.bt:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.cd unwind label %bb.bs, !noalias !2198

bb.bu:                                            ; preds = %.noexc.i29.i.i
  %i.hn = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hq = mul nuw nsw i64 %i.he, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull readonly align 8 %i.ho, i64 %i.hq, i1 false), !alias.scope !2201, !noalias !2200
  %i.hr = getelementptr inbounds nuw [152 x i8], ptr %i.hi, i64 %i.hn
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 272
  %i.ht = mul nuw nsw i64 %i.he, 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr nonnull readonly align 8 %i.hr, i64 %i.ht, i1 false), !alias.scope !2205, !noalias !2200
  %i.hu = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.hu, ptr %i.es, align 2, !noalias !2198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.dn, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false), !noalias !2209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2198
  %i.hv = load i16, ptr %i.ha, align 2, !noalias !2191, !noundef !3 ; 2 uses
  %i.hw = zext i16 %i.hv to i64                   ; 3 uses
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 3 uses
  %i.hy = icmp ult i16 %i.hv, 12
  br i1 %i.hy, label %bb.bv, label %bb.bx, !prof !1699

bb.bv:                                            ; preds = %bb.bu
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gz, i64 1952 ; 2 uses
  %i.ia = zext i16 %i.et to i64
  %i.ib = sub nuw nsw i64 %i.ia, %.sroa.06.0.i.i.i
  %i.ic = icmp eq i64 %i.ib, %i.hx
  br i1 %i.ic, label %bb.bz, label %bb.bw, !prof !10

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32
          to label %.noexc.i.i30.i.i unwind label %bb.by, !noalias !2191

.noexc.i.i30.i.i:                                 ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hx, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #32
          to label %bb.cb unwind label %bb.by, !noalias !2191

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEEB1z_(ptr noalias noundef align 8 dereferenceable(176) %i.c) #34
          to label %bb.cd unwind label %bb.cc, !noalias !2191

bb.bz:                                            ; preds = %bb.bv
  %i.ie = getelementptr i8, ptr %i.ek, i64 1960
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %.sroa.06.0.i.i.i
  %i.ig = shl nuw nsw i64 %i.hx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.if, i64 %i.ig, i1 false), !alias.scope !2210, !noalias !2191
  %4 = icmp ne i64 %i.eo, 0
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %bb.bz ], [ %spec.select10.i.i.i.i.i.i, %bb.ca ] ; 5 uses
  %i.ih = icmp samesign uge i64 %.sroa.0.013.i.i.i.i.i.i, %i.hw ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.ih, true
  %i.ii = zext i1 %not..i.i.i.i.i.i to i64
  %spec.select10.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, %i.ii ; 2 uses
  %i.ij = icmp samesign ult i64 %.sroa.0.013.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !2214, !noalias !2217, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.gz, ptr %i.il, align 8, !noalias !2220
  %i.im = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 1944
  store i16 %i.im, ptr %i.in, align 8, !noalias !2217
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i.i.i, %i.hw
  %or.cond.i.i.i.i.i.i = select i1 %i.ih, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ce, label %bb.ca

bb.cb:                                            ; preds = %bb.bx
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2191
  unreachable

bb.cd:                                            ; preds = %bb.by, %bb.bt
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.id, %bb.by ], [ %i.hl, %bb.bt ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gz, i64 noundef 2048, i64 noundef 8) #33, !noalias !2191
  br label %bb.cj

bb.ce:                                            ; preds = %bb.ca
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !2165 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 168, i1 false), !noalias !2165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2191
  %spec.select.i31.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.gz, ptr %i.ek ; 11 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 1946 ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !noalias !2221, !noundef !3 ; 2 uses
  %i.ir = zext i16 %i.iq to i64                   ; 5 uses
  %i.is = add i16 %i.iq, 1
  %i.it = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 8 ; 2 uses
  %i.iu = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.ir
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2171
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 272
  %i.ix = getelementptr inbounds nuw [152 x i8], ptr %i.iw, i64 %.sroa.5.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ix, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7244.24..sroa_idx.i.i, i64 152, i1 false), !noalias !2074
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %i.iu
  %i.iz = sub nuw nsw i64 %i.ir, %.sroa.5.0.i.i.i ; 3 uses
  %i.ja = mul nuw nsw i64 %i.iz, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.iv, i64 %i.ja, i1 false), !alias.scope !2226, !noalias !2229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2171
  %i.jb = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 272 ; 2 uses
  %i.jc = getelementptr inbounds nuw [152 x i8], ptr %i.jb, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.jd = getelementptr inbounds nuw [152 x i8], ptr %i.jb, i64 %i.iu
  %i.je = mul nuw nsw i64 %i.iz, 152
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr nonnull align 8 %i.jc, i64 %i.je, i1 false), !alias.scope !2231, !noalias !2234
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.jc, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7244.24..sroa_idx.i.i, i64 152, i1 false), !noalias !2074
  %i.jf = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 1952 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.iu
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.sroa.5.0.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = shl nuw nsw i64 %i.iz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ji, ptr nonnull align 8 %i.jg, i64 %i.jj, i1 false), !alias.scope !2236, !noalias !2221
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jk = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 1952 ; 6 uses
  %i.jl = add nuw nsw i64 %i.ir, 2                ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.iu
  store ptr %i.en, ptr %i.jm, align 8, !alias.scope !2236, !noalias !2221
  store i16 %i.is, ptr %i.ip, align 2, !noalias !2221
  %i.jn = icmp samesign ult i64 %i.iu, %i.jl
  br i1 %i.jn, label %.lr.ph.i.i11.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.ch
  %i.jo = add nuw nsw i64 %i.ir, 1
  %i.jp = sub nsw i64 %i.jo, %.sroa.5.0.i.i.i
  %i.jq = sub nsw i64 %i.ir, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.jp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.jr, %.lr.ph.i.i11.i.i.i.prol ], [ %i.iu, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.js = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.ju = load ptr, ptr %i.jt, align 8, !noalias !2221, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.ju, align 8, !noalias !2221
  %i.jv = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 1944
  store i16 %i.jv, ptr %i.jw, align 8, !noalias !2221
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !2239

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.iu, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.jr, %.lr.ph.i.i11.i.i.i.prol ]
  %i.jx = icmp ult i64 %i.jq, 3
  br i1 %i.jx, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.kn, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.jy = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.sroa.0.06.i.i12.i.i.i
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !2221, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.ka, align 8, !noalias !2221
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 1944
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !2221
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jy
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !2221, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kf, align 8, !noalias !2221
  %i.kg = trunc nuw nsw i64 %i.jy to i16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 1944
  store i16 %i.kg, ptr %i.kh, align 8, !noalias !2221
  %i.ki = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.kd
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !2221, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kk, align 8, !noalias !2221
  %i.kl = trunc nuw nsw i64 %i.kd to i16
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 1944
  store i16 %i.kl, ptr %i.km, align 8, !noalias !2221
  %i.kn = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.ko = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ki
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !2221, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kq, align 8, !noalias !2221
  %i.kr = trunc nuw nsw i64 %i.ki to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 1944
  store i16 %i.kr, ptr %i.ks, align 8, !noalias !2221
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.kn, %i.jl
  br i1 %exitcond.not.i.i13.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

bb.ci:                                            ; preds = %bb.ck, %bb.cj
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2240
  unreachable

bb.cj:                                            ; preds = %bb.cd, %.loopexit45.i.i
  %.pn.ph.i27.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.cd ], [ %lpad.loopexit.i.i, %.loopexit45.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEBF_(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.k) #34
          to label %bb.ck unwind label %bb.ci, !noalias !2241

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #34
          to label %.thread unwind label %bb.ci, !noalias !2240

.thread41.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2074
  br label %.loopexit46.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.718.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.0.i.sroa.4.i.i, i64 168, i1 false), !noalias !2242
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2074
  %.not16.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -1
  br i1 %.not16.i.i, label %.loopexit46.i.i, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.718.i.i, i64 168, i1 false), !noalias !2074
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  %i.ku = load ptr, ptr %i.ek, align 8, !noalias !2144, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.bf

.loopexit46.i.i:                                  ; preds = %.loopexit.i.i, %.thread41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.i.i)
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ay
  %i.kv = zext nneg i16 %i.ed to i64              ; 3 uses
  %i.kw = add nuw nsw i16 %i.ed, 1
  store i16 %i.kw, ptr %i.ds, align 2, !noalias !2160
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.kv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull align 8 dereferenceable(208) %i.j, i64 24, i1 false), !noalias !2074
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dr, i64 272
  %i.la = getelementptr inbounds nuw [152 x i8], ptr %i.kz, i64 %i.kv
end_hunk_3
begin_hunk_4_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceE6insertB23_:bb.a
  %i.dd = getelementptr inbounds nuw [104 x i8], ptr %i.db, i64 %i.cx
  %i.de = mul nuw nsw i64 %i.cz, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.dc, i64 %i.de, i1 false), !alias.scope !2336, !noalias !2338
  br label %bb.an

bb.ak:                                            ; preds = %bb.am, %bb.al
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2339
  unreachable

.thread.i.i:                                      ; preds = %bb.w, %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 272
  %i.dh = add nuw nsw i16 %i.bg, 1
  %i.di = getelementptr inbounds nuw [104 x i8], ptr %i.dg, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.i, i64 104, i1 false), !alias.scope !2340, !noalias !2341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %i.dh, ptr %i.bf, align 2, !noalias !2341
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2275
  br label %bb.ap

bb.al:                                            ; preds = %bb.ag, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.ch, %.thread.i.i.i.i ], [ %i.cj, %bb.ag ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEBF_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.m) #34
          to label %bb.am unwind label %bb.ak, !noalias !2342

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #34
          to label %.thread unwind label %bb.ak, !noalias !2339

bb.an:                                            ; preds = %bb.aj, %bb.ai
  %i.dj = getelementptr inbounds nuw i8, ptr %spec.select31.i.i.i, i64 272
  %i.dk = add i16 %i.ct, 1
  %i.dl = getelementptr inbounds nuw [104 x i8], ptr %i.dj, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.f, i64 104, i1 false), !alias.scope !2343, !noalias !2322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.dk, ptr %i.cs, align 2, !noalias !2322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.426.i.i, i64 120, i1 false), !noalias !2344
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2275
  %.not.i.i = icmp eq i64 %.sroa.025.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7.i.i, i64 120, i1 false), !noalias !2275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.dm = load ptr, ptr %.sroa.13.0, align 8, !noalias !2345, !noundef !3 ; 2 uses
  %.not.i145.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i145.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7244.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7244.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 5 uses
  br label %bb.bf

bb.ap:                                            ; preds = %bb.an, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.cq

._crit_edge.i.i:                                  ; preds = %bb.cl, %bb.ao
  %.sroa.0.0.i.i9 = phi i64 [ %.sroa.025.0.copyload.i.i, %bb.ao ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %.lcssa137.i.i = phi i64 [ 0, %bb.ao ], [ %i.eo, %bb.cl ] ; 3 uses
  %.lcssa129.i.i = phi ptr [ %i.bv, %bb.ao ], [ %i.gz, %bb.cl ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.ao ], [ %i.ek, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2275
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7244.i.i, i64 120, i1 false), !noalias !2275
  store i64 %.sroa.0.0.i.i9, ptr %i.j, align 8, !noalias !2275
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2275
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store i64 %.lcssa137.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !2275
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store ptr %.lcssa129.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !2275
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store i64 %.lcssa137.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !2275
  %i.do = load ptr, ptr %1, align 8, !noalias !2348, !noundef !3 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i23.i.i, label %bb.aq, label %bb.as, !prof !6

bb.aq:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #32
          to label %bb.ar unwind label %bb.bc, !noalias !2348

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !2351, !noalias !2348, !noundef !3 ; 2 uses
  %i.dr = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEE13new_uninit_inB2q_()
          to label %.noexc.i.i.i.i unwind label %bb.aw, !noalias !2354 ; 9 uses

.noexc.i.i.i.i:                                   ; preds = %bb.as
  store ptr null, ptr %i.dr, align 8, !noalias !2354
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1418 ; 3 uses
  store i16 0, ptr %i.ds, align 2, !noalias !2354
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 1424 ; 2 uses
  store ptr %i.do, ptr %i.dt, align 8, !noalias !2354
  %i.du = add i64 %i.dq, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.at, label %bb.ax, !prof !6

bb.at:                                            ; preds = %.noexc.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #32
          to label %bb.au unwind label %bb.av, !noalias !2354

bb.au:                                            ; preds = %bb.at
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dr, i64 noundef 1520, i64 noundef 8) #33, !noalias !2354
  br label %.body.i.i.i.i

bb.aw:                                            ; preds = %bb.as
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aw, %bb.av
  tail call void @llvm.trap()
  unreachable

bb.ax:                                            ; preds = %.noexc.i.i.i.i
  store ptr %i.dr, ptr %i.do, align 8, !noalias !2355
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 1416
  store i16 0, ptr %i.dx, align 8, !noalias !2360
  store ptr %i.dr, ptr %1, align 8, !alias.scope !2351, !noalias !2348
  store i64 %i.du, ptr %i.dp, align 8, !alias.scope !2351, !noalias !2348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 24, i1 false), !noalias !2275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2348
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.7244.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.dy, i64 104, i1 false), !noalias !2275
  %i.dz = icmp eq i64 %.lcssa137.i.i, %i.dq
  br i1 %i.dz, label %bb.ay, label %.invoke.i.i.i.i, !prof !10

.invoke.i.i.i.i:                                  ; preds = %bb.ay, %bb.ax
  %i.ea = phi ptr [ @53, %bb.ax ], [ @51, %bb.ay ]
  %i.eb = phi i64 [ 48, %bb.ax ], [ 32, %bb.ay ]
  %i.ec = phi ptr [ @54, %bb.ax ], [ @55, %bb.ay ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ea, i64 noundef %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ec) #32
          to label %.cont.i.i.i.i unwind label %bb.az, !noalias !2361

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ed = load i16, ptr %i.ds, align 2, !noalias !2361, !noundef !3 ; 3 uses
  %i.ee = icmp ult i16 %i.ed, 11
  br i1 %i.ee, label %bb.cm, label %.invoke.i.i.i.i, !prof !10

bb.az:                                            ; preds = %.invoke.i.i.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEBF_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.d) #34
          to label %bb.bb unwind label %bb.ba, !noalias !2365

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2348
  unreachable

bb.bb:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #34
          to label %.thread unwind label %bb.ba, !noalias !2348

bb.bc:                                            ; preds = %bb.aq
  %i.eh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.j) #34
          to label %bb.be unwind label %bb.bd, !noalias !2275

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2275
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ej = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEBF_(ptr noalias noundef align 8 dereferenceable(104) %i.ej) #34
          to label %.thread unwind label %bb.bd, !noalias !2275

bb.bf:                                            ; preds = %.lr.ph.i.i, %bb.cl
  %.sroa.0.1.i.i = phi i64 [ %.sroa.025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cl ]
  %i.ek = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.ku, %bb.cl ] ; 18 uses
  %i.el = phi ptr [ %.sroa.13.0, %.lr.ph.i.i ], [ %i.ek, %bb.cl ]
  %i.em = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eo, %bb.cl ]
  %i.en = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.gz, %bb.cl ] ; 2 uses
  %i.eo = add i64 %i.em, 1                        ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 1416
  %i.eq = load i16, ptr %i.ep, align 8, !noalias !2345 ; 4 uses
  %i.er = zext i16 %i.eq to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2275
  store i64 %.sroa.0.1.i.i, ptr %i.l, align 8, !noalias !2275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.i.i, i64 16, i1 false), !noalias !2275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7244.24..sroa_idx.i.i, i64 104, i1 false), !noalias !2275
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 1418 ; 4 uses
  %i.et = load i16, ptr %i.es, align 2, !noalias !2366, !noundef !3 ; 5 uses
  %i.eu = icmp ult i16 %i.et, 11
  br i1 %i.eu, label %bb.bh, label %bb.bg

.loopexit45.i.i:                                  ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bg:                                            ; preds = %bb.bf
  %i.ev = icmp ult i16 %i.eq, 5
  br i1 %i.ev, label %bb.bo, label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %i.ew = zext nneg i16 %i.et to i64              ; 4 uses
  %i.ex = add nuw nsw i16 %i.et, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.ez = add nuw nsw i64 %i.er, 1                ; 7 uses
  %.not.i.i32.not.i.i = icmp ult i16 %i.eq, %i.et
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.er ; 3 uses
  br i1 %.not.i.i32.not.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2372
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 272
  %i.fc = getelementptr inbounds nuw [104 x i8], ptr %i.fb, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fc, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7244.24..sroa_idx.i.i, i64 104, i1 false), !noalias !2275
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.ey, i64 %i.ez
  %i.fe = sub nsw i64 %i.ew, %i.er                ; 3 uses
  %i.ff = mul nsw i64 %i.fe, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fd, ptr nonnull align 8 %i.fa, i64 %i.ff, i1 false), !alias.scope !2373, !noalias !2376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2372
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ek, i64 272 ; 2 uses
  %i.fh = getelementptr inbounds nuw [104 x i8], ptr %i.fg, i64 %i.er ; 2 uses
  %i.fi = getelementptr inbounds nuw [104 x i8], ptr %i.fg, i64 %i.ez
  %i.fj = mul nsw i64 %i.fe, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fi, ptr nonnull align 8 %i.fh, i64 %i.fj, i1 false), !alias.scope !2382, !noalias !2385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fh, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7244.24..sroa_idx.i.i, i64 104, i1 false), !noalias !2275
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ek, i64 1424 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.ez
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.er
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = shl nsw i64 %i.fe, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr nonnull align 8 %i.fl, i64 %i.fo, i1 false), !alias.scope !2387, !noalias !2390
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ek, i64 1424 ; 6 uses
  %i.fq = add nuw nsw i64 %i.ew, 2                ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.ez
  store ptr %i.en, ptr %i.fr, align 8, !alias.scope !2387, !noalias !2390
  store i16 %i.ex, ptr %i.es, align 2, !noalias !2390
  %i.fs = icmp samesign ult i64 %i.ez, %i.fq
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i.preheader, label %.thread41.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bk
  %i.ft = add nuw nsw i64 %i.ew, 1
  %i.fu = sub nsw i64 %i.ft, %i.er
  %i.fv = sub nsw i64 %i.ew, %i.er
  %xtraiter418 = and i64 %i.fu, 3                 ; 2 uses
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.fw, %.lr.ph.i.i.i.i.i.prol ], [ %i.ez, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter420 = phi i64 [ %prol.iter420.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fw = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fx = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !2390, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.fz, align 8, !noalias !2390
  %i.ga = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 1416
  store i16 %i.ga, ptr %i.gb, align 8, !noalias !2390
  %prol.iter420.next = add i64 %prol.iter420, 1   ; 2 uses
  %prol.iter420.cmp.not = icmp eq i64 %prol.iter420.next, %xtraiter418
  br i1 %prol.iter420.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2391

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fw, %.lr.ph.i.i.i.i.i.prol ]
  %i.gc = icmp ult i64 %i.fv, 3
  br i1 %i.gc, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.gd = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.0.06.i.i.i.i.i
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !2390, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.gf, align 8, !noalias !2390
  %i.gg = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 1416
  store i16 %i.gg, ptr %i.gh, align 8, !noalias !2390
  %i.gi = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gd
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !2390, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.gk, align 8, !noalias !2390
  %i.gl = trunc nuw nsw i64 %i.gd to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 1416
  store i16 %i.gl, ptr %i.gm, align 8, !noalias !2390
  %i.gn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gi
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !2390, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.gp, align 8, !noalias !2390
  %i.gq = trunc nuw nsw i64 %i.gi to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 1416
  store i16 %i.gq, ptr %i.gr, align 8, !noalias !2390
  %i.gs = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.gt = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gt)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gn
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !2390, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.ek, ptr %i.gv, align 8, !noalias !2390
  %i.gw = trunc nuw nsw i64 %i.gn to i16
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 1416
  store i16 %i.gw, ptr %i.gx, align 8, !noalias !2390
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gs, %i.fq
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bg
  switch i16 %i.eq, label %bb.bm [
    i16 5, label %bb.bo
    i16 6, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.gy = add nsw i64 %i.er, -7
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bg
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bn ], [ 6, %bb.bm ], [ 4, %bb.bg ], [ 5, %bb.bl ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.gy, %bb.bm ], [ %i.er, %bb.bg ], [ 5, %bb.bl ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bn ], [ true, %bb.bm ], [ false, %bb.bg ], [ false, %bb.bl ]
  %i.gz = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEE13new_uninit_inB2q_()
          to label %.noexc.i29.i.i unwind label %.loopexit45.i.i, !noalias !2366 ; 10 uses

.noexc.i29.i.i:                                   ; preds = %bb.bo
  store ptr null, ptr %i.gz, align 8, !noalias !2392
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1418 ; 3 uses
  store i16 0, ptr %i.ha, align 2, !noalias !2392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  %i.hb = load i16, ptr %i.es, align 2, !noalias !2399, !noundef !3
  %i.hc = zext i16 %i.hb to i64
  %i.hd = xor i64 %.sroa.06.0.i.i.i, -1
  %i.he = add nsw i64 %i.hc, %i.hd                ; 5 uses
  %i.hf = trunc i64 %i.he to i16
  store i16 %i.hf, ptr %i.ha, align 2, !alias.scope !2396, !noalias !2401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2399
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.hh, i64 24, i1 false), !noalias !2399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2399
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ek, i64 272 ; 2 uses
  %i.hj = getelementptr inbounds nuw [104 x i8], ptr %i.hi, i64 %.sroa.06.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.hj, i64 104, i1 false), !noalias !2399
  %i.hk = icmp ult i64 %i.he, 12
  br i1 %i.hk, label %bb.bu, label %bb.bp, !prof !1699

bb.bp:                                            ; preds = %.noexc.i29.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.he, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #32
          to label %bb.br unwind label %bb.bq, !noalias !2399

bb.bq:                                            ; preds = %bb.bp
  %i.hl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEBF_(ptr noalias noundef align 8 dereferenceable(104) %i.a) #34
          to label %bb.bt unwind label %bb.bs, !noalias !2399

bb.br:                                            ; preds = %bb.bp
  unreachable

bb.bs:                                            ; preds = %bb.bt, %bb.bq
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2399
  unreachable

bb.bt:                                            ; preds = %bb.bq
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef align 8 dereferenceable(24) %i.b) #34
          to label %bb.cd unwind label %bb.bs, !noalias !2399

bb.bu:                                            ; preds = %.noexc.i29.i.i
  %i.hn = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %i.hg, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hq = mul nuw nsw i64 %i.he, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hp, ptr nonnull readonly align 8 %i.ho, i64 %i.hq, i1 false), !alias.scope !2402, !noalias !2401
  %i.hr = getelementptr inbounds nuw [104 x i8], ptr %i.hi, i64 %i.hn
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gz, i64 272
  %i.ht = mul nuw nsw i64 %i.he, 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr nonnull readonly align 8 %i.hr, i64 %i.ht, i1 false), !alias.scope !2406, !noalias !2401
  %i.hu = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.hu, ptr %i.es, align 2, !noalias !2399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !2410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2399
  %i.hv = load i16, ptr %i.ha, align 2, !noalias !2392, !noundef !3 ; 2 uses
  %i.hw = zext i16 %i.hv to i64                   ; 3 uses
  %i.hx = add nuw nsw i64 %i.hw, 1                ; 3 uses
  %i.hy = icmp ult i16 %i.hv, 12
  br i1 %i.hy, label %bb.bv, label %bb.bx, !prof !1699

bb.bv:                                            ; preds = %bb.bu
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gz, i64 1424 ; 2 uses
  %i.ia = zext i16 %i.et to i64
  %i.ib = sub nuw nsw i64 %i.ia, %.sroa.06.0.i.i.i
  %i.ic = icmp eq i64 %i.ib, %i.hx
  br i1 %i.ic, label %bb.bz, label %bb.bw, !prof !10

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #32
          to label %.noexc.i.i30.i.i unwind label %bb.by, !noalias !2392

.noexc.i.i30.i.i:                                 ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bu
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hx, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #32
          to label %bb.cb unwind label %bb.by, !noalias !2392

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEEB1z_(ptr noalias noundef align 8 dereferenceable(128) %i.c) #34
          to label %bb.cd unwind label %bb.cc, !noalias !2392

bb.bz:                                            ; preds = %bb.bv
  %i.ie = getelementptr i8, ptr %i.ek, i64 1432
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %.sroa.06.0.i.i.i
  %i.ig = shl nuw nsw i64 %i.hx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.if, i64 %i.ig, i1 false), !alias.scope !2411, !noalias !2392
  %4 = icmp ne i64 %i.eo, 0
  tail call void @llvm.assume(i1 %4)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %bb.bz
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %bb.bz ], [ %spec.select10.i.i.i.i.i.i, %bb.ca ] ; 5 uses
  %i.ih = icmp samesign uge i64 %.sroa.0.013.i.i.i.i.i.i, %i.hw ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.ih, true
  %i.ii = zext i1 %not..i.i.i.i.i.i to i64
  %spec.select10.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, %i.ii ; 2 uses
  %i.ij = icmp samesign ult i64 %.sroa.0.013.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !2415, !noalias !2418, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %i.gz, ptr %i.il, align 8, !noalias !2421
  %i.im = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i to i16
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 1416
  store i16 %i.im, ptr %i.in, align 8, !noalias !2418
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i.i.i, %i.hw
  %or.cond.i.i.i.i.i.i = select i1 %i.ih, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.ce, label %bb.ca

bb.cb:                                            ; preds = %bb.bx
  unreachable

bb.cc:                                            ; preds = %bb.by
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2392
  unreachable

bb.cd:                                            ; preds = %bb.by, %bb.bt
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.id, %bb.by ], [ %i.hl, %bb.bt ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gz, i64 noundef 1520, i64 noundef 8) #33, !noalias !2392
  br label %bb.cj

bb.ce:                                            ; preds = %bb.ca
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !2366 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 120, i1 false), !noalias !2366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2392
  %spec.select.i31.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.gz, ptr %i.ek ; 11 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 1418 ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !noalias !2422, !noundef !3 ; 2 uses
  %i.ir = zext i16 %i.iq to i64                   ; 5 uses
  %i.is = add i16 %i.iq, 1
  %i.it = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 8 ; 2 uses
  %i.iu = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.ir
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2372
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 272
  %i.ix = getelementptr inbounds nuw [104 x i8], ptr %i.iw, i64 %.sroa.5.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ix, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7244.24..sroa_idx.i.i, i64 104, i1 false), !noalias !2275
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.iy = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %i.iu
  %i.iz = sub nuw nsw i64 %i.ir, %.sroa.5.0.i.i.i ; 3 uses
  %i.ja = mul nuw nsw i64 %i.iz, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.iv, i64 %i.ja, i1 false), !alias.scope !2427, !noalias !2430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2372
  %i.jb = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 272 ; 2 uses
  %i.jc = getelementptr inbounds nuw [104 x i8], ptr %i.jb, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.jd = getelementptr inbounds nuw [104 x i8], ptr %i.jb, i64 %i.iu
  %i.je = mul nuw nsw i64 %i.iz, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr nonnull align 8 %i.jc, i64 %i.je, i1 false), !alias.scope !2432, !noalias !2435
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.jc, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7244.24..sroa_idx.i.i, i64 104, i1 false), !noalias !2275
  %i.jf = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 1424 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.iu
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.sroa.5.0.i.i.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = shl nuw nsw i64 %i.iz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ji, ptr nonnull align 8 %i.jg, i64 %i.jj, i1 false), !alias.scope !2437, !noalias !2422
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.jk = getelementptr inbounds nuw i8, ptr %spec.select.i31.i.i, i64 1424 ; 6 uses
  %i.jl = add nuw nsw i64 %i.ir, 2                ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.iu
  store ptr %i.en, ptr %i.jm, align 8, !alias.scope !2437, !noalias !2422
  store i16 %i.is, ptr %i.ip, align 2, !noalias !2422
  %i.jn = icmp samesign ult i64 %i.iu, %i.jl
  br i1 %i.jn, label %.lr.ph.i.i11.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.ch
  %i.jo = add nuw nsw i64 %i.ir, 1
  %i.jp = sub nsw i64 %i.jo, %.sroa.5.0.i.i.i
  %i.jq = sub nsw i64 %i.ir, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.jp, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.jr, %.lr.ph.i.i11.i.i.i.prol ], [ %i.iu, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.js = icmp ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.ju = load ptr, ptr %i.jt, align 8, !noalias !2422, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.ju, align 8, !noalias !2422
  %i.jv = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 1416
  store i16 %i.jv, ptr %i.jw, align 8, !noalias !2422
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !2440

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.iu, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.jr, %.lr.ph.i.i11.i.i.i.prol ]
  %i.jx = icmp ult i64 %i.jq, 3
  br i1 %i.jx, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.kn, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.jy = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %.sroa.0.06.i.i12.i.i.i
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !2422, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.ka, align 8, !noalias !2422
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 1416
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !2422
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jy
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !2422, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kf, align 8, !noalias !2422
  %i.kg = trunc nuw nsw i64 %i.jy to i16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 1416
  store i16 %i.kg, ptr %i.kh, align 8, !noalias !2422
  %i.ki = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.kd
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !2422, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kk, align 8, !noalias !2422
  %i.kl = trunc nuw nsw i64 %i.kd to i16
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 1416
  store i16 %i.kl, ptr %i.km, align 8, !noalias !2422
  %i.kn = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.ko = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ki
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !2422, !nonnull !3, !noundef !3 ; 2 uses
  store ptr %spec.select.i31.i.i, ptr %i.kq, align 8, !noalias !2422
  %i.kr = trunc nuw nsw i64 %i.ki to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 1416
  store i16 %i.kr, ptr %i.ks, align 8, !noalias !2422
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.kn, %i.jl
  br i1 %exitcond.not.i.i13.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

bb.ci:                                            ; preds = %bb.ck, %bb.cj
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2441
  unreachable

bb.cj:                                            ; preds = %bb.cd, %.loopexit45.i.i
  %.pn.ph.i27.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.cd ], [ %lpad.loopexit.i.i, %.loopexit45.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEBF_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k) #34
          to label %bb.ck unwind label %bb.ci, !noalias !2442

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #34
          to label %.thread unwind label %bb.ci, !noalias !2441

.thread41.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2275
  br label %.loopexit46.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.718.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0.i.sroa.4.i.i, i64 120, i1 false), !noalias !2443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2275
  %.not16.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -1
  br i1 %.not16.i.i, label %.loopexit46.i.i, label %bb.cl

bb.cl:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7244.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.718.i.i, i64 120, i1 false), !noalias !2275
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  %i.ku = load ptr, ptr %i.ek, align 8, !noalias !2345, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ku, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.bf

.loopexit46.i.i:                                  ; preds = %.loopexit.i.i, %.thread41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.i.i)
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ay
  %i.kv = zext nneg i16 %i.ed to i64              ; 3 uses
  %i.kw = add nuw nsw i16 %i.ed, 1
  store i16 %i.kw, ptr %i.ds, align 2, !noalias !2361
  %i.kx = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ky = getelementptr inbounds nuw [24 x i8], ptr %i.kx, i64 %i.kv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 24, i1 false), !noalias !2275
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dr, i64 272
  %i.la = getelementptr inbounds nuw [104 x i8], ptr %i.kz, i64 %i.kv
end_hunk_4
