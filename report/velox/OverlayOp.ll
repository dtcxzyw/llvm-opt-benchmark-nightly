inline.NumInlined: 914
inline.NumDeleted: 537
begin_hunk_0_@_ZN4geos9operation7overlay9OverlayOp17insertUniqueEdgesEPSt6vectorIPNS_9geomgraph4EdgeESaIS6_EEPKNS_4geom8EnvelopeE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %.not12 = icmp eq ptr %i.b, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  br i1 %.not, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit.us, label %.lr.ph.split

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit.us: ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit.us
  %.011.us = phi i64 [ %i.q, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.011.us
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92
  tail call void @_ZN4geos9operation7overlay9OverlayOp16insertUniqueEdgeEPNS_9geomgraph4EdgeE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %i.p)
  %i.q = add nuw i64 %.011.us, 1                  ; 2 uses
  %exitcond15.not = icmp eq i64 %i.q, %i.g
  br i1 %exitcond15.not, label %._crit_edge, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit.us, !llvm.loop !155

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit
  %.011 = phi i64 [ %i.bg, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.011
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !92   ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 264
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(152) %i.t) ; 4 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !70
  %i.z = load double, ptr %i.h, align 8, !tbaa !68
  %i.aa = fcmp ugt double %i.y, %i.z
  br i1 %i.aa, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !68
  %i.ad = load double, ptr %2, align 8, !tbaa !70
  %i.ae = fcmp ult double %i.ac, %i.ad
  br i1 %i.ae, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !72
  %i.ah = load double, ptr %i.i, align 8, !tbaa !71
  %i.ai = fcmp ugt double %i.ag, %i.ah
  br i1 %i.ai, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit:   ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !71
  %i.al = load double, ptr %i.j, align 8, !tbaa !72
  %i.am = fcmp ult double %i.ak, %i.al
  br i1 %i.am, label %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread, label %bb.i

_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread: ; preds = %.lr.ph.split, %bb.b, %bb.c, %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !91  ; 4 uses
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !156
  %.not.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread
  store ptr %i.t, ptr %i.an, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.l, align 8, !tbaa !91
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit.thread
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !74  ; 4 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 5 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.f, label %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.az, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #19 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store ptr %i.t, ptr %i.bc, align 8, !tbaa !92
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.g, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr align 8 %i.aq, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.not.i17.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aq) #20
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.bb, ptr %i.k, align 8, !tbaa !74
  store ptr %i.be, ptr %i.l, align 8, !tbaa !91
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bf, ptr %i.m, align 8, !tbaa !156
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsEPKS1_.exit
  tail call void @_ZN4geos9operation7overlay9OverlayOp16insertUniqueEdgeEPNS_9geomgraph4EdgeE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull %i.t)
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d, %bb.i
  %i.bg = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !155
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay9OverlayOp16insertUniqueEdgeEPNS_9geomgraph4EdgeE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::geomgraph::Label", align 1 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK4geos9geomgraph8EdgeList13findEqualEdgeEPKNS0_4EdgeE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %1) ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(8) %i.d, i64 3, i1 false), !tbaa.struct !157
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.g = load i8, ptr %i.f, align 1, !tbaa !45    ; 2 uses
  store i8 %i.g, ptr %i.e, align 1, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(4) %i.i, i64 3, i1 false), !tbaa.struct !157
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !45    ; 2 uses
  store i8 %i.l, ptr %i.j, align 1, !tbaa !45
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef %1)
  br i1 %i.p, label %_ZN4geos9geomgraph5Label4flipEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i8 %i.g, 2
  br i1 %i.q, label %_ZN4geos9geomgraph16TopologyLocation4flipEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.r, align 1, !tbaa !48
  %i.u = load i8, ptr %i.s, align 1, !tbaa !48
  store i8 %i.u, ptr %i.r, align 1, !tbaa !48
  store i8 %i.t, ptr %i.s, align 1, !tbaa !48
  br label %_ZN4geos9geomgraph16TopologyLocation4flipEv.exit.i

_ZN4geos9geomgraph16TopologyLocation4flipEv.exit.i: ; preds = %bb.d, %bb.c
  %i.v = icmp ult i8 %i.l, 2
  br i1 %i.v, label %_ZN4geos9geomgraph5Label4flipEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4geos9geomgraph16TopologyLocation4flipEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 5 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !48
  %i.z = load i8, ptr %i.x, align 1, !tbaa !48
  store i8 %i.z, ptr %i.w, align 1, !tbaa !48
  store i8 %i.y, ptr %i.x, align 1, !tbaa !48
  br label %_ZN4geos9geomgraph5Label4flipEv.exit

_ZN4geos9geomgraph5Label4flipEv.exit:             ; preds = %bb.e, %_ZN4geos9geomgraph16TopologyLocation4flipEv.exit.i, %bb.b
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(152) %i.b) ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %4 = load <4 x i32>, ptr %3, align 8
  %.fr = freeze <4 x i32> %4
  %5 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %6 = load i32, ptr %5, align 8
  %.fr19 = freeze i32 %6
  %.not.1.1.i = icmp eq i32 %.fr19, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %7 = load i32, ptr %i.ae, align 4
  %.not.2.1.i = icmp eq i32 %7, -1
  %8 = icmp ne <4 x i32> %.fr, splat (i32 -1)
  %9 = bitcast <4 x i1> %8 to i4
  %i.af = icmp eq i4 %9, 0
  %op.rdx = and i1 %i.af, %.not.1.1.i
  %op.rdx18 = select i1 %op.rdx, i1 %.not.2.1.i, i1 false
  br i1 %op.rdx18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4geos9geomgraph5Label4flipEv.exit
  tail call void @_ZN4geos9geomgraph5Depth3addERKNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 1 dereferenceable(8) %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4geos9geomgraph5Label4flipEv.exit
  call void @_ZN4geos9geomgraph5Depth3addERKNS0_5LabelE(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 1 dereferenceable(8) %2)
  call void @_ZN4geos9geomgraph16TopologyLocation5mergeERKS1_(ptr noundef nonnull align 1 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(8) %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @_ZN4geos9geomgraph16TopologyLocation5mergeERKS1_(ptr noundef nonnull align 1 dereferenceable(4) %i.ag, ptr noundef nonnull align 1 dereferenceable(4) %i.h)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !91 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !156
  %.not.i10 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %1, ptr %i.aj, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !91
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !74 ; 4 uses
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #19 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store ptr %1, ptr %i.az, align 8, !tbaa !92
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.k, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.an, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.an) #20
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !74
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !91
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bc, ptr %i.ak, align 8, !tbaa !156
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.h, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void @_ZN4geos9geomgraph8EdgeList3addEPNS0_4EdgeE(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EE9push_backERKS3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay9OverlayOp21replaceCollapsedEdgesEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.011 = phi i64 [ %i.y, %bb.c ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(152) %i.k)
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 192
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(152) %i.k)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.011
  store ptr %i.s, ptr %i.u, align 8, !tbaa !92
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(152) %i.k) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.y = add nuw i64 %.011, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !114
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay9OverlayOp10copyPointsEhPKNS_4geom8EnvelopeE(ptr noundef nonnull align 8 dereferenceable(400) %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = zext i8 %1 to i64                        ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.not1718 = icmp eq ptr %i.k, %i.l
  br i1 %.not1718, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.us
  %.sroa.014.019.us = phi ptr [ %i.ac, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.us ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.014.019.us, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116  ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(88) %i.o)
  %i.t = tail call noundef ptr @_ZN4geos9geomgraph11PlanarGraph7addNodeERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.b ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !45
  %.not.i.us = icmp eq i8 %i.x, 0
  br i1 %.not.i.us, label %_ZNK4geos9geomgraph5Label11getLocationEj.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.y = load i8, ptr %i.v, align 1, !tbaa !48
  br label %_ZNK4geos9geomgraph5Label11getLocationEj.exit.us

_ZNK4geos9geomgraph5Label11getLocationEj.exit.us: ; preds = %bb.b, %.lr.ph.split.us
  %.0.i.i.us = phi i8 [ %i.y, %bb.b ], [ -1, %.lr.ph.split.us ]
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(88) %i.t, i8 noundef zeroext %1, i8 noundef signext %.0.i.i.us)
  %i.ac = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.014.019.us) #23 ; 2 uses
  %.not17.us = icmp eq ptr %i.ac, %i.l
  br i1 %.not17.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !159

._crit_edge:                                      ; preds = %bb.e, %_ZNK4geos9geomgraph5Label11getLocationEj.exit.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %.sroa.014.019 = phi ptr [ %i.aw, %bb.e ], [ %i.k, %.lr.ph ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !116 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(88) %i.ae) ; 3 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !160
end_hunk_0
begin_hunk_1_@_ZN4geos9operation7overlay9OverlayOp15computeGeometryEPSt6vectorIPNS_4geom5PointESaIS6_EEPS3_IPNS4_10LineStringESaISB_EEPS3_IPNS4_7PolygonESaISG_EENS2_6OpCodeE:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.aa = shl nuw nsw i64 %i.x, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #19
          to label %.noexc28 unwind label %bb.h   ; 4 uses

.noexc28:                                         ; preds = %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !143
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !140
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !210
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit: ; preds = %.noexc28, %bb.c
  %i.ae = phi ptr [ %i.ab, %.noexc28 ], [ null, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  invoke void @_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPPNS1_5PointES_ISA_SaISA_EEEEEEvNS8_IPS3_S5_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.ae, ptr %i.c, ptr %i.b)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !211
  %i.ah = load ptr, ptr %2, align 8, !tbaa !212
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !212
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !211 ; 2 uses
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  invoke void @_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPPNS1_10LineStringES_ISA_SaISA_EEEEEEvNS8_IPS3_S5_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.an, ptr %i.ah, ptr %i.ai)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !211
  %i.ap = load ptr, ptr %3, align 8, !tbaa !213
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !213
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !211 ; 2 uses
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  invoke void @_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPPNS1_7PolygonES_ISA_SaISA_EEEEEEvNS8_IPS3_S5_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr %i.av, ptr %i.ap, ptr %i.aq)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !211
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !211
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !107 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !108
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !167
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !108
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !167
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61
  invoke void @_ZN4geos9operation7overlay9OverlayOp17createEmptyResultENS2_6OpCodeEPKNS_4geom8GeometryES7_PKNS4_15GeometryFactoryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.121") align 8 %6, i32 noundef %4, ptr noundef %i.bd, ptr noundef %i.bh, ptr noundef %i.bj)
          to label %bb.o unwind label %bb.l

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %bb.g
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.q

bb.m:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !61
  store ptr null, ptr %5, align 8, !tbaa !208
  %i.br = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory13buildGeometryEPSt6vectorIPNS0_8GeometryESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(45) %i.bq, ptr noundef nonnull %i.v)
          to label %_ZNSt10unique_ptrISt6vectorIPN4geos4geom8GeometryESaIS4_EESt14default_deleteIS6_EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.g
  %i.bt = load ptr, ptr %6, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !143 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdlPv(ptr noundef nonnull %i.bu) #20
  br label %_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit.i

_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit.i: ; preds = %bb.p, %bb.o
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #20
  br label %_ZNSt10unique_ptrISt6vectorIPN4geos4geom8GeometryESaIS4_EESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrISt6vectorIPN4geos4geom8GeometryESaIS4_EESt14default_deleteIS6_EED2Ev.exit: ; preds = %bb.m, %_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit.i
  %.043 = phi ptr [ %i.bt, %_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit.i ], [ %i.br, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret ptr %.043

bb.q:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.bs, %bb.n ], [ %i.bn, %bb.k ], [ %i.bm, %bb.j ], [ %i.bl, %bb.i ], [ %i.bk, %bb.h ]
  call void @_ZNSt10unique_ptrISt6vectorIPN4geos4geom8GeometryESaIS4_EESt14default_deleteIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare noundef ptr @_ZNK4geos4geom15GeometryFactory13buildGeometryEPSt6vectorIPNS0_8GeometryESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrISt6vectorIPN4geos4geom8GeometryESaIS4_EESt14default_deleteIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !208    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #20
  br label %_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit

_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #20
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteISt6vectorIPN4geos4geom8GeometryESaIS4_EEEclEPS6_.exit, %bb.a
  ret void
}

declare noundef ptr @_ZNK4geos9operation22GeometryGraphOperation14getArgGeometryEj(ptr noundef nonnull align 8 dereferenceable(176), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4geos4geom14PrecisionModel10isFloatingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK4geos4geom8Envelope12intersectionERKS1_RS1_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4geos4util9Interrupt7processEv() local_unnamed_addr #5

declare void @_ZN4geos9geomgraph13GeometryGraph16computeSelfNodesERNS_9algorithm15LineIntersectorEbPKNS_4geom8EnvelopeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.173") align 8, ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(129), i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @_ZN4geos9geomgraph13GeometryGraph24computeEdgeIntersectionsEPS1_PNS_9algorithm15LineIntersectorEbPKNS_4geom8EnvelopeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.173") align 8, ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @_ZN4geos9geomgraph13GeometryGraph17computeSplitEdgesEPSt6vectorIPNS0_4EdgeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation7overlay9OverlayOp23computeLabelsFromDepthsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214  ; 2 uses
  %.not35 = icmp eq ptr %i.b, %i.d
  br i1 %.not35, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.sroa.029.036 = phi ptr [ %i.be, %.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.029.036, align 8, !tbaa !92 ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(152) %i.e) ; 8 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %3 = load <4 x i32>, ptr %1, align 8
  %.fr = freeze <4 x i32> %3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %4 = load i32, ptr %i.k, align 8
  %.fr49 = freeze i32 %4
  %.not.1.1.i = icmp eq i32 %.fr49, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %5 = load i32, ptr %i.l, align 4
  %.not.2.1.i = icmp eq i32 %5, -1
  %6 = icmp ne <4 x i32> %.fr, splat (i32 -1)
  %7 = bitcast <4 x i1> %6 to i4
  %i.m = icmp eq i4 %7, 0
  %op.rdx = and i1 %i.m, %.not.1.1.i
  %op.rdx48 = select i1 %op.rdx, i1 %.not.2.1.i, i1 false
  br i1 %op.rdx48, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN4geos9geomgraph5Depth9normalizeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 11 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !45    ; 7 uses
  %i.q = zext i8 %i.p to i64
  %i.r = icmp eq i8 %i.p, 0
  br i1 %i.r, label %_ZN4geos9geomgraph5Label6toLineEj.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = add nuw nsw i64 %.057.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.s, %i.q
  br i1 %exitcond.not.i.i, label %_ZN4geos9geomgraph5Label6toLineEj.exit, label %.lr.ph.i.i, !llvm.loop !121

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.057.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %.057.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !48
  %.not.i.i = icmp eq i8 %i.u, -1
  br i1 %.not.i.i, label %bb.c, label %_ZNK4geos9geomgraph5Label6isNullEj.exit

_ZNK4geos9geomgraph5Label6isNullEj.exit:          ; preds = %.lr.ph.i.i
  %i.v = icmp ne i8 %i.p, 1
  %i.w = load i8, ptr %i.n, align 1
  %i.x = icmp ugt i8 %i.w, 1
  %i.y = select i1 %i.v, i1 true, i1 %i.x
  br i1 %i.y, label %bb.d, label %_ZN4geos9geomgraph5Label6toLineEj.exit

bb.d:                                             ; preds = %_ZNK4geos9geomgraph5Label6isNullEj.exit
  %i.z = load i32, ptr %2, align 4, !tbaa !3      ; 3 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %_ZN4geos9geomgraph5Label6toLineEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !3  ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.z
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not33 = icmp eq i8 %i.p, 1
  br i1 %.not33, label %_ZN4geos9geomgraph5Label6toLineEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i16 -1, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !158
  store i8 1, ptr %i.o, align 1, !tbaa !45
  br label %_ZN4geos9geomgraph5Label6toLineEj.exit

bb.h:                                             ; preds = %bb.e
  %i.ae = icmp slt i32 %i.z, 1
  %..i = select i1 %i.ae, i8 2, i8 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 %..i, ptr %i.af, align 1, !tbaa !48
  %i.ag = icmp slt i32 %i.ac, 1
  %..i28 = select i1 %i.ag, i8 2, i8 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i8 %..i28, ptr %i.ah, align 1, !tbaa !48
  br label %_ZN4geos9geomgraph5Label6toLineEj.exit

_ZN4geos9geomgraph5Label6toLineEj.exit:           ; preds = %bb.c, %bb.b, %bb.g, %bb.f, %_ZNK4geos9geomgraph5Label6isNullEj.exit, %bb.d, %bb.h
  %i.ai = phi i8 [ %i.p, %bb.h ], [ 0, %bb.b ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %_ZNK4geos9geomgraph5Label6isNullEj.exit ], [ %i.p, %bb.d ], [ %i.p, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 15 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !45  ; 4 uses
  %i.am = zext i8 %i.al to i64
  %i.an = icmp eq i8 %i.al, 0
  br i1 %i.an, label %.loopexit, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_ZN4geos9geomgraph5Label6toLineEj.exit, %bb.n
  %.057.i.i.1 = phi i64 [ %i.bd, %bb.n ], [ 0, %_ZN4geos9geomgraph5Label6toLineEj.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.057.i.i.1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !48
  %.not.i.i.1 = icmp eq i8 %i.ap, -1
  br i1 %.not.i.i.1, label %bb.n, label %_ZNK4geos9geomgraph5Label6isNullEj.exit.1

_ZNK4geos9geomgraph5Label6isNullEj.exit.1:        ; preds = %.lr.ph.i.i.1
  %i.aq = icmp ugt i8 %i.ai, 1
  %i.ar = icmp ne i8 %i.al, 1
  %i.as = or i1 %i.aq, %i.ar
  br i1 %i.as, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZNK4geos9geomgraph5Label6isNullEj.exit.1
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !3  ; 3 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = icmp eq i32 %i.ax, %i.au
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = icmp slt i32 %i.au, 1
  %..i.1 = select i1 %i.az, i8 2, i8 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store i8 %..i.1, ptr %i.ba, align 1, !tbaa !48
  %i.bb = icmp slt i32 %i.ax, 1
  %..i28.1 = select i1 %i.bb, i8 2, i8 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  store i8 %..i28.1, ptr %i.bc, align 1, !tbaa !48
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %.not33.1 = icmp eq i8 %i.al, 1
  br i1 %.not33.1, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.4.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  store i16 -1, ptr %.sroa.4.0..sroa_idx.i.1, align 1, !tbaa !158
  store i8 1, ptr %i.ak, align 1, !tbaa !45
  br label %.loopexit

bb.n:                                             ; preds = %.lr.ph.i.i.1
  %i.bd = add nuw nsw i64 %.057.i.i.1, 1          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bd, %i.am
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %.lr.ph.i.i.1, !llvm.loop !121

.loopexit:                                        ; preds = %bb.n, %_ZN4geos9geomgraph5Label6toLineEj.exit, %_ZNK4geos9geomgraph5Label6isNullEj.exit.1, %bb.i, %bb.k, %bb.l, %bb.m, %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.029.036, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos9geomgraph19EdgeNodingValidator10checkValidERSt6vectorIPNS0_4EdgeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.geos::geomgraph::EdgeNodingValidator", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %1, i8 0, i64 48, i1 false)
  %i.a = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN4geos9geomgraph19EdgeNodingValidator16toSegmentStringsERSt6vectorIPNS0_4EdgeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %_ZN4geos9geomgraph19EdgeNodingValidatorC2ERSt6vectorIPNS0_4EdgeESaIS4_EE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !215  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.d) #20
  br label %_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EED2Ev.exit.i

_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !218    ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i3.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.e) #20
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EED2Ev.exit.i, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EED2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

_ZN4geos9geomgraph19EdgeNodingValidatorC2ERSt6vectorIPNS0_4EdgeESaIS4_EE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.i.i.i, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(153) %i.f, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.g, align 8, !tbaa !187
  %.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.ptr.1.i.i.i, i8 0, i64 16, i1 false)
  store double +qnan, ptr %i.h, align 8, !tbaa !187
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.i, align 8, !tbaa !188
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 184
  store ptr %i.a, ptr %i.j, align 8, !tbaa !221
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr null, ptr %i.k, align 8, !tbaa !223
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 1, ptr %i.l, align 8, !tbaa !226
  invoke void @_ZN4geos6noding19FastNodingValidator10checkValidEv(ptr noundef nonnull align 8 dereferenceable(153) %i.f)
          to label %_ZN4geos9geomgraph19EdgeNodingValidator10checkValidEv.exit unwind label %bb.e

_ZN4geos9geomgraph19EdgeNodingValidator10checkValidEv.exit: ; preds = %_ZN4geos9geomgraph19EdgeNodingValidatorC2ERSt6vectorIPNS0_4EdgeESaIS4_EE.exit
  call void @_ZN4geos9geomgraph19EdgeNodingValidatorD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

bb.e:                                             ; preds = %_ZN4geos9geomgraph19EdgeNodingValidatorC2ERSt6vectorIPNS0_4EdgeESaIS4_EE.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4geos9geomgraph19EdgeNodingValidatorD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %common.resume
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #11

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN4geos9geomgraph8EdgeList9clearListEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #5

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare void @_ZN4geos9geomgraph11PlanarGraph8addEdgesERKSt6vectorIPNS0_4EdgeESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

declare void @_ZN4geos9operation7overlay14PolygonBuilderC1EPKNS_4geom15GeometryFactoryE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #5

declare void @_ZN4geos9operation7overlay14PolygonBuilder3addEPNS_9geomgraph11PlanarGraphE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4geos9operation7overlay14PolygonBuilder11getPolygonsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN4geos9operation7overlay11LineBuilderC1EPNS1_9OverlayOpEPKNS_4geom15GeometryFactoryEPNS_9algorithm12PointLocatorE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare noundef ptr @_ZN4geos9operation7overlay11LineBuilder5buildENS1_9OverlayOp6OpCodeE(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4geos9operation7overlay12PointBuilder5buildENS1_9OverlayOp6OpCodeE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #5
end_hunk_1
