inline.NumInlined: 1682
inline.NumDeleted: 724
begin_hunk_0_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 11 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %38 = alloca %"class.std::shared_ptr.58", align 8 ; 15 uses
  %39 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = tail call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN16OpenColorIO_v2_512GenericCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12_GLOBAL__N_115FileCacheResultEEEixERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %2) #32 ; 2 uses
  %.val58 = load ptr, ptr %i.g, align 8, !tbaa !183 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val59 = load ptr, ptr %i.h, align 8, !tbaa !13 ; 11 uses
  store ptr %.val58, ptr %38, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val59, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val59, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.d
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.e
  store ptr %.val59, ptr %i.i, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit: ; preds = %bb.c, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %.not170 = icmp eq ptr %.val58, null
  br i1 %.not170, label %bb.f, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit89

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 1, ptr %i.p, align 8, !tbaa !17, !noalias !186
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 1, ptr %i.q, align 4, !tbaa !19, !noalias !186
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.o, align 8, !tbaa !14, !noalias !186
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i8 0, i64 104, i1 false), !noalias !186
  store ptr %i.t, ptr %i.s, align 8, !tbaa !34, !noalias !186
  store ptr %i.r, ptr %38, align 8, !tbaa !189
  store ptr %i.o, ptr %i.i, align 8, !tbaa !13
  %.not.i.i.i.i76 = icmp eq ptr %.val59, null
  br i1 %.not.i.i.i.i76, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h
end_hunk_4
begin_hunk_5_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a
  %i.z = load ptr, ptr %.val59, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %.val59) #32, !inline_history !190
  %i.ac = load ptr, ptr %.val59, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.val59) #32, !inline_history !190
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exitthread-pre-split

bb.j:                                             ; preds = %bb.h
end_hunk_5
begin_hunk_6_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #32, !inline_history !191
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #32, !inline_history !191
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87

bb.t:                                             ; preds = %bb.r
end_hunk_6
begin_hunk_7_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bm, i8 0, i64 104, i1 false), !noalias !192
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !34, !noalias !192
  store ptr %i.bm, ptr %38, align 8, !tbaa !189
  %i.bp = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.bj, ptr %i.bp, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit89
end_hunk_7
begin_hunk_8_@_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE:bb.a
  br label %bb.ik

_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit89: ; preds = %bb.aa, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit
  %.val74 = phi ptr [ %.val, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bm, %bb.aa ], [ %.val58, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEEaSERKS3_.exit ], [ %.val74.pre, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i87 ] ; 10 uses
  %i.br = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZN16OpenColorIO_v2_511g_fileCacheB5cxx11E, i64 16)) #32 ; 0 uses
  %i.bs = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.val74) #32 ; 2 uses
  %.not.i.i102 = icmp eq i32 %i.bs, 0
end_hunk_8
begin_hunk_9_@llvm.smin.i64
!183 = !{!184, !185, i64 0}
!184 = !{!"_ZTSSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EE", !185, i64 0, !11, i64 8}
!185 = !{!"p1 _ZTSN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultE", !10, i64 0}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!188 = distinct !{!188, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!189 = !{!185, !185, i64 0}
!190 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!191 = distinct !{null, null, null, null}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!194 = distinct !{!194, !"_ZSt11make_sharedIN16OpenColorIO_v2_512_GLOBAL__N_115FileCacheResultEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
end_hunk_9
