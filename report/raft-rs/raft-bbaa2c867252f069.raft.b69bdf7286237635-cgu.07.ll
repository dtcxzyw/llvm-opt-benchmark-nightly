Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.07?download=true
inline.NumInlined: 130
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMs_NtBY_8majorityNtB2o_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB10_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB10_:bb.a

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvMs_NtBZ_8majorityNtB2p_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB11_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 576460752303423488) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ch = shl nuw nsw i64 %i.bn, 1
  %i.ci = or disjoint i64 %i.ch, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvMs_NtB18_8majorityNtB2z_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1a_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ci, %bb.x ], [ %i.bv, %bb.t ] ; 2 uses
  %i.cj = icmp ugt i64 %i.be, 1
  br i1 %i.cj, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add nuw nsw i64 %.sroa.02.1.lcssa, 1
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
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #15, !inline_history !23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph119 = phi ptr [ %i.em, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph118 = phi i64 [ %i.dx, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph117 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph116 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph119 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph116, null
  %i.d = icmp eq i32 %.sroa.025.0.ph117, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph264

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph264

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa110 = phi ptr [ %i.dy, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph119, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit ], [ %i.em, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit ], [ %i.dx, %.outer ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCINvMs_NtB1u_8majorityNtB2V_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1w_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB1w_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa110, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0112.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvMs_NtBY_8majorityNtB2o_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB10_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph119, i64 noundef %.sroa.16.0112.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph264:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0111263 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph117, %.lr.ph ]
  %.sroa.16.0112262 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph118, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.0111263, -1           ; 4 uses
  %i.g = lshr i64 %.sroa.16.0112262, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 6
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 112
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0112262, 64
  br i1 %i.j, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_7sort_byNCINvMs_NtB11_8majorityNtB2r_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB13_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB13_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph264
  %i.k = call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCINvMs_NtB16_8majorityNtB2x_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB18_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph119, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.e

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_7sort_byNCINvMs_NtB11_8majorityNtB2r_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB13_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB13_.exit.i: ; preds = %.lr.ph264
  %.val6.i = load i64, ptr %.sroa.0.0.ph119, align 8, !alias.scope !66, !noundef !5 ; 2 uses
  %.val7.i = load i64, ptr %i.h, align 8, !alias.scope !66, !noundef !5 ; 2 uses
  %i.l = icmp ult i64 %.val7.i, %.val6.i          ; 2 uses
  %.val5.i = load i64, ptr %i.i, align 8, !alias.scope !66, !noundef !5 ; 2 uses
  %i.m = icmp ult i64 %.val5.i, %.val6.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i64 %.val5.i, %.val7.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph119, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_7sort_byNCINvMs_NtB11_8majorityNtB2r_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB13_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB13_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_7sort_byNCINvMs_NtB11_8majorityNtB2r_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB13_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB13_.exit.i ], [ %i.k, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.r, 4           ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0112262
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph119, i64 %i.r ; 6 uses
  %i.u = load <2 x i64>, ptr %i.t, align 8
  %i.v = load i64, ptr %i.t, align 8
  store <2 x i64> %i.u, ptr %i.a, align 16
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %.sroa.028.0.ph116, align 8, !noundef !5
  %i.w = icmp ult i64 %i.v, %.sroa.028.0.val
  br i1 %i.w, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %.not80 = icmp samesign ult i64 %3, %.sroa.16.0112262
  br i1 %.not80, label %bb.i, label %bb.h, !prof !68

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0112262 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.43.0.i = phi ptr [ %i.x, %bb.h ], [ %i.bk, %bb.l ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.27.2.lcssa.i, %bb.l ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph119, %bb.h ], [ %i.bm, %bb.l ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.0112262, %bb.l ] ; 3 uses
  %i.y = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %i.y ; 2 uses
  %i.aa = icmp ult ptr %.sroa.9.0.i, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %.val22.i = load i64, ptr %i.t, align 8, !alias.scope !69, !noundef !5 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.ay, %bb.k ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.ax, %bb.k ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.au, %bb.k ] ; 4 uses
  %.val21.i = load i64, ptr %.sroa.9.131.i, align 8, !alias.scope !69, !noundef !5
  %i.ab = icmp ult i64 %.val22.i, %.val21.i       ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.ab, ptr %2, ptr %i.ac
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !70, !noalias !71
  %i.ae = zext i1 %i.ab to i64
  %i.af = add i64 %.sroa.27.130.i, %i.ae          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val19.i = load i64, ptr %i.ag, align 8, !alias.scope !69, !noundef !5
  %i.ah = icmp ult i64 %.val22.i, %.val19.i       ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.ah, ptr %2, ptr %i.ai
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !alias.scope !70, !noalias !72
  %i.ak = zext i1 %i.ah to i64
  %i.al = add i64 %i.af, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 2 uses
  %.val17.i = load i64, ptr %i.am, align 8, !alias.scope !69, !noundef !5
  %i.an = icmp ult i64 %.val22.i, %.val17.i       ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.an, ptr %2, ptr %i.ao
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !alias.scope !70, !noalias !73
  %i.aq = zext i1 %i.an to i64
  %i.ar = add i64 %i.al, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48 ; 2 uses
  %.val15.i = load i64, ptr %i.as, align 8, !alias.scope !69, !noundef !5
  %i.at = icmp ult i64 %.val22.i, %.val15.i       ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.at, ptr %2, ptr %i.au
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !70, !noalias !74
  %i.aw = zext i1 %i.at to i64
  %i.ax = add i64 %i.ar, %i.aw                    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.az = icmp ult ptr %i.ay, %i.z
  br i1 %i.az, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.j ], [ %i.au, %bb.k ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.j ], [ %i.ax, %bb.k ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.j ], [ %i.ay, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i37 ; 2 uses
  %i.bb = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ba
  br i1 %i.bb, label %.lr.ph38.i.a, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i.a, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.be, %.lr.ph38.i.a ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bh, %.lr.ph38.i.a ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.bi, %.lr.ph38.i.a ] ; 2 uses
  %i.bc = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0112262
  br i1 %i.bc, label %bb.m, label %bb.l

.lr.ph38.i.a:                                     ; preds = %._crit_edge.i, %.lr.ph38.i.a
  %.sroa.9.236.i = phi ptr [ %i.bi, %.lr.ph38.i.a ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.bh, %.lr.ph38.i.a ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.be, %.lr.ph38.i.a ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i64, ptr %.sroa.9.236.i, align 8, !alias.scope !69, !noundef !5
  %.val14.i.a = load i64, ptr %i.t, align 8, !alias.scope !69, !noundef !5
  %i.bd = icmp ult i64 %.val14.i.a, %.val.i       ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.bd, ptr %2, ptr %i.be
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !70, !noalias !75
  %i.bg = zext i1 %i.bd to i64
  %i.bh = add i64 %.sroa.27.235.i, %i.bg          ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.bj = icmp ult ptr %i.bi, %i.ba
  br i1 %i.bj, label %.lr.ph38.i.a, label %._crit_edge39.i

bb.l:                                             ; preds = %._crit_edge39.i
  %i.bk = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !70, !noalias !76
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.j

bb.m:                                             ; preds = %._crit_edge39.i
  %i.bn = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.bn, i1 false), !alias.scope !70
  %i.bo = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.m
  %i.bp = getelementptr [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %.sroa.16.0112262, %.neg
  br i1 %i.bq, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.bo, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.bu, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.n ]
  %i.br = xor i64 %.sroa.07.043.i, -1
  %i.bs = getelementptr [16 x i8], ptr %i.x, i64 %i.br
  %i.bt = getelementptr [16 x i8], ptr %i.bp, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !alias.scope !70
  %i.bu = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.bv = xor i64 %.sroa.07.043.i, -2
  %i.bw = getelementptr [16 x i8], ptr %i.x, i64 %i.bv
  %i.bx = getelementptr [16 x i8], ptr %i.bp, i64 %.sroa.07.043.i
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false), !alias.scope !70
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.bu, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod331 = trunc i64 %i.bo to i1
  call void @llvm.assume(i1 %lcmp.mod331)
  %i.bz = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.ca = getelementptr [16 x i8], ptr %i.x, i64 %i.bz
  %i.cb = getelementptr [16 x i8], ptr %i.bp, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !alias.scope !70
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m
  %i.cc = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.cc, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0112262
  br i1 %.not.i38, label %bb.p, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit, !prof !4

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #14, !noalias !77
  unreachable

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCsfG1pxJcRFT5_4raft6quorum5Index12split_at_mutBy_.exit: ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph119) ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvMs_NtB17_8majorityNtB2y_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB19_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ce, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.not81 = icmp samesign ult i64 %3, %.sroa.16.0112262
  br i1 %.not81, label %bb.r, label %bb.q, !prof !68

bb.q:                                             ; preds = %.thread
  %i.cf = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0112262 ; 4 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i41 = phi ptr [ %i.cf, %bb.q ], [ %i.ds, %bb.u ] ; 2 uses
  %.sroa.27.0.i42 = phi i64 [ 0, %bb.q ], [ %i.du, %bb.u ] ; 2 uses
  %.sroa.9.0.i43 = phi ptr [ %.sroa.0.0.ph119, %bb.q ], [ %i.dv, %bb.u ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0112262, %bb.u ] ; 3 uses
  %i.cg = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i44, i64 3)
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %.sroa.9.0.i43, %i.ch
  br i1 %i.ci, label %.lr.ph.i64, label %._crit_edge.i45

.lr.ph.i64:                                       ; preds = %bb.s
  %.val22.i65 = load i64, ptr %i.t, align 8, !alias.scope !79, !noundef !5 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i64
  %.sroa.9.131.i66 = phi ptr [ %.sroa.9.0.i43, %.lr.ph.i64 ], [ %i.dg, %bb.t ] ; 6 uses
  %.sroa.27.130.i67 = phi i64 [ %.sroa.27.0.i42, %.lr.ph.i64 ], [ %i.df, %bb.t ] ; 2 uses
  %.sroa.43.129.i68 = phi ptr [ %.sroa.43.0.i41, %.lr.ph.i64 ], [ %i.dc, %bb.t ] ; 4 uses
  %.val21.i69 = load i64, ptr %.sroa.9.131.i66, align 8, !alias.scope !79, !noundef !5
  %i.cj = icmp uge i64 %.val21.i69, %.val22.i65   ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -16
  %.sroa.01.0.i.i70 = select i1 %i.cj, ptr %2, ptr %i.ck
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i70, i64 %.sroa.27.130.i67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i66, i64 16, i1 false), !alias.scope !80, !noalias !81
  %i.cm = zext i1 %i.cj to i64
  %i.cn = add i64 %.sroa.27.130.i67, %i.cm        ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 16 ; 2 uses
  %.val19.i71 = load i64, ptr %i.co, align 8, !alias.scope !79, !noundef !5
  %i.cp = icmp uge i64 %.val19.i71, %.val22.i65   ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -32
  %.sroa.01.0.i23.i72 = select i1 %i.cp, ptr %2, ptr %i.cq
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i72, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !80, !noalias !82
  %i.cs = zext i1 %i.cp to i64
  %i.ct = add i64 %i.cn, %i.cs                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 32 ; 2 uses
  %.val17.i73 = load i64, ptr %i.cu, align 8, !alias.scope !79, !noundef !5
  %i.cv = icmp uge i64 %.val17.i73, %.val22.i65   ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -48
  %.sroa.01.0.i24.i74 = select i1 %i.cv, ptr %2, ptr %i.cw
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i74, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cu, i64 16, i1 false), !alias.scope !80, !noalias !83
  %i.cy = zext i1 %i.cv to i64
  %i.cz = add i64 %i.ct, %i.cy                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 48 ; 2 uses
  %.val15.i75 = load i64, ptr %i.da, align 8, !alias.scope !79, !noundef !5
  %i.db = icmp uge i64 %.val15.i75, %.val22.i65   ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.43.129.i68, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i76 = select i1 %i.db, ptr %2, ptr %i.dc
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i76, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !80, !noalias !84
  %i.de = zext i1 %i.db to i64
  %i.df = add i64 %i.cz, %i.de                    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i66, i64 64 ; 3 uses
  %i.dh = icmp ult ptr %i.dg, %i.ch
  br i1 %i.dh, label %bb.t, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i46 = phi ptr [ %.sroa.43.0.i41, %bb.s ], [ %i.dc, %bb.t ] ; 2 uses
  %.sroa.27.1.lcssa.i47 = phi i64 [ %.sroa.27.0.i42, %bb.s ], [ %i.df, %bb.t ] ; 2 uses
  %.sroa.9.1.lcssa.i48 = phi ptr [ %.sroa.9.0.i43, %bb.s ], [ %i.dg, %bb.t ] ; 3 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.0.0.i44 ; 2 uses
  %i.dj = icmp ult ptr %.sroa.9.1.lcssa.i48, %i.di
  br i1 %i.dj, label %.lr.ph38.i57.a, label %._crit_edge39.i49

._crit_edge39.i49:                                ; preds = %.lr.ph38.i57.a, %._crit_edge.i45
  %.sroa.43.2.lcssa.i50 = phi ptr [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ], [ %i.dm, %.lr.ph38.i57.a ]
  %.sroa.27.2.lcssa.i51 = phi i64 [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ], [ %i.dp, %.lr.ph38.i57.a ] ; 10 uses
  %.sroa.9.2.lcssa.i52 = phi ptr [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ], [ %i.dq, %.lr.ph38.i57.a ] ; 2 uses
  %i.dk = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.0112262
  br i1 %i.dk, label %bb.v, label %bb.u

.lr.ph38.i57.a:                                   ; preds = %._crit_edge.i45, %.lr.ph38.i57.a
  %.sroa.9.236.i58 = phi ptr [ %i.dq, %.lr.ph38.i57.a ], [ %.sroa.9.1.lcssa.i48, %._crit_edge.i45 ] ; 3 uses
  %.sroa.27.235.i59 = phi i64 [ %i.dp, %.lr.ph38.i57.a ], [ %.sroa.27.1.lcssa.i47, %._crit_edge.i45 ] ; 2 uses
  %.sroa.43.234.i60 = phi ptr [ %i.dm, %.lr.ph38.i57.a ], [ %.sroa.43.1.lcssa.i46, %._crit_edge.i45 ]
  %.val.i61 = load i64, ptr %.sroa.9.236.i58, align 8, !alias.scope !79, !noundef !5
  %.val14.i62 = load i64, ptr %i.t, align 8, !alias.scope !79, !noundef !5
  %i.dl = icmp uge i64 %.val.i61, %.val14.i62     ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.43.234.i60, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i63 = select i1 %i.dl, ptr %2, ptr %i.dm
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i63, i64 %.sroa.27.235.i59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i58, i64 16, i1 false), !alias.scope !80, !noalias !85
  %i.do = zext i1 %i.dl to i64
  %i.dp = add i64 %.sroa.27.235.i59, %i.do        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i58, i64 16 ; 3 uses
  %i.dr = icmp ult ptr %i.dq, %i.di
  br i1 %i.dr, label %.lr.ph38.i57.a, label %._crit_edge39.i49

bb.u:                                             ; preds = %._crit_edge39.i49
  %i.ds = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i50, i64 -16
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i52, i64 16, i1 false), !alias.scope !80, !noalias !86
  %i.du = add i64 %.sroa.27.2.lcssa.i51, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i52, i64 16
  br label %bb.s

bb.v:                                             ; preds = %._crit_edge39.i49
  %i.dw = shl nuw nsw i64 %.sroa.27.2.lcssa.i51, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph119, ptr nonnull align 8 %2, i64 %i.dw, i1 false), !alias.scope !80
  %i.dx = sub i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51 ; 6 uses
  %.not47.i53 = icmp eq i64 %.sroa.16.0112262, %.sroa.27.2.lcssa.i51
  %i.dy = getelementptr [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51 ; 4 uses
  br i1 %.not47.i53, label %.outer.thread, label %.lr.ph45.i54.preheader

.lr.ph45.i54.preheader:                           ; preds = %bb.v
  %.neg343 = add i64 %.sroa.27.2.lcssa.i51, 1
  %xtraiter338 = and i64 %i.dx, 1
  %i.dz = icmp eq i64 %.sroa.16.0112262, %.neg343
  br i1 %i.dz, label %.lr.ph45.i54.epil.preheader, label %.lr.ph45.i54.preheader.new

.lr.ph45.i54.preheader.new:                       ; preds = %.lr.ph45.i54.preheader
  %unroll_iter341 = and i64 %i.dx, -2
  br label %.lr.ph45.i54

.lr.ph45.i54:                                     ; preds = %.lr.ph45.i54, %.lr.ph45.i54.preheader.new
  %.sroa.07.043.i55 = phi i64 [ 0, %.lr.ph45.i54.preheader.new ], [ %i.ed, %.lr.ph45.i54 ] ; 5 uses
  %niter342 = phi i64 [ 0, %.lr.ph45.i54.preheader.new ], [ %niter342.next.1, %.lr.ph45.i54 ]
  %i.ea = xor i64 %.sroa.07.043.i55, -1
  %i.eb = getelementptr [16 x i8], ptr %i.cf, i64 %i.ea
  %i.ec = getelementptr [16 x i8], ptr %i.dy, i64 %.sroa.07.043.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !alias.scope !80
  %i.ed = add nuw i64 %.sroa.07.043.i55, 2        ; 2 uses
  %i.ee = xor i64 %.sroa.07.043.i55, -2
  %i.ef = getelementptr [16 x i8], ptr %i.cf, i64 %i.ee
  %i.eg = getelementptr [16 x i8], ptr %i.dy, i64 %.sroa.07.043.i55
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i64 16, i1 false), !alias.scope !80
  %niter342.next.1 = add i64 %niter342, 2         ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit.unr-lcssa, label %.lr.ph45.i54

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit.unr-lcssa: ; preds = %.lr.ph45.i54
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit, label %.lr.ph45.i54.epil.preheader

.lr.ph45.i54.epil.preheader:                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit.unr-lcssa, %.lr.ph45.i54.preheader
  %.sroa.07.043.i55.epil.init = phi i64 [ 0, %.lr.ph45.i54.preheader ], [ %i.ed, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod340 = trunc i64 %i.dx to i1
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.ei = xor i64 %.sroa.07.043.i55.epil.init, -1
  %i.ej = getelementptr [16 x i8], ptr %i.cf, i64 %i.ei
  %i.ek = getelementptr [16 x i8], ptr %i.dy, i64 %.sroa.07.043.i55.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !alias.scope !80
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit.unr-lcssa, %.lr.ph45.i54.epil.preheader
  %i.el = icmp ugt i64 %.sroa.27.2.lcssa.i51, %.sroa.16.0112262
  br i1 %i.el, label %bb.w, label %.outer, !prof !4

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph119, i64 %.sroa.27.2.lcssa.i51 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.en = icmp ult i64 %i.dx, 33
  br i1 %i.en, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsfG1pxJcRFT5_4raft6quorum5IndexNCINvB2_9quicksortB1d_NCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1d_7sort_byNCINvMs_NtB1f_8majorityNtB32_13Configuration15committed_indexINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapyNtNtNtB1h_7tracker8progress8ProgressINtNtBa_4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherEEE0E0E0EB1h_.exit
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i51, i64 noundef %.sroa.16.0112262, i64 noundef %.sroa.16.0112262, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_RINvYINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtCs7k0fNi3XRdX_6fxhash8FxHasherENtB6_11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !noalias !99, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !noalias !99, !noundef !5 ; 6 uses
  %i.c = mul i64 %.val1.i, 5871781006564002453    ; 3 uses
  %i.d = icmp samesign ugt i64 %.val1.i, 7
  br i1 %i.d, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader: ; preds = %bb.a
  %i.e = add i64 %.val1.i, -8                     ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol
  %.sroa.0.036.i.i.i.i.i.prol = phi i64 [ %i.j, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ], [ %i.c, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.035.i.i.i.i.i.prol = phi ptr [ %i.k, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ], [ %.val.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.11.034.i.i.i.i.i.prol = phi i64 [ %i.l, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ], [ %.val1.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ]
  %.sroa.07.0.val.i.i.i.i.i.prol = load i64, ptr %.sroa.07.035.i.i.i.i.i.prol, align 1, !alias.scope !100, !noalias !101
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.036.i.i.i.i.i.prol, i64 %.sroa.0.036.i.i.i.i.i.prol, i64 5)
  %i.i = xor i64 %.sroa.07.0.val.i.i.i.i.i.prol, %i.h
  %i.j = mul i64 %i.i, 5871781006564002453        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.035.i.i.i.i.i.prol, i64 8 ; 3 uses
  %i.l = add nsw i64 %.sroa.11.034.i.i.i.i.i.prol, -8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol, !llvm.loop !97

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader
  %.sroa.0.036.i.i.i.i.i.unr = phi i64 [ %i.c, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ], [ %i.j, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ]
  %.sroa.07.035.i.i.i.i.i.unr = phi ptr [ %.val.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ], [ %i.k, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ]
  %.sroa.11.034.i.i.i.i.i.unr = phi i64 [ %.val1.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ], [ %i.l, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ]
  %.lcssa18.unr = phi i64 [ poison, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ], [ %i.j, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ]
  %.lcssa17.unr = phi ptr [ poison, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ], [ %i.k, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ]
  %.lcssa16.unr = phi i64 [ poison, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.preheader ], [ %i.l, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol ]
  %i.m = icmp ult i64 %i.e, 24
  br i1 %i.m, label %._crit_edge.i.i.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i, %bb.a
  %.sroa.11.0.lcssa.i.i.i.i.i = phi i64 [ %.val1.i, %bb.a ], [ %.lcssa16.unr, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit ], [ %i.ae, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.07.0.lcssa.i.i.i.i.i = phi ptr [ %.val.i, %bb.a ], [ %.lcssa17.unr, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit ], [ %i.ad, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %i.c, %bb.a ], [ %.lcssa18.unr, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit ], [ %i.ac, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i ] ; 3 uses
  %i.n = icmp samesign ugt i64 %.sroa.11.0.lcssa.i.i.i.i.i, 3
  br i1 %i.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i, label %bb.b

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i
  %.sroa.0.036.i.i.i.i.i = phi i64 [ %i.ac, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i ], [ %.sroa.0.036.i.i.i.i.i.unr, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.035.i.i.i.i.i = phi ptr [ %i.ad, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i ], [ %.sroa.07.035.i.i.i.i.i.unr, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.11.034.i.i.i.i.i = phi i64 [ %i.ae, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i ], [ %.sroa.11.034.i.i.i.i.i.unr, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i.prol.loopexit ]
  %.sroa.07.0.val.i.i.i.i.i = load i64, ptr %.sroa.07.035.i.i.i.i.i, align 1, !alias.scope !100, !noalias !101
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.036.i.i.i.i.i, i64 %.sroa.0.036.i.i.i.i.i, i64 5)
  %i.p = xor i64 %.sroa.07.0.val.i.i.i.i.i, %i.o
  %i.q = mul i64 %i.p, 5871781006564002453        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.035.i.i.i.i.i, i64 8
  %.sroa.07.0.val.i.i.i.i.i.1 = load i64, ptr %i.r, align 1, !alias.scope !100, !noalias !101
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 5)
  %i.t = xor i64 %.sroa.07.0.val.i.i.i.i.i.1, %i.s
  %i.u = mul i64 %i.t, 5871781006564002453        ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.07.035.i.i.i.i.i, i64 16
  %.sroa.07.0.val.i.i.i.i.i.2 = load i64, ptr %i.v, align 1, !alias.scope !100, !noalias !101
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 5)
  %i.x = xor i64 %.sroa.07.0.val.i.i.i.i.i.2, %i.w
  %i.y = mul i64 %i.x, 5871781006564002453        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.07.035.i.i.i.i.i, i64 24
  %.sroa.07.0.val.i.i.i.i.i.3 = load i64, ptr %i.z, align 1, !alias.scope !100, !noalias !101
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 5)
  %i.ab = xor i64 %.sroa.07.0.val.i.i.i.i.i.3, %i.aa
  %i.ac = mul i64 %i.ab, 5871781006564002453      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.035.i.i.i.i.i, i64 32 ; 2 uses
  %i.ae = add nsw i64 %.sroa.11.034.i.i.i.i.i, -32 ; 3 uses
  %i.af = icmp ugt i64 %i.ae, 7
  br i1 %i.af, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %.sroa.07.0.val24.i.i.i.i.i = load i32, ptr %.sroa.07.0.lcssa.i.i.i.i.i, align 1, !alias.scope !100, !noalias !101
  %i.ag = zext i32 %.sroa.07.0.val24.i.i.i.i.i to i64
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.0.lcssa.i.i.i.i.i, i64 %.sroa.0.0.lcssa.i.i.i.i.i, i64 5)
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, 5871781006564002453
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i.i.i.i, i64 4
  %i.al = add nsw i64 %.sroa.11.0.lcssa.i.i.i.i.i, -4
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.11.1.i.i.i.i.i = phi i64 [ %i.al, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i ], [ %.sroa.11.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %.sroa.07.1.i.i.i.i.i = phi ptr [ %i.ak, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i ], [ %.sroa.07.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.aj, %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCsfG1pxJcRFT5_4raft.exit29.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i, i64 %.sroa.11.1.i.i.i.i.i
  %i.an = icmp samesign eq i64 %.sroa.11.1.i.i.i.i.i, 0
  br i1 %i.an, label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB8_4Hash4hashNtCs7k0fNi3XRdX_6fxhash8FxHasherECsfG1pxJcRFT5_4raft.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %xtraiter19 = and i64 %.sroa.11.1.i.i.i.i.i, 3  ; 2 uses
  %lcmp.mod20.not = icmp eq i64 %xtraiter19, 0
  br i1 %lcmp.mod20.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.240.i.i.i.i.i.prol = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.022.039.i.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.07.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter21 = phi i64 [ %prol.iter21.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.022.039.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.sroa.022.039.i.i.i.i.i.prol, align 1, !alias.scope !100, !noalias !101, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.0.240.i.i.i.i.i.prol, i64 %.sroa.0.240.i.i.i.i.i.prol, i64 5)
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, 5871781006564002453      ; 3 uses
  %prol.iter21.next = add i64 %prol.iter21, 1     ; 2 uses
  %prol.iter21.cmp.not = icmp eq i64 %prol.iter21.next, %xtraiter19
end_hunk_0
