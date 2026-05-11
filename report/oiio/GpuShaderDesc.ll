inline.NumInlined: 694
inline.NumDeleted: 207
begin_hunk_0_@_ZNK16OpenColorIO_v2_516GpuShaderCreator18getDynamicPropertyENS_19DynamicPropertyTypeE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %.not1415 = icmp eq ptr %i.d, %i.f
  br i1 %.not1415, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_516GpuShaderCreator18getDynamicPropertyENS_19DynamicPropertyTypeE:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.010.016 = phi ptr [ %i.d, %.lr.ph ], [ %i.ah, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.h = load ptr, ptr %.sroa.010.016, align 8, !tbaa !60 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 3 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !45
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_516GpuShaderCreator18getDynamicPropertyENS_19DynamicPropertyTypeE:bb.a

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %3 = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !7
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %.not = icmp eq i32 %i.r, %2
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit
  %4 = load ptr, ptr %i.g, align 8, !tbaa !45     ; 8 uses
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_516GpuShaderCreator18getDynamicPropertyENS_19DynamicPropertyTypeE:bb.a

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.s, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !50
  %i.x = load ptr, ptr %4, align 8, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %4) #25, !inline_history !65
  %i.aa = load ptr, ptr %4, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %4) #25, !inline_history !65
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_516GpuShaderCreator18getDynamicPropertyENS_19DynamicPropertyTypeE:bb.a
  br i1 %i.ag, label %bb.l, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !52

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 16 ; 2 uses
  %.not14 = icmp eq ptr %i.ah, %i.f
  br i1 %.not14, label %._crit_edge.a, label %bb.b

._crit_edge.a:                                    ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_515DynamicPropertyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull @.str.8)
          to label %bb.m unwind label %bb.n
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_516GpuShaderCreator18getDynamicPropertyENS_19DynamicPropertyTypeE:bb.a
  resume { ptr, i32 } %i.aj

.critedge:                                        ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2ERKS2_.exit
  ret void
}

end_hunk_5
