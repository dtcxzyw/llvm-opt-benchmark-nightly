inline.NumInlined: 2685
inline.NumDeleted: 1109
begin_hunk_0_@_ZNK6google8protobuf8compiler6python12PyiGenerator24PrintImportForDescriptorERKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS8_18container_internal10StringHashENSG_8StringEqESaISF_EEEPb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.h = load ptr, ptr %6, align 8, !tbaa !41     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38   ; 10 uses
  store i64 %i.j, ptr %7, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.h, ptr %i.k, align 8
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler6python12PyiGenerator24PrintImportForDescriptorERKNS0_14FileDescriptorEPN4absl12lts_2025051213flat_hash_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS8_18container_internal10StringHashENSG_8StringEqESaISF_EEEPb:bb.a

.preheader.preheader:                             ; preds = %.preheader.preheader.preheader, %.preheader
  %lsr.iv = phi i64 [ %i.l, %.preheader.preheader.preheader ], [ %lsr.iv.next, %.preheader ] ; 3 uses
  %.1.i132 = phi i64 [ %22, %.preheader ], [ %i.j, %.preheader.preheader.preheader ]
  %22 = add i64 %.1.i132, -1                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %lsr.iv
  %i.m = load i8, ptr %scevgep, align 1, !tbaa !33
  %i.n = icmp eq i8 %i.m, 46
  br i1 %i.n, label %.preheader.preheader..loopexit.loopexit_crit_edge, label %.preheader, !llvm.loop !94

.loopexit.loopexitsplit:                          ; preds = %.preheader
  %.09.i.ph.ph = phi i64 [ -1, %.preheader ]
  br label %.loopexit.loopexit

.preheader.preheader..loopexit.loopexit_crit_edge: ; preds = %.preheader.preheader
  %lsr.iv.lcssa = phi i64 [ %lsr.iv, %.preheader.preheader ]
  %split = phi i64 [ %22, %.preheader.preheader ] ; 0 uses
  br label %.loopexit.loopexit, !llvm.loop !94

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %.preheader.preheader..loopexit.loopexit_crit_edge
  %.09.i.ph = phi i64 [ %lsr.iv.lcssa, %.preheader.preheader..loopexit.loopexit_crit_edge ], [ %.09.i.ph.ph, %.loopexit.loopexitsplit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8compiler6python12PyiGenerator8GenerateEPKNS0_14FileDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSC_:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.060161 = phi i1 [ %.262.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ false, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0125.0160 = phi ptr [ %i.cb, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.m, %.lr.ph.preheader ] ; 9 uses
  %i.r = getelementptr i8, ptr %.sroa.0125.0160, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38   ; 5 uses
  %i.t = icmp eq i64 %i.s, 13
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf8compiler6python12PyiGenerator8GenerateEPKNS0_14FileDescriptorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSC_:bb.a
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread134

_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread225._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread134_crit_edge: ; preds = %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread225
  %.sroa.0125.0160.lcssa251 = phi ptr [ %.sroa.0125.0160, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread225 ]
  %.sroa.0125.0160.lcssa251.a = phi ptr [ %.sroa.0125.0160, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread225 ] ; 0 uses
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread134

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread134: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread134split, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread225._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread134_crit_edge
  %.sroa.0125.0160.lcssa = phi ptr [ %.sroa.0125.0160.lcssa251, %_ZN4absl12lts_202505128EndsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread225._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread134_crit_edge ], [ %.sroa.0125.0160.lcssa250, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread134split ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0125.0160.lcssa, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
end_hunk_3
