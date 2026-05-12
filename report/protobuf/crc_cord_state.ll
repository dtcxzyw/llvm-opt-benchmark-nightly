inline.NumInlined: 516
inline.NumDeleted: 160
begin_hunk_0_@_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_initialize_mapEm:_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE15_M_allocate_mapEm.exit
  %i.a = lshr i64 %1, 5                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !30
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #15 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %2 = load i64, ptr %i.d, align 8, !tbaa !30
  %i.g = sub i64 %2, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
end_hunk_0
begin_hunk_1_@_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE24_M_new_elements_at_frontEm:bb.a
  br i1 %.not21, label %._crit_edge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE23_M_reserve_map_at_frontEm.exit.thread, %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE23_M_reserve_map_at_frontEm.exit
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.a, %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit
  %.01422 = phi i64 [ %i.an, %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit ], [ 1, %.lr.ph.a ] ; 5 uses
  %i.ak = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #15
          to label %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit unwind label %bb.e

_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit: ; preds = %bb.d
  %2 = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.al = sub nsw i64 0, %.01422
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !27
end_hunk_1
begin_hunk_2_@_ZSt20__throw_length_errorPKc
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !30   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k
end_hunk_2
begin_hunk_3_@_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_reallocate_mapEmb:bb.a
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !25     ; 3 uses
  %4 = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = ptrtoint ptr %i.aw to i64
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = sub i64 %5, %i.ax                       ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.m, label %bb.n, !prof !143

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %3, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcES6_ET0_T_S8_S7_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE15_M_allocate_mapEm.exit
end_hunk_3
begin_hunk_4_@_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_reallocate_mapEmb:bb.a
  br i1 %i.ba, label %bb.o, label %_ZSt4copyIPPN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcES6_ET0_T_S8_S7_.exit24

bb.o:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %3, align 8, !tbaa !27
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !27
  br label %_ZSt4copyIPPN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcES6_ET0_T_S8_S7_.exit24

_ZSt4copyIPPN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcES6_ET0_T_S8_S7_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bc = load ptr, ptr %0, align 8, !tbaa !19
  %6 = load i64, ptr %i.k, align 8, !tbaa !30
  %i.bd = shl i64 %6, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #16
  store ptr %i.aq, ptr %0, align 8, !tbaa !19
  store i64 %i.am, ptr %i.k, align 8, !tbaa !30
end_hunk_4
begin_hunk_5_@_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE23_M_new_elements_at_backEm:bb.a

_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %.not22 = icmp eq i64 %i.ae, 0
  br i1 %.not22, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit, %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit
  %.01423 = phi i64 [ %i.ao, %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit ], [ 1, %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit ] ; 5 uses
  %i.am = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #15
          to label %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit unwind label %bb.f

_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit: ; preds = %bb.e
  %2 = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.01423
  store ptr %i.am, ptr %i.an, align 8, !tbaa !27
  %i.ao = add nuw nsw i64 %.01423, 1
end_hunk_5
begin_hunk_6_@_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_push_back_auxIJiNS1_8crc32c_tEEEEvDpOT_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_push_back_auxIJiNS1_8crc32c_tEEEEvDpOT_:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %3 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #15 ; 4 uses
  %4 = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %3, ptr %i.am, align 8, !tbaa !27
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.ao = load i32, ptr %1, align 4, !tbaa !3
  %i.ap = sext i32 %i.ao to i64
end_hunk_7
begin_hunk_8_@_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_push_back_auxIJiNS1_8crc32c_tEEEEvDpOT_:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.aq, align 8, !tbaa !3
  store ptr %i.am, ptr %i.c, align 8, !tbaa !41
  store ptr %3, ptr %i.o, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !62
  store ptr %3, ptr %i.a, align 8, !tbaa !70
  ret void
}

end_hunk_8
