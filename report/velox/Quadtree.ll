inline.NumInlined: 97
inline.NumDeleted: 73
begin_hunk_0_@_ZN4geos5index8quadtree8Quadtree6insertEPKNS_4geom8EnvelopeEPv:bb.a
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEEvDpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 12 uses
  %i.aw = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4geos5index8quadtree8Quadtree6insertEPKNS_4geom8EnvelopeEPv:bb.a
  %.not.i.i.i = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #12 ; 12 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store ptr %i.aa, ptr %i.bh, align 8, !tbaa !30
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.av, %i.ar
end_hunk_1
begin_hunk_2_@_ZN4geos5index8quadtree8Quadtree6insertEPKNS_4geom8EnvelopeEPv:bb.a

.lr.ph.i.i.i.i.i.i.preheader.a:                   ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.bi = add i64 %i.aw, -8
  %i.bj = sub i64 %i.bi, %i.ax                    ; 3 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader.a
end_hunk_2
begin_hunk_3_@_ZN4geos5index8quadtree8Quadtree6insertEPKNS_4geom8EnvelopeEPv:bb.a
  %bound0 = icmp ult ptr %i.bg, %scevgep15
  %bound1 = icmp ult ptr %i.av, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check16 = icmp ult i64 %i.bj, 120
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bl, 12
  %n.vec = and i64 %i.bl, 4611686018427387888     ; 5 uses
  %i.bq = shl i64 %n.vec, 3
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq  ; 2 uses
  %i.bs = shl i64 %n.vec, 3
end_hunk_3
begin_hunk_4_@_ZN4geos5index8quadtree8Quadtree6insertEPKNS_4geom8EnvelopeEPv:bb.a
  store <4 x ptr> zeroinitializer, ptr %i.cc, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec24 = and i64 %i.bl, 4611686018427387900   ; 4 uses
  %3 = shl i64 %n.vec24, 3
  %4 = getelementptr i8, ptr %i.bg, i64 %3        ; 2 uses
  %5 = shl i64 %n.vec24, 3
  %6 = getelementptr i8, ptr %i.av, i64 %5
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index25 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %7 = shl i64 %index25, 3
  %next.gep26 = getelementptr i8, ptr %i.bg, i64 %7
  %8 = shl i64 %index25, 3
  %next.gep27 = getelementptr i8, ptr %i.av, i64 %8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %wide.load28 = load <4 x i64>, ptr %next.gep27, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  store <4 x i64> %wide.load28, ptr %next.gep26, align 8, !tbaa !30, !alias.scope !41, !noalias !38
  store <4 x ptr> zeroinitializer, ptr %next.gep27, align 8, !tbaa !30, !alias.scope !38, !noalias !33
  %index.next29 = add nuw i64 %index25, 4         ; 2 uses
  %9 = icmp eq i64 %index.next29, %n.vec24
  br i1 %9, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !48

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %i.bl, %n.vec24
  br i1 %cmp.n.a, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.preheader22:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.preheader.a ], [ %i.bg, %vector.memcheck ], [ %i.br, %vec.epilog.iter.check ], [ %4, %middle.block.a ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.preheader.a ], [ %i.av, %vector.memcheck ], [ %i.bt, %vec.epilog.iter.check ], [ %6, %middle.block.a ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZN4geos5index8quadtree8Quadtree6insertEPKNS_4geom8EnvelopeEPv:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.ar
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !49

_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %middle.block.a, %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZNKSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %4, %middle.block.a ], [ %i.br, %middle.block ], [ %i.cg, %.lr.ph.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.i
end_hunk_5
begin_hunk_6_@_ZNK4geos5index8quadtree8NodeBase8toStringB5cxx11Ev
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index8quadtree8QuadtreeD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree8QuadtreeE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4geos5index8quadtree8NodeBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4geos5index8quadtree8QuadtreeD2Ev:bb.a
_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !32
end_hunk_7
begin_hunk_8_@_ZN4geos5index8quadtree8QuadtreeD2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index8quadtree8QuadtreeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4geos5index8quadtree8QuadtreeE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4geos5index8quadtree8NodeBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #15, !inline_history !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_8
begin_hunk_9_@_ZN4geos5index8quadtree8QuadtreeD0Ev:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #14, !inline_history !53
  br label %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4geos4geom8EnvelopeEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !32
end_hunk_9
begin_hunk_10_@_ZN4geos5index8quadtree8QuadtreeD0Ev:bb.a
  br i1 %.not.i.i1.i.i, label %_ZN4geos5index8quadtree8QuadtreeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #14, !inline_history !53
  br label %_ZN4geos5index8quadtree8QuadtreeD2Ev.exit

_ZN4geos5index8quadtree8QuadtreeD2Ev.exit:        ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4geos4geom8EnvelopeESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i.i, %bb.b
end_hunk_10
begin_hunk_11_@llvm.assume
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4, i32 12}
!48 = distinct !{!48, !44, !45, !46}
!49 = distinct !{!49, !44, !45}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !6, i64 0}
!52 = distinct !{!52, !44}
!53 = !{ptr @_ZN4geos5index8quadtree8QuadtreeD2Ev}
end_hunk_11
