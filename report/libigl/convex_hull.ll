Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/convex_hull?download=true
inline.NumInlined: 9951
inline.NumDeleted: 3256
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4CGAL8internal24ch_nswe_point_with_orderISt14_List_iteratorINS_7Point_3INS_5EpickEEEENS_22Projection_traits_xy_3IS4_EEEESt5tupleIJT_SA_SA_SA_EESA_SA_RSA_SC_SC_SC_RKT0_St20forward_iterator_tag:bb.a
  store i64 %i.a, ptr %6, align 8, !tbaa !250
  store i64 %i.a, ptr %5, align 8, !tbaa !250
  store i64 %i.a, ptr %4, align 8, !tbaa !250
  store i64 %i.a, ptr %3, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %8, align 16, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 28
  store <4 x i32> <i32 0, i32 2, i32 0, i32 3>, ptr %i.c, align 16, !tbaa !65
  %.not83 = icmp eq ptr %1, %2
  br i1 %.not83, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre86 = load i64, ptr %4, align 8, !tbaa !250
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted = load i32, ptr %8, align 16
  %.ptr.promoted = load i32, ptr %.ptr, align 8
  %.promoted113 = load i32, ptr %i.c, align 16
  %.promoted116 = load i32, ptr %i.d, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  %.085117 = phi i32 [ %.085118, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted116, %.lr.ph.preheader ] ; 2 uses
  %.085114 = phi i32 [ %.085115, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted113, %.lr.ph.preheader ] ; 2 uses
  %.085111 = phi i32 [ %.085112, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.ptr.promoted, %.lr.ph.preheader ] ; 2 uses
  %.085109 = phi i32 [ %.085110, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %i.f = phi i32 [ %i.at, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.g = phi i32 [ %i.v, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.h = phi i32 [ %i.ah, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.085 = phi i32 [ %i.bg, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 8 uses
  %.sroa.061.084 = phi ptr [ %i.bf, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 16
  %i.j = load ptr, ptr %5, align 8, !tbaa !263    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load double, ptr %i.i, align 8, !tbaa !76 ; 6 uses
  %i.m = load double, ptr %i.k, align 8, !tbaa !76 ; 2 uses
  %i.n = fcmp olt double %i.l, %i.m
  %i.o = fcmp ogt double %i.l, %i.m
  %..i.i.i.i = zext i1 %i.o to i32
  %.0.i.i.i.i = select i1 %i.n, i32 -1, i32 %..i.i.i.i
  switch i32 %.0.i.i.i.i, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit: ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !76
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread: ; preds = %.lr.ph, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit
  %i.u = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.u, ptr %5, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72: ; preds = %.lr.ph, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit
  %.085110 = phi i32 [ %.085109, %.lr.ph ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %.085109, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.v = phi i32 [ %i.g, %.lr.ph ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %i.g, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit ] ; 3 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !263    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !76 ; 2 uses
  %i.z = fcmp olt double %i.y, %i.l
  %i.aa = fcmp ogt double %i.y, %i.l
  %..i.i.i.i34 = zext i1 %i.aa to i32
  %.0.i.i.i.i35 = select i1 %i.z, i32 -1, i32 %..i.i.i.i34
  switch i32 %.0.i.i.i.i35, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !76
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37
  %i.ag = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.ag, ptr %6, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37
  %.085112 = phi i32 [ %.085111, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread ], [ %.085111, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 ] ; 2 uses
  %i.ah = phi i32 [ %i.h, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread ], [ %i.h, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 ] ; 2 uses
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 24
  %i.al = load double, ptr %i.aj, align 8, !tbaa !76 ; 2 uses
  %i.am = load double, ptr %i.ak, align 8, !tbaa !76 ; 4 uses
  %i.an = fcmp olt double %i.al, %i.am
  %i.ao = fcmp ogt double %i.al, %i.am
  %..i.i.i.i38 = zext i1 %i.ao to i32
  %.0.i.i.i.i39 = select i1 %i.an, i32 -1, i32 %..i.i.i.i38
  switch i32 %.0.i.i.i.i39, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !76
  %i.ar = fcmp olt double %i.aq, %i.l
  br i1 %i.ar, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit
  %i.as = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.as, ptr %3, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit
  %.085115 = phi i32 [ %.085114, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %.085114, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.at = phi i32 [ %i.f, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %i.f, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.au = load ptr, ptr %4, align 8               ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load double, ptr %i.av, align 8, !tbaa !76 ; 2 uses
  %i.ax = fcmp olt double %i.am, %i.aw
  %i.ay = fcmp ogt double %i.am, %i.aw
  %..i.i.i.i41 = zext i1 %i.ay to i32
  %.0.i.i.i.i42 = select i1 %i.ax, i32 -1, i32 %..i.i.i.i41
  %i.az = ptrtoint ptr %i.au to i64               ; 2 uses
  switch i32 %.0.i.i.i.i42, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !76
  %i.bc = fcmp olt double %i.l, %i.bb
  br i1 %i.bc, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44
  %i.bd = ptrtoint ptr %.sroa.061.084 to i64      ; 2 uses
  store i64 %i.bd, ptr %4, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44
  %.085118 = phi i32 [ %.085117, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread ], [ %.085117, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 ] ; 2 uses
  %i.be = phi i64 [ %i.az, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78 ], [ %i.bd, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread ], [ %i.az, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 ]
  %i.bf = load ptr, ptr %.sroa.061.084, align 8, !tbaa !155 ; 2 uses
  %i.bg = add i32 %.085, 1
  %.not = icmp eq ptr %i.bf, %2
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !891

._crit_edge.loopexit:                             ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi2EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  store i32 %.085110, ptr %8, align 16
  store i32 %.085112, ptr %.ptr, align 8
  store i32 %.085115, ptr %i.c, align 16
  store i32 %.085118, ptr %i.d, align 8
  %.pre = load i64, ptr %3, align 8, !tbaa !250
  %i.bh = icmp ult i32 %i.ah, %i.v
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.bi = phi i32 [ %i.at, %._crit_edge.loopexit ], [ 0, %.._crit_edge_crit_edge ]
  %i.bj = phi i32 [ %i.v, %._crit_edge.loopexit ], [ 0, %.._crit_edge_crit_edge ]
  %i.bk = phi i1 [ %i.bh, %._crit_edge.loopexit ], [ false, %.._crit_edge_crit_edge ]
  %i.bl = phi i64 [ %i.be, %._crit_edge.loopexit ], [ %.pre86, %.._crit_edge_crit_edge ]
  %i.bm = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %.._crit_edge_crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bn = load i64, ptr %5, align 8, !tbaa !250
  store i64 %i.bn, ptr %9, align 16, !tbaa !250
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bp = load i64, ptr %6, align 8, !tbaa !250
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !250
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.bm, ptr %i.bq, align 16, !tbaa !250
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.bl, ptr %i.br, align 8, !tbaa !250
  %i.bs = load i64, ptr %.ptr, align 8            ; 5 uses
  br i1 %i.bk, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i: ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.bj, ptr %i.bt, align 8, !tbaa !274
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !275
  store i64 %i.bs, ptr %8, align 16
  %i.bv = trunc i64 %i.bs to i32
  br label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i: ; preds = %._crit_edge
  %.sroa.0.0.extract.trunc.i.i26.i = trunc i64 %i.bs to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i = lshr i64 %i.bs, 32
  %.sroa.5.0.extract.trunc.i.i28.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i to i32
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i
  %.09.i.i29.i = phi ptr [ %.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i ], [ %.0.i.i30.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i ] ; 6 uses
  %.0.i.i30.i = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -8 ; 2 uses
  %i.bw = load i32, ptr %.0.i.i30.i, align 4, !tbaa !274 ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, %.sroa.0.0.extract.trunc.i.i26.i
  br i1 %i.bx, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i, label %bb.c

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i: ; preds = %bb.b
  %.phi.trans.insert.i.i37.i = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -4
  %.pre.i.i38.i = load i32, ptr %.phi.trans.insert.i.i37.i, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i

bb.c:                                             ; preds = %bb.b
  %i.by = icmp ult i32 %i.bw, %.sroa.0.0.extract.trunc.i.i26.i
  br i1 %i.by, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i: ; preds = %bb.c
  %i.bz = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !275 ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, %.sroa.5.0.extract.trunc.i.i28.i
  br i1 %i.cb, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i
  %i.cc = phi i32 [ %.pre.i.i38.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i ], [ %i.ca, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i ]
  store i32 %i.bw, ptr %.09.i.i29.i, align 4, !tbaa !274
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i29.i, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !275
  br label %bb.b, !llvm.loop !20

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i, %bb.c
  store i64 %i.bs, ptr %.09.i.i29.i, align 4
  %.pre87 = load i32, ptr %i.c, align 16, !tbaa !274
  %.pre88 = load i32, ptr %8, align 16, !tbaa !274
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i
  %i.ce = phi i32 [ %.pre88, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i ], [ %i.bv, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i ] ; 3 uses
  %i.cf = phi i32 [ %.pre87, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i ], [ %i.bi, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i ] ; 2 uses
  %i.cg = icmp ult i32 %i.cf, %i.ce
  br i1 %i.cg, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = icmp ult i32 %i.ce, %i.cf
  br i1 %i.ch, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1: ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !275
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !275
  %i.cl = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cl, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1, %bb.e
  %i.cm = load i64, ptr %i.c, align 16            ; 3 uses
  %.sroa.0.0.extract.trunc.i.i26.i.1 = trunc i64 %i.cm to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i.1 = lshr i64 %i.cm, 32
  %.sroa.5.0.extract.trunc.i.i28.i.1 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i.1 to i32
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1
  %.09.i.i29.i.1 = phi ptr [ %i.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1 ], [ %.0.i.i30.i.1, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1 ] ; 6 uses
  %.0.i.i30.i.1 = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -8 ; 2 uses
  %i.cn = load i32, ptr %.0.i.i30.i.1, align 4, !tbaa !274 ; 3 uses
  %i.co = icmp ugt i32 %i.cn, %.sroa.0.0.extract.trunc.i.i26.i.1
  br i1 %i.co, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = icmp ult i32 %i.cn, %.sroa.0.0.extract.trunc.i.i26.i.1
  br i1 %i.cp, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1: ; preds = %bb.g
  %i.cq = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !275 ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, %.sroa.5.0.extract.trunc.i.i28.i.1
  br i1 %i.cs, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1, %bb.g
  store i64 %i.cm, ptr %.09.i.i29.i.1, align 4
  %.pre89 = load i32, ptr %8, align 16, !tbaa !274
  br label %bb.h

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1: ; preds = %bb.f
  %.phi.trans.insert.i.i37.i.1 = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -4
  %.pre.i.i38.i.1 = load i32, ptr %.phi.trans.insert.i.i37.i.1, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1: ; preds = %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1
  %i.ct = phi i32 [ %.pre.i.i38.i.1, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1 ], [ %i.cr, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1 ]
  store i32 %i.cn, ptr %.09.i.i29.i.1, align 4, !tbaa !274
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i29.i.1, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !275
  br label %bb.f, !llvm.loop !20

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1, %bb.d
  %i.cv = load i64, ptr %i.c, align 16            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !275
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.dc = load <2 x i32>, ptr %i.da, align 4, !tbaa !65
  store i32 %i.ce, ptr %i.cz, align 8, !tbaa !274
  store <2 x i32> %i.dc, ptr %i.db, align 4, !tbaa !65
  store i64 %i.cv, ptr %8, align 16
  %i.dd = trunc i64 %i.cv to i32
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1
  %i.de = phi i32 [ %i.dd, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1 ], [ %.pre89, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1 ] ; 2 uses
  %i.df = load i32, ptr %i.d, align 8, !tbaa !274 ; 2 uses
  %i.dg = icmp ult i32 %i.df, %i.de
  br i1 %i.dg, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = icmp ult i32 %i.de, %i.df
  br i1 %i.dh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2: ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !275
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !275
  %i.dl = icmp ult i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2, %bb.i
  %i.dm = load i64, ptr %i.d, align 8             ; 3 uses
  %.sroa.0.0.extract.trunc.i.i26.i.2 = trunc i64 %i.dm to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i.2 = lshr i64 %i.dm, 32
  %.sroa.5.0.extract.trunc.i.i28.i.2 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i.2 to i32
  br label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2
  %.09.i.i29.i.2 = phi ptr [ %i.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2 ], [ %.0.i.i30.i.2, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2 ] ; 6 uses
  %.0.i.i30.i.2 = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -8 ; 2 uses
  %i.dn = load i32, ptr %.0.i.i30.i.2, align 4, !tbaa !274 ; 3 uses
  %i.do = icmp ugt i32 %i.dn, %.sroa.0.0.extract.trunc.i.i26.i.2
  br i1 %i.do, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = icmp ult i32 %i.dn, %.sroa.0.0.extract.trunc.i.i26.i.2
  br i1 %i.dp, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2: ; preds = %bb.k
  %i.dq = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !275 ; 2 uses
  %i.ds = icmp ugt i32 %i.dr, %.sroa.5.0.extract.trunc.i.i28.i.2
  br i1 %i.ds, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2, %bb.k
  store i64 %i.dm, ptr %.09.i.i29.i.2, align 4
  %.pre90 = load i32, ptr %i.b, align 4, !tbaa !275
  %.pre91 = load i32, ptr %i.e, align 4, !tbaa !275
  %i.dt = zext i32 %.pre90 to i64
  br label %_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2: ; preds = %bb.j
  %.phi.trans.insert.i.i37.i.2 = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -4
  %.pre.i.i38.i.2 = load i32, ptr %.phi.trans.insert.i.i37.i.2, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2: ; preds = %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2
  %i.du = phi i32 [ %.pre.i.i38.i.2, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2 ], [ %i.dr, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2 ]
  store i32 %i.dn, ptr %.09.i.i29.i.2, align 4, !tbaa !274
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i29.i.2, i64 4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !275
  br label %bb.j, !llvm.loop !20

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2, %bb.h
  %i.dw = load i64, ptr %i.d, align 8
  %i.dx = lshr i64 %i.dw, 32
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !65
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !65
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !275
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !65
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !275
  br label %_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit

_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2
  %i.eg = phi i32 [ %i.dz, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2 ], [ %.pre91, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2 ]
  %i.eh = phi i64 [ %i.dx, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2 ], [ %i.dt, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.eh
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !275
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.em
  %i.eo = load i32, ptr %i.ei, align 4, !tbaa !275
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ep
  %i.er = zext i32 %i.eg to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.er
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  %i.et = load i64, ptr %i.es, align 8, !tbaa !250, !noalias !894
  store i64 %i.et, ptr %0, align 8, !tbaa !250, !alias.scope !894
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.eq, align 8, !tbaa !250, !noalias !894
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !250, !alias.scope !894
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load i64, ptr %i.en, align 8, !tbaa !250, !noalias !894
  store i64 %i.ex, ptr %i.ew, align 8, !tbaa !250, !alias.scope !894
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load i64, ptr %i.ek, align 8, !tbaa !250, !noalias !894
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !250, !alias.scope !894
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors9Equal_x_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  %4 = alloca %"class.CGAL::Point_3.199", align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %3, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %4, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN4CGALeqERKNS_9cpp_floatES2_(ptr noundef nonnull align 16 dereferenceable(288) %3, ptr noundef nonnull align 16 dereferenceable(288) %4)
          to label %_ZNK4CGAL23CartesianKernelFunctors9Equal_x_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_.exit unwind label %bb.j

_ZNK4CGAL23CartesianKernelFunctors9Equal_x_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_.exit: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 265
  %i.c = load i8, ptr %i.b, align 1, !tbaa !209, !range !53, !noundef !54
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 266
  %i.f = load i8, ptr %i.e, align 2, !range !53
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors9Equal_x_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %i.h, align 16
  %i.l = shl i64 %i.k, 3
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.c, %_ZNK4CGAL23CartesianKernelFunctors9Equal_x_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.n = load i8, ptr %i.m, align 1, !tbaa !209, !range !53, !noundef !54
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.q = load i8, ptr %i.p, align 2, !range !53
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.s, align 16
  %i.w = shl i64 %i.v, 3
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.w) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i:              ; preds = %bb.d, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.y = load i8, ptr %i.x, align 1, !tbaa !209, !range !53, !noundef !54
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.ab = load i8, ptr %i.aa, align 2, !range !53
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond.i.i.i.2.i.i.i = select i1 %i.z, i1 true, i1 %i.ac
  br i1 %or.cond.i.i.i.2.i.i.i, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i64, ptr %4, align 16
  %i.ag = shl i64 %i.af, 3
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ag) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 265
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !209, !range !53, !noundef !54
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 266
  %i.al = load i8, ptr %i.ak, align 2, !range !53
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i.i.i.i6 = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i.i.i.i6, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.an, align 16
  %i.ar = shl i64 %i.aq, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.ar) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7:               ; preds = %bb.f, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 169
  %i.at = load i8, ptr %i.as, align 1, !tbaa !209, !range !53, !noundef !54
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 170
  %i.aw = load i8, ptr %i.av, align 2, !range !53
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i.i.1.i.i.i8 = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i.i.1.i.i.i8, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %i.ay, align 16
  %i.bc = shl i64 %i.bb, 3
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bc) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9:             ; preds = %bb.g, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 73
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !209, !range !53, !noundef !54
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 74
  %i.bh = load i8, ptr %i.bg, align 2, !range !53
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i.2.i.i.i10 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i.2.i.i.i10, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %3, align 16
  %i.bm = shl i64 %i.bl, 3
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i1 %i.a

bb.i:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.j ], [ %i.bn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn
}
end_hunk_0
begin_hunk_1_@_ZN4CGAL8internal24ch_nswe_point_with_orderISt14_List_iteratorINS_7Point_3INS_5EpickEEEENS_22Projection_traits_yz_3IS4_EEEESt5tupleIJT_SA_SA_SA_EESA_SA_RSA_SC_SC_SC_RKT0_St20forward_iterator_tag:bb.a
  store i64 %i.a, ptr %6, align 8, !tbaa !250
  store i64 %i.a, ptr %5, align 8, !tbaa !250
  store i64 %i.a, ptr %4, align 8, !tbaa !250
  store i64 %i.a, ptr %3, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %8, align 16, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 28
  store <4 x i32> <i32 0, i32 2, i32 0, i32 3>, ptr %i.c, align 16, !tbaa !65
  %.not83 = icmp eq ptr %1, %2
  br i1 %.not83, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre86 = load i64, ptr %4, align 8, !tbaa !250
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted = load i32, ptr %8, align 16
  %.ptr.promoted = load i32, ptr %.ptr, align 8
  %.promoted113 = load i32, ptr %i.c, align 16
  %.promoted116 = load i32, ptr %i.d, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  %.085117 = phi i32 [ %.085118, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted116, %.lr.ph.preheader ] ; 2 uses
  %.085114 = phi i32 [ %.085115, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted113, %.lr.ph.preheader ] ; 2 uses
  %.085111 = phi i32 [ %.085112, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.ptr.promoted, %.lr.ph.preheader ] ; 2 uses
  %.085109 = phi i32 [ %.085110, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %i.f = phi i32 [ %i.at, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.g = phi i32 [ %i.v, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.h = phi i32 [ %i.ah, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.085 = phi i32 [ %i.bg, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 8 uses
  %.sroa.061.084 = phi ptr [ %i.bf, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !263    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load double, ptr %i.j, align 8, !tbaa !76 ; 6 uses
  %i.m = load double, ptr %i.k, align 8, !tbaa !76 ; 2 uses
  %i.n = fcmp olt double %i.l, %i.m
  %i.o = fcmp ogt double %i.l, %i.m
  %..i.i.i.i = zext i1 %i.o to i32
  %.0.i.i.i.i = select i1 %i.n, i32 -1, i32 %..i.i.i.i
  switch i32 %.0.i.i.i.i, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit: ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !76
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread: ; preds = %.lr.ph, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit
  %i.u = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.u, ptr %5, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72: ; preds = %.lr.ph, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit
  %.085110 = phi i32 [ %.085109, %.lr.ph ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %.085109, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.v = phi i32 [ %i.g, %.lr.ph ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %i.g, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit ] ; 3 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !263    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load double, ptr %i.x, align 8, !tbaa !76 ; 2 uses
  %i.z = fcmp olt double %i.y, %i.l
  %i.aa = fcmp ogt double %i.y, %i.l
  %..i.i.i.i34 = zext i1 %i.aa to i32
  %.0.i.i.i.i35 = select i1 %i.z, i32 -1, i32 %..i.i.i.i34
  switch i32 %.0.i.i.i.i35, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 32
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !76
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37
  %i.ag = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.ag, ptr %6, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37
  %.085112 = phi i32 [ %.085111, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread ], [ %.085111, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 ] ; 2 uses
  %i.ah = phi i32 [ %i.h, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread ], [ %i.h, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 ] ; 2 uses
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 32
  %i.al = load double, ptr %i.aj, align 8, !tbaa !76 ; 2 uses
  %i.am = load double, ptr %i.ak, align 8, !tbaa !76 ; 4 uses
  %i.an = fcmp olt double %i.al, %i.am
  %i.ao = fcmp ogt double %i.al, %i.am
  %..i.i.i.i38 = zext i1 %i.ao to i32
  %.0.i.i.i.i39 = select i1 %i.an, i32 -1, i32 %..i.i.i.i38
  switch i32 %.0.i.i.i.i39, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !76
  %i.ar = fcmp olt double %i.aq, %i.l
  br i1 %i.ar, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit
  %i.as = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.as, ptr %3, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit
  %.085115 = phi i32 [ %.085114, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %.085114, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.at = phi i32 [ %i.f, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %i.f, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.au = load ptr, ptr %4, align 8               ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load double, ptr %i.av, align 8, !tbaa !76 ; 2 uses
  %i.ax = fcmp olt double %i.am, %i.aw
  %i.ay = fcmp ogt double %i.am, %i.aw
  %..i.i.i.i41 = zext i1 %i.ay to i32
  %.0.i.i.i.i42 = select i1 %i.ax, i32 -1, i32 %..i.i.i.i41
  %i.az = ptrtoint ptr %i.au to i64               ; 2 uses
  switch i32 %.0.i.i.i.i42, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !76
  %i.bc = fcmp olt double %i.l, %i.bb
  br i1 %i.bc, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44
  %i.bd = ptrtoint ptr %.sroa.061.084 to i64      ; 2 uses
  store i64 %i.bd, ptr %4, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44
  %.085118 = phi i32 [ %.085117, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread ], [ %.085117, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 ] ; 2 uses
  %i.be = phi i64 [ %i.az, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78 ], [ %i.bd, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread ], [ %i.az, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 ]
  %i.bf = load ptr, ptr %.sroa.061.084, align 8, !tbaa !155 ; 2 uses
  %i.bg = add i32 %.085, 1
  %.not = icmp eq ptr %i.bf, %2
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1069

._crit_edge.loopexit:                             ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi0EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  store i32 %.085110, ptr %8, align 16
  store i32 %.085112, ptr %.ptr, align 8
  store i32 %.085115, ptr %i.c, align 16
  store i32 %.085118, ptr %i.d, align 8
  %.pre = load i64, ptr %3, align 8, !tbaa !250
  %i.bh = icmp ult i32 %i.ah, %i.v
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.bi = phi i32 [ %i.at, %._crit_edge.loopexit ], [ 0, %.._crit_edge_crit_edge ]
  %i.bj = phi i32 [ %i.v, %._crit_edge.loopexit ], [ 0, %.._crit_edge_crit_edge ]
  %i.bk = phi i1 [ %i.bh, %._crit_edge.loopexit ], [ false, %.._crit_edge_crit_edge ]
  %i.bl = phi i64 [ %i.be, %._crit_edge.loopexit ], [ %.pre86, %.._crit_edge_crit_edge ]
  %i.bm = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %.._crit_edge_crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bn = load i64, ptr %5, align 8, !tbaa !250
  store i64 %i.bn, ptr %9, align 16, !tbaa !250
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bp = load i64, ptr %6, align 8, !tbaa !250
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !250
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.bm, ptr %i.bq, align 16, !tbaa !250
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.bl, ptr %i.br, align 8, !tbaa !250
  %i.bs = load i64, ptr %.ptr, align 8            ; 5 uses
  br i1 %i.bk, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i: ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.bj, ptr %i.bt, align 8, !tbaa !274
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !275
  store i64 %i.bs, ptr %8, align 16
  %i.bv = trunc i64 %i.bs to i32
  br label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i: ; preds = %._crit_edge
  %.sroa.0.0.extract.trunc.i.i26.i = trunc i64 %i.bs to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i = lshr i64 %i.bs, 32
  %.sroa.5.0.extract.trunc.i.i28.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i to i32
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i
  %.09.i.i29.i = phi ptr [ %.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i ], [ %.0.i.i30.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i ] ; 6 uses
  %.0.i.i30.i = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -8 ; 2 uses
  %i.bw = load i32, ptr %.0.i.i30.i, align 4, !tbaa !274 ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, %.sroa.0.0.extract.trunc.i.i26.i
  br i1 %i.bx, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i, label %bb.c

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i: ; preds = %bb.b
  %.phi.trans.insert.i.i37.i = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -4
  %.pre.i.i38.i = load i32, ptr %.phi.trans.insert.i.i37.i, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i

bb.c:                                             ; preds = %bb.b
  %i.by = icmp ult i32 %i.bw, %.sroa.0.0.extract.trunc.i.i26.i
  br i1 %i.by, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i: ; preds = %bb.c
  %i.bz = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !275 ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, %.sroa.5.0.extract.trunc.i.i28.i
  br i1 %i.cb, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i
  %i.cc = phi i32 [ %.pre.i.i38.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i ], [ %i.ca, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i ]
  store i32 %i.bw, ptr %.09.i.i29.i, align 4, !tbaa !274
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i29.i, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !275
  br label %bb.b, !llvm.loop !20

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i, %bb.c
  store i64 %i.bs, ptr %.09.i.i29.i, align 4
  %.pre87 = load i32, ptr %i.c, align 16, !tbaa !274
  %.pre88 = load i32, ptr %8, align 16, !tbaa !274
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i
  %i.ce = phi i32 [ %.pre88, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i ], [ %i.bv, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i ] ; 3 uses
  %i.cf = phi i32 [ %.pre87, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i ], [ %i.bi, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i ] ; 2 uses
  %i.cg = icmp ult i32 %i.cf, %i.ce
  br i1 %i.cg, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = icmp ult i32 %i.ce, %i.cf
  br i1 %i.ch, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1: ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !275
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !275
  %i.cl = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cl, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1, %bb.e
  %i.cm = load i64, ptr %i.c, align 16            ; 3 uses
  %.sroa.0.0.extract.trunc.i.i26.i.1 = trunc i64 %i.cm to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i.1 = lshr i64 %i.cm, 32
  %.sroa.5.0.extract.trunc.i.i28.i.1 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i.1 to i32
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1
  %.09.i.i29.i.1 = phi ptr [ %i.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1 ], [ %.0.i.i30.i.1, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1 ] ; 6 uses
  %.0.i.i30.i.1 = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -8 ; 2 uses
  %i.cn = load i32, ptr %.0.i.i30.i.1, align 4, !tbaa !274 ; 3 uses
  %i.co = icmp ugt i32 %i.cn, %.sroa.0.0.extract.trunc.i.i26.i.1
  br i1 %i.co, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = icmp ult i32 %i.cn, %.sroa.0.0.extract.trunc.i.i26.i.1
  br i1 %i.cp, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1: ; preds = %bb.g
  %i.cq = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !275 ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, %.sroa.5.0.extract.trunc.i.i28.i.1
  br i1 %i.cs, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1, %bb.g
  store i64 %i.cm, ptr %.09.i.i29.i.1, align 4
  %.pre89 = load i32, ptr %8, align 16, !tbaa !274
  br label %bb.h

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1: ; preds = %bb.f
  %.phi.trans.insert.i.i37.i.1 = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -4
  %.pre.i.i38.i.1 = load i32, ptr %.phi.trans.insert.i.i37.i.1, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1: ; preds = %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1
  %i.ct = phi i32 [ %.pre.i.i38.i.1, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1 ], [ %i.cr, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1 ]
  store i32 %i.cn, ptr %.09.i.i29.i.1, align 4, !tbaa !274
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i29.i.1, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !275
  br label %bb.f, !llvm.loop !20

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1, %bb.d
  %i.cv = load i64, ptr %i.c, align 16            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !275
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.dc = load <2 x i32>, ptr %i.da, align 4, !tbaa !65
  store i32 %i.ce, ptr %i.cz, align 8, !tbaa !274
  store <2 x i32> %i.dc, ptr %i.db, align 4, !tbaa !65
  store i64 %i.cv, ptr %8, align 16
  %i.dd = trunc i64 %i.cv to i32
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1
  %i.de = phi i32 [ %i.dd, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1 ], [ %.pre89, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1 ] ; 2 uses
  %i.df = load i32, ptr %i.d, align 8, !tbaa !274 ; 2 uses
  %i.dg = icmp ult i32 %i.df, %i.de
  br i1 %i.dg, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = icmp ult i32 %i.de, %i.df
  br i1 %i.dh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2: ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !275
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !275
  %i.dl = icmp ult i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2, %bb.i
  %i.dm = load i64, ptr %i.d, align 8             ; 3 uses
  %.sroa.0.0.extract.trunc.i.i26.i.2 = trunc i64 %i.dm to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i.2 = lshr i64 %i.dm, 32
  %.sroa.5.0.extract.trunc.i.i28.i.2 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i.2 to i32
  br label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2
  %.09.i.i29.i.2 = phi ptr [ %i.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2 ], [ %.0.i.i30.i.2, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2 ] ; 6 uses
  %.0.i.i30.i.2 = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -8 ; 2 uses
  %i.dn = load i32, ptr %.0.i.i30.i.2, align 4, !tbaa !274 ; 3 uses
  %i.do = icmp ugt i32 %i.dn, %.sroa.0.0.extract.trunc.i.i26.i.2
  br i1 %i.do, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = icmp ult i32 %i.dn, %.sroa.0.0.extract.trunc.i.i26.i.2
  br i1 %i.dp, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2: ; preds = %bb.k
  %i.dq = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !275 ; 2 uses
  %i.ds = icmp ugt i32 %i.dr, %.sroa.5.0.extract.trunc.i.i28.i.2
  br i1 %i.ds, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2, %bb.k
  store i64 %i.dm, ptr %.09.i.i29.i.2, align 4
  %.pre90 = load i32, ptr %i.b, align 4, !tbaa !275
  %.pre91 = load i32, ptr %i.e, align 4, !tbaa !275
  %i.dt = zext i32 %.pre90 to i64
  br label %_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2: ; preds = %bb.j
  %.phi.trans.insert.i.i37.i.2 = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -4
  %.pre.i.i38.i.2 = load i32, ptr %.phi.trans.insert.i.i37.i.2, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2: ; preds = %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2
  %i.du = phi i32 [ %.pre.i.i38.i.2, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2 ], [ %i.dr, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2 ]
  store i32 %i.dn, ptr %.09.i.i29.i.2, align 4, !tbaa !274
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i29.i.2, i64 4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !275
  br label %bb.j, !llvm.loop !20

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2, %bb.h
  %i.dw = load i64, ptr %i.d, align 8
  %i.dx = lshr i64 %i.dw, 32
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !65
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !65
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !275
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !65
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !275
  br label %_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit

_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2
  %i.eg = phi i32 [ %i.dz, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2 ], [ %.pre91, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2 ]
  %i.eh = phi i64 [ %i.dx, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2 ], [ %i.dt, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.eh
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !275
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.em
  %i.eo = load i32, ptr %i.ei, align 4, !tbaa !275
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ep
  %i.er = zext i32 %i.eg to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.er
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  %i.et = load i64, ptr %i.es, align 8, !tbaa !250, !noalias !1072
  store i64 %i.et, ptr %0, align 8, !tbaa !250, !alias.scope !1072
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.eq, align 8, !tbaa !250, !noalias !1072
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !250, !alias.scope !1072
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load i64, ptr %i.en, align 8, !tbaa !250, !noalias !1072
  store i64 %i.ex, ptr %i.ew, align 8, !tbaa !250, !alias.scope !1072
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load i64, ptr %i.ek, align 8, !tbaa !250, !noalias !1072
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !250, !alias.scope !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4CGAL24Filtered_predicate_RT_FTINS_23CartesianKernelFunctors9Equal_z_3INS_16Simple_cartesianINS_9cpp_floatEEEEENS2_INS3_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS2_INS3_INS_11Interval_ntILb0EEEEEEENS_19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEEST_EES5_NS_12NT_converterIdS4_EEEENSQ_ISV_SK_NSW_IdSJ_EEEENSQ_ISV_SO_NSW_IdSN_EEEELb1EE4callIJNS_7Point_3IST_EES16_ETnPNSt9enable_ifIXntsr22Call_operator_needs_FTIDpT_EE5valueEvE4typeELPv0EEEbDpRKS18_(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.CGAL::Point_3.199", align 16 ; 17 uses
  %4 = alloca %"class.CGAL::Point_3.199", align 16 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %3, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNK4CGAL19Cartesian_converterINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES3_EENS_16Simple_cartesianINS_9cpp_floatEEENS_12NT_converterIdS7_EEEclERKNS_7Point_3IS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3.199") align 16 %4, ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.c = invoke noundef zeroext i1 @_ZN4CGALeqERKNS_9cpp_floatES2_(ptr noundef nonnull align 16 dereferenceable(84) %i.a, ptr noundef nonnull align 16 dereferenceable(84) %i.b)
          to label %_ZNK4CGAL23CartesianKernelFunctors9Equal_z_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_.exit unwind label %bb.j

_ZNK4CGAL23CartesianKernelFunctors9Equal_z_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 265
  %i.e = load i8, ptr %i.d, align 1, !tbaa !209, !range !53, !noundef !54
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 266
  %i.h = load i8, ptr %i.g, align 2, !range !53
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL23CartesianKernelFunctors9Equal_z_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load i64, ptr %i.b, align 16
  %i.m = shl i64 %i.l, 3
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i:                ; preds = %bb.c, %_ZNK4CGAL23CartesianKernelFunctors9Equal_z_3INS_16Simple_cartesianINS_9cpp_floatEEEEclERKNS_7Point_3IS4_EES9_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 169
  %i.o = load i8, ptr %i.n, align 1, !tbaa !209, !range !53, !noundef !54
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 170
  %i.r = load i8, ptr %i.q, align 2, !range !53
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %i.t, align 16
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.x) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i:              ; preds = %bb.d, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 73
  %i.z = load i8, ptr %i.y, align 1, !tbaa !209, !range !53, !noundef !54
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 74
  %i.ac = load i8, ptr %i.ab, align 2, !range !53
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i.i.2.i.i.i = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond.i.i.i.2.i.i.i, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %4, align 16
  %i.ah = shl i64 %i.ag, 3
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ah) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 265
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !209, !range !53, !noundef !54
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 266
  %i.am = load i8, ptr %i.al, align 2, !range !53
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i.i.i.i.i6 = select i1 %i.ak, i1 true, i1 %i.an
  br i1 %or.cond.i.i.i.i.i.i6, label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7, label %bb.f

bb.f:                                             ; preds = %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i64, ptr %i.a, align 16
  %i.ar = shl i64 %i.aq, 3
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.ar) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7

_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7:               ; preds = %bb.f, %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 169
  %i.at = load i8, ptr %i.as, align 1, !tbaa !209, !range !53, !noundef !54
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 170
  %i.aw = load i8, ptr %i.av, align 2, !range !53
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i.i.1.i.i.i8 = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i.i.1.i.i.i8, label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9, label %bb.g

bb.g:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i64, ptr %i.ay, align 16
  %i.bc = shl i64 %i.bb, 3
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bc) #38
  br label %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9

_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9:             ; preds = %bb.g, %_ZN4CGAL9cpp_floatD2Ev.exit.i.i.i7
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 73
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !209, !range !53, !noundef !54
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 74
  %i.bh = load i8, ptr %i.bg, align 2, !range !53
  %i.bi = trunc nuw i8 %i.bh to i1
  %or.cond.i.i.i.2.i.i.i10 = select i1 %i.bf, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i.2.i.i.i10, label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %3, align 16
  %i.bm = shl i64 %i.bl, 3
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #38
  br label %_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11

_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev.exit11: ; preds = %_ZN4CGAL9cpp_floatD2Ev.exit.1.i.i.i9, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i1 %i.c

bb.i:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %4) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.j ], [ %i.bn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN4CGAL7PointC3INS_16Simple_cartesianINS_9cpp_floatEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(288) dereferenceable(288) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn
}
end_hunk_1
begin_hunk_2_@_ZN4CGAL8internal24ch_nswe_point_with_orderISt14_List_iteratorINS_7Point_3INS_5EpickEEEENS_22Projection_traits_xz_3IS4_EEEESt5tupleIJT_SA_SA_SA_EESA_SA_RSA_SC_SC_SC_RKT0_St20forward_iterator_tag:bb.a
  store i64 %i.a, ptr %6, align 8, !tbaa !250
  store i64 %i.a, ptr %5, align 8, !tbaa !250
  store i64 %i.a, ptr %4, align 8, !tbaa !250
  store i64 %i.a, ptr %3, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %8, align 16, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 28
  store <4 x i32> <i32 0, i32 2, i32 0, i32 3>, ptr %i.c, align 16, !tbaa !65
  %.not83 = icmp eq ptr %1, %2
  br i1 %.not83, label %.._crit_edge_crit_edge, label %.lr.ph.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre86 = load i64, ptr %4, align 8, !tbaa !250
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted = load i32, ptr %8, align 16
  %.ptr.promoted = load i32, ptr %.ptr, align 8
  %.promoted113 = load i32, ptr %i.c, align 16
  %.promoted116 = load i32, ptr %i.d, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  %.085117 = phi i32 [ %.085118, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted116, %.lr.ph.preheader ] ; 2 uses
  %.085114 = phi i32 [ %.085115, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted113, %.lr.ph.preheader ] ; 2 uses
  %.085111 = phi i32 [ %.085112, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.ptr.promoted, %.lr.ph.preheader ] ; 2 uses
  %.085109 = phi i32 [ %.085110, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %.promoted, %.lr.ph.preheader ] ; 2 uses
  %i.f = phi i32 [ %i.at, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.g = phi i32 [ %i.v, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.h = phi i32 [ %i.ah, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.085 = phi i32 [ %i.bg, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ 0, %.lr.ph.preheader ] ; 8 uses
  %.sroa.061.084 = phi ptr [ %i.bf, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81 ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 16
  %i.j = load ptr, ptr %5, align 8, !tbaa !263    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load double, ptr %i.i, align 8, !tbaa !76 ; 6 uses
  %i.m = load double, ptr %i.k, align 8, !tbaa !76 ; 2 uses
  %i.n = fcmp olt double %i.l, %i.m
  %i.o = fcmp ogt double %i.l, %i.m
  %..i.i.i.i = zext i1 %i.o to i32
  %.0.i.i.i.i = select i1 %i.n, i32 -1, i32 %..i.i.i.i
  switch i32 %.0.i.i.i.i, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit: ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 32
  %i.q = load double, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.s = load double, ptr %i.r, align 8, !tbaa !76
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread: ; preds = %.lr.ph, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit
  %i.u = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.u, ptr %5, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72: ; preds = %.lr.ph, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit
  %.085110 = phi i32 [ %.085109, %.lr.ph ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %.085109, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.v = phi i32 [ %i.g, %.lr.ph ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %i.g, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit ] ; 3 uses
  %i.w = load ptr, ptr %6, align 8, !tbaa !263    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !76 ; 2 uses
  %i.z = fcmp olt double %i.y, %i.l
  %i.aa = fcmp ogt double %i.y, %i.l
  %..i.i.i.i34 = zext i1 %i.aa to i32
  %.0.i.i.i.i35 = select i1 %i.z, i32 -1, i32 %..i.i.i.i34
  switch i32 %.0.i.i.i.i35, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 32
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !76
  %i.af = fcmp olt double %i.ac, %i.ae
  br i1 %i.af, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37
  %i.ag = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.ag, ptr %6, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37
  %.085112 = phi i32 [ %.085111, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread ], [ %.085111, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 ] ; 2 uses
  %i.ah = phi i32 [ %i.h, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit.thread72 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread ], [ %i.h, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37 ] ; 2 uses
  %i.ai = load ptr, ptr %3, align 8               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.061.084, i64 32
  %i.al = load double, ptr %i.aj, align 8, !tbaa !76 ; 2 uses
  %i.am = load double, ptr %i.ak, align 8, !tbaa !76 ; 4 uses
  %i.an = fcmp olt double %i.al, %i.am
  %i.ao = fcmp ogt double %i.al, %i.am
  %..i.i.i.i38 = zext i1 %i.ao to i32
  %.0.i.i.i.i39 = select i1 %i.an, i32 -1, i32 %..i.i.i.i38
  switch i32 %.0.i.i.i.i39, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !76
  %i.ar = fcmp olt double %i.aq, %i.l
  br i1 %i.ar, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit
  %i.as = ptrtoint ptr %.sroa.061.084 to i64
  store i64 %i.as, ptr %3, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit
  %.085115 = phi i32 [ %.085114, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %.085114, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.at = phi i32 [ %i.f, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_xy_2clERKNS_7Point_3IS2_EES8_.exit37.thread75 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread ], [ %i.f, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit ] ; 2 uses
  %i.au = load ptr, ptr %4, align 8               ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load double, ptr %i.av, align 8, !tbaa !76 ; 2 uses
  %i.ax = fcmp olt double %i.am, %i.aw
  %i.ay = fcmp ogt double %i.am, %i.aw
  %..i.i.i.i41 = zext i1 %i.ay to i32
  %.0.i.i.i.i42 = select i1 %i.ax, i32 -1, i32 %..i.i.i.i41
  %i.az = ptrtoint ptr %i.au to i64               ; 2 uses
  switch i32 %.0.i.i.i.i42, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 [
    i32 -1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread
    i32 1, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  ]

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !76
  %i.bc = fcmp olt double %i.l, %i.bb
  br i1 %i.bc, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread, label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44
  %i.bd = ptrtoint ptr %.sroa.061.084 to i64      ; 2 uses
  store i64 %i.bd, ptr %4, align 8, !tbaa !250
  br label %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81

_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81: ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44
  %.085118 = phi i32 [ %.085117, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78 ], [ %.085, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread ], [ %.085117, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 ] ; 2 uses
  %i.be = phi i64 [ %i.az, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit.thread78 ], [ %i.bd, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread ], [ %i.az, %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44 ]
  %i.bf = load ptr, ptr %.sroa.061.084, align 8, !tbaa !155 ; 2 uses
  %i.bg = add i32 %.085, 1
  %.not = icmp eq ptr %i.bf, %2
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !1247

._crit_edge.loopexit:                             ; preds = %_ZNK4CGAL8internal19Projection_traits_3INS_5EpickELi1EE9Less_yx_2clERKNS_7Point_3IS2_EES8_.exit44.thread81
  store i32 %.085110, ptr %8, align 16
  store i32 %.085112, ptr %.ptr, align 8
  store i32 %.085115, ptr %i.c, align 16
  store i32 %.085118, ptr %i.d, align 8
  %.pre = load i64, ptr %3, align 8, !tbaa !250
  %i.bh = icmp ult i32 %i.ah, %i.v
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.bi = phi i32 [ %i.at, %._crit_edge.loopexit ], [ 0, %.._crit_edge_crit_edge ]
  %i.bj = phi i32 [ %i.v, %._crit_edge.loopexit ], [ 0, %.._crit_edge_crit_edge ]
  %i.bk = phi i1 [ %i.bh, %._crit_edge.loopexit ], [ false, %.._crit_edge_crit_edge ]
  %i.bl = phi i64 [ %i.be, %._crit_edge.loopexit ], [ %.pre86, %.._crit_edge_crit_edge ]
  %i.bm = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.a, %.._crit_edge_crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bn = load i64, ptr %5, align 8, !tbaa !250
  store i64 %i.bn, ptr %9, align 16, !tbaa !250
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bp = load i64, ptr %6, align 8, !tbaa !250
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !250
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.bm, ptr %i.bq, align 16, !tbaa !250
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.bl, ptr %i.br, align 8, !tbaa !250
  %i.bs = load i64, ptr %.ptr, align 8            ; 5 uses
  br i1 %i.bk, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i: ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.bj, ptr %i.bt, align 8, !tbaa !274
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !275
  store i64 %i.bs, ptr %8, align 16
  %i.bv = trunc i64 %i.bs to i32
  br label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i: ; preds = %._crit_edge
  %.sroa.0.0.extract.trunc.i.i26.i = trunc i64 %i.bs to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i = lshr i64 %i.bs, 32
  %.sroa.5.0.extract.trunc.i.i28.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i to i32
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i
  %.09.i.i29.i = phi ptr [ %.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i ], [ %.0.i.i30.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i ] ; 6 uses
  %.0.i.i30.i = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -8 ; 2 uses
  %i.bw = load i32, ptr %.0.i.i30.i, align 4, !tbaa !274 ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, %.sroa.0.0.extract.trunc.i.i26.i
  br i1 %i.bx, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i, label %bb.c

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i: ; preds = %bb.b
  %.phi.trans.insert.i.i37.i = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -4
  %.pre.i.i38.i = load i32, ptr %.phi.trans.insert.i.i37.i, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i

bb.c:                                             ; preds = %bb.b
  %i.by = icmp ult i32 %i.bw, %.sroa.0.0.extract.trunc.i.i26.i
  br i1 %i.by, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i: ; preds = %bb.c
  %i.bz = getelementptr inbounds i8, ptr %.09.i.i29.i, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !275 ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, %.sroa.5.0.extract.trunc.i.i28.i
  br i1 %i.cb, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i
  %i.cc = phi i32 [ %.pre.i.i38.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i ], [ %i.ca, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i ]
  store i32 %i.bw, ptr %.09.i.i29.i, align 4, !tbaa !274
  %i.cd = getelementptr inbounds nuw i8, ptr %.09.i.i29.i, i64 4
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !275
  br label %bb.b, !llvm.loop !20

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i, %bb.c
  store i64 %i.bs, ptr %.09.i.i29.i, align 4
  %.pre87 = load i32, ptr %i.c, align 16, !tbaa !274
  %.pre88 = load i32, ptr %8, align 16, !tbaa !274
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i
  %i.ce = phi i32 [ %.pre88, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i ], [ %i.bv, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i ] ; 3 uses
  %i.cf = phi i32 [ %.pre87, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i ], [ %i.bi, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i ] ; 2 uses
  %i.cg = icmp ult i32 %i.cf, %i.ce
  br i1 %i.cg, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = icmp ult i32 %i.ce, %i.cf
  br i1 %i.ch, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1: ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !275
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !275
  %i.cl = icmp ult i32 %i.cj, %i.ck
  br i1 %i.cl, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1, %bb.e
  %i.cm = load i64, ptr %i.c, align 16            ; 3 uses
  %.sroa.0.0.extract.trunc.i.i26.i.1 = trunc i64 %i.cm to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i.1 = lshr i64 %i.cm, 32
  %.sroa.5.0.extract.trunc.i.i28.i.1 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i.1 to i32
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1
  %.09.i.i29.i.1 = phi ptr [ %i.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.1 ], [ %.0.i.i30.i.1, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1 ] ; 6 uses
  %.0.i.i30.i.1 = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -8 ; 2 uses
  %i.cn = load i32, ptr %.0.i.i30.i.1, align 4, !tbaa !274 ; 3 uses
  %i.co = icmp ugt i32 %i.cn, %.sroa.0.0.extract.trunc.i.i26.i.1
  br i1 %i.co, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cp = icmp ult i32 %i.cn, %.sroa.0.0.extract.trunc.i.i26.i.1
  br i1 %i.cp, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1: ; preds = %bb.g
  %i.cq = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !275 ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, %.sroa.5.0.extract.trunc.i.i28.i.1
  br i1 %i.cs, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1, %bb.g
  store i64 %i.cm, ptr %.09.i.i29.i.1, align 4
  %.pre89 = load i32, ptr %8, align 16, !tbaa !274
  br label %bb.h

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1: ; preds = %bb.f
  %.phi.trans.insert.i.i37.i.1 = getelementptr inbounds i8, ptr %.09.i.i29.i.1, i64 -4
  %.pre.i.i38.i.1 = load i32, ptr %.phi.trans.insert.i.i37.i.1, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.1: ; preds = %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1
  %i.ct = phi i32 [ %.pre.i.i38.i.1, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.1 ], [ %i.cr, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.1 ]
  store i32 %i.cn, ptr %.09.i.i29.i.1, align 4, !tbaa !274
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i29.i.1, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !275
  br label %bb.f, !llvm.loop !20

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.1, %bb.d
  %i.cv = load i64, ptr %i.c, align 16            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !275
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.dc = load <2 x i32>, ptr %i.da, align 4, !tbaa !65
  store i32 %i.ce, ptr %i.cz, align 8, !tbaa !274
  store <2 x i32> %i.dc, ptr %i.db, align 4, !tbaa !65
  store i64 %i.cv, ptr %8, align 16
  %i.dd = trunc i64 %i.cv to i32
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1
  %i.de = phi i32 [ %i.dd, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.1 ], [ %.pre89, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.1 ] ; 2 uses
  %i.df = load i32, ptr %i.d, align 8, !tbaa !274 ; 2 uses
  %i.dg = icmp ult i32 %i.df, %i.de
  br i1 %i.dg, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = icmp ult i32 %i.de, %i.df
  br i1 %i.dh, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2: ; preds = %bb.i
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !275
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !275
  %i.dl = icmp ult i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2, %bb.i
  %i.dm = load i64, ptr %i.d, align 8             ; 3 uses
  %.sroa.0.0.extract.trunc.i.i26.i.2 = trunc i64 %i.dm to i32 ; 2 uses
  %.sroa.5.0.extract.shift.i.i27.i.2 = lshr i64 %i.dm, 32
  %.sroa.5.0.extract.trunc.i.i28.i.2 = trunc nuw i64 %.sroa.5.0.extract.shift.i.i27.i.2 to i32
  br label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2
  %.09.i.i29.i.2 = phi ptr [ %i.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.thread16.i25.i.2 ], [ %.0.i.i30.i.2, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2 ] ; 6 uses
  %.0.i.i30.i.2 = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -8 ; 2 uses
  %i.dn = load i32, ptr %.0.i.i30.i.2, align 4, !tbaa !274 ; 3 uses
  %i.do = icmp ugt i32 %i.dn, %.sroa.0.0.extract.trunc.i.i26.i.2
  br i1 %i.do, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = icmp ult i32 %i.dn, %.sroa.0.0.extract.trunc.i.i26.i.2
  br i1 %i.dp, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2: ; preds = %bb.k
  %i.dq = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !275 ; 2 uses
  %i.ds = icmp ugt i32 %i.dr, %.sroa.5.0.extract.trunc.i.i28.i.2
  br i1 %i.ds, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2, label %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2

_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2, %bb.k
  store i64 %i.dm, ptr %.09.i.i29.i.2, align 4
  %.pre90 = load i32, ptr %i.b, align 4, !tbaa !275
  %.pre91 = load i32, ptr %i.e, align 4, !tbaa !275
  %i.dt = zext i32 %.pre90 to i64
  br label %_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2: ; preds = %bb.j
  %.phi.trans.insert.i.i37.i.2 = getelementptr inbounds i8, ptr %.09.i.i29.i.2, i64 -4
  %.pre.i.i38.i.2 = load i32, ptr %.phi.trans.insert.i.i37.i.2, align 4, !tbaa !65
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread.i.i35.i.2: ; preds = %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2
  %i.du = phi i32 [ %.pre.i.i38.i.2, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.thread_crit_edge.i.i36.i.2 ], [ %i.dr, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairIjjEPS4_EEbRT_T0_.exit.i.i31.i.2 ]
  store i32 %i.dn, ptr %.09.i.i29.i.2, align 4, !tbaa !274
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i29.i.2, i64 4
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !275
  br label %bb.j, !llvm.loop !20

_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairIjjES5_EEbT_T0_.exit.i24.i.2, %bb.h
  %i.dw = load i64, ptr %i.d, align 8
  %i.dx = lshr i64 %i.dw, 32
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !65
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !65
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !275
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !65
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !275
  br label %_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit

_ZSt22__final_insertion_sortIPSt4pairIjjEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_.exit: ; preds = %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2
  %i.eg = phi i32 [ %i.dz, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2 ], [ %.pre91, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2 ]
  %i.eh = phi i64 [ %i.dx, %_ZSt13move_backwardIPSt4pairIjjES2_ET0_T_S4_S3_.exit.i40.i.2 ], [ %i.dt, %_ZSt25__unguarded_linear_insertIPSt4pairIjjEN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i32.i.2 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.eh
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !275
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.em
  %i.eo = load i32, ptr %i.ei, align 4, !tbaa !275
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ep
  %i.er = zext i32 %i.eg to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.er
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.et = load i64, ptr %i.es, align 8, !tbaa !250, !noalias !1250
  store i64 %i.et, ptr %0, align 8, !tbaa !250, !alias.scope !1250
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.eq, align 8, !tbaa !250, !noalias !1250
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !250, !alias.scope !1250
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ex = load i64, ptr %i.en, align 8, !tbaa !250, !noalias !1250
  store i64 %i.ex, ptr %i.ew, align 8, !tbaa !250, !alias.scope !1250
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load i64, ptr %i.ek, align 8, !tbaa !250, !noalias !1250
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !250, !alias.scope !1250
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_SI_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEET_SI_SI_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph45, !llvm.loop !1251

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa41 = phi i64 [ %i.c, %.lr.ph ], [ %i.aw, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = udiv exact i64 %.lcssa41, 24             ; 2 uses
  %i.j = add nsw i64 %i.i, -2
  %i.k = lshr i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds [24 x i8], ptr %0, i64 %.09.i.i.i
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_SJ_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %i.i, ptr noundef nonnull byval(%"class.CGAL::Point_3") align 8 %i.l)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !1252

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge25.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.a                       ; 2 uses
  %i.q = sdiv exact i64 %i.p, 24
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_T0_SJ_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull byval(%"class.CGAL::Point_3") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.r = icmp sgt i64 %i.p, 24
  br i1 %i.r, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_SI_T0_.exit, !llvm.loop !1253

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2544 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02643 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %i.s = phi i64 [ %i.aw, %bb.b ], [ %i.c, %.lr.ph ]
  %i.t = udiv i64 %i.s, 48
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %storemerge2544, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_SI_SI_T0_(ptr %0, ptr nonnull %i.e, ptr %i.u, ptr nonnull %i.v)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph45
  %.sroa.014.0.i.i = phi ptr [ %i.e, %.lr.ph45 ], [ %i.at, %bb.f ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2544, %.lr.ph45 ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.w = load double, ptr %0, align 8, !tbaa !76  ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i, %bb.d
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %bb.d ], [ %i.ae, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i ] ; 12 uses
  %i.x = load double, ptr %.sroa.014.1.i.i, align 8, !tbaa !76 ; 3 uses
  %i.y = fcmp olt double %i.x, %i.w
  %i.z = fcmp ogt double %i.x, %i.w
  %..i.i.i.i.i.i.i = zext i1 %i.z to i32
  %.0.i.i.i.i.i.i.i = select i1 %i.y, i32 -1, i32 %..i.i.i.i.i.i.i
  switch i32 %.0.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.preheader
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.preheader: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i, %bb.e
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !76
  %i.ac = load double, ptr %i.f, align 8, !tbaa !76
  %i.ad = fcmp olt double %i.ab, %i.ac
  br i1 %i.ad, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.i.i, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24
  br label %bb.e, !llvm.loop !1254

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.preheader
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.preheader ], [ %.sroa.0.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge ] ; 4 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %i.af = load double, ptr %.sroa.0.1.i.i, align 8, !tbaa !76 ; 3 uses
  %i.ag = fcmp olt double %i.w, %i.af
  %i.ah = fcmp ogt double %i.w, %i.af
  %..i.i.i.i.i8.i.i = zext i1 %i.ah to i32
  %.0.i.i.i.i.i9.i.i = select i1 %i.ag, i32 -1, i32 %..i.i.i.i.i8.i.i
  switch i32 %.0.i.i.i.i.i9.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i [
    i32 -1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge
    i32 1, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  ]

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  %i.ai = load double, ptr %i.f, align 8, !tbaa !76
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !76
  %i.al = fcmp olt double %i.ai, %i.ak
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i, !llvm.loop !1255

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit.thread18.i.i
  %i.am = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.am, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEET_SI_SI_T0_.exit

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  store double %i.af, ptr %.sroa.014.1.i.i, align 8, !tbaa !76
  store double %i.x, ptr %.sroa.0.1.i.i, align 8, !tbaa !76
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 2 uses
  %.079.i.ptr.1.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  %i.ao = load double, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !76
  %i.ap = load double, ptr %i.an, align 8, !tbaa !76
  store double %i.ap, ptr %.079.i.ptr.1.i.i.i.i.i.i.i.i.i, align 8, !tbaa !76
  store double %i.ao, ptr %i.an, align 8, !tbaa !76
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %.079.i.ptr.2.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  %i.ar = load double, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !76
  %i.as = load double, ptr %i.aq, align 8, !tbaa !76
  store double %i.as, ptr %.079.i.ptr.2.i.i.i.i.i.i.i.i.i, align 8, !tbaa !76
  store double %i.ar, ptr %i.aq, align 8, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 24
  br label %bb.d, !llvm.loop !1256

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEET_SI_SI_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4CGAL8internal19Projection_traits_3INS2_5EpickELi1EE9Less_xy_2EEclINS_17__normal_iteratorIPNS2_7Point_3IS5_EESt6vectorISC_SaISC_EEEESH_EEbT_T0_.exit11.thread21.i.i
  %i.au = add nsw i64 %.02643, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2544, i64 noundef %i.au)
  %i.av = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.aw = sub i64 %i.av, %i.a                     ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, 384
  br i1 %i.ax, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_SI_T0_.exit, !llvm.loop !1251

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4CGAL7Point_3INS2_5EpickEEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_8internal19Projection_traits_3IS4_Li1EE9Less_xy_2EEEET_SI_SI_T0_.exit, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_2
