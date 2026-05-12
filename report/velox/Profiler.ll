inline.NumInlined: 1078
inline.NumDeleted: 615
begin_hunk_0_@_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE
define void @_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.97", align 8 ; 6 uses
  %4 = alloca %"class.std::function.2", align 16  ; 11 uses
  %5 = alloca %"class.std::function", align 16    ; 11 uses
  %i.a = alloca [1000 x i8], align 16             ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFvvEEC2ERKS1_.exit.i, label %bb.b
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE:bb.a
bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.b, align 16, !tbaa !25  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE:bb.a

_ZNSt8functionIFvvEEC2ERKS1_.exit.i:              ; preds = %bb.c, %bb.a
  %i.l = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.f, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8facebook5velox7process8Profiler11startExtra_E, i64 16, i1 false), !tbaa.struct !167
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr @_ZN8facebook5velox7process8Profiler11startExtra_E, align 8, !tbaa !15
  %i.m = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler11startExtra_E, i64 16), align 8, !tbaa !166
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler11startExtra_E, i64 16), align 8, !tbaa !166 ; 2 uses
  store <2 x ptr> %i.m, ptr %i.b, align 16, !tbaa !166
  store <2 x ptr> %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler11startExtra_E, i64 16), align 8, !tbaa !166
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEaSERKS1_.exit, label %bb.g
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.not.i.i11 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not.i.i11, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i, label %bb.i
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE:bb.a
bb.k:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %i.r, align 16, !tbaa !25  ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i12, label %common.resume, label %bb.l

end_hunk_5
begin_hunk_6_@_ZN8facebook5velox7process8Profiler5startERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFvvEESB_IFS8_vEE:bb.a

_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEC2ERKS7_.exit.i: ; preds = %bb.j, %_ZNSt8functionIFvvEEaSERKS1_.exit
  %i.ab = phi <2 x ptr> [ splat (ptr null), %_ZNSt8functionIFvvEEaSERKS1_.exit ], [ %i.v, %bb.j ]
  %.sroa.0.i.i.i10.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, i64 16, i1 false), !tbaa.struct !167
  store <2 x i64> %.sroa.0.i.i.i10.sroa.0.0.copyload, ptr @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, align 8, !tbaa !15
  %i.ac = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, i64 16), align 8, !tbaa !166
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, i64 16), align 8, !tbaa !166 ; 2 uses
  store <2 x ptr> %i.ac, ptr %i.r, align 16, !tbaa !166
  store <2 x ptr> %i.ab, ptr getelementptr inbounds nuw (i8, ptr @_ZN8facebook5velox7process8Profiler12extraReport_B5cxx11E, i64 16), align 8, !tbaa !166
  %.not.i.i14 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i14, label %_ZNSt8functionIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEaSERKS7_.exit, label %bb.n
end_hunk_6
