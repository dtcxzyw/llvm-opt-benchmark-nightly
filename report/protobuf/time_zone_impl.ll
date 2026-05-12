inline.NumInlined: 368
inline.NumDeleted: 243
begin_hunk_0_@_ZNSt11_Deque_baseIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE17_M_initialize_mapEm:_ZNSt11_Deque_baseIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE15_M_allocate_mapEm.exit
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !55
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !56
  %2 = load i64, ptr %i.d, align 8, !tbaa !55
  %i.g = sub i64 %2, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE16_M_push_back_auxIJRKS7_EEEvDpOT_:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #15 ; 4 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.am, align 8, !tbaa !57
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.ao = load ptr, ptr %1, align 8, !tbaa !8
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !8
  store ptr %i.am, ptr %i.c, align 8, !tbaa !60
  store ptr %2, ptr %i.o, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !62
  store ptr %2, ptr %i.a, align 8, !tbaa !45
  ret void
}

end_hunk_2
begin_hunk_3_@_ZSt20__throw_length_errorPKc
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k
end_hunk_3
begin_hunk_4_@_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE17_M_reallocate_mapEmb:bb.a
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !83     ; 3 uses
  %4 = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = ptrtoint ptr %i.aw to i64
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = sub i64 %5, %i.ax                       ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !84

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %3, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplES9_ET0_T_SB_SA_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE15_M_allocate_mapEm.exit
end_hunk_4
begin_hunk_5_@_ZNSt5dequeIPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplESaIS7_EE17_M_reallocate_mapEmb:bb.a
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplES9_ET0_T_SB_SA_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %3, align 8, !tbaa !57
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !57
  br label %_ZSt4copyIPPPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplES9_ET0_T_SB_SA_.exit24

_ZSt4copyIPPPKN4absl12lts_2025051213time_internal4cctz9time_zone4ImplES9_ET0_T_SB_SA_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !56
  %6 = load i64, ptr %i.k, align 8, !tbaa !55
  %i.bd = shl i64 %6, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #16
  store ptr %i.aq, ptr %0, align 8, !tbaa !56
  store i64 %i.am, ptr %i.k, align 8, !tbaa !55
end_hunk_5
