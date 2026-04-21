inline.NumInlined: 401
inline.NumDeleted: 255
begin_hunk_0_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit ] ; 7 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit ] ; 5 uses
  %.0725 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EED2Ev.exit ] ; 13 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0725
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #18
          to label %.noexc9 unwind label %.loopexit15 ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
end_hunk_1
begin_hunk_2_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a

.lr.ph.i.i.i.i.i.i.i.preheader.a:                 ; preds = %.noexc9
  %i.ab = add i64 %i.p, -8
  %i.ac = sub i64 %i.ab, %i.q                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 120
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader111, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.a
end_hunk_2
begin_hunk_3_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a
  %bound0 = icmp ult ptr %i.z, %scevgep104
  %bound1 = icmp ult ptr %i.k, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader111, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387888     ; 4 uses
  %i.ai = shl i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai   ; 2 uses
  %i.ak = shl i64 %n.vec, 3
end_hunk_3
begin_hunk_4_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a
  store <4 x ptr> zeroinitializer, ptr %i.au, align 8, !tbaa !46, !alias.scope !108, !noalias !103
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block.a, label %vector.body, !llvm.loop !113

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n.a, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader111

.lr.ph.i.i.i.i.i.i.i.preheader111:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader.a, %middle.block.a
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader.a ], [ %i.aj, %middle.block.a ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.i.preheader.a ], [ %i.al, %middle.block.a ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader111, %.lr.ph.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !116

_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block.a, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc9 ], [ %i.aj, %middle.block.a ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.f

end_hunk_5
begin_hunk_6_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp ult i64 %i.bf, %i.bj
  br i1 %i.bk, label %bb.b, label %.loopexit, !llvm.loop !117

.loopexit15:                                      ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %3, align 8, !tbaa !118   ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !121 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bq, %i.bs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

end_hunk_7
begin_hunk_8_@_ZN4geos9operation9overlayng15OverlayEdgeRing9toPolygonEPKNS_4geom15GeometryFactoryE:bb.a
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(48) %i.bt) #17, !inline_history !122
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, %i.bs
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !123

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.i
end_hunk_8
begin_hunk_9_@_ZNK4geos4geom15GeometryFactory13createPolygonEOSt10unique_ptrINS0_10LinearRingESt14default_deleteIS3_EEOSt6vectorIS6_SaIS6_EE
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

end_hunk_9
begin_hunk_10_@_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev:bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #17, !inline_history !124
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom10LinearRingEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !123

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !118
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
end_hunk_10
begin_hunk_11_@_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.a = load ptr, ptr %1, align 8, !tbaa !57, !noalias !125
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !125 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !80, !alias.scope !128
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !83, !alias.scope !128
  store i8 0, ptr %i.d, align 8, !tbaa !82, !alias.scope !128
  %i.f = add i64 %i.c, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !83, !alias.scope !128
  %i.h = sub i64 4611686018427387903, %i.g
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
end_hunk_11
begin_hunk_12_@_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !83, !alias.scope !128
  %i.l = and i64 %i.k, -2
  %i.m = icmp eq i64 %i.l, 4611686018427387902
  br i1 %i.m, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
end_hunk_12
begin_hunk_13_@_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !57, !alias.scope !128 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

end_hunk_13
begin_hunk_14_@_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83, !noalias !131 ; 2 uses
  %i.t = load i64, ptr %i.e, align 8, !tbaa !83, !noalias !131
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %i.s
  br i1 %i.v, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
end_hunk_14
begin_hunk_15_@_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.w = load ptr, ptr %2, align 8, !tbaa !57, !noalias !131
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.w, i64 noundef %i.s)
          to label %.noexc6 unwind label %bb.h    ; 6 uses

.noexc6:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.y, ptr %3, align 8, !tbaa !80, !alias.scope !131
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !57   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
end_hunk_15
begin_hunk_16_@_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc6
  store ptr %i.z, ptr %3, align 8, !tbaa !57, !alias.scope !131
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !82
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !82, !alias.scope !131
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !83
  br label %bb.f
end_hunk_16
begin_hunk_17_@_ZN4geos4util13GEOSExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_:bb.a
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !83, !alias.scope !131
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !57
  store i64 0, ptr %i.ai, align 8, !tbaa !83
  store i8 0, ptr %i.aa, align 8, !tbaa !82
end_hunk_17
begin_hunk_18_@llvm.umax.i64
!113 = distinct !{!113, !65, !114, !115}
!114 = !{!"llvm.loop.isvectorized", i32 1}
!115 = !{!"llvm.loop.unroll.runtime.disable"}
!116 = distinct !{!116, !65, !114}
!117 = distinct !{!117, !65}
!118 = !{!119, !120, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!120 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS2_EE", !10, i64 0}
!121 = !{!119, !120, i64 8}
!122 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom10LinearRingESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!123 = distinct !{!123, !65}
!124 = distinct !{null, null, null, null, null}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!127 = distinct !{!127, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!128 = !{!129, !126}
!129 = distinct !{!129, !130, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!130 = distinct !{!130, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!133 = distinct !{!133, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
end_hunk_18
