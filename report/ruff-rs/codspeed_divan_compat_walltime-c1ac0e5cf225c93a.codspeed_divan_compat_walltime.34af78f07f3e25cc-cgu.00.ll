Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/codspeed_divan_compat_walltime-c1ac0e5cf225c93a.codspeed_divan_compat_walltime.34af78f07f3e25cc-cgu.00?download=true
inline.NumInlined: 610
inline.NumDeleted: 318
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecRReEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E13with_capacityCs4wrugdhLTku_30codspeed_divan_compat_walltime:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #20
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs8_NtCscdodAO9FK5_5alloc5sliceINtNtB7_3vec3VecRReEINtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable8BufGuardBM_E19as_uninit_slice_mutCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load i64, ptr %0, align 8, !range !5, !noundef !3
  %i.g = sub i64 %i.f, %i.d
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsX_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !1398, !alias.scope !1397, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1397, !nonnull !3, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !1397, !noundef !3 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1397
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.g = load i64, ptr %0, align 8, !range !14, !alias.scope !1401, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !1398, !alias.scope !1402, !noundef !3
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1401 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i.i = load i8, ptr %i.m, align 8, !alias.scope !1402 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  %i.n = trunc nuw i8 %.promoted26.i.i to i1      ; 2 uses
  %i.o = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %.val1.i
  br i1 %.not.i.i.i.peel.i, label %bb.d, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.p, label %bb.e, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1404, !noalias !1405, !noundef !3
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.u, label %.loopexit19.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !1406, !noundef !3 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !1406, !noundef !3
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !1406, !noundef !3
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.peel.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !1406, !noundef !3
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.peel.i ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.peel.i ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.peel.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1401, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1401, !nonnull !3, !noundef !3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1401, !noundef !3 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !1407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i = icmp ult i64 %i.bq, %.val1.i
  br i1 %.not.i.i.i.i, label %bb.o, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1404, !noalias !1409, !noundef !3
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i
  br i1 %i.bw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !1410, !noundef !3 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.o, %.split.i.i.i.i, %bb.d, %.split.i.i.i.peel.i
  %.lcssa15.i = phi i8 [ %.promoted26.i.i, %.split.i.i.i.peel.i ], [ %.promoted26.i.i, %bb.d ], [ 1, %.split.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !1402
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %.lcssa12.i, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20, !noalias !1409
  unreachable

.loopexit19.i:                                    ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !1402
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i
  store i8 1, ptr %i.j, align 2, !alias.scope !1402
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i

.sink.split.i:                                    ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.i, %bb.q, %bb.h
  %.lcssa14.i = phi i64 [ %.promoted.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit16.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit14.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit12.i.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !1402
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %.loopexit19.i, %bb.p
  %1 = phi i64 [ %.lcssa14.i, %.sink.split.i ], [ %.val1.i, %.loopexit19.i ], [ %.val1.i, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !1399, !noalias !1397
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !1399, !noalias !1397
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i: ; preds = %bb.s, %bb.r, %.preheader.i.i
  %storemerge.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i ]
  store i64 %storemerge.i.i, ptr %i.a, align 8, !alias.scope !1399, !noalias !1397
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.u, %bb.t, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i
  %i.cm = load i64, ptr %i.a, align 8, !range !14, !noalias !1397, !noundef !3
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !1397, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !1397, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1397, !noundef !3 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !1397
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i
  %i.cw = load i8, ptr %i.b, align 1, !range !1398, !alias.scope !1411, !noundef !3
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !1411
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !1398, !alias.scope !1411, !noundef !3
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.x
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1411
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !alias.scope !1411
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1411, !noundef !3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !1411, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i
  %i.df = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1411, !nonnull !3, !noundef !3
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dg
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0.i = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0.i = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1397
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %bb.a, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i ], [ undef, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs4wrugdhLTku_30codspeed_divan_compat_walltime.exit.i ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTdBX_EENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRBX_INtNtNtB27_5slice4iter4IterBX_EEs0_0EE9from_iterCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RINvNtNtCscdodAO9FK5_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanRB2m_INtNtNtB1e_5slice4iter4IterB2m_EEs0_0EB2m_ECs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojEEINtB4_18SpecFromIterNestedB12_INtNtNtNtB19_4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterjENCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB3s_5Divan15run_bench_entry0EE9from_iterB3u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.h = load i64, ptr %i.b, align 8, !range !14, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !15, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojEE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtNtBM_5slice4iter4IterjENCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB2P_5Divan15run_bench_entry0EEB2R_.exit.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #20
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojEE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtNtBM_5slice4iter4IterjENCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB2P_5Divan15run_bench_entry0EEB2R_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.k, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1416
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1416
  store ptr %i.q, ptr %i.a, align 8, !noalias !1416
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1416
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB1w_5Divan15run_bench_entry0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callINtNtNtBc_3num7nonzero7NonZerojENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4B_3VecB3W_E14extend_trustedBN_E0E0EB1y_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojEE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtNtBM_5slice4iter4IterjENCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB2P_5Divan15run_bench_entry0EEB2R_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojEENtNtNtBS_3ops4drop4Drop4dropCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_3num7nonzero7NonZerojEEECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtNtCs4NRVxsYgnAr_4core3num7nonzero7NonZerojEE14extend_trustedINtNtNtNtBM_4iter8adapters3map3MapINtNtNtBM_5slice4iter4IterjENCNvMs_NtCs4wrugdhLTku_30codspeed_divan_compat_walltime5divanNtB2P_5Divan15run_bench_entry0EEB2R_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtNtB4_3num7nonzero7NonZerojEEECs4wrugdhLTku_30codspeed_divan_compat_walltime.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleEINtB4_18SpecFromIterNestedB12_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB13_EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4wrugdhLTku_30codspeed_divan_compat_walltime(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !15, !noundef !3 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleE7reserveBK_.exit.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #20
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleE7reserveBK_.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecRNtNtNtCs4wrugdhLTku_30codspeed_divan_compat_walltime5stats6sample10TimeSampleE7reserveBK_.exit.i.i
  %i.o = add i64 %i.b, -16
  %i.p = sub i64 %i.o, %i.c                       ; 2 uses
  %i.q = lshr i64 %i.p, 4
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.r, 2305843009213693948      ; 5 uses
end_hunk_0
