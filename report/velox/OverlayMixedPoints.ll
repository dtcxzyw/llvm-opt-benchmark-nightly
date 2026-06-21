inline.NumInlined: 608
inline.NumDeleted: 419
begin_hunk_0_@_ZNK4geos9operation9overlayng18OverlayMixedPoints15extractPolygonsEPKNS_4geom8GeometryE:bb.a

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
define void @_ZNK4geos9operation9overlayng18OverlayMixedPoints12copyNonPointEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
define noundef zeroext i1 @_ZNK4geos9operation9overlayng18OverlayMixedPoints11hasLocationEbRKNS_4geom10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
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
define void @_ZNK4geos9operation9overlayng18OverlayMixedPoints12createPointsERSt3setINS_4geom10CoordinateESt4lessIS5_ESaIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %3 = phi ptr [ null, %.lr.ph ], [ %4, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit ] ; 13 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.bf, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit ] ; 5 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.bg, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit ] ; 3 uses
  %.sroa.016.022 = phi ptr [ %i.b, %.lr.ph ], [ %i.bh, %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.016.022, i64 32
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.k = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory11createPointERKNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(45) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.h       ; 5 uses

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.k to i64
  store i64 %i.l, ptr %i.h, align 8, !tbaa !93
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !89
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.o = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #16
          to label %.noexc9 unwind label %.loopexit ; 13 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.p
  %i.z = ptrtoint ptr %i.k to i64
  store i64 %i.z, ptr %i.y, align 8, !tbaa !93
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %3, %i.g
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc9
  %i.aa = add i64 %i.n, -8
  %i.ab = sub i64 %i.aa, %i.o                     ; 3 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.x, i64 8
  %i.ae = add i64 %i.n, -8
  %i.af = sub i64 %i.ae, %i.o
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %scevgep39 = getelementptr i8, ptr %scevgep, i64 %i.ag
  %scevgep40 = getelementptr i8, ptr %3, i64 8
  %scevgep41 = getelementptr i8, ptr %scevgep40, i64 %i.ag
  %bound0 = icmp ult ptr %i.x, %scevgep41
  %bound1 = icmp ult ptr %3, %scevgep39
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check42 = icmp ult i64 %i.ab, 120
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, 4611686018427387888     ; 4 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.x, i64 %i.ah   ; 2 uses
  %i.aj = getelementptr i8, ptr %3, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ak ; 4 uses
  %next.gep43 = getelementptr i8, ptr %3, i64 %i.ak ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.al = getelementptr i8, ptr %next.gep43, i64 32
  %i.am = getelementptr i8, ptr %next.gep43, i64 64
  %i.an = getelementptr i8, ptr %next.gep43, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep43, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %wide.load44 = load <4 x i64>, ptr %i.al, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %wide.load45 = load <4 x i64>, ptr %i.am, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %wide.load46 = load <4 x i64>, ptr %i.an, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %i.ao = getelementptr i8, ptr %next.gep, i64 32
  %i.ap = getelementptr i8, ptr %next.gep, i64 64
  %i.aq = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  store <4 x i64> %wide.load44, ptr %i.ao, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  store <4 x i64> %wide.load45, ptr %i.ap, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  store <4 x i64> %wide.load46, ptr %i.aq, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  %i.ar = getelementptr i8, ptr %next.gep43, i64 32
  %i.as = getelementptr i8, ptr %next.gep43, i64 64
  %i.at = getelementptr i8, ptr %next.gep43, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep43, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  store <4 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  store <4 x ptr> splat (ptr null), ptr %i.as, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  store <4 x ptr> splat (ptr null), ptr %i.at, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !160

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.ad, 4611686018427387900   ; 3 uses
  %i.av = shl i64 %n.vec49, 3                     ; 2 uses
  %i.aw = getelementptr i8, ptr %i.x, i64 %i.av   ; 2 uses
  %i.ax = getelementptr i8, ptr %3, i64 %i.av
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 2 uses
  %i.ay = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.x, i64 %i.ay
  %next.gep52 = getelementptr i8, ptr %3, i64 %i.ay ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %wide.load53 = load <4 x i64>, ptr %next.gep52, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  store <4 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !93, !alias.scope !197, !noalias !194
  store <4 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !93, !alias.scope !194, !noalias !189
  %index.next54 = add nuw i64 %index50, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next54, %n.vec49
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %i.ad, %n.vec49
  br i1 %cmp.n55, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.x, %iter.check ], [ %i.x, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %3, %iter.check ], [ %3, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !93, !alias.scope !192, !noalias !189
  store i64 %i.ba, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !93, !alias.scope !189, !noalias !192
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !93, !alias.scope !192, !noalias !189
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !201

_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc9 ], [ %i.aw, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %3, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %3) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !92
  store ptr %i.bd, ptr %i.e, align 8, !tbaa !89
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v ; 2 uses
  store ptr %i.be, ptr %i.f, align 8, !tbaa !202
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i
  %4 = phi ptr [ %3, %bb.d ], [ %i.x, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  %i.bf = phi ptr [ %i.g, %bb.d ], [ %i.be, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  %i.bg = phi ptr [ %i.m, %bb.d ], [ %i.bd, %_ZNSt6vectorISt10unique_ptrIN4geos4geom5PointESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i ]
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.016.022) #20 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.h:                                             ; preds = %bb.b
  %i.bi = landingpad { ptr, i32 }
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
  %.not.i10 = icmp eq ptr %i.k, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit12, label %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i11

_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i11: ; preds = %bb.i
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(82) %i.k) #15, !inline_history !203
  br label %_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN4geos4geom5PointESt14default_deleteIS2_EED2Ev.exit12: ; preds = %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i11, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %lpad.phi, %bb.i ], [ %lpad.phi, %_ZNKSt14default_deleteIN4geos4geom5PointEEclEPS2_.exit.i11 ]
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
end_hunk_0
