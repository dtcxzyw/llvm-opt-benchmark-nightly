inline.NumInlined: 349
inline.NumDeleted: 222
begin_hunk_0_@_ZN4geos9operation10BoundaryOp11getBoundaryERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE:bb.a
bb.e:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27, !noalias !57
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !noalias !57
  call void %i.f(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.2") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a), !inline_history !56
  br label %_ZN4geos9operation10BoundaryOp11getBoundaryEv.exit

_ZN4geos9operation10BoundaryOp11getBoundaryEv.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9operation10BoundaryOp11hasBoundaryERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::operation::BoundaryOp", align 8 ; 6 uses
  %3 = alloca %"class.std::unique_ptr.2", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(40) %0)
  switch i32 %i.h, label %bb.j [
    i32 0, label %bb.k
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16, !noalias !60
  call void @_ZN4geos9operation10BoundaryOpC1ERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !60
  %i.i = load ptr, ptr %2, align 8, !tbaa !23, !noalias !63, !nonnull !25, !align !26 ; 4 uses
  %i.j = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #16, !noalias !63 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4geos9operation10BoundaryOp18boundaryLineStringERKNS_4geom10LineStringE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.j)
  br label %_ZN4geos9operation10BoundaryOp11getBoundaryERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = call ptr @__dynamic_cast(ptr nonnull %i.i, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom15MultiLineStringE, i64 0) #16, !noalias !63 ; 2 uses
  %.not8.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not8.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4geos9operation10BoundaryOp23boundaryMultiLineStringERKNS_4geom15MultiLineStringE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.k)
  br label %_ZN4geos9operation10BoundaryOp11getBoundaryERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE.exit

bb.g:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !27, !noalias !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !noalias !63
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.i), !inline_history !66
  br label %_ZN4geos9operation10BoundaryOp11getBoundaryERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE.exit

_ZN4geos9operation10BoundaryOp11getBoundaryERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE.exit: ; preds = %bb.d, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16, !noalias !60
  %i.o = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN4geos9operation10BoundaryOp11getBoundaryERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE.exit
  %i.t = xor i1 %i.s, true
  %i.u = load ptr, ptr %3, align 8, !tbaa !7      ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.u) #16, !inline_history !67
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.k

bb.i:                                             ; preds = %_ZN4geos9operation10BoundaryOp11getBoundaryERKNS_4geom8GeometryERKNS_9algorithm16BoundaryNodeRuleE.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !7      ; 3 uses
  %.not.i6 = icmp eq ptr %i.z, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit8, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i7

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i7: ; preds = %bb.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.z) #16, !inline_history !67
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit8

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit8: ; preds = %bb.i, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.y

bb.j:                                             ; preds = %bb.b
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.j, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  %.0 = phi i1 [ %i.t, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit ], [ true, %bb.j ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNK4geos4geom15GeometryFactory16createMultiPointEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #1

declare void @_ZNK4geos4geom15GeometryFactory16createMultiPointEOSt6vectorISt10unique_ptrINS0_5PointESt14default_deleteIS4_EESaIS7_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(82) %i.d) #16, !inline_history !68
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !47

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !37
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #18
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation10BoundaryOp26computeBoundaryCoordinatesERKNS_4geom15MultiLineStringE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.39") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.51", align 8     ; 4 uses
  %4 = alloca %"class.std::tuple.54", align 1     ; 3 uses
  %5 = alloca %"class.std::tuple.51", align 8     ; 4 uses
  %6 = alloca %"class.std::tuple.54", align 1     ; 3 uses
  %7 = alloca %"class.std::map", align 8          ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  store i32 0, ptr %i.a, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !78
  br label %bb.b

bb.b:                                             ; preds = %bb.ad, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ci, %bb.ad ]   ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i64 %i.h(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i64 %.0, %i.i
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %.not46 = icmp eq ptr %i.k, %i.a
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.promoted = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.af

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %.0)
          to label %bb.g unwind label %bb.i       ; 8 uses

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.ad, label %bb.j

bb.i:                                             ; preds = %.critedge.i33, %.critedge.i, %bb.t, %bb.s, %bb.j, %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.j:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 464
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 noundef 0)
          to label %bb.k unwind label %bb.i       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !75  ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not11.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k
  %i.ae = load double, ptr %i.ac, align 8, !tbaa !79 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load double, ptr %i.af, align 8         ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !79 ; 2 uses
  %i.aj = fcmp olt double %i.ai, %i.ae
  br i1 %i.aj, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = fcmp ogt double %i.ai, %i.ae
  br i1 %i.ak, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.am = load double, ptr %i.al, align 8, !tbaa !82
  %i.an = fcmp olt double %i.am, %i.ag
  br i1 %i.an, label %bb.o, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n, %bb.l
  br label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i

_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %.sink.i.i.i.i = phi i64 [ 24, %bb.o ], [ 16, %bb.n ], [ 16, %bb.m ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %bb.o ], [ %.013.i.i.i.i, %bb.n ], [ %.013.i.i.i.i, %bb.m ] ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i, label %bb.l, !llvm.loop !84

_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i: ; preds = %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i
  %i.ap = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.ap, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !79 ; 2 uses
  %i.as = fcmp olt double %i.ae, %i.ar
  br i1 %i.as, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = fcmp ogt double %i.ae, %i.ar
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.av = load double, ptr %i.au, align 8, !tbaa !82
  %i.aw = fcmp olt double %i.ag, %i.av
  br i1 %i.aw, label %.critedge.i, label %bb.s

.critedge.i:                                      ; preds = %bb.r, %bb.p, %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i, %bb.k
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.a, %bb.k ], [ %.19.i.i.i.i, %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i ], [ %.19.i.i.i.i, %bb.r ], [ %.19.i.i.i.i, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.ac, ptr %5, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ax = invoke ptr @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.s

bb.s:                                             ; preds = %.noexc, %bb.r, %bb.q
  %.sroa.06.0.i = phi ptr [ %i.ax, %.noexc ], [ %.19.i.i.i.i, %bb.q ], [ %.19.i.i.i.i, %bb.r ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !3
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %bb.t unwind label %bb.i

bb.t:                                             ; preds = %bb.s
  %i.bf = add i64 %i.be, -1
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 464
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 noundef %i.bf)
          to label %bb.u unwind label %bb.i       ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !75  ; 2 uses
  %.not11.i.i.i.i22 = icmp eq ptr %i.bk, null
  br i1 %.not11.i.i.i.i22, label %.critedge.i33, label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %bb.u
  %i.bl = load double, ptr %i.bj, align 8, !tbaa !79 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bn = load double, ptr %i.bm, align 8         ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i26, %.lr.ph.i.i.i.i23
  %.013.i.i.i.i24 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i23 ], [ %.1.i.i.i.i29, %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i26 ] ; 5 uses
  %.0812.i.i.i.i25 = phi ptr [ %i.a, %.lr.ph.i.i.i.i23 ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i26 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i24, i64 32
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !79 ; 2 uses
  %i.bq = fcmp olt double %i.bp, %i.bl
  br i1 %i.bq, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = fcmp ogt double %i.bp, %i.bl
  br i1 %i.br, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i26, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i24, i64 40
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !82
  %i.bu = fcmp olt double %i.bt, %i.bn
  br i1 %i.bu, label %bb.y, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i26

bb.y:                                             ; preds = %bb.x, %bb.v
  br label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i26

_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i26: ; preds = %bb.y, %bb.x, %bb.w
  %.sink.i.i.i.i27 = phi i64 [ 24, %bb.y ], [ 16, %bb.x ], [ 16, %bb.w ]
  %.19.i.i.i.i28 = phi ptr [ %.0812.i.i.i.i25, %bb.y ], [ %.013.i.i.i.i24, %bb.x ], [ %.013.i.i.i.i24, %bb.w ] ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i24, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i31, label %bb.v, !llvm.loop !84

_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i31: ; preds = %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit.i.i.i.i26
  %i.bw = icmp eq ptr %.19.i.i.i.i28, %i.a
  br i1 %i.bw, label %.critedge.i33, label %bb.z

bb.z:                                             ; preds = %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i31
  %i.bx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.by = load double, ptr %i.bx, align 8, !tbaa !79 ; 2 uses
  %i.bz = fcmp olt double %i.bl, %i.by
  br i1 %i.bz, label %.critedge.i33, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = fcmp ogt double %i.bl, %i.by
  br i1 %i.ca, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !82
  %i.cd = fcmp olt double %i.bn, %i.cc
  br i1 %i.cd, label %.critedge.i33, label %bb.ac

.critedge.i33:                                    ; preds = %bb.ab, %bb.z, %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i31, %bb.u
  %.08.lcssa.i.i.i11.i34 = phi ptr [ %i.a, %bb.u ], [ %.19.i.i.i.i28, %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEE11lower_boundERS6_.exit.i31 ], [ %.19.i.i.i.i28, %bb.ab ], [ %.19.i.i.i.i28, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %i.bj, ptr %3, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ce = invoke ptr @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr %.08.lcssa.i.i.i11.i34, ptr noundef nonnull align 1 dereferenceable(1) @_ZStL19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc35 unwind label %bb.i

.noexc35:                                         ; preds = %.critedge.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc35, %bb.ab, %bb.aa
  %.sroa.06.0.i32 = phi ptr [ %i.ce, %.noexc35 ], [ %.19.i.i.i.i28, %bb.aa ], [ %.19.i.i.i.i28, %bb.ab ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i32, i64 56 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.h, %bb.ac
  %i.ci = add i64 %.0, 1
  br label %bb.b, !llvm.loop !86

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit, %bb.d
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !75
  invoke void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.cj)
          to label %_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #19
  unreachable

_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret void

bb.af:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit
  %.sroa.040.047 = phi ptr [ %i.k, %.lr.ph ], [ %i.dp, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.cm = phi ptr [ %.promoted, %.lr.ph ], [ %i.do, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit ] ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 56
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !87
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !34, !nonnull !25, !align !26 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i32 noundef %i.cp)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cu, label %bb.ah, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !49  ; 6 uses
  %i.cw = load ptr, ptr %i.n, align 8, !tbaa !89
  %.not.i = icmp eq ptr %i.cv, %i.cw
  br i1 %.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !tbaa.struct !90
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %i.cx, ptr %i.m, align 8, !tbaa !49
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cm to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.ak, label %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #20
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.ak
  unreachable

_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aj
  %i.dc = sdiv exact i64 %i.da, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 384307168202282325)
  %i.dg = select i1 %i.de, i64 384307168202282325, i64 %i.df ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dh = mul nuw nsw i64 %i.dg, 24
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #17
          to label %.noexc38 unwind label %.loopexit ; 6 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !tbaa.struct !90
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.cm, %i.cv
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc38, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i ], [ %i.di, %.noexc38 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i ], [ %i.cm, %.noexc38 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !90, !alias.scope !92
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.cv
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !96

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc38
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.di, %.noexc38 ], [ %i.dl, %.lr.ph.i.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #18
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.al, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.di, ptr %0, align 8, !tbaa !52
  store ptr %i.dm, ptr %i.m, align 8, !tbaa !49
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.dn, ptr %i.n, align 8, !tbaa !89
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

.loopexit:                                        ; preds = %bb.af, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ai, %bb.ag
  %i.do = phi ptr [ %i.di, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.cm, %bb.ai ], [ %i.cm, %bb.ag ]
  %i.dp = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.040.047) #21 ; 2 uses
  %.not = icmp eq ptr %i.dp, %i.a
  br i1 %.not, label %._crit_edge, label %bb.af

bb.am:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.e, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.y, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !52       ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %8, null
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdlPv(ptr noundef nonnull %8) #18
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EED2Ev.exit: ; preds = %bb.am, %bb.an
  resume { ptr, i32 } %.pn.pn
}

declare noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK4geos4geom15GeometryFactory16createMultiPointEOSt6vectorINS0_10CoordinateESaIS3_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN4geos4geom10CoordinateEiSt4lessIS2_ESaISt4pairIKS2_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  invoke void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable

_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  tail call void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !99

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !85
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !90
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !87
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load double, ptr %i.b, align 8, !tbaa !79 ; 2 uses
  %i.m = load double, ptr %i.k, align 8, !tbaa !79 ; 2 uses
  %i.n = fcmp olt double %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = fcmp ogt double %i.l, %i.m
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load double, ptr %i.r, align 8, !tbaa !82
  %i.t = fcmp olt double %i.q, %i.s
  br i1 %i.t, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %i.u = phi i1 [ false, %bb.g ], [ true, %bb.c ], [ true, %bb.f ], [ true, %bb.d ], [ false, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !78
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !78
  br label %_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #18
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #18
  br label %_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.h
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.h ]
  ret ptr %.sroa.013.017
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN4geos4geom10CoordinateESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !79 ; 2 uses
  %i.i = load double, ptr %2, align 8, !tbaa !79  ; 2 uses
  %i.j = fcmp olt double %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit34, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp ogt double %i.h, %i.i
  br i1 %i.k, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !82
  %i.p = fcmp olt double %i.m, %i.o
  br i1 %i.p, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit34, label %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit

_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit: ; preds = %bb.e, %bb.d, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02227.i = load ptr, ptr %i.q, align 8, !tbaa !83 ; 2 uses
  %.not28.i = icmp eq ptr %.02227.i, null
  br i1 %.not28.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt4lessIN4geos4geom10CoordinateEEclERKS2_S5_.exit
  %i.r = load double, ptr %2, align 8, !tbaa !79  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load double, ptr %i.s, align 8
  br label %.backedge
end_hunk_0
