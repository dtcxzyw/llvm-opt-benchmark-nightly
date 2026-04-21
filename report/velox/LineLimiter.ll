inline.NumInlined: 241
inline.NumDeleted: 146
begin_hunk_0_@_ZN4geos9operation9overlayng11LineLimiter13finishSectionEv:bb.a
  br label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEEvDpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !27 ; 10 uses
  %i.bv = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 3 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4geos9operation9overlayng11LineLimiter13finishSectionEv:bb.a
  %.not.i.i.i9 = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i9)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #14 ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx
  store ptr %i.bm, ptr %i.cg, align 8, !tbaa !29
  %.not10.i.i.i.i.i.i10 = icmp eq ptr %i.bu, %i.bq
end_hunk_1
begin_hunk_2_@_ZN4geos9operation9overlayng11LineLimiter13finishSectionEv:bb.a

.lr.ph.i.i.i.i.i.i11.preheader.a:                 ; preds = %_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.ch = add i64 %i.bv, -8
  %i.ci = sub i64 %i.ch, %i.bw                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i11.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i11.preheader.a
end_hunk_2
begin_hunk_3_@_ZN4geos9operation9overlayng11LineLimiter13finishSectionEv:bb.a
  %bound0 = icmp ult ptr %i.cf, %scevgep70
  %bound1 = icmp ult ptr %i.bu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i11.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ck, 4611686018427387888     ; 4 uses
  %i.cp = shl i64 %n.vec, 3
  %i.cq = getelementptr i8, ptr %i.cf, i64 %i.cp  ; 2 uses
  %i.cr = shl i64 %n.vec, 3
end_hunk_3
begin_hunk_4_@_ZN4geos9operation9overlayng11LineLimiter13finishSectionEv:bb.a
  store <4 x ptr> zeroinitializer, ptr %i.db, align 8, !tbaa !29, !alias.scope !70, !noalias !65
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block.a, label %vector.body, !llvm.loop !75

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n.a, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i11.preheader77

.lr.ph.i.i.i.i.i.i11.preheader77:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i11.preheader.a, %middle.block.a
  %.012.i.i.i.i.i.i12.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.i.i.i11.preheader.a ], [ %i.cq, %middle.block.a ]
  %.0911.i.i.i.i.i.i13.ph = phi ptr [ %i.bu, %vector.memcheck ], [ %i.bu, %.lr.ph.i.i.i.i.i.i11.preheader.a ], [ %i.cs, %middle.block.a ]
  br label %.lr.ph.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i11:                             ; preds = %.lr.ph.i.i.i.i.i.i11.preheader77, %.lr.ph.i.i.i.i.i.i11
end_hunk_4
begin_hunk_5_@_ZN4geos9operation9overlayng11LineLimiter13finishSectionEv:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i13, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i12, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i14 = icmp eq ptr %i.de, %i.bq
  br i1 %.not.i.i.i.i.i.i14, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i11, !llvm.loop !78

_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i11, %middle.block.a, %_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i15 = phi ptr [ %i.cf, %_ZNKSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cq, %middle.block.a ], [ %i.df, %.lr.ph.i.i.i.i.i.i11 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i15, i64 8
  %.not.i23.i.i16 = icmp eq ptr %i.bu, null
  br i1 %.not.i23.i.i16, label %_ZNSt6vectorISt10unique_ptrIN4geos4geom23CoordinateArraySequenceESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.u
end_hunk_5
begin_hunk_6_@_ZN4geos9operation9overlayng11LineLimiter12startSectionEv:bb.a
.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !49, !alias.scope !79
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i1 = icmp eq ptr %i.z, %i.h
end_hunk_6
begin_hunk_7_@llvm.memset.p0.i64
!75 = distinct !{!75, !35, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !35, !76}
!79 = !{!80, !82}
!80 = distinct !{!80, !81, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!81 = distinct !{!81, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
!82 = distinct !{!82, !81, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
end_hunk_7
