inline.NumInlined: 2245
inline.NumDeleted: 1176
begin_hunk_0_@_ZNK16OpenColorIO_v2_512CPUProcessor4Impl5applyERKNS_9ImageDescE:bb.a

bb.g:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !234  ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !271  ; 2 uses
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.j, !llvm.loop !305

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.021 = phi i64 [ %i.al, %bb.h ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.021
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !192 ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !302 ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !304
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ag, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.al = add nuw i64 %.021, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !306

bb.i:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN16OpenColorIO_v2_514ScanlineHelperESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20, !inline_history !307
  ret void

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.am, %bb.i ], [ %i.an, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt10unique_ptrIN16OpenColorIO_v2_514ScanlineHelperESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN16OpenColorIO_v2_514ScanlineHelperESt14default_deleteIS1_EED2Ev.exit16: ; preds = %bb.k, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.s, %bb.e ]
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20, !inline_history !307
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor4Impl5applyERKNS_9ImageDescERS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !254
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load i32, ptr %i.e, align 4, !tbaa !267
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = tail call noundef ptr @_ZN16OpenColorIO_v2_520CreateScanlineHelperENS_8BitDepthERKSt10shared_ptrIKNS_5OpCPUEES0_S6_(i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.g) ; 10 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !304
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.b, align 8, !tbaa !304
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNSt10unique_ptrIN16OpenColorIO_v2_514ScanlineHelperESt14default_deleteIS1_EED2Ev.exit, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN16OpenColorIO_v2_514ScanlineHelperESt14default_deleteIS1_EED2Ev.exit17

bb.f:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !234  ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !271  ; 2 uses
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.j, !llvm.loop !308

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.022 = phi i64 [ %i.al, %bb.h ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.022
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !192 ; 2 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !302 ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !304
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.ag, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.al = add nuw i64 %.022, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.al, %i.z
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !309

bb.i:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt10unique_ptrIN16OpenColorIO_v2_514ScanlineHelperESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20, !inline_history !307
  ret void

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.am, %bb.i ], [ %i.an, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNSt10unique_ptrIN16OpenColorIO_v2_514ScanlineHelperESt14default_deleteIS1_EED2Ev.exit17

_ZNSt10unique_ptrIN16OpenColorIO_v2_514ScanlineHelperESt14default_deleteIS1_EED2Ev.exit17: ; preds = %bb.k, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.k ], [ %i.s, %bb.e ]
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20, !inline_history !307
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !310
  store <2 x float> %i.b, ptr %i.a, align 16, !tbaa !310
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !310
  store float %i.e, ptr %i.c, align 8, !tbaa !310
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !310
  %i.g = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !234  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !271  ; 2 uses
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1)
  %2 = load <3 x float>, ptr %i.a, align 16, !tbaa !310
  store <3 x float> %2, ptr %1, align 4, !tbaa !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !271
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.010
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !192  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1)
  %i.ad = add nuw i64 %.010, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !311
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1, ptr noundef %1, i64 noundef 1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !234  ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !271  ; 2 uses
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 4
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !192  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %1, ptr noundef %1, i64 noundef 1)
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi i64 [ %i.x, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !271
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.010
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %1, ptr noundef %1, i64 noundef 1)
  %i.x = add nuw i64 %.010, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !312
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_512CPUProcessor7deleterEPS0_(ptr noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16OpenColorIO_v2_512CPUProcessorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_512CPUProcessorC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #19 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, i8 0, i64 56, i1 false)
  store i32 8, ptr %i.b, align 8, !tbaa !254
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 8, ptr %i.c, align 4, !tbaa !267
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.d, align 8, !tbaa !269
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  store i8 0, ptr %i.e, align 1, !tbaa !268
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  store i8 1, ptr %i.f, align 2, !tbaa !270
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !292
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.i, align 8, !tbaa !285
  store i8 0, ptr %i.h, align 8, !tbaa !208
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, i8 0, i64 40, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !313
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN16OpenColorIO_v2_512CPUProcessorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16OpenColorIO_v2_512CPUProcessor4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512CPUProcessor4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !208
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !198  ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !12
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20, !inline_history !232
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20, !inline_history !232
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !231

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #20
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !271  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !234 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.y, %i.aa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i ], [ %i.y, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_55OpCPUELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !198 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIKN16OpenColorIO_v2_55OpCPUEEEvPT_.exit.i.i.i, label %bb.h

end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512CPUProcessor19hasChannelCrosstalkEv:bb.a
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_512CPUProcessor10getCacheIDEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !284
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK16OpenColorIO_v2_512CPUProcessor16getInputBitDepthEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !254
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK16OpenColorIO_v2_512CPUProcessor17getOutputBitDepthEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !267
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor9isDynamicEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.b unwind label %.loopexit.split-lp.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9isDynamicEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !250  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !250  ; 2 uses
  %.not13.i = icmp eq ptr %i.h, %i.j
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.08.014.i = phi ptr [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.08.014.i, align 8, !tbaa !192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.e unwind label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.p, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9isDynamicEv.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !192  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9isDynamicEv.exit unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.w = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9isDynamicEv.exit: ; preds = %bb.e, %bb.b, %._crit_edge.i
  %.3.i = phi i1 [ true, %bb.b ], [ %i.v, %._crit_edge.i ], [ true, %bb.e ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK16OpenColorIO_v2_512CPUProcessor18hasDynamicPropertyENS_19DynamicPropertyTypeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1)
          to label %bb.b unwind label %.loopexit.split-lp.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl18hasDynamicPropertyENS_19DynamicPropertyTypeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !250  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !250  ; 2 uses
  %.not16.i = icmp eq ptr %i.h, %i.j
  br i1 %.not16.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.011.017.i = phi ptr [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.011.017.i, align 8, !tbaa !192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %1)
          to label %bb.e unwind label %.loopexit.i

bb.e:                                             ; preds = %.lr.ph.i
  br i1 %i.p, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl18hasDynamicPropertyENS_19DynamicPropertyTypeE.exit, label %bb.d

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !192  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef %1)
          to label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl18hasDynamicPropertyENS_19DynamicPropertyTypeE.exit unwind label %.loopexit.split-lp.i

.loopexit.i:                                      ; preds = %.lr.ph.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.w = extractvalue { ptr, i32 } %lpad.phi.i, 0
  tail call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

_ZNK16OpenColorIO_v2_512CPUProcessor4Impl18hasDynamicPropertyENS_19DynamicPropertyTypeE.exit: ; preds = %bb.e, %bb.b, %._crit_edge.i
  %.3.i = phi i1 [ true, %bb.b ], [ %i.v, %._crit_edge.i ], [ true, %bb.e ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor18getDynamicPropertyENS_19DynamicPropertyTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.192") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !313
  tail call void @_ZNK16OpenColorIO_v2_512CPUProcessor4Impl18getDynamicPropertyENS_19DynamicPropertyTypeE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.192") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313
  tail call void @_ZNK16OpenColorIO_v2_512CPUProcessor4Impl5applyERKNS_9ImageDescE(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor5applyERKNS_9ImageDescERS1_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313
  tail call void @_ZNK16OpenColorIO_v2_512CPUProcessor4Impl5applyERKNS_9ImageDescERS2_(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor8applyRGBEPf(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !313    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = load <2 x float>, ptr %1, align 4, !tbaa !310
  store <2 x float> %i.c, ptr %i.a, align 16, !tbaa !310
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !310
  store float %i.f, ptr %i.d, align 8, !tbaa !310
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !310
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !192  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !319
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !234  ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !271  ; 2 uses
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.010.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !271
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.010.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !192  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !319
  %i.z = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf.exit, label %.lr.ph.i, !llvm.loop !311

_ZNK16OpenColorIO_v2_512CPUProcessor4Impl8applyRGBEPf.exit: ; preds = %.lr.ph.i, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !192 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !319
  %2 = load <3 x float>, ptr %i.a, align 16, !tbaa !310
  store <3 x float> %2, ptr %1, align 4, !tbaa !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK16OpenColorIO_v2_512CPUProcessor9applyRGBAEPf(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !320
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !234  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !271  ; 2 uses
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.010.i = phi i64 [ %i.t, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !271
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.010.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !192  ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !320
  %i.t = add nuw i64 %.010.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf.exit, label %.lr.ph.i, !llvm.loop !312

_ZNK16OpenColorIO_v2_512CPUProcessor4Impl9applyRGBAEPf.exit: ; preds = %.lr.ph.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !192  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %1, ptr noundef %1, i64 noundef 1), !inline_history !320
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !321
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !208
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !321
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #20, !inline_history !322
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS1_8BitDepthE1ELS3_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512BitDepthCastILNS0_8BitDepthE1ELS2_1EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !323  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !208
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK16OpenColorIO_v2_512BitDepthCastILNS_8BitDepthE1ELS1_1EE5applyEPKvPvl(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.c = shl i64 %3, 2                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.c   ; 2 uses
  %scevgep28 = getelementptr i8, ptr %1, i64 %i.c
  %scevgep29 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %2, %scevgep28
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound030 = icmp ult ptr %2, %scevgep29
  %bound131 = icmp ult ptr %i.b, %scevgep
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx = or i1 %found.conflict, %found.conflict32
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.d = shl i64 %n.vec, 2                        ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 %i.d
  %i.f = getelementptr i8, ptr %1, i64 %i.d
  %i.g = load float, ptr %i.b, align 8, !tbaa !15, !alias.scope !325 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat38 = shufflevector <4 x float> %broadcast.splatinsert37, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat41 = shufflevector <4 x float> %broadcast.splatinsert40, <4 x float> poison, <4 x i32> zeroinitializer
  %i.h = load float, ptr %i.b, align 8, !tbaa !15, !alias.scope !325
  %broadcast.splatinsert43 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat44 = shufflevector <4 x float> %broadcast.splatinsert43, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_1
