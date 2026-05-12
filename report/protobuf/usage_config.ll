inline.NumInlined: 308
inline.NumDeleted: 167
begin_hunk_0_@_ZN4absl12lts_2025051219SetFlagsUsageConfigENS0_16FlagsUsageConfigE:bb.a
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.2", align 16  ; 11 uses
  %3 = alloca %"class.std::function.0", align 16  ; 11 uses
  %4 = alloca %"class.std::function", align 16    ; 11 uses
  %5 = alloca %"class.std::function", align 16    ; 11 uses
  %6 = alloca %"class.std::function", align 16    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 16, !tbaa !15  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i: ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !53
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !14
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 16, !tbaa !14
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !14
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit, label %bb.g
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %.not.i.i.not.i.i7 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i7, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10, label %bb.i
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %i.s, align 16, !tbaa !15  ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i8, label %common.resume, label %bb.l

end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i10: ; preds = %bb.j, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit
  %i.ad = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit ], [ %i.x, %bb.j ]
  %.sroa.0.i.i.i6.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 16, i1 false), !tbaa.struct !53
  store <2 x i64> %.sroa.0.i.i.i6.sroa.0.0.copyload, ptr %i.r, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !14
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  store <2 x ptr> %i.af, ptr %i.s, align 16, !tbaa !14
  store <2 x ptr> %i.ad, ptr %i.ae, align 8, !tbaa !14
  %.not.i.i11 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i11, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12, label %bb.n
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.not.i.i14 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i14, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17, label %bb.p
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
bb.r:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 16, !tbaa !15 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i15, label %common.resume, label %bb.s

end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a

_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEC2ERKS5_.exit.i17: ; preds = %bb.q, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12
  %i.aw = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit12 ], [ %i.aq, %bb.q ]
  %.sroa.0.i.i.i13.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !53
  store <2 x i64> %.sroa.0.i.i.i13.sroa.0.0.copyload, ptr %i.ak, align 8, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !14
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.al, align 16, !tbaa !14
  store <2 x ptr> %i.aw, ptr %i.ax, align 8, !tbaa !14
  %.not.i.i18 = icmp eq ptr %i.az, null
  br i1 %.not.i.i18, label %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19, label %bb.u
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.not.i.i21 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.not.i.i21, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i, label %bb.w
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
bb.y:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %i.be, align 16, !tbaa !15 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i22, label %common.resume, label %bb.z

end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i: ; preds = %bb.x, %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19
  %i.bp = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEEaSERKS5_.exit19 ], [ %i.bj, %bb.x ]
  %.sroa.0.i.i.i20.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 16, i1 false), !tbaa.struct !53
  store <2 x i64> %.sroa.0.i.i.i20.sroa.0.0.copyload, ptr %i.bd, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.br = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !14
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !14 ; 2 uses
  store <2 x ptr> %i.br, ptr %i.be, align 16, !tbaa !14
  store <2 x ptr> %i.bp, ptr %i.bq, align 8, !tbaa !14
  %.not.i.i24 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i24, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit, label %bb.ab
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.not.i.i26 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.not.i.i26, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i, label %bb.ad
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a
bb.af:                                            ; preds = %bb.ad
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %i.bx, align 16, !tbaa !15 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i27, label %common.resume, label %bb.ag

end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2025051216FlagsUsageConfigaSERKS1_:bb.a

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEC2ERKS9_.exit.i: ; preds = %bb.ae, %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit
  %i.ci = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit ], [ %i.cc, %bb.ae ]
  %.sroa.0.i.i.i25.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 16, i1 false), !tbaa.struct !53
  store <2 x i64> %.sroa.0.i.i.i25.sroa.0.0.copyload, ptr %i.bw, align 8, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ck = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !14
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !14 ; 2 uses
  store <2 x ptr> %i.ck, ptr %i.bx, align 16, !tbaa !14
  store <2 x ptr> %i.ci, ptr %i.cj, align 8, !tbaa !14
  %.not.i.i29 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i29, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_EEEaSERKS9_.exit, label %bb.ai
end_hunk_14
