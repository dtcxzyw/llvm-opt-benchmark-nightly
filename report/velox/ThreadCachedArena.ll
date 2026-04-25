inline.NumInlined: 812
inline.NumDeleted: 472
begin_hunk_0_@_ZN5folly17ThreadCachedArenaC2Emm:bb.a
  store i32 -1, ptr %i.b, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.c, align 8, !tbaa !41
  %3 = getelementptr i8, ptr %0, <4 x i64> <i64 32, i64 32, i64 32, i64 56>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x ptr> %3, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.e, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  store i64 16, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.i, align 8, !tbaa !40
  ret void
end_hunk_0
begin_hunk_1_@_ZN5folly5ArenaINS_12SysAllocatorIcEEEC2ERKS2_mmm:bb.a
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store i64 %2, ptr %0, align 8, !tbaa !41
  %6 = getelementptr i8, ptr %0, <4 x i64> <i64 8, i64 8, i64 8, i64 32>
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store <4 x ptr> %6, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store i64 %3, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %4, ptr %i.f, align 8, !tbaa !44
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %4)
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.b
end_hunk_1
begin_hunk_2_@_ZN5folly5ArenaINS_12SysAllocatorIcEEEC2ERKS2_mmm:bb.a
bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !49
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN5folly5ArenaINS_12SysAllocatorIcEEEC2ERKS2_mmm:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not11.i.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i.i.i
  %.0912.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.q = load ptr, ptr %.0912.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  store ptr null, ptr %.0912.i.i.i.i, align 8, !tbaa !50
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.b
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !51

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.b, ptr %i.c, align 8, !tbaa !43
  store ptr null, ptr %i.b, align 8, !tbaa !50
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not11.i.i.i.i10 = icmp eq ptr %i.r, %i.a
  br i1 %.not11.i.i.i.i10, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i.i11

bb.f:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZN5folly5ArenaINS_12SysAllocatorIcEEEC2ERKS2_mmm:bb.a

.lr.ph.i.i.i.i11:                                 ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, %.lr.ph.i.i.i.i11
  %.0912.i.i.i.i12 = phi ptr [ %i.s, %.lr.ph.i.i.i.i11 ], [ %i.r, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.0912.i.i.i.i12, align 8, !tbaa !50 ; 2 uses
  store ptr null, ptr %.0912.i.i.i.i12, align 8, !tbaa !50
  %.not.i.i.i.i13 = icmp eq ptr %i.s, %i.a
  br i1 %.not.i.i.i.i13, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i.i11, !llvm.loop !53

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit: ; preds = %.lr.ph.i.i.i.i11, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %7, align 8, !tbaa !43
  store ptr null, ptr %i.a, align 8, !tbaa !50
  resume { ptr, i32 } %.pn
}

end_hunk_4
begin_hunk_5_@_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA19_cmETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_:bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !55
  store i8 0, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %0, ptr %i.a, align 8, !tbaa !56
  %i.d = load i64, ptr %2, align 8, !tbaa !58
end_hunk_5
begin_hunk_6_@_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA19_cmETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_:bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.h = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.b, align 8, !tbaa !49
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_6
begin_hunk_7_@_ZNSt11logic_errorC2EOS_
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8              ; 2 uses
end_hunk_7
begin_hunk_8_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !49
  store i8 %i.o, ptr %i.k, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
end_hunk_8
begin_hunk_9_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.k, ptr %0, align 8, !tbaa !46
  store i64 %.0, ptr %i.b, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
end_hunk_9
begin_hunk_10_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJA19_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j                   ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
end_hunk_10
begin_hunk_11_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJA19_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a
  br i1 %cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %0, align 1, !tbaa !49
  store i8 %i.p, ptr %i.o, align 1, !tbaa !49
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit

bb.g:                                             ; preds = %bb.e
end_hunk_11
begin_hunk_12_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJA19_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit: ; preds = %bb.d, %bb.f, %bb.g, %bb.h
  store i64 %i.h, ptr %i.d, align 8, !tbaa !55
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.r, align 1, !tbaa !49
  %i.s = load i64, ptr %1, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.t = call noundef i64 @_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i64 noundef %i.s) ; 6 uses
end_hunk_12
begin_hunk_13_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJA19_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i9: ; preds = %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S8_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESA_PSB_.exit
  %i.x = add i64 %i.u, %i.t                       ; 3 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j                   ; 2 uses
  br i1 %i.z, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i10

end_hunk_13
begin_hunk_14_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJA19_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a
  br i1 %cond.i.i.i13, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %i.a, align 16, !tbaa !49
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !49
  br label %_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit

bb.n:                                             ; preds = %bb.l
end_hunk_14
begin_hunk_15_@_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJA19_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_:bb.a

_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  store i64 %i.x, ptr %i.d, align 8, !tbaa !55
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  store i8 0, ptr %i.ag, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}
end_hunk_15
begin_hunk_16_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !46     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
end_hunk_16
begin_hunk_17_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !49
  store i8 %i.t, ptr %i.s, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
end_hunk_17
begin_hunk_18_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !49
  store i8 %i.x, ptr %i.w, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
end_hunk_18
begin_hunk_19_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !49
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
end_hunk_19
begin_hunk_20_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !46
  store i64 %.0, ptr %i.h, align 8, !tbaa !49
  ret void
}

end_hunk_20
begin_hunk_21_@_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm:bb.a
  %i.bu = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bv = lshr i16 %i.bt, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  store i8 %i.bw, ptr %0, align 1, !tbaa !49
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
end_hunk_21
begin_hunk_22_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !54, !alias.scope !1019
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_22
begin_hunk_23_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.f, ptr %5, align 8, !tbaa !46, !alias.scope !1019
  %i.m = load i64, ptr %i.g, align 8, !tbaa !49
  store i64 %i.m, ptr %i.e, align 8, !tbaa !49, !alias.scope !1019
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !55
  br label %bb.c
end_hunk_23
begin_hunk_24_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !55, !alias.scope !1019
  store ptr %i.g, ptr %i.d, align 8, !tbaa !46
  store i64 0, ptr %i.o, align 8, !tbaa !55
  store i8 0, ptr %i.g, align 8, !tbaa !49
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21, !noalias !1022
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, i64 noundef %i.q)
end_hunk_24
begin_hunk_25_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
.noexc10:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !54, !alias.scope !1022
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
end_hunk_25
begin_hunk_26_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.noexc10
  store ptr %i.t, ptr %4, align 8, !tbaa !46, !alias.scope !1022
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !49
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !49, !alias.scope !1022
  %.phi.trans.insert.i8 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i9 = load i64, ptr %.phi.trans.insert.i8, align 8, !tbaa !55
  br label %bb.e
end_hunk_26
begin_hunk_27_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !55, !alias.scope !1022
  store ptr %i.u, ptr %i.r, align 8, !tbaa !46
  store i64 0, ptr %i.ac, align 8, !tbaa !55
  store i8 0, ptr %i.u, align 8, !tbaa !49
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.s
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !49
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ai = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.e
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !49
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.am = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !49
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
end_hunk_27
begin_hunk_28_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
bb.i:                                             ; preds = %bb.e
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.s
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.i
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !49
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.h
  %.pn = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.au, %bb.i ] ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !49
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  %i.bd = load ptr, ptr %6, align 8, !tbaa !46    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !49
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
end_hunk_28
begin_hunk_29_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
end_hunk_29
begin_hunk_30_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !49
  store i8 %i.v, ptr %i.t, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
end_hunk_30
begin_hunk_31_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !49
  store i8 %i.w, ptr %i.m, align 1, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
end_hunk_31
begin_hunk_32_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !55
  %i.x = load ptr, ptr %0, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !49
  ret ptr %0
}

end_hunk_32
begin_hunk_33_@_ZN5folly5ArenaINS_12SysAllocatorIcEEED2Ev:bb.a
  store ptr %i.a, ptr %i.c, align 8, !tbaa !1107
  %i.d = call noundef i64 @_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE24unlink_after_and_disposeINS1_13node_disposerIZN5folly5ArenaINS9_12SysAllocatorIcEEE10freeBlocksEvEUlPNSD_5BlockEE_NS0_8mhtraitsISE_NS0_17slist_member_hookIJEEEXadL_ZNSE_4linkEEEEELNS0_10algo_typesE3EEEEEmPNS0_10slist_nodeIS4_EESP_T_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull dead_on_return %1) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  store ptr %i.a, ptr %i.a, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not11.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit.thread, label %.lr.ph.i.preheader.i.i

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.h, align 8, !tbaa !43
  store ptr null, ptr %i.f, align 8, !tbaa !50
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit

.lr.ph.i.preheader.i.i:                           ; preds = %bb.a
end_hunk_33
begin_hunk_34_@_ZN5folly5ArenaINS_12SysAllocatorIcEEED2Ev:bb.a

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.0912.i.i.i = phi ptr [ %i.j, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i ], [ %i.g, %.lr.ph.i.preheader.i.i ] ; 5 uses
  %i.j = load ptr, ptr %.0912.i.i.i, align 8, !tbaa !50 ; 2 uses
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1112 ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !1116
end_hunk_34
begin_hunk_35_@_ZN5folly5ArenaINS_12SysAllocatorIcEEED2Ev:bb.a
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !1117

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit: ; preds = %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE15freeLargeBlocksEvEUlPNS7_10LargeBlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit.i.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.r, align 8, !tbaa !43
  store ptr null, ptr %i.f, align 8, !tbaa !50
  %.not11.i.i.i.i1 = icmp eq ptr %.pre, %i.a
  br i1 %.not11.i.i.i.i1, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, %.lr.ph.i.i.i.i2
  %.0912.i.i.i.i3 = phi ptr [ %i.s, %.lr.ph.i.i.i.i2 ], [ %.pre, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.0912.i.i.i.i3, align 8, !tbaa !50 ; 2 uses
  store ptr null, ptr %.0912.i.i.i.i3, align 8, !tbaa !50
  %.not.i.i.i.i4 = icmp eq ptr %i.s, %i.a
  br i1 %.not.i.i.i.i4, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit, label %.lr.ph.i.i.i.i2, !llvm.loop !53

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit: ; preds = %.lr.ph.i.i.i.i2, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit.thread, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvED2Ev.exit
  store ptr %i.a, ptr %i.e, align 8, !tbaa !43
  store ptr null, ptr %i.a, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE24unlink_after_and_disposeINS1_13node_disposerIZN5folly5ArenaINS9_12SysAllocatorIcEEE10freeBlocksEvEUlPNSD_5BlockEE_NS0_8mhtraitsISE_NS0_17slist_member_hookIJEEEXadL_ZNSE_4linkEEEEELNS0_10algo_typesE3EEEEEmPNS0_10slist_nodeIS4_EESP_T_(ptr noundef %0, ptr noundef %1, ptr noundef dead_on_return %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %.not12 = icmp eq ptr %i.a, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit
  %.014 = phi i64 [ %i.w, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit ], [ 0, %bb.a ]
  %.0913 = phi ptr [ %i.b, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.0913, align 8, !tbaa !50 ; 2 uses
  store ptr null, ptr %.0913, align 8, !tbaa !50
  %i.c = load ptr, ptr %2, align 8, !tbaa !1118   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = add i64 %i.e, -1
  %i.g = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.f, i64 16) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
end_hunk_35
begin_hunk_36_@_ZN5boost9intrusive6detail23common_slist_algorithmsINS0_17slist_node_traitsIPvEEE24unlink_after_and_disposeINS1_13node_disposerIZN5folly5ArenaINS9_12SysAllocatorIcEEE10freeBlocksEvEUlPNSD_5BlockEE_NS0_8mhtraitsISE_NS0_17slist_member_hookIJEEEXadL_ZNSE_4linkEEEEELNS0_10algo_typesE3EEEEEmPNS0_10slist_nodeIS4_EESP_T_:bb.a

._crit_edge:                                      ; preds = %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.w, %_ZN5boost9intrusive6detail13node_disposerIZN5folly5ArenaINS3_12SysAllocatorIcEEE10freeBlocksEvEUlPNS7_5BlockEE_NS0_8mhtraitsIS8_NS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEELNS0_10algo_typesE3EEclEPNS0_10slist_nodeIPvEE.exit ]
  store ptr %1, ptr %0, align 8, !tbaa !50
  ret i64 %.0.lcssa

bb.h:                                             ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_.exit.i.i.i
end_hunk_36
begin_hunk_37_@_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_
define linkonce_odr void @_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = add i64 %i.b, -1
  %i.d = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.c, i64 16) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
end_hunk_37
begin_hunk_38_@_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_:bb.a
_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit: ; preds = %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i, %bb.c, %_ZN5folly10canNallocxEv.exit.i.i.i, %bb.d
  %.0.i.i.i = phi i64 [ 0, %_ZNK5folly5ArenaINS_12SysAllocatorIcEEE7roundUpEm.exit.i ], [ %i.p, %bb.d ], [ %i.j, %_ZN5folly10canNallocxEv.exit.i.i.i ], [ %i.j, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44   ; 2 uses
  %i.s = add i64 %i.r, -1
  %i.t = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.s, i64 16) ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
end_hunk_38
begin_hunk_39_@_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_:bb.a
bb.i:                                             ; preds = %_ZN5folly5ArenaINS_12SysAllocatorIcEEE18blockGoodAllocSizeEv.exit18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, %i.ai
  br i1 %i.ak, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43, !noalias !1123 ; 5 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !50 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ah
  br i1 %i.ao, label %bb.k, label %bb.l

end_hunk_39
begin_hunk_40_@_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_:bb.a
  br i1 %or.cond19.i.i, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !50
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.an, ptr %i.am, align 8, !tbaa !50
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !50
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !50
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit: ; preds = %bb.l, %bb.m, %bb.i
end_hunk_40
begin_hunk_41_@_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_:bb.a

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, %.lr.ph.i.i.i
  %.0912.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.ar, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit ] ; 2 uses
  %i.as = load ptr, ptr %.0912.i.i.i, align 8, !tbaa !50 ; 2 uses
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !50
  %.not.i.i.i19 = icmp eq ptr %i.as, %i.ai
  br i1 %.not.i.i.i19, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit, label %.lr.ph.i.i.i, !llvm.loop !53

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit: ; preds = %.lr.ph.i.i.i, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE5BlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit
  store ptr %i.ai, ptr %i.ai, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ai, ptr %i.at, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 10 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, %i.av
  br i1 %i.ax, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43, !noalias !1130 ; 5 uses
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !50 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.au
  br i1 %i.bb, label %bb.o, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i

end_hunk_41
begin_hunk_42_@_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_:bb.a
  br i1 %or.cond19.i.i24, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !50
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !50
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !50
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !50
  %.pre37 = load ptr, ptr %i.av, align 8, !tbaa !50
  br label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit: ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit.i, %bb.p, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12before_beginEv.exit
end_hunk_42
begin_hunk_43_@_ZN5folly5ArenaINS_12SysAllocatorIcEEE5mergeEOS3_:bb.a

.lr.ph.i.i.i27:                                   ; preds = %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit, %.lr.ph.i.i.i27
  %.0912.i.i.i28 = phi ptr [ %i.bf, %.lr.ph.i.i.i27 ], [ %i.be, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit ] ; 2 uses
  %i.bf = load ptr, ptr %.0912.i.i.i28, align 8, !tbaa !50 ; 2 uses
  store ptr null, ptr %.0912.i.i.i28, align 8, !tbaa !50
  %.not.i.i.i29 = icmp eq ptr %i.bf, %i.av
  br i1 %.not.i.i.i29, label %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit, label %.lr.ph.i.i.i27, !llvm.loop !51

_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE5clearEv.exit: ; preds = %.lr.ph.i.i.i27, %_ZN5boost9intrusive10slist_implINS0_8mhtraitsIN5folly5ArenaINS3_12SysAllocatorIcEEE10LargeBlockENS0_17slist_member_hookIJEEEXadL_ZNS8_4linkEEEEEmLm4EvE12splice_afterENS0_14slist_iteratorISB_Lb1EEERSC_PSE_.exit
  store ptr %i.av, ptr %i.av, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.av, ptr %i.bg, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_43
begin_hunk_44_@llvm.umin.i32
!39 = !{!12, !13, i64 8}
!40 = !{!17, !8, i64 0}
!41 = !{!21, !13, i64 0}
!42 = !{!29, !29, i64 0}
!43 = !{!26, !29, i64 8}
!44 = !{!20, !13, i64 88}
!45 = !{!20, !13, i64 80}
!46 = !{!47, !37, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !13, i64 8, !9, i64 16}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!49 = !{!9, !9, i64 0}
!50 = !{!28, !29, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = !{!48, !37, i64 0}
!55 = !{!47, !13, i64 8}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!58 = !{!13, !13, i64 0}
end_hunk_44
