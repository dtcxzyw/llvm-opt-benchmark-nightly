inline.NumInlined: 608
inline.NumDeleted: 419
begin_hunk_0_@_ZNK4geos9operation9overlayng18OverlayMixedPoints15extractPolygonsEPKNS_4geom8GeometryE:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %i.ap, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec45, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.aj, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.c, i64 %i.bh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next50, %vec.epilog.vector.body ] ; 2 uses
  %i.bk = shl i64 %index46, 3                     ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.aj, i64 %i.bk
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %wide.load49 = load <4 x i64>, ptr %next.gep48, align 8, !tbaa !117, !alias.scope !175, !noalias !170
  store <4 x i64> %wide.load49, ptr %next.gep47, align 8, !tbaa !117, !alias.scope !178, !noalias !175
  store <4 x ptr> splat (ptr null), ptr %next.gep48, align 8, !tbaa !117, !alias.scope !175, !noalias !170
  %index.next50 = add nuw i64 %index46, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next50, %n.vec45
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.ap, %n.vec45
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %iter.check ], [ %i.aj, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.bm = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !173, !noalias !170
  store i64 %i.bm, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !170, !noalias !173
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !173, !noalias !170
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !182

_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc16
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc16 ], [ %i.bi, %vec.epilog.middle.block ], [ %i.au, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.aj, ptr %0, align 8, !tbaa !111
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !114
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !116
  br label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %bb.f, %bb.e
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit20

bb.n:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit20

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i18 = icmp eq ptr %i.w, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit20, label %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i19

_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i19: ; preds = %bb.o
  %i.bt = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(72) %i.w) #15, !inline_history !183
  br label %_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit20

_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.i, %bb.g
  %i.bw = phi ptr [ %i.aj, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.c, %bb.i ], [ %i.c, %bb.g ]
  %i.bx = phi ptr [ %i.bq, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.d, %bb.i ], [ %i.d, %bb.g ]
  %i.by = phi ptr [ %i.bp, %_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.y, %bb.i ], [ %i.e, %bb.g ]
  %i.bz = add nuw i64 %.012, 1
  br label %bb.b, !llvm.loop !184

_ZNSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EED2Ev.exit20: ; preds = %bb.n, %bb.o, %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i19, %bb.m, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.br, %bb.m ], [ %i.bs, %bb.n ], [ %lpad.phi, %bb.o ], [ %lpad.phi, %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i19 ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  resume { ptr, i32 } %.pn.pn.pn

bb.p:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(72) %i.d) #15, !inline_history !185
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom7PolygonEEclEPS2_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !120

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !111
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #17
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN4geos9operation9overlayng11OverlayUtil20createResultGeometryERSt6vectorISt10unique_ptrINS_4geom7PolygonESt14default_deleteIS6_EESaIS9_EERS3_IS4_INS5_10LineStringES7_ISD_EESaISF_EERS3_IS4_INS5_5PointES7_ISJ_EESaISL_EEPKNS5_15GeometryFactoryE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9operation9overlayng18OverlayMixedPoints12copyNonPointEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40, !noalias !186
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.e = load ptr, ptr %i.d, align 8, !noalias !186
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b), !noalias !186, !inline_history !85
  store ptr %i.f, ptr %0, align 8, !tbaa !48, !alias.scope !186
  ret void
}

declare void @_ZNK4geos4geom15GeometryFactory11createEmptyEi(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(45), i32 noundef) local_unnamed_addr #1

declare void @_ZNK4geos4geom15GeometryFactory16createMultiPointEOSt6vectorISt10unique_ptrINS0_5PointESt14default_deleteIS4_EESaIS7_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.55") align 8, ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos9operation9overlayng18OverlayMixedPoints11hasLocationEbRKNS_4geom10CoordinateE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef signext i8 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %2)
  %i.g = icmp eq i8 %i.f, 2
  %spec.select = xor i1 %1, %i.g
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos9operation9overlayng18OverlayMixedPoints12createPointsERSt3setINS_4geom10CoordinateESt4lessIS5_ESaIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not21 = icmp eq ptr %i.b, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit
  %3 = phi ptr [ null, %.lr.ph ], [ %5, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit ] ; 5 uses
  %4 = phi ptr [ null, %.lr.ph ], [ %6, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %.sroa.016.022 = phi ptr [ %i.b, %.lr.ph ], [ %i.be, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 32
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.i = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.c unwind label %bb.h       ; 5 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %4, %3
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %4, align 8, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.e, align 8, !tbaa !89
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !92     ; 12 uses
  %i.m = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #16
          to label %.noexc9 unwind label %.loopexit ; 12 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.o
  %i.y = ptrtoint ptr %i.i to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !93
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.l, %3
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc9
  %i.z = add i64 %i.m, -8
  %i.aa = sub i64 %i.z, %i.n                      ; 3 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.w, i64 8
  %i.ad = add i64 %i.m, -8
  %i.ae = sub i64 %i.ad, %i.n
  %i.af = and i64 %i.ae, -8                       ; 2 uses
  %scevgep39.a = getelementptr i8, ptr %scevgep, i64 %i.af
  %scevgep40.a = getelementptr i8, ptr %i.l, i64 8
  %scevgep41 = getelementptr i8, ptr %scevgep40.a, i64 %i.af
  %bound0 = icmp ult ptr %i.w, %scevgep41
  %bound1 = icmp ult ptr %i.l, %scevgep39.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check42 = icmp ult i64 %i.aa, 120
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 4611686018427387888     ; 4 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.w, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.aj ; 4 uses
  %next.gep43 = getelementptr i8, ptr %i.l, i64 %i.aj ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.ak = getelementptr i8, ptr %next.gep43, i64 32
  %i.al = getelementptr i8, ptr %next.gep43, i64 64
  %i.am = getelementptr i8, ptr %next.gep43, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep43, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %wide.load44.a = load <4 x i64>, ptr %i.ak, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %wide.load45.a = load <4 x i64>, ptr %i.al, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %wide.load46 = load <4 x i64>, ptr %i.am, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %i.an = getelementptr i8, ptr %next.gep, i64 32
  %i.ao = getelementptr i8, ptr %next.gep, i64 64
  %i.ap = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  store <4 x i64> %wide.load44.a, ptr %i.an, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  store <4 x i64> %wide.load45.a, ptr %i.ao, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  store <4 x i64> %wide.load46, ptr %i.ap, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  %i.aq = getelementptr i8, ptr %next.gep43, i64 32
  %i.ar = getelementptr i8, ptr %next.gep43, i64 64
  %i.as = getelementptr i8, ptr %next.gep43, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep43, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  store <4 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  store <4 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  store <4 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.ac, 4611686018427387900   ; 3 uses
  %i.au = shl i64 %n.vec49, 3                     ; 2 uses
  %i.av = getelementptr i8, ptr %i.w, i64 %i.au   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.l, i64 %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %i.ax = shl i64 %index50, 3                     ; 2 uses
  %next.gep51.a = getelementptr i8, ptr %i.w, i64 %i.ax
  %next.gep52 = getelementptr i8, ptr %i.l, i64 %i.ax ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %wide.load53 = load <4 x i64>, ptr %next.gep52, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  store <4 x i64> %wide.load53, ptr %next.gep51.a, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  store <4 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %index.next54 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next54, %n.vec49
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %i.ac, %n.vec49
  br i1 %cmp.n55, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.l, %iter.check ], [ %i.l, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !93, !alias.scope !192, !noalias !189
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !93, !alias.scope !189, !noalias !192
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !93, !alias.scope !192, !noalias !189
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !201

_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.w, %.noexc9 ], [ %i.av, %vec.epilog.middle.block ], [ %i.ah, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.w, ptr %0, align 8, !tbaa !92
  store ptr %i.bc, ptr %i.e, align 8, !tbaa !89
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u ; 2 uses
  store ptr %i.bd, ptr %i.f, align 8, !tbaa !202
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %5 = phi ptr [ %3, %bb.d ], [ %i.bd, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  %6 = phi ptr [ %i.k, %bb.d ], [ %i.bc, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  %i.be = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.016.022) #20 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit12

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i10 = icmp eq ptr %i.i, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit12, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i11

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i11: ; preds = %bb.i
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(82) %i.i) #15, !inline_history !203
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit12: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i11, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.h ], [ %lpad.phi, %bb.i ], [ %lpad.phi, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i11 ]
  tail call void @_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setIN4geos4geom10CoordinateESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  invoke void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable

_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4geos4geom23CoordinateArraySequenceC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom16CoordinateFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204
  tail call void @_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #17
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !206

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9operation9overlayng26CoordinateExtractingFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos9operation9overlayng26CoordinateExtractingFilter9filter_roEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !207
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210, !nonnull !123, !align !213 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !214
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %2, align 8, !tbaa !217
  %i.f = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.e)
  store double %i.f, ptr %2, align 8, !tbaa !217
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !219
  %i.i = tail call noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16) %i.b, double noundef %i.h)
  store double %i.i, ptr %i.g, align 8, !tbaa !219
  br label %_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit

_ZNK4geos4geom14PrecisionModel11makePreciseERNS0_10CoordinateE.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !220, !nonnull !123, !align !213
  call void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN4geos4geom23CoordinateArraySequence3addERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef double @_ZNK4geos4geom14PrecisionModel11makePreciseEd(ptr noundef nonnull align 8 dereferenceable(16), double noundef) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIN4geos4geom10CoordinateES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02227.i = load ptr, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %.not28.i = icmp eq ptr %.02227.i, null
  br i1 %.not28.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load double, ptr %1, align 8, !tbaa !217 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02229.i = phi ptr [ %.02227.i, %.lr.ph.i ], [ %.02229.i.be, %.backedge.backedge ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02229.i, i64 32
  %i.g = load double, ptr %i.f, align 8, !tbaa !217 ; 3 uses
  %i.h = fcmp olt double %i.c, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.i = fcmp ogt double %i.c, %i.g
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02229.i, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !219
  %i.l = fcmp olt double %i.e, %i.k
  br i1 %i.l, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %.backedge
  %i.m = getelementptr inbounds nuw i8, ptr %.02229.i, i64 16
  %.022.i = load ptr, ptr %i.m, align 8, !tbaa !221 ; 2 uses
  %.not.i = icmp eq ptr %.022.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %.thread
  %.02229.i.be = phi ptr [ %.022.i, %bb.d ], [ %.022.i14, %.thread ]
  br label %.backedge, !llvm.loop !222

.thread:                                          ; preds = %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02229.i, i64 24
  %.022.i14 = load ptr, ptr %i.n, align 8, !tbaa !221 ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64
attributes #15 = { nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { noreturn }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN4geos9operation9overlayng18OverlayMixedPointsE", !4, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !13, i64 40, !14, i64 48, !4, i64 56, !20, i64 64, !4, i64 72}
!9 = !{!"p1 _ZTSN4geos4geom14PrecisionModelE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN4geos4geom8GeometryE", !10, i64 0}
!12 = !{!"p1 _ZTSN4geos4geom15GeometryFactoryE", !10, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTSSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EE", !15, i64 0}
!15 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8GeometryESt14default_deleteIS2_ELb1ELb1EE", !16, i64 0}
!16 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8GeometryESt14default_deleteIS2_EE", !17, i64 0}
!17 = !{!"_ZTSSt5tupleIJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !18, i64 0}
!18 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8GeometryESt14default_deleteIS2_EEE", !19, i64 0}
!19 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8GeometryELb0EE", !11, i64 0}
!20 = !{!"_ZTSSt10unique_ptrIN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_EE", !21, i64 0}
!21 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_ELb1ELb1EE", !22, i64 0}
!22 = !{!"_ZTSSt15__uniq_ptr_implIN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_EE", !23, i64 0}
!23 = !{!"_ZTSSt5tupleIJPN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_EEE", !24, i64 0}
!24 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos9algorithm6locate22PointOnGeometryLocatorESt14default_deleteIS3_EEE", !25, i64 0}
!25 = !{!"_ZTSSt10_Head_baseILm0EPN4geos9algorithm6locate22PointOnGeometryLocatorELb0EE", !26, i64 0}
!26 = !{!"p1 _ZTSN4geos9algorithm6locate22PointOnGeometryLocatorE", !10, i64 0}
!27 = !{!8, !9, i64 8}
!28 = !{!29, !12, i64 24}
!29 = !{!"_ZTSN4geos4geom8GeometryE", !30, i64 8, !4, i64 16, !12, i64 24, !10, i64 32}
!30 = !{!"_ZTSSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !31, i64 0}
!31 = !{!"_ZTSSt15__uniq_ptr_dataIN4geos4geom8EnvelopeESt14default_deleteIS2_ELb1ELb1EE", !32, i64 0}
!32 = !{!"_ZTSSt15__uniq_ptr_implIN4geos4geom8EnvelopeESt14default_deleteIS2_EE", !33, i64 0}
!33 = !{!"_ZTSSt5tupleIJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !34, i64 0}
!34 = !{!"_ZTSSt11_Tuple_implILm0EJPN4geos4geom8EnvelopeESt14default_deleteIS2_EEE", !35, i64 0}
!35 = !{!"_ZTSSt10_Head_baseILm0EPN4geos4geom8EnvelopeELb0EE", !36, i64 0}
!36 = !{!"p1 _ZTSN4geos4geom8EnvelopeE", !10, i64 0}
!37 = !{!8, !12, i64 32}
!38 = !{!19, !11, i64 0}
!39 = !{!25, !26, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !6, i64 0}
!42 = !{!8, !4, i64 72}
!43 = !{!8, !11, i64 16}
!44 = !{!8, !11, i64 24}
!45 = !{!8, !13, i64 40}
!46 = !{!26, !26, i64 0}
!47 = distinct !{null, null}
!48 = !{!11, !11, i64 0}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{null, null, null}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4geos9operation9overlayng18OverlayMixedPoints15prepareNonPointEPKNS_4geom8GeometryE: argument 0"}
!54 = distinct !{!54, !"_ZN4geos9operation9overlayng18OverlayMixedPoints15prepareNonPointEPKNS_4geom8GeometryE"}
!55 = !{!56, !53}
!56 = distinct !{!56, !57, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!57 = distinct !{!57, !"_ZNK4geos4geom8Geometry5cloneEv"}
!58 = distinct !{ptr @_ZN4geos9operation9overlayng18OverlayMixedPoints15prepareNonPointEPKNS_4geom8GeometryE, null}
!59 = distinct !{null, null, null, null, null}
!60 = !{!8, !4, i64 56}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZN4geos9operation9overlayng18OverlayMixedPoints13createLocatorEPKNS_4geom8GeometryE: argument 0"}
!63 = distinct !{!63, !"_ZN4geos9operation9overlayng18OverlayMixedPoints13createLocatorEPKNS_4geom8GeometryE"}
!64 = distinct !{null, null, null, null, null}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK4geos9operation9overlayng18OverlayMixedPoints18extractCoordinatesEPKNS_4geom8GeometryEPKNS3_14PrecisionModelE: argument 0"}
!67 = distinct !{!67, !"_ZNK4geos9operation9overlayng18OverlayMixedPoints18extractCoordinatesEPKNS_4geom8GeometryEPKNS3_14PrecisionModelE"}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN4geos4geom23CoordinateArraySequenceE", !10, i64 0}
!70 = !{!9, !9, i64 0}
!71 = distinct !{ptr @_ZNK4geos9operation9overlayng18OverlayMixedPoints18extractCoordinatesEPKNS_4geom8GeometryEPKNS3_14PrecisionModelE, null, null}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !74, i64 0}
!74 = !{!"p1 omnipotent char", !10, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"long", !5, i64 0}
!77 = !{!78, !74, i64 0}
!78 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !73, i64 0, !76, i64 8, !5, i64 16}
!79 = !{!5, !5, i64 0}
!80 = !{!78, !76, i64 8}
!81 = distinct !{null, null}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!84 = distinct !{!84, !"_ZNK4geos4geom8Geometry5cloneEv"}
!85 = distinct !{null}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK4geos9operation9overlayng18OverlayMixedPoints17createPointResultERSt6vectorISt10unique_ptrINS_4geom5PointESt14default_deleteIS6_EESaIS9_EE: argument 0"}
!88 = distinct !{!88, !"_ZNK4geos9operation9overlayng18OverlayMixedPoints17createPointResultERSt6vectorISt10unique_ptrINS_4geom5PointESt14default_deleteIS6_EESaIS9_EE"}
!89 = !{!90, !91, i64 8}
!90 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!91 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EE", !10, i64 0}
!92 = !{!90, !91, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"p1 _ZTSN4geos4geom5PointE", !10, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTSN4geos4geom10MultiPointE", !10, i64 0}
!97 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!102 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EE", !10, i64 0}
!103 = !{!101, !102, i64 8}
!104 = !{!102, !102, i64 0}
!105 = !{!101, !102, i64 16}
!106 = !{!107, !107, i64 0}
!107 = !{!"p1 _ZTSN4geos4geom10LineStringE", !10, i64 0}
!108 = distinct !{null, null, ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!109 = distinct !{!109, !99}
!110 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!111 = !{!112, !113, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 _ZTSSt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS2_EE", !10, i64 0}
!114 = !{!112, !113, i64 8}
!115 = !{!113, !113, i64 0}
!116 = !{!112, !113, i64 16}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTSN4geos4geom7PolygonE", !10, i64 0}
!119 = distinct !{null, null, ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!120 = distinct !{!120, !99}
!121 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EESaIS6_EED2Ev, null, null, null, null, null}
!122 = !{i8 0, i8 2}
!123 = !{}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!126 = distinct !{!126, !"_ZNK4geos4geom8Geometry5cloneEv"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZNK4geos9operation9overlayng18OverlayMixedPoints17createPointResultERSt6vectorISt10unique_ptrINS_4geom5PointESt14default_deleteIS6_EESaIS9_EE: argument 0"}
!129 = distinct !{!129, !"_ZNK4geos9operation9overlayng18OverlayMixedPoints17createPointResultERSt6vectorISt10unique_ptrINS_4geom5PointESt14default_deleteIS6_EESaIS9_EE"}
!130 = !{!131, !133, i64 0}
!131 = !{!"_ZTSSt15_Rb_tree_header", !132, i64 0, !76, i64 32}
!132 = !{!"_ZTSSt18_Rb_tree_node_base", !133, i64 0, !134, i64 8, !134, i64 16, !134, i64 24}
!133 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!134 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !10, i64 0}
!135 = !{!131, !134, i64 8}
!136 = !{!131, !134, i64 16}
!137 = !{!131, !134, i64 24}
!138 = !{!131, !76, i64 32}
!139 = distinct !{null}
!140 = !{ptr @_ZNK4geos9operation9overlayng18OverlayMixedPoints11hasLocationEbRKNS_4geom10CoordinateE}
!141 = distinct !{!141, !99}
!142 = distinct !{null, null, null, null, null}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZNK4geos4geom10LineString5cloneEv: argument 0"}
!145 = distinct !{!145, !"_ZNK4geos4geom10LineString5cloneEv"}
!146 = distinct !{null}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!149 = distinct !{!149, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!150 = !{!151}
!151 = distinct !{!151, !149, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!152 = !{!151, !153}
!153 = distinct !{!153, !154}
!154 = distinct !{!154, !"LVerDomain"}
!155 = !{!148, !156}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !99, !158, !159}
!158 = !{!"llvm.loop.isvectorized", i32 1}
!159 = !{!"llvm.loop.unroll.runtime.disable"}
!160 = !{!"branch_weights", i32 4, i32 12}
!161 = distinct !{!161, !99, !158, !159}
!162 = distinct !{!162, !99, !158}
!163 = distinct !{null, null}
!164 = distinct !{!164, !99}
!165 = distinct !{null, null, null, null, null}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZNK4geos4geom7Polygon5cloneEv: argument 0"}
!168 = distinct !{!168, !"_ZNK4geos4geom7Polygon5cloneEv"}
!169 = distinct !{null}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!172 = distinct !{!172, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!173 = !{!174}
!174 = distinct !{!174, !172, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom7PolygonESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!175 = !{!174, !176}
!176 = distinct !{!176, !177}
!177 = distinct !{!177, !"LVerDomain"}
!178 = !{!171, !179}
!179 = distinct !{!179, !177}
!180 = distinct !{!180, !99, !158, !159}
!181 = distinct !{!181, !99, !158, !159}
!182 = distinct !{!182, !99, !158}
!183 = distinct !{null, null}
!184 = distinct !{!184, !99}
!185 = distinct !{null, null, null, null, null}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZNK4geos4geom8Geometry5cloneEv: argument 0"}
!188 = distinct !{!188, !"_ZNK4geos4geom8Geometry5cloneEv"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!191 = distinct !{!191, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!192 = !{!193}
!193 = distinct !{!193, !191, !"_ZSt19__relocate_object_aISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!194 = !{!193, !195}
!195 = distinct !{!195, !196}
!196 = distinct !{!196, !"LVerDomain"}
!197 = !{!190, !198}
!198 = distinct !{!198, !196}
!199 = distinct !{!199, !99, !158, !159}
!200 = distinct !{!200, !99, !158, !159}
!201 = distinct !{!201, !99, !158}
!202 = !{!90, !91, i64 16}
!203 = distinct !{null, null}
!204 = !{!132, !134, i64 24}
!205 = !{!132, !134, i64 16}
!206 = distinct !{!206, !99}
!207 = !{i64 0, i64 8, !208, i64 8, i64 8, !208, i64 16, i64 8, !208}
!208 = !{!209, !209, i64 0}
!209 = !{!"double", !5, i64 0}
!210 = !{!211, !9, i64 16}
!211 = !{!"_ZTSN4geos9operation9overlayng26CoordinateExtractingFilterE", !212, i64 0, !69, i64 8, !9, i64 16}
!212 = !{!"_ZTSN4geos4geom16CoordinateFilterE"}
!213 = !{i64 8}
!214 = !{!215, !216, i64 0}
!215 = !{!"_ZTSN4geos4geom14PrecisionModelE", !216, i64 0, !209, i64 8}
!216 = !{!"_ZTSN4geos4geom14PrecisionModel4TypeE", !5, i64 0}
!217 = !{!218, !209, i64 0}
!218 = !{!"_ZTSN4geos4geom10CoordinateE", !209, i64 0, !209, i64 8, !209, i64 16}
!219 = !{!218, !209, i64 8}
!220 = !{!211, !69, i64 8}
!221 = !{!134, !134, i64 0}
!222 = distinct !{!222, !99}
end_hunk_1
