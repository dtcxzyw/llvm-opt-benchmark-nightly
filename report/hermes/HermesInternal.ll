inline.NumInlined: 960
inline.NumDeleted: 496
begin_hunk_0_@_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !410  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !410
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18 ; 4 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.am, align 8, !tbaa !417
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !358
  %i.ao = load ptr, ptr %1, align 8, !tbaa !356
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !356
  store ptr %i.am, ptr %i.c, align 8, !tbaa !410
  store ptr %2, ptr %i.o, align 8, !tbaa !412
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !413
  store ptr %2, ptr %i.a, align 8, !tbaa !358
  ret void
}

end_hunk_1
begin_hunk_2_@_ZSt20__throw_length_errorPKc
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !416  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !414  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k
end_hunk_2
begin_hunk_3_@_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE17_M_reallocate_mapEmb:bb.a
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !418    ; 3 uses
  %4 = load ptr, ptr %i.a, align 8, !tbaa !416
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = ptrtoint ptr %i.aw to i64
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = sub i64 %5, %i.ax                       ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !290

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %3, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPPN6hermes2vm8CallableES5_ET0_T_S7_S6_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIPN6hermes2vm8CallableESaIS3_EE15_M_allocate_mapEm.exit
end_hunk_3
begin_hunk_4_@_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE17_M_reallocate_mapEmb:bb.a
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPPN6hermes2vm8CallableES5_ET0_T_S7_S6_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %3, align 8, !tbaa !417
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !417
  br label %_ZSt4copyIPPPN6hermes2vm8CallableES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPPN6hermes2vm8CallableES5_ET0_T_S7_S6_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !415
  %6 = load i64, ptr %i.k, align 8, !tbaa !414
  %i.bd = shl i64 %6, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #17
  store ptr %i.aq, ptr %0, align 8, !tbaa !415
  store i64 %i.am, ptr %i.k, align 8, !tbaa !414
end_hunk_4
