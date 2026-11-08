Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SegmentNodeList?download=true
inline.NumInlined: 1012
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_:bb.a

bb.r:                                             ; preds = %bb.q
  %.not.i53 = fcmp one double %i.e, %i.g
  %..i56 = zext i1 %i.j to i32
  %.mux68 = select i1 %i.i, i32 -1, i32 %..i56
  %spec.select80 = select i1 %.not.i53, i32 1, i32 %.mux68
  br label %_ZN4geos6noding22SegmentPointComparator12compareValueEii.exit

bb.s:                                             ; preds = %bb.b
  %brmerge81 = fcmp one double %i.a, %i.b         ; 2 uses
  %brmerge83 = select i1 %brmerge81, i1 true, i1 %i.l
  %i.n = xor i1 %i.i, %brmerge81
  %.mux82.mux = select i1 %i.n, i32 1, i32 -1
  br i1 %brmerge83, label %_ZN4geos6noding22SegmentPointComparator12compareValueEii.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not7.i60 = fcmp one double %i.e, %i.g
  %..i61 = zext i1 %.not7.i60 to i32
  br label %_ZN4geos6noding22SegmentPointComparator12compareValueEii.exit

_ZN4geos6noding22SegmentPointComparator12compareValueEii.exit: ; preds = %bb.r, %bb.j, %bb.f, %bb.d, %bb.s, %bb.o, %bb.l, %bb.g, %bb.t, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.i, %bb.h, %bb.e, %bb.c, %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ -1, %bb.n ], [ 0, %bb.b ], [ %spec.select75, %bb.j ], [ %.mux77, %bb.l ], [ %..i36, %bb.h ], [ %.mux79, %bb.o ], [ %..i46, %bb.m ], [ %..i51, %bb.p ], [ %..i61, %bb.t ], [ -1, %bb.c ], [ %spec.select, %bb.d ], [ %spec.select80, %bb.r ], [ -1, %bb.e ], [ -1, %bb.k ], [ -1, %bb.q ], [ %.mux73.mux, %bb.g ], [ %spec.select71, %bb.f ], [ %.mux82.mux, %bb.s ], [ -1, %bb.i ]
  ret i32 %.1
}

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util13GEOSExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 !guid !181 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !guid !182 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE17_M_realloc_insertIJRKNS1_18NodedSegmentStringERKNS0_4geom10CoordinateERmiEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !190 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !101    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %4, align 8, !tbaa !31
  %i.s = load i32, ptr %5, align 4, !tbaa !46
  invoke void @_ZN4geos6noding11SegmentNodeC1ERKNS0_18NodedSegmentStringERKNS_4geom10CoordinateEmi(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.r, i32 noundef %i.s)
          to label %_ZNSt16allocator_traitsISaIN4geos6noding11SegmentNodeEEE9constructIS2_JRKNS1_18NodedSegmentStringERKNS0_4geom10CoordinateERmiEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN4geos6noding11SegmentNodeEEE9constructIS2_JRKNS1_18NodedSegmentStringERKNS0_4geom10CoordinateERmiEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN4geos6noding11SegmentNodeEEE9constructIS2_JRKNS1_18NodedSegmentStringERKNS0_4geom10CoordinateERmiEEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4geos6noding11SegmentNodeEEE9constructIS2_JRKNS1_18NodedSegmentStringERKNS0_4geom10CoordinateERmiEEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4geos6noding11SegmentNodeEEE9constructIS2_JRKNS1_18NodedSegmentStringERKNS0_4geom10CoordinateERmiEEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !tbaa.struct !60, !alias.scope !191
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !186

_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt16allocator_traitsISaIN4geos6noding11SegmentNodeEEE9constructIS2_JRKNS1_18NodedSegmentStringERKNS0_4geom10CoordinateERmiEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4geos6noding11SegmentNodeEEE9constructIS2_JRKNS1_18NodedSegmentStringERKNS0_4geom10CoordinateERmiEEEvRS3_PT_DpOT0_.exit ], [ %i.u, %.lr.ph.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i29, label %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i.i30
  %.012.i.i.i.i31 = phi ptr [ %i.x, %.lr.ph.i.i.i.i30 ], [ %i.v, %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i.i32 = phi ptr [ %i.w, %.lr.ph.i.i.i.i30 ], [ %1, %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i31, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i32, i64 40, i1 false), !tbaa.struct !60, !alias.scope !192
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i32, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i31, i64 40 ; 2 uses
  %.not.i.i.i.i33 = icmp eq ptr %i.w, %i.b
  br i1 %.not.i.i.i.i33, label %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, label %.lr.ph.i.i.i.i30, !llvm.loop !186

_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35: ; preds = %.lr.ph.i.i.i.i30, %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i.i34 = phi ptr [ %i.v, %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.x, %.lr.ph.i.i.i.i30 ]
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4geos6noding11SegmentNodeESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #21
  br label %_ZNSt12_Vector_baseIN4geos6noding11SegmentNodeESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4geos6noding11SegmentNodeESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !101
  store ptr %.0.lcssa.i.i.i.i34, ptr %i.a, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.z, ptr %i.y, align 8, !tbaa !48
  ret void

bb.d:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN4geos6noding11SegmentNodeESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #20 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #21
  invoke void @__cxa_rethrow() #22
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.aa

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN4geos6noding11SegmentNodeC1ERKNS0_18NodedSegmentStringERKNS_4geom10CoordinateEmi(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i32 noundef) unnamed_addr #4

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !199 {
bb.a:
  %3 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %4 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %5 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %6 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %7 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %8 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %9 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %10 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %11 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 640
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph58

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEET_SF_SF_T0_.exit"
  %i.n = icmp eq i64 %i.z, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph58, !llvm.loop !193

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fz, %bb.b ]
  %storemerge22.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.013.1.i.i, %bb.b ]
  %i.o = udiv exact i64 %.lcssa, 40               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.p = add nsw i64 %i.o, -2
  %i.q = lshr i64 %i.p, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.q, %._crit_edge ], [ %i.s, %bb.c ] ; 4 uses
  %i.r = getelementptr inbounds [40 x i8], ptr %0, i64 %.010.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %i.o, ptr noundef align 8 %11)
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.s = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_RT0_.exit.i.i", label %bb.c, !llvm.loop !194

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_RT0_.exit.i.i": ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_RT0_.exit.i.i", %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.t, %.lr.ph.i9.i ], [ %storemerge22.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_RT0_.exit.i.i" ]
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !60
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.a                       ; 2 uses
  %i.w = sdiv exact i64 %i.v, 40
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.w, ptr noundef align 8 %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.x = icmp sgt i64 %i.v, 40
  br i1 %i.x, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !195

.lr.ph58:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2256 = phi ptr [ %.sroa.013.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 13 uses
  %.02355 = phi i64 [ %i.z, %bb.b ], [ %2, %.lr.ph ]
  %i.y = phi i64 [ %i.fz, %bb.b ], [ %i.c, %.lr.ph ]
  %i.z = add nsw i64 %.02355, -1                  ; 3 uses
  %i.aa = udiv i64 %i.y, 80
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.aa ; 13 uses
  %i.ac = getelementptr inbounds i8, ptr %storemerge2256, i64 -40 ; 4 uses
  %i.ad = load i64, ptr %i.f, align 8, !tbaa !57  ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !57 ; 4 uses
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40.i.i", label %bb.d

bb.d:                                             ; preds = %.lr.ph58
  %i.ah = icmp ugt i64 %i.ad, %i.af
  br i1 %i.ah, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.g, align 8
  %i.ak = load <2 x double>, ptr %i.ai, align 8
  %i.al = fcmp oeq <2 x double> %i.aj, %i.ak      ; 2 uses
  %i.am = extractelement <2 x i1> %i.al, i64 0
  %i.an = extractelement <2 x i1> %i.al, i64 1
  %.0.i.i.i.i.i.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %.0.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load i8, ptr %i.h, align 4, !tbaa !59, !range !50, !noundef !42
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.g, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40.i.i"

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !59, !range !50, !noundef !42
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i": ; preds = %bb.g
  %i.at = load i32, ptr %i.e, align 8, !tbaa !62
  %i.au = tail call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40_crit_edge.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread_crit_edge.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40_crit_edge.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i"
  %.pre59.i.i = load i64, ptr %i.ae, align 8, !tbaa !57
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread_crit_edge.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i"
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !57
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40_crit_edge.i.i", %bb.f, %.lr.ph58
  %i.aw = phi i64 [ %.pre59.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40_crit_edge.i.i" ], [ %i.af, %bb.f ], [ %i.af, %.lr.ph58 ] ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %storemerge2256, i64 -8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !57 ; 5 uses
  %i.az = icmp ult i64 %i.aw, %i.ay
  br i1 %i.az, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread44.i.i", label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40.i.i"
  %i.ba = icmp ugt i64 %i.aw, %i.ay
  br i1 %i.ba, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %storemerge2256, i64 -32 ; 2 uses
  %i.bd = load <2 x double>, ptr %i.bb, align 8
  %i.be = load <2 x double>, ptr %i.bc, align 8
  %i.bf = fcmp oeq <2 x double> %i.bd, %i.be      ; 2 uses
  %i.bg = extractelement <2 x i1> %i.bf, i64 0
  %i.bh = extractelement <2 x i1> %i.bf, i64 1
  %.0.i.i.i.i26.i.i = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %.0.i.i.i.i26.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !59, !range !50, !noundef !42
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.k, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread44.i.i"

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds i8, ptr %storemerge2256, i64 -36
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !59, !range !50, !noundef !42
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.i.i": ; preds = %bb.k
  %i.bo = load i32, ptr %i.ab, align 8, !tbaa !62
  %i.bp = tail call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread44.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread_crit_edge.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread_crit_edge.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.i.i"
  %.pre60.i.i = load i64, ptr %i.ax, align 8, !tbaa !57
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread44.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.i.i", %bb.j, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread40.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread_crit_edge.i.i", %bb.k, %bb.i, %bb.h
  %i.br = phi i64 [ %.pre60.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread_crit_edge.i.i" ], [ %i.ay, %bb.k ], [ %i.ay, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %i.bs = load i64, ptr %i.f, align 8, !tbaa !57  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  br i1 %i.bt, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread48.i.i", label %bb.l

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread.i.i"
  %i.bu = icmp ugt i64 %i.bs, %i.br
  br i1 %i.bu, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds i8, ptr %storemerge2256, i64 -32 ; 2 uses
  %i.bw = load <2 x double>, ptr %i.g, align 8
  %i.bx = load <2 x double>, ptr %i.bv, align 8
  %i.by = fcmp oeq <2 x double> %i.bw, %i.bx      ; 2 uses
  %i.bz = extractelement <2 x i1> %i.by, i64 0
  %i.ca = extractelement <2 x i1> %i.by, i64 1
  %.0.i.i.i.i29.i.i = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %.0.i.i.i.i29.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = load i8, ptr %i.h, align 4, !tbaa !59, !range !50, !noundef !42
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.o, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread48.i.i"

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds i8, ptr %storemerge2256, i64 -36
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !59, !range !50, !noundef !42
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.i.i": ; preds = %bb.o
  %i.cg = load i32, ptr %i.e, align 8, !tbaa !62
  %i.ch = tail call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread48.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread48.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.i.i", %bb.n, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %8, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.i.i", %bb.o, %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread_crit_edge.i.i", %bb.g, %bb.e, %bb.d
  %i.cj = phi i64 [ %.pre.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread_crit_edge.i.i" ], [ %i.ad, %bb.g ], [ %i.ad, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %storemerge2256, i64 -8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !57 ; 5 uses
  %i.cm = icmp ult i64 %i.cj, %i.cl
  br i1 %i.cm, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread52.i.i", label %bb.p

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i"
  %i.cn = icmp ugt i64 %i.cj, %i.cl
  br i1 %i.cn, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds i8, ptr %storemerge2256, i64 -32 ; 2 uses
  %i.cp = load <2 x double>, ptr %i.g, align 8
  %i.cq = load <2 x double>, ptr %i.co, align 8
  %i.cr = fcmp oeq <2 x double> %i.cp, %i.cq      ; 2 uses
  %i.cs = extractelement <2 x i1> %i.cr, i64 0
  %i.ct = extractelement <2 x i1> %i.cr, i64 1
  %.0.i.i.i.i32.i.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %.0.i.i.i.i32.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = load i8, ptr %i.h, align 4, !tbaa !59, !range !50, !noundef !42
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.s, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread52.i.i"

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds i8, ptr %storemerge2256, i64 -36
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !59, !range !50, !noundef !42
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.i.i": ; preds = %bb.s
  %i.cz = load i32, ptr %i.e, align 8, !tbaa !62
  %i.da = tail call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.co)
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread52.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread_crit_edge.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread_crit_edge.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.i.i"
  %.pre58.i.i = load i64, ptr %i.ck, align 8, !tbaa !57
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread52.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.i.i", %bb.r, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread_crit_edge.i.i", %bb.s, %bb.q, %bb.p
  %i.dc = phi i64 [ %.pre58.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread_crit_edge.i.i" ], [ %i.cl, %bb.s ], [ %i.cl, %bb.p ], [ %i.cl, %bb.q ] ; 2 uses
  %i.dd = load i64, ptr %i.ae, align 8, !tbaa !57 ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  br i1 %i.de, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread56.i.i", label %bb.t

bb.t:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread.i.i"
  %i.df = icmp ugt i64 %i.dd, %i.dc
  br i1 %i.df, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread.i.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %storemerge2256, i64 -32 ; 2 uses
  %i.di = load <2 x double>, ptr %i.dg, align 8
  %i.dj = load <2 x double>, ptr %i.dh, align 8
  %i.dk = fcmp oeq <2 x double> %i.di, %i.dj      ; 2 uses
  %i.dl = extractelement <2 x i1> %i.dk, i64 0
  %i.dm = extractelement <2 x i1> %i.dk, i64 1
  %.0.i.i.i.i35.i.i = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %.0.i.i.i.i35.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !59, !range !50, !noundef !42
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.w, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread56.i.i"

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds i8, ptr %storemerge2256, i64 -36
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !59, !range !50, !noundef !42
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.i.i": ; preds = %bb.w
  %i.dt = load i32, ptr %i.ab, align 8, !tbaa !62
  %i.du = tail call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.dh)
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread56.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread56.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.i.i", %bb.v, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.i.i", %bb.w, %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit37.thread56.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34.thread52.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit31.thread48.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit28.thread44.i.i"
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.bi
  %.sroa.013.0.i.i = phi ptr [ %i.fx, %bb.bi ], [ %i.e, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.bi ], [ %storemerge2256, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %i.dw = load i64, ptr %i.i, align 8, !tbaa !57  ; 4 uses
  br label %bb.x

bb.x:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.ew, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i" ] ; 14 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 32
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !57 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dw
  br i1 %i.dz, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ea = icmp ugt i64 %i.dy, %i.dw
  br i1 %i.ea, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader", label %bb.z

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader": ; preds = %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i, %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.af, %bb.ad, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i", %bb.ab, %bb.z, %bb.y
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i"

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 8
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !58 ; 5 uses
  %i.ed = load double, ptr %i.j, align 8, !tbaa !58 ; 5 uses
  %i.ee = fcmp oeq double %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 16
  %i.eg = load double, ptr %i.ef, align 8         ; 5 uses
  %i.eh = load double, ptr %i.k, align 8          ; 5 uses
  %i.ei = fcmp oeq double %i.eg, %i.eh
  %.0.i.i.i.i.i13.i = select i1 %i.ee, i1 %i.ei, i1 false
  br i1 %.0.i.i.i.i.i13.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 4
  %i.ek = load i8, ptr %i.ej, align 4, !tbaa !59, !range !50, !noundef !42
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ab, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.em = load i8, ptr %i.l, align 4, !tbaa !59, !range !50, !noundef !42
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i": ; preds = %bb.ab
  %i.eo = load i32, ptr %.sroa.013.1.i.i, align 8, !tbaa !62
  %i.ep = fcmp olt double %i.ec, %i.ed            ; 6 uses
  %i.eq = fcmp ogt double %i.ec, %i.ed            ; 7 uses
  %i.er = fcmp olt double %i.eg, %i.eh            ; 6 uses
  %i.es = fcmp ogt double %i.eg, %i.eh            ; 7 uses
  switch i32 %i.eo, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader" [
    i32 0, label %bb.ac
    i32 1, label %bb.ae
    i32 2, label %bb.ag
    i32 3, label %bb.ah
    i32 4, label %bb.aj
    i32 5, label %bb.al
    i32 6, label %bb.an
    i32 7, label %bb.ap
  ]

bb.ac:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i"
  br i1 %i.ep, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %..i27.i47.i = zext i1 %i.es to i32
  %.mux.i48.i = select i1 %i.er, i32 -1, i32 %..i27.i47.i
  br i1 %i.eq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader", label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i

bb.ae:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i"
  br i1 %i.er, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %..i31.i44.i = zext i1 %i.eq to i32
  %.mux64.i45.i = select i1 %i.ep, i32 -1, i32 %..i31.i44.i
  br i1 %i.es, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader", label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i

bb.ag:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i"
  %brmerge72.i39.i = fcmp one double %i.eg, %i.eh ; 2 uses
  %brmerge74.i40.i = or i1 %i.eq, %brmerge72.i39.i
  %i.et = xor i1 %i.er, %brmerge72.i39.i
  %.mux73.mux.i41.i = select i1 %i.et, i32 1, i32 -1
  br i1 %brmerge74.i40.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"

bb.ah:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i"
  br i1 %i.eq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i38.i35.i = fcmp ueq double %i.ec, %i.ed
  %..i41.i36.i = zext i1 %i.es to i32
  %.mux66.i37.i = select i1 %i.er, i32 -1, i32 %..i41.i36.i
  br i1 %.not.i38.i35.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"

bb.aj:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i"
  br i1 %i.eq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %brmerge76.i31.i = select i1 %i.ep, i1 true, i1 %i.es
  %.mux77.i32.i = select i1 %i.ep, i32 1, i32 -1
  br i1 %brmerge76.i31.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"

bb.al:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i"
  br i1 %i.es, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", label %bb.am

bb.am:                                            ; preds = %bb.al
  %brmerge78.i27.i = or i1 %i.eq, %i.er
  %.mux79.i28.i = select i1 %i.er, i32 1, i32 -1
  br i1 %brmerge78.i27.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"

bb.an:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i"
  br i1 %i.es, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i53.i23.i = fcmp ueq double %i.eg, %i.eh
  %..i56.i24.i = zext i1 %i.eq to i32
  %.mux68.i25.i = select i1 %i.ep, i32 -1, i32 %..i56.i24.i
  br i1 %.not.i53.i23.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"

bb.ap:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i15.i"
  %brmerge81.i17.i = fcmp one double %i.ec, %i.ed ; 2 uses
  %brmerge83.i18.i = select i1 %brmerge81.i17.i, i1 true, i1 %i.es
  %i.eu = xor i1 %i.ep, %brmerge81.i17.i
  %.mux82.mux.i19.i = select i1 %i.eu, i32 1, i32 -1
  br i1 %brmerge83.i18.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"

_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i: ; preds = %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.af, %bb.ad
  %.1.i22.i = phi i32 [ %.mux82.mux.i19.i, %bb.ap ], [ %.mux.i48.i, %bb.ad ], [ %.mux68.i25.i, %bb.ao ], [ %.mux66.i37.i, %bb.ai ], [ %.mux77.i32.i, %bb.ak ], [ %.mux73.mux.i41.i, %bb.ag ], [ %.mux79.i28.i, %bb.am ], [ %.mux64.i45.i, %bb.af ]
  %i.ev = icmp slt i32 %.1.i22.i, 0
  br i1 %i.ev, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18.i.i": ; preds = %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit50.i, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.ae, %bb.ac, %bb.aa, %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 40
  br label %bb.x, !llvm.loop !196

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader"
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.preheader" ], [ %.sroa.0.1.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge" ] ; 5 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 5 uses
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !57 ; 2 uses
  %i.ez = icmp ult i64 %i.dw, %i.ey
  br i1 %i.ez, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", label %bb.aq

bb.aq:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i"
  %i.fa = icmp ugt i64 %i.dw, %i.ey
  br i1 %i.fa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32
  %i.fc = load double, ptr %i.j, align 8, !tbaa !58 ; 5 uses
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !58 ; 5 uses
  %i.fe = fcmp oeq double %i.fc, %i.fd
  %i.ff = load double, ptr %i.k, align 8          ; 5 uses
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.fh = load double, ptr %i.fg, align 8         ; 5 uses
  %i.fi = fcmp oeq double %i.ff, %i.fh
  %.0.i.i.i.i8.i.i = select i1 %i.fe, i1 %i.fi, i1 false
  br i1 %.0.i.i.i.i8.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fj = load i8, ptr %i.l, align 4, !tbaa !59, !range !50, !noundef !42
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.at, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge"

bb.at:                                            ; preds = %bb.as
  %i.fl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -36
  %i.fm = load i8, ptr %i.fl, align 4, !tbaa !59, !range !50, !noundef !42
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i": ; preds = %bb.at
  %i.fo = load i32, ptr %0, align 8, !tbaa !62
  %i.fp = fcmp olt double %i.fc, %i.fd            ; 6 uses
  %i.fq = fcmp ogt double %i.fc, %i.fd            ; 7 uses
  %i.fr = fcmp olt double %i.ff, %i.fh            ; 6 uses
  %i.fs = fcmp ogt double %i.ff, %i.fh            ; 7 uses
  switch i32 %i.fo, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i" [
    i32 0, label %bb.au
    i32 1, label %bb.aw
    i32 2, label %bb.ay
    i32 3, label %bb.az
    i32 4, label %bb.bb
    i32 5, label %bb.bd
    i32 6, label %bb.bf
    i32 7, label %bb.bh
  ]

bb.au:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i"
  br i1 %i.fp, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", label %bb.av

bb.av:                                            ; preds = %bb.au
  %..i27.i.i = zext i1 %i.fs to i32
  %.mux.i.i = select i1 %i.fr, i32 -1, i32 %..i27.i.i
  br i1 %i.fq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i", label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i

bb.aw:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i"
  br i1 %i.fr, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %..i31.i.i = zext i1 %i.fq to i32
  %.mux64.i.i = select i1 %i.fp, i32 -1, i32 %..i31.i.i
  br i1 %i.fs, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i", label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i

bb.ay:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i"
  %brmerge72.i.i = fcmp one double %i.ff, %i.fh   ; 2 uses
  %brmerge74.i.i = or i1 %i.fq, %brmerge72.i.i
  %i.ft = xor i1 %i.fr, %brmerge72.i.i
  %.mux73.mux.i.i = select i1 %i.ft, i32 1, i32 -1
  br i1 %brmerge74.i.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"

bb.az:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i"
  br i1 %i.fq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i38.i.i = fcmp ueq double %i.fc, %i.fd
  %..i41.i.i = zext i1 %i.fs to i32
  %.mux66.i.i = select i1 %i.fr, i32 -1, i32 %..i41.i.i
  br i1 %.not.i38.i.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"

bb.bb:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i"
  br i1 %i.fq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %brmerge76.i.i = select i1 %i.fp, i1 true, i1 %i.fs
  %.mux77.i.i = select i1 %i.fp, i32 1, i32 -1
  br i1 %brmerge76.i.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"

bb.bd:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i"
  br i1 %i.fs, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", label %bb.be

bb.be:                                            ; preds = %bb.bd
  %brmerge78.i.i = or i1 %i.fq, %i.fr
  %.mux79.i.i = select i1 %i.fr, i32 1, i32 -1
  br i1 %brmerge78.i.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"

bb.bf:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i"
  br i1 %i.fs, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i53.i.i = fcmp ueq double %i.ff, %i.fh
  %..i56.i.i = zext i1 %i.fq to i32
  %.mux68.i.i = select i1 %i.fp, i32 -1, i32 %..i56.i.i
  br i1 %.not.i53.i.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"

bb.bh:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i"
  %brmerge81.i.i = fcmp one double %i.fc, %i.fd   ; 2 uses
  %brmerge83.i.i = select i1 %brmerge81.i.i, i1 true, i1 %i.fs
  %i.fu = xor i1 %i.fp, %brmerge81.i.i
  %.mux82.mux.i.i = select i1 %i.fu, i32 1, i32 -1
  br i1 %brmerge83.i.i, label %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"

_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i: ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %bb.av
  %.1.i.i = phi i32 [ %.mux82.mux.i.i, %bb.bh ], [ %.mux.i.i, %bb.av ], [ %.mux68.i.i, %bb.bg ], [ %.mux66.i.i, %bb.ba ], [ %.mux77.i.i, %bb.bc ], [ %.mux73.mux.i.i, %bb.ay ], [ %.mux79.i.i, %bb.be ], [ %.mux64.i.i, %bb.ax ]
  %i.fv = icmp slt i32 %.1.i.i, 0
  br i1 %i.fv, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i.backedge": ; preds = %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.aw, %bb.au, %bb.as, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i14.i", !llvm.loop !197

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i": ; preds = %_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_.exit.i, %bb.bh, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %bb.av, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.i.i", %bb.at, %bb.ar, %bb.aq
  %i.fw = icmp ult ptr %.sroa.013.1.i.i, %.sroa.0.1.i.i
  br i1 %i.fw, label %bb.bi, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEET_SF_SF_T0_.exit"

bb.bi:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.1.i.i, i64 40, i1 false), !tbaa.struct !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1.i.i, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 40
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !198

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit10.thread.i.i"
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_T0_T1_"(ptr %.sroa.013.1.i.i, ptr %storemerge2256, i64 noundef %i.z)
  %i.fy = ptrtoint ptr %.sroa.013.1.i.i to i64
  %i.fz = sub i64 %i.fy, %i.a                     ; 3 uses
  %i.ga = icmp sgt i64 %i.fz, 640
  br i1 %i.ga, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !193

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEET_SF_SF_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !202 {
bb.a:
  %4 = alloca %"class.geos::noding::SegmentNode", align 8 ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"
  %.039 = phi i64 [ %i.ae, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.039, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 5 uses
  %i.f = getelementptr inbounds [40 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [40 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37", label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp ugt i64 %i.j, %i.l
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = load <2 x double>, ptr %i.o, align 8
  %i.r = load <2 x double>, ptr %i.p, align 8
  %i.s = fcmp oeq <2 x double> %i.q, %i.r         ; 2 uses
  %i.t = extractelement <2 x i1> %i.s, i64 0
  %i.u = extractelement <2 x i1> %i.s, i64 1
  %.0.i.i.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %.0.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !59, !range !50, !noundef !42
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37"

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.z = load i8, ptr %i.y, align 4, !tbaa !59, !range !50, !noundef !42
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit": ; preds = %bb.e
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !62
  %i.ac = tail call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37": ; preds = %bb.d, %.lr.ph, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread": ; preds = %bb.e, %bb.b, %bb.c, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37"
  %i.ae = phi i64 [ %i.g, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread37" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit" ], [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %bb.e ] ; 4 uses
  %i.af = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds [40 x i8], ptr %0, i64 %.039
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !tbaa.struct !60
  %i.ah = icmp slt i64 %i.ae, %i.b
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !200

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ae, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread" ] ; 5 uses
  %i.ai = and i64 %2, 1
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.ak = add nsw i64 %2, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa, %i.al
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.an = shl nsw i64 %.0.lcssa, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds [40 x i8], ptr %0, i64 %i.ao
  %i.aq = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false), !tbaa.struct !60
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %.1 = phi i64 [ %i.ao, %bb.g ], [ %.0.lcssa, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !60
  %i.ar = icmp sgt i64 %.1, %1
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.h
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i", %.lr.ph.i
  %.013.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0914.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i" ] ; 6 uses
  %.0914.in.i = add nsw i64 %.013.i, -1
  %.0914.i = sdiv i64 %.0914.in.i, 2              ; 4 uses
  %i.au = getelementptr inbounds [40 x i8], ptr %0, i64 %.0914.i ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %i.ax = load i64, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.az, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.bb = load <2 x double>, ptr %i.ba, align 8
  %i.bc = load <2 x double>, ptr %i.as, align 8
  %i.bd = fcmp oeq <2 x double> %i.bb, %i.bc      ; 2 uses
  %i.be = extractelement <2 x i1> %i.bd, i64 0
  %i.bf = extractelement <2 x i1> %i.bd, i64 1
  %.0.i.i.i.i.i = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %.0.i.i.i.i.i, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !59, !range !50, !noundef !42
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i"

bb.m:                                             ; preds = %bb.l
  %i.bj = load i8, ptr %i.at, align 4, !tbaa !59, !range !50, !noundef !42
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i", label %.loopexit

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i": ; preds = %bb.m
  %i.bl = load i32, ptr %i.au, align 8, !tbaa !62
  %i.bm = call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i", label %.loopexit

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i", %bb.l, %bb.i
  %i.bo = getelementptr inbounds [40 x i8], ptr %0, i64 %.013.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !60
  %i.bp = icmp sgt i64 %.0914.i, %1
  br i1 %i.bp, label %bb.i, label %.loopexit, !llvm.loop !201

.loopexit:                                        ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i", %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i", %bb.m, %bb.k, %bb.j, %bb.h
  %.0.lcssa.i = phi i64 [ %.1, %bb.h ], [ %.013.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.i" ], [ %.0914.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_.exit.thread9.i" ], [ %.013.i, %bb.k ], [ %.013.i, %bb.j ], [ %.013.i, %bb.m ]
  %i.bq = getelementptr inbounds [40 x i8], ptr %0, i64 %.0.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !60
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_SF_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !204 {
bb.a:
  %2 = alloca %"class.geos::noding::SegmentNode", align 8 ; 8 uses
  %3 = alloca %"class.geos::noding::SegmentNode", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.0.021, %1
  br i1 %.not22, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.l ] ; 2 uses
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.l ] ; 8 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.l ] ; 4 uses
  %i.i = mul i64 %indvar, 40                      ; 2 uses
  %i.j = add i64 %i.i, 40
  %i.k = udiv i64 %i.j, 40                        ; 2 uses
  %i.l = icmp ult i64 %i.i, -40                   ; 2 uses
  %umin.neg = sext i1 %i.l to i64
  %i.m = select i1 %i.l, i64 40, i64 0
  %.neg = mul i64 %i.k, -40
  %i.n = add i64 %.neg, %i.m                      ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.0.024, i64 %i.n
  %scevgep25 = getelementptr i8, ptr %.pn23, i64 %i.n
  %i.o = add nuw nsw i64 %i.k, 1
  %i.p = add nsw i64 %i.o, %umin.neg
  %i.q = mul nuw i64 %i.p, 40
  %i.r = getelementptr inbounds nuw i8, ptr %.pn23, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.b, align 8, !tbaa !57   ; 2 uses
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp ugt i64 %i.s, %i.t
  br i1 %i.v, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn23, i64 48 ; 2 uses
  %i.x = load <2 x double>, ptr %i.w, align 8
  %i.y = load <2 x double>, ptr %i.c, align 8
  %i.z = fcmp oeq <2 x double> %i.x, %i.y         ; 2 uses
  %i.aa = extractelement <2 x i1> %i.z, i64 0
  %i.ab = extractelement <2 x i1> %i.z, i64 1
  %.0.i.i.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %.0.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn23, i64 44
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !59, !range !50, !noundef !42
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"

bb.f:                                             ; preds = %bb.e
  %i.af = load i8, ptr %i.d, align 4, !tbaa !59, !range !50, !noundef !42
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit": ; preds = %bb.f
  %i.ah = load i32, ptr %.sroa.0.024, align 8, !tbaa !62
  %i.ai = call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18": ; preds = %bb.e, %bb.b, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.024, i64 40, i1 false), !tbaa.struct !60
  %i.ak = ptrtoint ptr %.sroa.0.024 to i64
  %i.al = sub i64 %i.ak, %i.h
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %scevgep25, i64 %i.q, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.l

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread": ; preds = %bb.f, %bb.c, %bb.d, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.024, i64 40, i1 false), !tbaa.struct !60
  br label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread"
  %.sroa.03.0.i = phi ptr [ %.sroa.0.024, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS_17__normal_iteratorIPNS3_11SegmentNodeESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread" ], [ %.sroa.0.0.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i" ] ; 6 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -40 ; 2 uses
  %i.an = load i64, ptr %i.e, align 8, !tbaa !57  ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !57 ; 2 uses
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp ugt i64 %i.an, %i.ap
  br i1 %i.ar, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -32 ; 2 uses
  %i.at = load <2 x double>, ptr %i.f, align 8
  %i.au = load <2 x double>, ptr %i.as, align 8
  %i.av = fcmp oeq <2 x double> %i.at, %i.au      ; 2 uses
  %i.aw = extractelement <2 x i1> %i.av, i64 0
  %i.ax = extractelement <2 x i1> %i.av, i64 1
  %.0.i.i.i.i.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %.0.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load i8, ptr %i.g, align 4, !tbaa !59, !range !50, !noundef !42
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i"

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -36
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !59, !range !50, !noundef !42
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i": ; preds = %bb.k
  %i.bd = load i32, ptr %2, align 8, !tbaa !62
  %i.be = call noundef i32 @_ZN4geos6noding22SegmentPointComparator7compareEiRKNS_4geom10CoordinateES5_(i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.as)
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.thread8.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i", %bb.j, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i, i64 40, i1 false), !tbaa.struct !60
  br label %bb.g, !llvm.loop !0

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit": ; preds = %bb.h, %bb.i, %bb.k, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNK4geos6noding15SegmentNodeList7prepareEvE3$_0EclINS3_11SegmentNodeENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.l

bb.l:                                             ; preds = %.loopexit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4geos6noding11SegmentNodeESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNKS3_15SegmentNodeList7prepareEvE3$_0EEEvT_T0_.exit"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.loopexit20, label %bb.b, !llvm.loop !203

.loopexit20:                                      ; preds = %bb.l, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom18CoordinateSequenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !guid !205 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom27FixedSizeCoordinateSequenceILm2EED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 !guid !206 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4geos4geom27FixedSizeCoordinateSequenceILm2EE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !210 {
_ZNSt10unique_ptrIN4geos4geom27FixedSizeCoordinateSequenceILm2EEESt14default_deleteIS3_EED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !211, !inline_history !209 ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !31, !noalias !211
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN4geos4geom27FixedSizeCoordinateSequenceILm2EEE, i64 16), ptr %i.b, align 8, !tbaa !45, !noalias !211
end_hunk_0
