Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/time_zone_posix?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
begin_hunk_0_@_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111ParseOffsetEPKciiiPl:bb.a
  %.not.i = icmp eq ptr %memchr.i, null
  %i.u = ptrtoint ptr %memchr.i to i64
  %i.v = trunc i64 %i.u to i32
  %i.w = sub i32 %i.v, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32) ; 2 uses
  %i.x = icmp sgt i32 %i.w, 9
  %or.cond = or i1 %.not.i, %i.x
  br i1 %or.cond, label %._crit_edge.i, label %.lr.ph

._crit_edge.i:                                    ; preds = %bb.f, %.lr.ph.i.preheader
  %i.y = phi i8 [ %i.f, %.lr.ph.i.preheader ], [ %i.s, %bb.f ]
  %.028.lcssa.i = phi ptr [ %.019, %.lr.ph.i.preheader ], [ %i.r, %bb.f ] ; 5 uses
  %.023.lcssa.i = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.q, %bb.f ] ; 3 uses
  %i.z = icmp eq ptr %.028.lcssa.i, %.019
  %i.aa = icmp slt i32 %.023.lcssa.i, %1
  %i.ab = icmp sgt i32 %.023.lcssa.i, %2
  %i.ac = or i1 %i.aa, %i.ab
  %or.cond35.i = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %or.cond35.i, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit: ; preds = %._crit_edge.i
  %i.ad = icmp eq i8 %i.y, 58
  br i1 %i.ad, label %bb.g, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit53

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit
  %.ptr67 = getelementptr inbounds nuw i8, ptr %.028.lcssa.i, i64 1
  %i.ae = load i8, ptr %.ptr67, align 1, !tbaa !10
  %i.af = sext i8 %i.ae to i32
  %memchr62.i26 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.af, i64 11) ; 2 uses
  %.not63.i27 = icmp eq ptr %memchr62.i26, null
  br i1 %.not63.i27, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.g, %bb.j
  %memchr66.i29 = phi ptr [ %memchr.i32, %bb.j ], [ %memchr62.i26, %bb.g ]
  %.02365.i30 = phi i32 [ %i.ao, %bb.j ], [ 0, %bb.g ] ; 3 uses
  %.02864.i31.idx = phi i64 [ %.02864.i31.add, %bb.j ], [ 1, %bb.g ] ; 2 uses
  %i.ag = ptrtoint ptr %memchr66.i29 to i64
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = sub i32 %i.ah, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 9
  br i1 %i.aj, label %._crit_edge.i34, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i28
  %i.ak = icmp sgt i32 %.02365.i30, 214748364
  br i1 %i.ak, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = mul nsw i32 %.02365.i30, 10             ; 2 uses
  %i.am = sub nsw i32 2147483647, %i.ai
  %i.an = icmp sgt i32 %i.al, %i.am
  br i1 %i.an, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %i.ai, %i.al                ; 2 uses
  %.02864.i31.add = add nuw nsw i64 %.02864.i31.idx, 1 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.028.lcssa.i, i64 %.02864.i31.add
  %i.ap = load i8, ptr %.ptr, align 1, !tbaa !10
  %i.aq = sext i8 %i.ap to i32
  %memchr.i32 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.aq, i64 11) ; 2 uses
  %.not.i33 = icmp eq ptr %memchr.i32, null
  br i1 %.not.i33, label %._crit_edge.i34, label %.lr.ph.i28

._crit_edge.i34:                                  ; preds = %bb.j, %.lr.ph.i28
  %.028.lcssa.i35.idx = phi i64 [ %.02864.i31.add, %bb.j ], [ %.02864.i31.idx, %.lr.ph.i28 ] ; 2 uses
  %.023.lcssa.i36 = phi i32 [ %i.ao, %bb.j ], [ %.02365.i30, %.lr.ph.i28 ] ; 3 uses
  %.028.lcssa.i35.ptr = getelementptr inbounds nuw i8, ptr %.028.lcssa.i, i64 %.028.lcssa.i35.idx ; 5 uses
  %i.ar = icmp eq i64 %.028.lcssa.i35.idx, 1
  %i.as = icmp ugt i32 %.023.lcssa.i36, 59
  %or.cond35.i37 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond35.i37, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit39

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit39: ; preds = %._crit_edge.i34
  %i.at = load i8, ptr %.028.lcssa.i35.ptr, align 1, !tbaa !10
  %i.au = icmp eq i8 %i.at, 58
  br i1 %i.au, label %bb.k, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit53

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit39
  %.ptr69 = getelementptr inbounds nuw i8, ptr %.028.lcssa.i35.ptr, i64 1
  %i.av = load i8, ptr %.ptr69, align 1, !tbaa !10
  %i.aw = sext i8 %i.av to i32
  %memchr62.i40 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.aw, i64 11) ; 2 uses
  %.not63.i41 = icmp eq ptr %memchr62.i40, null
  br i1 %.not63.i41, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.k, %bb.n
  %memchr66.i43 = phi ptr [ %memchr.i46, %bb.n ], [ %memchr62.i40, %bb.k ]
  %.02365.i44 = phi i32 [ %i.bf, %bb.n ], [ 0, %bb.k ] ; 3 uses
  %.02864.i45.idx = phi i64 [ %.02864.i45.add, %bb.n ], [ 1, %bb.k ] ; 2 uses
  %i.ax = ptrtoint ptr %memchr66.i43 to i64
  %i.ay = trunc i64 %i.ax to i32
  %i.az = sub i32 %i.ay, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 9
  br i1 %i.ba, label %._crit_edge.i48, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i42
  %i.bb = icmp sgt i32 %.02365.i44, 214748364
  br i1 %i.bb, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = mul nsw i32 %.02365.i44, 10             ; 2 uses
  %i.bd = sub nsw i32 2147483647, %i.az
  %i.be = icmp sgt i32 %i.bc, %i.bd
  br i1 %i.be, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = add nsw i32 %i.az, %i.bc                ; 2 uses
  %.02864.i45.add = add nuw nsw i64 %.02864.i45.idx, 1 ; 3 uses
  %.ptr68 = getelementptr inbounds nuw i8, ptr %.028.lcssa.i35.ptr, i64 %.02864.i45.add
  %i.bg = load i8, ptr %.ptr68, align 1, !tbaa !10
  %i.bh = sext i8 %i.bg to i32
  %memchr.i46 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.bh, i64 11) ; 2 uses
  %.not.i47 = icmp eq ptr %memchr.i46, null
  br i1 %.not.i47, label %._crit_edge.i48, label %.lr.ph.i42

._crit_edge.i48:                                  ; preds = %bb.n, %.lr.ph.i42
  %.028.lcssa.i49.idx = phi i64 [ %.02864.i45.add, %bb.n ], [ %.02864.i45.idx, %.lr.ph.i42 ] ; 2 uses
  %.023.lcssa.i50 = phi i32 [ %i.bf, %bb.n ], [ %.02365.i44, %.lr.ph.i42 ] ; 2 uses
  %.028.lcssa.i49.ptr = getelementptr inbounds nuw i8, ptr %.028.lcssa.i35.ptr, i64 %.028.lcssa.i49.idx
  %i.bi = icmp eq i64 %.028.lcssa.i49.idx, 1
  %i.bj = icmp ugt i32 %.023.lcssa.i50, 59
  %or.cond35.i51 = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond35.i51, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit53

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit53: ; preds = %._crit_edge.i48, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit39, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit
  %.058 = phi i32 [ 0, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit ], [ %.023.lcssa.i36, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit39 ], [ %.023.lcssa.i36, %._crit_edge.i48 ]
  %.056 = phi i32 [ 0, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit ], [ 0, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit39 ], [ %.023.lcssa.i50, %._crit_edge.i48 ]
  %.120 = phi ptr [ %.028.lcssa.i, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit ], [ %.028.lcssa.i35.ptr, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit39 ], [ %.028.lcssa.i49.ptr, %._crit_edge.i48 ]
  %i.bk = mul nsw i32 %.023.lcssa.i, 60
  %i.bl = add nsw i32 %.058, %i.bk
  %i.bm = mul nsw i32 %i.bl, 60
  %i.bn = add nsw i32 %i.bm, %.056
  %i.bo = mul nsw i32 %i.bn, %.018
  %i.bp = sext i32 %i.bo to i64
  store i64 %i.bp, ptr %4, align 8, !tbaa !27
  br label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit.thread: ; preds = %.lr.ph, %bb.e, %bb.h, %bb.i, %bb.l, %bb.m, %bb.k, %._crit_edge.i48, %bb.g, %._crit_edge.i34, %bb.d, %._crit_edge.i, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit53, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.120, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit53 ], [ null, %bb.k ], [ null, %._crit_edge.i48 ], [ null, %._crit_edge.i ], [ null, %bb.d ], [ null, %bb.l ], [ null, %._crit_edge.i34 ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.m ], [ null, %bb.i ], [ null, %bb.e ], [ null, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_113ParseDateTimeEPKcPNS2_15PosixTransitionE(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !10
  %i.c = icmp eq i8 %i.b, 44
  br i1 %i.c, label %bb.c, label %.thread104

bb.c:                                             ; preds = %bb.b
  %.ptr116 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %.ptr116, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.d, label %bb.q [
    i8 77, label %bb.d
    i8 74, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %.ptr112 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i8, ptr %.ptr112, align 1, !tbaa !10
  %i.f = sext i8 %i.e to i32
  %memchr62.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.f, i64 11) ; 2 uses
  %.not63.i = icmp eq ptr %memchr62.i, null
  br i1 %.not63.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %memchr66.i = phi ptr [ %memchr.i, %bb.g ], [ %memchr62.i, %bb.d ]
  %.02365.i = phi i32 [ %i.o, %bb.g ], [ 0, %bb.d ] ; 3 uses
  %.02864.i.idx = phi i64 [ %.02864.i.add, %bb.g ], [ 2, %bb.d ] ; 2 uses
  %i.g = ptrtoint ptr %memchr66.i to i64
  %i.h = trunc i64 %i.g to i32
  %i.i = sub i32 %i.h, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.j = icmp sgt i32 %i.i, 9
  br i1 %i.j, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.k = icmp sgt i32 %.02365.i, 214748364
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = mul nsw i32 %.02365.i, 10                ; 2 uses
  %i.m = sub nsw i32 2147483647, %i.i
  %i.n = icmp sgt i32 %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.i, %i.l                   ; 2 uses
  %.02864.i.add = add nuw nsw i64 %.02864.i.idx, 1 ; 3 uses
  %.ptr111 = getelementptr inbounds nuw i8, ptr %0, i64 %.02864.i.add
  %i.p = load i8, ptr %.ptr111, align 1, !tbaa !10
  %i.q = sext i8 %i.p to i32
  %memchr.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.q, i64 11) ; 2 uses
  %.not.i = icmp eq ptr %memchr.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.g, %.lr.ph.i
  %.028.lcssa.i.idx = phi i64 [ %.02864.i.add, %bb.g ], [ %.02864.i.idx, %.lr.ph.i ] ; 2 uses
  %.023.lcssa.i = phi i32 [ %i.o, %bb.g ], [ %.02365.i, %.lr.ph.i ] ; 2 uses
  %.028.lcssa.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.028.lcssa.i.idx ; 5 uses
  %i.r = icmp eq i64 %.028.lcssa.i.idx, 2
  %i.s = add i32 %.023.lcssa.i, -13
  %i.t = icmp ult i32 %i.s, -12
  %or.cond35.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond35.i, label %.thread, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit: ; preds = %._crit_edge.i
  %i.u = load i8, ptr %.028.lcssa.i.ptr, align 1, !tbaa !10
  %i.v = icmp eq i8 %i.u, 46
  br i1 %i.v, label %bb.h, label %.thread104

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit
  %.ptr114 = getelementptr inbounds nuw i8, ptr %.028.lcssa.i.ptr, i64 1
  %i.w = load i8, ptr %.ptr114, align 1, !tbaa !10
  %i.x = sext i8 %i.w to i32
  %memchr62.i38 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.x, i64 11) ; 2 uses
  %.not63.i39 = icmp eq ptr %memchr62.i38, null
  br i1 %.not63.i39, label %.thread, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.h, %bb.k
  %memchr66.i41 = phi ptr [ %memchr.i44, %bb.k ], [ %memchr62.i38, %bb.h ]
  %.02365.i42 = phi i32 [ %i.ag, %bb.k ], [ 0, %bb.h ] ; 3 uses
  %.02864.i43.idx = phi i64 [ %.02864.i43.add, %bb.k ], [ 1, %bb.h ] ; 2 uses
  %i.y = ptrtoint ptr %memchr66.i41 to i64
  %i.z = trunc i64 %i.y to i32
  %i.aa = sub i32 %i.z, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 9
  br i1 %i.ab, label %._crit_edge.i46, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i40
  %i.ac = icmp sgt i32 %.02365.i42, 214748364
  br i1 %i.ac, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = mul nsw i32 %.02365.i42, 10             ; 2 uses
  %i.ae = sub nsw i32 2147483647, %i.aa
  %i.af = icmp sgt i32 %i.ad, %i.ae
  br i1 %i.af, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.aa, %i.ad                ; 2 uses
  %.02864.i43.add = add nuw nsw i64 %.02864.i43.idx, 1 ; 3 uses
  %.ptr113 = getelementptr inbounds nuw i8, ptr %.028.lcssa.i.ptr, i64 %.02864.i43.add
  %i.ah = load i8, ptr %.ptr113, align 1, !tbaa !10
  %i.ai = sext i8 %i.ah to i32
  %memchr.i44 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.ai, i64 11) ; 2 uses
  %.not.i45 = icmp eq ptr %memchr.i44, null
  br i1 %.not.i45, label %._crit_edge.i46, label %.lr.ph.i40

._crit_edge.i46:                                  ; preds = %bb.k, %.lr.ph.i40
  %.028.lcssa.i47.idx = phi i64 [ %.02864.i43.add, %bb.k ], [ %.02864.i43.idx, %.lr.ph.i40 ] ; 2 uses
  %.023.lcssa.i48 = phi i32 [ %i.ag, %bb.k ], [ %.02365.i42, %.lr.ph.i40 ] ; 2 uses
  %.028.lcssa.i47.ptr = getelementptr inbounds nuw i8, ptr %.028.lcssa.i.ptr, i64 %.028.lcssa.i47.idx ; 3 uses
  %i.aj = icmp eq i64 %.028.lcssa.i47.idx, 1
  %i.ak = add i32 %.023.lcssa.i48, -6
  %i.al = icmp ult i32 %i.ak, -5
  %or.cond35.i49 = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond35.i49, label %.thread, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit51

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit51: ; preds = %._crit_edge.i46
  %i.am = load i8, ptr %.028.lcssa.i47.ptr, align 1, !tbaa !10
  %i.an = icmp eq i8 %i.am, 46
  br i1 %i.an, label %bb.l, label %.thread104

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %.028.lcssa.i47.ptr, i64 1
  %i.ap = call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi(ptr noundef %i.ao, i32 noundef 0, i32 noundef 6, ptr noundef %i.a) ; 2 uses
  %.not36 = icmp eq ptr %i.ap, null
  br i1 %.not36, label %.thread108, label %bb.u

.thread108:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread

bb.m:                                             ; preds = %bb.c
  %.ptr110 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aq = load i8, ptr %.ptr110, align 1, !tbaa !10
  %i.ar = sext i8 %i.aq to i32
  %memchr62.i52 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.ar, i64 11) ; 2 uses
  %.not63.i53 = icmp eq ptr %memchr62.i52, null
  br i1 %.not63.i53, label %.thread, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.m, %bb.p
  %memchr66.i55 = phi ptr [ %memchr.i58, %bb.p ], [ %memchr62.i52, %bb.m ]
  %.02365.i56 = phi i32 [ %i.ba, %bb.p ], [ 0, %bb.m ] ; 3 uses
  %.02864.i57.idx = phi i64 [ %.02864.i57.add, %bb.p ], [ 2, %bb.m ] ; 2 uses
  %i.as = ptrtoint ptr %memchr66.i55 to i64
  %i.at = trunc i64 %i.as to i32
  %i.au = sub i32 %i.at, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.av = icmp sgt i32 %i.au, 9
  br i1 %i.av, label %._crit_edge.i60, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i54
  %i.aw = icmp sgt i32 %.02365.i56, 214748364
  br i1 %i.aw, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = mul nsw i32 %.02365.i56, 10             ; 2 uses
  %i.ay = sub nsw i32 2147483647, %i.au
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = add nsw i32 %i.au, %i.ax                ; 2 uses
  %.02864.i57.add = add nuw nsw i64 %.02864.i57.idx, 1 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.02864.i57.add
  %i.bb = load i8, ptr %.ptr, align 1, !tbaa !10
  %i.bc = sext i8 %i.bb to i32
  %memchr.i58 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.bc, i64 11) ; 2 uses
  %.not.i59 = icmp eq ptr %memchr.i58, null
  br i1 %.not.i59, label %._crit_edge.i60, label %.lr.ph.i54

._crit_edge.i60:                                  ; preds = %bb.p, %.lr.ph.i54
  %.028.lcssa.i61.idx = phi i64 [ %.02864.i57.add, %bb.p ], [ %.02864.i57.idx, %.lr.ph.i54 ] ; 2 uses
  %.023.lcssa.i62 = phi i32 [ %i.ba, %bb.p ], [ %.02365.i56, %.lr.ph.i54 ] ; 2 uses
  %i.bd = icmp eq i64 %.028.lcssa.i61.idx, 2
  %i.be = add i32 %.023.lcssa.i62, -366
  %i.bf = icmp ult i32 %i.be, -365
  %or.cond35.i63 = select i1 %i.bd, i1 true, i1 %i.bf
  br i1 %or.cond35.i63, label %.thread, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit65

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit65: ; preds = %._crit_edge.i60
  %.028.lcssa.i61.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.028.lcssa.i61.idx
  store i32 0, ptr %1, align 8, !tbaa !28
  %i.bg = zext nneg i32 %.023.lcssa.i62 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !10
  br label %.thread104

bb.q:                                             ; preds = %bb.c
  %i.bi = sext i8 %i.d to i32
  %memchr62.i66 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.bi, i64 11) ; 2 uses
  %.not63.i67 = icmp eq ptr %memchr62.i66, null
  br i1 %.not63.i67, label %.thread, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.q, %bb.t
  %memchr66.i69 = phi ptr [ %memchr.i72, %bb.t ], [ %memchr62.i66, %bb.q ]
  %.02365.i70 = phi i32 [ %i.br, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %.02864.i71.idx = phi i64 [ %.02864.i71.add, %bb.t ], [ 1, %bb.q ] ; 2 uses
  %i.bj = ptrtoint ptr %memchr66.i69 to i64
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = sub i32 %i.bk, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 9
  br i1 %i.bm, label %._crit_edge.i74, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i68
  %i.bn = icmp sgt i32 %.02365.i70, 214748364
  br i1 %i.bn, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = mul nsw i32 %.02365.i70, 10             ; 2 uses
  %i.bp = sub nsw i32 2147483647, %i.bl
  %i.bq = icmp sgt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i32 %i.bl, %i.bo                ; 2 uses
  %.02864.i71.add = add nuw nsw i64 %.02864.i71.idx, 1 ; 3 uses
  %.ptr115 = getelementptr inbounds nuw i8, ptr %0, i64 %.02864.i71.add
  %i.bs = load i8, ptr %.ptr115, align 1, !tbaa !10
  %i.bt = sext i8 %i.bs to i32
  %memchr.i72 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.bt, i64 11) ; 2 uses
  %.not.i73 = icmp eq ptr %memchr.i72, null
  br i1 %.not.i73, label %._crit_edge.i74, label %.lr.ph.i68

._crit_edge.i74:                                  ; preds = %bb.t, %.lr.ph.i68
  %.028.lcssa.i75.idx = phi i64 [ %.02864.i71.add, %bb.t ], [ %.02864.i71.idx, %.lr.ph.i68 ] ; 2 uses
  %.023.lcssa.i76 = phi i32 [ %i.br, %bb.t ], [ %.02365.i70, %.lr.ph.i68 ] ; 2 uses
  %i.bu = icmp eq i64 %.028.lcssa.i75.idx, 1
  %i.bv = icmp ugt i32 %.023.lcssa.i76, 365
  %or.cond35.i77 = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond35.i77, label %.thread, label %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit79

_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit79: ; preds = %._crit_edge.i74
  %.028.lcssa.i75.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.028.lcssa.i75.idx
  store i32 1, ptr %1, align 8, !tbaa !28
  %i.bw = zext nneg i32 %.023.lcssa.i76 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !10
  br label %.thread104

bb.u:                                             ; preds = %bb.l
  store i32 2, ptr %1, align 8, !tbaa !28
  %2 = trunc nuw i32 %.023.lcssa.i to i8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %2, ptr %i.by, align 8, !tbaa !10
  %3 = trunc nuw nsw i32 %.023.lcssa.i48 to i8
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %3, ptr %4, align 1, !tbaa !10
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !15
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %i.ca, ptr %i.cb, align 2, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %.thread104

.thread104:                                       ; preds = %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit79, %bb.b, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit65, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit51, %bb.u
  %.2107 = phi ptr [ %i.ap, %bb.u ], [ %.028.lcssa.i.ptr, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit ], [ %.028.lcssa.i75.ptr, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit79 ], [ %0, %bb.b ], [ %.028.lcssa.i61.ptr, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit65 ], [ %.028.lcssa.i47.ptr, %_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi.exit51 ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 7200, ptr %i.cc, align 8, !tbaa !29
  %i.cd = load i8, ptr %.2107, align 1, !tbaa !10
  %i.ce = icmp eq i8 %i.cd, 47
  br i1 %i.ce, label %bb.v, label %.thread

bb.v:                                             ; preds = %.thread104
  %i.cf = getelementptr inbounds nuw i8, ptr %.2107, i64 1
  %i.cg = tail call fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_111ParseOffsetEPKciiiPl(ptr noundef nonnull %i.cf, i32 noundef -167, i32 noundef 167, i32 noundef 1, ptr noundef nonnull %i.cc)
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o, %bb.e, %bb.f, %bb.i, %bb.j, %bb.r, %bb.s, %bb.q, %._crit_edge.i74, %bb.m, %._crit_edge.i60, %bb.h, %._crit_edge.i46, %bb.d, %._crit_edge.i, %bb.a, %.thread108, %.thread104, %bb.v
  %.3 = phi ptr [ %i.cg, %bb.v ], [ %.2107, %.thread104 ], [ null, %.thread108 ], [ null, %bb.a ], [ null, %._crit_edge.i ], [ null, %bb.d ], [ null, %._crit_edge.i74 ], [ null, %bb.e ], [ null, %._crit_edge.i46 ], [ null, %bb.h ], [ null, %bb.q ], [ null, %bb.r ], [ null, %._crit_edge.i60 ], [ null, %bb.m ], [ null, %bb.i ], [ null, %bb.s ], [ null, %bb.j ], [ null, %bb.f ], [ null, %bb.o ], [ null, %bb.n ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_18ParseIntEPKciiPi(ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %0, i32 noundef range(i32 -167, 2) %1, i32 noundef range(i32 5, 366) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10
  %i.b = sext i8 %i.a to i32
  %memchr62 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.b, i64 11) ; 2 uses
  %.not63 = icmp eq ptr %memchr62, null
  br i1 %.not63, label %.thread49, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %memchr66 = phi ptr [ %memchr, %bb.d ], [ %memchr62, %bb.a ]
  %.02365 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.02864 = phi ptr [ %i.l, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %memchr66 to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = sub i32 %i.d, ptrtoint (ptr @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE to i32) ; 3 uses
  %i.f = icmp sgt i32 %i.e, 9
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp sgt i32 %.02365, 214748364
  br i1 %i.g, label %.thread49, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = mul nsw i32 %.02365, 10                  ; 2 uses
  %i.i = sub nsw i32 2147483647, %i.e
  %i.j = icmp sgt i32 %i.h, %i.i
  br i1 %i.j, label %.thread49, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.e, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02864, i64 1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %i.n = sext i8 %i.m to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052613time_internal4cctz12_GLOBAL__N_17kDigitsE, i32 %i.n, i64 11) ; 2 uses
  %.not = icmp eq ptr %memchr, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.028.lcssa = phi ptr [ %i.l, %bb.d ], [ %.02864, %.lr.ph ] ; 2 uses
  %.023.lcssa = phi i32 [ %i.k, %bb.d ], [ %.02365, %.lr.ph ] ; 3 uses
  %i.o = icmp eq ptr %.028.lcssa, %0
  %i.p = icmp slt i32 %.023.lcssa, %1
  %i.q = icmp sgt i32 %.023.lcssa, %2
  %i.r = or i1 %i.p, %i.q
  %or.cond35 = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond35, label %.thread49, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  store i32 %.023.lcssa, ptr %3, align 4, !tbaa !15
  br label %.thread49

.thread49:                                        ; preds = %bb.b, %bb.c, %bb.a, %._crit_edge, %bb.e
  %.3 = phi ptr [ null, %._crit_edge ], [ %.028.lcssa, %bb.e ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz15PosixTransition10DateFormatE", !5, i64 0}
!12 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz15PosixTransition4DateE", !11, i64 0, !5, i64 8}
!13 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz15PosixTransition4TimeE", !9, i64 0}
!14 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz15PosixTransitionE", !12, i64 0, !13, i64 16}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !23}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !9, i64 8, !5, i64 16}
!21 = !{!20, !18, i64 0}
!22 = !{!20, !9, i64 8}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"_ZTSN4absl12lts_2026052613time_internal4cctz13PosixTimeZoneE", !20, i64 0, !9, i64 32, !20, i64 40, !9, i64 72, !14, i64 80, !14, i64 104}
!25 = !{!24, !9, i64 32}
!26 = !{!24, !9, i64 72}
!27 = !{!9, !9, i64 0}
!28 = !{!14, !11, i64 0}
!29 = !{!14, !9, i64 16}
end_hunk_0
