inline.NumInlined: 1411
inline.NumDeleted: 553
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.ax = and i16 %.0.val1, 16
  %i.ay = icmp ne i16 %i.ax, 0                    ; 6 uses
  %.not62 = xor i1 %i.av, %i.ay
  %or.cond71.not = or i1 %.not, %.not62
  br i1 %or.cond71.not, label %bb.j, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit142
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.az = select i1 %i.ay, i64 9, i64 5
  %i.ba = select i1 %i.ay, ptr @.str.32, ptr @.str.31
  store ptr @.str.27, ptr %11, align 8, !tbaa !14, !alias.scope !333
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_:bb.a
  store i64 15, ptr %i.be, align 8, !tbaa !12, !alias.scope !333
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %i.az, ptr %i.bf, align 8, !tbaa !13, !alias.scope !333
  %16 = select i1 %i.ay, i64 24, i64 20
  store ptr %11, ptr %10, align 8, !tbaa !14, !alias.scope !338
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 2, ptr %i.bg, align 8, !tbaa !15, !alias.scope !338
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_:bb.a
  store i64 23, ptr %i.bk, align 8, !tbaa !13, !alias.scope !338
  %i.bl = select i1 %i.av, i64 5, i64 9           ; 2 uses
  %i.bm = select i1 %i.av, ptr @.str.31, ptr @.str.32
  %17 = select i1 %i.ay, i64 47, i64 43           ; 2 uses
  store ptr %10, ptr %9, align 8, !tbaa !14, !alias.scope !343
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 2, ptr %i.bn, align 8, !tbaa !15, !alias.scope !343
end_hunk_3
