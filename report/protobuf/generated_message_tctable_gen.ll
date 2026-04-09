inline.NumInlined: 1028
inline.NumDeleted: 519
begin_hunk_0_@_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !49     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !197
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !198

_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE17_M_default_appendEm:bb.a
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 576460752303423487) ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #18 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.aa, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i30
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31, %bb.g
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i31 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !197
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !198

_ZSt27__uninitialized_default_n_aIPN6google8protobuf8internal17TailCallTableInfo8AuxEntryEmS4_ET_S6_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo8AuxEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_assign_auxIPS4_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !199

_ZSt22__uninitialized_copy_aIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_S4_ET0_T_S7_S6_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.z, %_ZSt4copyIPN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoES5_ET0_T_S7_S6_.exit17 ], [ %i.ab, %.lr.ph.i.i.i.i ]
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.smax.v4i32
!195 = !{!196}
!196 = distinct !{!196, !194, !"_ZSt19__relocate_object_aIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!197 = !{i64 0, i64 4, !75, i64 8, i64 8, !38}
!198 = distinct !{!198, !36}
!199 = distinct !{!199, !36}
end_hunk_4
