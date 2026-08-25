Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/forward_kinematics?download=true
inline.NumInlined: 2018
inline.NumDeleted: 1208
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3igl18forward_kinematicsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELi1ELi0ELin1ELi1EEERKSt6vectorINS0_10QuaternionIdLi0EEENS0_17aligned_allocatorISD_EEERKSB_INS1_IdLi3ELi1ELi0ELi3ELi1EEESaISJ_EERSG_RSL_:bb.a
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bm
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bk) #19
  br label %.body

.body:                                            ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 384307168202282325, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 24
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !48
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 384307168202282325
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #20
  unreachable

_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 384307168202282325) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #17 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !tbaa.struct !53, !alias.scope !55
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !59

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #19
  br label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !52
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !48
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl18forward_kinematicsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELi1ELi0ELin1ELi1EEERKSt6vectorINS0_10QuaternionIdLi0EEENS0_17aligned_allocatorISD_EEERSG_RSB_INS1_IdLi3ELi1ELi0ELi3ELi1EEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.10", align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = icmp ugt i64 %i.b, 384307168202282325
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i, label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.e = mul nuw nsw i64 %i.b, 24                 ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17 ; 5 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.e
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.j = phi ptr [ %i.d, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.g, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !48
  invoke void @_ZN3igl18forward_kinematicsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELi1ELi0ELin1ELi1EEERKSt6vectorINS0_10QuaternionIdLi0EEENS0_17aligned_allocatorISD_EEERKSB_INS1_IdLi3ELi1ELi0ELi3ELi1EEESaISJ_EERSG_RSL_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.loopexit
  %i.k = load ptr, ptr %6, align 8, !tbaa !51     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #19
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

bb.d:                                             ; preds = %.loopexit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !51     ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #19
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit12

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit12: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl18forward_kinematicsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELi1ELi0ELin1ELi1EEERKSt6vectorINS0_10QuaternionIdLi0EEENS0_17aligned_allocatorISD_EEERKSB_INS1_IdLi3ELi1ELi0ELi3ELi1EEESaISJ_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.03.i = alloca [9 x double], align 16     ; 19 uses
  %6 = alloca %"class.std::vector.6", align 8     ; 8 uses
  %7 = alloca %"class.std::vector.10", align 8    ; 10 uses
  %8 = alloca %"class.Eigen::Transform", align 16 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl18forward_kinematicsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELi1ELi0ELin1ELi1EEERKSt6vectorINS0_10QuaternionIdLi0EEENS0_17aligned_allocatorISD_EEERKSB_INS1_IdLi3ELi1ELi0ELi3ELi1EEESaISJ_EERSG_RSL_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9
  %i.e = shl i64 %i.b, 32
  %sext58 = add i64 %i.e, 4294967296
  %i.f = ashr exact i64 %sext58, 32               ; 6 uses
  %i.g = mul nsw i64 %i.d, %i.f                   ; 4 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.h = ashr exact i64 %sext, 32                 ; 5 uses
  %i.i = icmp eq i64 %i.g, 0
  %i.j = icmp eq i64 %sext, 0
  %or.cond.i.i = or i1 %i.j, %i.i
  br i1 %or.cond.i.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sdiv i64 9223372036854775807, %i.h
  %i.l = icmp sgt i64 %i.g, %i.k
  br i1 %i.l, label %bb.d, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i: ; preds = %bb.c, %bb.b
  %i.n = mul nsw i64 %i.g, %i.h
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.n, i64 noundef %i.g, i64 noundef %i.h)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader unwind label %bb.h

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i
  %i.o = load i64, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.w = load ptr, ptr %7, align 8, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.ac = load ptr, ptr %6, align 8, !tbaa !24
  %i.ad = load ptr, ptr %5, align 8, !tbaa !65, !noalias !66
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !69
  %i.ag = icmp sgt i64 %i.h, 0
  %i.ah = and i64 %i.b, 2147483648
  %i.ai = icmp eq i64 %i.ah, 0
  %or.cond = and i1 %i.ai, %i.ag
  %.sroa.03.i.24.i.24.i.24..sroa_idx71 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 24
  %.sroa.03.i.48.i.48.i.48..sroa_idx74 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 48
  %.sroa.03.i.8.i.8.i.8..sroa_idx69 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 8
  %.sroa.03.i.32.i.32.i.32..sroa_idx72 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 32
  %.sroa.03.i.56.i.56.i.56..sroa_idx75 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 56
  %.sroa.03.i.16.i.16.i.16..sroa_idx70 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 16
  %.sroa.03.i.40.i.40.i.40..sroa_idx73 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 40
  %.sroa.03.i.64.i.64.i.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 64
  %.sroa.03.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 8
  %.sroa.03.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 16
  %.sroa.03.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 24
  %.sroa.03.i.8.i.8.i.8..sroa_idx60 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 32
  %.sroa.03.i.16.i.16.i.16..sroa_idx61 = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 40
  %.sroa.03.i.8.i.8.i.8..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 48
  %.sroa.03.i.16.i.16.i.16..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.03.i, i64 56
  %min.iters.check = icmp ult i64 %i.f, 5
  %i.aj = and i64 %i.f, 3                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec = sub nsw i64 %i.f, %i.al                ; 2 uses
  br label %bb.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS0_INS_9TransposeINS1_IdLi4ELi4ELi0ELi4ELi4EEEEELin1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.preheader
  %i.am = load ptr, ptr %7, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #19
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.as = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit
  call void @free(ptr noundef nonnull %i.as) #16
  br label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEED2Ev.exit

_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

bb.g:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i, %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS0_INS_9TransposeINS1_IdLi4ELi4ELi0ELi4ELi4EEEEELin1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS0_INS_9TransposeINS1_IdLi4ELi4ELi0ELi4ELi4EEEEELin1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store double 1.000000e+00, ptr %8, align 16, !tbaa !70, !alias.scope !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false), !alias.scope !72
  store double 1.000000e+00, ptr %i.r, align 8, !tbaa !70, !alias.scope !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, i8 0, i64 16, i1 false), !alias.scope !72
  store i64 0, ptr %i.u, align 8
  store double 1.000000e+00, ptr %i.v, align 8, !tbaa !70, !alias.scope !72
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.aw = load <2 x double>, ptr %8, align 16, !tbaa !54 ; 4 uses
  %i.ax = load <2 x double>, ptr %i.av, align 8   ; 2 uses
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.aw, %i.ay
  %i.ba = load <2 x double>, ptr %i.y, align 16, !tbaa !54 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bc = load <2 x double>, ptr %i.bb, align 8   ; 4 uses
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x double> %i.ba, %i.bd
  %i.bf = fadd <2 x double> %i.az, %i.be
  %i.bg = fmul <2 x double> %i.bc, <double poison, double 0.000000e+00>
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fadd <2 x double> %i.bh, %i.bf
  %i.bj = extractelement <2 x double> %i.ax, i64 0
  %i.bk = fmul double %i.bj, 0.000000e+00
  %i.bl = extractelement <2 x double> %i.bc, i64 0
  %i.bm = fmul double %i.bl, 0.000000e+00
  %i.bn = extractelement <2 x double> %i.bc, i64 1
  %i.bo = fadd double %i.bn, %i.bm
  %i.bp = fadd double %i.bk, %i.bo
  %i.bq = fadd <2 x double> %i.bi, zeroinitializer
  store <2 x double> %i.bq, ptr %i.x, align 16, !tbaa !54
  %i.br = fadd double %i.bp, 0.000000e+00
  store double %i.br, ptr %i.ab, align 16, !tbaa !70
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !70, !noalias !84 ; 4 uses
  %i.bu = fmul double %i.bt, 2.000000e+00         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !70, !noalias !84 ; 3 uses
  %i.bx = fmul double %i.bw, 2.000000e+00         ; 3 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %10 = load double, ptr %9, align 8, !tbaa !70, !noalias !84 ; 2 uses
  %11 = fmul double %10, 2.000000e+00             ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %13 = load double, ptr %12, align 8, !tbaa !70, !noalias !84 ; 3 uses
  %i.by = fmul double %i.bu, %13                  ; 2 uses
  %14 = fmul double %i.bx, %13                    ; 2 uses
  %i.bz = fmul double %11, %13                    ; 2 uses
  %i.ca = fmul double %i.bt, %i.bu                ; 2 uses
  %15 = fmul double %i.bt, %i.bx                  ; 2 uses
  %16 = fmul double %i.bt, %11                    ; 2 uses
  %i.cb = fmul double %i.bw, %i.bx                ; 2 uses
  %i.cc = fmul double %i.bw, %11                  ; 2 uses
  %17 = fmul double %10, %11                      ; 2 uses
  %i.cd = fadd double %i.cb, %17
  %i.ce = fsub double 1.000000e+00, %i.cd
  store double %i.ce, ptr %.sroa.03.i, align 16, !tbaa !70, !alias.scope !84
  %i.cf = fsub double %15, %i.bz
  store double %i.cf, ptr %.sroa.03.i.24.i.24.i.24..sroa_idx71, align 8, !tbaa !70, !alias.scope !84
  %i.cg = fadd double %16, %14
  store double %i.cg, ptr %.sroa.03.i.48.i.48.i.48..sroa_idx74, align 16, !tbaa !70, !alias.scope !84
  %i.ch = fadd double %15, %i.bz
  store double %i.ch, ptr %.sroa.03.i.8.i.8.i.8..sroa_idx69, align 8, !tbaa !70, !alias.scope !84
  %18 = fadd double %i.ca, %17
  %19 = fsub double 1.000000e+00, %18
  store double %19, ptr %.sroa.03.i.32.i.32.i.32..sroa_idx72, align 16, !tbaa !70, !alias.scope !84
  %i.ci = fsub double %i.cc, %i.by
  store double %i.ci, ptr %.sroa.03.i.56.i.56.i.56..sroa_idx75, align 8, !tbaa !70, !alias.scope !84
  %i.cj = fsub double %16, %14
  store double %i.cj, ptr %.sroa.03.i.16.i.16.i.16..sroa_idx70, align 16, !tbaa !70, !alias.scope !84
  %i.ck = fadd double %i.cc, %i.by
  store double %i.ck, ptr %.sroa.03.i.40.i.40.i.40..sroa_idx73, align 8, !tbaa !70, !alias.scope !84
  %i.cl = fadd double %i.ca, %i.cb
  %i.cm = fsub double 1.000000e+00, %i.cl
  store double %i.cm, ptr %.sroa.03.i.64.i.64.i.64..sroa_idx, align 16, !tbaa !70, !alias.scope !84
  %.sroa.03.i.0..sroa.03.i.0..sroa.03.i.0..sroa.03.0..sroa.03.0..sroa.03.0..i = load <2 x double>, ptr %.sroa.03.i, align 16 ; 2 uses
  %i.cn = shufflevector <2 x double> %.sroa.03.i.0..sroa.03.i.0..sroa.03.i.0..sroa.03.0..sroa.03.0..sroa.03.0..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x double> %i.aw, %i.cn
  %.sroa.03.i.8..sroa.03.i.8..sroa.03.i.8..sroa.03.8..sroa.03.8..sroa.03.8..i = load <2 x double>, ptr %.sroa.03.i.8.i.8.i.8..sroa_idx, align 8 ; 2 uses
  %i.cp = shufflevector <2 x double> %.sroa.03.i.8..sroa.03.i.8..sroa.03.i.8..sroa.03.8..sroa.03.8..sroa.03.8..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.ba, %i.cp
  %i.cr = fadd <2 x double> %i.co, %i.cq
  %.sroa.03.i.16..sroa.03.i.16..sroa.03.i.16..sroa.03.16..sroa.03.16..sroa.03.16..i = load <2 x double>, ptr %.sroa.03.i.16.i.16.i.16..sroa_idx, align 16 ; 2 uses
  %i.cs = fmul <2 x double> %.sroa.03.i.16..sroa.03.i.16..sroa.03.i.16..sroa.03.16..sroa.03.16..sroa.03.16..i, <double 0.000000e+00, double poison>
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = fadd <2 x double> %i.cr, %i.ct
  %i.cv = extractelement <2 x double> %.sroa.03.i.0..sroa.03.i.0..sroa.03.i.0..sroa.03.0..sroa.03.0..sroa.03.0..i, i64 0
  %i.cw = fmul double %i.cv, 0.000000e+00
  %i.cx = extractelement <2 x double> %.sroa.03.i.8..sroa.03.i.8..sroa.03.i.8..sroa.03.8..sroa.03.8..sroa.03.8..i, i64 0
  %i.cy = fmul double %i.cx, 0.000000e+00
  %i.cz = extractelement <2 x double> %.sroa.03.i.16..sroa.03.i.16..sroa.03.i.16..sroa.03.16..sroa.03.16..sroa.03.16..i, i64 0
  %i.da = fadd double %i.cy, %i.cz
  %i.db = fadd double %i.cw, %i.da
  %.sroa.03.i.24..sroa.03.i.24..sroa.03.i.24..sroa.03.24..sroa.03.24..sroa.03.24..i = load <2 x double>, ptr %.sroa.03.i.24.i.24.i.24..sroa_idx, align 8 ; 2 uses
  %20 = shufflevector <2 x double> %.sroa.03.i.24..sroa.03.i.24..sroa.03.i.24..sroa.03.24..sroa.03.24..sroa.03.24..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %i.aw, %20
  %.sroa.03.i.32..sroa.03.i.32..sroa.03.i.32..sroa.03.32..sroa.03.32..sroa.03.32..i = load <2 x double>, ptr %.sroa.03.i.8.i.8.i.8..sroa_idx60, align 16 ; 2 uses
  %i.dd = shufflevector <2 x double> %.sroa.03.i.32..sroa.03.i.32..sroa.03.i.32..sroa.03.32..sroa.03.32..sroa.03.32..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul <2 x double> %i.ba, %i.dd
  %i.df = fadd <2 x double> %i.dc, %i.de
  %.sroa.03.i.40..sroa.03.i.40..sroa.03.i.40..sroa.03.40..sroa.03.40..sroa.03.40..i = load <2 x double>, ptr %.sroa.03.i.16.i.16.i.16..sroa_idx61, align 8 ; 2 uses
  %21 = fmul <2 x double> %.sroa.03.i.40..sroa.03.i.40..sroa.03.i.40..sroa.03.40..sroa.03.40..sroa.03.40..i, <double 0.000000e+00, double poison>
  %i.dg = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fadd <2 x double> %i.df, %i.dg
  %22 = extractelement <2 x double> %.sroa.03.i.32..sroa.03.i.32..sroa.03.i.32..sroa.03.32..sroa.03.32..sroa.03.32..i, i64 0
  %i.di = fmul double %22, 0.000000e+00
  %23 = extractelement <2 x double> %.sroa.03.i.40..sroa.03.i.40..sroa.03.i.40..sroa.03.40..sroa.03.40..sroa.03.40..i, i64 0
  %i.dj = fadd double %i.di, %23
  %.sroa.03.i.48..sroa.03.i.48..sroa.03.i.48..sroa.03.48..sroa.03.48..sroa.03.48..i = load <2 x double>, ptr %.sroa.03.i.8.i.8.i.8..sroa_idx.a, align 16 ; 2 uses
  %i.dk = shufflevector <2 x double> %.sroa.03.i.48..sroa.03.i.48..sroa.03.i.48..sroa.03.48..sroa.03.48..sroa.03.48..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x double> %i.aw, %i.dk
  %.sroa.03.i.56..sroa.03.i.56..sroa.03.i.56..sroa.03.56..sroa.03.56..sroa.03.56..i = load <2 x double>, ptr %.sroa.03.i.16.i.16.i.16..sroa_idx.a, align 8 ; 4 uses
  %i.dm = shufflevector <2 x double> %.sroa.03.i.56..sroa.03.i.56..sroa.03.i.56..sroa.03.56..sroa.03.56..sroa.03.56..i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.ba, %i.dm
  %i.do = fadd <2 x double> %i.dl, %i.dn
  %24 = fmul <2 x double> %.sroa.03.i.56..sroa.03.i.56..sroa.03.i.56..sroa.03.56..sroa.03.56..sroa.03.56..i, <double poison, double 0.000000e+00>
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %26 = fadd <2 x double> %25, %i.do
  %27 = extractelement <2 x double> %.sroa.03.i.48..sroa.03.i.48..sroa.03.i.48..sroa.03.48..sroa.03.48..sroa.03.48..i, i64 0
  %i.dp = fmul double %27, 0.000000e+00
  %28 = shufflevector <2 x double> %.sroa.03.i.24..sroa.03.i.24..sroa.03.i.24..sroa.03.24..sroa.03.24..sroa.03.24..i, <2 x double> %.sroa.03.i.56..sroa.03.i.56..sroa.03.i.56..sroa.03.56..sroa.03.56..sroa.03.56..i, <2 x i32> <i32 0, i32 2>
  %29 = fmul <2 x double> %28, zeroinitializer
  %30 = insertelement <2 x double> %.sroa.03.i.56..sroa.03.i.56..sroa.03.i.56..sroa.03.56..sroa.03.56..sroa.03.56..i, double %i.dj, i64 0
  %31 = fadd <2 x double> %30, %29                ; 2 uses
  %32 = extractelement <2 x double> %31, i64 1
  %i.dq = fadd double %i.dp, %32
  store <2 x double> %i.cu, ptr %8, align 16, !tbaa !54
  store double %i.db, ptr %i.aa, align 16, !tbaa !70
  store <2 x double> %i.dh, ptr %i.y, align 16, !tbaa !54
  %33 = extractelement <2 x double> %31, i64 0
  store double %33, ptr %i.s, align 16, !tbaa !70
  store <2 x double> %26, ptr %i.z, align 16, !tbaa !54
  store double %i.dq, ptr %i.t, align 16, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i)
  %i.dr = mul nsw i64 %indvars.iv, %i.f
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.dr
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS0_INS_9TransposeINS1_IdLi4ELi4ELi0ELi4ELi4EEEEELin1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.es, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 3 uses
  %i.dt = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.af
  %i.du = getelementptr [8 x i8], ptr %i.ds, i64 %i.dt ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %8, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.dw = getelementptr [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.dx = shl nuw nsw i64 %index, 5
  %i.dy = shl i64 %index, 5
  %i.dz = shl i64 %index, 5
  %i.ea = shl i64 %index, 5
  %i.eb = getelementptr i8, ptr %i.dv, i64 %i.dx
  %i.ec = getelementptr i8, ptr %i.dv, i64 %i.dy
  %i.ed = getelementptr i8, ptr %i.ec, i64 32
  %i.ee = getelementptr i8, ptr %i.dv, i64 %i.dz
  %i.ef = getelementptr i8, ptr %i.ee, i64 64
  %i.eg = getelementptr i8, ptr %i.dv, i64 %i.ea
  %i.eh = getelementptr i8, ptr %i.eg, i64 96
  %i.ei = load double, ptr %i.eb, align 8, !tbaa !70
  %i.ej = load double, ptr %i.ed, align 8, !tbaa !70
  %i.ek = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.ej, i64 1
  %i.em = load double, ptr %i.ef, align 8, !tbaa !70
  %i.en = load double, ptr %i.eh, align 8, !tbaa !70
  %i.eo = insertelement <2 x double> poison, double %i.em, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.en, i64 1
  %i.eq = getelementptr i8, ptr %i.dw, i64 16
  store <2 x double> %i.el, ptr %i.dw, align 8, !tbaa !70
  store <2 x double> %i.ep, ptr %i.eq, align 8, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %scalar.ph.preheader, label %vector.body, !llvm.loop !85

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph
  %i.es = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.es, %i.h
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS0_INS_9TransposeINS1_IdLi4ELi4ELi0ELi4ELi4EEEEELin1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !88

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ew, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.et = getelementptr [8 x i8], ptr %i.du, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 5
  %i.eu = getelementptr i8, ptr %i.dv, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !70
  store double %i.ev, ptr %i.et, align 8, !tbaa !70
  %i.ew = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ew, %i.f
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !89

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS0_INS_9TransposeINS1_IdLi4ELi4ELi0ELi4ELi4EEEEELin1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.o
  br i1 %exitcond.not, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit._crit_edge, label %bb.i, !llvm.loop !90

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.au, %bb.h ]
  %i.ex = load ptr, ptr %7, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !52
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ex to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fc) #19
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit36

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit36: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.fd = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEED2Ev.exit38, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit36
  call void @free(ptr noundef nonnull %i.fd) #16
  br label %_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEED2Ev.exit38

_ZNSt6vectorIN5Eigen10QuaternionIdLi0EEENS0_17aligned_allocatorIS2_EEED2Ev.exit38: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit36, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl18forward_kinematicsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELi1ELi0ELin1ELi1EEERKSt6vectorINS0_10QuaternionIdLi0EEENS0_17aligned_allocatorISD_EEERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.10", align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = icmp ugt i64 %i.b, 384307168202282325
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #20
  unreachable

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i, label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.e = mul nuw nsw i64 %i.b, 24                 ; 3 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17 ; 5 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.e
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.j = phi ptr [ %i.d, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.g, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EEC2EmRKS3_.exit.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !48
  invoke void @_ZN3igl18forward_kinematicsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELi1ELi0ELin1ELi1EEERKSt6vectorINS0_10QuaternionIdLi0EEENS0_17aligned_allocatorISD_EEERKSB_INS1_IdLi3ELi1ELi0ELi3ELi1EEESaISJ_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.loopexit
  %i.k = load ptr, ptr %5, align 8, !tbaa !51     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #19
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void

bb.d:                                             ; preds = %.loopexit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %5, align 8, !tbaa !51     ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #19
  br label %_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit11

_ZNSt6vectorIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESaIS2_EED2Ev.exit11: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %i.q
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_0
