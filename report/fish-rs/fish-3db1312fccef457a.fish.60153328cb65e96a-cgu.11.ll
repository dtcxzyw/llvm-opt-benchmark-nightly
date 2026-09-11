Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager22rendering_needs_update:bb.a
  %i.av = load i8, ptr %i.au, align 8, !range !28, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.ax = load i8, ptr %i.aw, align 1, !range !28, !noundef !5
  %.not7 = icmp eq i8 %i.av, %i.ax
  br i1 %.not7, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !5
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5
  %i.bh = shl nuw i64 %i.az, 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.bg, ptr nonnull %i.be, i64 %i.bh)
  %.not8 = icmp eq i32 %bcmp, 0
  br i1 %.not8, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %.not9 = icmp eq i64 %i.bj, %i.bl
  br i1 %.not9, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5
  %.not10 = icmp eq i64 %i.bn, 0
  br i1 %.not10, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bp = load i8, ptr %i.bo, align 8, !range !28, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.t, %bb.o, %bb.n, %bb.e, %bb.f, %bb.r, %bb.d, %bb.p, %bb.q, %bb.s, %bb.a, %bb.u
  %.sroa.0.0 = phi i1 [ true, %bb.o ], [ true, %bb.a ], [ %i.k, %bb.c ], [ %i.bq, %bb.u ], [ true, %bb.s ], [ true, %bb.q ], [ true, %bb.p ], [ false, %bb.t ], [ true, %bb.d ], [ true, %bb.r ], [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.n ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager29set_selected_completion_index(ptr noalias nofree noundef align 8 captures(none) dereferenceable(280) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = trunc nuw i64 %1 to i1                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i64, ptr %i.b, align 8              ; 6 uses
  br i1 %i.a, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %i.c, 64051194700380388
  tail call void @llvm.assume(i1 %i.d)
  %.not = icmp ugt i64 %2, %i.c
  br i1 %.not, label %bb.c, label %._crit_edge, !prof !7

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.e = icmp ult i64 %i.c, 64051194700380388
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2897, i64 noundef 92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2898) #37
  unreachable

bb.d:                                             ; preds = %._crit_edge
  %i.g = icmp eq i64 %2, %i.c
  %or.cond = select i1 %i.a, i1 %i.g, i1 false    ; 2 uses
  %i.h = add nsw i64 %i.c, -1
  %spec.select = select i1 %or.cond, i64 %i.h, i64 %2
  %spec.select11 = select i1 %or.cond, i64 1, i64 %1
  store i64 %spec.select11, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define { i64, i64 } @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager32visual_selected_completion_index(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(280) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp ult i64 %i.b, 64051194700380388
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !22, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 4 uses
  %i.h = trunc nuw i64 %i.e to i1
  br i1 %i.h, label %bb.c, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %1, 0
  %i.k = icmp eq i64 %2, 0
  %or.cond10 = or i1 %i.j, %i.k
  br i1 %or.cond10, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not2.i = icmp ult i64 %i.g, %i.b
  br i1 %.not2.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.sroa.0.03.i = phi i64 [ %i.m, %bb.g ], [ %i.g, %bb.e ] ; 2 uses
  %.not6.i = icmp ult i64 %.sroa.0.03.i, %1
  br i1 %.not6.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.l = add nsw i64 %i.b, -1
  br label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.m = sub nuw i64 %.sroa.0.03.i, %1            ; 3 uses
  %.not.i = icmp ult i64 %i.m, %i.b
  br i1 %.not.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit, label %.lr.ph.i

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager32visual_selected_completion_index0B8_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.d, %bb.a, %bb.c
  %.sroa.7.0 = phi i64 [ undef, %bb.d ], [ 0, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ], [ %i.l, %bb.f ], [ %i.g, %bb.e ], [ %i.m, %bb.g ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.g ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.7.0, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager35select_next_completion_in_direction(ptr noalias nofree noundef align 8 captures(none) dereferenceable(280) %0, i8 noundef range(i8 0, 9) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(296) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 9 uses
  %i.c = icmp ult i64 %i.b, 64051194700380388
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !22, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = trunc nuw i64 %i.e to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !noundef !5 ; 5 uses
  switch i8 %1, label %default.unreachable115 [
    i8 0, label %bb.h
    i8 1, label %bb.h
    i8 2, label %bb.h
    i8 3, label %bb.h
    i8 4, label %bb.h
    i8 5, label %bb.h
    i8 8, label %bb.e
    i8 6, label %bb.bz
    i8 7, label %bb.cc
  ]

bb.d:                                             ; preds = %bb.b
  switch i8 %1, label %default.unreachable115 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.e
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.f
    i8 8, label %bb.g
  ]

default.unreachable115:                           ; preds = %bb.d, %bb.c
  unreachable

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.by, %bb.c, %.thread89, %bb.f
  %.sroa.036.1.sink = phi i64 [ 1, %.thread89 ], [ 1, %bb.f ], [ 1, %bb.by ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.d ], [ 1, %bb.d ]
  %.sroa.6.1.sink = phi i64 [ %i.cu, %.thread89 ], [ %i.o, %bb.f ], [ %.sroa.6.0, %bb.by ], [ undef, %bb.c ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ] ; 2 uses
  %.not82 = phi i1 [ false, %.thread89 ], [ false, %bb.f ], [ false, %bb.by ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ]
  store i64 %.sroa.036.1.sink, ptr %0, align 8
  store i64 %.sroa.6.1.sink, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 3 uses
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = icmp ult i64 %i.j, %i.l
  br i1 %i.n, label %bb.cf, label %bb.ce

bb.f:                                             ; preds = %bb.d, %bb.d
  %i.o = add nsw i64 %i.b, -1
  br label %bb.e

bb.g:                                             ; preds = %bb.ck, %bb.cq, %bb.cp, %bb.ce, %bb.by, %bb.d, %bb.d, %bb.d, %bb.d, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.by ], [ true, %bb.ce ], [ true, %bb.ck ], [ false, %bb.d ], [ false, %bb.d ], [ false, %bb.d ], [ true, %bb.cp ], [ true, %bb.cq ]
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 14 uses
  %i.r = icmp ne i64 %i.q, 0                      ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i64, ptr %i.s, align 8, !range !22
  %i.u = trunc nuw i64 %i.t to i1
  %or.cond120 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond120, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %.sroa.05.088 = phi i64 [ %i.aa, %bb.j ], [ -1, %bb.h ] ; 15 uses
  %.sroa.021.0 = phi i64 [ %i.ab, %bb.j ], [ -1, %bb.h ] ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !22, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.k, label %bb.l, !prof !8

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = urem i64 %i.z, %i.q
  %i.ab = udiv i64 %i.z, %i.q
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2899) #37
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = add i64 %i.ad, -1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.af, i64 1) ; 2 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
    i8 3, label %bb.r
    i8 4, label %bb.s
    i8 5, label %bb.t
  ]

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2900) #37
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not80 = icmp eq i64 %.sroa.05.088, 0
  br i1 %.not80, label %bb.v, label %bb.ac

bb.p:                                             ; preds = %bb.m
  %i.ag = add i64 %.sroa.021.0, 1                 ; 3 uses
  %i.ah = icmp eq i64 %.sroa.021.0, -1
  br i1 %i.ah, label %bb.ae, label %bb.ad

bb.q:                                             ; preds = %bb.m
  %i.ai = add i64 %.sroa.05.088, 1                ; 2 uses
  %i.aj = icmp eq i64 %.sroa.05.088, -1
  br i1 %i.aj, label %bb.aq, label %bb.ap

bb.r:                                             ; preds = %bb.m
  %.not78 = icmp eq i64 %.sroa.021.0, 0
  br i1 %.not78, label %bb.bd, label %bb.bk

bb.s:                                             ; preds = %bb.m
  %spec.select85 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.05.088, i64 %..i)
  br label %bb.u

bb.t:                                             ; preds = %bb.m
  %i.ak = add i64 %..i, %.sroa.05.088             ; 3 uses
  %i.al = icmp ult i64 %i.ak, %.sroa.05.088
  br i1 %i.al, label %bb.bm, label %bb.bl

bb.u:                                             ; preds = %bb.s, %bb.bl, %bb.ax, %bb.aj, %bb.bs, %bb.bu, %bb.bk, %bb.bj, %bb.bh, %bb.bb, %bb.an, %bb.ac, %bb.ab, %bb.z
  %.sroa.021.1 = phi i64 [ %.sroa.021.0, %bb.ac ], [ %i.at, %bb.ab ], [ %i.as, %bb.z ], [ %.sroa.021.0, %bb.bs ], [ 0, %bb.an ], [ %i.ag, %bb.aj ], [ %i.bv, %bb.bb ], [ %i.cc, %bb.bk ], [ %i.by, %bb.bj ], [ %i.by, %bb.bh ], [ %.sroa.021.0, %bb.bl ], [ %.sroa.021.0, %bb.ax ], [ %.sroa.021.0, %bb.s ], [ %.sroa.021.0, %bb.bu ]
  %.sroa.05.1 = phi i64 [ %i.au, %bb.ac ], [ %i.ao, %bb.ab ], [ %i.ao, %bb.z ], [ %i.ce, %bb.bs ], [ %i.bg, %bb.an ], [ %.sroa.05.088, %bb.aj ], [ 0, %bb.bb ], [ %.sroa.05.088, %bb.bk ], [ %i.cb, %bb.bj ], [ %i.ca, %bb.bh ], [ %i.ak, %bb.bl ], [ %i.ai, %bb.ax ], [ %spec.select85, %bb.s ], [ %i.cl, %bb.bu ]
  %i.am = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.021.1, i64 %i.q) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %bb.bw, label %bb.bv

bb.v:                                             ; preds = %bb.o
  %i.ao = add i64 %i.q, -1                        ; 2 uses
  br i1 %i.r, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not81 = icmp eq i64 %.sroa.021.0, 0
  br i1 %.not81, label %bb.y, label %bb.ab

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2901) #37
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = add i64 %i.aq, -1
  br label %bb.u

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2902) #37
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.at = add i64 %.sroa.021.0, -1
  br label %bb.u

bb.ac:                                            ; preds = %bb.o
  %i.au = add i64 %.sroa.05.088, -1
  br label %bb.u

bb.ad:                                            ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  %i.ax = icmp ult i64 %i.ag, %i.aw
  br i1 %i.ax, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.p
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2903) #37
  unreachable

bb.af:                                            ; preds = %bb.aj, %bb.ad
  %i.ay = add nuw i64 %.sroa.05.088, 1
  %i.az = icmp eq i64 %.sroa.05.088, -1
  br i1 %i.az, label %bb.am, label %bb.al

bb.ag:                                            ; preds = %bb.ad
  %i.ba = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ag, i64 %i.q) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  br i1 %i.bb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 2 uses
  %i.bd = add i64 %i.bc, %.sroa.05.088            ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  br i1 %i.be, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2904) #37
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.bf = icmp ult i64 %i.bd, %i.b
  br i1 %i.bf, label %bb.u, label %bb.af

bb.ak:                                            ; preds = %bb.ah
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2904) #37
  unreachable

bb.al:                                            ; preds = %bb.af
  br i1 %i.r, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.af
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2905) #37
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.bg = urem i64 %i.ay, %i.q
  br label %bb.u

bb.ao:                                            ; preds = %bb.al
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2905) #37
  unreachable

bb.ap:                                            ; preds = %bb.q
  %i.bh = icmp ult i64 %i.ai, %i.q
  br i1 %i.bh, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.q
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2906) #37
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.bi = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.021.0, i64 %i.q) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bj, label %bb.au, label %bb.at

bb.as:                                            ; preds = %bb.ax, %bb.ap
  %i.bk = add nuw i64 %.sroa.021.0, 1
  %i.bl = icmp eq i64 %.sroa.021.0, -1
  br i1 %i.bl, label %bb.ba, label %bb.az
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
bb.an:                                            ; preds = %bb.am
  %i.hq = call i64 @llvm.usub.sat.i64(i64 %i.gp, i64 4) ; 2 uses
  %i.hr = udiv i64 %i.hq, 3
  %i.hs = shl nuw i64 %i.hr, 1
  %i.ht = urem i64 %i.hq, 3
  %.cmp.i.i.i = icmp samesign ugt i64 %i.ht, 1
  %i.hu = zext i1 %.cmp.i.i.i to i64
  %i.hv = or disjoint i64 %i.hs, %i.hu
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hv, i64 %i.hf) ; 2 uses
  %i.hw = icmp ugt i64 %i.gp, %i.hj
  %i.hx = sub nuw i64 %i.gp, %i.hj
  %..i133.i.i.i = call i64 @llvm.umax.i64(i64 %i.hx, i64 %..i.i.i.i)
  %.sroa.04.0.i.i.i = select i1 %i.hw, i64 %..i133.i.i.i, i64 %..i.i.i.i ; 2 uses
  %.not114.i.i.i = icmp ugt i64 %.sroa.04.0.i.i.i, %i.gp
  br i1 %.not114.i.i.i, label %.invoke286.i.i.i, label %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, !prof !7

.invoke286.i.i.i:                                 ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i, %bb.an
  %i.hy = phi ptr [ @2879, %bb.an ], [ @2885, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  %i.hz = phi i64 [ 41, %bb.an ], [ 37, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  %i.ia = phi ptr [ @2880, %bb.an ], [ @2886, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hy, i64 noundef %i.hz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ia) #36
          to label %.cont287.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.cont287.i.i.i:                                   ; preds = %.invoke286.i.i.i
  unreachable

_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i: ; preds = %bb.an, %bb.am
  %.sroa.04.1.i.i.i = phi i64 [ %.sroa.04.0.i.i.i, %bb.an ], [ %i.hf, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %.spec.select.i137.i.i.i = select i1 %.sroa.05.0.i.i, i8 28, i8 %spec.select.i137.i.i.i
  %.spec.select.i.i.i.i = select i1 %.sroa.05.0.i.i, i8 26, i8 %spec.select.i.i.i.i ; 7 uses
  %.spec.select.i134.i.reass.i.i = select i1 %.sroa.05.0.i.i, i8 %i.dl, i8 %spec.select.i134.i.reass.reass.i.reass.i.reass.reass
  %.spec.select.i140.i.i.i = select i1 %.sroa.05.0.i.i, i8 29, i8 %spec.select.i140.i.i.i
  store i8 %.spec.select.i137.i.i.i, ptr %.sroa.0.i.i.i.2.i.i.i.2.i.i.i.2.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.0.i.i.i.3.i.i.i.3.i.i.i.3.i.i.3.i.i.3.i.3.i.3..sroa_idx, align 1, !noalias !2964
  store i8 0, ptr %.sroa.0.i.i.i, align 4, !noalias !2964
  store i8 0, ptr %.sroa.0.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !noalias !2964
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !alias.scope !2965, !noalias !2966, !nonnull !5, !noundef !5 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !2965, !noalias !2966, !noundef !5 ; 4 uses
  %.idx = mul nuw nsw i64 %i.ie, 24
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.idx
  %i.ig = icmp ult i64 %i.ie, 384307168202282326
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gz, i64 120
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  %i.ij = load i64, ptr %i.ih, align 8, !alias.scope !2965, !noalias !2966 ; 6 uses
  %i.ik = icmp ult i64 %i.ij, 2305843009213693952 ; 3 uses
  %i.il = icmp eq i64 %i.ij, 0
  %brmerge45.i.i.i = or i1 %.sroa.05.0.i.i, %i.il ; 3 uses
  %i.im = load ptr, ptr %i.ii, align 8, !alias.scope !2965, !noalias !2966 ; 4 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %i.ij
  %i.io = getelementptr i8, ptr %i.in, i64 -4     ; 3 uses
  %.sroa.6130.0.insert.ext.i.i = zext nneg i8 %.spec.select.i.i.i.i to i32
  %.sroa.6130.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.6130.0.insert.ext.i.i, 24 ; 8 uses
  %i.ip = icmp eq i64 %i.ie, 0
  br i1 %i.ip, label %._crit_edge, label %.lr.ph1293

bb.ao:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i.i
  %i.iq = icmp eq ptr %i.ir, %i.if
  br i1 %i.iq, label %._crit_edge, label %.lr.ph1293

.lr.ph1293:                                       ; preds = %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i, %bb.ao
  %.sroa.043.0.i.i.i1292 = phi i64 [ %.sroa.013.2.i.i.i.i, %bb.ao ], [ %.sroa.04.1.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i1291 = phi ptr [ %i.ir, %bb.ao ], [ %i.ic, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 4 uses
  %.sroa.72.0.i.i.i1290 = phi i64 [ %i.is, %bb.ao ], [ 0, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i1291, i64 24 ; 2 uses
  %i.is = add nuw nsw i64 %.sroa.72.0.i.i.i1290, 1 ; 2 uses
  %.not119.i.i.i = icmp eq i64 %.sroa.72.0.i.i.i1290, 0
  br i1 %.not119.i.i.i, label %bb.bn, label %.outer.us.i.i.i

._crit_edge:                                      ; preds = %bb.ao, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i
  %.sroa.043.0.i.i.i.lcssa = phi i64 [ %.sroa.04.1.i.i.i, %_RNCNvMs_NtCs8frGy5WneL6_4fish5pagerNtB6_5Pager21completion_print_item0B8_.exit142.i.i.i ], [ %.sroa.013.2.i.i.i.i, %bb.ao ]
  %i.it = icmp ult i64 %i.gp, %.sroa.04.1.i.i.i
  br i1 %i.it, label %.invoke288.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.iu = sub nuw i64 %i.gp, %.sroa.04.1.i.i.i    ; 2 uses
  %i.iv = add i64 %.sroa.043.0.i.i.i.lcssa, %i.iu ; 9 uses
  %i.iw = icmp ult i64 %i.iv, %i.iu
  br i1 %i.iw, label %.invoke.i.i.i, label %bb.aq

.invoke288.i.i.i:                                 ; preds = %bb.bi, %bb.bg, %bb.be, %bb.bd, %bb.aw, %._crit_edge, %bb.bv
  %i.ix = phi ptr [ @2893, %bb.bv ], [ @2889, %bb.be ], [ @2888, %bb.bd ], [ @2892, %bb.bi ], [ @2883, %bb.aw ], [ @2881, %._crit_edge ], [ @2890, %bb.bg ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ix) #36
          to label %.cont289.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2967

.cont289.i.i.i:                                   ; preds = %.invoke288.i.i.i
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.iy = icmp ne i64 %i.hh, 0
  %i.iz = icmp ugt i64 %i.iv, 4
  %or.cond.i.i.i = and i1 %i.iy, %i.iz
  br i1 %or.cond.i.i.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not116.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %.not116.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i: ; preds = %bb.ar, %.outer.i85.i.i
  %.sroa.0.0.ph.i90287.i.i = phi i64 [ %i.jp, %.outer.i85.i.i ], [ 0, %bb.ar ] ; 2 uses
  %.sroa.013.0.ph.i89286.i.i = phi i64 [ %i.jq, %.outer.i85.i.i ], [ %i.iv, %bb.ar ] ; 6 uses
  %.sroa.036.0.ph.i87285.i.i = phi i64 [ %spec.select49.lcssa.i108.i.i, %.outer.i85.i.i ], [ %i.iv, %bb.ar ]
  %.sroa.7.0.ph.i86284.i.i = phi i32 [ %spec.select.lcssa.i107.i.i, %.outer.i85.i.i ], [ 32, %bb.ar ] ; 3 uses
  %i.ja = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i86284.i.i)
          to label %.noexc116.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc116.i.i:                                    ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i
  %i.jb = add i64 %.sroa.036.0.ph.i87285.i.i, -1  ; 2 uses
  %spec.select49.peel.i96.i.i = call i64 @llvm.umax.i64(i64 %i.jb, i64 1) ; 2 uses
  %.not8.i.peel.i94.i.i = icmp ne i64 %i.jb, 0    ; 2 uses
  %spec.select.peel.i95.i.i = select i1 %.not8.i.peel.i94.i.i, i32 %.sroa.7.0.ph.i86284.i.i, i32 -1 ; 2 uses
  %i.jc = extractvalue { i64, i64 } %i.ja, 0
  %i.jd = trunc nuw i64 %i.jc to i1
  br i1 %i.jd, label %.loopexit.i105.i.i, label %.peel.next.i97.i.i

.peel.next.i97.i.i:                               ; preds = %.noexc116.i.i, %.noexc117.i.i
  %.sroa.7.0.i98.i.i = phi i32 [ %spec.select.i103.i.i, %.noexc117.i.i ], [ %spec.select.peel.i95.i.i, %.noexc116.i.i ] ; 4 uses
  %.sroa.036.0.i99.i.i = phi i64 [ %spec.select49.i104.i.i, %.noexc117.i.i ], [ %spec.select49.peel.i96.i.i, %.noexc116.i.i ]
  %.not.i.i100.i.i = icmp eq i32 %.sroa.7.0.i98.i.i, -1
  br i1 %.not.i.i100.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i: ; preds = %.peel.next.i97.i.i
  %i.je = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i98.i.i)
          to label %.noexc117.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc117.i.i:                                    ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i101.i.i
  %i.jf = add i64 %.sroa.036.0.i99.i.i, -1        ; 2 uses
  %spec.select49.i104.i.i = call i64 @llvm.umax.i64(i64 %i.jf, i64 1) ; 2 uses
  %.not8.i.i102.i.i = icmp ne i64 %i.jf, 0        ; 2 uses
  %spec.select.i103.i.i = select i1 %.not8.i.i102.i.i, i32 %.sroa.7.0.i98.i.i, i32 -1 ; 2 uses
  %i.jg = extractvalue { i64, i64 } %i.je, 0
  %i.jh = trunc nuw i64 %i.jg to i1
  br i1 %i.jh, label %.loopexit.i105.i.i, label %.peel.next.i97.i.i, !llvm.loop !2851

.loopexit.i105.i.i:                               ; preds = %.noexc117.i.i, %.noexc116.i.i
  %.not8.i.lcssa.i106.i.i = phi i1 [ %.not8.i.peel.i94.i.i, %.noexc116.i.i ], [ %.not8.i.i102.i.i, %.noexc117.i.i ]
  %spec.select.lcssa.i107.i.i = phi i32 [ %spec.select.peel.i95.i.i, %.noexc116.i.i ], [ %spec.select.i103.i.i, %.noexc117.i.i ] ; 2 uses
  %spec.select49.lcssa.i108.i.i = phi i64 [ %spec.select49.peel.i96.i.i, %.noexc116.i.i ], [ %spec.select49.i104.i.i, %.noexc117.i.i ]
  %.lcssa.i109.i.i = phi { i64, i64 } [ %i.ja, %.noexc116.i.i ], [ %i.je, %.noexc117.i.i ]
  %.sroa.7.0.lcssa59.i110.i.i = phi i32 [ %.sroa.7.0.ph.i86284.i.i, %.noexc116.i.i ], [ %.sroa.7.0.i98.i.i, %.noexc117.i.i ]
  %i.ji = extractvalue { i64, i64 } %.lcssa.i109.i.i, 1 ; 3 uses
  %i.jj = icmp ugt i64 %i.ji, %.sroa.013.0.ph.i89286.i.i
  br i1 %i.jj, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %bb.as

bb.as:                                            ; preds = %.loopexit.i105.i.i
  %i.jk = icmp eq i64 %i.ji, %.sroa.013.0.ph.i89286.i.i ; 2 uses
  %brmerge.not.i111.i.i = select i1 %i.jk, i1 %.not8.i.lcssa.i106.i.i, i1 false
  br i1 %brmerge.not.i111.i.i, label %bb.at, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i: ; preds = %bb.as
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i110.i.i, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc118.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc118.i.i:                                    ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i113.i.i
  %i.jl = icmp eq i64 %.sroa.0.0.ph.i90287.i.i, -1
  br i1 %i.jl, label %.split78.us.i.i.invoke.i.i, label %.outer.i85.i.i

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc119.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc119.i.i:                                    ; preds = %bb.at
  %i.jm = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc120.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc120.i.i:                                    ; preds = %.noexc119.i.i
  %i.jn = extractvalue { i64, i64 } %i.jm, 0
  %i.jo = trunc nuw i64 %i.jn to i1
  br i1 %i.jo, label %bb.au, label %.invoke290.i.invoke.i.i, !prof !8

.outer.i85.i.i:                                   ; preds = %.noexc118.i.i
  %i.jp = add nuw i64 %.sroa.0.0.ph.i90287.i.i, 1
  %i.jq = sub nuw i64 %.sroa.013.0.ph.i89286.i.i, %i.ji ; 2 uses
  %.not.i.peel.i91552.i.i = icmp eq i32 %spec.select.lcssa.i107.i.i, -1
  %or.cond.peel.i92.i.i = select i1 %i.jk, i1 true, i1 %.not.i.peel.i91552.i.i
  br i1 %or.cond.peel.i92.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i93.i.i

bb.au:                                            ; preds = %.noexc120.i.i
  %i.jr = extractvalue { i64, i64 } %i.jm, 1
  %i.js = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i89286.i.i, i64 %i.jr)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i114.i.i: ; preds = %.outer.i85.i.i, %.loopexit.i105.i.i, %.peel.next.i97.i.i, %bb.au
  %.sroa.013.2.i115.i.i = phi i64 [ %i.js, %bb.au ], [ %.sroa.013.0.ph.i89286.i.i, %.peel.next.i97.i.i ], [ %.sroa.013.0.ph.i89286.i.i, %.loopexit.i105.i.i ], [ %i.jq, %.outer.i85.i.i ]
  %i.jt = icmp ult i64 %i.iv, %.sroa.013.2.i115.i.i
  br i1 %i.jt, label %.invoke290.i.invoke.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, !prof !2969

bb.av:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2964
  store i8 0, ptr %i.h, align 1, !noalias !2964
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i, align 1, !noalias !2964
  %i.ju = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull @2882, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2882, i64 2), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.h, i64 noundef %i.iv, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 2 uses

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2964
  %i.jv = sub i64 %i.iv, %i.ju                    ; 5 uses
  %i.jw = icmp ult i64 %i.iv, %i.ju
  br i1 %i.jw, label %.invoke288.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jx = icmp ugt i64 %i.hh, -3
  br i1 %i.jx, label %.invoke.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jy = add nuw i64 %i.hh, 2
  %i.jz = call i64 @llvm.usub.sat.i64(i64 %i.gp, i64 %i.gq)
  %..i144.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.jy, i64 %i.jz) ; 2 uses
  %.not117.i.not.i.i = icmp ugt i64 %i.jv, %..i144.i.i.i
  br i1 %.not117.i.not.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i: ; preds = %bb.ay
  %i.ka = sub nuw i64 %i.jv, %..i144.i.i.i
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i: ; preds = %.outer.i44.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i
  %.sroa.0.0.ph.i49293.i.i = phi i64 [ %i.kq, %.outer.i44.i.i ], [ 0, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 2 uses
  %.sroa.013.0.ph.i48292.i.i = phi i64 [ %i.kr, %.outer.i44.i.i ], [ %i.jv, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 6 uses
  %.sroa.036.0.ph.i46291.i.i = phi i64 [ %spec.select49.lcssa.i67.i.i, %.outer.i44.i.i ], [ %i.ka, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ]
  %.sroa.7.0.ph.i45290.i.i = phi i32 [ %spec.select.lcssa.i66.i.i, %.outer.i44.i.i ], [ 32, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.preheader.i.i ] ; 3 uses
  %i.kb = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i45290.i.i)
          to label %.noexc75.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc75.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i
  %i.kc = add i64 %.sroa.036.0.ph.i46291.i.i, -1  ; 2 uses
  %spec.select49.peel.i55.i.i = call i64 @llvm.umax.i64(i64 %i.kc, i64 1) ; 2 uses
  %.not8.i.peel.i53.i.i = icmp ne i64 %i.kc, 0    ; 2 uses
  %spec.select.peel.i54.i.i = select i1 %.not8.i.peel.i53.i.i, i32 %.sroa.7.0.ph.i45290.i.i, i32 -1 ; 2 uses
  %i.kd = extractvalue { i64, i64 } %i.kb, 0
  %i.ke = trunc nuw i64 %i.kd to i1
  br i1 %i.ke, label %.loopexit.i64.i.i, label %.peel.next.i56.i.i

.peel.next.i56.i.i:                               ; preds = %.noexc75.i.i, %.noexc76.i.i
  %.sroa.7.0.i57.i.i = phi i32 [ %spec.select.i62.i.i, %.noexc76.i.i ], [ %spec.select.peel.i54.i.i, %.noexc75.i.i ] ; 4 uses
  %.sroa.036.0.i58.i.i = phi i64 [ %spec.select49.i63.i.i, %.noexc76.i.i ], [ %spec.select49.peel.i55.i.i, %.noexc75.i.i ]
  %.not.i.i59.i.i = icmp eq i32 %.sroa.7.0.i57.i.i, -1
  br i1 %.not.i.i59.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i60.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i60.i.i: ; preds = %.peel.next.i56.i.i
  %i.kf = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i57.i.i)
          to label %.noexc76.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc76.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i60.i.i
  %i.kg = add i64 %.sroa.036.0.i58.i.i, -1        ; 2 uses
  %spec.select49.i63.i.i = call i64 @llvm.umax.i64(i64 %i.kg, i64 1) ; 2 uses
  %.not8.i.i61.i.i = icmp ne i64 %i.kg, 0         ; 2 uses
  %spec.select.i62.i.i = select i1 %.not8.i.i61.i.i, i32 %.sroa.7.0.i57.i.i, i32 -1 ; 2 uses
  %i.kh = extractvalue { i64, i64 } %i.kf, 0
  %i.ki = trunc nuw i64 %i.kh to i1
  br i1 %i.ki, label %.loopexit.i64.i.i, label %.peel.next.i56.i.i, !llvm.loop !2851

.loopexit.i64.i.i:                                ; preds = %.noexc76.i.i, %.noexc75.i.i
  %.not8.i.lcssa.i65.i.i = phi i1 [ %.not8.i.peel.i53.i.i, %.noexc75.i.i ], [ %.not8.i.i61.i.i, %.noexc76.i.i ]
  %spec.select.lcssa.i66.i.i = phi i32 [ %spec.select.peel.i54.i.i, %.noexc75.i.i ], [ %spec.select.i62.i.i, %.noexc76.i.i ] ; 2 uses
  %spec.select49.lcssa.i67.i.i = phi i64 [ %spec.select49.peel.i55.i.i, %.noexc75.i.i ], [ %spec.select49.i63.i.i, %.noexc76.i.i ]
  %.lcssa.i68.i.i = phi { i64, i64 } [ %i.kb, %.noexc75.i.i ], [ %i.kf, %.noexc76.i.i ]
  %.sroa.7.0.lcssa59.i69.i.i = phi i32 [ %.sroa.7.0.ph.i45290.i.i, %.noexc75.i.i ], [ %.sroa.7.0.i57.i.i, %.noexc76.i.i ]
  %i.kj = extractvalue { i64, i64 } %.lcssa.i68.i.i, 1 ; 3 uses
  %i.kk = icmp ugt i64 %i.kj, %.sroa.013.0.ph.i48292.i.i
  br i1 %i.kk, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, label %bb.az

bb.az:                                            ; preds = %.loopexit.i64.i.i
  %i.kl = icmp eq i64 %i.kj, %.sroa.013.0.ph.i48292.i.i ; 2 uses
  %brmerge.not.i70.i.i = select i1 %i.kl, i1 %.not8.i.lcssa.i65.i.i, i1 false
  br i1 %brmerge.not.i70.i.i, label %bb.ba, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i72.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i72.i.i: ; preds = %bb.az
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i69.i.i, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc77.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc77.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i72.i.i
  %i.km = icmp eq i64 %.sroa.0.0.ph.i49293.i.i, -1
  br i1 %i.km, label %.split78.us.i.i.invoke.i.i, label %.outer.i44.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc78.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc78.i.i:                                     ; preds = %bb.ba
  %i.kn = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc79.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc79.i.i:                                     ; preds = %.noexc78.i.i
  %i.ko = extractvalue { i64, i64 } %i.kn, 0
  %i.kp = trunc nuw i64 %i.ko to i1
  br i1 %i.kp, label %bb.bb, label %.invoke290.i.invoke.i.i, !prof !8

.outer.i44.i.i:                                   ; preds = %.noexc77.i.i
  %i.kq = add nuw i64 %.sroa.0.0.ph.i49293.i.i, 1
  %i.kr = sub nuw i64 %.sroa.013.0.ph.i48292.i.i, %i.kj ; 2 uses
  %.not.i.peel.i50553.i.i = icmp eq i32 %spec.select.lcssa.i66.i.i, -1
  %or.cond.peel.i51.i.i = select i1 %i.kl, i1 true, i1 %.not.i.peel.i50553.i.i
  br i1 %or.cond.peel.i51.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i52.i.i

bb.bb:                                            ; preds = %.noexc79.i.i
  %i.ks = extractvalue { i64, i64 } %i.kn, 1
  %i.kt = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i48292.i.i, i64 %i.ks)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i: ; preds = %.outer.i44.i.i, %.loopexit.i64.i.i, %.peel.next.i56.i.i, %bb.bb
  %.sroa.013.2.i74.i.i = phi i64 [ %i.kt, %bb.bb ], [ %.sroa.013.0.ph.i48292.i.i, %.peel.next.i56.i.i ], [ %.sroa.013.0.ph.i48292.i.i, %.loopexit.i64.i.i ], [ %i.kr, %.outer.i44.i.i ] ; 2 uses
  %i.ku = icmp ult i64 %i.jv, %.sroa.013.2.i74.i.i
  br i1 %i.ku, label %.invoke290.i.invoke.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i, !prof !2970

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i: ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i, %bb.ay
  %.sroa.013.2.i74443.i.i = phi i64 [ %.sroa.013.2.i74.i.i, %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.i.i ], [ %i.jv, %bb.ay ] ; 4 uses
  %i.kv = icmp ugt i64 %.sroa.013.2.i74443.i.i, 1
  br i1 %i.kv, label %bb.bc, label %.invoke286.i.i.i, !prof !8

bb.bc:                                            ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i73.thread.i.i
  %.124.i.i.i = select i1 %.sroa.05.0.i.i, i8 28, i8 20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2964
  store i8 0, ptr %i.g, align 1, !noalias !2964
  store i8 0, ptr %.sroa.573.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.124.i.i.i, ptr %.sroa.676.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !2964
  %i.kw = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull @2887, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2887, i64 1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.g, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 3 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2964
  %i.kx = sub i64 %.sroa.013.2.i74443.i.i, %i.kw  ; 3 uses
  %i.ky = icmp ult i64 %.sroa.013.2.i74443.i.i, %i.kw
  br i1 %i.ky, label %.invoke288.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !2965, !noalias !2966, !nonnull !5, !noundef !5 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.lc = load i64, ptr %i.lb, align 8, !alias.scope !2965, !noalias !2966, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2964
  store i8 0, ptr %i.f, align 1, !noalias !2964
  store i8 0, ptr %.sroa.440.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i140.i.i.i, ptr %.sroa.541.0..sroa_idx.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.642.0..sroa_idx.i.i.i, align 1, !noalias !2964
  %i.ld = icmp eq i64 %.sroa.013.2.i74443.i.i, %i.kw
  br i1 %i.ld, label %.invoke288.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.le = add i64 %i.kx, -1
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lc
  %i.lg = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCINvB2_9print_maxBJ_E0EB4_(i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull %i.la, ptr noundef nonnull %i.lf, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.f, i64 noundef %i.le, i1 noundef zeroext false, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2967 ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2964
  %i.lh = sub i64 %i.kx, %i.lg                    ; 3 uses
  %i.li = icmp ult i64 %i.kx, %i.lg
  br i1 %i.li, label %.invoke288.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2964
  store i8 0, ptr %i.e, align 1, !noalias !2964
  store i8 0, ptr %.sroa.573.0..sroa_idx74.i.i.i, align 1, !noalias !2964
  store i8 %.124.i.i.i, ptr %.sroa.676.0..sroa_idx77.i.i.i, align 1, !noalias !2964
  store i8 %.spec.select.i.i.i.i, ptr %.sroa.7.0..sroa_idx79.i.i.i, align 1, !noalias !2964
  %i.lj = invoke fastcc noundef i64 @_RINvNtCs8frGy5WneL6_4fish5pager14print_max_implNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNCINvB2_9print_maxBJ_E0EB4_(i64 range(i64 0, 64051194700380387) %i.gx, ptr noundef nonnull @2891, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @2891, i64 1), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(4) %i.e, i64 noundef 1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.j)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ; 3 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2964
  %i.lk = icmp ult i64 %i.lh, %i.lj
  br i1 %i.lk, label %.invoke288.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ll = sub nuw i64 %i.lh, %i.lj                ; 3 uses
  %.not118.i.i.i = icmp eq i64 %i.lh, %i.lj
  br i1 %.not118.i.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i: ; preds = %bb.bj, %.outer.i.i.i
  %.sroa.0.0.ph.i299.i.i = phi i64 [ %i.mb, %.outer.i.i.i ], [ 0, %bb.bj ] ; 2 uses
  %.sroa.013.0.ph.i298.i.i = phi i64 [ %i.mc, %.outer.i.i.i ], [ %i.ll, %bb.bj ] ; 6 uses
  %.sroa.036.0.ph.i297.i.i = phi i64 [ %spec.select49.lcssa.i.i.i, %.outer.i.i.i ], [ %i.ll, %bb.bj ]
  %.sroa.7.0.ph.i296.i.i = phi i32 [ %spec.select.lcssa.i.i.i, %.outer.i.i.i ], [ 32, %bb.bj ] ; 3 uses
  %i.lm = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.ph.i296.i.i)
          to label %.noexc35.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc35.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i
  %i.ln = add i64 %.sroa.036.0.ph.i297.i.i, -1    ; 2 uses
  %spec.select49.peel.i.i.i = call i64 @llvm.umax.i64(i64 %i.ln, i64 1) ; 2 uses
  %.not8.i.peel.i.i.i = icmp ne i64 %i.ln, 0      ; 2 uses
  %spec.select.peel.i.i.i = select i1 %.not8.i.peel.i.i.i, i32 %.sroa.7.0.ph.i296.i.i, i32 -1 ; 2 uses
  %i.lo = extractvalue { i64, i64 } %i.lm, 0
  %i.lp = trunc nuw i64 %i.lo to i1
  br i1 %i.lp, label %.loopexit.i33.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %.noexc35.i.i, %.noexc36.i.i
  %.sroa.7.0.i31.i.i = phi i32 [ %spec.select.i.i.i, %.noexc36.i.i ], [ %spec.select.peel.i.i.i, %.noexc35.i.i ] ; 4 uses
  %.sroa.036.0.i.i.i = phi i64 [ %spec.select49.i.i.i, %.noexc36.i.i ], [ %spec.select49.peel.i.i.i, %.noexc35.i.i ]
  %.not.i.i32.i.i = icmp eq i32 %.sroa.7.0.i31.i.i, -1
  br i1 %.not.i.i32.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.peel.next.i.i.i
  %i.lq = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef %.sroa.7.0.i31.i.i)
          to label %.noexc36.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc36.i.i:                                     ; preds = %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.i
  %i.lr = add i64 %.sroa.036.0.i.i.i, -1          ; 2 uses
  %spec.select49.i.i.i = call i64 @llvm.umax.i64(i64 %i.lr, i64 1) ; 2 uses
  %.not8.i.i.i.i = icmp ne i64 %i.lr, 0           ; 2 uses
  %spec.select.i.i.i = select i1 %.not8.i.i.i.i, i32 %.sroa.7.0.i31.i.i, i32 -1 ; 2 uses
  %i.ls = extractvalue { i64, i64 } %i.lq, 0
  %i.lt = trunc nuw i64 %i.ls to i1
  br i1 %i.lt, label %.loopexit.i33.i.i, label %.peel.next.i.i.i, !llvm.loop !2851

.loopexit.i33.i.i:                                ; preds = %.noexc36.i.i, %.noexc35.i.i
  %.not8.i.lcssa.i.i.i = phi i1 [ %.not8.i.peel.i.i.i, %.noexc35.i.i ], [ %.not8.i.i.i.i, %.noexc36.i.i ]
  %spec.select.lcssa.i.i.i = phi i32 [ %spec.select.peel.i.i.i, %.noexc35.i.i ], [ %spec.select.i.i.i, %.noexc36.i.i ] ; 2 uses
  %spec.select49.lcssa.i.i.i = phi i64 [ %spec.select49.peel.i.i.i, %.noexc35.i.i ], [ %spec.select49.i.i.i, %.noexc36.i.i ]
  %.lcssa.i.i.i = phi { i64, i64 } [ %i.lm, %.noexc35.i.i ], [ %i.lq, %.noexc36.i.i ]
  %.sroa.7.0.lcssa59.i.i.i = phi i32 [ %.sroa.7.0.ph.i296.i.i, %.noexc35.i.i ], [ %.sroa.7.0.i31.i.i, %.noexc36.i.i ]
  %i.lu = extractvalue { i64, i64 } %.lcssa.i.i.i, 1 ; 3 uses
  %i.lv = icmp ugt i64 %i.lu, %.sroa.013.0.ph.i298.i.i
  br i1 %i.lv, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.i33.i.i
  %i.lw = icmp eq i64 %i.lu, %.sroa.013.0.ph.i298.i.i ; 2 uses
  %brmerge.not.i.i.i = select i1 %i.lw, i1 %.not8.i.lcssa.i.i.i, i1 false
  br i1 %brmerge.not.i.i.i, label %bb.bl, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.bk
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef %.sroa.7.0.lcssa59.i.i.i, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc37.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc37.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableINtNtNtB1l_7sources8repeat_n7RepeatNcEE4peek0ECs8frGy5WneL6_4fish.exit.i.i.i
  %i.lx = icmp eq i64 %.sroa.0.0.ph.i299.i.i, -1
  br i1 %i.lx, label %.split78.us.i.i.invoke.i.i, label %.outer.i.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc38.i.i:                                     ; preds = %bb.bl
  %i.ly = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc39.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc39.i.i:                                     ; preds = %.noexc38.i.i
  %i.lz = extractvalue { i64, i64 } %i.ly, 0
  %i.ma = trunc nuw i64 %i.lz to i1
  br i1 %i.ma, label %bb.bm, label %.invoke290.i.invoke.i.i, !prof !8

.outer.i.i.i:                                     ; preds = %.noexc37.i.i
  %i.mb = add nuw i64 %.sroa.0.0.ph.i299.i.i, 1
  %i.mc = sub nuw i64 %.sroa.013.0.ph.i298.i.i, %i.lu ; 2 uses
  %.not.i.peel.i554.i.i = icmp eq i32 %spec.select.lcssa.i.i.i, -1
  %or.cond.peel.i.i.i = select i1 %i.lw, i1 true, i1 %.not.i.peel.i554.i.i
  br i1 %or.cond.peel.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i, label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.peel.i.i.i

bb.bm:                                            ; preds = %.noexc39.i.i
  %i.md = extractvalue { i64, i64 } %i.ly, 1
  %i.me = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.i298.i.i, i64 %i.md)
  br label %_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i

_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB5_7RepeatNcENtNtNtB9_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread.i.i.i: ; preds = %.outer.i.i.i, %.loopexit.i33.i.i, %.peel.next.i.i.i, %bb.bm
  %.sroa.013.2.i34.i.i = phi i64 [ %i.me, %bb.bm ], [ %.sroa.013.0.ph.i298.i.i, %.peel.next.i.i.i ], [ %.sroa.013.0.ph.i298.i.i, %.loopexit.i33.i.i ], [ %i.mc, %.outer.i.i.i ]
  %i.mf = icmp ult i64 %i.ll, %.sroa.013.2.i34.i.i
  br i1 %i.mf, label %.invoke290.i.invoke.i.i, label %_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager21completion_print_item.exit.i.i, !prof !2970

bb.bn:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, %.lr.ph1293
  %.sroa.043.1.i.i.i = phi i64 [ %.sroa.043.0.i.i.i1292, %.lr.ph1293 ], [ %.sroa.013.2.i.i.i, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i ] ; 4 uses
  br i1 %.not17.not.i.i, label %bb.bu, label %bb.bx

.outer.us.i.i.i:                                  ; preds = %.lr.ph1293, %bb.br
  %.sroa.035.0.ph.us.i.idx.i.i = phi i64 [ %.sroa.035.0.us.i.add.i.i, %bb.br ], [ 0, %.lr.ph1293 ]
  %.sroa.013.0.ph.us.i.i.i = phi i64 [ %i.mo, %bb.br ], [ %.sroa.043.0.i.i.i1292, %.lr.ph1293 ] ; 6 uses
  %.sroa.0.0.ph.us.i.i.i = phi i64 [ %i.mn, %bb.br ], [ 0, %.lr.ph1293 ] ; 2 uses
  br label %bb.bs

bb.bo:                                            ; preds = %bb.bs
  %i.mg = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 32)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.bo
  %.sroa.035.0.us.i.add.i.i = add nuw nsw i64 %.sroa.035.0.us.i.idx.i.i, 4 ; 2 uses
  %i.mh = extractvalue { i64, i64 } %i.mg, 0
  %i.mi = trunc nuw i64 %i.mh to i1
  br i1 %i.mi, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.noexc.i.i
  %i.mj = extractvalue { i64, i64 } %i.mg, 1      ; 3 uses
  %i.mk = icmp ugt i64 %i.mj, %.sroa.013.0.ph.us.i.i.i
  br i1 %i.mk, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ml = icmp eq i64 %i.mj, %.sroa.013.0.ph.us.i.i.i
  br i1 %i.ml, label %.loopexit.i22.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i: ; preds = %bb.bq
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 32, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc23.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc23.i.i:                                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us.i.i.i
  %i.mm = icmp eq i64 %.sroa.0.0.ph.us.i.i.i, -1
  br i1 %i.mm, label %.split66.us.i.i.i, label %bb.br

bb.br:                                            ; preds = %.noexc23.i.i
  %i.mn = add nuw i64 %.sroa.0.0.ph.us.i.i.i, 1
  %i.mo = sub nuw i64 %.sroa.013.0.ph.us.i.i.i, %i.mj
  br label %.outer.us.i.i.i

bb.bs:                                            ; preds = %.noexc.i.i, %.outer.us.i.i.i
  %.sroa.035.0.us.i.idx.i.i = phi i64 [ %.sroa.035.0.us.i.add.i.i, %.noexc.i.i ], [ %.sroa.035.0.ph.us.i.idx.i.i, %.outer.us.i.i.i ] ; 2 uses
  %i.mp = icmp eq i64 %.sroa.035.0.us.i.idx.i.i, 8
  br i1 %i.mp, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, label %bb.bo

.loopexit.i22.i.i:                                ; preds = %bb.bq
  invoke void @_RNvMNtCs8frGy5WneL6_4fish6screenNtB2_4Line6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j, i32 noundef 8230, i32 noundef %.sroa.6130.0.insert.shift.i.i, i64 noundef 3, i64 range(i64 0, 64051194700380387) %i.gx)
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968

.noexc25.i.i:                                     ; preds = %.loopexit.i22.i.i
  %i.mq = invoke { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish6screen16wcwidth_rendered(i32 noundef 8230)
          to label %.noexc26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !2968 ; 2 uses

.noexc26.i.i:                                     ; preds = %.noexc25.i.i
  %i.mr = extractvalue { i64, i64 } %i.mq, 0
  %i.ms = trunc nuw i64 %i.mr to i1
  br i1 %i.ms, label %bb.bt, label %.invoke.i.i, !prof !8

.split66.us.i.i.i:                                ; preds = %.noexc23.i.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #37
          to label %.noexc27.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2968

.noexc27.i.i:                                     ; preds = %.split66.us.i.i.i
  unreachable

bb.bt:                                            ; preds = %.noexc26.i.i
  %i.mt = extractvalue { i64, i64 } %i.mq, 1
  %i.mu = call i64 @llvm.usub.sat.i64(i64 %.sroa.013.0.ph.us.i.i.i, i64 %i.mt)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i

.invoke.i.i:                                      ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i, %.noexc26.i.i
  %i.mv = phi ptr [ @16, %.noexc26.i.i ], [ @17, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mv) #37
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !2968

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.i.i.i: ; preds = %bb.bp, %bb.bs, %bb.bt
  %.sroa.013.2.i.i.i = phi i64 [ %i.mu, %bb.bt ], [ %.sroa.013.0.ph.us.i.i.i, %bb.bs ], [ %.sroa.013.0.ph.us.i.i.i, %bb.bp ] ; 2 uses
  %i.mw = icmp ult i64 %.sroa.043.0.i.i.i1292, %.sroa.013.2.i.i.i
  br i1 %i.mw, label %.invoke.i.i, label %bb.bn, !prof !7

bb.bu:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2964
  store i8 0, ptr %i.i, align 1, !noalias !2964
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !noalias !2964
end_hunk_1
begin_hunk_2_@_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager6render:bb.a
  br i1 %i.df, label %.outer.split.preheader.2.i, label %.outer.split.preheader.1.i

.outer.split.preheader.1.i:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %i.yy = phi i64 [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ], [ %i.yx, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %..i199690.i = phi i64 [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ], [ %..i199.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i ]
  %exitcond.1.not.i12201227 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.1.not.i12201227, label %.split.1.i, label %.lr.ph1222

.lr.ph1222:                                       ; preds = %.outer.split.preheader.1.i, %.outer.1.i
  %umax.1.i1231 = phi i64 [ %umax.1.i, %.outer.1.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.preheader.1.i ]
  %.sroa.060.0.ph427.1.i1230 = phi i64 [ %i.zb, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ]
  %.sroa.025.0.ph428.1.i1229 = phi i64 [ %..i201.1.i, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ] ; 2 uses
  %.sroa.022.0.ph429.1.i1228 = phi i64 [ %..i200.1.i, %.outer.1.i ], [ 0, %.outer.split.preheader.1.i ] ; 2 uses
  br label %bb.gn

bb.gm:                                            ; preds = %bb.go
  %exitcond.1.not.i = icmp eq i64 %i.zb, %umax.1.i1231
  br i1 %exitcond.1.not.i, label %.split.1.i, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph1222, %bb.gm
  %.sroa.060.0.1.i1221 = phi i64 [ %.sroa.060.0.ph427.1.i1230, %.lr.ph1222 ], [ %i.zb, %bb.gm ] ; 2 uses
  %i.yz = add i64 %.sroa.060.0.1.i1221, %.sroa.0.0.i207.fr679.i ; 3 uses
  %i.za = icmp ult i64 %i.yz, %.sroa.0.0.i207.fr679.i
  br i1 %i.za, label %.invoke, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.zb = add i64 %.sroa.060.0.1.i1221, 1         ; 5 uses
  %.not133.1.i = icmp ult i64 %i.yz, %i.cf
  br i1 %.not133.1.i, label %bb.gp, label %bb.gm

bb.gp:                                            ; preds = %bb.go
  %i.zc = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.yz ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 136
  %i.ze = load i64, ptr %i.zd, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.zf = icmp eq i64 %i.ze, 0
  %..1.i = select i1 %i.zf, i64 0, i64 4
  %i.zg = add i64 %..1.i, %i.ze                   ; 2 uses
  %i.zh = icmp ult i64 %i.zg, %i.ze
  br i1 %i.zh, label %.invoke, label %.outer.1.i

.outer.1.i:                                       ; preds = %bb.gp
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zc, i64 128
  %i.zj = load i64, ptr %i.zi, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.1.i = call noundef i64 @llvm.umax.i64(i64 %i.zj, i64 %.sroa.022.0.ph429.1.i1228) ; 2 uses
  %..i201.1.i = call noundef i64 @llvm.umax.i64(i64 %i.zg, i64 %.sroa.025.0.ph428.1.i1229) ; 2 uses
  %umax.1.i = call i64 @llvm.umax.i64(i64 %i.zb, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.1.not.i1220.not = icmp ult i64 %i.zb, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.1.not.i1220.not, label %.lr.ph1222, label %.split.1.i

.outer.split.us.1.i:                              ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.i
  %.not.1.i = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %.not.1.i, label %.outer.split.preheader.2.i, label %.invoke992

.split.1.i:                                       ; preds = %.outer.1.i, %bb.gm, %.outer.split.preheader.1.i
  %.sroa.022.0.ph429.1.i.lcssa = phi i64 [ %.sroa.022.0.ph429.1.i1228, %bb.gm ], [ 0, %.outer.split.preheader.1.i ], [ %..i200.1.i, %.outer.1.i ] ; 4 uses
  %.sroa.025.0.ph428.1.i.lcssa = phi i64 [ %.sroa.025.0.ph428.1.i1229, %bb.gm ], [ 0, %.outer.split.preheader.1.i ], [ %..i201.1.i, %.outer.1.i ]
  %i.zk = add i64 %.sroa.025.0.ph428.1.i.lcssa, %.sroa.022.0.ph429.1.i.lcssa ; 2 uses
  %i.zl = icmp ult i64 %i.zk, %.sroa.022.0.ph429.1.i.lcssa
  br i1 %i.zl, label %.invoke, label %bb.gq

bb.gq:                                            ; preds = %.split.1.i
  %i.zm = icmp ugt i64 %.sroa.022.0.ph429.1.i.lcssa, -3
  br i1 %i.zm, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i: ; preds = %bb.gq
  %..i199.1.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.zk)
  %i.zn = add nuw i64 %.sroa.022.0.ph429.1.i.lcssa, 2
  %i.zo = icmp slt i64 %.sroa.0.0.i207.fr679.i, 0
  %i.zp = shl nuw i64 %.sroa.0.0.i207.fr679.i, 1
  br i1 %i.zo, label %.invoke992, label %.outer.split.preheader.2.i

.outer.split.preheader.2.i:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i, %.outer.split.us.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i
  %i.zq = phi i64 [ %i.zp, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ] ; 2 uses
  %i.zr = phi i64 [ %i.zn, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 2, %.outer.split.us.1.i ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ]
  %..i199.1710.i = phi i64 [ %..i199.1.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ 0, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ] ; 2 uses
  %..i199689697703708.i = phi i64 [ %..i199690.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %..i199.i, %.outer.split.us.1.i ], [ 0, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ] ; 3 uses
  %i.zs = phi i64 [ %i.yy, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.2.i ], [ %i.yx, %.outer.split.us.1.i ], [ 2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i ]
  %exitcond.2.not.i12341241 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.2.not.i12341241, label %.split.2.i, label %.lr.ph1236

.lr.ph1236:                                       ; preds = %.outer.split.preheader.2.i, %.outer.2.i
  %umax.2.i1245 = phi i64 [ %umax.2.i, %.outer.2.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.preheader.2.i ]
  %.sroa.060.0.ph427.2.i1244 = phi i64 [ %i.zv, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ]
  %.sroa.025.0.ph428.2.i1243 = phi i64 [ %..i201.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  %.sroa.022.0.ph429.2.i1242 = phi i64 [ %..i200.2.i, %.outer.2.i ], [ 0, %.outer.split.preheader.2.i ] ; 2 uses
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gt
  %exitcond.2.not.i = icmp eq i64 %i.zv, %umax.2.i1245
  br i1 %exitcond.2.not.i, label %.split.2.i, label %bb.gs

bb.gs:                                            ; preds = %.lr.ph1236, %bb.gr
  %.sroa.060.0.2.i1235 = phi i64 [ %.sroa.060.0.ph427.2.i1244, %.lr.ph1236 ], [ %i.zv, %bb.gr ] ; 2 uses
  %i.zt = add i64 %.sroa.060.0.2.i1235, %i.zq     ; 3 uses
  %i.zu = icmp ult i64 %i.zt, %i.zq
  br i1 %i.zu, label %.invoke, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.zv = add i64 %.sroa.060.0.2.i1235, 1         ; 5 uses
  %.not133.2.i = icmp ult i64 %i.zt, %i.cf
  br i1 %.not133.2.i, label %bb.gu, label %bb.gr

bb.gu:                                            ; preds = %bb.gt
  %i.zw = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.zt ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 136
  %i.zy = load i64, ptr %i.zx, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.zz = icmp eq i64 %i.zy, 0
  %..2.i = select i1 %i.zz, i64 0, i64 4
  %i.aaa = add i64 %..2.i, %i.zy                  ; 2 uses
  %i.aab = icmp ult i64 %i.aaa, %i.zy
  br i1 %i.aab, label %.invoke, label %.outer.2.i

.outer.2.i:                                       ; preds = %bb.gu
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zw, i64 128
  %i.aad = load i64, ptr %i.aac, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.2.i = call noundef i64 @llvm.umax.i64(i64 %i.aad, i64 %.sroa.022.0.ph429.2.i1242) ; 2 uses
  %..i201.2.i = call noundef i64 @llvm.umax.i64(i64 %i.aaa, i64 %.sroa.025.0.ph428.2.i1243) ; 2 uses
  %umax.2.i = call i64 @llvm.umax.i64(i64 %i.zv, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.2.not.i1234.not = icmp ult i64 %i.zv, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.2.not.i1234.not, label %.lr.ph1236, label %.split.2.i

.split.2.i:                                       ; preds = %.outer.2.i, %bb.gr, %.outer.split.preheader.2.i
  %.sroa.022.0.ph429.2.i.lcssa = phi i64 [ %.sroa.022.0.ph429.2.i1242, %bb.gr ], [ 0, %.outer.split.preheader.2.i ], [ %..i200.2.i, %.outer.2.i ] ; 4 uses
  %.sroa.025.0.ph428.2.i.lcssa = phi i64 [ %.sroa.025.0.ph428.2.i1243, %bb.gr ], [ 0, %.outer.split.preheader.2.i ], [ %..i201.2.i, %.outer.2.i ]
  %i.aae = add i64 %.sroa.025.0.ph428.2.i.lcssa, %.sroa.022.0.ph429.2.i.lcssa ; 2 uses
  %i.aaf = icmp ult i64 %i.aae, %.sroa.022.0.ph429.2.i.lcssa
  br i1 %i.aaf, label %.invoke, label %bb.gv

bb.gv:                                            ; preds = %.split.2.i
  %i.aag = icmp ugt i64 %.sroa.022.0.ph429.2.i.lcssa, -3
  br i1 %i.aag, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i: ; preds = %bb.gv
  %..i199.2.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aae) ; 2 uses
  %i.aah = add nuw i64 %.sroa.022.0.ph429.2.i.lcssa, 2
  %i.aai = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr679.i, i64 3) ; 2 uses
  %i.aaj = extractvalue { i64, i1 } %i.aai, 1
  %i.aak = extractvalue { i64, i1 } %i.aai, 0     ; 2 uses
  br i1 %i.aaj, label %.invoke992, label %.outer.split.3.i.preheader

.outer.split.3.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.3.i
  %exitcond.3.not.i12481255 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.3.not.i12481255, label %.split.3.i, label %.lr.ph1250

.lr.ph1250:                                       ; preds = %.outer.split.3.i.preheader, %.outer.3.i
  %umax.3.i1259 = phi i64 [ %umax.3.i, %.outer.3.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.3.i.preheader ]
  %.sroa.060.0.ph427.3.i1258 = phi i64 [ %i.aan, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ]
  %.sroa.025.0.ph428.3.i1257 = phi i64 [ %..i201.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.3.i1256 = phi i64 [ %..i200.3.i, %.outer.3.i ], [ 0, %.outer.split.3.i.preheader ] ; 2 uses
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gy
  %exitcond.3.not.i = icmp eq i64 %i.aan, %umax.3.i1259
  br i1 %exitcond.3.not.i, label %.split.3.i, label %bb.gx

bb.gx:                                            ; preds = %.lr.ph1250, %bb.gw
  %.sroa.060.0.3.i1249 = phi i64 [ %.sroa.060.0.ph427.3.i1258, %.lr.ph1250 ], [ %i.aan, %bb.gw ] ; 2 uses
  %i.aal = add i64 %.sroa.060.0.3.i1249, %i.aak   ; 3 uses
  %i.aam = icmp ult i64 %i.aal, %i.aak
  br i1 %i.aam, label %.invoke, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aan = add i64 %.sroa.060.0.3.i1249, 1        ; 5 uses
  %.not133.3.i = icmp ult i64 %i.aal, %i.cf
  br i1 %.not133.3.i, label %bb.gz, label %bb.gw

bb.gz:                                            ; preds = %bb.gy
  %i.aao = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.aal ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 136
  %i.aaq = load i64, ptr %i.aap, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.aar = icmp eq i64 %i.aaq, 0
  %..3.i = select i1 %i.aar, i64 0, i64 4
  %i.aas = add i64 %..3.i, %i.aaq                 ; 2 uses
  %i.aat = icmp ult i64 %i.aas, %i.aaq
  br i1 %i.aat, label %.invoke, label %.outer.3.i

.outer.3.i:                                       ; preds = %bb.gz
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 128
  %i.aav = load i64, ptr %i.aau, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aav, i64 %.sroa.022.0.ph429.3.i1256) ; 2 uses
  %..i201.3.i = call noundef i64 @llvm.umax.i64(i64 %i.aas, i64 %.sroa.025.0.ph428.3.i1257) ; 2 uses
  %umax.3.i = call i64 @llvm.umax.i64(i64 %i.aan, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.3.not.i1248.not = icmp ult i64 %i.aan, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.3.not.i1248.not, label %.lr.ph1250, label %.split.3.i

.split.3.i:                                       ; preds = %.outer.3.i, %bb.gw, %.outer.split.3.i.preheader
  %.sroa.022.0.ph429.3.i.lcssa = phi i64 [ %.sroa.022.0.ph429.3.i1256, %bb.gw ], [ 0, %.outer.split.3.i.preheader ], [ %..i200.3.i, %.outer.3.i ] ; 4 uses
  %.sroa.025.0.ph428.3.i.lcssa = phi i64 [ %.sroa.025.0.ph428.3.i1257, %bb.gw ], [ 0, %.outer.split.3.i.preheader ], [ %..i201.3.i, %.outer.3.i ]
  %i.aaw = add i64 %.sroa.025.0.ph428.3.i.lcssa, %.sroa.022.0.ph429.3.i.lcssa ; 2 uses
  %i.aax = icmp ult i64 %i.aaw, %.sroa.022.0.ph429.3.i.lcssa
  br i1 %i.aax, label %.invoke, label %bb.ha

bb.ha:                                            ; preds = %.split.3.i
  %i.aay = icmp ugt i64 %.sroa.022.0.ph429.3.i.lcssa, -3
  br i1 %i.aay, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i: ; preds = %bb.ha
  %..i199.3.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aaw) ; 2 uses
  %i.aaz = add nuw i64 %.sroa.022.0.ph429.3.i.lcssa, 2
  %i.aba = icmp ugt i64 %.sroa.0.0.i207.fr679.i, 4611686018427387903
  %i.abb = shl i64 %.sroa.0.0.i207.fr679.i, 2     ; 2 uses
  br i1 %i.aba, label %.invoke992, label %.outer.split.4.i.preheader

.outer.split.4.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.4.i
  %exitcond.4.not.i12621269 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.4.not.i12621269, label %.split.4.i, label %.lr.ph1264

.lr.ph1264:                                       ; preds = %.outer.split.4.i.preheader, %.outer.4.i
  %umax.4.i1273 = phi i64 [ %umax.4.i, %.outer.4.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.4.i.preheader ]
  %.sroa.060.0.ph427.4.i1272 = phi i64 [ %i.abe, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ]
  %.sroa.025.0.ph428.4.i1271 = phi i64 [ %..i201.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.4.i1270 = phi i64 [ %..i200.4.i, %.outer.4.i ], [ 0, %.outer.split.4.i.preheader ] ; 2 uses
  br label %bb.hc

bb.hb:                                            ; preds = %bb.hd
  %exitcond.4.not.i = icmp eq i64 %i.abe, %umax.4.i1273
  br i1 %exitcond.4.not.i, label %.split.4.i, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph1264, %bb.hb
  %.sroa.060.0.4.i1263 = phi i64 [ %.sroa.060.0.ph427.4.i1272, %.lr.ph1264 ], [ %i.abe, %bb.hb ] ; 2 uses
  %i.abc = add i64 %.sroa.060.0.4.i1263, %i.abb   ; 3 uses
  %i.abd = icmp ult i64 %i.abc, %i.abb
  br i1 %i.abd, label %.invoke, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.abe = add i64 %.sroa.060.0.4.i1263, 1        ; 5 uses
  %.not133.4.i = icmp ult i64 %i.abc, %i.cf
  br i1 %.not133.4.i, label %bb.he, label %bb.hb

bb.he:                                            ; preds = %bb.hd
  %i.abf = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.abc ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 136
  %i.abh = load i64, ptr %i.abg, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.abi = icmp eq i64 %i.abh, 0
  %..4.i = select i1 %i.abi, i64 0, i64 4
  %i.abj = add i64 %..4.i, %i.abh                 ; 2 uses
  %i.abk = icmp ult i64 %i.abj, %i.abh
  br i1 %i.abk, label %.invoke, label %.outer.4.i

.outer.4.i:                                       ; preds = %bb.he
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abf, i64 128
  %i.abm = load i64, ptr %i.abl, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abm, i64 %.sroa.022.0.ph429.4.i1270) ; 2 uses
  %..i201.4.i = call noundef i64 @llvm.umax.i64(i64 %i.abj, i64 %.sroa.025.0.ph428.4.i1271) ; 2 uses
  %umax.4.i = call i64 @llvm.umax.i64(i64 %i.abe, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.4.not.i1262.not = icmp ult i64 %i.abe, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.4.not.i1262.not, label %.lr.ph1264, label %.split.4.i

.split.4.i:                                       ; preds = %.outer.4.i, %bb.hb, %.outer.split.4.i.preheader
  %.sroa.022.0.ph429.4.i.lcssa = phi i64 [ %.sroa.022.0.ph429.4.i1270, %bb.hb ], [ 0, %.outer.split.4.i.preheader ], [ %..i200.4.i, %.outer.4.i ] ; 4 uses
  %.sroa.025.0.ph428.4.i.lcssa = phi i64 [ %.sroa.025.0.ph428.4.i1271, %bb.hb ], [ 0, %.outer.split.4.i.preheader ], [ %..i201.4.i, %.outer.4.i ]
  %i.abn = add i64 %.sroa.025.0.ph428.4.i.lcssa, %.sroa.022.0.ph429.4.i.lcssa ; 2 uses
  %i.abo = icmp ult i64 %i.abn, %.sroa.022.0.ph429.4.i.lcssa
  br i1 %i.abo, label %.invoke, label %bb.hf

bb.hf:                                            ; preds = %.split.4.i
  %i.abp = icmp ugt i64 %.sroa.022.0.ph429.4.i.lcssa, -3
  br i1 %i.abp, label %.invoke, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i: ; preds = %bb.hf
  %..i199.4.i = call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.abn) ; 2 uses
  %i.abq = add nuw i64 %.sroa.022.0.ph429.4.i.lcssa, 2
  %i.abr = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.0.0.i207.fr679.i, i64 5) ; 2 uses
  %i.abs = extractvalue { i64, i1 } %i.abr, 1
  %i.abt = extractvalue { i64, i1 } %i.abr, 0     ; 2 uses
  br i1 %i.abs, label %.invoke992, label %.outer.split.5.i.preheader

.outer.split.5.i.preheader:                       ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.5.i
  %exitcond.5.not.i12761283 = icmp eq i64 %.sroa.0.0.i207.fr679.i, 0
  br i1 %exitcond.5.not.i12761283, label %.split.5.i, label %.lr.ph1278

.lr.ph1278:                                       ; preds = %.outer.split.5.i.preheader, %.outer.5.i
  %umax.5.i1287 = phi i64 [ %umax.5.i, %.outer.5.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.5.i.preheader ]
  %.sroa.060.0.ph427.5.i1286 = phi i64 [ %i.abw, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ]
  %.sroa.025.0.ph428.5.i1285 = phi i64 [ %..i201.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.5.i1284 = phi i64 [ %..i200.5.i, %.outer.5.i ], [ 0, %.outer.split.5.i.preheader ] ; 2 uses
  br label %bb.hh

bb.hg:                                            ; preds = %bb.hi
  %exitcond.5.not.i = icmp eq i64 %i.abw, %umax.5.i1287
  br i1 %exitcond.5.not.i, label %.split.5.i, label %bb.hh

bb.hh:                                            ; preds = %.lr.ph1278, %bb.hg
  %.sroa.060.0.5.i1277 = phi i64 [ %.sroa.060.0.ph427.5.i1286, %.lr.ph1278 ], [ %i.abw, %bb.hg ] ; 2 uses
  %i.abu = add i64 %.sroa.060.0.5.i1277, %i.abt   ; 3 uses
  %i.abv = icmp ult i64 %i.abu, %i.abt
  br i1 %i.abv, label %.invoke, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.abw = add i64 %.sroa.060.0.5.i1277, 1        ; 5 uses
  %.not133.5.i = icmp ult i64 %i.abu, %i.cf
  br i1 %.not133.5.i, label %bb.hj, label %bb.hg

bb.hj:                                            ; preds = %bb.hi
  %i.abx = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.abu ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 136
  %i.abz = load i64, ptr %i.aby, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.aca = icmp eq i64 %i.abz, 0
  %..5.i = select i1 %i.aca, i64 0, i64 4
  %i.acb = add i64 %..5.i, %i.abz                 ; 2 uses
  %i.acc = icmp ult i64 %i.acb, %i.abz
  br i1 %i.acc, label %.invoke, label %.outer.5.i

.outer.5.i:                                       ; preds = %bb.hj
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abx, i64 128
  %i.ace = load i64, ptr %i.acd, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.5.i = call noundef i64 @llvm.umax.i64(i64 %i.ace, i64 %.sroa.022.0.ph429.5.i1284) ; 2 uses
  %..i201.5.i = call noundef i64 @llvm.umax.i64(i64 %i.acb, i64 %.sroa.025.0.ph428.5.i1285) ; 2 uses
  %umax.5.i = call i64 @llvm.umax.i64(i64 %i.abw, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.5.not.i1276.not = icmp ult i64 %i.abw, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.5.not.i1276.not, label %.lr.ph1278, label %.split.5.i

.split.5.i:                                       ; preds = %.outer.5.i, %bb.hg, %.outer.split.5.i.preheader
  %.sroa.022.0.ph429.5.i.lcssa = phi i64 [ %.sroa.022.0.ph429.5.i1284, %bb.hg ], [ 0, %.outer.split.5.i.preheader ], [ %..i200.5.i, %.outer.5.i ] ; 4 uses
  %.sroa.025.0.ph428.5.i.lcssa = phi i64 [ %.sroa.025.0.ph428.5.i1285, %bb.hg ], [ 0, %.outer.split.5.i.preheader ], [ %..i201.5.i, %.outer.5.i ]
  %i.acf = add i64 %.sroa.025.0.ph428.5.i.lcssa, %.sroa.022.0.ph429.5.i.lcssa ; 2 uses
  %i.acg = icmp ult i64 %i.acf, %.sroa.022.0.ph429.5.i.lcssa
  br i1 %i.acg, label %.invoke, label %bb.hk

bb.hk:                                            ; preds = %.split.5.i
  %i.ach = icmp ugt i64 %.sroa.022.0.ph429.5.i.lcssa, -3
  br i1 %i.ach, label %.invoke, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs8frGy5WneL6_4fish5pager6ColumnjjNCNvMs_BX_NtBX_5Pager20completion_try_print0NCINvXsK_NtNtB8_6traits5accumjNtB2o_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0BZ_.exit.i.i

bb.hl:                                            ; preds = %bb.gk
  %i.aci = add i64 %.sroa.060.0.i1209, 1          ; 5 uses
  %.not133.i = icmp ult i64 %i.yu, %i.cf
  br i1 %.not133.i, label %bb.hm, label %bb.gj

bb.hm:                                            ; preds = %bb.hl
  %i.acj = getelementptr inbounds nuw [144 x i8], ptr %i.cp, i64 %i.yu ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 136
  %i.acl = load i64, ptr %i.ack, align 8, !alias.scope !2948, !noalias !3000, !noundef !5 ; 3 uses
  %i.acm = icmp eq i64 %i.acl, 0
  %..i53 = select i1 %i.acm, i64 0, i64 4
  %i.acn = add i64 %..i53, %i.acl                 ; 2 uses
  %i.aco = icmp ult i64 %i.acn, %i.acl
  br i1 %i.aco, label %.invoke, label %.outer.i

.outer.i:                                         ; preds = %bb.hm
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acj, i64 128
  %i.acq = load i64, ptr %i.acp, align 8, !alias.scope !2948, !noalias !3000, !noundef !5
  %..i200.i = call noundef i64 @llvm.umax.i64(i64 %i.acq, i64 %.sroa.022.0.ph429.i1214) ; 2 uses
  %..i201.i = call noundef i64 @llvm.umax.i64(i64 %i.acn, i64 %.sroa.025.0.ph428.i1215) ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.aci, i64 %.sroa.0.0.i207.fr679.i)
  %exitcond.not.i1208.not = icmp ult i64 %i.aci, %.sroa.0.0.i207.fr679.i
  br i1 %exitcond.not.i1208.not, label %.lr.ph, label %.split.i

.outer.split.us.i:                                ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.i
  br i1 %.not.i58, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter7IterMutNtNtCs8frGy5WneL6_4fish5pager6ColumnEENtNtNtB8_6traits8iterator8Iterator4nextB1E_.exit.1.thread.i, label %.invoke992

.lr.ph:                                           ; preds = %.outer.split.i.preheader, %.outer.i
  %umax.i1217 = phi i64 [ %umax.i, %.outer.i ], [ %.sroa.0.0.i207.fr679.i, %.outer.split.i.preheader ]
  %.sroa.060.0.ph427.i1216 = phi i64 [ %i.aci, %.outer.i ], [ 0, %.outer.split.i.preheader ]
  %.sroa.025.0.ph428.i1215 = phi i64 [ %..i201.i, %.outer.i ], [ 0, %.outer.split.i.preheader ] ; 2 uses
  %.sroa.022.0.ph429.i1214 = phi i64 [ %..i200.i, %.outer.i ], [ 0, %.outer.split.i.preheader ] ; 2 uses
  br label %bb.gk

_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager20completion_try_print.exit: ; preds = %bb.x, %.noexc73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2951
  %.not.i = icmp eq i64 %i.eq, 0
  %or.cond = select i1 %.not898.i.not, i1 true, i1 %.not.i
  br i1 %or.cond, label %.thread, label %.backedge524.backedge

bb.hn:                                            ; preds = %.body
  %i.acr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ho:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 8, 121) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new
end_hunk_2
