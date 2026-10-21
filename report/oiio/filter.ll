Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/filter?download=true
inline.NumInlined: 371
inline.NumDeleted: 99
begin_hunk_0_@_ZN11OpenImageIO4v3_18Filter1D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEf:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cs = fdiv float 2.000000e+00, %i.co
  store float %i.cs, ptr %i.cr, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN11OpenImageIO4v3_113FilterSimon1DE, i64 16), ptr %i.cm, align 8, !tbaa !24
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit100.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i96: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i36
  %bcmp.i97 = tail call i32 @bcmp(ptr %i.a, ptr nonnull @.str.17, i64 %i.c)
  %.not.i.i98 = icmp eq i32 %bcmp.i97, 0
  br i1 %.not.i.i98, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit100, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit100.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit100: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i96
  %i.ct = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 5 uses
  %i.cu = fcmp ogt float %1, 0.000000e+00
  %i.cv = select i1 %i.cu, float %1, float 4.000000e+00 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store float %i.cv, ptr %i.cw, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store float -1.000000e+00, ptr %i.cx, align 4, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cz = fdiv float 2.000000e+00, %i.cv
  store float %i.cz, ptr %i.cy, align 8, !tbaa !52
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN11OpenImageIO4v3_114FilterRifman1DE, i64 16), ptr %i.ct, align 8, !tbaa !24
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit100.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit100.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i91, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i86, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i71, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i41, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i96, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit100, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit95, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit85, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit75, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit70, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit55, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit50, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit30, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit25, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit20
  %.0 = phi ptr [ %i.m, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit ], [ %i.q, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit20 ], [ %i.z, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit25 ], [ %i.af, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit30 ], [ %i.al, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit35 ], [ %i.ar, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit45 ], [ %i.ax, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit50 ], [ %i.bd, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit55 ], [ %i.bj, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit70 ], [ %i.bs, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit75 ], [ %i.by, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit85 ], [ %i.cf, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit90 ], [ %i.cm, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit95 ], [ %i.ct, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit100 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i86 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i96 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i41 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i71 ], [ null, %bb.a ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i31 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i91 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN11OpenImageIO4v3_18Filter1D7destroyEPS1_(ptr noundef %0) #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN11OpenImageIO4v3_18Filter2D11num_filtersEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret i32 17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN11OpenImageIO4v3_18Filter2D14get_filterdescEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [24 x i8], ptr @_ZN11OpenImageIO4v3_1L13filter2d_listE, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN11OpenImageIO4v3_18Filter2D14get_filterdescEiPNS0_10FilterDescE(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [24 x i8], ptr @_ZN11OpenImageIO4v3_1L13filter2d_listE, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18Filter2D13create_sharedENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.0") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) dead_on_return %1, float noundef %2, float noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  store ptr %i.a, ptr %4, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.d, ptr %i.b, align 8, !tbaa !18
  %i.e = call noundef ptr @_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr noundef nonnull dead_on_return %4, float noundef %2, float noundef %3) ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !22
  %i.g = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14
          to label %_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEC2IS2_PFvPS2_EvEEPT_T0_.exit unwind label %bb.b ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #15 ; 0 uses
  %i.k = icmp eq ptr %i.e, null
  br i1 %i.k, label %_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.e) #15, !inline_history !102
  br label %_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_.exit

_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_.exit: ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #16
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #17
  unreachable

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_.exit
  unreachable

_ZNSt10shared_ptrIKN11OpenImageIO4v3_18Filter2DEEC2IS2_PFvPS2_EvEEPT_T0_.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.r, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 1, ptr %i.s, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN11OpenImageIO4v3_18Filter2DEPFvS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.g, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_, ptr %i.t, align 8, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.e, ptr %i.u, align 8, !tbaa !104
  store ptr %i.g, ptr %i.f, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr nofree noundef readonly captures(none) dead_on_return %0, float noundef %1, float noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp ugt float %2, 0.000000e+00
  %.036 = select i1 %i.a, float %2, float %1      ; 18 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !17     ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 19 uses
  switch i64 %i.d, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread [
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i48
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i58
    i64 15, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i78
    i64 13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i83
    i64 5, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i118
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.e = load i16, ptr %i.b, align 1
  %i.f = xor i16 %i.e, 28514
  %i.g = getelementptr i8, ptr %i.b, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 %i.i, 120
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14 ; 4 uses
  %i.o = fcmp ogt float %1, 0.000000e+00
  %i.p = select i1 %i.o, float %1, float 1.000000e+00
  %i.q = fcmp ogt float %.036, 0.000000e+00
  %i.r = select i1 %i.q, float %.036, float 1.000000e+00
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store float %i.p, ptr %i.s, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store float %i.r, ptr %i.t, align 4, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_111FilterBox2DE, i64 16), ptr %i.n, align 8, !tbaa !24
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38: ; preds = %bb.a
  %bcmp.i39 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.1, i64 %i.d)
  %.not.i.i40 = icmp eq i32 %bcmp.i39, 0
  br i1 %.not.i.i40, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit42, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit42: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38
  %i.u = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.v = insertelement <2 x float> poison, float %1, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.036, i64 1 ; 2 uses
  %i.x = fcmp ogt <2 x float> %i.w, zeroinitializer
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_116FilterTriangle2DE, i64 16), ptr %i.u, align 8, !tbaa !24
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = select <2 x i1> %i.x, <2 x float> %i.w, <2 x float> splat (float 2.000000e+00) ; 2 uses
  store <2 x float> %i.z, ptr %i.y, align 8, !tbaa !11
  %4 = fdiv <2 x float> splat (float 2.000000e+00), %i.z
  store <2 x float> %4, ptr %3, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i38
  %i.aa = load i64, ptr %i.b, align 1
  %i.ab = icmp ne i64 %i.aa, 7953754361492234599
  %i.ac = zext i1 %i.ab to i32
  %.not.i.i45 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i45, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit47, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit47: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43
  %i.ad = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.ae = insertelement <2 x float> poison, float %1, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %.036, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, zeroinitializer
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_116FilterGaussian2DE, i64 16), ptr %i.ad, align 8, !tbaa !24
  %5 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> splat (float 3.000000e+00) ; 2 uses
  store <2 x float> %i.ai, ptr %i.ah, align 8, !tbaa !11
  %6 = fdiv <2 x float> splat (float 2.000000e+00), %i.ai
  store <2 x float> %6, ptr %5, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i48: ; preds = %bb.a
  %bcmp.i49 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.3, i64 %i.d)
  %.not.i.i50 = icmp eq i32 %bcmp.i49, 0
  br i1 %.not.i.i50, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit52, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i93

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i48
  %i.aj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.ak = insertelement <2 x float> poison, float %1, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %.036, i64 1 ; 2 uses
  %i.am = fcmp ogt <2 x float> %i.al, zeroinitializer
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_121FilterSharpGaussian2DE, i64 16), ptr %i.aj, align 8, !tbaa !24
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = select <2 x i1> %i.am, <2 x float> %i.al, <2 x float> splat (float 2.000000e+00) ; 2 uses
  store <2 x float> %i.ao, ptr %i.an, align 8, !tbaa !11
  %8 = fdiv <2 x float> splat (float 2.000000e+00), %i.ao
  store <2 x float> %8, ptr %7, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53: ; preds = %bb.a
  %bcmp.i54 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.4, i64 %i.d)
  %.not.i.i55 = icmp eq i32 %bcmp.i54, 0
  br i1 %.not.i.i55, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit57, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i58: ; preds = %bb.a
  %bcmp.i59 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.5, i64 %i.d)
  %.not.i.i60 = icmp eq i32 %bcmp.i59, 0
  br i1 %.not.i.i60, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i133

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i58, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53
  %i.ap = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.aq = insertelement <2 x float> poison, float %1, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %.036, i64 1 ; 2 uses
  %i.as = fcmp ogt <2 x float> %i.ar, zeroinitializer
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_118FilterCatmullRom2DE, i64 16), ptr %i.ap, align 8, !tbaa !24
  %9 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = select <2 x i1> %i.as, <2 x float> %i.ar, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.au, ptr %i.at, align 8, !tbaa !11
  %10 = fdiv <2 x float> splat (float 4.000000e+00), %i.au
  store <2 x float> %10, ptr %9, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63: ; preds = %bb.a
  %bcmp.i64 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.6, i64 %i.d)
  %.not.i.i65 = icmp eq i32 %bcmp.i64, 0
  br i1 %.not.i.i65, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit67, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i88

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit67: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63
  %i.av = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.aw = insertelement <2 x float> poison, float %1, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %.036, i64 1 ; 2 uses
  %i.ay = fcmp ogt <2 x float> %i.ax, zeroinitializer
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_122FilterBlackmanHarris2DE, i64 16), ptr %i.av, align 8, !tbaa !24
  %11 = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = select <2 x i1> %i.ay, <2 x float> %i.ax, <2 x float> splat (float 3.000000e+00) ; 2 uses
  store <2 x float> %i.ba, ptr %i.az, align 8, !tbaa !11
  %12 = fdiv <2 x float> splat (float 2.000000e+00), %i.ba
  store <2 x float> %12, ptr %11, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68: ; preds = %bb.a
  %bcmp.i69 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.7, i64 %i.d)
  %.not.i.i70 = icmp eq i32 %bcmp.i69, 0
  br i1 %.not.i.i70, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i113

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68
  %i.bb = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 3 uses
  %i.bc = insertelement <2 x float> poison, float %1, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %.036, i64 1 ; 2 uses
  %i.be = fcmp ogt <2 x float> %i.bd, zeroinitializer
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_112FilterSinc2DE, i64 16), ptr %i.bb, align 8, !tbaa !24
  %i.bg = select <2 x i1> %i.be, <2 x float> %i.bd, <2 x float> splat (float 4.000000e+00)
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bi = fmul <4 x float> %i.bh, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>
  store <4 x float> %i.bi, ptr %i.bf, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i43
  %bcmp.i74 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.8, i64 %i.d)
  %.not.i.i75 = icmp eq i32 %bcmp.i74, 0
  br i1 %.not.i.i75, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit77, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i98

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i78: ; preds = %bb.a
  %bcmp.i79 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.9, i64 %i.d)
  %.not.i.i80 = icmp eq i32 %bcmp.i79, 0
  br i1 %.not.i.i80, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit77, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i108

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i83: ; preds = %bb.a
  %bcmp.i84 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.10, i64 %i.d)
  %.not.i.i85 = icmp eq i32 %bcmp.i84, 0
  br i1 %.not.i.i85, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit77, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit77: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i83, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i78, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
  %i.bj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.bk = insertelement <2 x float> poison, float %1, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %.036, i64 1 ; 2 uses
  %i.bm = fcmp ogt <2 x float> %i.bl, zeroinitializer
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_117FilterLanczos3_2DE, i64 16), ptr %i.bj, align 8, !tbaa !24
  %13 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bo = select <2 x i1> %i.bm, <2 x float> %i.bl, <2 x float> splat (float 6.000000e+00) ; 2 uses
  store <2 x float> %i.bo, ptr %i.bn, align 8, !tbaa !11
  %14 = fdiv <2 x float> splat (float 6.000000e+00), %i.bo
  store <2 x float> %14, ptr %13, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i88: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i63
  %bcmp.i89 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.18, i64 %i.d)
  %.not.i.i90 = icmp eq i32 %bcmp.i89, 0
  br i1 %.not.i.i90, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit92, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i93: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i48
  %bcmp.i94 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.19, i64 %i.d)
  %.not.i.i95 = icmp eq i32 %bcmp.i94, 0
  br i1 %.not.i.i95, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit92, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit92: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i93, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i88
  %i.bp = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.bq = insertelement <2 x float> poison, float %1, i64 0
  %i.br = insertelement <2 x float> %i.bq, float %.036, i64 1 ; 2 uses
  %i.bs = fcmp ogt <2 x float> %i.br, zeroinitializer
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_123FilterRadialLanczos3_2DE, i64 16), ptr %i.bp, align 8, !tbaa !24
  %15 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bu = select <2 x i1> %i.bs, <2 x float> %i.br, <2 x float> splat (float 6.000000e+00) ; 2 uses
  store <2 x float> %i.bu, ptr %i.bt, align 8, !tbaa !11
  %16 = fdiv <2 x float> splat (float 6.000000e+00), %i.bu
  store <2 x float> %16, ptr %15, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i98: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
  %bcmp.i99 = tail call i32 @bcmp(ptr nonnull %i.b, ptr nonnull @.str.11, i64 %i.d)
  %.not.i.i100 = icmp eq i32 %bcmp.i99, 0
  br i1 %.not.i.i100, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit102, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i103

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit102: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i98
  %i.bv = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.bw = insertelement <2 x float> poison, float %1, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %.036, i64 1 ; 2 uses
  %i.by = fcmp ogt <2 x float> %i.bx, zeroinitializer
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_116FilterMitchell2DE, i64 16), ptr %i.bv, align 8, !tbaa !24
  %17 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ca = select <2 x i1> %i.by, <2 x float> %i.bx, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.ca, ptr %i.bz, align 8, !tbaa !11
  %18 = fdiv <2 x float> splat (float 2.000000e+00), %i.ca
  store <2 x float> %18, ptr %17, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i103: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i98
  %i.cb = load i64, ptr %i.b, align 1
  %i.cc = icmp ne i64 %i.cb, 7308895159732874594
  %i.cd = zext i1 %i.cc to i32
  %.not.i.i105 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i105, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit107, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i108: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i78
  %bcmp.i109 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.13, i64 %i.d)
  %.not.i.i110 = icmp eq i32 %bcmp.i109, 0
  br i1 %.not.i.i110, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit107, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit107: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i108, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i103
  %i.ce = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14 ; 4 uses
  %i.cf = insertelement <2 x float> poison, float %1, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %.036, i64 1 ; 2 uses
  %i.ch = fcmp ogt <2 x float> %i.cg, zeroinitializer
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_115FilterBSpline2DE, i64 16), ptr %i.ce, align 8, !tbaa !24
  %19 = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cj = select <2 x i1> %i.ch, <2 x float> %i.cg, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.cj, ptr %i.ci, align 8, !tbaa !11
  %20 = fdiv <2 x float> splat (float 4.000000e+00), %i.cj
  store <2 x float> %20, ptr %19, align 8, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i113: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68
  %bcmp.i114 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.20, i64 %i.d)
  %.not.i.i115 = icmp eq i32 %bcmp.i114, 0
  br i1 %.not.i.i115, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit117, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit117: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i113
  %i.ck = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #14 ; 4 uses
  %i.cl = fcmp ogt float %1, 0.000000e+00
  %i.cm = select i1 %i.cl, float %1, float 1.000000e+00
  %i.cn = fcmp ogt float %.036, 0.000000e+00
  %i.co = select i1 %i.cn, float %.036, float 1.000000e+00
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %i.cm, ptr %i.cp, align 8, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.co, ptr %i.cq, align 4, !tbaa !58
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_112FilterDisk2DE, i64 16), ptr %i.ck, align 8, !tbaa !24
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i118: ; preds = %bb.a
  %bcmp.i119 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.14, i64 %i.d)
  %.not.i.i120 = icmp eq i32 %bcmp.i119, 0
  br i1 %.not.i.i120, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit122, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i128

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit122: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i118
  %i.cr = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 5 uses
  %i.cs = insertelement <2 x float> poison, float %1, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %.036, i64 1 ; 2 uses
  %i.cu = fcmp ogt <2 x float> %i.ct, zeroinitializer
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_113FilterCubic2DE, i64 16), ptr %i.cr, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store float 0.000000e+00, ptr %i.cw, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.cy = select <2 x i1> %i.cu, <2 x float> %i.ct, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.cy, ptr %i.cv, align 8, !tbaa !11
  %i.cz = fdiv <2 x float> splat (float 2.000000e+00), %i.cy
  store <2 x float> %i.cz, ptr %i.cx, align 4, !tbaa !11
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i113
  %bcmp.i124 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.15, i64 %i.d)
  %.not.i.i125 = icmp eq i32 %bcmp.i124, 0
  br i1 %.not.i.i125, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123
  %i.da = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 5 uses
  %i.db = insertelement <2 x float> poison, float %1, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %.036, i64 1 ; 2 uses
  %i.dd = fcmp ogt <2 x float> %i.dc, zeroinitializer
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store float -5.000000e-01, ptr %i.df, align 8, !tbaa !60
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %i.dh = select <2 x i1> %i.dd, <2 x float> %i.dc, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.dh, ptr %i.de, align 8, !tbaa !11
  %i.di = fdiv <2 x float> splat (float 2.000000e+00), %i.dh
  store <2 x float> %i.di, ptr %i.dg, align 4, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_112FilterKeys2DE, i64 16), ptr %i.da, align 8, !tbaa !24
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i128: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i118
  %bcmp.i129 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.16, i64 %i.d)
  %.not.i.i130 = icmp eq i32 %bcmp.i129, 0
  br i1 %.not.i.i130, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit132, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit132: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i128
  %i.dj = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 5 uses
  %i.dk = insertelement <2 x float> poison, float %1, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.036, i64 1 ; 2 uses
  %i.dm = fcmp ogt <2 x float> %i.dl, zeroinitializer
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store float -7.500000e-01, ptr %i.do, align 8, !tbaa !60
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dq = select <2 x i1> %i.dm, <2 x float> %i.dl, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.dq, ptr %i.dn, align 8, !tbaa !11
  %i.dr = fdiv <2 x float> splat (float 2.000000e+00), %i.dq
  store <2 x float> %i.dr, ptr %i.dp, align 4, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_113FilterSimon2DE, i64 16), ptr %i.dj, align 8, !tbaa !24
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i133: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i58
  %bcmp.i134 = tail call i32 @bcmp(ptr %i.b, ptr nonnull @.str.17, i64 %i.d)
  %.not.i.i135 = icmp eq i32 %bcmp.i134, 0
  br i1 %.not.i.i135, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i133
  %i.ds = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14 ; 5 uses
  %i.dt = insertelement <2 x float> poison, float %1, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %.036, i64 1 ; 2 uses
  %i.dv = fcmp ogt <2 x float> %i.du, zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store float -1.000000e+00, ptr %i.dx, align 8, !tbaa !60
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.dz = select <2 x i1> %i.dv, <2 x float> %i.du, <2 x float> splat (float 4.000000e+00) ; 2 uses
  store <2 x float> %i.dz, ptr %i.dw, align 8, !tbaa !11
  %i.ea = fdiv <2 x float> splat (float 2.000000e+00), %i.dz
  store <2 x float> %i.ea, ptr %i.dy, align 4, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN11OpenImageIO4v3_114FilterRifman2DE, i64 16), ptr %i.ds, align 8, !tbaa !24
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i128, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i108, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i103, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i93, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i88, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i83, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i133, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit132, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit122, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit117, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit107, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit102, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit92, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit77, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit67, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit57, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit52, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit47, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit42
  %.0 = phi ptr [ %i.n, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit ], [ %i.u, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit42 ], [ %i.ad, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit47 ], [ %i.aj, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit52 ], [ %i.ap, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit57 ], [ %i.av, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit67 ], [ %i.bb, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72 ], [ %i.bj, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit77 ], [ %i.bp, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit92 ], [ %i.bv, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit102 ], [ %i.ce, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit107 ], [ %i.ck, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit117 ], [ %i.cr, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit122 ], [ %i.da, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit127 ], [ %i.dj, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit132 ], [ %i.ds, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit137 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i123 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i133 ], [ null, %bb.a ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i108 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i103 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i53 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i93 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i88 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i83 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i128 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_(ptr noundef %0) #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #7 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_111FilterBox1DD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_111FilterBox1DclEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !31
  %i.d = fmul float %i.c, 5.000000e-01
  %i.e = fcmp ole float %i.a, %i.d
  %i.f = select i1 %i.e, float 1.000000e+00, float 0.000000e+00
  ret float %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_111FilterBox1D4nameEv(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr @.str, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_116FilterTriangle1DD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK11OpenImageIO4v3_116FilterTriangle1DclEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !33
  %i.c = fmul float %1, %i.b
  %i.d = tail call float @llvm.fabs.f32(float %i.c) ; 2 uses
  %i.e = fcmp olt float %i.d, 1.000000e+00
end_hunk_0
