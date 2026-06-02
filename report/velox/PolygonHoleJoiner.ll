inline.NumInlined: 1782
inline.NumDeleted: 851
begin_hunk_0_@_ZN4geos11triangulate7polygon17PolygonHoleJoiner8joinHoleEPKNS_4geom10LinearRingE:bb.a
  %i.at = load i64, ptr %i.as, align 8, !tbaa !108
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.at)
          to label %bb.k unwind label %.thread

bb.k:                                             ; preds = %.loopexit
  %i.ay = invoke noundef i64 @_ZN4geos11triangulate7polygon17PolygonHoleJoiner18getShellCoordIndexERKNS_4geom10CoordinateES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.l unwind label %.thread

bb.l:                                             ; preds = %bb.k
  %i.az = load i64, ptr %i.as, align 8, !tbaa !108
  invoke void @_ZN4geos11triangulate7polygon17PolygonHoleJoiner14addHoleToShellEmPKNS_4geom18CoordinateSequenceEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.ay, ptr noundef nonnull %i.a, i64 noundef %i.az)
          to label %_ZNSt6vectorImSaImEED2Ev.exit unwind label %.thread

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @_ZdlPv(ptr noundef nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZdlPv(ptr noundef nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

.thread:                                          ; preds = %.loopexit, %bb.k, %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.not.i.i.i45 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit46, label %bb.n

.sink.split:                                      ; preds = %.thread.split.us, %.thread
  %.pn.pn51.ph = phi { ptr, i32 } [ %i.ba, %.thread ], [ %i.ap, %.thread.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %.pn.pn51 = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %.pn.pn51.ph, %.sink.split ]
  call void @_ZdlPv(ptr noundef nonnull %i.j) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit46

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit46: ; preds = %bb.n, %bb.m, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.bb, %bb.m ], [ %.pn.pn51, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt6vectorImSaImEED2Ev.exit48

_ZNSt6vectorImSaImEED2Ev.exit48:                  ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit46, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit46 ], [ %i.aq, %bb.i ]
  call void @_ZdlPv(ptr noundef nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate7polygon17PolygonHoleJoiner16findLeftVerticesEPKNS_4geom10LinearRingE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.61") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %1) ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.f = load double, ptr %i.e, align 8, !tbaa !168
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.ao, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.j = phi ptr [ null, %bb.a ], [ %i.ap, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 4 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.aq, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 11 uses
  %storemerge = phi i64 [ 0, %bb.a ], [ %i.ar, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 5 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit unwind label %.loopexit, !inline_history !138

_ZNK4geos4geom18CoordinateSequence4sizeEv.exit:   ; preds = %bb.b
  %i.p = icmp ult i64 %storemerge, %i.o
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit
  store ptr %i.k, ptr %0, align 8
  ret void

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %storemerge)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.u = load double, ptr %i.t, align 8, !tbaa !153
  %i.v = fsub double %i.u, %i.f
  %i.w = tail call noundef double @llvm.fabs.f64(double %i.v)
  %i.x = fcmp olt double %i.w, 1.000000e-04
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %storemerge, ptr %i.j, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.g, align 8, !tbaa !165
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.h:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %i.i to i64
  %i.aa = ptrtoint ptr %i.k to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 5 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.i, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #22
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store i64 %storemerge, ptr %i.ak, align 8, !tbaa !108
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %i.k, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %.noexc9
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.am, ptr %i.g, align 8, !tbaa !165
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !170
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.g, %bb.e
  %i.ao = phi ptr [ %i.an, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.i, %bb.g ], [ %i.i, %bb.e ]
  %i.ap = phi ptr [ %i.am, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.y, %bb.g ], [ %i.j, %bb.e ]
  %i.aq = phi ptr [ %i.aj, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.k, %bb.g ], [ %i.k, %bb.e ]
  %i.ar = add nuw i64 %storemerge, 1
  br label %bb.b, !llvm.loop !171

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i10 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #21
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos11triangulate7polygon17PolygonHoleJoiner21findLeftShellVerticesERKNS_4geom10CoordinateE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(168) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.b, null
  %.pre = load double, ptr %2, align 8, !tbaa !153 ; 4 uses
  br i1 %.not11.i.i.i, label %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load double, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.e ]
  %i.f = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !153 ; 2 uses
  %i.h = fcmp olt double %.pre, %i.g
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt double %.pre, %i.g
  br i1 %i.i, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !154
  %i.l = fcmp olt double %i.e, %i.k
  br i1 %i.l, label %bb.e, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i

_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i: ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i ], [ %.013.i.i.i, %bb.d ], [ %.013.i.i.i, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !152 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit, label %bb.b, !llvm.loop !172

_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit: ; preds = %bb.e, %bb.a
  %.08.lcssa.i.i.i = phi ptr [ %i.c, %bb.a ], [ %.19.i.i.i, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i, i64 32
  %i.o = load double, ptr %i.n, align 8, !tbaa !153
  %i.p = fcmp oeq double %i.o, %.pre
  br i1 %i.p, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit
  %.sroa.035.0.lcssa = phi ptr [ %.08.lcssa.i.i.i, %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit ], [ %i.r, %.lr.ph ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit, %.lr.ph
  %.sroa.035.057 = phi ptr [ %i.r, %.lr.ph ], [ %.08.lcssa.i.i.i, %_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EE11upper_boundERKS2_.exit ]
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.057) #24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load double, ptr %i.s, align 8, !tbaa !153
  %i.u = fcmp oeq double %i.t, %.pre
  br i1 %i.u, label %.lr.ph, label %.preheader, !llvm.loop !173

.loopexit47:                                      ; preds = %bb.f
  %lpad.loopexit49 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp48:                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.split-lp50 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.f:                                             ; preds = %.preheader, %bb.g
  %.sroa.035.1 = phi ptr [ %i.v, %bb.g ], [ %.sroa.035.0.lcssa, %.preheader ]
  %i.v = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.1) #24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 5 uses
  %i.x = invoke noundef zeroext i1 @_ZNK4geos11triangulate7polygon17PolygonHoleJoiner14crossesPolygonERKNS_4geom10CoordinateES6_(ptr noundef nonnull readonly align 8 dereferenceable(168) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.w)
          to label %bb.g unwind label %.loopexit47

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.q, align 8
  %i.z = icmp ne ptr %i.v, %i.y
  %or.cond = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.f, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, !llvm.loop !174

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit unwind label %.loopexit.split-lp48 ; 6 uses

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit: ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !133
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !67
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !131
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !130
  %i.ae = load double, ptr %i.w, align 8, !tbaa !153 ; 3 uses
  %i.af = load double, ptr %2, align 8, !tbaa !153
  %i.ag = fcmp une double %i.ae, %i.af
  br i1 %i.ag, label %.loopexit, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit
  store ptr %i.ac, ptr %i.aa, align 8
  %3 = load double, ptr %i.w, align 8, !tbaa !153
  %4 = fcmp oeq double %i.ae, %3
  br i1 %4, label %.lr.ph61, label %.loopexit

.lr.ph61:                                         ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit, %bb.k
  %i.ah = phi ptr [ %i.bi, %bb.k ], [ %i.w, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit ] ; 2 uses
  %.sroa.035.260 = phi ptr [ %i.bh, %bb.k ], [ %i.v, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit ] ; 2 uses
  %i.ai = phi ptr [ %i.be, %bb.k ], [ %i.ac, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit ] ; 6 uses
  %i.aj = phi ptr [ %i.bd, %bb.k ], [ %i.ad, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit ] ; 2 uses
  %i.ak = phi ptr [ %i.bc, %bb.k ], [ %i.ac, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit ] ; 5 uses
  %.not.i16 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  store ptr %i.al, ptr %i.aa, align 8, !tbaa !131
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit31

bb.i:                                             ; preds = %.lr.ph61
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.j, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i17

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i17: ; preds = %bb.i
  %i.aq = sdiv exact i64 %i.ao, 24                ; 3 uses
  %.sroa.speculated.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i18, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 384307168202282325)
  %i.au = select i1 %i.as, i64 384307168202282325, i64 %i.at ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i19)
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #22
          to label %.noexc30 unwind label %.loopexit46 ; 6 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !tbaa.struct !133
  %.not10.i.i.i.i.i.i20 = icmp eq ptr %i.ak, %i.ai
  br i1 %.not10.i.i.i.i.i.i20, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i28, label %.lr.ph.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i21:                             ; preds = %.noexc30, %.lr.ph.i.i.i.i.i.i21
  %.012.i.i.i.i.i.i22 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i21 ], [ %i.aw, %.noexc30 ] ; 2 uses
  %.0911.i.i.i.i.i.i23 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i21 ], [ %i.ak, %.noexc30 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i23, i64 24, i1 false), !tbaa.struct !133, !alias.scope !175
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i23, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i22, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i24 = icmp eq ptr %i.ay, %i.ai
  br i1 %.not.i.i.i.i.i.i24, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i28, label %.lr.ph.i.i.i.i.i.i21, !llvm.loop !179

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.i21, %.noexc30
  %.0.lcssa.i.i.i.i.i.i26 = phi ptr [ %i.aw, %.noexc30 ], [ %i.az, %.lr.ph.i.i.i.i.i.i21 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i26, i64 24 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #21
  store ptr %i.aw, ptr %0, align 8, !tbaa !67
  store ptr %i.ba, ptr %i.aa, align 8, !tbaa !131
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.bb, ptr %i.ab, align 8, !tbaa !130
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit31

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit31: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i28, %bb.h
  %i.bc = phi ptr [ %i.aw, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i28 ], [ %i.ak, %bb.h ]
  %i.bd = phi ptr [ %i.bb, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i28 ], [ %i.aj, %bb.h ]
  %i.be = phi ptr [ %i.ba, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i28 ], [ %i.al, %bb.h ]
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.bg = icmp eq ptr %.sroa.035.260, %i.bf
  br i1 %i.bg, label %.loopexit, label %bb.k

.loopexit46:                                      ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i17
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit31
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.035.260) #24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !153
  %i.bk = fcmp oeq double %i.ae, %i.bj
  br i1 %i.bk, label %.lr.ph61, label %.loopexit, !llvm.loop !180

.loopexit:                                        ; preds = %bb.k, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit31, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE5clearEv.exit, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE12emplace_backIJRKS2_EEEvDpOT_.exit
  ret void

bb.l:                                             ; preds = %.loopexit46, %.loopexit.split-lp, %.loopexit47, %.loopexit.split-lp48
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp50, %.loopexit.split-lp48 ], [ %lpad.loopexit49, %.loopexit47 ], [ %lpad.loopexit, %.loopexit46 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bl = load ptr, ptr %0, align 8, !tbaa !67    ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZdlPv(ptr noundef nonnull %i.bl) #21
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, -1) i64 @_ZN4geos11triangulate7polygon17PolygonHoleJoiner18getShellCoordIndexERKNS_4geom10CoordinateES6_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i:
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %.noexc23 unwind label %bb.f   ; 3 uses

.noexc23:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !133
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !67
  store ptr %i.d, ptr %i.c, align 8, !tbaa !131
  store ptr %i.d, ptr %i.b, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.f = invoke ptr @_ZNSt10_HashtableIN4geos4geom10CoordinateESt4pairIKS2_St6vectorIS2_SaIS2_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSA_.exit unwind label %bb.g ; 4 uses

_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSA_.exit: ; preds = %.noexc23
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.i, label %bb.a

bb.a:                                             ; preds = %_ZNSt13unordered_mapIN4geos4geom10CoordinateESt6vectorIS2_SaIS2_EENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEE4findERSA_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 14 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129  ; 7 uses
  %.not5758 = icmp eq ptr %i.h, %i.j              ; 2 uses
  br i1 %.not5758, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !154 ; 3 uses
  %i.o = add i64 %i.k, -24
  %i.p = sub i64 %i.o, %i.l                       ; 3 uses
  %i.q = udiv i64 %i.p, 24
  %i.r = add nuw nsw i64 %i.q, 1                  ; 4 uses
  %min.iters.check = icmp ult i64 %i.p, 96
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check69 = icmp ult i64 %i.p, 384
  br i1 %min.iters.check69, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.r, 15                    ; 2 uses
  %i.s = icmp eq i64 %n.mod.vf, 0
  %i.t = select i1 %i.s, i64 16, i64 %n.mod.vf    ; 2 uses
  %n.vec = sub nsw i64 %i.r, %i.t                 ; 3 uses
  %i.u = mul i64 %n.vec, 24
  %i.v = getelementptr i8, ptr %i.h, i64 %i.u
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.n, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi70 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi71 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi72 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.w = mul i64 %index, 24                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.w
  %i.x = getelementptr i8, ptr %i.h, i64 %i.w
  %i.y = getelementptr i8, ptr %i.h, i64 %i.w
  %i.z = getelementptr i8, ptr %i.h, i64 %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ab = getelementptr i8, ptr %i.x, i64 104
  %i.ac = getelementptr i8, ptr %i.y, i64 200
  %i.ad = getelementptr i8, ptr %i.z, i64 296
  %i.ae = load <10 x double>, ptr %i.aa, align 8, !tbaa !154
  %strided.vec = shufflevector <10 x double> %i.ae, <10 x double> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.af = load <10 x double>, ptr %i.ab, align 8, !tbaa !154
  %strided.vec77 = shufflevector <10 x double> %i.af, <10 x double> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.ag = load <10 x double>, ptr %i.ac, align 8, !tbaa !154
  %strided.vec79 = shufflevector <10 x double> %i.ag, <10 x double> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.ah = load <10 x double>, ptr %i.ad, align 8, !tbaa !154
  %strided.vec81 = shufflevector <10 x double> %i.ah, <10 x double> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %i.ai = fcmp olt <4 x double> %strided.vec, %broadcast.splat
  %i.aj = fcmp olt <4 x double> %strided.vec77, %broadcast.splat
  %i.ak = fcmp olt <4 x double> %strided.vec79, %broadcast.splat
  %i.al = fcmp olt <4 x double> %strided.vec81, %broadcast.splat
  %i.am = zext <4 x i1> %i.ai to <4 x i64>
  %i.an = zext <4 x i1> %i.aj to <4 x i64>
  %i.ao = zext <4 x i1> %i.ak to <4 x i64>
end_hunk_0
