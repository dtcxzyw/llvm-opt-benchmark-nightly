inline.NumInlined: 452
inline.NumDeleted: 201
begin_hunk_0_@_ZN16OpenColorIO_v2_513LookTransform6setSrcEPKc:bb.a
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull %i.a, i64 noundef %i.g) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_513LookTransform6getDstEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_513LookTransform6setDstEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = select i1 %.not, ptr @.str.3, ptr %1     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull %i.a, i64 noundef %i.g) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_513LookTransform8setLooksEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = select i1 %.not, ptr @.str.3, ptr %1     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 0, i64 noundef %i.f, ptr noundef nonnull %i.a, i64 noundef %i.g) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK16OpenColorIO_v2_513LookTransform8getLooksEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN16OpenColorIO_v2_513LookTransform27setSkipColorSpaceConversionEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.a, ptr %i.d, align 4, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK16OpenColorIO_v2_513LookTransform27getSkipColorSpaceConversionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !32, !range !40, !noundef !41
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN16OpenColorIO_v2_521LooksResultColorSpaceERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKNS_15LookParseResultE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.7", align 8 ; 8 uses
  %4 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_515LookParseResult5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN16OpenColorIO_v2_512BuildLookOpsERNS_10OpRcPtrVecERSt10shared_ptrIKNS_10ColorSpaceEEbRKNS_6ConfigERKS2_IKNS_7ContextEERKNS_15LookParseResultE(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.b = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #22
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #22
  br label %bb.o

bb.h:                                             ; preds = %bb.d, %bb.e
  %.09 = phi ptr [ %i.c, %bb.e ], [ undef, %bb.d ]
  call void @_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.h, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !19
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !52
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.l ], [ %i.u, %bb.m ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.n, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.not, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.e, %bb.g ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p
  %.1 = phi ptr [ @.str.3, %bb.p ], [ %.09, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret ptr %.1
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_515LookParseResult5emptyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_512BuildLookOpsERNS_10OpRcPtrVecERSt10shared_ptrIKNS_10ColorSpaceEEbRKNS_6ConfigERKS2_IKNS_7ContextEERKNS_15LookParseResultE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %7 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 10 uses
  %8 = alloca %"class.std::shared_ptr.7", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK16OpenColorIO_v2_515LookParseResult10getOptionsEv(ptr noundef nonnull align 8 dereferenceable(24) %5) ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.h, 24
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113RunLookTokensERNS_10OpRcPtrVecERSt10shared_ptrIKNS_10ColorSpaceEEbRKNS_6ConfigERKS3_IKNS_7ContextEERKSt6vectorINS_15LookParseResult5TokenESaISI_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.bd

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !57
  %.not74 = icmp eq ptr %i.j, %i.k
  br i1 %.not74, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.g:                                             ; preds = %.lr.ph, %bb.ad
  %i.p = phi i64 [ 0, %.lr.ph ], [ %i.cc, %bb.ad ] ; 2 uses
  %.03073 = phi i32 [ 0, %.lr.ph ], [ %i.cb, %bb.ad ] ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !49
  store ptr %i.q, ptr %8, align 8, !tbaa !49
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !13   ; 4 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not7.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.y = phi ptr [ %i.s, %bb.h ], [ %i.s, %bb.j ], [ %.pr.pre.i.i.i, %bb.k ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.z, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !19
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !58
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !58
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i9.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i9.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.ac, %bb.o ], [ %i.am, %bb.p ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.an, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !46

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.r, ptr %i.l, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit: ; preds = %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ao = load ptr, ptr %7, align 8, !tbaa !59    ; 3 uses
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !62  ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i45, label %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bh, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i ], [ %i.ao, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.as, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !19
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22, !inline_history !63
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22, !inline_history !63
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.av, %bb.u ], [ %i.bf, %bb.v ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.w, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i, !prof !46

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.s, %.lr.ph.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, %i.ap
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !64

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i.i.i
  store ptr %i.ao, ptr %i.n, align 8, !tbaa !62
  br label %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit

_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit:   ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.p
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113RunLookTokensERNS_10OpRcPtrVecERSt10shared_ptrIKNS_10ColorSpaceEEbRKNS_6ConfigERKS3_IKNS_7ContextEERKSt6vectorINS_15LookParseResult5TokenESaISI_EE(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.af unwind label %bb.x

bb.x:                                             ; preds = %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_520ExceptionMissingFileE ; 3 uses
  %i.bl = extractvalue { ptr, i32 } %i.bk, 1
  %i.bm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_520ExceptionMissingFileE) #22
  %i.bn = icmp eq i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.bo = extractvalue { ptr, i32 } %i.bk, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #22 ; 2 uses
  %.not = icmp eq i32 %.03073, 0
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.15, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.ab, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.z, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.loopexit unwind label %bb.be

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.z, %bb.y
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.16, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.p
  invoke void @_ZN16OpenColorIO_v2_515LookParseResult9serializeERSoRKSt6vectorINS0_5TokenESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %bb.ab unwind label %bb.aa

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str.17, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %bb.ab
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #22
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.bz)
          to label %bb.ac unwind label %bb.aa     ; 0 uses

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cb = add i32 %.03073, 1                      ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 24
  %i.cj = icmp ugt i64 %i.ci, %i.cc
  br i1 %i.cj, label %bb.g, label %.critedge, !llvm.loop !66

bb.ae:                                            ; preds = %bb.ac
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.af:                                            ; preds = %_ZN16OpenColorIO_v2_510OpRcPtrVec5clearEv.exit
  %i.cl = load ptr, ptr %8, align 8, !tbaa !49
  store ptr %i.cl, ptr %1, align 8, !tbaa !49
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !13  ; 4 uses
  %i.cn = load ptr, ptr %i.m, align 8, !tbaa !13  ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i.i48, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit58, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not7.i.i.i49 = icmp eq ptr %i.cm, null
  br i1 %.not7.i.i.i49, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i50 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i50, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51

bb.aj:                                            ; preds = %bb.ah
  %i.cs = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i57 = load ptr, ptr %i.m, align 8, !tbaa !13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.ct = phi ptr [ %i.cn, %bb.ag ], [ %i.cn, %bb.ai ], [ %.pr.pre.i.i.i57, %bb.aj ] ; 8 uses
  %.not8.i.i.i52 = icmp eq ptr %i.ct, null
  br i1 %.not8.i.i.i52, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.cu, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !19
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #22, !inline_history !58
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #22, !inline_history !58
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56

bb.am:                                            ; preds = %bb.ak
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i9.i.i.i53 = icmp eq i8 %i.df, 0
  br i1 %.not.i9.i.i.i53, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54

bb.ao:                                            ; preds = %bb.am
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i55 = phi i32 [ %i.cx, %bb.an ], [ %i.dh, %bb.ao ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i55, 1
  br i1 %i.di, label %bb.ap, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56, !prof !46

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54, %bb.al, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51
  store ptr %i.cm, ptr %i.m, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit58

_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit58: ; preds = %bb.af, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56
  %i.dj = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN16OpenColorIO_v2_510OpRcPtrVecpLERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %7)
          to label %bb.av unwind label %bb.aq     ; 0 uses

bb.aq:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit58
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.critedge:                                        ; preds = %bb.ad, %bb.e
  %i.dl = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.ar unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ar:                                            ; preds = %.critedge
  %i.dm = load ptr, ptr %9, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_520ExceptionMissingFileC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef %i.dm)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTIN16OpenColorIO_v2_520ExceptionMissingFileE, ptr nonnull @_ZN16OpenColorIO_v2_520ExceptionMissingFileD1Ev) #23
          to label %bb.bf unwind label %bb.at

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.critedge
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.au

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0 = phi i1 [ false, %bb.as ], [ true, %bb.ar ] ; 2 uses
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dp = load ptr, ptr %9, align 8, !tbaa !47    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.at
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !35
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.0, label %bb.au, label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %.0, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4162 = phi { ptr, i32 } [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.dl) #22
  br label %.loopexit

bb.av:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit58
  %i.du = load ptr, ptr %i.l, align 8, !tbaa !13  ; 8 uses
  %.not.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.dv, align 8, !tbaa !17
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !19
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #22, !inline_history !52
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !14
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #22, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_510OpRcPtrVecD2Ev:bb.a
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !19
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !67
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22, !inline_history !67
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !64

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_52OpEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !59
  br label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN16OpenColorIO_v2_52OpEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_52OpEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !45
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN16OpenColorIO_v2_513LookTransform24GetLooksResultColorSpaceERKSt10shared_ptrIKNS_6ConfigEERKS1_IKNS_7ContextEEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.OpenColorIO_v2_5::LookParseResult", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !35
  %.not11 = icmp eq i8 %i.b, 0
  br i1 %.not11, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !33
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !48
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %bb.k   ; 2 uses

.noexc15:                                         ; preds = %.noexc.i
  store ptr %i.f, ptr %4, align 8, !tbaa !47
  %i.g = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.g, ptr %i.c, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc15, %bb.c
  %i.h = phi ptr [ %i.f, %.noexc15 ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %2, align 1, !tbaa !35
  store i8 %i.i, ptr %i.h, align 1, !tbaa !35
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %2, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !34
  %i.l = load ptr, ptr %4, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN16OpenColorIO_v2_515LookParseResult5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.l       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %4, align 8, !tbaa !47     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.c, align 8, !tbaa !35
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.s = load ptr, ptr %0, align 8, !tbaa !69
  %i.t = invoke noundef ptr @_ZN16OpenColorIO_v2_521LooksResultColorSpaceERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKNS_15LookParseResultE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load ptr, ptr %3, align 8, !tbaa !57     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.am, %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i ], [ %i.u, %bb.h ] ; 5 uses
  %i.x = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !72 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75   ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !35
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #25
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ag = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #25
  br label %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i: ; preds = %bb.i, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.w
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.h
  %i.an = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.u, %bb.h ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i1.i.i, label %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !79
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #25
  br label %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit

_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.o

bb.k:                                             ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.l:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !47    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.c
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.l
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !35
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.k
  %.pn = phi { ptr, i32 } [ %i.at, %bb.k ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn13 = phi { ptr, i32 } [ %i.az, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  call void @_ZN16OpenColorIO_v2_515LookParseResultD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn13

bb.o:                                             ; preds = %bb.a, %bb.b, %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit
  %.09 = phi ptr [ %i.t, %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit ], [ @.str.3, %bb.b ], [ @.str.3, %bb.a ]
  ret ptr %.09
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN16OpenColorIO_v2_515LookParseResult5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_515LookParseResultD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !72 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !35
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #25
  br label %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !78

_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.t = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25
  br label %_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN16OpenColorIO_v2_515LookParseResult5TokenESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  ret void
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_512BuildLookOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKNS_13LookTransformENS_18TransformDirectionE:bb.a
  %i.ei = sub i64 %i.eg, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #25
  br label %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit

_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !13 ; 8 uses
  %.not.i.i74 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i74, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78, label %bb.bf

bb.bf:                                            ; preds = %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 4 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8 ; 2 uses
  %i.en = icmp eq i64 %i.em, 4294967297
  %i.eo = trunc i64 %i.em to i32                  ; 2 uses
  br i1 %i.en, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.el, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 0, ptr %i.ep, align 4, !tbaa !19
  %i.eq = load ptr, ptr %i.ek, align 8, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #22, !inline_history !52
  %i.et = load ptr, ptr %i.ek, align 8, !tbaa !14
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #22, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78

bb.bh:                                            ; preds = %bb.bf
  %i.ew = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i75 = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.i75, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ex = add nsw i32 %i.eo, -1
  store i32 %i.ex, ptr %i.el, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

bb.bj:                                            ; preds = %bb.bh
  %i.ey = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i77 = phi i32 [ %i.eo, %bb.bi ], [ %i.ey, %bb.bj ]
  %i.ez = icmp eq i32 %.0.i.i.i.i77, 1
  br i1 %i.ez, label %bb.bk, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78, !prof !46

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ek) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78: ; preds = %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i76, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.fa = load ptr, ptr %i.cj, align 8, !tbaa !13 ; 8 uses
  %.not.i.i79 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i79, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.fb, align 8, !tbaa !17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !19
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !14
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #22, !inline_history !52
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !14
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #22, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83

bb.bn:                                            ; preds = %bb.bl
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i80 = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i80, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

bb.bp:                                            ; preds = %bb.bn
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i82 = phi i32 [ %i.fe, %bb.bo ], [ %i.fo, %bb.bp ]
  %i.fp = icmp eq i32 %.0.i.i.i.i82, 1
  br i1 %i.fp, label %bb.bq, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83, !prof !46

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit83: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78, %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.br:                                            ; preds = %bb.an, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn50.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %i.cd, %bb.an ], [ %i.ct, %bb.av ]
  call void @_ZN16OpenColorIO_v2_515LookParseResultD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.ab
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn, %bb.br ], [ %.pn43.pn.pn, %bb.ab ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #22
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.v
  %.pn50.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn, %bb.bs ], [ %i.al, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.m
  %.pn50.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn50.pn.pn.pn.pn, %bb.bt ], [ %.pn.pn.pn, %bb.m ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn50.pn.pn.pn.pn.pn

bb.bv:                                            ; preds = %bb.u, %bb.g
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.7") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare noundef i32 @_ZN16OpenColorIO_v2_526CombineTransformDirectionsENS_18TransformDirectionES0_(i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @_ZN16OpenColorIO_v2_515LookParseResult7reverseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

declare void @_ZN16OpenColorIO_v2_518BuildColorSpaceOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_10ColorSpaceEESF_b(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK16OpenColorIO_v2_515LookParseResult10getOptionsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_113RunLookTokensERNS_10OpRcPtrVecERSt10shared_ptrIKNS_10ColorSpaceEEbRKNS_6ConfigERKS3_IKNS_7ContextEERKSt6vectorINS_15LookParseResult5TokenESaISI_EE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.40", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.OpenColorIO_v2_5::OpRcPtrVec", align 8 ; 13 uses
  %10 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %11 = alloca %"class.std::shared_ptr.46", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %13 = alloca %"class.std::shared_ptr.46", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %17 = alloca %"class.std::shared_ptr.46", align 8 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.46", align 8 ; 6 uses
  %19 = alloca %"class.std::shared_ptr.46", align 8 ; 7 uses
  %20 = alloca %"class.std::shared_ptr.7", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load ptr, ptr %5, align 8, !tbaa !90     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 17
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.fn
  %i.u = phi ptr [ %i.a, %.lr.ph ], [ %i.mz, %bb.fn ] ; 2 uses
  %i.v = phi ptr [ %i.c, %.lr.ph ], [ %i.na, %bb.fn ]
  %i.w = phi i64 [ 0, %.lr.ph ], [ %i.nc, %bb.fn ] ; 3 uses
  %.067292 = phi i32 [ 0, %.lr.ph ], [ %i.nb, %bb.fn ]
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.w ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !34
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.fn, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !47
  call void @_ZNK16OpenColorIO_v2_56Config7getLookEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ab)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !91
  %.not189 = icmp eq ptr %i.ac, null
  br i1 %.not189, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.18, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.19, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !34
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.af, i64 noundef %i.ag)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.h ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.20, i64 noundef 20)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.aj = invoke noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumLooksEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit364.invoke, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.h:                                             ; preds = %.loopexit364.invoke, %bb.i, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.i:                                             ; preds = %bb.f
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.22, i64 noundef 9)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97.preheader unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97.preheader: ; preds = %bb.i
  %i.ao = invoke noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumLooksEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %.loopexit.split-lp361

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97.preheader
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99.peel, label %.loopexit364.invoke

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99.peel: ; preds = %bb.j
  %i.aq = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config18getLookNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %bb.k unwind label %.loopexit.split-lp361

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99.peel
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.aq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %.loopexit.split-lp361 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %bb.k, %bb.o
  %.047 = phi i32 [ %i.ba, %bb.o ], [ 1, %bb.k ]  ; 3 uses
  %i.as = invoke noundef i32 @_ZNK16OpenColorIO_v2_56Config11getNumLooksEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %.loopexit360

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.at = icmp slt i32 %.047, %i.as
  br i1 %i.at, label %bb.m, label %.loopexit364.invoke

.loopexit364.invoke:                              ; preds = %bb.l, %bb.f, %bb.j
  %i.au = phi ptr [ @.str.24, %bb.j ], [ @.str.21, %bb.f ], [ @.str.24, %bb.l ]
  %i.av = phi i64 [ 2, %bb.j ], [ 30, %bb.f ], [ 2, %bb.l ]
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %i.au, i64 noundef %i.av)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.h ; 0 uses

.loopexit360:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99, %bb.n, %bb.m
  %lpad.loopexit362 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp361:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99.peel, %bb.k
  %lpad.loopexit.split-lp363 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.ax = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.23, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99 unwind label %.loopexit360 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99: ; preds = %bb.m
  %i.ay = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config18getLookNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.047)
          to label %bb.n unwind label %.loopexit360

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit99
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.ay)
          to label %bb.o unwind label %.loopexit360 ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.ba = add nuw nsw i32 %.047, 1
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97, !llvm.loop !94

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %.loopexit364.invoke
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.bc = load ptr, ptr %8, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef %i.bc)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
          to label %bb.ft unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %.045 = phi i1 [ false, %bb.q ], [ true, %bb.p ] ; 2 uses
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bf = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !35
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.045, label %bb.s, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %.045, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn185 = phi { ptr, i32 } [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bb) #22
  br label %bb.t

bb.t:                                             ; preds = %.loopexit360, %.loopexit.split-lp361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.s, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn185, %bb.s ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %bb.h ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit362, %.loopexit360 ], [ %lpad.loopexit.split-lp363, %.loopexit.split-lp361 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #22
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.t ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.fs

bb.v:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN16OpenColorIO_v2_510OpRcPtrVecC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bk = load ptr, ptr %5, align 8, !tbaa !72
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %i.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !96
  switch i32 %i.bn, label %bb.dk [
    i32 0, label %bb.y
    i32 1, label %._crit_edge.i.i
  ]

bb.x:                                             ; preds = %bb.v
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.y:                                             ; preds = %bb.w
  invoke void @_ZN16OpenColorIO_v2_514CreateLookNoOpERNS_10OpRcPtrVecERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.z unwind label %bb.aq

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.bp = load ptr, ptr %6, align 8, !tbaa !91
  invoke void @_ZNK16OpenColorIO_v2_54Look12getTransformEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.46") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %bb.z
  %i.bq = load ptr, ptr %10, align 8, !tbaa !98
  %.not192 = icmp eq ptr %i.bq, null
  %i.br = load ptr, ptr %i.m, align 8, !tbaa !13  ; 8 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 4 uses
  %i.bt = load atomic i64, ptr %i.bs acquire, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 4294967297
  %i.bv = trunc i64 %i.bt to i32                  ; 2 uses
  br i1 %i.bu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.bs, align 8, !tbaa !17
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !19
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !100
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22, !inline_history !100
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.bv, %bb.ae ], [ %i.cf, %bb.af ]
  %i.cg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cg, label %bb.ag, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %.not192, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ch = load ptr, ptr %6, align 8, !tbaa !91
  invoke void @_ZNK16OpenColorIO_v2_54Look12getTransformEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.46") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN16OpenColorIO_v2_58BuildOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_9TransformEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef 0)
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !13  ; 8 uses
  %.not.i.i100 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i100, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.cj, align 8, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !19
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #22, !inline_history !100
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #22, !inline_history !100
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

bb.am:                                            ; preds = %bb.ak
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i101 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i101, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

bb.ao:                                            ; preds = %bb.am
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i103 = phi i32 [ %i.cm, %bb.an ], [ %i.cw, %bb.ao ]
  %i.cx = icmp eq i32 %.0.i.i.i.i103, 1
  br i1 %i.cx, label %bb.ap, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, !prof !46

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104: ; preds = %bb.aj, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i102, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.dk

bb.aq:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.ar:                                            ; preds = %bb.z
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.fq

bb.as:                                            ; preds = %bb.ah
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ai
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #22
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn81 = phi { ptr, i32 } [ %i.db, %bb.at ], [ %i.da, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.fq

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.dc = load ptr, ptr %6, align 8, !tbaa !91
  invoke void @_ZNK16OpenColorIO_v2_54Look19getInverseTransformEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.46") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %bb.aw unwind label %bb.bm

bb.aw:                                            ; preds = %bb.av
  %i.dd = load ptr, ptr %12, align 8, !tbaa !98
  %.not193 = icmp eq ptr %i.dd, null
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !13  ; 8 uses
  %.not.i.i105 = icmp eq ptr %i.de, null
  br i1 %.not.i.i105, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 4 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8 ; 2 uses
  %i.dh = icmp eq i64 %i.dg, 4294967297
  %i.di = trunc i64 %i.dg to i32                  ; 2 uses
  br i1 %i.dh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.df, align 8, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 0, ptr %i.dj, align 4, !tbaa !19
  %i.dk = load ptr, ptr %i.de, align 8, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #22, !inline_history !100
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.de) #22, !inline_history !100
end_hunk_2
begin_hunk_3_@_ZN16OpenColorIO_v2_512_GLOBAL__N_113RunLookTokensERNS_10OpRcPtrVecERSt10shared_ptrIKNS_10ColorSpaceEEbRKNS_6ConfigERKS3_IKNS_7ContextEERKSt6vectorINS_15LookParseResult5TokenESaISI_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.fq

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.fq

bb.cm:                                            ; preds = %bb.cb
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %bb.cc
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #22
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn77 = phi { ptr, i32 } [ %i.he, %bb.cn ], [ %i.hd, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.fq

bb.cp:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.hf = load ptr, ptr %6, align 8, !tbaa !91
  invoke void @_ZNK16OpenColorIO_v2_54Look12getTransformEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.46") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.hf)
          to label %bb.cq unwind label %bb.dg

bb.cq:                                            ; preds = %bb.cp
  %i.hg = load ptr, ptr %18, align 8, !tbaa !98
  %.not191 = icmp eq ptr %i.hg, null
  %i.hh = load ptr, ptr %i.k, align 8, !tbaa !13  ; 8 uses
  %.not.i.i140 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i140, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.hi, align 8, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !19
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !14
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #22, !inline_history !100
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !14
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #22, !inline_history !100
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144

bb.ct:                                            ; preds = %bb.cr
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i141 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i141, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

bb.cv:                                            ; preds = %bb.ct
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i143 = phi i32 [ %i.hl, %bb.cu ], [ %i.hv, %bb.cv ]
  %i.hw = icmp eq i32 %.0.i.i.i.i143, 1
  br i1 %i.hw, label %bb.cw, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144, !prof !46

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144: ; preds = %bb.cq, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i142, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br i1 %.not191, label %bb.dk, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.hx = load ptr, ptr %6, align 8, !tbaa !91
  invoke void @_ZNK16OpenColorIO_v2_54Look12getTransformEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.46") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %bb.cy unwind label %bb.dh

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN16OpenColorIO_v2_58BuildOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_9TransformEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %19, i32 noundef 1)
          to label %bb.cz unwind label %bb.di

bb.cz:                                            ; preds = %bb.cy
  %i.hy = load ptr, ptr %i.l, align 8, !tbaa !13  ; 8 uses
  %.not.i.i145 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i145, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 4 uses
  %i.ia = load atomic i64, ptr %i.hz acquire, align 8 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 4294967297
  %i.ic = trunc i64 %i.ia to i32                  ; 2 uses
  br i1 %i.ib, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %i.hz, align 8, !tbaa !17
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 12
  store i32 0, ptr %i.id, align 4, !tbaa !19
  %i.ie = load ptr, ptr %i.hy, align 8, !tbaa !14
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #22, !inline_history !100
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !14
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #22, !inline_history !100
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149

bb.dc:                                            ; preds = %bb.da
  %i.ik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i146 = icmp eq i8 %i.ik, 0
  br i1 %.not.i.i.i146, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.il = add nsw i32 %i.ic, -1
  store i32 %i.il, ptr %i.hz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147

bb.de:                                            ; preds = %bb.dc
  %i.im = atomicrmw volatile add ptr %i.hz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i148 = phi i32 [ %i.ic, %bb.dd ], [ %i.im, %bb.de ]
  %i.in = icmp eq i32 %.0.i.i.i.i148, 1
  br i1 %i.in, label %bb.df, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149, !prof !46

bb.df:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hy) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149: ; preds = %bb.cz, %bb.db, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i147, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.dk

bb.dg:                                            ; preds = %bb.cp
  %i.io = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.fq

bb.dh:                                            ; preds = %bb.cx
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.cy
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #22
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn75 = phi { ptr, i32 } [ %i.iq, %bb.di ], [ %i.ip, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.fq

bb.dk:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit133, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit144, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit114, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit109, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ir = load ptr, ptr %6, align 8, !tbaa !91
  %i.is = invoke noundef ptr @_ZNK16OpenColorIO_v2_54Look15getProcessSpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ir)
          to label %bb.dl unwind label %bb.dt

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZNK16OpenColorIO_v2_56Config13getColorSpaceEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.is)
          to label %bb.dm unwind label %bb.dt

bb.dm:                                            ; preds = %bb.dl
  %i.it = load ptr, ptr %20, align 8, !tbaa !49   ; 2 uses
  %.not194 = icmp eq ptr %i.it, null
  br i1 %.not194, label %bb.dn, label %bb.ea

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %21)
          to label %bb.do unwind label %bb.du

bb.do:                                            ; preds = %bb.dn
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.18, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151 unwind label %bb.dv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151: ; preds = %bb.do
  %i.iv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.19, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.dv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151
  %i.iw = load ptr, ptr %5, align 8, !tbaa !72
  %i.ix = getelementptr inbounds nuw [40 x i8], ptr %i.iw, i64 %i.w ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !47
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !34
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %i.iy, i64 noundef %i.ja)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit155 unwind label %bb.dv ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit155: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.jc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull @.str.26, i64 noundef 43)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157 unwind label %bb.dv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit155
  %i.jd = load ptr, ptr %6, align 8, !tbaa !91
  %i.je = invoke noundef ptr @_ZNK16OpenColorIO_v2_54Look15getProcessSpaceEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jd)
          to label %bb.dp unwind label %bb.dv

bb.dp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %i.je)
          to label %bb.dq unwind label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  %i.jg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull @.str.27, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159 unwind label %bb.dv ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159: ; preds = %bb.dq
  %i.jh = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(112) %21)
          to label %bb.dr unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread

bb.dr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  %i.ji = load ptr, ptr %22, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef %i.ji)
          to label %bb.ds unwind label %bb.dw

bb.ds:                                            ; preds = %bb.dr
  invoke void @__cxa_throw(ptr nonnull %i.jh, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #23
          to label %bb.ft unwind label %bb.dw

bb.dt:                                            ; preds = %bb.dl, %bb.dk
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.du:                                            ; preds = %bb.dn
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dv:                                            ; preds = %bb.dq, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit155, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151, %bb.do, %bb.dp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.dx

bb.dw:                                            ; preds = %bb.ds, %bb.dr
  %.0 = phi i1 [ false, %bb.ds ], [ true, %bb.dr ] ; 2 uses
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jo = load ptr, ptr %22, align 8, !tbaa !47   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.dw
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !35
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %.0, label %bb.dx, label %bb.dy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br i1 %.0, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %.pn83188 = phi { ptr, i32 } [ %i.jm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread ], [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ]
  call void @__cxa_free_exception(ptr %i.jh) #22
  br label %bb.dy

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %bb.dx, %bb.dv
  %.pn83.pn = phi { ptr, i32 } [ %.pn83188, %bb.dx ], [ %i.jn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.jl, %bb.dv ], [ %i.jn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %21) #22
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.du
  %.pn83.pn.pn = phi { ptr, i32 } [ %.pn83.pn, %bb.dy ], [ %i.jk, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.fo

bb.ea:                                            ; preds = %bb.dm
  %i.jt = load ptr, ptr %1, align 8, !tbaa !49
  %.not195 = icmp eq ptr %i.jt, null
  br i1 %.not195, label %bb.eb, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit

bb.eb:                                            ; preds = %bb.ea
  store ptr %i.it, ptr %1, align 8, !tbaa !49
  %i.ju = load ptr, ptr %i.r, align 8, !tbaa !13  ; 4 uses
  %i.jv = load ptr, ptr %i.q, align 8, !tbaa !13  ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.ju, %i.jv
  br i1 %.not.i.i.i163, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.not7.i.i.i = icmp eq ptr %i.ju, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8 ; 3 uses
  %i.jx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i.i.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.jy = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jw, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.ka = atomicrmw volatile add ptr %i.jw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !13
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.ef, %bb.ee, %bb.ec
  %i.kb = phi ptr [ %i.jv, %bb.ec ], [ %i.jv, %bb.ee ], [ %.pr.pre.i.i.i, %bb.ef ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.kb, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 4 uses
  %i.kd = load atomic i64, ptr %i.kc acquire, align 8 ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 4294967297
  %i.kf = trunc i64 %i.kd to i32                  ; 2 uses
  br i1 %i.ke, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i32 0, ptr %i.kc, align 8, !tbaa !17
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 0, ptr %i.kg, align 4, !tbaa !19
  %i.kh = load ptr, ptr %i.kb, align 8, !tbaa !14
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8
  call void %i.kj(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #22, !inline_history !58
  %i.kk = load ptr, ptr %i.kb, align 8, !tbaa !14
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #22, !inline_history !58
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.ei:                                            ; preds = %bb.eg
  %i.kn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i9.i.i.i = icmp eq i8 %i.kn, 0
  br i1 %.not.i9.i.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ko = add nsw i32 %i.kf, -1
  store i32 %i.ko, ptr %i.kc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.kp = atomicrmw volatile add ptr %i.kc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ek, %bb.ej
  %.0.i.i.i.i.i = phi i32 [ %i.kf, %bb.ej ], [ %i.kp, %bb.ek ]
  %i.kq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kq, label %bb.el, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !46

bb.el:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kb) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.el, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.eh, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ju, ptr %i.q, align 8, !tbaa !13
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.eb, %bb.ea
  br i1 %2, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit174, label %bb.em

bb.em:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit
  %i.kr = load ptr, ptr %1, align 8, !tbaa !49
  %i.ks = load ptr, ptr %20, align 8, !tbaa !49
  %.not87 = icmp eq ptr %i.kr, %i.ks
  br i1 %.not87, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_510ColorSpaceEEaSERKS3_.exit174, label %bb.en

bb.en:                                            ; preds = %bb.em
  invoke void @_ZN16OpenColorIO_v2_518BuildColorSpaceOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_10ColorSpaceEESF_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %20, i1 noundef zeroext true)
          to label %bb.eo unwind label %bb.ez

bb.eo:                                            ; preds = %bb.en
  %i.kt = load ptr, ptr %20, align 8, !tbaa !49
  store ptr %i.kt, ptr %1, align 8, !tbaa !49
  %i.ku = load ptr, ptr %i.r, align 8, !tbaa !13  ; 4 uses
  %i.kv = load ptr, ptr %i.q, align 8, !tbaa !13  ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.ku, %i.kv
end_hunk_3
begin_hunk_4_@_ZN16OpenColorIO_v2_523CollectContextVariablesERKNS_6ConfigERKNS_7ContextERKNS_13LookTransformERSt10shared_ptrIS3_E:bb.a
  br label %bb.av

bb.g:                                             ; preds = %bb.d
  %narrow = or i1 %i.f, %i.k                      ; 4 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 5 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load i8, ptr %i.p, align 1, !tbaa !35
  %.not43 = icmp eq i8 %i.q, 0
  br i1 %.not43, label %bb.ai, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.r, ptr %7, align 8, !tbaa !33
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.s, ptr %i.a, align 8, !tbaa !48
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55 unwind label %bb.q   ; 2 uses

.noexc55:                                         ; preds = %.noexc.i
  store ptr %i.u, ptr %7, align 8, !tbaa !47
  %i.v = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.v, ptr %i.r, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc55, %bb.i
  %i.w = phi ptr [ %i.u, %.noexc55 ], [ %i.r, %bb.i ] ; 2 uses
  switch i64 %i.s, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.p, align 1, !tbaa !35
  store i8 %i.x, ptr %i.w, align 1, !tbaa !35
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.p, i64 %i.s, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr %7, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ac = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN16OpenColorIO_v2_515LookParseResult5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.m unwind label %bb.r       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.r
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.af = load i64, ptr %i.r, align 8, !tbaa !35
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ah = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK16OpenColorIO_v2_515LookParseResult10getOptionsEv(ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.n unwind label %bb.s       ; 2 uses

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53 ; 2 uses
  %.not7686 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not7686, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.t

._crit_edge91:                                    ; preds = %._crit_edge, %bb.n
  %.2.lcssa = phi i1 [ %narrow, %bb.n ], [ %.3.lcssa, %._crit_edge ]
  %i.am = load ptr, ptr %6, align 8, !tbaa !57    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge91, %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.be, %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i ], [ %i.am, %._crit_edge91 ] ; 5 uses
  %i.ap = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !72 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !75 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.as = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !35
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #25
  br label %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ar
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN16OpenColorIO_v2_515LookParseResult5TokenEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !72
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ay = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !77
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #25
  br label %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i: ; preds = %bb.o, %_ZSt8_DestroyIPN16OpenColorIO_v2_515LookParseResult5TokenES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.be, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !78

_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %6, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge91
  %i.bf = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.am, %._crit_edge91 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i, label %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !79
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #25
  br label %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit

_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt6vectorIN16OpenColorIO_v2_515LookParseResult5TokenESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ai

bb.q:                                             ; preds = %.noexc.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.r:                                             ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.r
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.r
  %i.bp = load i64, ptr %i.r, align 8, !tbaa !35
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.q ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.bm, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ah

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.t:                                             ; preds = %.lr.ph90, %._crit_edge
  %.288 = phi i1 [ %narrow, %.lr.ph90 ], [ %.3.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.072.087 = phi ptr [ %i.ai, %.lr.ph90 ], [ %i.bv, %._crit_edge ] ; 3 uses
  %i.bs = load ptr, ptr %.sroa.072.087, align 8, !tbaa !90 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.072.087, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !90 ; 2 uses
  %.not7783 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not7783, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t
  %.3.lcssa = phi i1 [ %.288, %bb.t ], [ %.4, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.072.087, i64 24 ; 2 uses
  %.not76 = icmp eq ptr %i.bv, %i.ak
  br i1 %.not76, label %._crit_edge91, label %bb.t

.lr.ph:                                           ; preds = %bb.t, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.385 = phi i1 [ %.4, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.288, %bb.t ] ; 2 uses
  %.sroa.068.084 = phi ptr [ %i.ct, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.bs, %bb.t ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.bw = load ptr, ptr %.sroa.068.084, align 8, !tbaa !47
  invoke void @_ZNK16OpenColorIO_v2_56Config7getLookEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.40") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bw)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %.lr.ph
  %i.bx = load ptr, ptr %8, align 8, !tbaa !91    ; 2 uses
  %.not78 = icmp eq ptr %i.bx, null
  br i1 %.not78, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.068.084, i64 32
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !96
  %i.ca = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_523CollectContextVariablesERKNS_6ConfigERKNS_7ContextENS_18TransformDirectionERKNS_4LookERSt10shared_ptrIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %spec.select54 = select i1 %i.ca, i1 true, i1 %.385
  br label %bb.z

bb.x:                                             ; preds = %.lr.ph
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.y:                                             ; preds = %bb.v
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #22
  br label %bb.ag

bb.z:                                             ; preds = %bb.w, %bb.u
  %.4 = phi i1 [ %.385, %bb.u ], [ %spec.select54, %bb.w ] ; 2 uses
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !13 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ce, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !19
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #22, !inline_history !104
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #22, !inline_history !104
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.ad ], [ %i.cr, %bb.ae ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.af, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_54LookELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.068.084, i64 40 ; 2 uses
  %.not77 = icmp eq ptr %i.ct, %i.bu
  br i1 %.not77, label %._crit_edge, label %.lr.ph

bb.ag:                                            ; preds = %bb.y, %bb.x
  %.pn45 = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.cb, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.s, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pn45.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %.pn45, %bb.ag ], [ %i.br, %bb.s ]
  call void @_ZN16OpenColorIO_v2_515LookParseResultD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.av

bb.ai:                                            ; preds = %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit, %bb.h, %bb.g
  %.5 = phi i1 [ %.2.lcssa, %_ZN16OpenColorIO_v2_515LookParseResultD2Ev.exit ], [ %narrow, %bb.h ], [ %narrow, %bb.g ]
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !13 ; 8 uses
  %.not.i.i59 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i59, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cw, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !19
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #22, !inline_history !52
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #22, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i60 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i60, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61

bb.an:                                            ; preds = %bb.al
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i62 = phi i32 [ %i.cz, %bb.am ], [ %i.dj, %bb.an ]
  %i.dk = icmp eq i32 %.0.i.i.i.i62, 1
  br i1 %i.dk, label %bb.ao, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i61, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !13 ; 8 uses
  %.not.i.i63 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i63, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dn, align 8, !tbaa !17
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !19
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !14
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #22, !inline_history !52
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !14
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #22, !inline_history !52
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67

bb.ar:                                            ; preds = %bb.ap
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i64 = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i64, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

bb.at:                                            ; preds = %bb.ar
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i66 = phi i32 [ %i.dq, %bb.as ], [ %i.ea, %bb.at ]
  %i.eb = icmp eq i32 %.0.i.i.i.i66, 1
  br i1 %i.eb, label %bb.au, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, !prof !46

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #22
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67

end_hunk_4
