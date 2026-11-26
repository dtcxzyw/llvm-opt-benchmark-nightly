Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/GeometryFixer?download=true
inline.NumInlined: 1048
inline.NumDeleted: 643
begin_hunk_0_@_ZNK4geos4geom4util13GeometryFixer17fixPolygonElementEPKNS0_7PolygonE:bb.a

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit38
  %i.dn = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.df, %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit38 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.dn) #18
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41: ; preds = %bb.ai
  %i.do = load ptr, ptr %i.cz, align 8, !tbaa !61
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(40) %i.cz) #16, !inline_history !2
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41, %bb.ai, %bb.ab, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit11.i
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit11.i ], [ %i.ce, %bb.ab ], [ %i.cy, %bb.ai ], [ %i.cy, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.an

bb.an:                                            ; preds = %.body, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.cd, %bb.aa ]
  %i.dr = load ptr, ptr %11, align 8, !tbaa !113  ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit44, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZdlPv(ptr noundef nonnull %i.dr) #18
  br label %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit44

_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit44: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.ds = load ptr, ptr %10, align 8, !tbaa !113  ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit46, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit44
  call void @_ZdlPv(ptr noundef nonnull %i.ds) #18
  br label %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit46

_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit46: ; preds = %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit44, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #16
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit46, %bb.z
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIPKN4geos4geom8GeometryESaIS4_EED2Ev.exit46 ], [ %i.cc, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit26

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i, %bb.k, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.n
  %.pr57 = load ptr, ptr %8, align 8, !tbaa !62   ; 3 uses
  %.not.i47 = icmp eq ptr %.pr57, null
  br i1 %.not.i47, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit49, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i48

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i48: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit
  %i.dt = load ptr, ptr %.pr57, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(40) %.pr57) #16, !inline_history !2
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit49

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit49: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit26: ; preds = %bb.l, %bb.m, %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i25, %bb.aq
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.ar, %_ZNKSt14default_deleteIN4geos4geom10LineStringEEclEPS2_.exit.i25 ], [ %.pn.pn.pn.pn, %bb.aq ], [ %i.aq, %bb.l ], [ %i.ar, %bb.m ]
  %i.dw = load ptr, ptr %8, align 8, !tbaa !62    ; 3 uses
  %.not.i50 = icmp eq ptr %i.dw, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit52, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i51

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i51: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit26
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !61
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(40) %i.dw) #16, !inline_history !2
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit52

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit52: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit26, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %common.resume
}

declare void @_ZNK4geos4geom15GeometryFactory13createPolygonEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.93") align 8, ptr noundef nonnull align 8 dereferenceable(45), i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom4util13GeometryFixer7fixRingEPKNS0_10LinearRingE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !301 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.26", align 8 ; 7 uses
  %4 = alloca %"class.std::unique_ptr.93", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.a = load ptr, ptr %2, align 8, !tbaa !61, !noalias !302
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.c = load ptr, ptr %i.b, align 8, !noalias !302
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !302, !inline_history !299
  store ptr %i.d, ptr %3, align 8, !tbaa !68, !alias.scope !302
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  invoke void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt10unique_ptrINS0_10LinearRingESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.93") align 8 %4, ptr noundef nonnull align 8 dereferenceable(45) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit unwind label %bb.c

_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !72     ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  invoke void @_ZN4geos9operation6buffer8BufferOp12bufferByZeroEPKNS_4geom8GeometryEb(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %i.g, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit
  %.not.i5 = icmp eq ptr %i.g, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #16, !inline_history !2
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i
  %i.k = load ptr, ptr %3, align 8, !tbaa !68     ; 3 uses
  %.not.i6 = icmp eq ptr %i.k, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #16, !inline_history !300
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i7 = icmp eq ptr %i.g, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i8

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i8: ; preds = %bb.d
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #16, !inline_history !2
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i8, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.p, %bb.d ], [ %i.p, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i8 ]
  %i.t = load ptr, ptr %3, align 8, !tbaa !68     ; 3 uses
  %.not.i10 = icmp eq ptr %i.t, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit12, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i11

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i11: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(48) %i.t) #16, !inline_history !300
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit12: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9, %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringERKNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom4util13GeometryFixer8fixHolesEPKNS0_7PolygonE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.34") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !317 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.26", align 8 ; 7 uses
  %4 = alloca %"class.std::unique_ptr.93", align 8 ; 5 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18, %bb.a
  %i.d = phi ptr [ null, %bb.a ], [ %i.cl, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18 ] ; 6 uses
  %i.e = phi ptr [ null, %bb.a ], [ %i.cm, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18 ] ; 4 uses
  %i.f = phi ptr [ null, %bb.a ], [ %i.cn, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18 ] ; 21 uses
  %.010 = phi i64 [ 0, %bb.a ], [ %i.co, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18 ] ; 3 uses
  %i.g = invoke noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i64 %.010, %i.g
  br i1 %i.h, label %bb.e, label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.j = invoke noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %.010)
          to label %bb.f unwind label %bb.p       ; 2 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16, !noalias !318
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61, !noalias !320
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.m = load ptr, ptr %i.l, align 8, !noalias !320
  %i.n = invoke noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.noexc unwind label %bb.p, !noalias !320, !inline_history !9

.noexc:                                           ; preds = %bb.f
  store ptr %i.n, ptr %3, align 8, !tbaa !68, !alias.scope !319, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !318
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !58, !noalias !318
  invoke void @_ZNK4geos4geom15GeometryFactory13createPolygonEOSt10unique_ptrINS0_10LinearRingESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.93") align 8 %4, ptr noundef nonnull align 8 dereferenceable(45) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit.i unwind label %bb.h, !noalias !318

_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %.noexc
  %i.p = load ptr, ptr %4, align 8, !tbaa !72, !noalias !318 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !318
  invoke void @_ZN4geos9operation6buffer8BufferOp12bufferByZeroEPKNS_4geom8GeometryEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef %i.p, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit.i
  %.not.i5.i = icmp eq ptr %i.p, null
  br i1 %.not.i5.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i: ; preds = %bb.g
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #16, !inline_history !10
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i.i, %bb.g
  %i.t = load ptr, ptr %3, align 8, !tbaa !68, !noalias !318 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.t, null
  br i1 %.not.i6.i, label %bb.j, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(48) %i.t) #16, !inline_history !11
  br label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !318
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %.not.i7.i = icmp eq ptr %i.p, null
  br i1 %.not.i7.i, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9.i, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i8.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i8.i: ; preds = %bb.i
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #16, !inline_history !10
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9.i

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i8.i, %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.y, %bb.i ], [ %i.y, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i8.i ]
  %i.ac = load ptr, ptr %3, align 8, !tbaa !68, !noalias !318 ; 3 uses
  %.not.i10.i = icmp eq ptr %i.ac, null
  br i1 %.not.i10.i, label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit12.i, label %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i11.i

_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i11.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(48) %i.ac) #16, !inline_history !11
  br label %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit12.i

_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit12.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i11.i, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !318
  br label %.body

bb.j:                                             ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i, %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16, !noalias !318
  %i.ag = load ptr, ptr %5, align 8, !tbaa !62    ; 3 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %5, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !90
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.d to i64                ; 3 uses
  %i.aj = ptrtoint ptr %i.f to i64                ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  store ptr %i.f, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #19
          to label %.noexc14 unwind label %.loopexit ; 12 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store ptr %i.ag, ptr %i.at, align 8, !tbaa !62
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc14
  %i.au = add i64 %i.ai, -8
  %i.av = sub i64 %i.au, %i.aj                    ; 3 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.av, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %i.ai, -8
  %i.az = sub i64 %i.ay, %i.aj
  %i.ba = and i64 %i.az, -8
  %i.bb = add i64 %i.ba, 8                        ; 2 uses
  %i.bc = getelementptr i8, ptr %i.as, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.f, i64 %i.bb
  %bound0 = icmp ult ptr %i.as, %i.bd
  %bound1 = icmp ult ptr %i.f, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check73 = icmp ult i64 %i.av, 120
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.ax, 12
  %n.vec = and i64 %i.ax, 4611686018427387888     ; 4 uses
  %i.bf = shl i64 %n.vec, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.as, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.f, i64 %i.bf
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bi ; 4 uses
  %next.gep74 = getelementptr i8, ptr %i.f, i64 %i.bi ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.bj = getelementptr i8, ptr %next.gep74, i64 32 ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep74, i64 64 ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep74, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep74, align 8, !tbaa !62, !alias.scope !323
  %wide.load75 = load <4 x i64>, ptr %i.bj, align 8, !tbaa !62, !alias.scope !323
  %wide.load76 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !62, !alias.scope !323
  %wide.load77 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !62, !alias.scope !323
  %i.bm = getelementptr i8, ptr %next.gep, i64 32
  %i.bn = getelementptr i8, ptr %next.gep, i64 64
  %i.bo = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !62, !alias.scope !324, !noalias !325
  store <4 x i64> %wide.load75, ptr %i.bm, align 8, !tbaa !62, !alias.scope !324, !noalias !325
  store <4 x i64> %wide.load76, ptr %i.bn, align 8, !tbaa !62, !alias.scope !324, !noalias !325
  store <4 x i64> %wide.load77, ptr %i.bo, align 8, !tbaa !62, !alias.scope !324, !noalias !325
  store <4 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !62, !alias.scope !323
  store <4 x ptr> splat (ptr null), ptr %i.bj, align 8, !tbaa !62, !alias.scope !323
  store <4 x ptr> splat (ptr null), ptr %i.bk, align 8, !tbaa !62, !alias.scope !323
  store <4 x ptr> splat (ptr null), ptr %i.bl, align 8, !tbaa !62, !alias.scope !323
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec78 = and i64 %i.ax, 4611686018427387900   ; 3 uses
  %i.bq = shl i64 %n.vec78, 3                     ; 2 uses
  %i.br = getelementptr i8, ptr %i.as, i64 %i.bq  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.f, i64 %i.bq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 2 uses
  %i.bt = shl i64 %index79, 3                     ; 2 uses
  %next.gep80 = getelementptr i8, ptr %i.as, i64 %i.bt
  %next.gep81 = getelementptr i8, ptr %i.f, i64 %i.bt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %wide.load82 = load <4 x i64>, ptr %next.gep81, align 8, !tbaa !62, !alias.scope !323
  store <4 x i64> %wide.load82, ptr %next.gep80, align 8, !tbaa !62, !alias.scope !324, !noalias !325
  store <4 x ptr> splat (ptr null), ptr %next.gep81, align 8, !tbaa !62, !alias.scope !323
  %index.next83 = add nuw i64 %index79, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !314

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %i.ax, %n.vec78
  br i1 %cmp.n84, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.as, %iter.check ], [ %i.as, %vector.memcheck ], [ %i.bg, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.bv = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !62, !alias.scope !322
  store i64 %i.bv, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !62, !alias.scope !321
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !62, !alias.scope !322
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !315

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc14
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.as, %.noexc14 ], [ %i.br, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.f) #18
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.by, ptr %i.b, align 8, !tbaa !90
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !92
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit

bb.p:                                             ; preds = %bb.f, %bb.e
  %i.ca = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.f, ptr %0, align 8
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !62    ; 3 uses
  %.not.i15 = icmp eq ptr %i.cb, null
  br i1 %.not.i15, label %.body, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i: ; preds = %bb.q
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !61
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(40) %i.cb) #16, !inline_history !2
  br label %.body

_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %i.cf = phi ptr [ %i.d, %bb.l ], [ %i.bz, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ] ; 2 uses
  %i.cg = phi ptr [ %i.ah, %bb.l ], [ %i.by, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ] ; 2 uses
  %i.ch = phi ptr [ %i.f, %bb.l ], [ %i.as, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ] ; 2 uses
  %.pr = load ptr, ptr %5, align 8, !tbaa !62     ; 3 uses
  %.not.i16 = icmp eq ptr %.pr, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18, label %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i17

_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i17: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit
  %i.ci = load ptr, ptr %.pr, align 8, !tbaa !61
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %.pr) #16, !inline_history !2
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit18: ; preds = %bb.j, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i17
  %i.cl = phi ptr [ %i.d, %bb.j ], [ %i.cf, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit ], [ %i.cf, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i17 ]
  %i.cm = phi ptr [ %i.e, %bb.j ], [ %i.cg, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit ], [ %i.cg, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i17 ]
  %i.cn = phi ptr [ %i.f, %bb.j ], [ %i.ch, %_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEEvDpOT_.exit ], [ %i.ch, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.co = add nuw i64 %.010, 1
  br label %bb.b, !llvm.loop !316

.body:                                            ; preds = %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i, %bb.q, %bb.p, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit12.i
  %.pn = phi { ptr, i32 } [ %.pn.i, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit12.i ], [ %i.ca, %bb.p ], [ %lpad.phi, %bb.q ], [ %lpad.phi, %_ZNKSt14default_deleteIN4geos4geom8GeometryEEclEPS2_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.r

bb.r:                                             ; preds = %.body, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.i, %bb.d ]
  call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #16
  resume { ptr, i32 } %.pn.pn

bb.s:                                             ; preds = %bb.c
  store ptr %i.f, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos4geom4util13GeometryFixer13classifyHolesEPKNS0_8GeometryERSt6vectorISt10unique_ptrIS3_St14default_deleteIS3_EESaISA_EERS6_IS5_SaIS5_EESG_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !329 {
bb.a:
  %5 = alloca %"class.geos::geom::prep::PreparedGeometryFactory", align 1 ; 3 uses
  %6 = alloca %"class.std::unique_ptr.106", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !330
  call void @_ZNK4geos4geom4prep23PreparedGeometryFactory6createEPKNS0_8GeometryE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.106") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !330
  %i.a = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %.not30 = icmp eq ptr %i.a, %i.c
end_hunk_0
