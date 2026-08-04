inline.NumInlined: 353
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN12SubAllocator14GlueFreeBlocksEv:bb.a
  store ptr %i.co, ptr %.1.lcssa, align 8, !tbaa !31
  store ptr %.1.lcssa, ptr %i.cn, align 8, !tbaa !31
  %i.cp = load ptr, ptr %i.f, align 1, !tbaa !39  ; 2 uses
  %.not39 = icmp eq ptr %i.cp, %1
  br i1 %.not39, label %._crit_edge59, label %bb.g, !llvm.loop !47

._crit_edge59:                                    ; preds = %._crit_edge55._crit_edge, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ModelPPMC2Ev(ptr noundef nonnull align 8 dereferenceable(19648) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 19112
  tail call void @_ZN12SubAllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(536) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ModelPPM16RestartModelRareEv(ptr noundef nonnull align 8 dereferenceable(19648) initializes((1664, 1920), (19120, 19158), (19286, 19287), (19296, 19632), (19640, 19648)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 19112 ; 3 uses
  tail call void @_ZN12SubAllocator16InitSubAllocatorEv(ptr noundef nonnull align 8 dereferenceable(536) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1652 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !48   ; 2 uses
  %i.e = tail call i32 @llvm.smin.i32(i32 %i.d, i32 12)
  %spec.select = xor i32 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1660 ; 2 uses
  store i32 %spec.select, ptr %i.f, align 4, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19304 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 19296 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -20 ; 2 uses
  store ptr %i.k, ptr %i.g, align 8, !tbaa !26
  br label %_ZN12SubAllocator12AllocContextEv.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 19312 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 3 uses
  %.not3.i = icmp eq ptr %i.m, null
  br i1 %.not3.i, label %_ZN12SubAllocator12AllocContextEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31
  store ptr %i.n, ptr %i.l, align 8, !tbaa !31
  br label %_ZN12SubAllocator12AllocContextEv.exit.thread

_ZN12SubAllocator12AllocContextEv.exit.thread:    ; preds = %bb.b, %bb.d
  %.0.i.ph = phi ptr [ %i.m, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr %.0.i.ph, ptr %i.o, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  store ptr %.0.i.ph, ptr %i.p, align 8, !tbaa !55
  br label %bb.f

_ZN12SubAllocator12AllocContextEv.exit:           ; preds = %bb.c
  %i.q = tail call noundef ptr @_ZN12SubAllocator14AllocUnitsRareEi(ptr noundef nonnull align 8 dereferenceable(536) %i.b, i32 noundef 0) ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1624
  store ptr %i.q, ptr %i.r, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 2 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !55
  %i.t = icmp eq ptr %i.q, null
  br i1 %i.t, label %bb.e, label %_ZN12SubAllocator12AllocContextEv.exit._crit_edge

_ZN12SubAllocator12AllocContextEv.exit._crit_edge: ; preds = %_ZN12SubAllocator12AllocContextEv.exit
  %.pre = load i32, ptr %i.c, align 4, !tbaa !48
  br label %bb.f

bb.e:                                             ; preds = %_ZN12SubAllocator12AllocContextEv.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

bb.f:                                             ; preds = %_ZN12SubAllocator12AllocContextEv.exit._crit_edge, %_ZN12SubAllocator12AllocContextEv.exit.thread
  %i.v = phi i32 [ %i.d, %_ZN12SubAllocator12AllocContextEv.exit.thread ], [ %.pre, %_ZN12SubAllocator12AllocContextEv.exit._crit_edge ]
  %i.w = phi ptr [ %i.p, %_ZN12SubAllocator12AllocContextEv.exit.thread ], [ %i.s, %_ZN12SubAllocator12AllocContextEv.exit._crit_edge ] ; 3 uses
  %.0.i31 = phi ptr [ %.0.i.ph, %_ZN12SubAllocator12AllocContextEv.exit.thread ], [ %i.q, %_ZN12SubAllocator12AllocContextEv.exit._crit_edge ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i31, i64 12
  store ptr null, ptr %i.x, align 1, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store i32 %i.v, ptr %i.y, align 8, !tbaa !60
  store i16 256, ptr %.0.i31, align 1, !tbaa !61
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i31, i64 2
  store i16 257, ptr %i.z, align 1, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 19285
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !27  ; 2 uses
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 19312
  %i.ae = zext i8 %i.ab to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 4 uses
  %.not.i29 = icmp eq ptr %i.ag, null
  br i1 %.not.i29, label %bb.g, label %_ZN12SubAllocator10AllocUnitsEi.exit.thread

_ZN12SubAllocator10AllocUnitsEi.exit.thread:      ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !31
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ag, ptr %i.aj, align 1, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !62
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !24  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 19120
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !27
  %i.ap = zext i8 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq ; 3 uses
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !24
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !26
  %.not8.i = icmp ugt ptr %i.ar, %i.as
  br i1 %.not8.i, label %bb.h, label %_ZN12SubAllocator10AllocUnitsEi.exit

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %i.an, align 1, !tbaa !27
  %i.au = zext i8 %i.at to i64
  %.neg.i = mul nsw i64 %i.au, -20
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %.neg.i
  store ptr %i.av, ptr %i.i, align 8, !tbaa !24
  %i.aw = tail call noundef ptr @_ZN12SubAllocator14AllocUnitsRareEi(ptr noundef nonnull align 8 dereferenceable(536) %i.b, i32 noundef %i.ac)
  br label %_ZN12SubAllocator10AllocUnitsEi.exit

_ZN12SubAllocator10AllocUnitsEi.exit:             ; preds = %bb.g, %bb.h
  %.1.i = phi ptr [ %i.al, %bb.g ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store ptr %.1.i, ptr %i.ay, align 1, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1632
  store ptr %.1.i, ptr %i.az, align 8, !tbaa !62
  %i.ba = icmp eq ptr %.1.i, null
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN12SubAllocator10AllocUnitsEi.exit
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bb, align 8, !tbaa !56
  tail call void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

bb.j:                                             ; preds = %_ZN12SubAllocator10AllocUnitsEi.exit.thread, %_ZN12SubAllocator10AllocUnitsEi.exit
  %i.bc = load i32, ptr %i.f, align 4, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2689
  store i8 0, ptr %i.be, align 1, !tbaa !64
  %i.bf = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 6 uses
  br label %bb.k

.preheader36:                                     ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2692
  br label %.preheader35

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.1, %bb.k ] ; 6 uses
  %i.bi = trunc i64 %indvars.iv to i8
  %i.bj = load ptr, ptr %i.bg, align 1, !tbaa !27
  %i.bk = getelementptr inbounds nuw [10 x i8], ptr %i.bj, i64 %indvars.iv
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !65
  %i.bl = load ptr, ptr %i.bg, align 1, !tbaa !27
  %i.bm = getelementptr inbounds nuw [10 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 1, ptr %i.bn, align 1, !tbaa !67
  %i.bo = load ptr, ptr %i.bg, align 1, !tbaa !27
  %i.bp = getelementptr inbounds nuw [10 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store ptr null, ptr %i.bq, align 1, !tbaa !68
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.br = trunc i64 %indvars.iv.next to i8
  %i.bs = load ptr, ptr %i.bg, align 1, !tbaa !27
  %i.bt = getelementptr inbounds nuw [10 x i8], ptr %i.bs, i64 %indvars.iv.next
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !65
  %i.bu = load ptr, ptr %i.bg, align 1, !tbaa !27
  %i.bv = getelementptr inbounds nuw [10 x i8], ptr %i.bu, i64 %indvars.iv.next
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 1, ptr %i.bw, align 1, !tbaa !67
  %i.bx = load ptr, ptr %i.bg, align 1, !tbaa !27
  %i.by = getelementptr inbounds nuw [10 x i8], ptr %i.bx, i64 %indvars.iv.next
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store ptr null, ptr %i.bz, align 1, !tbaa !68
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.preheader36, label %bb.k, !llvm.loop !69

.preheader35:                                     ; preds = %.preheader36, %.preheader35
  %indvars.iv51 = phi i64 [ 0, %.preheader36 ], [ %indvars.iv.next52, %.preheader35 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [128 x i8], ptr %i.bh, i64 %indvars.iv51 ; 64 uses
  %i.cb = trunc i64 %indvars.iv51 to i32
  %i.cc = add i32 %i.cb, 2                        ; 8 uses
  %1 = udiv i32 15581, %i.cc
  %2 = trunc nuw nsw i32 %1 to i16
  %3 = sub nuw nsw i16 16384, %2                  ; 8 uses
  store i16 %3, ptr %i.ca, align 4, !tbaa !70
  %4 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i16 %3, ptr %4, align 4, !tbaa !70
  %5 = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store i16 %3, ptr %5, align 4, !tbaa !70
  %6 = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store i16 %3, ptr %6, align 4, !tbaa !70
  %7 = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store i16 %3, ptr %7, align 4, !tbaa !70
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store i16 %3, ptr %i.cd, align 4, !tbaa !70
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  store i16 %3, ptr %i.ce, align 4, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  store i16 %3, ptr %i.cf, align 4, !tbaa !70
  %i.cg = udiv i32 7999, %i.cc
  %8 = trunc nuw nsw i32 %i.cg to i16
  %9 = sub nuw nsw i16 16384, %8                  ; 8 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !70
  %11 = getelementptr inbounds nuw i8, ptr %i.ca, i64 18
  store i16 %9, ptr %11, align 2, !tbaa !70
  %12 = getelementptr inbounds nuw i8, ptr %i.ca, i64 34
  store i16 %9, ptr %12, align 2, !tbaa !70
  %13 = getelementptr inbounds nuw i8, ptr %i.ca, i64 50
  store i16 %9, ptr %13, align 2, !tbaa !70
  %14 = getelementptr inbounds nuw i8, ptr %i.ca, i64 66
  store i16 %9, ptr %14, align 2, !tbaa !70
  %15 = getelementptr inbounds nuw i8, ptr %i.ca, i64 82
  store i16 %9, ptr %15, align 2, !tbaa !70
  %16 = getelementptr inbounds nuw i8, ptr %i.ca, i64 98
  store i16 %9, ptr %16, align 2, !tbaa !70
  %17 = getelementptr inbounds nuw i8, ptr %i.ca, i64 114
  store i16 %9, ptr %17, align 2, !tbaa !70
  %i.ch = udiv i32 22975, %i.cc
  %18 = trunc nuw nsw i32 %i.ch to i16
  %19 = sub nuw nsw i16 16384, %18                ; 8 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i16 %19, ptr %20, align 8, !tbaa !70
  %21 = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  store i16 %19, ptr %21, align 8, !tbaa !70
  %22 = getelementptr inbounds nuw i8, ptr %i.ca, i64 36
  store i16 %19, ptr %22, align 8, !tbaa !70
  %23 = getelementptr inbounds nuw i8, ptr %i.ca, i64 52
  store i16 %19, ptr %23, align 8, !tbaa !70
  %24 = getelementptr inbounds nuw i8, ptr %i.ca, i64 68
  store i16 %19, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds nuw i8, ptr %i.ca, i64 84
  store i16 %19, ptr %25, align 8, !tbaa !70
  %26 = getelementptr inbounds nuw i8, ptr %i.ca, i64 100
  store i16 %19, ptr %26, align 8, !tbaa !70
  %27 = getelementptr inbounds nuw i8, ptr %i.ca, i64 116
  store i16 %19, ptr %27, align 8, !tbaa !70
  %i.ci = udiv i32 18675, %i.cc
  %28 = trunc nuw nsw i32 %i.ci to i16
  %29 = sub nuw nsw i16 16384, %28                ; 8 uses
  %30 = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  store i16 %29, ptr %30, align 2, !tbaa !70
  %31 = getelementptr inbounds nuw i8, ptr %i.ca, i64 22
  store i16 %29, ptr %31, align 2, !tbaa !70
  %32 = getelementptr inbounds nuw i8, ptr %i.ca, i64 38
  store i16 %29, ptr %32, align 2, !tbaa !70
  %33 = getelementptr inbounds nuw i8, ptr %i.ca, i64 54
  store i16 %29, ptr %33, align 2, !tbaa !70
  %34 = getelementptr inbounds nuw i8, ptr %i.ca, i64 70
  store i16 %29, ptr %34, align 2, !tbaa !70
  %35 = getelementptr inbounds nuw i8, ptr %i.ca, i64 86
  store i16 %29, ptr %35, align 2, !tbaa !70
  %36 = getelementptr inbounds nuw i8, ptr %i.ca, i64 102
  store i16 %29, ptr %36, align 2, !tbaa !70
  %37 = getelementptr inbounds nuw i8, ptr %i.ca, i64 118
  store i16 %29, ptr %37, align 2, !tbaa !70
  %i.cj = udiv i32 25761, %i.cc
  %38 = trunc nuw nsw i32 %i.cj to i16
  %39 = sub nuw nsw i16 16384, %38                ; 8 uses
  %40 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i16 %39, ptr %40, align 4, !tbaa !70
  %41 = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i16 %39, ptr %41, align 4, !tbaa !70
  %42 = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store i16 %39, ptr %42, align 4, !tbaa !70
  %43 = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  store i16 %39, ptr %43, align 4, !tbaa !70
  %44 = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  store i16 %39, ptr %44, align 4, !tbaa !70
  %45 = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  store i16 %39, ptr %45, align 4, !tbaa !70
  %46 = getelementptr inbounds nuw i8, ptr %i.ca, i64 104
  store i16 %39, ptr %46, align 4, !tbaa !70
  %47 = getelementptr inbounds nuw i8, ptr %i.ca, i64 120
  store i16 %39, ptr %47, align 4, !tbaa !70
  %i.ck = udiv i32 23228, %i.cc
  %48 = trunc nuw nsw i32 %i.ck to i16
  %49 = sub nuw nsw i16 16384, %48                ; 8 uses
  %50 = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  store i16 %49, ptr %50, align 2, !tbaa !70
  %51 = getelementptr inbounds nuw i8, ptr %i.ca, i64 26
  store i16 %49, ptr %51, align 2, !tbaa !70
  %52 = getelementptr inbounds nuw i8, ptr %i.ca, i64 42
  store i16 %49, ptr %52, align 2, !tbaa !70
  %53 = getelementptr inbounds nuw i8, ptr %i.ca, i64 58
  store i16 %49, ptr %53, align 2, !tbaa !70
  %54 = getelementptr inbounds nuw i8, ptr %i.ca, i64 74
  store i16 %49, ptr %54, align 2, !tbaa !70
  %55 = getelementptr inbounds nuw i8, ptr %i.ca, i64 90
  store i16 %49, ptr %55, align 2, !tbaa !70
  %56 = getelementptr inbounds nuw i8, ptr %i.ca, i64 106
  store i16 %49, ptr %56, align 2, !tbaa !70
  %57 = getelementptr inbounds nuw i8, ptr %i.ca, i64 122
  store i16 %49, ptr %57, align 2, !tbaa !70
  %i.cl = udiv i32 26162, %i.cc
  %i.cm = trunc nuw nsw i32 %i.cl to i16
  %58 = sub nuw nsw i16 16384, %i.cm              ; 8 uses
  %59 = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i16 %58, ptr %59, align 8, !tbaa !70
  %60 = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  store i16 %58, ptr %60, align 8, !tbaa !70
  %61 = getelementptr inbounds nuw i8, ptr %i.ca, i64 44
  store i16 %58, ptr %61, align 8, !tbaa !70
  %62 = getelementptr inbounds nuw i8, ptr %i.ca, i64 60
  store i16 %58, ptr %62, align 8, !tbaa !70
  %63 = getelementptr inbounds nuw i8, ptr %i.ca, i64 76
  store i16 %58, ptr %63, align 8, !tbaa !70
  %64 = getelementptr inbounds nuw i8, ptr %i.ca, i64 92
  store i16 %58, ptr %64, align 8, !tbaa !70
  %65 = getelementptr inbounds nuw i8, ptr %i.ca, i64 108
  store i16 %58, ptr %65, align 8, !tbaa !70
  %66 = getelementptr inbounds nuw i8, ptr %i.ca, i64 124
  store i16 %58, ptr %66, align 8, !tbaa !70
  %67 = udiv i32 24657, %i.cc
  %i.cn = trunc nuw nsw i32 %67 to i16
  %68 = sub nuw nsw i16 16384, %i.cn              ; 8 uses
  %69 = getelementptr inbounds nuw i8, ptr %i.ca, i64 14
  store i16 %68, ptr %69, align 2, !tbaa !70
  %70 = getelementptr inbounds nuw i8, ptr %i.ca, i64 30
  store i16 %68, ptr %70, align 2, !tbaa !70
  %71 = getelementptr inbounds nuw i8, ptr %i.ca, i64 46
  store i16 %68, ptr %71, align 2, !tbaa !70
  %72 = getelementptr inbounds nuw i8, ptr %i.ca, i64 62
  store i16 %68, ptr %72, align 2, !tbaa !70
  %73 = getelementptr inbounds nuw i8, ptr %i.ca, i64 78
  store i16 %68, ptr %73, align 2, !tbaa !70
  %74 = getelementptr inbounds nuw i8, ptr %i.ca, i64 94
  store i16 %68, ptr %74, align 2, !tbaa !70
  %75 = getelementptr inbounds nuw i8, ptr %i.ca, i64 110
  store i16 %68, ptr %75, align 2, !tbaa !70
  %76 = getelementptr inbounds nuw i8, ptr %i.ca, i64 126
  store i16 %68, ptr %76, align 2, !tbaa !70
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 128
  br i1 %exitcond54.not, label %.preheader33, label %.preheader35, !llvm.loop !71

.preheader33:                                     ; preds = %.preheader35
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader33, %.preheader
  %indvars.iv59 = phi i64 [ 0, %.preheader33 ], [ %indvars.iv.next60, %.preheader ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.co, i64 %indvars.iv59 ; 48 uses
  %i.cq = trunc i64 %indvars.iv59 to i16
  %.tr.i = mul nuw nsw i16 %i.cq, 40
  %i.cr = add nuw nsw i16 %.tr.i, 80              ; 16 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  store i8 3, ptr %i.cs, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.cp, align 1, !tbaa !73
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 3
  store i8 4, ptr %i.ct, align 4, !tbaa !74
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 6
  store i8 3, ptr %i.cv, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.cu, align 1, !tbaa !73
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 7
  store i8 4, ptr %i.cw, align 8, !tbaa !74
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 10
  store i8 3, ptr %i.cy, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.cx, align 1, !tbaa !73
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 11
  store i8 4, ptr %i.cz, align 4, !tbaa !74
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 14
  store i8 3, ptr %i.db, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.da, align 1, !tbaa !73
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 15
  store i8 4, ptr %i.dc, align 8, !tbaa !74
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 18
  store i8 3, ptr %i.de, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.dd, align 1, !tbaa !73
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 19
  store i8 4, ptr %i.df, align 4, !tbaa !74
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 22
  store i8 3, ptr %i.dh, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.dg, align 1, !tbaa !73
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 23
  store i8 4, ptr %i.di, align 8, !tbaa !74
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 26
  store i8 3, ptr %i.dk, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.dj, align 1, !tbaa !73
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cp, i64 27
  store i8 4, ptr %i.dl, align 4, !tbaa !74
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cp, i64 30
  store i8 3, ptr %i.dn, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.dm, align 1, !tbaa !73
  %i.do = getelementptr inbounds nuw i8, ptr %i.cp, i64 31
  store i8 4, ptr %i.do, align 8, !tbaa !74
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 34
  store i8 3, ptr %i.dq, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.dp, align 1, !tbaa !73
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cp, i64 35
  store i8 4, ptr %i.dr, align 4, !tbaa !74
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cp, i64 38
  store i8 3, ptr %i.dt, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.ds, align 1, !tbaa !73
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 39
  store i8 4, ptr %i.du, align 8, !tbaa !74
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cp, i64 42
  store i8 3, ptr %i.dw, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.dv, align 1, !tbaa !73
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cp, i64 43
  store i8 4, ptr %i.dx, align 4, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 44
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cp, i64 46
  store i8 3, ptr %i.dz, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.dy, align 1, !tbaa !73
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cp, i64 47
  store i8 4, ptr %i.ea, align 8, !tbaa !74
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cp, i64 50
  store i8 3, ptr %i.ec, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.eb, align 1, !tbaa !73
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cp, i64 51
  store i8 4, ptr %i.ed, align 4, !tbaa !74
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cp, i64 52
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cp, i64 54
  store i8 3, ptr %i.ef, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.ee, align 1, !tbaa !73
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cp, i64 55
  store i8 4, ptr %i.eg, align 8, !tbaa !74
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cp, i64 58
  store i8 3, ptr %i.ei, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.eh, align 1, !tbaa !73
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cp, i64 59
  store i8 4, ptr %i.ej, align 4, !tbaa !74
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cp, i64 60
  %i.el = getelementptr inbounds nuw i8, ptr %i.cp, i64 62
  store i8 3, ptr %i.el, align 1, !tbaa !72
  store i16 %i.cr, ptr %i.ek, align 1, !tbaa !73
  %i.em = getelementptr inbounds nuw i8, ptr %i.cp, i64 63
  store i8 4, ptr %i.em, align 8, !tbaa !74
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, 25
  br i1 %exitcond62.not, label %bb.l, label %.preheader, !llvm.loop !75

bb.l:                                             ; preds = %.preheader
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN8ModelPPM14StartModelRareEi(ptr noundef nonnull align 8 dereferenceable(19648) initializes((1652, 1656), (1664, 1920), (2688, 2689), (19120, 19158), (19286, 19287), (19296, 19632), (19640, 19648)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2688
  store i8 1, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1652
  store i32 %1, ptr %i.b, align 4, !tbaa !48
  tail call void @_ZN8ModelPPM16RestartModelRareEv(ptr noundef nonnull align 8 dereferenceable(19648) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2176
  store i8 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2177
  store i8 2, ptr %i.d, align 1, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2178
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %i.e, i8 4, i64 9, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(245) %i.f, i8 6, i64 245, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1921
  store i8 1, ptr %i.h, align 1, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1922
  store i8 2, ptr %i.i, align 2, !tbaa !27
  br label %bb.a

bb.a:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.024 = phi i32 [ 1, %.lr.ph ], [ %.1.1, %bb.b ] ; 2 uses
  %.01323 = phi i32 [ 3, %.lr.ph ], [ %.114.1, %bb.b ] ; 2 uses
  %.01522 = phi i32 [ 1, %.lr.ph ], [ %.116.1, %bb.b ] ; 2 uses
  %i.j = trunc i32 %.01323 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 %i.j, ptr %i.k, align 1, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %.01522, 1                  ; 3 uses
  %i.l = zext i1 %.not to i32
  %.1 = add nsw i32 %.024, %i.l                   ; 2 uses
  %i.m = zext i1 %.not to i32
  %.114 = add nuw nsw i32 %.01323, %i.m           ; 2 uses
  %i.n = trunc i32 %.114 to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next
  store i8 %i.n, ptr %i.o, align 1, !tbaa !27
  %i.p = add nsw i32 %.01522, -2
  %i.q = select i1 %.not, i32 %.024, i32 %i.p     ; 2 uses
  %.not.1 = icmp eq i32 %i.q, 0                   ; 3 uses
  %i.r = add nsw i32 %.1, 1                       ; 2 uses
  %.116.1 = select i1 %.not.1, i32 %i.r, i32 %i.q
  %i.s = zext i1 %.not.1 to i32
  %.114.1 = add nuw nsw i32 %.114, %i.s
  %.1.1 = select i1 %.not.1, i32 %i.r, i32 %.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2432
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i8 0, i64 64, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2496
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.u, i8 8, i64 192, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1603
  store i8 7, ptr %i.v, align 1, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN14RARPPM_CONTEXT7rescaleEP8ModelPPM(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %2 = alloca %struct.RARPPM_STATE, align 1       ; 4 uses
  %i.a = load i16, ptr %0, align 1, !tbaa !61
  %i.b = zext i16 %i.a to i32                     ; 3 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1632 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
end_hunk_0
