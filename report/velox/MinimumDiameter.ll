inline.NumInlined: 367
inline.NumDeleted: 230
begin_hunk_0_@_ZN4geos9algorithm15MinimumDiameter19getMinimumRectangleEv:bb.a
  %.not115 = icmp eq i64 %i.ak, 0
  %i.al = extractelement <2 x double> %i.ag, i64 1 ; 5 uses
  %.pre = fneg double %i.al                       ; 5 uses
  br i1 %.not115, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %14 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %i.am = phi <4 x double> [ <double 0x7FF0000000000000, double 0x7FF0000000000000, double 0xFFF0000000000000, double 0xFFF0000000000000>, %bb.g ], [ %i.do, %.lr.ph ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.an = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ag) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4geos9algorithm15MinimumDiameter19getMinimumRectangleEv:bb.a
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ar = extractelement <4 x double> %i.am, i64 3
  %i.as = fdiv double %i.ar, %.pre                ; 2 uses
  %i.at = extractelement <2 x double> %i.ag, i64 0
  %i.au = fdiv double %i.at, %i.al                ; 2 uses
  %i.av = fsub double %i.as, %i.au
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.aw = extractelement <4 x double> %i.am, i64 1
  %i.ax = fdiv double %i.aw, %.pre                ; 2 uses
  %i.ay = fsub double %i.ax, %i.au
  br label %_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd.exit61
end_hunk_1
begin_hunk_2_@_ZN4geos9algorithm15MinimumDiameter19getMinimumRectangleEv:bb.a
bb.i:                                             ; preds = %._crit_edge
  %i.az = extractelement <2 x double> %i.ag, i64 0 ; 2 uses
  %i.ba = fneg double %i.az                       ; 2 uses
  %i.bb = extractelement <4 x double> %i.am, i64 3
  %i.bc = fdiv double %i.bb, %i.ba                ; 2 uses
  %i.bd = fdiv double %i.al, %i.az                ; 2 uses
  %i.be = fsub double %i.bc, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bf = extractelement <4 x double> %i.am, i64 1
  %i.bg = fdiv double %i.bf, %i.ba                ; 2 uses
  %i.bh = fsub double %i.bg, %i.bd
  br label %_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd.exit61
end_hunk_2
begin_hunk_3_@_ZN4geos9algorithm15MinimumDiameter19getMinimumRectangleEv:bb.a
  br i1 %i.bo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd.exit61
  %i.bp = extractelement <4 x double> %i.am, i64 2
  %i.bq = extractelement <2 x double> %i.ag, i64 0 ; 3 uses
  %i.br = fdiv double %i.bp, %i.bq                ; 2 uses
  %i.bs = fdiv double %i.al, %i.bq                ; 2 uses
  %i.bt = fadd double %i.bs, %i.br
  %i.bu = extractelement <4 x double> %i.am, i64 0
  %i.bv = fdiv double %i.bu, %i.bq                ; 2 uses
  %i.bw = fadd double %i.bs, %i.bv
  br label %_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd.exit79

bb.k:                                             ; preds = %_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd.exit61
  %i.bx = extractelement <4 x double> %i.am, i64 2
  %i.by = fdiv double %i.bx, %.pre                ; 2 uses
  %i.bz = extractelement <2 x double> %i.ag, i64 0
  %i.ca = fdiv double %i.bz, %i.al                ; 2 uses
  %i.cb = fadd double %i.ca, %i.by
  %i.cc = extractelement <4 x double> %i.am, i64 0
  %i.cd = fdiv double %i.cc, %.pre                ; 2 uses
  %i.ce = fadd double %i.ca, %i.cd
  br label %_ZN4geos9algorithm15MinimumDiameter21computeSegmentForLineEddd.exit79
end_hunk_3
begin_hunk_4_@_ZN4geos9algorithm15MinimumDiameter19getMinimumRectangleEv:bb.a
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 0)
          to label %bb.l unwind label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.044108 = phi i64 [ %i.dp, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.cx = phi <4 x double> [ %i.do, %.lr.ph ], [ <double 0x7FF0000000000000, double 0x7FF0000000000000, double 0xFFF0000000000000, double 0xFFF0000000000000>, %.lr.ph.preheader ] ; 3 uses
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !27  ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
end_hunk_4
begin_hunk_5_@_ZN4geos9algorithm15MinimumDiameter19getMinimumRectangleEv:bb.a
  %i.dh = load <2 x double>, ptr %i.dc, align 8, !tbaa !11 ; 2 uses
  %i.di = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i64 noundef %.044108)
  %i.dj = load <2 x double>, ptr %i.di, align 8, !tbaa !11 ; 2 uses
  %15 = shufflevector <2 x double> %i.ag, <2 x double> %i.dj, <2 x i32> <i32 0, i32 3>
  %16 = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x double> %16, double %.pre, i64 1
  %i.dl = fmul <2 x double> %15, %i.dk
  %17 = shufflevector <2 x double> %i.dj, <2 x double> %i.dh, <2 x i32> <i32 2, i32 0>
  %i.dm = fmul <2 x double> %14, %17
  %i.dn = fsub <2 x double> %i.dl, %i.dm
  %18 = shufflevector <2 x double> %i.dn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %19 = fcmp olt <4 x double> %18, %i.cx
  %20 = fcmp ogt <4 x double> %18, %i.cx
  %21 = shufflevector <4 x i1> %19, <4 x i1> %20, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.do = select <4 x i1> %21, <4 x double> %18, <4 x double> %i.cx ; 2 uses
  %i.dp = add nuw i64 %.044108, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105
end_hunk_5
begin_hunk_6_@_ZN4geos9algorithm15MinimumDiameter18computeMaximumLineEPKNS_4geom18CoordinateSequenceEPKNS2_15GeometryFactoryE:bb.a
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.sroa.625.0.lcssa.a = phi double [ %.sroa.038.0.copyload, %bb.a ], [ %.sroa.038.1, %bb.i ] ; 2 uses
  %.sroa.022.0.lcssa.a = phi double [ %.sroa.033.0.copyload, %bb.a ], [ %.sroa.033.1, %bb.i ] ; 2 uses
  %.sroa.7.0.lcssa.a = phi double [ %.sroa.729.0.copyload, %bb.a ], [ %.sroa.625.1.a, %bb.i ]
  %.sroa.6.0.lcssa.a = phi double [ %.sroa.625.0.copyload, %bb.a ], [ %.sroa.022.1.a, %bb.i ]
  %.sroa.0.0.lcssa.a = phi double [ %.sroa.022.0.copyload, %bb.a ], [ %.sroa.729.1, %bb.i ]
  %.sroa.729.0.lcssa = phi double [ %.sroa.7.0.copyload, %bb.a ], [ %.sroa.7.1, %bb.i ]
  %.sroa.033.0.lcssa = phi double [ %.sroa.6.0.copyload, %bb.a ], [ %.sroa.6.1, %bb.i ]
  %.sroa.038.0.lcssa = phi double [ %.sroa.0.0.copyload, %bb.a ], [ %.sroa.0.1, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store double %.sroa.625.0.lcssa.a, ptr %3, align 8, !tbaa !11
  %.sroa.741.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.741.0..sroa_idx42, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.741, i64 16, i1 false), !tbaa.struct !109
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store double %.sroa.022.0.lcssa.a, ptr %4, align 8, !tbaa !11
  %.sroa.736.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.736.0..sroa_idx37, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.736, i64 16, i1 false), !tbaa.struct !109
  %i.v = fcmp oeq double %.sroa.625.0.lcssa.a, %.sroa.022.0.lcssa.a
  br i1 %i.v, label %bb.j, label %bb.k

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.05270 = phi i64 [ %i.ah, %bb.i ], [ 1, %bb.a ] ; 2 uses
  %.sroa.033.069 = phi double [ %.sroa.0.1, %bb.i ], [ %.sroa.0.0.copyload, %bb.a ]
  %.sroa.6.068 = phi double [ %.sroa.6.1, %bb.i ], [ %.sroa.6.0.copyload, %bb.a ] ; 2 uses
  %.sroa.729.067 = phi double [ %.sroa.7.1, %bb.i ], [ %.sroa.7.0.copyload, %bb.a ]
  %.sroa.0.066 = phi double [ %.sroa.729.1, %bb.i ], [ %.sroa.022.0.copyload, %bb.a ]
  %.sroa.6.065 = phi double [ %.sroa.022.1.a, %bb.i ], [ %.sroa.625.0.copyload, %bb.a ] ; 2 uses
  %.sroa.7.064 = phi double [ %.sroa.625.1.a, %bb.i ], [ %.sroa.729.0.copyload, %bb.a ]
  %.sroa.022.063 = phi double [ %.sroa.033.1, %bb.i ], [ %.sroa.033.0.copyload, %bb.a ] ; 2 uses
  %.sroa.625.062 = phi double [ %.sroa.038.1, %bb.i ], [ %.sroa.038.0.copyload, %bb.a ] ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.05270) ; 6 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !33 ; 6 uses
  %i.ab = fcmp olt double %i.aa, %.sroa.625.062
  br i1 %i.ab, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
end_hunk_6
begin_hunk_7_@_ZN4geos9algorithm15MinimumDiameter18computeMaximumLineEPKNS_4geom18CoordinateSequenceEPKNS2_15GeometryFactoryE:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.038.1 = phi double [ %i.aa, %bb.b ], [ %.sroa.625.062, %.lr.ph ] ; 2 uses
  %i.ac = fcmp ogt double %i.aa, %.sroa.022.063
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_7
begin_hunk_8_@_ZN4geos9algorithm15MinimumDiameter18computeMaximumLineEPKNS_4geom18CoordinateSequenceEPKNS2_15GeometryFactoryE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.033.1 = phi double [ %i.aa, %bb.d ], [ %.sroa.022.063, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !110 ; 4 uses
  %i.af = fcmp olt double %i.ae, %.sroa.6.065
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_8
begin_hunk_9_@_ZN4geos9algorithm15MinimumDiameter18computeMaximumLineEPKNS_4geom18CoordinateSequenceEPKNS2_15GeometryFactoryE:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.625.1.a = phi double [ %.sroa.729.0.copyload30, %bb.f ], [ %.sroa.7.064, %bb.e ] ; 2 uses
  %.sroa.022.1.a = phi double [ %i.ae, %bb.f ], [ %.sroa.6.065, %bb.e ] ; 2 uses
  %.sroa.729.1 = phi double [ %i.aa, %bb.f ], [ %.sroa.0.066, %bb.e ] ; 2 uses
  %i.ag = fcmp ogt double %i.ae, %.sroa.6.068
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
end_hunk_9
begin_hunk_10_@_ZN4geos9algorithm15MinimumDiameter18computeMaximumLineEPKNS_4geom18CoordinateSequenceEPKNS2_15GeometryFactoryE:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.7.1 = phi double [ %.sroa.7.0.copyload19, %bb.h ], [ %.sroa.729.067, %bb.g ] ; 2 uses
  %.sroa.6.1 = phi double [ %i.ae, %bb.h ], [ %.sroa.6.068, %bb.g ] ; 2 uses
  %.sroa.0.1 = phi double [ %i.aa, %bb.h ], [ %.sroa.033.069, %bb.g ] ; 2 uses
  %i.ah = add nuw i64 %.05270, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !111

bb.j:                                             ; preds = %._crit_edge
  store double %.sroa.0.0.lcssa.a, ptr %3, align 8, !tbaa !11
  store double %.sroa.6.0.lcssa.a, ptr %.sroa.741.0..sroa_idx42, align 8, !tbaa !11
  %.sroa.729.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %.sroa.7.0.lcssa.a, ptr %.sroa.729.0..sroa_idx31, align 8, !tbaa !11
  store double %.sroa.038.0.lcssa, ptr %4, align 8, !tbaa !11
  store double %.sroa.033.0.lcssa, ptr %.sroa.736.0..sroa_idx37, align 8, !tbaa !11
  %.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %.sroa.729.0.lcssa, ptr %.sroa.7.0..sroa_idx20, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
end_hunk_10
