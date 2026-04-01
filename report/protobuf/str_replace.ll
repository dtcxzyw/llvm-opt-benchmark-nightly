begin_hunk_0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.138
  %i.w = load i8, ptr %.sroa.2.0.copyload, align 1, !tbaa !17
  %i.x = sext i8 %i.w to i32
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.j, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.ae, %bb.j ]
  %.02132.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.ac, %bb.j ]
  %reass.sub = sub i64 %.033.i.i, %.sroa.0.0.copyload
  %i.y = add i64 %reass.sub, 1
  %7 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i, i32 noundef %i.x, i64 noundef %i.y) #13 ; 4 uses
  %.not26.i.i.a = icmp eq ptr %7, null
  br i1 %.not26.i.i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %7, ptr nonnull %.sroa.2.0.copyload, i64 %.sroa.0.0.copyload)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %bb.i, label %bb.j
end_hunk_0
begin_hunk_1
  %.not25.i.i = icmp ult i64 %i.ae, %.sroa.0.0.copyload
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, !llvm.loop !18

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %bb.j, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.g, %bb.h, %bb.f
  store i64 -1, ptr %i.j, align 8, !tbaa !10
  %.pre58.a = load ptr, ptr %i.a, align 8, !tbaa !20
  br label %bb.k
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph70.split

.lr.ph70.split:                                   ; preds = %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i, %.critedge
  %i.o = phi ptr [ %6, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 15 uses
  %.02168 = phi ptr [ %i.bt, %.critedge ], [ %i.i, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 6 uses
  %i.p = phi ptr [ %8, %.critedge ], [ %i.h, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 8 uses
  %i.q = phi ptr [ %7, %.critedge ], [ %i.g, %_ZNSt12_Vector_baseIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE11_M_allocateEm.exit.i ] ; 15 uses
  %.sroa.0.0.copyload45 = load i64, ptr %.02168, align 8, !tbaa !15 ; 6 uses
  %.sroa.8.0..021.sroa_idx = getelementptr inbounds nuw i8, ptr %.02168, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..021.sroa_idx, align 8, !tbaa !16 ; 4 uses
end_hunk_2
begin_hunk_3
.lr.ph.i.i:                                       ; preds = %.lr.ph70.split
  %i.s = load i8, ptr %.sroa.8.0.copyload, align 1, !tbaa !17
  %i.t = sext i8 %i.s to i32
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.c, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.fr, %.lr.ph.i.i ], [ %i.y, %bb.c ]
  %.02132.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.w, %bb.c ]
  %reass.sub = sub i64 %.033.i.i, %.sroa.0.0.copyload45
  %i.u = add i64 %reass.sub, 1
  %5 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i, i32 noundef %i.t, i64 noundef %i.u) #13 ; 4 uses
  %.not26.i.i.a = icmp eq ptr %5, null
  br i1 %.not26.i.i.a, label %.critedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %5, ptr nonnull %.sroa.8.0.copyload, i64 %.sroa.0.0.copyload45)
  %i.v = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.v, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.c
end_hunk_3
begin_hunk_4
          cleanup
  br label %bb.j

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.i, %.lr.ph, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, %.lr.ph70.split
  %6 = phi ptr [ %i.ay, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.o, %.lr.ph70.split ], [ %i.o, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ay, %bb.i ], [ %i.ay, %.lr.ph ], [ %i.o, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ], [ %i.o, %bb.c ]
  %7 = phi ptr [ %i.az, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.q, %.lr.ph70.split ], [ %i.q, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.az, %bb.i ], [ %i.az, %.lr.ph ], [ %i.q, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ], [ %i.q, %bb.c ] ; 2 uses
  %8 = phi ptr [ %i.ba, %_ZNSt6vectorIN4absl12lts_2025051216strings_internal18ViableSubstitutionESaIS3_EE12emplace_backIJRSt17basic_string_viewIcSt11char_traitsIcEERKSA_RmEEERS3_DpOT_.exit ], [ %i.p, %.lr.ph70.split ], [ %i.p, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit ], [ %i.ba, %bb.i ], [ %i.ba, %.lr.ph ], [ %i.p, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ], [ %i.p, %bb.c ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02168, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.j
  br i1 %.not, label %._crit_edge, label %.lr.ph70.split
end_hunk_4
