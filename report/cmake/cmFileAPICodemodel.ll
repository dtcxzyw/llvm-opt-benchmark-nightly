Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmFileAPICodemodel?download=true
inline.NumInlined: 5669
inline.NumDeleted: 2433
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EEEvT_T0_SG_T1_T2_":bb.a
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.lr.ph.i
  %i.ax = sub i64 %i.aq, %i.as
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ay = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.ay, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EEEvT_T0_SG_T1_RT2_.exit"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i"
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !184
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !184
  %i.bb = icmp sgt i64 %.0911.i, %1
  br i1 %i.bb, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EEEvT_T0_SG_T1_RT2_.exit", !llvm.loop !780

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EEEvT_T0_SG_T1_RT2_.exit": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i", %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i" ], [ %.0911.i, %bb.e ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store ptr %3, ptr %i.bc, align 8, !tbaa !184
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EEEvT_SF_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.0.016, %1
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %.sroa.0.019 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ] ; 6 uses
  %.pn18 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.019, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.0.019, align 8, !tbaa !184
  %i.d = load ptr, ptr %0, align 8, !tbaa !184
  %i.e = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.c) ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.d) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !126  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.o = sub i64 %i.h, %i.j
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  %i.q = load ptr, ptr %.sroa.0.019, align 8, !tbaa !184 ; 2 uses
  br i1 %i.p, label %bb.c, label %.preheader24

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"
  %i.r = ptrtoint ptr %.sroa.0.019 to i64
  %i.s = sub i64 %i.r, %i.b                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.d, label %bb.e, !prof !247

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.pn18, i64 16
  %i.w = sub nsw i64 0, %i.t
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.s, 8
  br i1 %i.y, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.pn18, i64 8
  %i.aa = load ptr, ptr %0, align 8, !tbaa !184
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !184
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.preheader24:                                     ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", %bb.g
  %.sroa.03.0.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.019, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclINS_17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit" ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8 ; 3 uses
  %i.ab = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !184
  %i.ac = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.q) ; 2 uses
  %i.ad = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %i.ab) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !126 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !126 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.af) ; 2 uses
  %i.ai = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.preheader24
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !102
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !102
  %i.al = tail call i32 @memcmp(ptr noundef %i.ak, ptr noundef %i.aj, i64 noundef %.sroa.speculated.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclIP17cmGeneratorTargetNS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %.preheader24
  %i.am = sub i64 %i.af, %i.ah
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.am, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclIP17cmGeneratorTargetNS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclIP17cmGeneratorTargetNS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.al, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.an, label %bb.g, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclIP17cmGeneratorTargetNS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i"
  %i.ao = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !184
  store ptr %i.ao, ptr %.sroa.03.0.i, align 8, !tbaa !184
  br label %.preheader24, !llvm.loop !1

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclIP17cmGeneratorTargetNS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i", %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.03.0.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_115CodemodelConfig11DumpTargetsEvE3$_0EclIP17cmGeneratorTargetNS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i" ]
  store ptr %i.q, ptr %.sink, align 8, !tbaa !184
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !781

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP17cmGeneratorTargetSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %.preheader, %bb.a
  ret void
}

declare void @_ZN9cmFileAPI13MaybeJsonFileEN4Json5ValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.Json::Value") align 8, ptr noundef nonnull align 8 dereferenceable(304), ptr noundef align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_16Target4DumpEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(792) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.Json::Value", align 8       ; 6 uses
  %3 = alloca %"class.Json::Value", align 8       ; 7 uses
  %4 = alloca %"class.Json::Value", align 8       ; 7 uses
  %5 = alloca %"class.Json::Value", align 8       ; 8 uses
  %6 = alloca %"class.Json::Value", align 8       ; 7 uses
  %7 = alloca %"class.Json::Value", align 8       ; 7 uses
  %8 = alloca %"class.Json::Value", align 8       ; 7 uses
  %9 = alloca %"class.Json::Value", align 8       ; 7 uses
  %10 = alloca %"class.Json::Value", align 8      ; 7 uses
  %11 = alloca %"class.Json::Value", align 8      ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.Json::Value", align 8      ; 7 uses
  %14 = alloca %"class.Json::Value", align 8      ; 7 uses
  %15 = alloca %"class.Json::Value", align 8      ; 9 uses
  %16 = alloca %"class.Json::Value", align 8      ; 9 uses
  %17 = alloca %"class.Json::Value", align 8      ; 8 uses
  %18 = alloca %"class.Json::Value", align 8      ; 7 uses
  %19 = alloca %"class.Json::Value", align 8      ; 8 uses
  %20 = alloca %"class.Json::Value", align 8      ; 7 uses
  %21 = alloca %"class.Json::Value", align 8      ; 8 uses
  %22 = alloca %"class.Json::Value", align 8      ; 10 uses
  %23 = alloca %"class.Json::Value", align 8      ; 8 uses
  %24 = alloca %"class.Json::Value", align 8      ; 10 uses
  %25 = alloca %"class.Json::Value", align 8      ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %26 = alloca %"struct.(anonymous namespace)::CompileData", align 8 ; 36 uses
  %27 = alloca %"class.Json::Value", align 8      ; 18 uses
  %28 = alloca %"class.Json::Value", align 8      ; 7 uses
  %29 = alloca %"class.Json::Value", align 8      ; 11 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.Json::Value", align 8      ; 6 uses
  %32 = alloca %"class.Json::Value", align 8      ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %33 = alloca %class.anon.1368, align 8          ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %35 = alloca %class.cmList, align 8             ; 12 uses
  %36 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 9 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"struct.(anonymous namespace)::CompileData", align 8 ; 31 uses
  %40 = alloca %"struct.(anonymous namespace)::Target::CompileGroup", align 8 ; 7 uses
  %41 = alloca %"class.Json::Value", align 8      ; 7 uses
  %42 = alloca %"class.Json::Value", align 8      ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %44 = alloca %"class.Json::Value", align 8      ; 7 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.Json::Value", align 8      ; 7 uses
  %47 = alloca %"class.Json::Value", align 8      ; 10 uses
  %48 = alloca %"class.Json::Value", align 8      ; 7 uses
  %49 = alloca %"class.Json::Value", align 8      ; 7 uses
  %50 = alloca %"class.Json::Value", align 8      ; 7 uses
  %51 = alloca %"class.Json::Value", align 8      ; 7 uses
  %52 = alloca %"class.Json::Value", align 8      ; 7 uses
  %53 = alloca %"class.Json::Value", align 8      ; 7 uses
  %54 = alloca %"class.Json::Value", align 8      ; 7 uses
  %55 = alloca %"class.Json::Value", align 8      ; 7 uses
  %56 = alloca %"class.Json::Value", align 8      ; 17 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %58 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<unsigned int>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<unsigned int>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  %59 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<unsigned int>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<unsigned int>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %60 = alloca [3 x %"struct.std::pair.1109"], align 8 ; 12 uses
  %61 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %62 = alloca [3 x %"struct.std::pair.1109"], align 8 ; 12 uses
  %63 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %64 = alloca %"class.Json::Value", align 8      ; 7 uses
  %65 = alloca %"class.Json::Value", align 8      ; 7 uses
  %66 = alloca %"class.Json::Value", align 8      ; 7 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %68 = alloca %"class.Json::Value", align 8      ; 8 uses
  %69 = alloca %"class.Json::Value", align 8      ; 7 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %71 = alloca %"class.Json::Value", align 8      ; 9 uses
  %72 = alloca %"class.std::map.1077", align 8    ; 12 uses
  %73 = alloca %"class.Json::Value", align 8      ; 6 uses
  %74 = alloca %"struct.cm::GenEx::Context", align 8 ; 11 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %77 = alloca %"struct.std::pair.1243", align 8  ; 12 uses
  %78 = alloca %"class.Json::Value", align 8      ; 12 uses
  %79 = alloca %"struct.std::pair.1251", align 8  ; 9 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %82 = alloca %class.cmGeneratorExpression, align 8 ; 7 uses
  %83 = alloca %class.cmListFileBacktrace, align 16 ; 6 uses
  %84 = alloca %class.cmList, align 8             ; 13 uses
  %85 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %86 = alloca %"class.std::unique_ptr.1127", align 8 ; 7 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %88 = alloca %"class.std::map.381", align 8     ; 10 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %94 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 5 uses
  %95 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 4 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %97 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 5 uses
  %98 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 4 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %99 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %103 = alloca %"class.std::vector.1111", align 8 ; 9 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %105 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 14 uses
  %106 = alloca %"class.std::set.1203", align 8   ; 10 uses
  %107 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 14 uses
  %108 = alloca %"class.std::vector.1111", align 8 ; 8 uses
  %109 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 14 uses
  %110 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 14 uses
  %111 = alloca %"class.std::vector.1111", align 8 ; 8 uses
  %112 = alloca %"class.(anonymous namespace)::JBT", align 8 ; 14 uses
  %113 = alloca %"class.(anonymous namespace)::JBTs", align 8 ; 16 uses
  %114 = alloca %"class.std::set", align 8        ; 11 uses
  %115 = alloca %"class.Json::Value", align 8     ; 7 uses
  %116 = alloca %"class.Json::Value", align 8     ; 9 uses
  %117 = alloca %"class.Json::Value", align 8     ; 7 uses
  %118 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %119 = alloca %"class.Json::Value", align 8     ; 7 uses
  %120 = alloca %"class.std::vector.1174", align 8 ; 11 uses
  %121 = alloca %"class.std::map.1179", align 8   ; 11 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %123 = alloca %"class.Json::Value", align 8     ; 9 uses
  %124 = alloca %"class.Json::Value", align 8     ; 7 uses
  %125 = alloca %"class.Json::Value", align 8     ; 7 uses
  %126 = alloca %"class.Json::Value", align 8     ; 7 uses
  %127 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %128 = alloca %"class.Json::Value", align 8     ; 10 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %129 = alloca %"class.Json::Value", align 8     ; 8 uses
  %130 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %131 = alloca %"class.Json::Value", align 8     ; 8 uses
  %132 = alloca %"class.Json::Value", align 8     ; 8 uses
  %133 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %134 = alloca %"class.Json::Value", align 8     ; 7 uses
  %135 = alloca %"class.Json::Value", align 8     ; 7 uses
  %136 = alloca %"class.Json::Value", align 8     ; 7 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %138 = alloca %"class.Json::Value", align 8     ; 7 uses
  %139 = alloca %"class.Json::Value", align 8     ; 8 uses
  %140 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %141 = alloca %"class.Json::Value", align 8     ; 9 uses
  %142 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %143 = alloca %"class.Json::Value", align 8     ; 9 uses
  %144 = alloca %"class.Json::Value", align 8     ; 7 uses
  %145 = alloca [3 x %"struct.std::pair.1109"], align 8 ; 12 uses
  %146 = alloca %class.cmAlphaNum, align 8        ; 6 uses
  %147 = alloca %"class.std::vector.1100", align 8 ; 11 uses
  %148 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %149 = alloca %"class.Json::Value", align 8     ; 8 uses
  %150 = alloca %"class.Json::Value", align 8     ; 7 uses
  %151 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %152 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %153 = alloca %"class.Json::Value", align 8     ; 8 uses
  %154 = alloca %"class.Json::Value", align 8     ; 7 uses
  %155 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %156 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %157 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %158 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %159 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %160 = alloca %"class.Json::Value", align 8     ; 8 uses
  %161 = alloca %"class.Json::Value", align 8     ; 7 uses
  %162 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %163 = alloca %"class.Json::Value", align 8     ; 8 uses
  %164 = alloca %"class.Json::Value", align 8     ; 7 uses
  %165 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %166 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %167 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %168 = alloca %"class.Json::Value", align 8     ; 7 uses
  %169 = alloca %"class.Json::Value", align 8     ; 7 uses
  %170 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %171 = alloca %"class.Json::Value", align 8     ; 10 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %172 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %173 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %174 = alloca %"class.Json::Value", align 8     ; 7 uses
  %175 = alloca %"class.Json::Value", align 8     ; 9 uses
  %176 = alloca %"class.Json::Value", align 8     ; 9 uses
  %177 = alloca %"class.Json::Value", align 8     ; 7 uses
  %178 = alloca %"class.Json::Value", align 8     ; 7 uses
  %179 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %180 = alloca %"class.Json::Value", align 8     ; 7 uses
  %181 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %182 = alloca %"class.Json::Value", align 8     ; 7 uses
  %183 = alloca %"class.Json::Value", align 8     ; 7 uses
  %184 = alloca %"class.Json::Value", align 8     ; 7 uses
  %185 = alloca %"class.Json::Value", align 8     ; 7 uses
  %186 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %187 = alloca %"class.Json::Value", align 8     ; 7 uses
  %188 = alloca %"class.Json::Value", align 8     ; 7 uses
  %189 = alloca %"class.Json::Value", align 8     ; 7 uses
  %190 = alloca %"class.Json::Value", align 8     ; 7 uses
  %191 = alloca %"class.Json::Value", align 8     ; 10 uses
  %192 = alloca %"class.Json::Value", align 8     ; 7 uses
  %193 = alloca %class.cmListFileBacktrace, align 8 ; 7 uses
  %194 = alloca %"class.Json::Value", align 8     ; 10 uses
  %195 = alloca %"class.Json::Value", align 8     ; 13 uses
  %196 = alloca %"class.Json::Value", align 8     ; 7 uses
  %197 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %198 = alloca %"class.Json::Value", align 8     ; 13 uses
  %199 = alloca %"class.Json::Value", align 8     ; 7 uses
  %200 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %201 = alloca %"class.Json::Value", align 8     ; 10 uses
  %202 = alloca %"class.Json::Value", align 8     ; 11 uses
  %203 = alloca %"class.Json::Value", align 8     ; 10 uses
  %204 = alloca %"class.Json::Value", align 8     ; 8 uses
  %205 = alloca %"class.Json::Value", align 8     ; 8 uses
  %206 = alloca %"class.Json::Value", align 8     ; 8 uses
  %207 = alloca %"class.Json::Value", align 8     ; 8 uses
  %208 = alloca %"class.Json::Value", align 8     ; 10 uses
  %209 = alloca %"class.Json::Value", align 8     ; 10 uses
  %210 = alloca %"struct.std::pair.1075", align 8 ; 16 uses
  %211 = alloca %"class.Json::Value", align 8     ; 10 uses
  %212 = alloca %"class.Json::Value", align 8     ; 10 uses
  %213 = alloca %"class.Json::Value", align 8     ; 11 uses
  %214 = alloca %"class.Json::Value", align 8     ; 10 uses
  %215 = alloca %"class.Json::Value", align 8     ; 10 uses
  %216 = alloca %"class.Json::Value", align 8     ; 7 uses
  %217 = alloca %"class.Json::Value", align 8     ; 11 uses
  tail call void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 7)
  %i.x = load ptr, ptr %1, align 8, !tbaa !216
  %i.y = invoke noundef i32 @_ZNK17cmGeneratorTarget7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(3187) %i.x)
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_16Target4DumpEv:bb.a
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i210.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i208.i
  %.pr.i.i211.i = load ptr, ptr %77, align 8, !tbaa !100, !noalias !1018
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i210.i, %bb.ahl
  %i.cuo = phi ptr [ %.pr.i.i211.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i210.i ], [ %i.cug, %bb.ahl ] ; 3 uses
  %.not.i.i1.i.i213.i = icmp eq ptr %i.cuo, null
  br i1 %.not.i.i1.i.i213.i, label %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEbED2Ev.exit215.i, label %bb.ahm

bb.ahm:                                           ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212.i
  %i.cup = load ptr, ptr %i.bwd, align 8, !tbaa !105, !noalias !1018
  %i.cuq = ptrtoint ptr %i.cup to i64
  %i.cur = ptrtoint ptr %i.cuo to i64
  %i.cus = sub i64 %i.cuq, %i.cur
  call void @_ZdlPvm(ptr noundef nonnull %i.cuo, i64 noundef %i.cus) #28, !noalias !1018
  br label %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEbED2Ev.exit215.i

_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEbED2Ev.exit215.i: ; preds = %bb.ahm, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212.i, %bb.ach
  %.pn72.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.cbe, %bb.ach ], [ %.pn72.pn.pn.pn.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i212.i ], [ %.pn72.pn.pn.pn.i, %bb.ahm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #27, !noalias !1018
  %i.cut = load ptr, ptr %i.bwe, align 8, !tbaa !102, !noalias !1018 ; 2 uses
  %i.cuu = icmp eq ptr %i.cut, %i.bwf
  br i1 %i.cuu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i217.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i216.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i216.i: ; preds = %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEbED2Ev.exit215.i
  %i.cuv = load i64, ptr %i.bwf, align 8, !tbaa !103, !noalias !1018
  %i.cuw = add i64 %i.cuv, 1
  call void @_ZdlPvm(ptr noundef %i.cut, i64 noundef %i.cuw) #28, !noalias !1018
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i217.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i217.i: ; preds = %_ZNSt4pairISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEbED2Ev.exit215.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i216.i
  %i.cux = load ptr, ptr %i.bwg, align 8, !tbaa !102, !noalias !1018 ; 2 uses
  %i.cuy = icmp eq ptr %i.cux, %i.bwh
  br i1 %i.cuy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i218.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i218.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i217.i
  %i.cuz = load i64, ptr %i.bwh, align 8, !tbaa !103, !noalias !1018
  %i.cva = add i64 %i.cuz, 1
  call void @_ZdlPvm(ptr noundef %i.cux, i64 noundef %i.cva) #28, !noalias !1018
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i217.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i218.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i296, %bb.acf
  %.pn72.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.cav, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92.i296 ], [ %i.cau, %bb.acf ], [ %.pn72.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i218.i ], [ %i.cav, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91.i295 ], [ %.pn72.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i217.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #27, !noalias !1018
  br label %.body225.i

.loopexit321.i:                                   ; preds = %_ZN2cm5GenEx7ContextD2Ev.exit.i, %bb.aab, %bb.zz
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  invoke void @_ZN4Json5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %210, ptr noundef nonnull align 8 dereferenceable(40) %71)
          to label %.noexc224.i unwind label %bb.aac

.noexc224.i:                                      ; preds = %.loopexit321.i
  %i.cvb = getelementptr inbounds nuw i8, ptr %210, i64 48 ; 8 uses
  store i32 0, ptr %i.cvb, align 8, !tbaa !131, !alias.scope !1041
  %i.cvc = getelementptr inbounds nuw i8, ptr %210, i64 56 ; 4 uses
  store ptr null, ptr %i.cvc, align 8, !tbaa !132, !alias.scope !1041
  %i.cvd = getelementptr inbounds nuw i8, ptr %210, i64 64 ; 3 uses
  store ptr %i.cvb, ptr %i.cvd, align 8, !tbaa !133, !alias.scope !1041
  %i.cve = getelementptr inbounds nuw i8, ptr %210, i64 72 ; 2 uses
  store ptr %i.cvb, ptr %i.cve, align 8, !tbaa !134, !alias.scope !1041
  %i.cvf = getelementptr inbounds nuw i8, ptr %210, i64 80 ; 2 uses
  store i64 0, ptr %i.cvf, align 8, !tbaa !223, !alias.scope !1041
  %i.cvg = load ptr, ptr %i.btf, align 8, !tbaa !132, !noalias !1041 ; 2 uses
  %.not.i.i.i.i222.i = icmp eq ptr %i.cvg, null
  br i1 %.not.i.i.i.i222.i, label %_ZSt9make_pairIRN4Json5ValueERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS9_ESaISt4pairIKS9_SC_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSL_INSM_IT0_E4typeEE6__typeEEOSN_OSS_.exit.i, label %bb.ahn

bb.ahn:                                           ; preds = %.noexc224.i
  %i.cvh = getelementptr inbounds nuw i8, ptr %210, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #27, !noalias !1041
  store ptr %i.cvh, ptr %59, align 8, !tbaa !1030, !noalias !1041
  %i.cvi = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIjSaIjEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_M_copyILb0ENSH_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISB_ESM_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.cvh, ptr noundef nonnull %i.cvg, ptr noundef nonnull %i.cvb, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %.noexc.i.i.i.i223.i unwind label %bb.ahq ; 3 uses

.noexc.i.i.i.i223.i:                              ; preds = %bb.ahn, %.noexc.i.i.i.i223.i
  %.0.i.i.i.i.i.i.i.i.i332 = phi ptr [ %i.cvk, %.noexc.i.i.i.i223.i ], [ %i.cvi, %bb.ahn ] ; 2 uses
  %i.cvj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i332, i64 16
  %i.cvk = load ptr, ptr %i.cvj, align 8, !tbaa !435 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i333 = icmp eq ptr %i.cvk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i333, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIjSaIjEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i, label %.noexc.i.i.i.i223.i, !llvm.loop !888

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIjSaIjEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i223.i
  store ptr %.0.i.i.i.i.i.i.i.i.i332, ptr %i.cvd, align 8, !tbaa !159, !alias.scope !1041
  br label %bb.aho

bb.aho:                                           ; preds = %bb.aho, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIjSaIjEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i.i.i = phi ptr [ %i.cvi, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIjSaIjEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i.i.i ], [ %i.cvm, %bb.aho ] ; 2 uses
  %i.cvl = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i.i.i, i64 24
  %i.cvm = load ptr, ptr %i.cvl, align 8, !tbaa !246 ; 2 uses
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.cvm, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %bb.ahp, label %bb.aho, !llvm.loop !889

bb.ahp:                                           ; preds = %bb.aho
  store ptr %.0.i.i7.i.i.i.i.i.i.i, ptr %i.cve, align 8, !tbaa !159, !alias.scope !1041
  %i.cvn = load i64, ptr %i.bti, align 8, !tbaa !223, !noalias !1041
  store i64 %i.cvn, ptr %i.cvf, align 8, !tbaa !223, !alias.scope !1041
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #27, !noalias !1041
  store ptr %i.cvi, ptr %i.cvc, align 8, !tbaa !159, !alias.scope !1041
  %.pre706.i = load ptr, ptr %i.btf, align 8, !tbaa !132, !noalias !1018
  br label %_ZSt9make_pairIRN4Json5ValueERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS9_ESaISt4pairIKS9_SC_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSL_INSM_IT0_E4typeEE6__typeEEOSN_OSS_.exit.i

bb.ahq:                                           ; preds = %bb.ahn
  %i.cvo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(88) %210) #27
  br label %.body225.i

_ZSt9make_pairIRN4Json5ValueERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS9_ESaISt4pairIKS9_SC_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSL_INSM_IT0_E4typeEE6__typeEEOSN_OSS_.exit.i: ; preds = %bb.ahp, %.noexc224.i
  %i.cvp = phi ptr [ %.pre706.i, %bb.ahp ], [ null, %.noexc224.i ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIjSaIjEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %72, ptr noundef %i.cvp)
          to label %bb.aht unwind label %bb.ahr

bb.ahr:                                           ; preds = %_ZSt9make_pairIRN4Json5ValueERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS9_ESaISt4pairIKS9_SC_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSL_INSM_IT0_E4typeEE6__typeEEOSN_OSS_.exit.i
  %i.cvq = landingpad { ptr, i32 }
          catch ptr null
  %i.cvr = extractvalue { ptr, i32 } %i.cvq, 0
  call void @__clang_call_terminate(ptr %i.cvr) #31
  unreachable

.body225.i:                                       ; preds = %bb.ahq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i297, %bb.aad, %bb.aac
  %.pn79.i = phi { ptr, i32 } [ %i.bwp, %bb.aad ], [ %.pn72.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94.i297 ], [ %i.bwo, %bb.aac ], [ %i.cvo, %bb.ahq ]
  %i.cvs = load ptr, ptr %i.btf, align 8, !tbaa !132, !noalias !1018
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIjSaIjEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %72, ptr noundef %i.cvs)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit227.i unwind label %bb.ahs

bb.ahs:                                           ; preds = %.body225.i
  %i.cvt = landingpad { ptr, i32 }
          catch ptr null
  %i.cvu = extractvalue { ptr, i32 } %i.cvt, 0
  call void @__clang_call_terminate(ptr %i.cvu) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit227.i: ; preds = %.body225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #27, !noalias !1018
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %71) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27, !noalias !1018
  br label %.body362

bb.aht:                                           ; preds = %_ZSt9make_pairIRN4Json5ValueERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS9_ESaISt4pairIKS9_SC_EEEESF_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENSL_INSM_IT0_E4typeEE6__typeEEOSN_OSS_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #27, !noalias !1018
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %71) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27, !noalias !1018
  call void @llvm.lifetime.end.p0(ptr nonnull %75)
  call void @llvm.lifetime.end.p0(ptr nonnull %76)
  call void @llvm.lifetime.end.p0(ptr nonnull %83)
  call void @llvm.lifetime.end.p0(ptr nonnull %87)
  %i.cvv = invoke noundef zeroext i1 @_ZNK4Json5Value6isNullEv(ptr noundef nonnull align 8 dereferenceable(40) %210)
          to label %bb.ahu unwind label %bb.ahy

bb.ahu:                                           ; preds = %bb.aht
  br i1 %i.cvv, label %bb.ahz, label %bb.ahv

bb.ahv:                                           ; preds = %bb.ahu
  %i.cvw = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.41)
          to label %bb.ahw unwind label %bb.ahy

bb.ahw:                                           ; preds = %bb.ahv
  %i.cvx = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cvw, ptr noundef nonnull align 8 dereferenceable(40) %210)
          to label %bb.ahz unwind label %bb.ahy   ; 0 uses

bb.ahx:                                           ; preds = %bb.zx
  %i.cvy = landingpad { ptr, i32 }
          cleanup
  br label %.body362

bb.ahy:                                           ; preds = %bb.ahw, %bb.ahv, %bb.aht
  %i.cvz = landingpad { ptr, i32 }
          cleanup
  br label %bb.azk

bb.ahz:                                           ; preds = %bb.ahw, %bb.ahu
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #27
  %i.cwa = getelementptr inbounds nuw i8, ptr %210, i64 40 ; 2 uses
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %211, i32 noundef 6)
          to label %.noexc425 unwind label %bb.aoq

.noexc425:                                        ; preds = %bb.ahz
  %i.cwb = load ptr, ptr %1, align 8, !tbaa !216, !noalias !1042
  %i.cwc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cwd = load ptr, ptr %i.cwc, align 8, !tbaa !373, !noalias !1042, !nonnull !129, !align !130
  %i.cwe = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNK17cmGeneratorTarget16GetKindedSourcesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %i.cwb, ptr noundef nonnull align 8 dereferenceable(32) %i.cwd)
          to label %bb.aia unwind label %bb.aib   ; 2 uses

bb.aia:                                           ; preds = %.noexc425
  %i.cwf = load ptr, ptr %i.cwe, align 8, !tbaa !1044 ; 2 uses
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8
  %i.cwh = load ptr, ptr %i.cwg, align 8, !tbaa !1044 ; 2 uses
  %.not132.i = icmp eq ptr %i.cwf, %i.cwh
  br i1 %.not132.i, label %_ZN12_GLOBAL__N_16Target11DumpSourcesERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS7_ESaISt4pairIKS7_SA_EEE.exit, label %.lr.ph.i365

.lr.ph.i365:                                      ; preds = %bb.aia
  %i.cwi = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 7 uses
  %i.cwj = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  %i.cwk = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.cwl = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.cwm = getelementptr inbounds nuw i8, ptr %1, i64 632 ; 5 uses
  %i.cwn = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 5 uses
  %i.cwo = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 5 uses
  %i.cwp = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 10 uses
  %i.cwq = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 4 uses
  %i.cwr = getelementptr inbounds nuw i8, ptr %1, i64 696 ; 5 uses
  %i.cws = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  %i.cwt = getelementptr inbounds nuw i8, ptr %39, i64 32 ; 2 uses
  %i.cwu = getelementptr inbounds nuw i8, ptr %39, i64 48 ; 5 uses
  %.phi.trans.insert1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 40 ; 3 uses
  %i.cwv = getelementptr inbounds nuw i8, ptr %39, i64 64 ; 2 uses
  %i.cww = getelementptr inbounds nuw i8, ptr %39, i64 80 ; 5 uses
  %.phi.trans.insert3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 72 ; 3 uses
  %i.cwx = getelementptr inbounds nuw i8, ptr %39, i64 96 ; 2 uses
  %i.cwy = getelementptr inbounds nuw i8, ptr %39, i64 112
  %i.cwz = getelementptr inbounds nuw i8, ptr %39, i64 120 ; 2 uses
  %i.cxa = getelementptr inbounds nuw i8, ptr %39, i64 136
  %i.cxb = getelementptr inbounds nuw i8, ptr %39, i64 144 ; 2 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %39, i64 160
  %i.cxd = getelementptr inbounds nuw i8, ptr %39, i64 168 ; 2 uses
  %i.cxe = getelementptr inbounds nuw i8, ptr %39, i64 184
  %i.cxf = getelementptr inbounds nuw i8, ptr %39, i64 192 ; 2 uses
  %i.cxg = getelementptr inbounds nuw i8, ptr %39, i64 208
  %i.cxh = getelementptr inbounds nuw i8, ptr %39, i64 216 ; 2 uses
  %i.cxi = getelementptr inbounds nuw i8, ptr %39, i64 232
  %i.cxj = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.cxk = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 3 uses
  %i.cxm = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 5 uses
  %i.cxn = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 3 uses
  br label %bb.aic

bb.aib:                                           ; preds = %.noexc425
  %i.cxo = landingpad { ptr, i32 }
          cleanup
  br label %bb.anq

bb.aic:                                           ; preds = %bb.ann, %.lr.ph.i365
  %.sroa.012.0133.i = phi ptr [ %i.cwf, %.lr.ph.i365 ], [ %i.djh, %bb.ann ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #27, !noalias !1042
  %i.cxp = invoke noundef i32 @_ZNK4Json5Value4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %211)
          to label %bb.aid unwind label %bb.ano   ; 2 uses

bb.aid:                                           ; preds = %bb.aic
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef 7)
          to label %.noexc.i368 unwind label %bb.ano

.noexc.i368:                                      ; preds = %bb.aid
  %i.cxq = load ptr, ptr %.sroa.012.0133.i, align 8, !tbaa !1048, !noalias !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27, !noalias !1050
  %i.cxr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN12cmSourceFile15ResolveFullPathEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(376) %i.cxq, ptr noundef null, ptr noundef null)
          to label %bb.aie unwind label %bb.aio   ; 2 uses

bb.aie:                                           ; preds = %.noexc.i368
  store ptr %i.cwi, ptr %43, align 8, !tbaa !125, !noalias !1050
  %i.cxs = load ptr, ptr %i.cxr, align 8, !tbaa !102 ; 2 uses
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cxr, i64 8
  %i.cxu = load i64, ptr %i.cxt, align 8, !tbaa !126 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27, !noalias !1050
  store i64 %i.cxu, ptr %i.e, align 8, !tbaa !127, !noalias !1050
  %i.cxv = icmp ugt i64 %i.cxu, 15
  br i1 %i.cxv, label %.noexc.i.i.i423, label %._crit_edge.i.i.i.i369

.noexc.i.i.i423:                                  ; preds = %bb.aie
  %i.cxw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc.i.i424 unwind label %bb.aio ; 2 uses

.noexc.i.i424:                                    ; preds = %.noexc.i.i.i423
  store ptr %i.cxw, ptr %43, align 8, !tbaa !102, !noalias !1050
  %i.cxx = load i64, ptr %i.e, align 8, !tbaa !127, !noalias !1050
  store i64 %i.cxx, ptr %i.cwi, align 8, !tbaa !103, !noalias !1050
  br label %._crit_edge.i.i.i.i369

._crit_edge.i.i.i.i369:                           ; preds = %.noexc.i.i424, %bb.aie
  %i.cxy = phi ptr [ %i.cxw, %.noexc.i.i424 ], [ %i.cwi, %bb.aie ] ; 2 uses
  switch i64 %i.cxu, label %bb.aig [
    i64 1, label %bb.aif
    i64 0, label %bb.aih
  ]

bb.aif:                                           ; preds = %._crit_edge.i.i.i.i369
  %i.cxz = load i8, ptr %i.cxs, align 1, !tbaa !103
  store i8 %i.cxz, ptr %i.cxy, align 1, !tbaa !103
  br label %bb.aih

bb.aig:                                           ; preds = %._crit_edge.i.i.i.i369
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cxy, ptr align 1 %i.cxs, i64 %i.cxu, i1 false)
  br label %bb.aih

bb.aih:                                           ; preds = %bb.aig, %bb.aif, %._crit_edge.i.i.i.i369
  %i.cya = load i64, ptr %i.e, align 8, !tbaa !127, !noalias !1050 ; 2 uses
  store i64 %i.cya, ptr %i.cwj, align 8, !tbaa !126, !noalias !1050
  %i.cyb = load ptr, ptr %43, align 8, !tbaa !102, !noalias !1050
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cyb, i64 %i.cya
  store i8 0, ptr %i.cyc, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27, !noalias !1050
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27, !noalias !1050
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27, !noalias !1050
  invoke void @_ZN13cmSystemTools15RelativeIfUnderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %_ZN12_GLOBAL__N_115RelativeIfUnderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit.i.i371 unwind label %bb.aip

_ZN12_GLOBAL__N_115RelativeIfUnderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit.i.i371: ; preds = %bb.aih
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %44, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.aii unwind label %bb.aiq

bb.aii:                                           ; preds = %_ZN12_GLOBAL__N_115RelativeIfUnderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit.i.i371
  %i.cyd = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %56, ptr noundef nonnull @.str.57)
          to label %bb.aij unwind label %bb.air

bb.aij:                                           ; preds = %bb.aii
  %i.cye = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cyd, ptr noundef nonnull align 8 dereferenceable(40) %44) #27 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %44) #27
  %i.cyf = load ptr, ptr %45, align 8, !tbaa !102, !noalias !1050 ; 2 uses
  %i.cyg = icmp eq ptr %i.cyf, %i.cwk
  br i1 %i.cyg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i373

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i373: ; preds = %bb.aij
  %i.cyh = load i64, ptr %i.cwk, align 8, !tbaa !103, !noalias !1050
  %i.cyi = add i64 %i.cyh, 1
  call void @_ZdlPvm(ptr noundef %i.cyf, i64 noundef %i.cyi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i374: ; preds = %bb.aij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i373
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27, !noalias !1050
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27, !noalias !1050
  %i.cyj = load ptr, ptr %.sroa.012.0133.i, align 8, !tbaa !1048, !noalias !1049
  %i.cyk = invoke noundef zeroext i1 @_ZNK12cmSourceFile14GetIsGeneratedENS_10CheckScopeE(ptr noundef nonnull align 8 dereferenceable(376) %i.cyj, i32 noundef 1)
          to label %bb.aik unwind label %bb.ait

bb.aik:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i374
  br i1 %i.cyk, label %bb.ail, label %bb.aix

bb.ail:                                           ; preds = %bb.aik
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27, !noalias !1050
  invoke void @_ZN4Json5ValueC1Eb(ptr noundef nonnull align 8 dereferenceable(40) %46, i1 noundef zeroext true)
          to label %bb.aim unwind label %bb.aiu

bb.aim:                                           ; preds = %bb.ail
  %i.cyl = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %56, ptr noundef nonnull @.str.82)
          to label %bb.ain unwind label %bb.aiv

bb.ain:                                           ; preds = %bb.aim
  %i.cym = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cyl, ptr noundef nonnull align 8 dereferenceable(40) %46) #27 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %46) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27, !noalias !1050
  br label %bb.aix

bb.aio:                                           ; preds = %.noexc.i.i.i423, %.noexc.i368
  %i.cyn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.i.i

bb.aip:                                           ; preds = %bb.aih
  %i.cyo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i

bb.aiq:                                           ; preds = %_ZN12_GLOBAL__N_115RelativeIfUnderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit.i.i371
  %i.cyp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ais

bb.air:                                           ; preds = %bb.aii
  %i.cyq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %44) #27
  br label %bb.ais

bb.ais:                                           ; preds = %bb.air, %bb.aiq
  %.pn.i.i372 = phi { ptr, i32 } [ %i.cyq, %bb.air ], [ %i.cyp, %bb.aiq ] ; 2 uses
  %i.cyr = load ptr, ptr %45, align 8, !tbaa !102, !noalias !1050 ; 2 uses
  %i.cys = icmp eq ptr %i.cyr, %i.cwk
  br i1 %i.cys, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i: ; preds = %bb.ais
  %i.cyt = load i64, ptr %i.cwk, align 8, !tbaa !103, !noalias !1050
  %i.cyu = add i64 %i.cyt, 1
  call void @_ZdlPvm(ptr noundef %i.cyr, i64 noundef %i.cyu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81.i.i: ; preds = %bb.ais, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i, %bb.aip
  %.pn.pn.i.i370 = phi { ptr, i32 } [ %i.cyo, %bb.aip ], [ %.pn.i.i372, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i79.i.i ], [ %.pn.i.i372, %bb.ais ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27, !noalias !1050
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27, !noalias !1050
  br label %bb.anm

bb.ait:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i374
  %i.cyv = landingpad { ptr, i32 }
          cleanup
  br label %bb.anm

bb.aiu:                                           ; preds = %bb.ail
  %i.cyw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aiw

bb.aiv:                                           ; preds = %bb.aim
  %i.cyx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %46) #27
  br label %bb.aiw

bb.aiw:                                           ; preds = %bb.aiv, %bb.aiu
  %.pn47.i.i = phi { ptr, i32 } [ %i.cyx, %bb.aiv ], [ %i.cyw, %bb.aiu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27, !noalias !1050
  br label %bb.anm

bb.aix:                                           ; preds = %bb.ain, %bb.aik
  %i.cyy = getelementptr inbounds nuw i8, ptr %.sroa.012.0133.i, i64 8
  %i.cyz = invoke fastcc i32 @_ZN12_GLOBAL__N_113BacktraceData3AddERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(320) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.cyy)
          to label %bb.aiy unwind label %bb.ajb   ; 4 uses

bb.aiy:                                           ; preds = %bb.aix
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27, !noalias !1050
  invoke void @_ZN4Json5ValueC1ENS_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(40) %47, i32 noundef 6)
          to label %bb.aiz unwind label %bb.ajc

bb.aiz:                                           ; preds = %bb.aiy
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_16Target4DumpEv:bb.a
          to label %bb.ako unwind label %bb.akr

bb.ako:                                           ; preds = %bb.akn
  %i.dbf = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value6appendEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.dbd, ptr noundef nonnull align 8 dereferenceable(40) %52)
          to label %bb.akp unwind label %bb.aks   ; 0 uses

bb.akp:                                           ; preds = %bb.ako
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %52) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27, !noalias !1050
  %i.dbg = getelementptr inbounds nuw i8, ptr %.sroa.098.0149.i.i, i64 4 ; 2 uses
  %.not133.i.i = icmp eq ptr %i.dbg, %i.day
  br i1 %.not133.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i.i, label %.lr.ph.i.i395

bb.akq:                                           ; preds = %.lr.ph.i.i395
  %i.dbh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i375

bb.akr:                                           ; preds = %bb.akn
  %i.dbi = landingpad { ptr, i32 }
          cleanup
  br label %bb.akt

bb.aks:                                           ; preds = %bb.ako
  %i.dbj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %52) #27
  br label %bb.akt

bb.akt:                                           ; preds = %bb.aks, %bb.akr
  %.pn63.i.i = phi { ptr, i32 } [ %i.dbj, %bb.aks ], [ %i.dbi, %bb.akr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27, !noalias !1050
  br label %.body.i.i375

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i.i: ; preds = %bb.akp, %bb.akg, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIjSaIjEEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i, %bb.ajz
  %i.dbk = load ptr, ptr %1, align 8, !tbaa !216, !noalias !1050
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbk, i64 16
  %i.dbm = load ptr, ptr %i.dbl, align 8, !tbaa !416
  %i.dbn = invoke noundef ptr @_ZN16cmLocalGenerator15FindSourceGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(816) %i.dbm, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %bb.aku unwind label %bb.alb   ; 2 uses

bb.aku:                                           ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i.i
  %.not.i.i396 = icmp eq ptr %i.dbn, null
  br i1 %.not.i.i396, label %bb.alj, label %bb.akv

bb.akv:                                           ; preds = %bb.aku
  %i.dbo = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_16Target14AddSourceGroupEPK13cmSourceGroup(ptr noundef nonnull align 8 dereferenceable(792) %1, ptr noundef %i.dbn)
          to label %bb.akw unwind label %bb.alc   ; 2 uses

bb.akw:                                           ; preds = %bb.akv
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #27, !noalias !1050
  invoke void @_ZN4Json5ValueC1Ej(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef %i.dbo)
          to label %bb.akx unwind label %bb.ald

bb.akx:                                           ; preds = %bb.akw
  %i.dbp = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %56, ptr noundef nonnull @.str.86)
          to label %bb.aky unwind label %bb.ale

bb.aky:                                           ; preds = %bb.akx
  %i.dbq = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.dbp, ptr noundef nonnull align 8 dereferenceable(40) %53) #27 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %53) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27, !noalias !1050
  %.val77.i.i = load ptr, ptr %i.cwl, align 8, !tbaa !437, !noalias !1050
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #27, !noalias !1050
  invoke void @_ZN4Json5ValueC1Ej(ptr noundef nonnull align 8 dereferenceable(40) %54, i32 noundef %i.cxp)
          to label %bb.akz unwind label %bb.alg

bb.akz:                                           ; preds = %bb.aky
  %i.dbr = zext i32 %i.dbo to i64
  %i.dbs = getelementptr inbounds nuw [112 x i8], ptr %.val77.i.i, i64 %i.dbr
  %i.dbt = getelementptr inbounds nuw i8, ptr %i.dbs, i64 32
  %i.dbu = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value6appendEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.dbt, ptr noundef nonnull align 8 dereferenceable(40) %54)
          to label %bb.ala unwind label %bb.alh   ; 0 uses

bb.ala:                                           ; preds = %bb.akz
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %54) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27, !noalias !1050
  br label %bb.alj

bb.alb:                                           ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIjSaIjEESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i.i
  %i.dbv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i375

bb.alc:                                           ; preds = %bb.akv
  %i.dbw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i375

bb.ald:                                           ; preds = %bb.akw
  %i.dbx = landingpad { ptr, i32 }
          cleanup
  br label %bb.alf

bb.ale:                                           ; preds = %bb.akx
  %i.dby = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %53) #27
  br label %bb.alf

bb.alf:                                           ; preds = %bb.ale, %bb.ald
  %.pn55.i.i = phi { ptr, i32 } [ %i.dby, %bb.ale ], [ %i.dbx, %bb.ald ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27, !noalias !1050
  br label %.body.i.i375

bb.alg:                                           ; preds = %bb.aky
  %i.dbz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ali

bb.alh:                                           ; preds = %bb.akz
  %i.dca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %54) #27
  br label %bb.ali

bb.ali:                                           ; preds = %bb.alh, %bb.alg
  %.pn57.i.i = phi { ptr, i32 } [ %i.dca, %bb.alh ], [ %i.dbz, %bb.alg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27, !noalias !1050
  br label %.body.i.i375

bb.alj:                                           ; preds = %bb.ala, %bb.aku
  %i.dcb = getelementptr inbounds nuw i8, ptr %.sroa.012.0133.i, i64 24
  %i.dcc = load i32, ptr %i.dcb, align 8, !tbaa !1051, !noalias !1049
  switch i32 %i.dcc, label %bb.ank [
    i32 4, label %bb.alk
    i32 11, label %bb.alk
  ]

bb.alk:                                           ; preds = %bb.alj, %bb.alj
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #27, !noalias !1050
  %i.dcd = load ptr, ptr %.sroa.012.0133.i, align 8, !tbaa !1048, !noalias !1049
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27, !noalias !1050
  invoke fastcc void @_ZN12_GLOBAL__N_16Target16BuildCompileDataEP12cmSourceFile(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull align 8 dereferenceable(792) %1, ptr noundef nonnull %i.dcd)
          to label %.noexc89.i.i unwind label %bb.ani

.noexc89.i.i:                                     ; preds = %bb.alk
  %.val.i.i.i.i.i397 = load i64, ptr %i.cwn, align 8, !tbaa !1052, !noalias !1050
  %i.dce = icmp eq i64 %.val.i.i.i.i.i397, 0
  br i1 %i.dce, label %.preheader135.i, label %bb.alm

.preheader135.i:                                  ; preds = %.noexc89.i.i, %bb.all
  %.sroa.012.0.in.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i, %bb.all ], [ %i.cwp, %.noexc89.i.i ]
  %.sroa.012.0.i.i.i.i.i = load ptr, ptr %.sroa.012.0.in.i.i.i.i.i, align 8, !tbaa !235 ; 4 uses
  %.not.i.i.i88.i.i = icmp eq ptr %.sroa.012.0.i.i.i.i.i, null
  br i1 %.not.i.i.i88.i.i, label %.loopexit.i.i.i400, label %bb.all

bb.all:                                           ; preds = %.preheader135.i
  %i.dcf = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i, i64 8
  %i.dcg = call fastcc noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE(ptr noundef nonnull readonly align 8 dereferenceable(240) %39, ptr noundef nonnull align 8 dereferenceable(256) %i.dcf)
  br i1 %i.dcg, label %_ZNSt13unordered_mapIN12_GLOBAL__N_111CompileDataEjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE4findERS7_.exit.i.i.i, label %.preheader135.i, !llvm.loop !894

bb.alm:                                           ; preds = %.noexc89.i.i
  %i.dch = call fastcc noundef i64 @_ZNKSt8__detail15_Hash_code_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS4_(ptr noundef nonnull readonly align 8 dereferenceable(240) %39) ; 2 uses
  %.val9.i.i.i.i.i = load i64, ptr %i.cwo, align 8, !tbaa !229, !noalias !1050 ; 2 uses
  %i.dci = urem i64 %i.dch, %.val9.i.i.i.i.i      ; 2 uses
  %.val10.i.i.i.i.i398 = load ptr, ptr %i.cwm, align 8, !tbaa !228, !noalias !1050
  %i.dcj = getelementptr inbounds nuw [8 x i8], ptr %.val10.i.i.i.i.i398, i64 %i.dci
  %i.dck = load ptr, ptr %i.dcj, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i.i.i84.i.i = icmp eq ptr %i.dck, null
  br i1 %.not.i.i.i.i.i84.i.i, label %.loopexit.i.i.i400, label %bb.aln

bb.aln:                                           ; preds = %bb.alm
  %i.dcl = load ptr, ptr %i.dck, align 8, !tbaa !235 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i399 = getelementptr inbounds nuw i8, ptr %i.dcl, i64 256
  %.val.i.pre.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i399, align 8, !tbaa !430
  br label %bb.alo

bb.alo:                                           ; preds = %bb.alp, %bb.aln
  %.val.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.pre.i.i.i.i.i.i.i, %bb.aln ], [ %.val21.i.i.i.i.i.i.i, %bb.alp ]
  %i.dcm = phi ptr [ %i.dcl, %bb.aln ], [ %i.dcq, %bb.alp ] ; 3 uses
  %i.dcn = icmp eq i64 %i.dch, %.val.i.i.i.i.i.i.i.i
  br i1 %i.dcn, label %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i.i.i: ; preds = %bb.alo
  %i.dco = getelementptr inbounds nuw i8, ptr %i.dcm, i64 8
  %i.dcp = call fastcc noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE(ptr noundef nonnull readonly align 8 dereferenceable(240) %39, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.dco)
  br i1 %i.dcp, label %_ZNSt13unordered_mapIN12_GLOBAL__N_111CompileDataEjSt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_jEEE4findERS7_.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i.i.i, %bb.alo
  %i.dcq = load ptr, ptr %i.dcm, align 8, !tbaa !235 ; 3 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.dcq, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i.i400, label %bb.alp

bb.alp:                                           ; preds = %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i
  %i.dcr = getelementptr i8, ptr %i.dcq, i64 256
  %.val21.i.i.i.i.i.i.i = load i64, ptr %i.dcr, align 8, !tbaa !430 ; 2 uses
  %i.dcs = urem i64 %.val21.i.i.i.i.i.i.i, %.val9.i.i.i.i.i
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.dcs, %i.dci
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.alo, label %.loopexit.i.i.i400, !llvm.loop !895

.loopexit.i.i.i400:                               ; preds = %bb.alp, %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i, %.preheader135.i, %bb.alm
  %.val15.i.i.i = load ptr, ptr %i.cwq, align 8, !tbaa !438, !noalias !1050
  %.val16.i.i.i = load ptr, ptr %i.cwr, align 8, !tbaa !439, !noalias !1050
  %i.dct = ptrtoint ptr %.val16.i.i.i to i64
  %i.dcu = ptrtoint ptr %.val15.i.i.i to i64
  %i.dcv = sub i64 %i.dct, %i.dcu
  %i.dcw = sdiv exact i64 %i.dcv, 48
  %i.dcx = trunc i64 %i.dcw to i32
  %i.dcy = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #29
          to label %.noexc.i85.i.i unwind label %bb.amx ; 32 uses

.noexc.i85.i.i:                                   ; preds = %.loopexit.i.i.i400
  store ptr null, ptr %i.dcy, align 8, !tbaa !235
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcy, i64 8 ; 7 uses
  %i.dda = getelementptr inbounds nuw i8, ptr %i.dcy, i64 24 ; 3 uses
  store ptr %i.dda, ptr %i.dcz, align 8, !tbaa !125
  %i.ddb = load ptr, ptr %39, align 8, !tbaa !102, !noalias !1050 ; 2 uses
  %i.ddc = icmp eq ptr %i.ddb, %i.cws
  br i1 %i.ddc, label %bb.alq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.alq:                                           ; preds = %.noexc.i85.i.i
  %i.ddd = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050 ; 3 uses
  %i.dde = icmp ult i64 %i.ddd, 16
  call void @llvm.assume(i1 %i.dde)
  %i.ddf = add nuw nsw i64 %i.ddd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dda, ptr noundef nonnull align 8 dereferenceable(1) %i.cws, i64 %i.ddf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i85.i.i
  store ptr %i.ddb, ptr %i.dcz, align 8, !tbaa !102
  %i.ddg = load i64, ptr %i.cws, align 8, !tbaa !103, !noalias !1050
  store i64 %i.ddg, ptr %i.dda, align 8, !tbaa !103
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.alq
  %i.ddh = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ddd, %bb.alq ]
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.dcy, i64 16
  store i64 %i.ddh, ptr %i.ddi, align 8, !tbaa !126
  store ptr %i.cws, ptr %39, align 8, !tbaa !102, !noalias !1050
  store i64 0, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050
  store i8 0, ptr %i.cws, align 8, !tbaa !103, !noalias !1050
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.dcy, i64 40 ; 2 uses
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.dcy, i64 56 ; 3 uses
  store ptr %i.ddk, ptr %i.ddj, align 8, !tbaa !125
  %i.ddl = load ptr, ptr %i.cwt, align 8, !tbaa !102, !noalias !1050 ; 2 uses
  %i.ddm = icmp eq ptr %i.ddl, %i.cwu
  br i1 %i.ddm, label %bb.alr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i.i.i.i.i.i.i.i.i

bb.alr:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ddn = load i64, ptr %.phi.trans.insert1.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050 ; 3 uses
  %i.ddo = icmp ult i64 %i.ddn, 16
  call void @llvm.assume(i1 %i.ddo)
  %i.ddp = add nuw nsw i64 %i.ddn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ddk, ptr noundef nonnull align 8 dereferenceable(1) %i.cwu, i64 %i.ddp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ddl, ptr %i.ddj, align 8, !tbaa !102
  %i.ddq = load i64, ptr %i.cwu, align 8, !tbaa !103, !noalias !1050
  store i64 %i.ddq, ptr %i.ddk, align 8, !tbaa !103
  %.pre2.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert1.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i.i.i.i.i.i.i.i.i, %bb.alr
  %i.ddr = phi i64 [ %.pre2.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i.i.i.i.i.i.i.i.i.i ], [ %i.ddn, %bb.alr ]
  %i.dds = getelementptr inbounds nuw i8, ptr %i.dcy, i64 48
  store i64 %i.ddr, ptr %i.dds, align 8, !tbaa !126
  store ptr %i.cwu, ptr %i.cwt, align 8, !tbaa !102, !noalias !1050
  store i64 0, ptr %.phi.trans.insert1.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050
  store i8 0, ptr %i.cwu, align 8, !tbaa !103, !noalias !1050
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.dcy, i64 72 ; 2 uses
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.dcy, i64 88 ; 3 uses
  store ptr %i.ddu, ptr %i.ddt, align 8, !tbaa !125
  %i.ddv = load ptr, ptr %i.cwv, align 8, !tbaa !102, !noalias !1050 ; 2 uses
  %i.ddw = icmp eq ptr %i.ddv, %i.cww
  br i1 %i.ddw, label %bb.als, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.als:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i.i.i.i.i.i.i.i.i.i
  %i.ddx = load i64, ptr %.phi.trans.insert3.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050 ; 3 uses
  %i.ddy = icmp ult i64 %i.ddx, 16
  call void @llvm.assume(i1 %i.ddy)
  %i.ddz = add nuw nsw i64 %i.ddx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ddu, ptr noundef nonnull align 8 dereferenceable(1) %i.cww, i64 %i.ddz, i1 false)
  br label %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS1_RjEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb1EEEEEEDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i.i.i.i.i.i.i.i.i.i
  store ptr %i.ddv, ptr %i.ddt, align 8, !tbaa !102
  %i.dea = load i64, ptr %i.cww, align 8, !tbaa !103, !noalias !1050
  store i64 %i.dea, ptr %i.ddu, align 8, !tbaa !103
  %.pre4.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert3.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050
  br label %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS1_RjEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb1EEEEEEDpOT_.exit.i.i.i.i.i.i

_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS1_RjEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb1EEEEEEDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.als
  %i.deb = phi i64 [ %i.ddx, %bb.als ], [ %.pre4.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dec = getelementptr inbounds nuw i8, ptr %i.dcy, i64 80
  store i64 %i.deb, ptr %i.dec, align 8, !tbaa !126
  store ptr %i.cww, ptr %i.cwv, align 8, !tbaa !102, !noalias !1050
  store i64 0, ptr %.phi.trans.insert3.i.i.i.i.i.i.i.i, align 8, !tbaa !126, !noalias !1050
  store i8 0, ptr %i.cww, align 8, !tbaa !103, !noalias !1050
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dcy, i64 104
  %i.dee = load <2 x ptr>, ptr %i.cwx, align 8, !tbaa !412, !noalias !1050
  store <2 x ptr> %i.dee, ptr %i.ded, align 8, !tbaa !412
  %i.def = getelementptr inbounds nuw i8, ptr %i.dcy, i64 120
  %i.deg = load ptr, ptr %i.cwy, align 8, !tbaa !1017, !noalias !1050
  store ptr %i.deg, ptr %i.def, align 8, !tbaa !1017
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cwx, i8 0, i64 24, i1 false), !noalias !1050
  %218 = getelementptr inbounds nuw i8, ptr %i.dcy, i64 128
  %219 = load <2 x ptr>, ptr %i.cwz, align 8, !tbaa !440, !noalias !1050
  store <2 x ptr> %219, ptr %218, align 8, !tbaa !440
  %i.deh = getelementptr inbounds nuw i8, ptr %i.dcy, i64 144
  %i.dei = load ptr, ptr %i.cxa, align 8, !tbaa !393, !noalias !1050
  store ptr %i.dei, ptr %i.deh, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cwz, i8 0, i64 24, i1 false), !noalias !1050
  %i.dej = getelementptr inbounds nuw i8, ptr %i.dcy, i64 152
  %220 = load <2 x ptr>, ptr %i.cxb, align 8, !tbaa !440, !noalias !1050
  store <2 x ptr> %220, ptr %i.dej, align 8, !tbaa !440
  %i.dek = getelementptr inbounds nuw i8, ptr %i.dcy, i64 168
  %i.del = load ptr, ptr %i.cxc, align 8, !tbaa !393, !noalias !1050
  store ptr %i.del, ptr %i.dek, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cxb, i8 0, i64 24, i1 false), !noalias !1050
  %i.dem = getelementptr inbounds nuw i8, ptr %i.dcy, i64 176
  %i.den = load <2 x ptr>, ptr %i.cxd, align 8, !tbaa !440, !noalias !1050
  store <2 x ptr> %i.den, ptr %i.dem, align 8, !tbaa !440
  %i.deo = getelementptr inbounds nuw i8, ptr %i.dcy, i64 192
  %i.dep = load ptr, ptr %i.cxe, align 8, !tbaa !393, !noalias !1050
  store ptr %i.dep, ptr %i.deo, align 8, !tbaa !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cxd, i8 0, i64 24, i1 false), !noalias !1050
  %i.deq = getelementptr inbounds nuw i8, ptr %i.dcy, i64 200
  %i.der = load <2 x ptr>, ptr %i.cxf, align 8, !tbaa !441, !noalias !1050
  store <2 x ptr> %i.der, ptr %i.deq, align 8, !tbaa !441
  %i.des = getelementptr inbounds nuw i8, ptr %i.dcy, i64 216
  %i.det = load ptr, ptr %i.cxg, align 8, !tbaa !398, !noalias !1050
  store ptr %i.det, ptr %i.des, align 8, !tbaa !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cxf, i8 0, i64 24, i1 false), !noalias !1050
  %i.deu = getelementptr inbounds nuw i8, ptr %i.dcy, i64 224
  %i.dev = load <2 x ptr>, ptr %i.cxh, align 8, !tbaa !441, !noalias !1050
  store <2 x ptr> %i.dev, ptr %i.deu, align 8, !tbaa !441
  %i.dew = getelementptr inbounds nuw i8, ptr %i.dcy, i64 240
  %i.dex = load ptr, ptr %i.cxi, align 8, !tbaa !398, !noalias !1050
  store ptr %i.dex, ptr %i.dew, align 8, !tbaa !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cxh, i8 0, i64 24, i1 false), !noalias !1050
  %i.dey = getelementptr inbounds nuw i8, ptr %i.dcy, i64 248
  store i32 %i.dcx, ptr %i.dey, align 8, !tbaa !1065
  %.val29.i.i.i.i.i.i = load i64, ptr %i.cwn, align 8, !tbaa !1052, !noalias !1050
  %i.dez = icmp eq i64 %.val29.i.i.i.i.i.i, 0
  br i1 %i.dez, label %.preheader.i, label %.critedge.i.i.i.i.i.i

.preheader.i:                                     ; preds = %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS1_RjEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb1EEEEEEDpOT_.exit.i.i.i.i.i.i, %bb.alt
  %.sroa.050.0.in.i.i.i.i.i.i = phi ptr [ %.sroa.050.0.i.i.i.i.i.i, %bb.alt ], [ %i.cwp, %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS1_RjEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb1EEEEEEDpOT_.exit.i.i.i.i.i.i ]
  %.sroa.050.0.i.i.i.i.i.i = load ptr, ptr %.sroa.050.0.in.i.i.i.i.i.i, align 8, !tbaa !235 ; 4 uses
  %.not68.i.i.i.i.i.i = icmp eq ptr %.sroa.050.0.i.i.i.i.i.i, null
  br i1 %.not68.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, label %bb.alt

bb.alt:                                           ; preds = %.preheader.i
  %i.dfa = getelementptr inbounds nuw i8, ptr %.sroa.050.0.i.i.i.i.i.i, i64 8
  %i.dfb = call fastcc noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(240) %i.dcz, ptr noundef nonnull align 8 dereferenceable(256) %i.dfa)
  br i1 %i.dfb, label %_ZNKSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.i.i.i.i.i.i, label %.preheader.i, !llvm.loop !896

.critedge.i.i.i.i.i.i:                            ; preds = %.preheader.i, %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS1_RjEEEPNS6_16_Hashtable_allocISaINS6_10_Hash_nodeIS4_Lb1EEEEEEDpOT_.exit.i.i.i.i.i.i
  %i.dfc = call fastcc noundef i64 @_ZNKSt8__detail15_Hash_code_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS4_(ptr noundef nonnull align 8 dereferenceable(240) %i.dcz) ; 4 uses
  %.val33.i.i.i.i.i.i = load i64, ptr %i.cwo, align 8, !tbaa !229, !noalias !1050 ; 3 uses
  %i.dfd = urem i64 %i.dfc, %.val33.i.i.i.i.i.i   ; 3 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.cwn, align 8, !tbaa !1052, !noalias !1050 ; 2 uses
  %.not.i.i.i.i.i.i402 = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i402, label %.critedge28.i.i.i.i.i.i, label %bb.alu

bb.alu:                                           ; preds = %.critedge.i.i.i.i.i.i
  %.val34.i.i.i.i.i.i = load ptr, ptr %i.cwm, align 8, !tbaa !228, !noalias !1050
  %i.dfe = getelementptr inbounds nuw [8 x i8], ptr %.val34.i.i.i.i.i.i, i64 %i.dfd
  %i.dff = load ptr, ptr %i.dfe, align 8, !tbaa !234 ; 2 uses
  %.not.i.i.i.i.i.i86.i.i = icmp eq ptr %i.dff, null
  br i1 %.not.i.i.i.i.i.i86.i.i, label %.critedge28.i.i.i.i.i.i, label %bb.alv

bb.alv:                                           ; preds = %bb.alu
  %i.dfg = load ptr, ptr %i.dff, align 8, !tbaa !235 ; 2 uses
  %.phi.trans.insert.i.i44.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dfg, i64 256
  %.val.i.pre.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i44.i.i.i.i.i.i, align 8, !tbaa !430
  br label %bb.alw

bb.alw:                                           ; preds = %bb.alx, %bb.alv
  %.val.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.pre.i.i.i.i.i.i.i.i, %bb.alv ], [ %.val21.i.i.i.i.i.i.i.i, %bb.alx ]
  %i.dfh = phi ptr [ %i.dfg, %bb.alv ], [ %i.dfl, %bb.alx ] ; 3 uses
  %i.dfi = icmp eq i64 %i.dfc, %.val.i.i.i.i.i.i.i.i.i
  br i1 %i.dfi, label %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.alw
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfh, i64 8
  %i.dfk = call fastcc noundef zeroext i1 @_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE(ptr noundef nonnull readonly align 8 dereferenceable(240) %i.dcz, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.dfj)
  br i1 %i.dfk, label %_ZNKSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit.i.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i.i.i.i.i.i.i, %bb.alw
  %i.dfl = load ptr, ptr %i.dfh, align 8, !tbaa !235 ; 3 uses
  %.not18.i.i.i.i.i.i.i.i = icmp eq ptr %i.dfl, null
  br i1 %.not18.i.i.i.i.i.i.i.i, label %.critedge28.i.i.i.i.i.i, label %bb.alx

bb.alx:                                           ; preds = %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i
  %i.dfm = getelementptr i8, ptr %i.dfl, i64 256
  %.val21.i.i.i.i.i.i.i.i = load i64, ptr %i.dfm, align 8, !tbaa !430 ; 2 uses
  %i.dfn = urem i64 %.val21.i.i.i.i.i.i.i.i, %.val33.i.i.i.i.i.i
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.dfn, %i.dfd
  br i1 %.not19.i.i.i.i.i.i.i.i, label %bb.alw, label %.critedge28.i.i.i.i.i.i, !llvm.loop !895

.critedge28.i.i.i.i.i.i:                          ; preds = %bb.alx, %_ZNKSt8__detail15_Hashtable_baseIN12_GLOBAL__N_111CompileDataESt4pairIKS2_jENS_10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i.i.i.i.i.i.i, %bb.alu, %.critedge.i.i.i.i.i.i
  %i.dfo = load i64, ptr %i.cxk, align 8, !tbaa !431, !noalias !1050
  %i.dfp = invoke { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.cxj, i64 noundef %.val33.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.amq ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.critedge28.i.i.i.i.i.i
  %i.dfq = extractvalue { i8, i64 } %i.dfp, 0
  %i.dfr = trunc i8 %i.dfq to i1
  br i1 %i.dfr, label %bb.aly, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i403 = load ptr, ptr %i.cwm, align 8, !tbaa !228, !noalias !1050
  br label %bb.aml

bb.aly:                                           ; preds = %.noexc.i.i.i.i.i.i
  %i.dfs = extractvalue { i8, i64 } %i.dfp, 1     ; 7 uses
  %i.dft = icmp eq i64 %i.dfs, 1
  br i1 %i.dft, label %bb.alz, label %bb.ama, !prof !370

bb.alz:                                           ; preds = %bb.aly
  store ptr null, ptr %i.cxl, align 8, !tbaa !1066, !noalias !1050
  br label %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i

bb.ama:                                           ; preds = %bb.aly
  %i.dfu = icmp ugt i64 %i.dfs, 1152921504606846975
  br i1 %i.dfu, label %bb.amb, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12_GLOBAL__N_111CompileDataEjELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i.i, !prof !370

bb.amb:                                           ; preds = %bb.ama
  %i.dfv = icmp ugt i64 %i.dfs, 2305843009213693951
  br i1 %i.dfv, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %.noexc7.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.amb
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i411

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  unreachable

.noexc7.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.amb
  invoke void @_ZSt17__throw_bad_allocv() #30
          to label %.noexc5.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i411

.noexc5.i.i.i.i.i.i.i.i:                          ; preds = %.noexc7.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12_GLOBAL__N_111CompileDataEjELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ama
  %i.dfw = shl nuw nsw i64 %i.dfs, 3              ; 2 uses
  %i.dfx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dfw) #29
          to label %.noexc6.i.i.i.i.i.i.i.i unwind label %.loopexit.i407 ; 2 uses

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12_GLOBAL__N_111CompileDataEjELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dfx, i8 0, i64 %i.dfw, i1 false)
  br label %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i

_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc6.i.i.i.i.i.i.i.i, %bb.alz
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cxl, %bb.alz ], [ %i.dfx, %.noexc6.i.i.i.i.i.i.i.i ] ; 4 uses
  %.val.i.i.i47.i.i.i.i.i.i = load ptr, ptr %i.cwp, align 8, !tbaa !442, !noalias !1050 ; 2 uses
  store ptr null, ptr %i.cwp, align 8, !tbaa !442, !noalias !1050
  %.not30.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i47.i.i.i.i.i.i, null
  br i1 %.not30.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i, %bb.amf
  %.032.i.i.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i.i.i, %bb.amf ], [ 0, %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02531.i.i.i.i.i.i.i.i.i = phi ptr [ %.025.val.i.i.i.i.i.i.i.i.i, %bb.amf ], [ %.val.i.i.i47.i.i.i.i.i.i, %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %.025.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.02531.i.i.i.i.i.i.i.i.i, align 8, !tbaa !235 ; 2 uses
  %i.dfy = getelementptr i8, ptr %.02531.i.i.i.i.i.i.i.i.i, i64 256
  %.val29.i.i.i.i.i.i.i.i.i = load i64, ptr %i.dfy, align 8, !tbaa !430
  %i.dfz = urem i64 %.val29.i.i.i.i.i.i.i.i.i, %i.dfs ; 3 uses
  %i.dga = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 %i.dfz ; 3 uses
  %i.dgb = load ptr, ptr %i.dga, align 8, !tbaa !234 ; 2 uses
  %.not27.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dgb, null
  br i1 %.not27.i.i.i.i.i.i.i.i.i, label %bb.amc, label %bb.ame

bb.amc:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dgc = load ptr, ptr %i.cwp, align 8, !tbaa !442, !noalias !1050
  store ptr %i.dgc, ptr %.02531.i.i.i.i.i.i.i.i.i, align 8, !tbaa !235
  store ptr %.02531.i.i.i.i.i.i.i.i.i, ptr %i.cwp, align 8, !tbaa !442, !noalias !1050
  store ptr %i.cwp, ptr %i.dga, align 8, !tbaa !234
  %i.dgd = load ptr, ptr %.02531.i.i.i.i.i.i.i.i.i, align 8, !tbaa !235
  %.not28.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dgd, null
  br i1 %.not28.i.i.i.i.i.i.i.i.i, label %bb.amf, label %bb.amd

bb.amd:                                           ; preds = %bb.amc
  %i.dge = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i.i.i.i.i.i.i, i64 %.032.i.i.i.i.i.i.i.i.i
  store ptr %.02531.i.i.i.i.i.i.i.i.i, ptr %i.dge, align 8, !tbaa !234
  br label %bb.amf

bb.ame:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dgf = load ptr, ptr %i.dgb, align 8, !tbaa !235
  store ptr %i.dgf, ptr %.02531.i.i.i.i.i.i.i.i.i, align 8, !tbaa !235
  %i.dgg = load ptr, ptr %i.dga, align 8, !tbaa !234
  store ptr %.02531.i.i.i.i.i.i.i.i.i, ptr %i.dgg, align 8, !tbaa !235
  br label %bb.amf

bb.amf:                                           ; preds = %bb.ame, %bb.amd, %bb.amc
  %.1.i.i.i.i.i.i.i.i.i = phi i64 [ %.032.i.i.i.i.i.i.i.i.i, %bb.ame ], [ %i.dfz, %bb.amd ], [ %i.dfz, %bb.amc ]
  %.not.i.i.i.i.i.i.i.i.i410 = icmp eq ptr %.025.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i410, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !897

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.amf, %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i
  %i.dgh = load ptr, ptr %i.cwm, align 8, !tbaa !228, !noalias !1050 ; 2 uses
  %i.dgi = icmp eq ptr %i.dgh, %i.cxl
  br i1 %i.dgi, label %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i.i.i.i, label %bb.amg

bb.amg:                                           ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.dgj = load i64, ptr %i.cwo, align 8, !tbaa !229, !noalias !1050
  %i.dgk = shl i64 %i.dgj, 3
  call void @_ZdlPvm(ptr noundef %i.dgh, i64 noundef %i.dgk) #28
  br label %_ZNSt10_HashtableIN12_GLOBAL__N_111CompileDataESt4pairIKS1_jESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i.i.i.i

.loopexit.i407:                                   ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN12_GLOBAL__N_111CompileDataEjELb1EEEEE19_M_allocate_bucketsEm.exit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i408 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.amh

.loopexit.split-lp.i411:                          ; preds = %.noexc7.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i412 = landingpad { ptr, i32 }
          catch ptr null
end_hunk_2
