Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/main?download=true
inline.NumInlined: 4107
inline.NumDeleted: 1182
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7doctest6detail18checkIfShouldThrowENS_10assertType4EnumE:bb.a
  %i.v = load atomic i32, ptr %.010.ptr.us18.12.i.i seq_cst, align 4
  %.010.ptr.us18.13.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3064
  %i.w = load atomic i32, ptr %.010.ptr.us18.13.i.i seq_cst, align 4
  %.010.ptr.us18.14.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3128
  %i.x = load atomic i32, ptr %.010.ptr.us18.14.i.i seq_cst, align 4
  %.010.ptr.us18.15.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3192
  %i.y = load atomic i32, ptr %.010.ptr.us18.15.i.i seq_cst, align 4
  %.010.ptr.us18.16.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3256
  %i.z = load atomic i32, ptr %.010.ptr.us18.16.i.i seq_cst, align 4
  %.010.ptr.us18.17.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3320
  %i.aa = load atomic i32, ptr %.010.ptr.us18.17.i.i seq_cst, align 4
  %.010.ptr.us18.18.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3384
  %i.ab = load atomic i32, ptr %.010.ptr.us18.18.i.i seq_cst, align 4
  %.010.ptr.us18.19.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3448
  %i.ac = load atomic i32, ptr %.010.ptr.us18.19.i.i seq_cst, align 4
  %.010.ptr.us18.20.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3512
  %i.ad = load atomic i32, ptr %.010.ptr.us18.20.i.i seq_cst, align 4
  %.010.ptr.us18.21.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3576
  %i.ae = load atomic i32, ptr %.010.ptr.us18.21.i.i seq_cst, align 4
  %.010.ptr.us18.22.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3640
  %i.af = load atomic i32, ptr %.010.ptr.us18.22.i.i seq_cst, align 4
  %.010.ptr.us18.23.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3704
  %i.ag = load atomic i32, ptr %.010.ptr.us18.23.i.i seq_cst, align 4
  %.010.ptr.us18.24.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3768
  %i.ah = load atomic i32, ptr %.010.ptr.us18.24.i.i seq_cst, align 4
  %.010.ptr.us18.25.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3832
  %i.ai = load atomic i32, ptr %.010.ptr.us18.25.i.i seq_cst, align 4
  %.010.ptr.us18.26.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3896
  %i.aj = load atomic i32, ptr %.010.ptr.us18.26.i.i seq_cst, align 4
  %.010.ptr.us18.27.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.ak = load atomic i32, ptr %.010.ptr.us18.27.i.i seq_cst, align 4
  %.010.ptr.us18.28.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4024
  %i.al = load atomic i32, ptr %.010.ptr.us18.28.i.i seq_cst, align 4
  %.010.ptr.us18.29.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4088
  %i.am = load atomic i32, ptr %.010.ptr.us18.29.i.i seq_cst, align 4
  %.010.ptr.us18.30.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4152
  %i.an = load atomic i32, ptr %.010.ptr.us18.30.i.i seq_cst, align 4
  %.010.ptr.us18.31.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4216
  %i.ao = load atomic i32, ptr %.010.ptr.us18.31.i.i seq_cst, align 4
  %i.ap = add i32 %i.j, %i.h
  %i.aq = add i32 %i.ap, %i.k
  %i.ar = add i32 %i.aq, %i.l
  %i.as = add i32 %i.ar, %i.m
  %i.at = add i32 %i.as, %i.n
  %i.au = add i32 %i.at, %i.o
  %i.av = add i32 %i.au, %i.p
  %i.aw = add i32 %i.av, %i.q
  %i.ax = add i32 %i.aw, %i.r
  %i.ay = add i32 %i.ax, %i.s
  %i.az = add i32 %i.ay, %i.t
  %i.ba = add i32 %i.az, %i.u
  %i.bb = add i32 %i.ba, %i.v
  %i.bc = add i32 %i.bb, %i.w
  %i.bd = add i32 %i.bc, %i.x
  %i.be = add i32 %i.bd, %i.y
  %i.bf = add i32 %i.be, %i.z
  %i.bg = add i32 %i.bf, %i.aa
  %i.bh = add i32 %i.bg, %i.ab
  %i.bi = add i32 %i.bh, %i.ac
  %i.bj = add i32 %i.bi, %i.ad
  %i.bk = add i32 %i.bj, %i.ae
  %i.bl = add i32 %i.bk, %i.af
  %i.bm = add i32 %i.bl, %i.ag
  %i.bn = add i32 %i.bm, %i.ah
  %i.bo = add i32 %i.bn, %i.ai
  %i.bp = add i32 %i.bo, %i.aj
  %i.bq = add i32 %i.bp, %i.ak
  %i.br = add i32 %i.bq, %i.al
  %i.bs = add i32 %i.br, %i.am
  %i.bt = add i32 %i.bs, %i.an
  %i.bu = add i32 %i.bt, %i.ao
  %i.bv = load ptr, ptr @_ZN7doctest6detail4g_csE, align 8, !tbaa !76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 100
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !90
  %.not3 = icmp slt i32 %i.bu, %i.bx
  br i1 %.not3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.a ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN7doctest6detail14throwExceptionEv() local_unnamed_addr #22 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN7doctest6detail4g_csE, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4488
  store atomic i8 0, ptr %i.b seq_cst, align 1
  %i.c = tail call ptr @__cxa_allocate_exception(i64 1) #49
  tail call void @__cxa_throw(ptr %i.c, ptr nonnull @_ZTIN7doctest6detail20TestFailureExceptionE, ptr null) #50
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #30

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZN7doctest6detail7Subcase12checkFiltersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #20 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN7doctest6detail4g_csE, align 8, !tbaa !76 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4376
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4384
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.k = load i32, ptr %i.j, align 8, !tbaa !97
  %i.l = sext i32 %i.k to i64
  %i.m = icmp ult i64 %i.i, %i.l
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.o = load i8, ptr %i.n, align 1, !tbaa !53
  %i.p = load ptr, ptr %0, align 8
  %i.q = icmp slt i8 %i.o, 0
  %spec.select.i = select i1 %i.q, ptr %i.p, ptr %0 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !100  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 109
  %i.v = load i8, ptr %i.u, align 1, !tbaa !101, !range !38, !noundef !39
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %.val3 = load ptr, ptr %i.t, align 8, !tbaa !103
  %i.x = getelementptr i8, ptr %i.s, i64 152
  %.val4 = load ptr, ptr %i.x, align 8, !tbaa !103
  %i.y = tail call fastcc noundef zeroext i1 @_ZN7doctest12_GLOBAL__N_110matchesAnyEPKcRKSt6vectorINS_6StringESaIS4_EEbb(ptr noundef %spec.select.i, ptr %.val3, ptr %.val4, i1 noundef zeroext true, i1 noundef zeroext %i.w)
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %.val = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.aa = getelementptr i8, ptr %i.s, i64 176
  %.val2 = load ptr, ptr %i.aa, align 8, !tbaa !103
  %i.ab = tail call fastcc noundef zeroext i1 @_ZN7doctest12_GLOBAL__N_110matchesAnyEPKcRKSt6vectorINS_6StringESaIS4_EEbb(ptr noundef %spec.select.i, ptr %.val, ptr %.val2, i1 noundef zeroext false, i1 noundef zeroext %i.w)
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc noundef zeroext i1 @_ZN7doctest12_GLOBAL__N_110matchesAnyEPKcRKSt6vectorINS_6StringESaIS4_EEbb(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.8.val, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %.0.val, %.8.val             ; 2 uses
  %or.cond = and i1 %i.a, %1
  br i1 %i.a, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !53      ; 3 uses
  %.not56.i = icmp eq i8 %i.b, 0
  br i1 %.not56.i, label %.preheader.i.us, label %.lr.ph.split

.preheader.i.us:                                  ; preds = %.lr.ph, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.loopexit.us
  %.sroa.01.037.us = phi ptr [ %i.i, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.loopexit.us ], [ %.0.val, %.lr.ph ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.01.037.us, i64 23
  %i.d = load i8, ptr %i.c, align 1, !tbaa !53
  %i.e = load ptr, ptr %.sroa.01.037.us, align 8
  %i.f = icmp slt i8 %i.d, 0
  %spec.select.i.i.us = select i1 %i.f, ptr %i.e, ptr %.sroa.01.037.us
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.i.us
  %.3.i.us = phi ptr [ %i.h, %bb.b ], [ %spec.select.i.i.us, %.preheader.i.us ] ; 2 uses
  %i.g = load i8, ptr %.3.i.us, align 1, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %.3.i.us, i64 1
  switch i8 %i.g, label %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.loopexit.us [
    i8 42, label %bb.b
    i8 0, label %.thread
  ]

_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.loopexit.us: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.037.us, i64 24 ; 2 uses
  %.not11.us = icmp eq ptr %i.i, %.8.val
  br i1 %.not11.us, label %.thread, label %.preheader.i.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %2, label %.lr.ph.i.us, label %.lr.ph.i

.lr.ph.i.us:                                      ; preds = %.lr.ph.split, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.us43
  %.sroa.01.037.us38 = phi ptr [ %i.af, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.us43 ], [ %.0.val, %.lr.ph.split ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.037.us38, i64 23
  %i.k = load i8, ptr %i.j, align 1, !tbaa !53
  %i.l = load ptr, ptr %.sroa.01.037.us38, align 8
  %i.m = icmp slt i8 %i.k, 0
  %spec.select.i.i.us39 = select i1 %i.m, ptr %i.l, ptr %.sroa.01.037.us38 ; 2 uses
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %bb.d, %.lr.ph.i.us
  %i.n = phi i8 [ %i.r, %bb.d ], [ %i.b, %.lr.ph.i.us ] ; 2 uses
  %.03358.us.i.us = phi ptr [ %i.p, %bb.d ], [ %spec.select.i.i.us39, %.lr.ph.i.us ] ; 3 uses
  %.03557.us.i.us = phi ptr [ %i.q, %bb.d ], [ %0, %.lr.ph.i.us ] ; 2 uses
  %i.o = load i8, ptr %.03358.us.i.us, align 1, !tbaa !53 ; 3 uses
  %.not42.us.i.us = icmp eq i8 %i.o, 42
  br i1 %.not42.us.i.us, label %.lr.ph71.split.us.i.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i.us
  %.not47.us.i.us = icmp eq i8 %i.o, %i.n
  %.not48.old.us.i.us = icmp eq i8 %i.o, 63
  %or.cond49.us.i.us = or i1 %.not47.us.i.us, %.not48.old.us.i.us
  br i1 %or.cond49.us.i.us, label %bb.d, label %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.us43

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.03358.us.i.us, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.03557.us.i.us, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !53    ; 2 uses
  %.not.us.i.us = icmp eq i8 %i.r, 0
  br i1 %.not.us.i.us, label %.preheader.i.us40.preheader, label %.lr.ph.split.us.i.us, !llvm.loop !428

.lr.ph71.split.us.i.usthread-pre-split:           ; preds = %bb.j
  %.pr = load i8, ptr %.2.us.i.us, align 1, !tbaa !53
  br label %.lr.ph71.split.us.i.us

.lr.ph71.split.us.i.us:                           ; preds = %.lr.ph.split.us.i.us, %.lr.ph71.split.us.i.usthread-pre-split
  %i.s = phi i8 [ %.pr, %.lr.ph71.split.us.i.usthread-pre-split ], [ 42, %.lr.ph.split.us.i.us ] ; 3 uses
  %i.t = phi i8 [ %i.ac, %.lr.ph71.split.us.i.usthread-pre-split ], [ %i.n, %.lr.ph.split.us.i.us ]
  %.070.us.i.us = phi ptr [ %.1.us.i.us, %.lr.ph71.split.us.i.usthread-pre-split ], [ %spec.select.i.i.us39, %.lr.ph.split.us.i.us ] ; 3 uses
  %.03069.us.i.us = phi ptr [ %.131.us.i.us, %.lr.ph71.split.us.i.usthread-pre-split ], [ %0, %.lr.ph.split.us.i.us ] ; 3 uses
  %.13468.us.i.us = phi ptr [ %.2.us.i.us, %.lr.ph71.split.us.i.usthread-pre-split ], [ %.03358.us.i.us, %.lr.ph.split.us.i.us ] ; 2 uses
  %.13667.us.i.us = phi ptr [ %.237.us.i.us, %.lr.ph71.split.us.i.usthread-pre-split ], [ %.03557.us.i.us, %.lr.ph.split.us.i.us ] ; 3 uses
  %i.u = icmp eq i8 %i.s, 42
  br i1 %i.u, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph71.split.us.i.us
  %i.v = icmp eq i8 %i.s, %i.t
  %.old.us.i.us = icmp eq i8 %i.s, 63
  %or.cond51.us.i.us = or i1 %i.v, %.old.us.i.us
  br i1 %or.cond51.us.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.03069.us.i.us, i64 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.13468.us.i.us, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.13667.us.i.us, i64 1
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph71.split.us.i.us
  %i.z = getelementptr inbounds nuw i8, ptr %.13468.us.i.us, i64 1 ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !53
  %.not45.us.i.us = icmp eq i8 %i.aa, 0
  br i1 %.not45.us.i.us, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.13667.us.i.us, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f
  %.237.us.i.us = phi ptr [ %.13667.us.i.us, %bb.i ], [ %i.y, %bb.g ], [ %.03069.us.i.us, %bb.f ] ; 2 uses
  %.2.us.i.us = phi ptr [ %i.z, %bb.i ], [ %i.x, %bb.g ], [ %.070.us.i.us, %bb.f ] ; 3 uses
  %.131.us.i.us = phi ptr [ %i.ab, %bb.i ], [ %.03069.us.i.us, %bb.g ], [ %i.w, %bb.f ]
  %.1.us.i.us = phi ptr [ %i.z, %bb.i ], [ %.070.us.i.us, %bb.g ], [ %.070.us.i.us, %bb.f ]
  %i.ac = load i8, ptr %.237.us.i.us, align 1, !tbaa !53 ; 2 uses
  %.not43.us.i.us = icmp eq i8 %i.ac, 0
  br i1 %.not43.us.i.us, label %.preheader.i.us40.preheader, label %.lr.ph71.split.us.i.usthread-pre-split, !llvm.loop !429

.preheader.i.us40.preheader:                      ; preds = %bb.d, %bb.j
  %.3.i.us42.ph = phi ptr [ %.2.us.i.us, %bb.j ], [ %i.p, %bb.d ]
  br label %.preheader.i.us40

.preheader.i.us40:                                ; preds = %.preheader.i.us40.preheader, %.preheader.i.us40
  %.3.i.us42 = phi ptr [ %i.ae, %.preheader.i.us40 ], [ %.3.i.us42.ph, %.preheader.i.us40.preheader ] ; 2 uses
  %i.ad = load i8, ptr %.3.i.us42, align 1, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %.3.i.us42, i64 1
  switch i8 %i.ad, label %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.us43 [
    i8 42, label %.preheader.i.us40
    i8 0, label %.thread
  ]

_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.us43: ; preds = %bb.c, %.preheader.i.us40
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.01.037.us38, i64 24 ; 2 uses
  %.not11.us44 = icmp eq ptr %i.af, %.8.val
  br i1 %.not11.us44, label %.thread, label %.lr.ph.i.us

.lr.ph.i:                                         ; preds = %.lr.ph.split, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread
  %.sroa.01.037 = phi ptr [ %i.bl, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread ], [ %.0.val, %.lr.ph.split ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 23
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !53
  %i.ai = load ptr, ptr %.sroa.01.037, align 8
  %i.aj = icmp slt i8 %i.ah, 0
  %spec.select.i.i = select i1 %i.aj, ptr %i.ai, ptr %.sroa.01.037 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.l
  %i.ak = phi i8 [ %i.as, %bb.l ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %.03358.i = phi ptr [ %i.aq, %bb.l ], [ %spec.select.i.i, %.lr.ph.i ] ; 3 uses
  %.03557.i = phi ptr [ %i.ar, %bb.l ], [ %0, %.lr.ph.i ] ; 2 uses
  %i.al = load i8, ptr %.03358.i, align 1, !tbaa !53 ; 3 uses
  %.not42.i = icmp eq i8 %i.al, 42
  br i1 %.not42.i, label %.lr.ph71.split.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.i
  %i.am = sext i8 %i.al to i32
  %i.an = tail call i32 @tolower(i32 noundef %i.am) #52
  %i.ao = sext i8 %i.ak to i32
  %i.ap = tail call i32 @tolower(i32 noundef %i.ao) #52
  %.not46.i = icmp eq i32 %i.an, %i.ap
  %.not48.i = icmp eq i8 %i.al, 63
  %or.cond.i = or i1 %.not48.i, %.not46.i
  br i1 %or.cond.i, label %bb.l, label %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.03358.i, i64 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.03557.i, i64 1 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !53  ; 2 uses
  %.not.i = icmp eq i8 %i.as, 0
  br i1 %.not.i, label %.preheader.i.preheader, label %.lr.ph.split.i, !llvm.loop !428

.lr.ph71.split.ithread-pre-split:                 ; preds = %bb.r
  %.pr83 = load i8, ptr %.2.i, align 1, !tbaa !53
  br label %.lr.ph71.split.i

.lr.ph71.split.i:                                 ; preds = %.lr.ph.split.i, %.lr.ph71.split.ithread-pre-split
  %i.at = phi i8 [ %.pr83, %.lr.ph71.split.ithread-pre-split ], [ 42, %.lr.ph.split.i ] ; 3 uses
  %i.au = phi i8 [ %i.bi, %.lr.ph71.split.ithread-pre-split ], [ %i.ak, %.lr.ph.split.i ]
  %.070.i = phi ptr [ %.1.i, %.lr.ph71.split.ithread-pre-split ], [ %spec.select.i.i, %.lr.ph.split.i ] ; 3 uses
  %.03069.i = phi ptr [ %.131.i, %.lr.ph71.split.ithread-pre-split ], [ %0, %.lr.ph.split.i ] ; 3 uses
  %.13468.i = phi ptr [ %.2.i, %.lr.ph71.split.ithread-pre-split ], [ %.03358.i, %.lr.ph.split.i ] ; 2 uses
  %.13667.i = phi ptr [ %.237.i, %.lr.ph71.split.ithread-pre-split ], [ %.03557.i, %.lr.ph.split.i ] ; 3 uses
  %i.av = icmp eq i8 %i.at, 42
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph71.split.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.13468.i, i64 1 ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !53
  %.not45.i = icmp eq i8 %i.ax, 0
  br i1 %.not45.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %.13667.i, i64 1
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph71.split.i
  %i.az = sext i8 %i.at to i32
  %i.ba = tail call i32 @tolower(i32 noundef %i.az) #52
  %i.bb = sext i8 %i.au to i32
  %i.bc = tail call i32 @tolower(i32 noundef %i.bb) #52
  %i.bd = icmp eq i32 %i.ba, %i.bc
  %i.be = icmp eq i8 %i.at, 63
  %or.cond50.i = or i1 %i.be, %i.bd
  br i1 %or.cond50.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.13468.i, i64 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.13667.i, i64 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %.03069.i, i64 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n
  %.237.i = phi ptr [ %.13667.i, %bb.n ], [ %i.bg, %bb.p ], [ %.03069.i, %bb.q ] ; 2 uses
  %.2.i = phi ptr [ %i.aw, %bb.n ], [ %i.bf, %bb.p ], [ %.070.i, %bb.q ] ; 3 uses
  %.131.i = phi ptr [ %i.ay, %bb.n ], [ %.03069.i, %bb.p ], [ %i.bh, %bb.q ]
  %.1.i = phi ptr [ %i.aw, %bb.n ], [ %.070.i, %bb.p ], [ %.070.i, %bb.q ]
  %i.bi = load i8, ptr %.237.i, align 1, !tbaa !53 ; 2 uses
  %.not43.i = icmp eq i8 %i.bi, 0
  br i1 %.not43.i, label %.preheader.i.preheader, label %.lr.ph71.split.ithread-pre-split, !llvm.loop !429

.preheader.i.preheader:                           ; preds = %bb.l, %bb.r
  %.3.i.ph = phi ptr [ %.2.i, %bb.r ], [ %i.aq, %bb.l ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.3.i = phi ptr [ %i.bk, %.preheader.i ], [ %.3.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.bj = load i8, ptr %.3.i, align 1, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  switch i8 %i.bj, label %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread [
    i8 42, label %.preheader.i
    i8 0, label %.thread
  ]

_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread: ; preds = %bb.k, %.preheader.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.037, i64 24 ; 2 uses
  %.not11 = icmp eq ptr %i.bl, %.8.val
  br i1 %.not11, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread, %bb.m, %.preheader.i, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.us43, %bb.h, %.preheader.i.us40, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.loopexit.us, %bb.b, %bb.a
  %.3 = phi i1 [ %or.cond, %bb.a ], [ true, %bb.h ], [ true, %.preheader.i ], [ true, %.preheader.i.us40 ], [ false, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.loopexit.us ], [ false, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread.us43 ], [ true, %bb.b ], [ true, %bb.m ], [ false, %_ZN7doctest12_GLOBAL__N_17wildcmpEPKcS2_b.exit.thread ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7doctest6detail7SubcaseC2ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41) initializes((23, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !53
end_hunk_0
