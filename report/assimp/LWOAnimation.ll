inline.NumInlined: 685
inline.NumDeleted: 224
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver16InterpolateTrackERSt6vectorI11aiVectorKeySaIS3_EERS3_d:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j(ptr noundef nonnull align 8 captures(none) dereferenceable(176) initializes((112, 136), (164, 168)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.Assimp::LWO::Envelope", align 16 ; 11 uses
  %7 = alloca %"struct.Assimp::LWO::Envelope", align 16 ; 11 uses
  %8 = alloca %"struct.Assimp::LWO::Envelope", align 16 ; 11 uses
  %9 = alloca %struct.aiVectorKey, align 8        ; 17 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 7
end_hunk_1
begin_hunk_2_@_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j:bb.a
  br label %bb.ba

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.h
  %.sroa.phi245.a = phi ptr [ %6, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %2, %bb.h ], [ %2, %bb.b ] ; 4 uses
  %.sroa.11.0183 = phi float [ %.sroa.11.0, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11.0, %bb.h ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %.sroa.phi253 = getelementptr inbounds nuw i8, ptr %.sroa.phi245.a, i64 16
  %.sroa.phi249 = getelementptr inbounds nuw i8, ptr %.sroa.phi245.a, i64 24
  %.sroa.phi245 = getelementptr inbounds nuw i8, ptr %.sroa.phi245.a, i64 24
  %.not40 = icmp eq ptr %3, null
  br i1 %.not40, label %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i61, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE9push_backERKS2_.exit75

end_hunk_2
begin_hunk_3_@_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j:bb.a
  %i.aj = fdiv double 1.000000e+00, %.
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %.sroa.phi245, align 8, !noalias !16
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -40
  %i.an = load ptr, ptr %.sroa.phi242, align 8, !noalias !19
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -40
end_hunk_3
begin_hunk_4_@_ZN6Assimp3LWO12AnimResolver7GetKeysERSt6vectorI11aiVectorKeySaIS3_EEPNS0_8EnvelopeES8_S8_j:bb.a
_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.n
  %i.ci = phi ptr [ %.pre205, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.ae, %bb.n ]
  %i.cj = phi ptr [ %.pre204, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %i.z, %bb.n ]
  %i.ck = phi ptr [ %.pre, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ %.sroa.phi245.a, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
end_hunk_4
