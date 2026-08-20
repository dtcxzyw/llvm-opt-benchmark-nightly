inline.NumInlined: 1534
inline.NumDeleted: 728
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK5osgeo4proj8metadata21GeographicBoundingBox7Private10intersectsERKS3_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.g, ptr %i.ac, align 8, !tbaa !52
  %i.ad = call noundef zeroext i1 @_ZNK5osgeo4proj8metadata21GeographicBoundingBox7Private10intersectsERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %.tr, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store double -1.800000e+02, ptr %3, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x double> %i.i, ptr %i.ae, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.g, ptr %i.af, align 8, !tbaa !52
  %i.ag = call noundef zeroext i1 @_ZNK5osgeo4proj8metadata21GeographicBoundingBox7Private10intersectsERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %.tr, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ah = phi i1 [ true, %bb.h ], [ %i.ag, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %.loopexit

bb.k:                                             ; preds = %bb.d
  br i1 %i.u, label %.loopexit, label %tailrecurse

.loopexit:                                        ; preds = %bb.c, %bb.k, %bb.b, %tailrecurse, %bb.g, %bb.f, %bb.j
  %.0 = phi i1 [ false, %bb.g ], [ %i.x, %bb.f ], [ %i.ah, %bb.j ], [ %or.cond24.not, %tailrecurse ], [ %or.cond24.not, %bb.b ], [ %or.cond24.not, %bb.k ], [ %or.cond24.not, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define hidden noundef zeroext i1 @_ZNK5osgeo4proj8metadata21GeographicBoundingBox10intersectsERKN7dropbox6oxygen2nnISt10shared_ptrINS1_16GeographicExtentEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !77     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN5osgeo4proj8metadata16GeographicExtentE, ptr nonnull @_ZTIN5osgeo4proj8metadata21GeographicBoundingBoxE, i64 0) #35 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = tail call noundef zeroext i1 @_ZNK5osgeo4proj8metadata21GeographicBoundingBox7Private10intersectsERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.h, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5osgeo4proj8metadata21GeographicBoundingBox12intersectionERKN7dropbox6oxygen2nnISt10shared_ptrINS1_16GeographicExtentEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.27") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.18", align 8 ; 6 uses
  %4 = alloca %"class.dropbox::oxygen::nn", align 16 ; 6 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN5osgeo4proj8metadata16GeographicExtentE, ptr nonnull @_ZTIN5osgeo4proj8metadata21GeographicBoundingBoxE, i64 0) #35 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  call void @_ZNK5osgeo4proj8metadata21GeographicBoundingBox7Private12intersectionERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = load ptr, ptr %3, align 8, !tbaa !53     ; 6 uses
  %.not16 = icmp eq ptr %i.h, null
  br i1 %.not16, label %.thread14, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.i = load double, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load double, ptr %i.n, align 8, !tbaa !52
  invoke void @_ZN5osgeo4proj8metadata21GeographicBoundingBox6createEdddd(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn") align 8 %4, double noundef %i.i, double noundef %i.k, double noundef %i.m, double noundef %i.o)
          to label %bb.e unwind label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 3 uses
  %i.r = load <2 x ptr>, ptr %4, align 16, !tbaa !80
  store <2 x ptr> %i.r, ptr %0, align 8, !tbaa !80
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread21

_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread21: ; preds = %bb.f
  %i.u = load i32, ptr %i.s, align 4, !tbaa !81
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !81
  br label %bb.g

_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit: ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.p, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i6, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread21, %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit
  %.pr24 = phi ptr [ %i.q, %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread21 ], [ %.pr.pre, %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pr24, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.x, align 8, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr24, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !68
  %i.ac = load ptr, ptr %.pr24, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.pr24) #35, !inline_history !82
  %i.af = load ptr, ptr %.pr24, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %.pr24) #35, !inline_history !82
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i7 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %bb.j ], [ %i.ak, %bb.k ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.l, label %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread, !prof !83

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr24) #35
  br label %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread

_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.d
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.am

.thread14:                                        ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit10

_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread: ; preds = %bb.e, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %.pr13 = load ptr, ptr %3, align 8, !tbaa !53   ; 2 uses
  %.not.i8 = icmp eq ptr %.pr13, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit10, label %_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i9

_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i9: ; preds = %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread
  call void @_ZdlPvm(ptr noundef nonnull %.pr13, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit10

_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit10: ; preds = %.thread14, %_ZNSt10shared_ptrIN5osgeo4proj8metadata16GeographicExtentEEC2INS2_21GeographicBoundingBoxEvEERKS_IT_E.exit.thread, %_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit10, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5osgeo4proj8metadata21GeographicBoundingBox7Private12intersectionERKS3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.18") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.18", align 8 ; 6 uses
  %4 = alloca %"struct.osgeo::proj::metadata::GeographicBoundingBox::Private", align 16 ; 5 uses
  %5 = alloca %"class.std::unique_ptr.18", align 8 ; 7 uses
  %6 = alloca %"struct.osgeo::proj::metadata::GeographicBoundingBox::Private", align 16 ; 6 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.a = load <2 x double>, ptr %.phi.trans.insert, align 8, !tbaa !57
  %i.b = load <2 x double>, ptr %1, align 8, !tbaa !57
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.t, %bb.a
  %.tr121 = phi ptr [ %1, %bb.a ], [ %.tr122, %bb.t ] ; 3 uses
  %.tr122 = phi ptr [ %2, %bb.a ], [ %.tr121, %bb.t ] ; 3 uses
  %i.c = phi <2 x double> [ %i.b, %bb.a ], [ %i.g, %bb.t ] ; 10 uses
  %i.d = phi <2 x double> [ %i.a, %bb.a ], [ %i.f, %bb.t ] ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.tr122, i64 16
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !57 ; 13 uses
  %i.g = load <2 x double>, ptr %.tr122, align 8, !tbaa !57 ; 13 uses
  %i.h = fcmp olt <2 x double> %i.d, %i.g
  %i.i = extractelement <2 x i1> %i.h, i64 1
  %7 = fcmp ogt <2 x double> %i.c, %i.f
  %8 = extractelement <2 x i1> %7, i64 1
  %or.cond117 = select i1 %i.i, i1 true, i1 %8
  br i1 %or.cond117, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  store ptr null, ptr %0, align 8, !tbaa !84
  br label %bb.v

bb.c:                                             ; preds = %tailrecurse
  %i.j = extractelement <2 x double> %i.c, i64 0  ; 6 uses
  %i.k = fcmp oeq double %i.j, -1.800000e+02
  %i.l = extractelement <2 x double> %i.d, i64 0  ; 6 uses
  %i.m = fcmp oeq double %i.l, 1.800000e+02
  %or.cond = select i1 %i.k, i1 %i.m, i1 false
  %i.n = extractelement <2 x double> %i.g, i64 0  ; 7 uses
  %i.o = extractelement <2 x double> %i.f, i64 0  ; 7 uses
  %i.p = fcmp ogt double %i.n, %i.o
  %or.cond118 = select i1 %or.cond, i1 %i.p, i1 false
  br i1 %or.cond118, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.q = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34, !noalias !86 ; 5 uses
  %i.r = shufflevector <2 x double> %i.c, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.s = shufflevector <2 x double> %i.g, <2 x double> %i.d, <2 x i32> <i32 1, i32 3>
  %i.t = fcmp olt <2 x double> %i.r, %i.s
  %i.u = shufflevector <2 x double> %i.g, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.v = shufflevector <2 x double> %i.c, <2 x double> %i.d, <2 x i32> <i32 1, i32 3>
  %i.w = select <2 x i1> %i.t, <2 x double> %i.u, <2 x double> %i.v ; 2 uses
  store double %i.n, ptr %i.q, align 8, !tbaa !47, !noalias !86
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = extractelement <2 x double> %i.w, i64 0
  store double %i.y, ptr %i.x, align 8, !tbaa !50, !noalias !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store double %i.o, ptr %i.z, align 8, !tbaa !51, !noalias !86
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ab = extractelement <2 x double> %i.w, i64 1
  store double %i.ab, ptr %i.aa, align 8, !tbaa !52, !noalias !86
  store ptr %i.q, ptr %0, align 8, !tbaa !53, !alias.scope !86
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.ac = fcmp oeq double %i.n, -1.800000e+02
  %i.ad = fcmp oeq double %i.o, 1.800000e+02
  %or.cond3 = select i1 %i.ac, i1 %i.ad, i1 false
  %i.ae = fcmp ogt double %i.j, %i.l
  %or.cond119 = select i1 %or.cond3, i1 %i.ae, i1 false
  br i1 %or.cond119, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.af = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34, !noalias !89 ; 5 uses
  %i.ag = shufflevector <2 x double> %i.c, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.ah = shufflevector <2 x double> %i.g, <2 x double> %i.d, <2 x i32> <i32 1, i32 3>
  %i.ai = fcmp olt <2 x double> %i.ag, %i.ah
  %i.aj = shufflevector <2 x double> %i.g, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.ak = shufflevector <2 x double> %i.c, <2 x double> %i.d, <2 x i32> <i32 1, i32 3>
  %i.al = select <2 x i1> %i.ai, <2 x double> %i.aj, <2 x double> %i.ak ; 2 uses
  store double %i.j, ptr %i.af, align 8, !tbaa !47, !noalias !89
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = extractelement <2 x double> %i.al, i64 0
  store double %i.an, ptr %i.am, align 8, !tbaa !50, !noalias !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store double %i.l, ptr %i.ao, align 8, !tbaa !51, !noalias !89
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aq = extractelement <2 x double> %i.al, i64 1
  store double %i.aq, ptr %i.ap, align 8, !tbaa !52, !noalias !89
  store ptr %i.af, ptr %0, align 8, !tbaa !53, !alias.scope !89
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.ar = fcmp ugt double %i.j, %i.l
  %i.as = fcmp ugt double %i.n, %i.o              ; 2 uses
  br i1 %i.ar, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.as, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = fcmp olt double %i.j, %i.n
  %.sroa.speculated92 = select i1 %i.at, double %i.n, double %i.j ; 2 uses
  %i.au = fcmp olt double %i.o, %i.l
  %.sroa.speculated78 = select i1 %i.au, double %i.o, double %i.l ; 2 uses
  %i.av = fcmp olt double %.sroa.speculated92, %.sroa.speculated78
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.aw = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34, !noalias !92 ; 5 uses
  %i.ax = shufflevector <2 x double> %i.c, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.ay = shufflevector <2 x double> %i.g, <2 x double> %i.d, <2 x i32> <i32 1, i32 3>
  %i.az = fcmp olt <2 x double> %i.ax, %i.ay
  %i.ba = shufflevector <2 x double> %i.g, <2 x double> %i.f, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <2 x double> %i.c, <2 x double> %i.d, <2 x i32> <i32 1, i32 3>
  %i.bc = select <2 x i1> %i.az, <2 x double> %i.ba, <2 x double> %i.bb ; 2 uses
  store double %.sroa.speculated92, ptr %i.aw, align 8, !tbaa !47, !noalias !92
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = extractelement <2 x double> %i.bc, i64 0
  store double %i.be, ptr %i.bd, align 8, !tbaa !50, !noalias !92
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store double %.sroa.speculated78, ptr %i.bf, align 8, !tbaa !51, !noalias !92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bh = extractelement <2 x double> %i.bc, i64 1
  store double %i.bh, ptr %i.bg, align 8, !tbaa !52, !noalias !92
  store ptr %i.aw, ptr %0, align 8, !tbaa !53, !alias.scope !92
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  store ptr null, ptr %0, align 8, !tbaa !84
  br label %bb.v

bb.l:                                             ; preds = %bb.h
  %i.bi = fcmp ogt double %i.n, 1.800000e+02
  %i.bj = fcmp olt double %i.o, -1.800000e+02
  %or.cond5 = or i1 %i.bi, %i.bj
  br i1 %or.cond5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %0, align 8, !tbaa !84
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store <2 x double> %i.g, ptr %4, align 16, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %9 = insertelement <2 x double> %i.f, double 1.800000e+02, i64 0
  store <2 x double> %9, ptr %i.bk, align 16, !tbaa !57
  call void @_ZNK5osgeo4proj8metadata21GeographicBoundingBox7Private12intersectionERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %.tr121, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %10 = insertelement <2 x double> %i.g, double -1.800000e+02, i64 0
  store <2 x double> %10, ptr %6, align 16, !tbaa !57
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> %i.f, ptr %i.bl, align 16, !tbaa !57
  invoke void @_ZNK5osgeo4proj8metadata21GeographicBoundingBox7Private12intersectionERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.18") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %.tr121, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.bm = load ptr, ptr %3, align 8               ; 5 uses
  %.not = icmp eq ptr %i.bm, null
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  br i1 %.not, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bo = load i64, ptr %5, align 8, !tbaa !53
  store i64 %i.bo, ptr %0, align 8, !tbaa !53
  br label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit22.thread

bb.q:                                             ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.bq = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i

_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i: ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.bp

bb.r:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %5, align 8               ; 5 uses
  %.not120 = icmp eq ptr %i.br, null
  %i.bs = ptrtoint ptr %i.br to i64
  br i1 %.not120, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  store i64 %i.bn, ptr %0, align 8, !tbaa !53
  br label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit22.thread

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !51
  %i.bv = load double, ptr %i.bm, align 8, !tbaa !47
  %i.bw = fsub double %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.by = load double, ptr %i.bx, align 8, !tbaa !51
  %i.bz = load double, ptr %i.br, align 8, !tbaa !47
  %i.ca = fsub double %i.by, %i.bz
  %i.cb = fcmp ogt double %i.bw, %i.ca
  br i1 %i.cb, label %_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i21, label %_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i24

_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i21: ; preds = %bb.s
  store i64 %i.bn, ptr %0, align 8, !tbaa !53
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit22.thread

_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit22.thread: ; preds = %bb.p, %.thread, %_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit25

_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i24: ; preds = %bb.s
  store i64 %i.bs, ptr %0, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 32) #36
  br label %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit25

_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit25: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit22.thread, %_ZNKSt14default_deleteIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateEEclEPS4_.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.v

bb.t:                                             ; preds = %bb.g
  br i1 %i.as, label %bb.u, label %tailrecurse

bb.u:                                             ; preds = %bb.t
  %i.cc = fcmp olt <2 x double> %i.c, %i.g
  %i.cd = fcmp olt <2 x double> %i.f, %i.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.ce = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34, !noalias !95 ; 3 uses
  %i.cf = select <2 x i1> %i.cc, <2 x double> %i.g, <2 x double> %i.c
  store <2 x double> %i.cf, ptr %i.ce, align 8, !tbaa !57, !noalias !95
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ch = select <2 x i1> %i.cd, <2 x double> %i.f, <2 x double> %i.d
  store <2 x double> %i.ch, ptr %i.cg, align 8, !tbaa !57, !noalias !95
  store ptr %i.ce, ptr %0, align 8, !tbaa !53, !alias.scope !95
  br label %bb.v

bb.v:                                             ; preds = %bb.j, %bb.k, %bb.u, %_ZNSt10unique_ptrIN5osgeo4proj8metadata21GeographicBoundingBox7PrivateESt14default_deleteIS4_EED2Ev.exit25, %bb.m, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !98
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35, !inline_history !98
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #35
  br label %_ZNSt12__shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj8metadata21GeographicBoundingBoxELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj8metadata14VerticalExtentC2EddRKN7dropbox6oxygen2nnISt10shared_ptrINS0_6common13UnitOfMeasureEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %1, double noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5osgeo4proj4util10BaseObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj8metadata14VerticalExtentE, i64 16), ptr %0, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj8metadata14VerticalExtentE, i64 56), ptr %i.a, align 8, !tbaa !8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %.noexc unwind label %bb.f     ; 4 uses

.noexc:                                           ; preds = %bb.a
  store double %1, ptr %i.b, align 8, !tbaa !102, !noalias !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %2, ptr %i.c, align 8, !tbaa !108, !noalias !99
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76, !noalias !99 ; 2 uses
  %i.g = load <2 x ptr>, ptr %3, align 8, !tbaa !80, !noalias !99
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !80, !noalias !99
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28, !noalias !99
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !81, !noalias !99
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !81, !noalias !99
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !99 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.m, align 8, !tbaa !109, !alias.scope !99
  ret void

bb.f:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5osgeo4proj4util11IComparableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #35
  tail call void @_ZN5osgeo4proj4util10BaseObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #35
  resume { ptr, i32 } %i.n
}
end_hunk_0
