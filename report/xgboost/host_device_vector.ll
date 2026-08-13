inline.NumInlined: 5567
inline.NumDeleted: 2377
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK7xgboost16HostDeviceVectorIjE9SetDeviceENS_9DeviceOrdE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7xgboost16HostDeviceVectorIjE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !157    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !160  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %1, %i.i
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, %i.i
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !165
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7xgboost16HostDeviceVectorIjE6ResizeEmj(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !99
  %i.b = load ptr, ptr %0, align 8, !tbaa !157    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !160  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 3 uses
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %1, %i.i
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, %i.i
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !165
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEC2EmS2_NS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef byval(%"class.xgboost::RegTree::Node") align 8 %2, i32 %3) unnamed_addr #0 comdat($_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEC5EmS2_NS_9DeviceOrdE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !168
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 6 uses
  %i.b = icmp ugt i64 %1, 461168601842738790
  br i1 %i.b, label %.noexc.i, label %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %_ZNSt12_Vector_baseIN7xgboost7RegTree4NodeESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN7xgboost7RegTree4NodeESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %i.c = mul nuw nsw i64 %1, 20
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #25
          to label %.noexc3 unwind label %bb.b    ; 4 uses

.noexc3:                                          ; preds = %_ZNSt12_Vector_baseIN7xgboost7RegTree4NodeESaIS2_EEC2EmRKS3_.exit.i.i
  store ptr %i.d, ptr %i.a, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !174
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.noexc3, %.lr.ph.i.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.d, %.noexc3 ] ; 2 uses
  %.068.i.i.i.i.i.i.i.prol = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %1, %.noexc3 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.noexc3 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.09.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  %i.g = add i64 %.068.i.i.i.i.i.i.i.prol, -1     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.prol, i64 20 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !175

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.noexc3
  %.lcssa.unr = phi ptr [ poison, %.noexc3 ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.09.i.i.i.i.i.i.i.unr = phi ptr [ %i.d, %.noexc3 ], [ %i.h, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.i.unr = phi i64 [ %1, %.noexc3 ], [ %i.g, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.i = icmp ult i64 %1, 4
  br i1 %i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.068.i.i.i.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.09.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.j, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.l, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  %i.m = add i64 %.068.i.i.i.i.i.i.i, -4          ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !176

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.o, align 8, !tbaa !177
  store ptr %i.a, ptr %0, align 8, !tbaa !168
  ret void

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN7xgboost7RegTree4NodeESaIS2_EEC2EmRKS3_.exit.i.i, %.noexc.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEC2ESt16initializer_listIS2_ENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2, i32 %3) unnamed_addr #0 comdat($_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEC5ESt16initializer_listIS2_ENS_9DeviceOrdE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !168
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.idx6.i.i = mul nuw nsw i64 %2, 20             ; 4 uses
  %i.b = icmp ugt i64 %2, 461168601842738790
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN7xgboost7RegTree4NodeESaIS2_EE11_M_allocateEm.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

_ZNSt12_Vector_baseIN7xgboost7RegTree4NodeESaIS2_EE11_M_allocateEm.exit.thread.i.i.i: ; preds = %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr null, i64 %.idx6.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !174
  br label %bb.e

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx6.i.i) #25
          to label %.noexc3.i.i unwind label %bb.c ; 4 uses

.noexc3.i.i:                                      ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i
  store ptr %i.e, ptr %i.a, align 8, !tbaa !171
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx6.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !174
  %i.h = add nsw i64 %.idx6.i.i, -20              ; 2 uses
  %i.i = urem i64 %i.h, 20
  %i.j = sub nuw nsw i64 %i.h, %i.i               ; 2 uses
  %i.k = add nsw i64 %i.j, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 4 %1, i64 %i.k, i1 false)
  %4 = getelementptr i8, ptr %i.e, i64 %i.j
  %scevgep.i.i.i = getelementptr i8, ptr %4, i64 20
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i4.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !174
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #27
  br label %.body

bb.e:                                             ; preds = %.noexc3.i.i, %_ZNSt12_Vector_baseIN7xgboost7RegTree4NodeESaIS2_EE11_M_allocateEm.exit.thread.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost7RegTree4NodeESaIS2_EE11_M_allocateEm.exit.thread.i.i.i ], [ %scevgep.i.i.i, %.noexc3.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.s, align 8, !tbaa !177
  store ptr %i.a, ptr %0, align 8, !tbaa !168
  ret void

.body:                                            ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEC2ERKSt6vectorIS2_SaIS2_EENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 %2) unnamed_addr #0 comdat($_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEC5ERKSt6vectorIS2_SaIS2_EENS_9DeviceOrdE) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !168
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !171    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 20
  %i.i = icmp ugt i64 %i.h, 461168601842738790
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN7xgboost7RegTree4NodeEE8allocateEmPKv.exit.i.i.i.i, !prof !25

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN7xgboost7RegTree4NodeEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25
          to label %.lr.ph.i.i.i.i.i unwind label %bb.c ; 2 uses

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt15__new_allocatorIN7xgboost7RegTree4NodeEE8allocateEmPKv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.j, %_ZNSt15__new_allocatorIN7xgboost7RegTree4NodeEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.d, %_ZNSt15__new_allocatorIN7xgboost7RegTree4NodeEE8allocateEmPKv.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.04.08.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !178
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 20 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !179

_ZNSt6vectorIN7xgboost7RegTree4NodeESaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.g
  store ptr %.sink, ptr %i.a, align 8, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.n, align 8, !tbaa !177
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.o, align 8, !tbaa !174
  store ptr %i.a, ptr %0, align 8, !tbaa !168
  ret void

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7xgboost7RegTree4NodeEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat($_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEED5Ev) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost20HostDeviceVectorImplINS_7RegTree4NodeEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !174
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #27
  br label %_ZN7xgboost20HostDeviceVectorImplINS_7RegTree4NodeEED2Ev.exit

_ZN7xgboost20HostDeviceVectorImplINS_7RegTree4NodeEED2Ev.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZN7xgboost20HostDeviceVectorImplINS_7RegTree4NodeEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat($_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEC5EOS3_) align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !168    ; 3 uses
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !180
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !180
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174
  store ptr %i.f, ptr %i.d, align 8, !tbaa !174
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN7xgboost16HostDeviceVectorINS_7RegTree4NodeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !168    ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !180
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !180
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !174
  store ptr %i.g, ptr %i.e, align 8, !tbaa !174
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !168    ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNSt10unique_ptrIN7xgboost20HostDeviceVectorImplINS0_7RegTree4NodeEEESt14default_deleteIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !171  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost20HostDeviceVectorImplINS_7RegTree4NodeEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !174
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #27
  br label %_ZN7xgboost20HostDeviceVectorImplINS_7RegTree4NodeEED2Ev.exit

_ZN7xgboost20HostDeviceVectorImplINS_7RegTree4NodeEED2Ev.exit: ; preds = %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #27
  br label %_ZNSt10unique_ptrIN7xgboost20HostDeviceVectorImplINS0_7RegTree4NodeEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN7xgboost20HostDeviceVectorImplINS0_7RegTree4NodeEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.b, %_ZN7xgboost20HostDeviceVectorImplINS_7RegTree4NodeEED2Ev.exit
  store ptr %i.b, ptr %0, align 8, !tbaa !168
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN7xgboost20HostDeviceVectorImplINS0_7RegTree4NodeEEESt14default_deleteIS4_EED2Ev.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK7xgboost16HostDeviceVectorINS_7RegTree4NodeEE5EmptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.e = icmp eq ptr %i.c, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef i64 @_ZNK7xgboost16HostDeviceVectorINS_7RegTree4NodeEE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !177
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !171
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
end_hunk_0
