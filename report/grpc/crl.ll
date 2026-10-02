Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/crl?download=true
inline.NumInlined: 489
inline.NumDeleted: 256
begin_hunk_0_@_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_:bb.a
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.018, i64 16, i1 false), !tbaa.struct !60
  %i.h = ptrtoint ptr %.sroa.0.018 to i64
  %i.i = sub i64 %i.h, %i.b                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 4                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e, !prof !161

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.m = sub nsw i64 0, %i.j
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i64 %i.i, 16
  br i1 %i.o, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.pn17, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !60
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.j

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn17, i64 24
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !59 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.sroa.07.0.i = phi ptr [ %.sroa.0.018, %bb.g ], [ %.sroa.0.0.i, %bb.i ] ; 5 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -16 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !58 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i, i64 %.sroa.01.0.copyload.i) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.h
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !59
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.5.0.copyload.i, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #19 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.h
  %i.t = sub i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i.i
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ], [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  %i.u = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.u, label %bb.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

bb.i:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i, i64 16, i1 false), !tbaa.struct !60
  br label %bb.h, !llvm.loop !0

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt17basic_string_viewIcSt11char_traitsIcEENS_17__normal_iteratorIPS6_St6vectorIS6_SaIS6_EEEEEEbRT_T0_.exit.i
  store i64 %.sroa.01.0.copyload.i, ptr %.sroa.07.0.i, align 8, !tbaa !58
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !160

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt18__set_intersectionIN9__gnu_cxx17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEESA_St20back_insert_iteratorIS9_ENS0_5__ops15_Iter_less_iterEET1_T_SG_T0_SH_SF_T2_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond34 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond34, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.024.036 = phi ptr [ %0, %.lr.ph ], [ %.sroa.024.1, %bb.j ] ; 7 uses
  %.sroa.020.035 = phi ptr [ %2, %.lr.ph ], [ %.sroa.020.1, %bb.j ] ; 5 uses
  %.sroa.01.0.copyload.i = load i64, ptr %.sroa.024.036, align 8, !tbaa !58 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.020.035, align 8, !tbaa !58 ; 4 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 %.sroa.01.0.copyload.i) ; 3 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.e, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.020.035, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !59 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.024.036, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !59 ; 2 uses
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #19 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread29, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit: ; preds = %bb.b
  %i.h = sub i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread29: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.j = sub i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.l = icmp slt i32 %i.f, 0
  br i1 %i.l, label %bb.c, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.024.036, i64 16
  br label %bb.j

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread29, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit.thread
  %i.n = tail call i32 @memcmp(ptr noundef %.sroa.2.0.copyload.i, ptr noundef %.sroa.22.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #19 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit18

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8
  %i.p = sub i64 %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  %spec.select7.i.i.i.i15 = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i16 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i15, i64 2147483647)
  %.0.i4.i.i.i17 = trunc nsw i64 %.08.i.i.i.i16 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit18

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit18: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14
  %.0.i.i.i13 = phi i32 [ %.0.i4.i.i.i17, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14 ], [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i8 ]
  %i.q = icmp slt i32 %.0.i.i.i13, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.020.035, i64 16
  br label %bb.j

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS7_SaIS7_EEEESC_EEbT_T0_.exit18
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !61   ; 5 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !56
  %.not.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.036, i64 16, i1 false), !tbaa.struct !60
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.c, align 8, !tbaa !61
  br label %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %4, align 8, !tbaa !55     ; 5 uses
  %i.x = ptrtoint ptr %i.s to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775792
  br i1 %i.aa, label %bb.h, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ab = ashr exact i64 %i.z, 4                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 576460752303423487)
  %i.af = select i1 %i.ad, i64 576460752303423487, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 4
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #24 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.036, i64 16, i1 false), !tbaa.struct !60
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.w, %i.s
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !60, !alias.scope !167
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !165

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ao) #20
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.ah, ptr %4, align 8, !tbaa !55
  store ptr %i.al, ptr %i.c, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !56
  br label %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSERKS4_.exit

_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSERKS4_.exit: ; preds = %bb.f, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.024.036, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.020.035, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSERKS4_.exit, %bb.c
  %.sroa.020.1 = phi ptr [ %.sroa.020.035, %bb.c ], [ %i.r, %bb.d ], [ %i.ar, %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSERKS4_.exit ] ; 2 uses
  %.sroa.024.1 = phi ptr [ %i.m, %bb.c ], [ %.sroa.024.036, %bb.d ], [ %i.aq, %_ZNSt20back_insert_iteratorISt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS4_EEEaSERKS4_.exit ] ; 2 uses
  %i.as = icmp ne ptr %.sroa.024.1, %1
  %i.at = icmp ne ptr %.sroa.020.1, %3
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !166

.critedge:                                        ; preds = %bb.j, %bb.a
  ret ptr %4
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !52}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"bool", !8, i64 0}
!13 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl3der9BitStringEE", !8, i64 0, !12, i64 24}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl3der5InputEE", !8, i64 0, !12, i64 16}
!17 = !{!16, !12, i64 16}
!18 = !{!"_ZTSN4bssl10CrlVersionE", !8, i64 0}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!"_ZTSN4bssl4SpanIKhEE", !20, i64 0, !21, i64 8}
!23 = !{!"_ZTSN4bssl3der5InputE", !22, i64 0}
!24 = !{!"short", !8, i64 0}
!25 = !{!"_ZTSN4bssl3der15GeneralizedTimeE", !24, i64 0, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6}
!26 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl3der15GeneralizedTimeEE", !8, i64 0, !12, i64 8}
!27 = !{!"_ZTSSt17_Optional_payloadIN4bssl3der15GeneralizedTimeELb1ELb1ELb1EE", !26, i64 0}
!28 = !{!"_ZTSSt14_Optional_baseIN4bssl3der15GeneralizedTimeELb1ELb1EE", !27, i64 0}
!29 = !{!"_ZTSSt8optionalIN4bssl3der15GeneralizedTimeEE", !28, i64 0}
!30 = !{!"_ZTSSt17_Optional_payloadIN4bssl3der5InputELb1ELb1ELb1EE", !16, i64 0}
!31 = !{!"_ZTSSt14_Optional_baseIN4bssl3der5InputELb1ELb1EE", !30, i64 0}
!32 = !{!"_ZTSSt8optionalIN4bssl3der5InputEE", !31, i64 0}
!33 = !{!"_ZTSN4bssl20ParsedCrlTbsCertListE", !18, i64 0, !23, i64 8, !23, i64 24, !25, i64 40, !29, i64 48, !32, i64 64, !32, i64 88}
!34 = !{!33, !18, i64 0}
!35 = !{!26, !12, i64 8}
!36 = !{!"p1 _ZTSN4bssl12GeneralNamesE", !19, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN4bssl18ContainedCertsTypeE", !8, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!41 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !19, i64 0}
!42 = !{!"_ZTSSt18_Rb_tree_node_base", !40, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!43 = !{!"_ZTSSt15_Rb_tree_header", !42, i64 0, !21, i64 32}
!44 = !{!43, !40, i64 0}
!45 = !{!43, !41, i64 8}
!46 = !{!43, !41, i64 16}
!47 = !{!43, !41, i64 24}
!48 = !{!43, !21, i64 32}
!49 = !{!"_ZTSN4bssl15ParsedExtensionE", !23, i64 0, !23, i64 16, !12, i64 32}
!50 = !{!"_ZTSSt4pairIKN4bssl3der5InputENS0_15ParsedExtensionEE", !23, i64 0, !49, i64 16}
!51 = !{!50, !12, i64 48}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !19, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 0}
!56 = !{!54, !53, i64 16}
!57 = !{!53, !53, i64 0}
!58 = !{!21, !21, i64 0}
!59 = !{!20, !20, i64 0}
!60 = !{i64 0, i64 8, !58, i64 8, i64 8, !59}
!61 = !{!54, !53, i64 8}
!62 = !{!13, !12, i64 24}
!63 = !{!9, !9, i64 0}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = !{!"p1 _ZTSSt10shared_ptrIKN4bssl17ParsedCertificateEE", !19, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIKN4bssl17ParsedCertificateEESaIS4_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!67, !66, i64 8}
!69 = !{!67, !66, i64 0}
!70 = !{!"p1 _ZTSN4bssl17ParsedCertificateE", !19, i64 0}
!71 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!72 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !71, i64 0}
!73 = !{!"_ZTSSt12__shared_ptrIKN4bssl17ParsedCertificateELN9__gnu_cxx12_Lock_policyE2EE", !70, i64 0, !72, i64 8}
!74 = !{!73, !70, i64 0}
!75 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!76 = !{!75, !20, i64 0}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !75, i64 0, !21, i64 8, !8, i64 16}
!78 = !{!77, !21, i64 8}
!79 = !{!8, !8, i64 0}
!80 = !{!77, !20, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl12GeneralNamesELb0EE", !36, i64 0}
!82 = !{!81, !36, i64 0}
!83 = !{!"p1 _ZTS16crypto_buffer_st", !19, i64 0}
!84 = !{!"_ZTSSt10_Head_baseILm0EP16crypto_buffer_stLb0EE", !83, i64 0}
!85 = !{!"_ZTSSt11_Tuple_implILm0EJP16crypto_buffer_stN4bssl8internal7DeleterEEE", !84, i64 0}
!86 = !{!"_ZTSSt5tupleIJP16crypto_buffer_stN4bssl8internal7DeleterEEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implI16crypto_buffer_stN4bssl8internal7DeleterEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataI16crypto_buffer_stN4bssl8internal7DeleterELb1ELb1EE", !87, i64 0}
!89 = !{!"_ZTSSt10unique_ptrI16crypto_buffer_stN4bssl8internal7DeleterEE", !88, i64 0}
!90 = !{!"_ZTSN4bssl3der9BitStringE", !23, i64 0, !8, i64 16}
!91 = !{!"_ZTSN4bssl18CertificateVersionE", !8, i64 0}
!92 = !{!"_ZTSSt17_Optional_payloadIN4bssl3der9BitStringELb1ELb1ELb1EE", !13, i64 0}
!93 = !{!"_ZTSSt14_Optional_baseIN4bssl3der9BitStringELb1ELb1EE", !92, i64 0}
!94 = !{!"_ZTSSt8optionalIN4bssl3der9BitStringEE", !93, i64 0}
!95 = !{!"_ZTSN4bssl20ParsedTbsCertificateE", !91, i64 0, !23, i64 8, !23, i64 24, !23, i64 40, !25, i64 56, !25, i64 64, !23, i64 72, !23, i64 88, !94, i64 104, !94, i64 136, !32, i64 168}
!96 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl18SignatureAlgorithmEE", !8, i64 0, !12, i64 4}
!97 = !{!"_ZTSSt17_Optional_payloadIN4bssl18SignatureAlgorithmELb1ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt14_Optional_baseIN4bssl18SignatureAlgorithmELb1ELb1EE", !97, i64 0}
!99 = !{!"_ZTSSt8optionalIN4bssl18SignatureAlgorithmEE", !98, i64 0}
!100 = !{!"_ZTSN4bssl22ParsedBasicConstraintsE", !12, i64 0, !12, i64 1, !8, i64 2}
!101 = !{!"p1 _ZTSN4bssl3der5InputE", !19, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!103 = !{!"_ZTSNSt12_Vector_baseIN4bssl3der5InputESaIS2_EE12_Vector_implE", !102, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIN4bssl3der5InputESaIS2_EE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIN4bssl3der5InputESaIS2_EE", !104, i64 0}
!106 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl12GeneralNamesESt14default_deleteIS1_EEE", !81, i64 0}
!107 = !{!"_ZTSSt5tupleIJPN4bssl12GeneralNamesESt14default_deleteIS1_EEE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl12GeneralNamesESt14default_deleteIS1_EE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl12GeneralNamesESt14default_deleteIS1_ELb1ELb1EE", !108, i64 0}
!110 = !{!"_ZTSSt10unique_ptrIN4bssl12GeneralNamesESt14default_deleteIS1_EE", !109, i64 0}
!111 = !{!"p1 _ZTSN4bssl15NameConstraintsE", !19, i64 0}
!112 = !{!"_ZTSSt10_Head_baseILm0EPN4bssl15NameConstraintsELb0EE", !111, i64 0}
!113 = !{!"_ZTSSt11_Tuple_implILm0EJPN4bssl15NameConstraintsESt14default_deleteIS1_EEE", !112, i64 0}
!114 = !{!"_ZTSSt5tupleIJPN4bssl15NameConstraintsESt14default_deleteIS1_EEE", !113, i64 0}
!115 = !{!"_ZTSSt15__uniq_ptr_implIN4bssl15NameConstraintsESt14default_deleteIS1_EE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_dataIN4bssl15NameConstraintsESt14default_deleteIS1_ELb1ELb1EE", !115, i64 0}
!117 = !{!"_ZTSSt10unique_ptrIN4bssl15NameConstraintsESt14default_deleteIS1_EE", !116, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implE", !54, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !118, i64 0}
!120 = !{!"_ZTSSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !119, i64 0}
!121 = !{!"_ZTSSt22_Optional_payload_baseIhE", !8, i64 0, !12, i64 1}
!122 = !{!"_ZTSSt17_Optional_payloadIhLb1ELb1ELb1EE", !121, i64 0}
!123 = !{!"_ZTSSt14_Optional_baseIhLb1ELb1EE", !122, i64 0}
!124 = !{!"_ZTSSt8optionalIhE", !123, i64 0}
!125 = !{!"_ZTSN4bssl23ParsedPolicyConstraintsE", !124, i64 0, !124, i64 2}
!126 = !{!"p1 _ZTSN4bssl19ParsedPolicyMappingE", !19, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIN4bssl19ParsedPolicyMappingESaIS1_EE17_Vector_impl_dataE", !126, i64 0, !126, i64 8, !126, i64 16}
!128 = !{!"_ZTSNSt12_Vector_baseIN4bssl19ParsedPolicyMappingESaIS1_EE12_Vector_implE", !127, i64 0}
!129 = !{!"_ZTSSt12_Vector_baseIN4bssl19ParsedPolicyMappingESaIS1_EE", !128, i64 0}
!130 = !{!"_ZTSSt6vectorIN4bssl19ParsedPolicyMappingESaIS1_EE", !129, i64 0}
!131 = !{!"_ZTSSt22_Optional_payload_baseIN4bssl28ParsedAuthorityKeyIdentifierEE", !8, i64 0, !12, i64 72}
!132 = !{!"_ZTSSt17_Optional_payloadIN4bssl28ParsedAuthorityKeyIdentifierELb1ELb0ELb0EE", !131, i64 0}
!133 = !{!"_ZTSSt17_Optional_payloadIN4bssl28ParsedAuthorityKeyIdentifierELb0ELb0ELb0EE", !132, i64 0}
!134 = !{!"_ZTSSt14_Optional_baseIN4bssl28ParsedAuthorityKeyIdentifierELb0ELb0EE", !133, i64 0}
!135 = !{!"_ZTSSt8optionalIN4bssl28ParsedAuthorityKeyIdentifierEE", !134, i64 0}
!136 = !{!"_ZTSSt4lessIN4bssl3der5InputEE"}
!137 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4bssl3der5InputEEE", !136, i64 0}
!138 = !{!"_ZTSNSt8_Rb_treeIN4bssl3der5InputESt4pairIKS2_NS0_15ParsedExtensionEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !137, i64 0, !43, i64 8}
!139 = !{!"_ZTSSt8_Rb_treeIN4bssl3der5InputESt4pairIKS2_NS0_15ParsedExtensionEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE", !138, i64 0}
!140 = !{!"_ZTSSt3mapIN4bssl3der5InputENS0_15ParsedExtensionESt4lessIS2_ESaISt4pairIKS2_S3_EEE", !139, i64 0}
!141 = !{!"_ZTSN4bssl17ParsedCertificateE", !89, i64 0, !23, i64 8, !23, i64 24, !23, i64 40, !90, i64 56, !95, i64 80, !99, i64 272, !77, i64 280, !77, i64 312, !12, i64 344, !100, i64 345, !12, i64 348, !90, i64 352, !12, i64 376, !105, i64 384, !49, i64 408, !110, i64 448, !117, i64 456, !12, i64 464, !49, i64 472, !120, i64 512, !120, i64 536, !12, i64 560, !105, i64 568, !12, i64 592, !125, i64 593, !12, i64 597, !130, i64 600, !124, i64 624, !135, i64 632, !32, i64 712, !140, i64 736}
!142 = !{!141, !12, i64 344}
!143 = !{!100, !12, i64 0}
!144 = !{!95, !91, i64 0}
!145 = !{!141, !12, i64 348}
!146 = distinct !{!146, !52}
!147 = distinct !{!147, !52}
!148 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!149 = distinct !{!149, !52}
!150 = !{!42, !41, i64 24}
!151 = !{!42, !41, i64 16}
!152 = distinct !{!152, !52}
!153 = distinct !{!153, !52}
!154 = distinct !{!154, !52}
!155 = distinct !{!155, !52}
!156 = distinct !{!156, !52}
!157 = distinct !{!157, !52}
!158 = distinct !{!158, !52}
!159 = distinct !{!159, !52}
!160 = distinct !{!160, !52}
!161 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!162 = distinct !{!162, i1 false, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_"}
!163 = distinct !{!163, !162, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!164 = distinct !{!164, !162, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!165 = distinct !{!165, !52}
!166 = distinct !{!166, !52}
!167 = !{!164, !163}
end_hunk_0
