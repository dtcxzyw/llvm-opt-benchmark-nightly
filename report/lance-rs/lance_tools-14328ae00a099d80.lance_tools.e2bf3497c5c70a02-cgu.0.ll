Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tools-14328ae00a099d80.lance_tools.e2bf3497c5c70a02-cgu.0?download=true
inline.NumInlined: 6279
inline.NumDeleted: 2880
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvMse_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerE3newCsjsY2yM364a4_11lance_tools:bb.a
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEE3newCsjsY2yM364a4_11lance_tools.exit, !prof !36

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #40
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = atomicrmw add ptr %0, i64 -1 release, align 8, !noalias !13511
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCsgczF5crJ4sT_3std4sync6poison5mutex5MutexNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store7IoStatsEE9drop_slowB1B_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsjjbR6Jfsbqw_8lance_io5utils14tracking_store9IOTrackerEE3newCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE4nextCsjsY2yM364a4_11lance_tools(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !24, !noundef !24 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !24 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13527)
  %i.g = load i64, ptr %0, align 8, !range !28, !alias.scope !13527, !noundef !24
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !25, !alias.scope !13528, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !13527 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !13528 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13529)
  %i.n = trunc nuw i8 %.promoted26.i to i1        ; 2 uses
  %i.o = icmp eq i64 %.promoted.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %.val1
  br i1 %.not.i.i.i.peel, label %bb.d, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i, %.val1
  br i1 %i.p, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !13530, !noalias !13531, !noundef !24
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.u, label %.loopexit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !13532, !noundef !24 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !13532, !noundef !24
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !13532, !noundef !24
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !13532, !noundef !24
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

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.ar, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i.peel ], [ %i.bd, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i.peel ], [ %i.ag, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i.peel ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !13527, !noundef !24
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !13527, !nonnull !24, !noundef !24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !13527, !noundef !24 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !13533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13534)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ult i64 %i.bq, %.val1
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1
  br i1 %i.bs, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !13530, !noalias !13535, !noundef !24
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1
  br i1 %i.bw, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !13536, !noundef !24 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i, label %.sink.split

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i, label %.sink.split

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa15 = phi i8 [ %.promoted26.i, %.split.i.i.i.peel ], [ %.promoted26.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa12 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.bq, %.split.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !13528
  tail call void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa12, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @568) #40, !noalias !13535
  unreachable

.loopexit19:                                      ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !13528
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19
  store i8 1, ptr %i.j, align 2, !alias.scope !13528
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i, %bb.q, %bb.h, %bb.p
  %.ph = phi i64 [ %.val1, %bb.p ], [ %.promoted.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit12.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit14.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjsY2yM364a4_11lance_tools.exit16.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !13528
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.loopexit19
  %1 = phi i64 [ %.val1, %.loopexit19 ], [ %.ph, %.sink.split ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !13526
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !13526
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i: ; preds = %bb.s, %bb.r, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !13526
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCscI6d9CVNmLh_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjsY2yM364a4_11lance_tools(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, %bb.t, %bb.u
  %i.cm = load i64, ptr %i.a, align 8, !range !28, !noundef !24
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noundef !24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !24
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !24 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8
  br label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit

bb.w:                                             ; preds = %_RNvXsv_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.cw = load i8, ptr %i.b, align 1, !range !25, !alias.scope !13537, !noundef !24
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !13537
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !25, !alias.scope !13537, !noundef !24
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.x
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !13537
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !13537
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !13537, !noundef !24 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !13537, !noundef !24 ; 2 uses
  %.not.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i, label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.df = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !13537, !nonnull !24, !noundef !24
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dg
  br label %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit

_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0 = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0 = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RNvMsf_NtNtCscI6d9CVNmLh_4core3str4iterINtB5_13SplitInternalReE7get_endCsjsY2yM364a4_11lance_tools.exit ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoItermNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE10dying_nextCsjsY2yM364a4_11lance_tools(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !24 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13572)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !13573
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !13573 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !13573 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !13573 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !13573
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 408
  %i.g = load ptr, ptr %i.f, align 8, !noalias !13574, !nonnull !24, !noundef !24 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !13543

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 408
  %i.k = load ptr, ptr %i.j, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  %i.m = load ptr, ptr %i.l, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 408
  %i.o = load ptr, ptr %i.n, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 408
  %i.q = load ptr, ptr %i.p, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  %i.s = load ptr, ptr %i.r, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 408
  %i.u = load ptr, ptr %i.t, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  %i.w = load ptr, ptr %i.v, align 8, !noalias !13574, !nonnull !24, !noundef !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %i.y = load ptr, ptr %i.x, align 8, !noalias !13574, !nonnull !24, !noundef !24 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !13576, !noundef !24 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit.i, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i3.i ], [ %i.ad, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ae, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.af, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 408, i64 504
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #36, !noalias !13577
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !13576, !noundef !24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit.i, label %.lr.ph.i3.i

_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit.i: ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.af, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 408, i64 504
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #36, !noalias !13577
  br label %_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit

_RINvMsb_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsjsY2yM364a4_11lance_tools.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.ai = add i64 %i.b, -1
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13578)
end_hunk_0
