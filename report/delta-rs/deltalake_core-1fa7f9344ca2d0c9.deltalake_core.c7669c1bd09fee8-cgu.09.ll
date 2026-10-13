Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.09?download=true
inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.156, %.lr.ph57 ], [ 1, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bg, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph57
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !23 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 5 uses
  %i.bk = lshr i64 %.sroa.023.155, 1              ; 3 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 5 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bm ; 3 uses
  %i.bo = icmp samesign ugt i64 %i.bl, %3
  %i.bp = trunc i64 %.sroa.023.155 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.155
  %i.br = trunc i64 %i.bq to i1
  %or.cond3.i = or i1 %i.bo, %i.br
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bt = shl nuw nsw i64 %i.bl, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bp, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 1152921504606846976) %i.bj, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5) #45, !inline_history !3678
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.bn, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bj, ptr noalias noundef nonnull %5)
  %i.bz = shl nuw nsw i64 %i.bl, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bj
  %i.cc = or i64 %i.bk, 1
  %i.cd = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5) #45, !inline_history !3678
  br label %bb.w

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift13logical_mergexNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.w ], [ %i.bt, %bb.t ] ; 2 uses
  %i.ch = icmp ugt i64 %i.bc, 1
  br i1 %i.ch, label %.lr.ph57, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ci = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cj = lshr i64 %.sroa.018.0, 1
  %i.ck = add nuw i64 %i.cj, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cl = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cl, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = or i64 %1, 1
  %i.cn = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull %5) #45, !inline_history !3678
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB15_7sort_byNCNCNvNtNtB1d_10operations8optimize21build_compaction_plan0s0_0E0EB1d_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 33909456017848441) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(272) %5, ptr noalias noundef align 8 dereferenceable(8) %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.cp, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.ca, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph96, i64 200
  %i.d = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph93, i64 200
  %i.f = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add12split_at_mutBC_.exit
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add12split_at_mutBC_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.cb, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add12split_at_mutBC_.exit ], [ %i.cp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add12split_at_mutBC_.exit ], [ %i.ca, %.outer ]
  call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1s_7sort_byNCNCNvNtNtB1A_10operations8optimize21build_compaction_plan0s0_0E0EB1A_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 33909456017848441) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBW_7sort_byNCNCNvNtNtB14_10operations8optimize21build_compaction_plan0s0_0E0EB14_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.088218, -1            ; 4 uses
  %i.i = lshr i64 %.sroa.16.089217, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.i, 1088
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 1904
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.l, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBZ_7sort_byNCNCNvNtNtB17_10operations8optimize21build_compaction_plan0s0_0E0EB17_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.m = call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB14_7sort_byNCNCNvNtNtB1c_10operations8optimize21build_compaction_plan0s0_0E0EB1c_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.k, i64 noundef %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.e

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBZ_7sort_byNCNCNvNtNtB17_10operations8optimize21build_compaction_plan0s0_0E0EB17_.exit.i: ; preds = %.lr.ph219
  %.val6.i = load i64, ptr %i.c, align 8, !alias.scope !3710, !noalias !3711, !noundef !23 ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 200
  %.val7.i = load i64, ptr %i.n, align 8, !alias.scope !3710, !noalias !3711, !noundef !23 ; 2 uses
  %i.o = icmp slt i64 %.val7.i, %.val6.i          ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 200
  %.val5.i = load i64, ptr %i.p, align 8, !alias.scope !3710, !noalias !3711, !noundef !23 ; 2 uses
  %i.q = icmp slt i64 %.val5.i, %.val6.i
  %i.r = xor i1 %i.o, %i.q
  %i.s = icmp slt i64 %.val5.i, %.val7.i
  %i.t = xor i1 %i.o, %i.s
  %..i.i = select i1 %i.t, ptr %i.k, ptr %i.j
  %.sroa.0.0.i.i = select i1 %i.r, ptr %.sroa.0.0.ph96, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBZ_7sort_byNCNCNvNtNtB17_10operations8optimize21build_compaction_plan0s0_0E0EB17_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBZ_7sort_byNCNCNvNtNtB17_10operations8optimize21build_compaction_plan0s0_0E0EB17_.exit.i ], [ %i.m, %bb.c ]
  %i.u = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.v = sub nuw i64 %i.u, %i.d                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.v, 272         ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.v ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.a, ptr noundef nonnull align 8 dereferenceable(272) %i.x, i64 272, i1 false)
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %i.e, align 8, !noundef !23
  %i.y = getelementptr i8, ptr %i.x, i64 200
  %.val = load i64, ptr %i.y, align 8, !noundef !23
  %i.z = icmp slt i64 %.val, %.sroa.028.0.val
  br i1 %i.z, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !3712)
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not63, label %bb.i, label %bb.h, !prof !95

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr [272 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 200
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.19.0.i = phi ptr [ %i.aa, %bb.h ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.11.1.lcssa.i, %bb.k ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph96, %bb.h ], [ %i.ap, %bb.k ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.089217, %bb.k ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [272 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i37 ; 2 uses
  %i.ad = icmp ult ptr %.sroa.5.0.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i.a, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.a, %bb.j
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.j ], [ %i.ah, %.lr.ph.i.a ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.j ], [ %i.ak, %.lr.ph.i.a ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.j ], [ %i.al, %.lr.ph.i.a ] ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.089217
  br i1 %i.ae, label %bb.l, label %bb.k

.lr.ph.i.a:                                       ; preds = %bb.j, %.lr.ph.i.a
  %.sroa.5.111.i = phi ptr [ %i.al, %.lr.ph.i.a ], [ %.sroa.5.0.i, %bb.j ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %i.ak, %.lr.ph.i.a ], [ %.sroa.11.0.i, %bb.j ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.ah, %.lr.ph.i.a ], [ %.sroa.19.0.i, %bb.j ]
  %i.af = getelementptr i8, ptr %.sroa.5.111.i, i64 200
  %.val.i = load i64, ptr %i.af, align 8, !alias.scope !3713, !noalias !3712, !noundef !23
  %.val12.i.a = load i64, ptr %i.ab, align 8, !alias.scope !3713, !noalias !3712, !noundef !23
  %i.ag = icmp slt i64 %.val12.i.a, %.val.i       ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -272 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.ag, ptr %2, ptr %i.ah
  %i.ai = getelementptr inbounds nuw [272 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ai, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.111.i, i64 272, i1 false), !alias.scope !3714, !noalias !3715
  %i.aj = zext i1 %i.ag to i64
  %i.ak = add i64 %.sroa.11.110.i, %i.aj          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 272 ; 3 uses
  %i.am = icmp ult ptr %i.al, %i.ac
  br i1 %i.am, label %.lr.ph.i.a, label %._crit_edge.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -272 ; 2 uses
  %i.ao = getelementptr inbounds nuw [272 x i8], ptr %i.an, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ao, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.1.lcssa.i, i64 272, i1 false), !alias.scope !3714, !noalias !3716
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 272
  br label %bb.j

bb.l:                                             ; preds = %._crit_edge.i
  %i.aq = mul i64 %.sroa.11.1.lcssa.i, 272
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.aq, i1 false), !alias.scope !3714
  %i.ar = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.l
  %i.as = getelementptr [272 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ar, 1
  %i.at = icmp eq i64 %.sroa.16.089217, %.neg
  br i1 %i.at, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ar, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ax, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.m ]
  %i.au = xor i64 %.sroa.06.014.i, -1
  %i.av = getelementptr [272 x i8], ptr %i.aa, i64 %i.au
  %i.aw = getelementptr [272 x i8], ptr %i.as, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.aw, ptr noundef nonnull align 8 dereferenceable(272) %i.av, i64 272, i1 false), !alias.scope !3714
  %i.ax = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.ay = xor i64 %.sroa.06.014.i, -2
  %i.az = getelementptr [272 x i8], ptr %i.aa, i64 %i.ay
  %i.ba = getelementptr [272 x i8], ptr %i.as, i64 %.sroa.06.014.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bb, ptr noundef nonnull align 8 dereferenceable(272) %i.az, i64 272, i1 false), !alias.scope !3714
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.m

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod280 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.bc = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bd = getelementptr [272 x i8], ptr %i.aa, i64 %i.bc
  %i.be = getelementptr [272 x i8], ptr %i.as, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.be, ptr noundef nonnull align 8 dereferenceable(272) %i.bd, i64 272, i1 false), !alias.scope !3714
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.l
  %i.bf = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.bf, label %.thread, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.089217
  br i1 %.not.i38, label %bb.o, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add12split_at_mutBC_.exit, !prof !50

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #39, !noalias !3717
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3Add12split_at_mutBC_.exit: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw [272 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph96) ]
  call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB15_7sort_byNCNCNvNtNtB1d_10operations8optimize21build_compaction_plan0s0_0E0EB1d_(ptr noalias noundef nonnull align 8 %i.bg, i64 noundef %i.ar, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(272) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bh, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !3718)
  %.not64 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not64, label %bb.q, label %bb.p, !prof !95

bb.p:                                             ; preds = %.thread
  %i.bi = getelementptr [272 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.x, i64 200
  br label %bb.r

bb.q:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.p
  %.sroa.19.0.i41 = phi ptr [ %i.bi, %bb.p ], [ %i.bv, %bb.s ] ; 2 uses
  %.sroa.11.0.i42 = phi i64 [ 0, %bb.p ], [ %i.bx, %bb.s ] ; 2 uses
  %.sroa.5.0.i43 = phi ptr [ %.sroa.0.0.ph96, %bb.p ], [ %i.by, %bb.s ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %.sroa.16.089217, %bb.s ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [272 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i44 ; 2 uses
  %i.bl = icmp ult ptr %.sroa.5.0.i43, %i.bk
  br i1 %i.bl, label %.lr.ph.i53.a, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %.lr.ph.i53.a, %bb.r
  %.sroa.19.1.lcssa.i46 = phi ptr [ %.sroa.19.0.i41, %bb.r ], [ %i.bp, %.lr.ph.i53.a ]
  %.sroa.11.1.lcssa.i47 = phi i64 [ %.sroa.11.0.i42, %bb.r ], [ %i.bs, %.lr.ph.i53.a ] ; 10 uses
  %.sroa.5.1.lcssa.i48 = phi ptr [ %.sroa.5.0.i43, %bb.r ], [ %i.bt, %.lr.ph.i53.a ] ; 2 uses
  %i.bm = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.089217
  br i1 %i.bm, label %bb.t, label %bb.s

.lr.ph.i53.a:                                     ; preds = %bb.r, %.lr.ph.i53.a
  %.sroa.5.111.i54 = phi ptr [ %i.bt, %.lr.ph.i53.a ], [ %.sroa.5.0.i43, %bb.r ] ; 3 uses
  %.sroa.11.110.i55 = phi i64 [ %i.bs, %.lr.ph.i53.a ], [ %.sroa.11.0.i42, %bb.r ] ; 2 uses
  %.sroa.19.19.i56 = phi ptr [ %i.bp, %.lr.ph.i53.a ], [ %.sroa.19.0.i41, %bb.r ]
  %i.bn = getelementptr i8, ptr %.sroa.5.111.i54, i64 200
  %.val.i57 = load i64, ptr %i.bn, align 8, !alias.scope !3719, !noalias !3718, !noundef !23
  %.val12.i58 = load i64, ptr %i.bj, align 8, !alias.scope !3719, !noalias !3718, !noundef !23
  %i.bo = icmp sge i64 %.val.i57, %.val12.i58     ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.19.19.i56, i64 -272 ; 3 uses
  %.sroa.01.0.i.i59 = select i1 %i.bo, ptr %2, ptr %i.bp
  %i.bq = getelementptr inbounds nuw [272 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.11.110.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bq, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.111.i54, i64 272, i1 false), !alias.scope !3720, !noalias !3721
  %i.br = zext i1 %i.bo to i64
  %i.bs = add i64 %.sroa.11.110.i55, %i.br        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i54, i64 272 ; 3 uses
  %i.bu = icmp ult ptr %i.bt, %i.bk
  br i1 %i.bu, label %.lr.ph.i53.a, label %._crit_edge.i45

bb.s:                                             ; preds = %._crit_edge.i45
  %i.bv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i46, i64 -272
  %i.bw = getelementptr inbounds nuw [272 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bw, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.5.1.lcssa.i48, i64 272, i1 false), !alias.scope !3720, !noalias !3722
  %i.bx = add i64 %.sroa.11.1.lcssa.i47, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i48, i64 272
  br label %bb.r

bb.t:                                             ; preds = %._crit_edge.i45
  %i.bz = mul i64 %.sroa.11.1.lcssa.i47, 272
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.bz, i1 false), !alias.scope !3720
  %i.ca = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47 ; 6 uses
  %.not18.i49 = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47
  %i.cb = getelementptr [272 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 4 uses
  br i1 %.not18.i49, label %.outer.thread, label %.lr.ph16.i50.preheader

.lr.ph16.i50.preheader:                           ; preds = %bb.t
  %.neg292 = add i64 %.sroa.11.1.lcssa.i47, 1
  %xtraiter287 = and i64 %i.ca, 1
  %i.cc = icmp eq i64 %.sroa.16.089217, %.neg292
  br i1 %i.cc, label %.lr.ph16.i50.epil.preheader, label %.lr.ph16.i50.preheader.new

.lr.ph16.i50.preheader.new:                       ; preds = %.lr.ph16.i50.preheader
  %unroll_iter290 = and i64 %i.ca, -2
  br label %.lr.ph16.i50

.lr.ph16.i50:                                     ; preds = %.lr.ph16.i50, %.lr.ph16.i50.preheader.new
  %.sroa.06.014.i51 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %i.cg, %.lr.ph16.i50 ] ; 5 uses
  %niter291 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %niter291.next.1, %.lr.ph16.i50 ]
  %i.cd = xor i64 %.sroa.06.014.i51, -1
  %i.ce = getelementptr [272 x i8], ptr %i.bi, i64 %i.cd
  %i.cf = getelementptr [272 x i8], ptr %i.cb, i64 %.sroa.06.014.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.cf, ptr noundef nonnull align 8 dereferenceable(272) %i.ce, i64 272, i1 false), !alias.scope !3720
  %i.cg = add nuw i64 %.sroa.06.014.i51, 2        ; 2 uses
  %i.ch = xor i64 %.sroa.06.014.i51, -2
  %i.ci = getelementptr [272 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = getelementptr [272 x i8], ptr %i.cb, i64 %.sroa.06.014.i51
  %i.ck = getelementptr i8, ptr %i.cj, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.ck, ptr noundef nonnull align 8 dereferenceable(272) %i.ci, i64 272, i1 false), !alias.scope !3720
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit.unr-lcssa, label %.lr.ph16.i50

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit.unr-lcssa: ; preds = %.lr.ph16.i50
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit, label %.lr.ph16.i50.epil.preheader

.lr.ph16.i50.epil.preheader:                      ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit.unr-lcssa, %.lr.ph16.i50.preheader
  %.sroa.06.014.i51.epil.init = phi i64 [ 0, %.lr.ph16.i50.preheader ], [ %i.cg, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod289 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod289)
  %i.cl = xor i64 %.sroa.06.014.i51.epil.init, -1
  %i.cm = getelementptr [272 x i8], ptr %i.bi, i64 %i.cl
  %i.cn = getelementptr [272 x i8], ptr %i.cb, i64 %.sroa.06.014.i51.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.cn, ptr noundef nonnull align 8 dereferenceable(272) %i.cm, i64 272, i1 false), !alias.scope !3720
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit: ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit.unr-lcssa, %.lr.ph16.i50.epil.preheader
  %i.co = icmp ugt i64 %.sroa.11.1.lcssa.i47, %.sroa.16.089217
  br i1 %i.co, label %bb.u, label %.outer, !prof !50

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit
  %i.cp = getelementptr inbounds nuw [272 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = icmp ult i64 %i.ca, 33
  br i1 %i.cq, label %.outer._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvB2_9quicksortB1d_NCINvMNtCs6Po7BT7Nknu_5alloc5sliceSB1d_7sort_byNCNCNvNtNtB1l_10operations8optimize21build_compaction_plan0s0_0E0E0EB1l_.exit
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i47, i64 noundef %.sroa.16.089217, i64 noundef %.sroa.16.089217, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #39
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias noundef nonnull %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph120 = phi ptr [ %i.eo, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph119 = phi i64 [ %i.dz, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph118 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph117 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph120 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph117, null
  %i.d = icmp eq i32 %.sroa.025.0.ph118, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph266

bb.b:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph266

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.ea, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph120, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.eo, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.dz, %.outer ]
  call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias noundef nonnull %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0113.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ]
  call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5drift4sortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph120, i64 noundef %.sroa.16.0113.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull %6)
  br label %bb.d

.lr.ph266:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0112265 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph118, %.lr.ph ]
  %.sroa.16.0113264 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph119, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0112265, -1           ; 4 uses
  %i.g = lshr i64 %.sroa.16.0113264, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0113264, 64
  br i1 %i.j, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3xNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph266
  %i.k = call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph120, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias noundef nonnull %6)
  br label %bb.e

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3xNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.lr.ph266
  %.val6.i = load i64, ptr %.sroa.0.0.ph120, align 8, !alias.scope !3775, !noalias !3776, !noundef !23 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !3777, !noalias !3778, !noundef !23 ; 2 uses
  %i.l = icmp slt i64 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !alias.scope !3777, !noalias !3778, !noundef !23 ; 2 uses
  %i.m = icmp slt i64 %.val6.i, %.val5.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp slt i64 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph120, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3xNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot7median3xNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.k, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.r, 3           ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0113264
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.r
  %i.u = load i64, ptr %i.t, align 8              ; 7 uses
  store i64 %i.u, ptr %i.a, align 8
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph117, align 8, !alias.scope !3779, !noalias !3780, !noundef !23
  %i.v = icmp slt i64 %.sroa.028.0.val, %i.u
  br i1 %i.v, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !3781)
  call void @llvm.experimental.noalias.scope.decl(metadata !3782)
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0113264
  br i1 %.not80, label %bb.i, label %bb.h, !prof !95

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0113264 ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.w, %bb.h ], [ %i.bj, %bb.k ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.k ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph120, %bb.h ], [ %i.bm, %bb.k ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0113264, %bb.k ] ; 3 uses
  %i.x = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %i.x ; 2 uses
  %i.z = icmp ult ptr %.sroa.9.0.i, %i.y
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.j ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.aw, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.j ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.j ] ; 4 uses
  %.val22.i = load i64, ptr %.sroa.9.131.i, align 8, !alias.scope !3783, !noalias !3784, !noundef !23 ; 2 uses
  %i.aa = icmp slt i64 %.val22.i, %i.u            ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.aa, ptr %2, ptr %i.ab
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core:bb.a
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.ax, %.lr.ph.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i37 ; 2 uses
  %i.ba = icmp ult ptr %.sroa.9.1.lcssa.i, %i.az
  br i1 %i.ba, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.bd, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bg, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.bh, %.lr.ph38.i ] ; 2 uses
  %i.bb = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0113264
  br i1 %i.bb, label %bb.l, label %bb.k

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.bh, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.bg, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bd, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !alias.scope !3783, !noalias !3784, !noundef !23 ; 2 uses
  %i.bc = icmp slt i64 %.val.i, %i.u              ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i27.i = select i1 %i.bc, ptr %2, ptr %i.bd
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i, i64 %.sroa.27.235.i
  store i64 %.val.i, ptr %i.be, align 8, !alias.scope !3782, !noalias !3789
  %i.bf = zext i1 %i.bc to i64
  %i.bg = add i64 %.sroa.27.235.i, %i.bf          ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.bi = icmp ult ptr %i.bh, %i.az
  br i1 %i.bi, label %.lr.ph38.i, label %._crit_edge39.i

bb.k:                                             ; preds = %._crit_edge39.i
  %i.bj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.27.2.lcssa.i
  %i.bl = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !3781, !noalias !3790
  store i64 %i.bl, ptr %i.bk, align 8, !alias.scope !3782, !noalias !3791
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.j

bb.l:                                             ; preds = %._crit_edge39.i
  %i.bn = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.bn, i1 false), !alias.scope !3792
  %i.bo = sub i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.l
  %i.bp = getelementptr [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check273 = icmp ult i64 %i.bo, 4
  br i1 %min.iters.check273, label %scalar.ph272.preheader, label %vector.ph274

vector.ph274:                                     ; preds = %.lr.ph45.i
  %n.vec275 = and i64 %i.bo, -4                   ; 3 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next282, %vector.body276 ] ; 3 uses
  %i.bq = xor i64 %index277, -1
  %i.br = getelementptr [8 x i8], ptr %i.w, i64 %i.bq ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.bp, i64 %index277 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.br, i64 -8
  %i.bu = getelementptr i8, ptr %i.br, i64 -24
  %wide.load278 = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !3782, !noalias !3781
  %wide.load279 = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !3782, !noalias !3781
  %reverse280 = shufflevector <2 x i64> %wide.load278, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse281 = shufflevector <2 x i64> %wide.load279, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = getelementptr i8, ptr %i.bs, i64 16
  store <2 x i64> %reverse280, ptr %i.bs, align 8, !alias.scope !3781, !noalias !3782
  store <2 x i64> %reverse281, ptr %i.bv, align 8, !alias.scope !3781, !noalias !3782
  %index.next282 = add nuw i64 %index277, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next282, %n.vec275
  br i1 %i.bw, label %middle.block283, label %vector.body276, !llvm.loop !3750

middle.block283:                                  ; preds = %vector.body276
  %cmp.n284 = icmp eq i64 %i.bo, %n.vec275
  br i1 %cmp.n284, label %.loopexit, label %scalar.ph272.preheader

scalar.ph272.preheader:                           ; preds = %.lr.ph45.i, %middle.block283
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec275, %middle.block283 ]
  br label %scalar.ph272

scalar.ph272:                                     ; preds = %scalar.ph272.preheader, %scalar.ph272
  %.sroa.07.043.i = phi i64 [ %i.bx, %scalar.ph272 ], [ %.sroa.07.043.i.ph, %scalar.ph272.preheader ] ; 3 uses
  %i.bx = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.by = xor i64 %.sroa.07.043.i, -1
  %i.bz = getelementptr [8 x i8], ptr %i.w, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %i.bp, i64 %.sroa.07.043.i
  %i.cb = load i64, ptr %i.bz, align 8, !alias.scope !3782, !noalias !3781
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !3781, !noalias !3782
  %exitcond.not.i = icmp eq i64 %i.bx, %i.bo
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph272, !llvm.loop !3751

.loopexit:                                        ; preds = %scalar.ph272, %middle.block283, %bb.l
  %i.cc = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.cc, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0113264
  br i1 %.not.i38, label %bb.n, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit, !prof !50

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #39, !noalias !3793
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core5sliceSx12split_at_mutCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph120) ]
  call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull %6) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ce, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph120, i64 %i.r ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3794)
  call void @llvm.experimental.noalias.scope.decl(metadata !3795)
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0113264
  br i1 %.not81, label %bb.p, label %bb.o, !prof !95

bb.o:                                             ; preds = %.thread
  %i.cg = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0113264 ; 3 uses
  br label %bb.q

bb.p:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.q:                                             ; preds = %bb.s, %bb.o
  %.sroa.43.0.i41 = phi ptr [ %i.cg, %bb.o ], [ %i.dt, %bb.s ] ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.o ], [ %i.dw, %bb.s ] ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph120, %bb.o ], [ %i.dx, %bb.s ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.o ], [ %.sroa.16.0113264, %bb.s ] ; 3 uses
  %i.ch = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %i.ch ; 2 uses
  %i.cj = icmp ult ptr %.sroa.9.0.i43, %i.ci
  br i1 %i.cj, label %.lr.ph.i64, label %._crit_edge.i45

.lr.ph.i64:                                       ; preds = %bb.q
  %.val23.i65 = load i64, ptr %i.cf, align 8, !alias.scope !3796, !noalias !3797, !noundef !23 ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.dh, %bb.r ] ; 5 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.dg, %bb.r ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.dd, %bb.r ] ; 4 uses
  %.val22.i69 = load i64, ptr %.sroa.9.131.i66, align 8, !alias.scope !3798, !noalias !3799, !noundef !23 ; 2 uses
  %i.ck = icmp sge i64 %.val23.i65, %.val22.i69   ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -8
  %.sroa.01.0.i.i70 = select i1 %i.ck, ptr %2, ptr %i.cl
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67
  store i64 %.val22.i69, ptr %i.cm, align 8, !alias.scope !3795, !noalias !3800
  %i.cn = zext i1 %i.ck to i64
  %i.co = add i64 %.sroa.27.130.i67, %i.cn        ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 8
  %.val20.i71 = load i64, ptr %i.cp, align 8, !alias.scope !3798, !noalias !3799, !noundef !23 ; 2 uses
  %i.cq = icmp sge i64 %.val23.i65, %.val20.i71   ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -16
  %.sroa.01.0.i24.i72 = select i1 %i.cq, ptr %2, ptr %i.cr
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i72, i64 %i.co
  store i64 %.val20.i71, ptr %i.cs, align 8, !alias.scope !3795, !noalias !3801
  %i.ct = zext i1 %i.cq to i64
  %i.cu = add i64 %i.co, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 16
  %.val18.i73 = load i64, ptr %i.cv, align 8, !alias.scope !3798, !noalias !3799, !noundef !23 ; 2 uses
  %i.cw = icmp sge i64 %.val23.i65, %.val18.i73   ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -24
  %.sroa.01.0.i25.i74 = select i1 %i.cw, ptr %2, ptr %i.cx
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i74, i64 %i.cu
  store i64 %.val18.i73, ptr %i.cy, align 8, !alias.scope !3795, !noalias !3802
  %i.cz = zext i1 %i.cw to i64
  %i.da = add i64 %i.cu, %i.cz                    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 24
  %.val16.i75 = load i64, ptr %i.db, align 8, !alias.scope !3798, !noalias !3799, !noundef !23 ; 2 uses
  %i.dc = icmp sge i64 %.val23.i65, %.val16.i75   ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -32 ; 3 uses
  %.sroa.01.0.i26.i76 = select i1 %i.dc, ptr %2, ptr %i.dd
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i76, i64 %i.da
  store i64 %.val16.i75, ptr %i.de, align 8, !alias.scope !3795, !noalias !3803
  %i.df = zext i1 %i.dc to i64
  %i.dg = add i64 %i.da, %i.df                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 32 ; 3 uses
  %i.di = icmp ult ptr %i.dh, %i.ci
  br i1 %i.di, label %bb.r, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %bb.r, %bb.q
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.q ], [ %i.dd, %bb.r ] ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.q ], [ %i.dg, %bb.r ] ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.q ], [ %i.dh, %bb.r ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.0.0.i44 ; 2 uses
  %i.dk = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.dj
  br i1 %i.dk, label %.lr.ph38.i57.preheader, label %._crit_edge39.i49

.lr.ph38.i57.preheader:                           ; preds = %._crit_edge.i45
  %.val15.i62 = load i64, ptr %i.cf, align 8, !alias.scope !3796, !noalias !3797, !noundef !23
  br label %.lr.ph38.i57

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.dn, %.lr.ph38.i57 ]
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.dq, %.lr.ph38.i57 ] ; 9 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.dr, %.lr.ph38.i57 ] ; 2 uses
  %i.dl = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0113264
  br i1 %i.dl, label %bb.t, label %bb.s

.lr.ph38.i57:                                     ; preds = %.lr.ph38.i57.preheader, %.lr.ph38.i57
  %.sroa.9.236.i58 = phi ptr [ %i.dr, %.lr.ph38.i57 ], [ %.sroa.9.1.lcssa.i48, %.lr.ph38.i57.preheader ] ; 2 uses
  %.sroa.27.235.i59 = phi i64 [ %i.dq, %.lr.ph38.i57 ], [ %.sroa.27.1.lcssa.i47, %.lr.ph38.i57.preheader ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %i.dn, %.lr.ph38.i57 ], [ %.sroa.43.1.lcssa.i46, %.lr.ph38.i57.preheader ]
  %.val.i61 = load i64, ptr %.sroa.9.236.i58, align 8, !alias.scope !3798, !noalias !3799, !noundef !23 ; 2 uses
  %i.dm = icmp sge i64 %.val15.i62, %.val.i61     ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -8 ; 3 uses
  %.sroa.01.0.i27.i63 = select i1 %i.dm, ptr %2, ptr %i.dn
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i63, i64 %.sroa.27.235.i59
  store i64 %.val.i61, ptr %i.do, align 8, !alias.scope !3795, !noalias !3804
  %i.dp = zext i1 %i.dm to i64
  %i.dq = add i64 %.sroa.27.235.i59, %i.dp        ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 8 ; 3 uses
  %i.ds = icmp ult ptr %i.dr, %i.dj
  br i1 %i.ds, label %.lr.ph38.i57, label %._crit_edge39.i49

bb.s:                                             ; preds = %._crit_edge39.i49
  %i.dt = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51
  %i.dv = load i64, ptr %.sroa.9.2.lcssa.i52, align 8, !alias.scope !3794, !noalias !3805
  store i64 %i.dv, ptr %i.du, align 8, !alias.scope !3795, !noalias !3806
  %i.dw = add i64 %.sroa.27.2.lcssa.i51, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 8
  br label %bb.q

bb.t:                                             ; preds = %._crit_edge39.i49
  %i.dy = shl i64 %.sroa.27.2.lcssa.i51, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph120, ptr nonnull align 8 %2, i64 %i.dy, i1 false), !alias.scope !3807
  %i.dz = sub i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i51 ; 7 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0113264, %.sroa.27.2.lcssa.i51
  %i.ea = getelementptr [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i51 ; 3 uses
  br i1 %.not47.i53, label %.outer.thread, label %.lr.ph45.i54

.lr.ph45.i54:                                     ; preds = %bb.t
  %min.iters.check = icmp ult i64 %i.dz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i54
  %n.vec = and i64 %i.dz, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eb = xor i64 %index, -1
  %i.ec = getelementptr [8 x i8], ptr %i.cg, i64 %i.eb ; 2 uses
  %i.ed = getelementptr [8 x i8], ptr %i.ea, i64 %index ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ec, i64 -8
  %i.ef = getelementptr i8, ptr %i.ec, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ee, align 8, !alias.scope !3795, !noalias !3794
  %wide.load270 = load <2 x i64>, ptr %i.ef, align 8, !alias.scope !3795, !noalias !3794
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse271 = shufflevector <2 x i64> %wide.load270, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.eg = getelementptr i8, ptr %i.ed, i64 16
  store <2 x i64> %reverse, ptr %i.ed, align 8, !alias.scope !3794, !noalias !3795
  store <2 x i64> %reverse271, ptr %i.eg, align 8, !alias.scope !3794, !noalias !3795
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !3773

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECs14kWLkQVSKO_14deltalake_core.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i54, %middle.block
  %.sroa.07.043.i55.ph = phi i64 [ 0, %.lr.ph45.i54 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i55 = phi i64 [ %i.ei, %scalar.ph ], [ %.sroa.07.043.i55.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ei = add nuw i64 %.sroa.07.043.i55, 1        ; 2 uses
  %i.ej = xor i64 %.sroa.07.043.i55, -1
  %i.ek = getelementptr [8 x i8], ptr %i.cg, i64 %i.ej
  %i.el = getelementptr [8 x i8], ptr %i.ea, i64 %.sroa.07.043.i55
  %i.em = load i64, ptr %i.ek, align 8, !alias.scope !3795, !noalias !3794
  store i64 %i.em, ptr %i.el, align 8, !alias.scope !3794, !noalias !3795
  %exitcond.not.i56 = icmp eq i64 %i.ei, %i.dz
  br i1 %exitcond.not.i56, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECs14kWLkQVSKO_14deltalake_core.exit, label %scalar.ph, !llvm.loop !3774

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %scalar.ph, %middle.block
  %i.en = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0113264
  br i1 %i.en, label %bb.u, label %.outer, !prof !50

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECs14kWLkQVSKO_14deltalake_core.exit
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph120, i64 %.sroa.27.2.lcssa.i51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ep = icmp ult i64 %i.dz, 33
  br i1 %i.ep, label %.outer._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable9quicksort16stable_partitionxNCINvB2_9quicksortxNvYxNtNtBa_3cmp10PartialOrd2ltE0ECs14kWLkQVSKO_14deltalake_core.exit
  call void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i51, i64 noundef %.sroa.16.0113264, i64 noundef %.sroa.16.0113264, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i8 @_RINvXNtNtCs33QkLPyrmWQ_4rand13distributions12distributionRNtNtB5_5other12AlphanumericINtB3_12DistributionhE6sampleQNtNtNtB7_4rngs6thread9ThreadRngECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !23, !noundef !23
  %i.a = load ptr, ptr %.val, align 8, !alias.scope !3819, !noalias !3820, !nonnull !23, !noundef !23 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 344 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %.pre.i = load i64, ptr %i.c, align 16, !alias.scope !3821, !noalias !3822
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs0_NtCsau89Cp69Una_9rand_core5blockINtB5_8BlockRngINtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs14kWLkQVSKO_14deltalake_core.exit.i, %bb.a
  %i.g = phi i64 [ %i.s, %_RNvXs0_NtCsau89Cp69Una_9rand_core5blockINtB5_8BlockRngINtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.pre.i, %bb.a ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3821)
  %i.h = icmp ugt i64 %i.g, 63
  br i1 %i.h, label %bb.c, label %_RNvXs0_NtCsau89Cp69Una_9rand_core5blockINtB5_8BlockRngINtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3823), !noalias !3822
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3824), !noalias !3822
  %i.i = tail call noundef i64 @_RNvNtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding4fork16get_fork_counter(), !noalias !3825 ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !3826, !noalias !3827, !noundef !23 ; 2 uses
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.f, align 16, !alias.scope !3826, !noalias !3827, !noundef !23
  %i.m = sub i64 %i.l, %i.i
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %i.j, -256
  store i64 %i.o, ptr %i.e, align 8, !alias.scope !3826, !noalias !3827
  tail call void @_RNvNtCs37WNb9qflfz_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.d, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(352) %i.b), !noalias !3822
  br label %_RNvXs0_NtCsau89Cp69Una_9rand_core5blockINtB5_8BlockRngINtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs14kWLkQVSKO_14deltalake_core.exit.i

bb.f:                                             ; preds = %bb.d, %bb.c
  tail call void @_RNvMs3_NtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseedingINtB5_13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtCsau89Cp69Una_9rand_core2os5OsRngE19reseed_and_generateBb_(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.d, ptr noalias noundef nonnull align 16 dereferenceable(352) %i.b, i64 noundef %i.i) #45, !noalias !3822
  br label %_RNvXs0_NtCsau89Cp69Una_9rand_core5blockINtB5_8BlockRngINtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs14kWLkQVSKO_14deltalake_core.exit.i

_RNvXs0_NtCsau89Cp69Una_9rand_core5blockINtB5_8BlockRngINtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.f, %bb.e, %bb.b
  %i.p = phi i64 [ %i.g, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !3821, !noalias !3822, !noundef !23 ; 2 uses
  %i.s = add nuw nsw i64 %i.p, 1                  ; 2 uses
  store i64 %i.s, ptr %i.c, align 16, !alias.scope !3821, !noalias !3822
  %i.t = icmp ult i32 %i.r, -134217728
  br i1 %i.t, label %_RINvXs0_NtNtCs33QkLPyrmWQ_4rand13distributions5otherNtB6_12AlphanumericINtNtB8_12distribution12DistributionhE6sampleQNtNtNtBa_4rngs6thread9ThreadRngECs14kWLkQVSKO_14deltalake_core.exit, label %bb.b

_RINvXs0_NtNtCs33QkLPyrmWQ_4rand13distributions5otherNtB6_12AlphanumericINtNtB8_12distribution12DistributionhE6sampleQNtNtNtBa_4rngs6thread9ThreadRngECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs0_NtCsau89Cp69Una_9rand_core5blockINtB5_8BlockRngINtNtNtNtCs33QkLPyrmWQ_4rand4rngs7adapter9reseeding13ReseedingCoreNtNtCs37WNb9qflfz_11rand_chacha6chacha12ChaCha12CoreNtNtB7_2os5OsRngEENtB7_7RngCore8next_u32Cs14kWLkQVSKO_14deltalake_core.exit.i
  %i.u = lshr i32 %i.r, 26
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @191, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noundef !23
  ret i8 %i.x
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 88686269585142076) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
  %i.d = load i64, ptr %i.a, align 8, !range !25, !noundef !23
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !28, !noundef !23 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #47
  unreachable

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.k = icmp samesign ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %2
  %i.o = icmp eq i64 %i.g, 0
  br i1 %i.o, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.012.023 = phi ptr [ %1, %.lr.ph ], [ %i.t, %bb.e ] ; 9 uses
  %.sroa.7.022 = phi i64 [ 0, %.lr.ph ], [ %i.s, %bb.e ] ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvXs12_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB7_8DropViewNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !17286
  %i.ab = zext nneg i8 %i.b to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i128 [ %i.ab, %bb.c ], [ %i.j, %bb.b ]
  %storemerge.i.i = phi i8 [ 8, %bb.c ], [ %i.k, %bb.b ]
  store i128 %.sink, ptr %1, align 16, !alias.scope !17286
  store i8 %storemerge.i.i, ptr %i.c, align 16, !alias.scope !17286
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !23, !noundef !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs16_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB7_7ExecuteNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !23, !noundef !23 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !23 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17309)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !17310, !noalias !17311, !noundef !23 ; 2 uses
  %i.g = tail call noundef i64 @llvm.fshr.i64(i64 %i.f, i64 %i.f, i64 %i.d) ; 6 uses
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !17310, !noalias !17311
  %i.h = icmp samesign ult i64 %i.d, 17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 16, !alias.scope !17310, !noalias !17311, !nonnull !23, !align !24, !noundef !23 ; 4 uses
  br i1 %i.h, label %bb.c, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.d, i64 noundef %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j) #45, !noalias !17310
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17313)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !17313, !noalias !17314, !noundef !23 ; 4 uses
  %i.n = icmp samesign ugt i64 %i.d, 7
  br i1 %i.n, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ugt i64 %i.d, 3
  br i1 %i.o, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.e

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i.i = load i64, ptr %i.b, align 1, !alias.scope !17315, !noalias !17316
  %i.p = xor i64 %.sroa.014.0.copyload.i.i.i, %i.g
  %i.q = getelementptr i8, ptr %i.b, i64 %i.d
  %i.r = getelementptr i8, ptr %i.q, i64 -8
  %.sroa.016.0.copyload.i.i.i = load i64, ptr %i.r, align 1, !alias.scope !17315, !noalias !17316
  %i.s = xor i64 %.sroa.016.0.copyload.i.i.i, %i.m
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, label %bb.f

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.b, i64 %i.d
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %.sroa.019.0.copyload.i.i.i = load i32, ptr %i.u, align 1, !alias.scope !17315, !noalias !17316
  %.sroa.018.0.copyload.i.i.i = load i32, ptr %i.b, align 1, !alias.scope !17315, !noalias !17316
  %i.v = zext i32 %.sroa.018.0.copyload.i.i.i to i64
  %i.w = xor i64 %i.g, %i.v
  %i.x = zext i32 %.sroa.019.0.copyload.i.i.i to i64
  %i.y = xor i64 %i.m, %i.x
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.b, align 1, !alias.scope !17315, !noalias !17316, !noundef !23
  %i.aa = lshr i64 %i.d, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !17315, !noalias !17316, !noundef !23
  %i.ad = getelementptr i8, ptr %i.b, i64 %i.d
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !17315, !noalias !17316, !noundef !23
  %i.ag = zext i8 %i.z to i64
  %i.ah = xor i64 %i.g, %i.ag
  %i.ai = zext i8 %i.af to i64
  %i.aj = shl nuw nsw i64 %i.ai, 8
  %i.ak = zext i8 %i.ac to i64
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = xor i64 %i.al, %i.m
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i: ; preds = %bb.f, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.e, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.s, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.y, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.am, %bb.f ], [ %i.m, %bb.e ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.p, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.w, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.ah, %bb.f ], [ %i.g, %bb.e ]
  %i.an = zext i64 %.sroa.0.0.i.i.i to i128
  %i.ao = zext i64 %.sroa.04.0.i.i.i to i128
  %i.ap = mul nuw i128 %i.an, %i.ao               ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = xor i128 %i.aq, %i.ap
  %i.as = trunc i128 %i.ar to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i, %bb.b
  %i.at = phi i64 [ %i.k, %bb.b ], [ %i.as, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i ] ; 3 uses
  store i64 %i.at, ptr %i.e, align 8, !alias.scope !17310, !noalias !17311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17318)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.av = load i8, ptr %i.au, align 16, !alias.scope !17319, !noalias !17307, !noundef !23 ; 4 uses
  %i.aw = icmp ugt i8 %i.av, 120
  br i1 %i.aw, label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.ax = load i128, ptr %1, align 16, !alias.scope !17319, !noalias !17307, !noundef !23 ; 2 uses
  %i.ay = trunc i128 %i.ax to i64
  %i.az = lshr i128 %i.ax, 64
  %i.ba = xor i64 %i.at, %i.ay
  %i.bb = load i64, ptr %i.j, align 8, !noalias !17319, !noundef !23
  %i.bc = zext i64 %i.ba to i128
  %i.bd = zext i64 %i.bb to i128
  %i.be = xor i128 %i.az, %i.bd
  %i.bf = mul nuw i128 %i.be, %i.bc               ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = xor i128 %i.bg, %i.bf
  %i.bi = trunc i128 %i.bh to i64
  store i64 %i.bi, ptr %i.e, align 8, !alias.scope !17319, !noalias !17307
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !23, !noundef !23
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !23
  br label %bb.g

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i
  %i.bn = zext nneg i8 %i.av to i128
  %i.bo = shl nuw i128 255, %i.bn
  %i.bp = load i128, ptr %1, align 16, !alias.scope !17319, !noalias !17307, !noundef !23
  %i.bq = or i128 %i.bp, %i.bo                    ; 3 uses
  %i.br = add nuw i8 %i.av, 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !23, !noundef !23 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !23 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17322)
  %i.bw = icmp samesign ugt i8 %i.av, 56
  br i1 %i.bw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit
  %i.bx = phi i64 [ %i.bm, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bv, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %i.by = phi ptr [ %i.bk, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bt, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit ]
  %storemerge.i.i.i6 = phi i8 [ 8, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.br, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit ] ; 2 uses
  %.sink.i5 = phi i128 [ 255, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.bq, %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit ]
  %i.bz = zext i64 %i.bx to i128
  %i.ca = zext nneg i8 %storemerge.i.i.i6 to i128
  %i.cb = shl nuw i128 %i.bz, %i.ca
  %i.cc = or i128 %i.cb, %.sink.i5
  %i.cd = add nuw i8 %storemerge.i.i.i6, 64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit
  %i.ce = trunc i128 %i.bq to i64
  %i.cf = lshr i128 %i.bq, 64
  %i.cg = xor i64 %i.at, %i.ce
  %i.ch = load i64, ptr %i.j, align 8, !noalias !17323, !noundef !23
  %i.ci = zext i64 %i.cg to i128
  %i.cj = zext i64 %i.ch to i128
  %i.ck = xor i128 %i.cf, %i.cj
  %i.cl = mul nuw i128 %i.ck, %i.ci               ; 2 uses
  %i.cm = lshr i128 %i.cl, 64
  %i.cn = xor i128 %i.cm, %i.cl
  %i.co = trunc i128 %i.cn to i64
  store i64 %i.co, ptr %i.e, align 8, !alias.scope !17323
  %i.cp = zext i64 %i.bv to i128
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g, %bb.h
  %i.cq = phi i64 [ %i.bv, %bb.h ], [ %i.bx, %bb.g ]
  %i.cr = phi ptr [ %i.bt, %bb.h ], [ %i.by, %bb.g ]
  %.sink.i1 = phi i128 [ %i.cp, %bb.h ], [ %i.cc, %bb.g ]
  %storemerge.i.i.i2 = phi i8 [ 64, %bb.h ], [ %i.cd, %bb.g ]
  store i128 %.sink.i1, ptr %1, align 16, !alias.scope !17323
  store i8 %storemerge.i.i.i2, ptr %i.au, align 16, !alias.scope !17323
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsbvkFyIu7lgC_4core4hash4Hash10hash_sliceNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.cr, i64 noundef %i.cq, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs18_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB7_17DropCatalogSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull align 16 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17379)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !17378, !noalias !17379, !noundef !23 ; 2 uses
  %i.b = icmp ne ptr %i.a, null                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17381)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.d = load i8, ptr %i.c, align 16, !alias.scope !17382, !noalias !17378, !noundef !23 ; 3 uses
  %i.e = icmp ugt i8 %i.d, 64
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %i.b to i128
  %i.g = zext nneg i8 %i.d to i128
  %i.h = shl nuw nsw i128 %i.f, %i.g
  %i.i = load i128, ptr %1, align 16, !alias.scope !17382, !noalias !17378, !noundef !23
  %i.j = or i128 %i.i, %i.h
  %i.k = add nuw i8 %i.d, 64
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

bb.c:                                             ; preds = %bb.a
  %i.l = load i128, ptr %1, align 16, !alias.scope !17382, !noalias !17378, !noundef !23 ; 2 uses
  %i.m = trunc i128 %i.l to i64
  %i.n = lshr i128 %i.l, 64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !17382, !noalias !17378, !noundef !23
  %i.q = xor i64 %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !alias.scope !17382, !noalias !17378, !nonnull !23, !align !24, !noundef !23
  %i.t = load i64, ptr %i.s, align 8, !noalias !17383, !noundef !23
  %i.u = zext i64 %i.q to i128
  %i.v = zext i64 %i.t to i128
  %i.w = xor i128 %i.n, %i.v
  %i.x = mul nuw i128 %i.w, %i.u                  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = xor i128 %i.y, %i.x
  %i.aa = trunc i128 %i.z to i64
  store i64 %i.aa, ptr %i.o, align 8, !alias.scope !17382, !noalias !17378
  %i.ab = zext i1 %i.b to i128
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i: ; preds = %bb.c, %bb.b
  %i.ac = phi i128 [ %i.ab, %bb.c ], [ %i.j, %bb.b ] ; 7 uses
  %storemerge.i.i.i = phi i8 [ 64, %bb.c ], [ %i.k, %bb.b ] ; 6 uses
  store i128 %i.ac, ptr %1, align 16, !alias.scope !17382, !noalias !17378
  store i8 %storemerge.i.i.i, ptr %i.c, align 16, !alias.scope !17382, !noalias !17378
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.r

bb.d:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !17378, !noalias !17379, !noundef !23 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17387)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !17388, !noalias !17389, !noundef !23 ; 2 uses
  %i.ai = tail call noundef i64 @llvm.fshr.i64(i64 %i.ah, i64 %i.ah, i64 %i.ae) ; 6 uses
  store i64 %i.ai, ptr %i.ag, align 8, !alias.scope !17388, !noalias !17389
  %i.aj = icmp samesign ult i64 %i.ae, 17
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 16, !alias.scope !17388, !noalias !17389, !nonnull !23, !align !24, !noundef !23 ; 8 uses
  br i1 %i.aj, label %bb.f, label %bb.e, !prof !51

bb.e:                                             ; preds = %bb.d
  %i.am = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.ae, i64 noundef %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al) #45, !noalias !17390
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17392)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !17392, !noalias !17393, !noundef !23 ; 4 uses
  %i.ap = icmp samesign ugt i64 %i.ae, 7
  br i1 %i.ap, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp samesign ugt i64 %i.ae, 3
  br i1 %i.aq, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, label %bb.h

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.f
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %i.af, align 1, !alias.scope !17394, !noalias !17395
  %i.ar = xor i64 %.sroa.014.0.copyload.i.i.i.i, %i.ai
  %i.as = getelementptr i8, ptr %i.af, i64 %i.ae
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.at, align 1, !alias.scope !17394, !noalias !17395
  %i.au = xor i64 %.sroa.016.0.copyload.i.i.i.i, %i.ao
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, label %bb.i

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.g
  %i.av = getelementptr i8, ptr %i.af, i64 %i.ae
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  %.sroa.019.0.copyload.i.i.i.i = load i32, ptr %i.aw, align 1, !alias.scope !17394, !noalias !17395
  %.sroa.018.0.copyload.i.i.i.i = load i32, ptr %i.af, align 1, !alias.scope !17394, !noalias !17395
  %i.ax = zext i32 %.sroa.018.0.copyload.i.i.i.i to i64
  %i.ay = xor i64 %i.ai, %i.ax
  %i.az = zext i32 %.sroa.019.0.copyload.i.i.i.i to i64
  %i.ba = xor i64 %i.ao, %i.az
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.af, align 1, !alias.scope !17394, !noalias !17395, !noundef !23
  %i.bc = lshr i64 %i.ae, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !17394, !noalias !17395, !noundef !23
  %i.bf = getelementptr i8, ptr %i.af, i64 %i.ae
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !alias.scope !17394, !noalias !17395, !noundef !23
  %i.bi = zext i8 %i.bb to i64
  %i.bj = xor i64 %i.ai, %i.bi
  %i.bk = zext i8 %i.bh to i64
  %i.bl = shl nuw nsw i64 %i.bk, 8
  %i.bm = zext i8 %i.be to i64
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = xor i64 %i.bn, %i.ao
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i: ; preds = %bb.i, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %bb.h, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.au, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ba, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bo, %bb.i ], [ %i.ao, %bb.h ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ar, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.ay, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bj, %bb.i ], [ %i.ai, %bb.h ]
  %i.bp = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.bq = zext i64 %.sroa.04.0.i.i.i.i to i128
  %i.br = mul nuw i128 %i.bp, %i.bq               ; 2 uses
  %i.bs = lshr i128 %i.br, 64
  %i.bt = xor i128 %i.bs, %i.br
  %i.bu = trunc i128 %i.bt to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i, %bb.e
  %storemerge.i.i1.i = phi i64 [ %i.am, %bb.e ], [ %i.bu, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17397)
  %i.bv = icmp ugt i8 %storemerge.i.i.i, 120
  br i1 %i.bv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i
  %i.bw = zext nneg i8 %storemerge.i.i.i to i128
  %i.bx = shl nuw i128 255, %i.bw
  %i.by = or i128 %i.bx, %i.ac
  %i.bz = add nuw i8 %storemerge.i.i.i, 8
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i.i
  %i.ca = trunc i128 %i.ac to i64
  %i.cb = lshr i128 %i.ac, 64
  %i.cc = xor i64 %storemerge.i.i1.i, %i.ca
  %i.cd = load i64, ptr %i.al, align 8, !noalias !17398, !noundef !23
  %i.ce = zext i64 %i.cc to i128
  %i.cf = zext i64 %i.cd to i128
  %i.cg = xor i128 %i.cb, %i.cf
  %i.ch = mul nuw i128 %i.cg, %i.ce               ; 2 uses
  %i.ci = lshr i128 %i.ch, 64
  %i.cj = xor i128 %i.ci, %i.ch
  %i.ck = trunc i128 %i.cj to i64
  br label %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.k, %bb.j
  %i.cl = phi i64 [ %i.ck, %bb.k ], [ %storemerge.i.i1.i, %bb.j ] ; 2 uses
  %.sink.i.i = phi i128 [ 255, %bb.k ], [ %i.by, %bb.j ] ; 4 uses
  %storemerge.i.i.i.i = phi i8 [ 8, %bb.k ], [ %i.bz, %bb.j ] ; 3 uses
  store i128 %.sink.i.i, ptr %1, align 16, !alias.scope !17399, !noalias !17400
  store i8 %storemerge.i.i.i.i, ptr %i.c, align 16, !alias.scope !17399, !noalias !17400
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !17378, !noalias !17379, !nonnull !23, !noundef !23
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !17378, !noalias !17379, !noundef !23 ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17404)
  %i.cr = tail call noundef i64 @llvm.fshr.i64(i64 %i.cl, i64 %i.cl, i64 %i.cp) ; 6 uses
  store i64 %i.cr, ptr %i.ag, align 8, !alias.scope !17405, !noalias !17406
  %i.cs = icmp samesign ult i64 %i.cp, 17
  br i1 %i.cs, label %bb.m, label %bb.l, !prof !51

bb.l:                                             ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.ct = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef range(i64 0, -9223372036854775808) %i.cp, i64 noundef %i.cr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.al) #45, !noalias !17407
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i

bb.m:                                             ; preds = %_RNvYNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_strCs14kWLkQVSKO_14deltalake_core.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17409)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !17409, !noalias !17410, !noundef !23 ; 4 uses
  %i.cw = icmp samesign ugt i64 %i.cp, 7
  br i1 %i.cw, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = icmp samesign ugt i64 %i.cp, 3
  br i1 %i.cx, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i, label %bb.o

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i: ; preds = %bb.m
  %.sroa.014.0.copyload.i.i.i14.i = load i64, ptr %i.cq, align 1, !alias.scope !17411, !noalias !17412
  %i.cy = xor i64 %.sroa.014.0.copyload.i.i.i14.i, %i.cr
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cp
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %.sroa.016.0.copyload.i.i.i15.i = load i64, ptr %i.da, align 1, !alias.scope !17411, !noalias !17412
  %i.db = xor i64 %.sroa.016.0.copyload.i.i.i15.i, %i.cv
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i

bb.o:                                             ; preds = %bb.n
end_hunk_2
begin_hunk_3_@_RINvXs18_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB7_17DropCatalogSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.ds = shl nuw nsw i64 %i.dr, 8
  %i.dt = zext i8 %i.dl to i64
  %i.du = or disjoint i64 %i.ds, %i.dt
  %i.dv = xor i64 %i.du, %i.cv
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i: ; preds = %bb.p, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i, %bb.o, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i
  %.sroa.04.0.i.i.i8.i = phi i64 [ %i.db, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i ], [ %i.dh, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i ], [ %i.dv, %bb.p ], [ %i.cv, %bb.o ]
  %.sroa.0.0.i.i.i9.i = phi i64 [ %i.cy, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i13.i ], [ %i.df, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i10.i ], [ %i.dq, %bb.p ], [ %i.cr, %bb.o ]
  %i.dw = zext i64 %.sroa.0.0.i.i.i9.i to i128
  %i.dx = zext i64 %.sroa.04.0.i.i.i8.i to i128
  %i.dy = mul nuw i128 %i.dw, %i.dx               ; 2 uses
  %i.dz = lshr i128 %i.dy, 64
  %i.ea = xor i128 %i.dz, %i.dy
  %i.eb = trunc i128 %i.ea to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i, %bb.l
  %storemerge.i.i3.i = phi i64 [ %i.ct, %bb.l ], [ %i.eb, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i7.i ] ; 3 uses
  store i64 %storemerge.i.i3.i, ptr %i.ag, align 8, !alias.scope !17405, !noalias !17406
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17414)
  %i.ec = icmp ugt i8 %storemerge.i.i.i.i, 120
  br i1 %i.ec, label %bb.q, label %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.q:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i
  %i.ed = trunc i128 %.sink.i.i to i64
  %i.ee = lshr i128 %.sink.i.i, 64
  %i.ef = xor i64 %storemerge.i.i3.i, %i.ed
  %i.eg = load i64, ptr %i.al, align 8, !noalias !17415, !noundef !23
  %i.eh = zext i64 %i.ef to i128
  %i.ei = zext i64 %i.eg to i128
  %i.ej = xor i128 %i.ee, %i.ei
  %i.ek = mul nuw i128 %i.ej, %i.eh               ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = xor i128 %i.el, %i.ek
  %i.en = trunc i128 %i.em to i64                 ; 2 uses
  store i64 %i.en, ptr %i.ag, align 8, !alias.scope !17416, !noalias !17417
  br label %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isize.exit.i
  %i.eo = load ptr, ptr %i.ad, align 8, !alias.scope !17378, !noalias !17379, !nonnull !23, !noundef !23
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !17378, !noalias !17379, !noundef !23 ; 10 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17421)
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !17422, !noalias !17423, !noundef !23 ; 2 uses
  %i.eu = tail call noundef i64 @llvm.fshr.i64(i64 %i.et, i64 %i.et, i64 %i.eq) ; 6 uses
  store i64 %i.eu, ptr %i.es, align 8, !alias.scope !17422, !noalias !17423
  %i.ev = icmp samesign ult i64 %i.eq, 17
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ex = load ptr, ptr %i.ew, align 16, !alias.scope !17422, !noalias !17423, !nonnull !23, !align !24, !noundef !23 ; 5 uses
  br i1 %i.ev, label %bb.t, label %bb.s, !prof !51

bb.s:                                             ; preds = %bb.r
  %i.ey = tail call noundef i64 @_RNvCsjTPIcpFZL1T_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef range(i64 0, -9223372036854775808) %i.eq, i64 noundef %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ex) #45, !noalias !17424
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17426)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !17426, !noalias !17427, !noundef !23 ; 4 uses
  %i.fb = icmp samesign ugt i64 %i.eq, 7
  br i1 %i.fb, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fc = icmp samesign ugt i64 %i.eq, 3
  br i1 %i.fc, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i25.i, label %bb.v

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i: ; preds = %bb.t
  %.sroa.014.0.copyload.i.i.i29.i = load i64, ptr %i.er, align 1, !alias.scope !17428, !noalias !17429
  %i.fd = xor i64 %.sroa.014.0.copyload.i.i.i29.i, %i.eu
  %i.fe = getelementptr i8, ptr %i.er, i64 %i.eq
  %i.ff = getelementptr i8, ptr %i.fe, i64 -8
  %.sroa.016.0.copyload.i.i.i30.i = load i64, ptr %i.ff, align 1, !alias.scope !17428, !noalias !17429
  %i.fg = xor i64 %.sroa.016.0.copyload.i.i.i30.i, %i.fa
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i22.i

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i21.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i.i21.i, label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i22.i, label %bb.w

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i25.i: ; preds = %bb.u
  %i.fh = getelementptr i8, ptr %i.er, i64 %i.eq
  %i.fi = getelementptr i8, ptr %i.fh, i64 -4
  %.sroa.019.0.copyload.i.i.i26.i = load i32, ptr %i.fi, align 1, !alias.scope !17428, !noalias !17429
  %.sroa.018.0.copyload.i.i.i27.i = load i32, ptr %i.er, align 1, !alias.scope !17428, !noalias !17429
  %i.fj = zext i32 %.sroa.018.0.copyload.i.i.i27.i to i64
  %i.fk = xor i64 %i.eu, %i.fj
  %i.fl = zext i32 %.sroa.019.0.copyload.i.i.i26.i to i64
  %i.fm = xor i64 %i.fa, %i.fl
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i22.i

bb.w:                                             ; preds = %bb.v
  %i.fn = load i8, ptr %i.er, align 1, !alias.scope !17428, !noalias !17429, !noundef !23
  %i.fo = lshr i64 %i.eq, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !17428, !noalias !17429, !noundef !23
  %i.fr = getelementptr i8, ptr %i.er, i64 %i.eq
  %i.fs = getelementptr i8, ptr %i.fr, i64 -1
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !17428, !noalias !17429, !noundef !23
  %i.fu = zext i8 %i.fn to i64
  %i.fv = xor i64 %i.eu, %i.fu
  %i.fw = zext i8 %i.ft to i64
  %i.fx = shl nuw nsw i64 %i.fw, 8
  %i.fy = zext i8 %i.fq to i64
  %i.fz = or disjoint i64 %i.fx, %i.fy
  %i.ga = xor i64 %i.fz, %i.fa
  br label %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i22.i

_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i22.i: ; preds = %bb.w, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i25.i, %bb.v, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i
  %.sroa.04.0.i.i.i23.i = phi i64 [ %i.fg, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i ], [ %i.fm, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i25.i ], [ %i.ga, %bb.w ], [ %i.fa, %bb.v ]
  %.sroa.0.0.i.i.i24.i = phi i64 [ %i.fd, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i28.i ], [ %i.fk, %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs14kWLkQVSKO_14deltalake_core.exit.i.i25.i ], [ %i.fv, %bb.w ], [ %i.eu, %bb.v ]
  %i.gb = zext i64 %.sroa.0.0.i.i.i24.i to i128
  %i.gc = zext i64 %.sroa.04.0.i.i.i23.i to i128
  %i.gd = mul nuw i128 %i.gb, %i.gc               ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = xor i128 %i.ge, %i.gd
  %i.gg = trunc i128 %i.gf to i64
  br label %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i

_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i: ; preds = %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i22.i, %bb.s
  %storemerge.i.i18.i = phi i64 [ %i.ey, %bb.s ], [ %i.gg, %_RNvCsjTPIcpFZL1T_8foldhash16hash_bytes_short.exit.i.i22.i ] ; 3 uses
  store i64 %storemerge.i.i18.i, ptr %i.es, align 8, !alias.scope !17422, !noalias !17423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17431)
  %i.gh = icmp ugt i8 %storemerge.i.i.i, 120
  br i1 %i.gh, label %bb.x, label %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit

bb.x:                                             ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i
  %i.gi = trunc i128 %i.ac to i64
  %i.gj = lshr i128 %i.ac, 64
  %i.gk = xor i64 %storemerge.i.i18.i, %i.gi
  %i.gl = load i64, ptr %i.ex, align 8, !noalias !17432, !noundef !23
  %i.gm = zext i64 %i.gk to i128
  %i.gn = zext i64 %i.gl to i128
  %i.go = xor i128 %i.gj, %i.gn
  %i.gp = mul nuw i128 %i.go, %i.gm               ; 2 uses
  %i.gq = lshr i128 %i.gp, 64
  %i.gr = xor i128 %i.gq, %i.gp
  %i.gs = trunc i128 %i.gr to i64                 ; 2 uses
  store i64 %i.gs, ptr %i.es, align 8, !alias.scope !17433, !noalias !17434
  br label %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.q, %bb.x
  %i.gt = phi ptr [ %i.al, %bb.q ], [ %i.ex, %bb.x ]
  %i.gu = phi i64 [ %i.en, %bb.q ], [ %i.gs, %bb.x ]
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gw = load i8, ptr %i.gv, align 8, !range !22, !noundef !23
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2

_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i
  %storemerge.i.i.i.i.sink = phi i8 [ %storemerge.i.i.i.i, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i ], [ %storemerge.i.i.i, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i ] ; 3 uses
  %.sink.i.i.sink = phi i128 [ %.sink.i.i, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i ], [ %i.ac, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i ]
  %i.gx = phi ptr [ %i.al, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i ], [ %i.ex, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i ] ; 2 uses
  %i.gy = phi i64 [ %storemerge.i.i3.i, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i2.i ], [ %storemerge.i.i18.i, %_RNvXs_NtCsjTPIcpFZL1T_8foldhash4fastNtB4_10FoldHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher5write.exit.i17.i ] ; 2 uses
  %i.gz = zext nneg i8 %storemerge.i.i.i.i.sink to i128
  %i.ha = shl nuw i128 255, %i.gz
  %i.hb = or i128 %i.ha, %.sink.i.i.sink          ; 3 uses
  %storemerge.i = add nuw i8 %storemerge.i.i.i.i.sink, 8
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hd = load i8, ptr %i.hc, align 8, !range !22, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17436)
  %i.he = icmp samesign ugt i8 %storemerge.i.i.i.i.sink, 112
  br i1 %i.he, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.thread, label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.thread: ; preds = %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit
  %i.hf = trunc i128 %i.hb to i64
  %i.hg = lshr i128 %i.hb, 64
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hi = xor i64 %i.gy, %i.hf
  %i.hj = load i64, ptr %i.gx, align 8, !noalias !17437, !noundef !23
  %i.hk = zext i64 %i.hi to i128
  %i.hl = zext i64 %i.hj to i128
  %i.hm = xor i128 %i.hg, %i.hl
  %i.hn = mul nuw i128 %i.hm, %i.hk               ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = xor i128 %i.ho, %i.hn
  %i.hq = trunc i128 %i.hp to i64
  store i64 %i.hq, ptr %i.hh, align 8, !alias.scope !17437
  %i.hr = zext nneg i8 %i.hd to i128
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.ht = load i8, ptr %i.hs, align 1, !range !22, !noundef !23
  br label %bb.y

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2: ; preds = %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.hu = phi ptr [ %i.gt, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.gx, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.hv = phi i64 [ %i.gu, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.gy, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.hw = phi i8 [ %i.gw, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.hd, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %storemerge.i6 = phi i8 [ 8, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %storemerge.i, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ] ; 3 uses
  %storemerge32.i5 = phi i128 [ 255, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit.thread ], [ %i.hb, %_RINvXs5_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB6_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core.exit ]
  %i.hx = zext nneg i8 %i.hw to i128
  %i.hy = zext nneg i8 %storemerge.i6 to i128
  %i.hz = shl nuw nsw i128 %i.hx, %i.hy
  %i.ia = or i128 %i.hz, %storemerge32.i5         ; 4 uses
  store i128 %i.ia, ptr %1, align 16, !alias.scope !17437
  %i.ib = add nuw i8 %storemerge.i6, 8            ; 2 uses
  store i8 %i.ib, ptr %i.c, align 16, !alias.scope !17437
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.id = load i8, ptr %i.ic, align 1, !range !22, !noundef !23 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17439)
  %i.ie = icmp samesign ugt i8 %storemerge.i6, 112
  br i1 %i.ie, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.thread, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2
  %i.if = phi i128 [ %i.hr, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.thread ], [ %i.ia, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2 ]
  %i.ig = phi i8 [ %i.ht, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.thread ], [ %i.id, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2 ]
  %storemerge.i.i18 = phi i8 [ 8, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2.thread ], [ %i.ib, %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2 ] ; 2 uses
  %i.ih = zext nneg i8 %i.ig to i128
  %i.ii = zext nneg i8 %storemerge.i.i18 to i128
  %i.ij = shl nuw nsw i128 %i.ih, %i.ii
  %i.ik = or i128 %i.ij, %i.if
  store i128 %i.ik, ptr %1, align 16, !alias.scope !17440
  %i.il = add nuw i8 %storemerge.i.i18, 8
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

bb.z:                                             ; preds = %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit2
  %i.im = trunc i128 %i.ia to i64
  %i.in = lshr i128 %i.ia, 64
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ip = xor i64 %i.hv, %i.im
  %i.iq = load i64, ptr %i.hu, align 8, !noalias !17440, !noundef !23
  %i.ir = zext i64 %i.ip to i128
  %i.is = zext i64 %i.iq to i128
  %i.it = xor i128 %i.in, %i.is
  %i.iu = mul nuw i128 %i.it, %i.ir               ; 2 uses
  %i.iv = lshr i128 %i.iu, 64
  %i.iw = xor i128 %i.iv, %i.iu
  %i.ix = trunc i128 %i.iw to i64
  store i64 %i.ix, ptr %i.io, align 8, !alias.scope !17440
  %i.iy = zext nneg i8 %i.id to i128
  store i128 %i.iy, ptr %1, align 16, !alias.scope !17440
  br label %_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit

_RNvXs_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB4_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher8write_u8.exit: ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi i8 [ %i.il, %bb.y ], [ 8, %bb.z ]
  store i8 %storemerge.i.i, ptr %i.c, align 16, !alias.scope !17440
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !23, !noundef !23
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB6_8DFSchemaNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtCs2HSpDNxY7OE_9hashbrown6hasher13DefaultHasherECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.jb, ptr noalias noundef nonnull align 16 dereferenceable(48) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1A_NtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6thriftNtNtNtBd_10geospatial12bounding_box11BoundingBoxNtNtBd_14parquet_thrift16WriteThriftField18write_thrift_fieldQQINtNtBb_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 10)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias noundef align 8 dereferenceable(8) %2, i16 noundef %3, i16 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 30 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE17write_field_beginCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 12, i16 noundef %3, i16 noundef %4)
  %i.s = load i64, ptr %i.r, align 8, !range !117, !noundef !23
  %.not = icmp eq i64 %i.s, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !17445)
  call void @llvm.experimental.noalias.scope.decl(metadata !17446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17447
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load double, ptr %i.t, align 8, !alias.scope !17446, !noalias !17448, !noundef !23
  store double %i.u, ptr %i.o, align 8, !noalias !17447
  call void @_RINvXs17_NtCs4tdlwR1I4n2_7parquet14parquet_thriftdNtB7_16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 1, i16 noundef 0), !noalias !17449
  %i.v = load i64, ptr %i.p, align 8, !range !117, !noalias !17447, !noundef !23 ; 2 uses
  %.not.i = icmp eq i64 %i.v, 8
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.590.0.copyload.i = load i16, ptr %.sroa.590.0..sroa_idx.i, align 8, !noalias !17447
  %.sroa.691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %.sroa.394.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.394.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.691.0..sroa_idx.i, i64 22, i1 false), !noalias !17450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17447
  store i64 %i.v, ptr %i.q, align 8, !alias.scope !17445, !noalias !17450
  %.sroa.293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %.sroa.590.0.copyload.i, ptr %.sroa.293.0..sroa_idx.i, align 8, !alias.scope !17445, !noalias !17450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17447
  br label %_RINvXs6_NtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6thriftNtNtNtBc_10geospatial12bounding_box11BoundingBoxNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17447
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load double, ptr %i.w, align 8, !alias.scope !17446, !noalias !17448, !noundef !23
  store double %i.x, ptr %i.m, align 8, !noalias !17447
  call void @_RINvXs17_NtCs4tdlwR1I4n2_7parquet14parquet_thriftdNtB7_16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 2, i16 noundef 1), !noalias !17449
  %i.y = load i64, ptr %i.n, align 8, !range !117, !noalias !17447, !noundef !23 ; 2 uses
  %.not164.i = icmp eq i64 %i.y, 8
  br i1 %.not164.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.599.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.599.0.copyload.i = load i16, ptr %.sroa.599.0..sroa_idx.i, align 8, !noalias !17447
  %.sroa.6100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %.sroa.3103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3103.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6100.0..sroa_idx.i, i64 22, i1 false), !noalias !17450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17447
  store i64 %i.y, ptr %i.q, align 8, !alias.scope !17445, !noalias !17450
  %.sroa.2102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %.sroa.599.0.copyload.i, ptr %.sroa.2102.0..sroa_idx.i, align 8, !alias.scope !17445, !noalias !17450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17447
  br label %_RINvXs6_NtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6thriftNtNtNtBc_10geospatial12bounding_box11BoundingBoxNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17447
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load double, ptr %i.z, align 8, !alias.scope !17446, !noalias !17448, !noundef !23
  store double %i.aa, ptr %i.k, align 8, !noalias !17447
  call void @_RINvXs17_NtCs4tdlwR1I4n2_7parquet14parquet_thriftdNtB7_16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 3, i16 noundef 2), !noalias !17449
  %i.ab = load i64, ptr %i.l, align 8, !range !117, !noalias !17447, !noundef !23 ; 2 uses
  %.not165.i = icmp eq i64 %i.ab, 8
  br i1 %.not165.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.5108.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5108.0.copyload.i = load i16, ptr %.sroa.5108.0..sroa_idx.i, align 8, !noalias !17447
  %.sroa.6109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %.sroa.3112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3112.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6109.0..sroa_idx.i, i64 22, i1 false), !noalias !17450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17447
  store i64 %i.ab, ptr %i.q, align 8, !alias.scope !17445, !noalias !17450
  %.sroa.2111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %.sroa.5108.0.copyload.i, ptr %.sroa.2111.0..sroa_idx.i, align 8, !alias.scope !17445, !noalias !17450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17447
  br label %_RINvXs6_NtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6thriftNtNtNtBc_10geospatial12bounding_box11BoundingBoxNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17447
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load double, ptr %i.ac, align 8, !alias.scope !17446, !noalias !17448, !noundef !23
  store double %i.ad, ptr %i.i, align 8, !noalias !17447
  call void @_RINvXs17_NtCs4tdlwR1I4n2_7parquet14parquet_thriftdNtB7_16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 4, i16 noundef 3), !noalias !17449
  %i.ae = load i64, ptr %i.j, align 8, !range !117, !noalias !17447, !noundef !23 ; 2 uses
  %.not166.i = icmp eq i64 %i.ae, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !noalias !17447 ; 3 uses
  br i1 %.not166.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.6118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 10
  %.sroa.3124.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.3124.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6118.0..sroa_idx.i, i64 22, i1 false), !noalias !17450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17447
  store i64 %i.ae, ptr %i.q, align 8, !alias.scope !17445, !noalias !17450
  %.sroa.2123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.ag, ptr %.sroa.2123.0..sroa_idx.i, align 8, !alias.scope !17445, !noalias !17450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17447
  br label %_RINvXs6_NtNtNtCs4tdlwR1I4n2_7parquet4file8metadata6thriftNtNtNtBc_10geospatial12bounding_box11BoundingBoxNtNtBc_14parquet_thrift11WriteThrift12write_thriftQQINtNtBa_6writer12TrackedWriteINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17447
  %.sroa.0119.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !17446, !noalias !17448
  %.sroa.3121.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3121.0.copyload.i = load double, ptr %.sroa.3121.0..sroa_idx.i, align 8, !alias.scope !17446, !noalias !17448
  %i.ah = trunc nuw i64 %.sroa.0119.0.copyload.i to i1
  br i1 %i.ah, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.sroa.2120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2120.0.copyload.i = load double, ptr %.sroa.2120.0..sroa_idx.i, align 8, !alias.scope !17446, !noalias !17448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17447
  store double %.sroa.2120.0.copyload.i, ptr %i.h, align 8, !noalias !17447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17447
end_hunk_3
