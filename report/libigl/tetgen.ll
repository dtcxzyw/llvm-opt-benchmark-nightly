Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 556
begin_hunk_0_@_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_:bb.a
bb.m:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !59
  %i.r = fcmp ogt double %i.j, 0.000000e+00       ; 2 uses
  %i.s = fcmp ogt double %i.l, 0.000000e+00       ; 4 uses
  %i.t = fcmp ogt double %i.n, 0.000000e+00       ; 8 uses
  br i1 %i.i, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  br i1 %i.r, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  br i1 %i.s, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.t, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 9, ptr %10, align 4, !tbaa !59
  store i32 3, ptr %11, align 4, !tbaa !59
  store i32 0, ptr %i.u, align 4, !tbaa !59
  br label %bb.ap

bb.r:                                             ; preds = %bb.p
  store i32 8, ptr %10, align 4, !tbaa !59
  store i32 2, ptr %11, align 4, !tbaa !59
  store i32 0, ptr %i.u, align 4, !tbaa !59
  br label %bb.ap

bb.s:                                             ; preds = %bb.o
  br i1 %i.t, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %10, align 4, !tbaa !59
  store i32 %.sroa.12.0166, ptr %11, align 4, !tbaa !59
  store i32 0, ptr %i.u, align 4, !tbaa !59
  br label %bb.ap

bb.u:                                             ; preds = %bb.s
  store i32 7, ptr %10, align 4, !tbaa !59
  store i32 2, ptr %11, align 4, !tbaa !59
  store i32 0, ptr %i.u, align 4, !tbaa !59
  br label %bb.ap

bb.v:                                             ; preds = %bb.n
  br i1 %i.s, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  br i1 %i.t, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 8, ptr %10, align 4, !tbaa !59
  store i32 %.sroa.024.0167, ptr %11, align 4, !tbaa !59
  store i32 0, ptr %i.v, align 4, !tbaa !59
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  store i32 7, ptr %10, align 4, !tbaa !59
  store i32 %.sroa.024.0167, ptr %11, align 4, !tbaa !59
  store i32 0, ptr %i.v, align 4, !tbaa !59
  br label %bb.ap

bb.z:                                             ; preds = %bb.v
  br i1 %i.t, label %bb.aa, label %bb.ap

bb.aa:                                            ; preds = %bb.z
  store i32 7, ptr %10, align 4, !tbaa !59
  store i32 %.sroa.12.0166, ptr %11, align 4, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !59
  br label %bb.ap

bb.ab:                                            ; preds = %bb.m
  br i1 %i.r, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  br i1 %i.s, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.t, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 6, ptr %10, align 4, !tbaa !59
  store i32 0, ptr %11, align 4, !tbaa !59
  store i32 %.sroa.8.0168, ptr %i.x, align 4, !tbaa !59
  br label %bb.ap

bb.af:                                            ; preds = %bb.ad
  store i32 5, ptr %10, align 4, !tbaa !59
  store i32 2, ptr %11, align 4, !tbaa !59
  store i32 %.sroa.8.0168, ptr %i.x, align 4, !tbaa !59
  br label %bb.ap

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.t, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 5, ptr %10, align 4, !tbaa !59
  store i32 %.sroa.12.0166, ptr %11, align 4, !tbaa !59
  store i32 %.sroa.8.0168, ptr %i.x, align 4, !tbaa !59
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ag
  store i32 2, ptr %10, align 4, !tbaa !59
  store i32 2, ptr %11, align 4, !tbaa !59
  store i32 %.sroa.8.0168, ptr %i.x, align 4, !tbaa !59
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ab
  br i1 %i.s, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  br i1 %i.t, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 5, ptr %10, align 4, !tbaa !59
  store i32 %.sroa.024.0167, ptr %11, align 4, !tbaa !59
  store i32 %.sroa.8.0168, ptr %i.y, align 4, !tbaa !59
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  store i32 2, ptr %10, align 4, !tbaa !59
  store i32 %.sroa.024.0167, ptr %11, align 4, !tbaa !59
  store i32 %.sroa.8.0168, ptr %i.y, align 4, !tbaa !59
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  br i1 %i.t, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 2, ptr %10, align 4, !tbaa !59
  store i32 %.sroa.12.0166, ptr %11, align 4, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %.sroa.8.0168, ptr %i.z, align 4, !tbaa !59
  br label %bb.ap

bb.ap:                                            ; preds = %bb.y, %bb.x, %bb.aa, %bb.z, %bb.r, %bb.q, %bb.u, %bb.t, %bb.am, %bb.al, %bb.ao, %bb.an, %bb.af, %bb.ae, %bb.ai, %bb.ah, %bb.l, %bb.k, %bb.j, %.thread, %bb.f, %bb.b, %bb.i
  %.0142 = phi i32 [ 0, %bb.b ], [ %i.h, %bb.i ], [ 0, %bb.f ], [ 0, %.thread ], [ 0, %bb.j ], [ 0, %bb.k ], [ 1, %bb.l ], [ 2, %bb.ah ], [ 2, %bb.ai ], [ 2, %bb.ae ], [ 2, %bb.af ], [ 2, %bb.an ], [ 2, %bb.ao ], [ 2, %bb.al ], [ 2, %bb.am ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.q ], [ 2, %bb.r ], [ 2, %bb.z ], [ 2, %bb.aa ], [ 2, %bb.x ], [ 2, %bb.y ]
  ret i32 %.0142
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN10tetgenmesh13tri_edge_testEPdS0_S0_S0_S0_S0_iPiS1_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(none) %8, ptr noundef %9) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5)
  %i.c = tail call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, double noundef %i.a, double noundef %i.b, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 4) i32 @_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [4 x i32], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.c = call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, double noundef %6, double noundef %7, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  switch i32 %i.c, label %bb.f [
    i32 4, label %bb.c
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !59
  %i.e = icmp eq i32 %i.d, 2
  %. = select i1 %i.e, i32 2, i32 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !59   ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !59
  %i.i = icmp eq i32 %i.h, 0
  %.13 = select i1 %i.i, i32 2, i32 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.d, %bb.b, %bb.e
  %.0 = phi i32 [ %., %bb.b ], [ %i.f, %bb.c ], [ %.13, %bb.d ], [ 1, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 5) i32 @_ZN10tetgenmesh13tri_tri_interEPdS0_S0_S0_S0_S0_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(69984) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 7 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca [2 x i32], align 4                ; 8 uses
  %i.d = alloca [4 x i32], align 16               ; 5 uses
  %i.e = alloca [2 x i32], align 4                ; 7 uses
  %i.f = alloca [4 x i32], align 16               ; 4 uses
  %i.g = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 4 uses
  %i.h = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5) ; 3 uses
  %i.i = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %6) ; 3 uses
  %i.j = fmul double %i.g, %i.h
  %i.k = fcmp ogt double %i.j, 0.000000e+00
  %i.l = fmul double %i.g, %i.i
  %i.m = fcmp ogt double %i.l, 0.000000e+00
  %or.cond = and i1 %i.k, %i.m
  br i1 %or.cond, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %1) ; 4 uses
  %i.o = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %2) ; 3 uses
  %i.p = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %3) ; 3 uses
  %i.q = fmul double %i.n, %i.o
  %i.r = fcmp ogt double %i.q, 0.000000e+00
  %i.s = fmul double %i.n, %i.p
  %i.t = fcmp ogt double %i.s, 0.000000e+00
  %or.cond101 = and i1 %i.r, %i.t
  br i1 %or.cond101, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.u = call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, double noundef %i.g, double noundef %i.h, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
  switch i32 %i.u, label %select.unfold [
    i32 4, label %bb.e
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.e, align 4, !tbaa !59
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %select.unfold, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.e, align 4, !tbaa !59
  switch i32 %i.x, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit [
    i32 2, label %bb.f
    i32 3, label %select.unfold
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %select.unfold, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit

_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit: ; preds = %bb.e, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %bb.r

select.unfold:                                    ; preds = %bb.f, %bb.d, %bb.e, %bb.c
  %i.ab = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ], [ false, %bb.f ] ; 3 uses
  %i.ac = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  %spec.select = zext i1 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.ad = call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5, ptr noundef %6, ptr noundef null, double noundef %i.h, double noundef %i.i, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  switch i32 %i.ad, label %select.unfold117.thread [
    i32 4, label %bb.h
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %select.unfold
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !59
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %select.unfold117.thread, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109

bb.h:                                             ; preds = %select.unfold
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !59
  switch i32 %i.ag, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109 [
    i32 2, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !59
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %select.unfold117.thread, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109

_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109: ; preds = %bb.h, %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.r

select.unfold117.thread:                          ; preds = %bb.g, %select.unfold, %bb.i
  %..ph = phi i32 [ 2, %bb.i ], [ 0, %select.unfold ], [ 2, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %7 = select i1 %i.ab, i32 2, i32 1
  br label %bb.k

bb.k:                                             ; preds = %select.unfold117.thread, %bb.j
  %.128 = phi i32 [ 0, %bb.j ], [ %..ph, %select.unfold117.thread ]
  %8 = phi i1 [ true, %bb.j ], [ false, %select.unfold117.thread ]
  %9 = phi i32 [ %7, %bb.j ], [ %spec.select, %select.unfold117.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.ak = call noundef i32 @_ZN10tetgenmesh13tri_edge_tailEPdS0_S0_S0_S0_S0_ddiPiS1_(ptr nonnull readnone align 8 poison, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %6, ptr noundef %4, ptr noundef null, double noundef %i.i, double noundef %i.g, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  switch i32 %i.ak, label %select.unfold121 [
    i32 4, label %bb.m
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.a, align 4, !tbaa !59
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %select.unfold121, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113

bb.m:                                             ; preds = %bb.k
  %i.an = load i32, ptr %i.a, align 4, !tbaa !59
  switch i32 %i.an, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113 [
    i32 2, label %bb.n
    i32 3, label %select.unfold121
  ]

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !59
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %select.unfold121, label %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113

_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113: ; preds = %bb.m, %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.r

select.unfold121:                                 ; preds = %bb.n, %bb.l, %bb.m, %bb.k
  %10 = phi i1 [ false, %bb.l ], [ true, %bb.m ], [ false, %bb.k ], [ false, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %11 = zext i1 %10 to i32
  %spec.select103 = add nuw nsw i32 %9, %11
  %12 = icmp eq i32 %spec.select103, 3
  br i1 %12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %select.unfold121
  %i.ar = call noundef i32 @_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd(ptr nonnull align 8 poison, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %1, ptr noundef %2, double noundef %i.n, double noundef %i.o)
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = call noundef i32 @_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd(ptr nonnull align 8 poison, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef %3, double noundef %i.o, double noundef %i.p)
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = call noundef i32 @_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd(ptr nonnull align 8 poison, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %3, ptr noundef %1, double noundef %i.p, double noundef %i.n)
  %i.aw = icmp eq i32 %i.av, 1                    ; 2 uses
  %13 = or i1 %i.aw, %8
  %brmerge104.a = or i1 %13, %i.ab
  %brmerge105 = or i1 %10, %brmerge104.a
  %.mux.mux.mux = select i1 %i.aw, i32 1, i32 3
  %spec.select125 = select i1 %i.ac, i32 2, i32 %.128
  %spec.select126 = select i1 %brmerge105, i32 %.mux.mux.mux, i32 %spec.select125
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit, %select.unfold121, %bb.p, %bb.o, %bb.b, %bb.a
  %.295 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 4, %select.unfold121 ], [ 1, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit ], [ 1, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit109 ], [ 1, %_ZN10tetgenmesh19tri_edge_inter_tailEPdS0_S0_S0_S0_dd.exit113 ], [ %spec.select126, %bb.q ], [ 1, %bb.o ], [ 1, %bb.p ]
  ret i32 %.295
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN10tetgenmesh8lu_decmpEPA4_diPiPdi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) initializes((0, 8)) %4, i32 noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store double 1.000000e+00, ptr %4, align 8, !tbaa !58
  %i.b = add i32 %5, %2                           ; 6 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.preheader115.us.preheader, label %.preheader113

.preheader115.us.preheader:                       ; preds = %bb.a
  %i.d = sext i32 %5 to i64                       ; 2 uses
  %i.e = sext i32 %i.b to i64                     ; 2 uses
  br label %.preheader115.us

.preheader115.us:                                 ; preds = %.preheader115.us.preheader, %bb.c
  %indvars.iv142 = phi i64 [ %i.d, %.preheader115.us.preheader ], [ %indvars.iv.next143, %bb.c ] ; 5 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv142
  br label %bb.b

bb.b:                                             ; preds = %.preheader115.us, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.preheader115.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.0101120.us = phi double [ 0.000000e+00, %.preheader115.us ], [ %.1102.us, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load double, ptr %i.g, align 8, !tbaa !58
  %i.i = tail call double @llvm.fabs.f64(double %i.h) ; 2 uses
  %i.j = fcmp olt double %.0101120.us, %i.i
  %.1102.us = select i1 %i.j, double %i.i, double %.0101120.us ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.k, label %bb.b, label %._crit_edge.us, !llvm.loop !569

bb.c:                                             ; preds = %._crit_edge.us
  %i.l = fdiv double 1.000000e+00, %.1102.us
  %i.m = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv142
  store double %i.l, ptr %i.m, align 8, !tbaa !58
  %i.n = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv142
  %i.o = trunc nsw i64 %indvars.iv142 to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !59
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.p = icmp slt i64 %indvars.iv.next143, %i.e
  br i1 %i.p, label %.preheader115.us, label %.preheader113, !llvm.loop !570

._crit_edge.us:                                   ; preds = %bb.b
  %i.q = fcmp une double %.1102.us, 0.000000e+00
  br i1 %i.q, label %bb.c, label %.loopexit114

.preheader113:                                    ; preds = %bb.c, %bb.a
  %i.r = add nsw i32 %i.b, -1                     ; 3 uses
  %i.s = icmp slt i32 %5, %i.r
  br i1 %i.s, label %.preheader112.preheader, label %._crit_edge138

.preheader112.preheader:                          ; preds = %.preheader113
  %i.t = sext i32 %5 to i64
  %i.u = sext i32 %i.b to i64                     ; 2 uses
  %i.v = add i32 %5, 1
  %scevgep172 = getelementptr i8, ptr %1, i64 8
  %i.w = add i32 %2, -2                           ; 2 uses
  %scevgep176 = getelementptr i8, ptr %1, i64 8
  %i.x = add i32 %5, %2
  %i.y = add i32 %5, %2
  br label %.preheader112

.loopexit111:                                     ; preds = %..loopexit_crit_edge.us, %bb.f
  %lftr.wideiv163 = trunc i64 %indvars.iv.next146 to i32
  %exitcond164.not = icmp eq i32 %i.r, %lftr.wideiv163
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond164.not, label %._crit_edge138, label %.preheader112, !llvm.loop !571

.preheader112:                                    ; preds = %.preheader112.preheader, %.loopexit111
  %indvar = phi i32 [ 0, %.preheader112.preheader ], [ %indvar.next, %.loopexit111 ] ; 6 uses
  %indvars.iv150.in = phi i32 [ %5, %.preheader112.preheader ], [ %indvars.iv150, %.loopexit111 ]
  %indvars.iv145 = phi i64 [ %i.t, %.preheader112.preheader ], [ %indvars.iv.next146, %.loopexit111 ] ; 12 uses
  %.098136 = phi i32 [ 0, %.preheader112.preheader ], [ %.2100.lcssa, %.loopexit111 ] ; 2 uses
  %.neg = add i32 %indvar, 1
  %i.z = sub i32 %i.w, %indvar                    ; 2 uses
  %i.aa = add i32 %i.v, %indvar
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3                    ; 3 uses
  %i.ad = sub i32 %i.w, %indvar
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  %indvars.iv150 = add i32 %indvars.iv150.in, 1   ; 2 uses
  %i.ag = sext i32 %indvars.iv150 to i64          ; 5 uses
  %i.ah = icmp slt i64 %indvars.iv145, %i.u
  br i1 %i.ah, label %.lr.ph, label %.loopexit114

.lr.ph:                                           ; preds = %.preheader112
  %i.ai = sub i32 %2, %indvar
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %indvars.iv145 ; 3 uses
  %xtraiter = and i32 %i.ai, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.aj = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !59
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %gep.prol = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.al
  %i.am = load double, ptr %gep.prol, align 8, !tbaa !58
  %i.an = tail call double @llvm.fabs.f64(double %i.am)
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.al
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !58
  %i.aq = fmul double %i.an, %i.ap                ; 2 uses
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00     ; 2 uses
  %.3.prol = select i1 %i.ar, double %i.aq, double 0.000000e+00 ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv145 to i32
  %.2100.prol = select i1 %i.ar, i32 %i.as, i32 %.098136 ; 2 uses
  %indvars.iv.next148.prol = add nsw i64 %indvars.iv145, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.3.lcssa.unr = phi double [ poison, %.lr.ph ], [ %.3.prol, %.prol.loopexit.unr-lcssa ]
  %.2100.lcssa.unr = phi i32 [ poison, %.lr.ph ], [ %.2100.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv147.unr = phi i64 [ %indvars.iv145, %.lr.ph ], [ %indvars.iv.next148.prol, %.prol.loopexit.unr-lcssa ]
  %.199126.unr = phi i32 [ %.098136, %.lr.ph ], [ %.2100.prol, %.prol.loopexit.unr-lcssa ]
  %.2103125.unr = phi double [ 0.000000e+00, %.lr.ph ], [ %.3.prol, %.prol.loopexit.unr-lcssa ]
  %i.at = icmp eq i32 %2, %.neg
  br i1 %i.at, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv147 = phi i64 [ %indvars.iv.next148.1, %.lr.ph.new ], [ %indvars.iv147.unr, %.prol.loopexit ] ; 4 uses
  %.199126 = phi i32 [ %.2100.1, %.lr.ph.new ], [ %.199126.unr, %.prol.loopexit ]
  %.2103125 = phi double [ %.3.1, %.lr.ph.new ], [ %.2103125.unr, %.prol.loopexit ] ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv147
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.aw
  %i.ax = load double, ptr %gep, align 8, !tbaa !58
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aw
  %i.ba = load double, ptr %i.az, align 8, !tbaa !58
  %i.bb = fmul double %i.ay, %i.ba                ; 2 uses
  %i.bc = fcmp olt double %.2103125, %i.bb        ; 2 uses
  %.3 = select i1 %i.bc, double %i.bb, double %.2103125 ; 2 uses
  %i.bd = trunc nsw i64 %indvars.iv147 to i32
  %.2100 = select i1 %i.bc, i32 %i.bd, i32 %.199126
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next148
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !59
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %gep.1 = getelementptr [32 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load double, ptr %gep.1, align 8, !tbaa !58
  %i.bi = tail call double @llvm.fabs.f64(double %i.bh)
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bg
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !58
  %i.bl = fmul double %i.bi, %i.bk                ; 2 uses
  %i.bm = fcmp olt double %.3, %i.bl              ; 2 uses
  %.3.1 = select i1 %i.bm, double %i.bl, double %.3 ; 2 uses
  %i.bn = trunc nsw i64 %indvars.iv.next148 to i32
  %.2100.1 = select i1 %i.bm, i32 %i.bn, i32 %.2100 ; 2 uses
  %indvars.iv.next148.1 = add nsw i64 %indvars.iv147, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next148.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.b, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !572

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %.3.lcssa = phi double [ %.3.lcssa.unr, %.prol.loopexit ], [ %.3.1, %.lr.ph.new ]
  %.2100.lcssa = phi i32 [ %.2100.lcssa.unr, %.prol.loopexit ], [ %.2100.1, %.lr.ph.new ] ; 3 uses
  %i.bo = fcmp oeq double %.3.lcssa, 0.000000e+00
  br i1 %i.bo, label %.loopexit114, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.bp = trunc nsw i64 %indvars.iv145 to i32
  %.not = icmp eq i32 %.2100.lcssa, %i.bp
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !59
  %i.bs = sext i32 %.2100.lcssa to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !59
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !59
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !59
  %i.bv = load double, ptr %4, align 8, !tbaa !58
  %i.bw = fneg double %i.bv
  store double %i.bw, ptr %4, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bx = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv145
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !59
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [32 x i8], ptr %1, i64 %i.bz ; 5 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %indvars.iv145
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !58
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1 ; 3 uses
  %i.cd = icmp slt i64 %indvars.iv.next146, %i.u
  br i1 %i.cd, label %.lr.ph133.preheader, label %.loopexit111

.lr.ph133.preheader:                              ; preds = %bb.f
  %scevgep = getelementptr i8, ptr %1, i64 %i.ac
  %i.ce = getelementptr i8, ptr %scevgep172, i64 %i.ac
  %scevgep173 = getelementptr i8, ptr %i.ce, i64 %i.af
  %i.cf = shl nsw i64 %i.bz, 5
  %i.cg = add nsw i64 %i.cf, %i.ac                ; 2 uses
end_hunk_0
