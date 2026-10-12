Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/gbdt?download=true
inline.NumInlined: 3485
inline.NumDeleted: 1590
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIiSaIiEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_:bb.a
bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.z

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #38
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %0, align 8, !tbaa !202
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !188
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %0, align 8, !tbaa !202
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #21
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIPKN8LightGBM6MetricESaIS4_EELb1EE8_S_do_itERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !214    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #37
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 3 uses
  %i.k = icmp samesign ugt i64 %i.f, 8
  br i1 %i.k, label %bb.c, label %bb.d, !prof !611

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 8
  br i1 %i.l, label %bb.e, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !217
  store ptr %i.m, ptr %i.i, align 8, !tbaa !217
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit

_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.n, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %.09) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit unwind label %bb.g

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit: ; preds = %bb.e, %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %bb.d ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !212    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !215
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !212
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !213
  store ptr %.sroa.12.0, ptr %i.q, align 8, !tbaa !215
  %.not.i.i.i10 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #35
  br label %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EED2Ev.exit: ; preds = %bb.f, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit, %_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIPKN8LightGBM6MetricESaIS3_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEvEET_SD_RKS4_.exit ], [ true, %bb.f ]
  ret i1 %.0

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIPKN8LightGBM6MetricESaIS3_EED2Ev.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #38
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM12ScoreUpdaterC2EPKNS_7DatasetEi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #20 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !228    ; 2 uses
  %i.f = add nsw i64 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.f, ptr %i.b, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 1, ptr %i.c, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !190
  %i.h = load i32, ptr %0, align 4, !tbaa !190    ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 512)
  %.promoted = load i64, ptr %i.b, align 8, !tbaa !228
  %i.i = call i64 @llvm.smin.i64(i64 %.promoted, i64 %i.f) ; 3 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !228  ; 3 uses
  %.not18 = icmp sgt i64 %i.j, %i.i
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !170    ; 3 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !340  ; 3 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = load i64, ptr %i.c, align 8, !tbaa !228  ; 3 uses
  %i.q = sub i64 %i.l, %i.o
  %diff.check = icmp ugt i64 %i.q, -32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 2 uses
  %i.r = phi i64 [ %i.j, %.preheader.lr.ph ], [ %i.af, %.loopexit ] ; 5 uses
  %i.s = phi i64 [ %i.i, %.preheader.lr.ph ], [ %i.ah, %.loopexit ] ; 3 uses
  %5 = mul i64 %i.p, %indvar
  %6 = add i64 %i.j, %5
  %7 = call i64 @llvm.smax.i64(i64 %i.s, i64 %i.r)
  %reass.sub = sub i64 %7, %6
  %i.t = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.t, 4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %i.t, -4                       ; 3 uses
  %i.u = add i64 %i.r, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = add i64 %i.r, %index                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x double>, ptr %i.w, align 8, !tbaa !273
  %wide.load34 = load <2 x double>, ptr %i.x, align 8, !tbaa !273
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %wide.load, ptr %i.y, align 8, !tbaa !273
  store <2 x double> %wide.load34, ptr %i.z, align 8, !tbaa !273
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.017.ph = phi i64 [ %i.r, %.preheader ], [ %i.u, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.017 = phi i64 [ %i.ae, %scalar.ph ], [ %.017.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.017
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !273
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.017
  store double %i.ac, ptr %i.ad, align 8, !tbaa !273
  %i.ae = add nsw i64 %.017, 1
  %.not16.not = icmp slt i64 %.017, %i.s
  br i1 %.not16.not, label %scalar.ph, label %.loopexit, !llvm.loop !613

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.af = add nsw i64 %i.p, %i.r                  ; 3 uses
  %i.ag = add nsw i64 %i.p, %i.s
  %i.ah = call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.f) ; 3 uses
  %.not = icmp sgt i64 %i.af, %i.ah
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i64 %i.af, ptr %i.a, align 8, !tbaa !228
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i64 [ %i.ah, %._crit_edge ], [ %i.i, %bb.b ]
  store i64 %.lcssa, ptr %i.b, align 8, !tbaa !228
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #21

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #21

; Function Attrs: nounwind
declare !callback !357 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM12ScoreUpdaterD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN8LightGBM12ScoreUpdaterE, i64 16), ptr %0, align 8, !tbaa !202
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #21
  br label %_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEED2Ev.exit

_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8LightGBM12ScoreUpdaterD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN8LightGBM12ScoreUpdaterE, i64 16), ptr %0, align 8, !tbaa !202
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8LightGBM12ScoreUpdaterD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #21, !inline_history !614
  br label %_ZN8LightGBM12ScoreUpdaterD2Ev.exit

_ZN8LightGBM12ScoreUpdaterD2Ev.exit:              ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #35
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12ScoreUpdater8AddScoreEdi(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca double, align 8                   ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 4 uses
  store double %1, ptr %i.b, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 22, ptr %i.a, align 8, !tbaa !228
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !189
  %i.h = load i64, ptr %i.a, align 8, !tbaa !228  ; 3 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.g, ptr noundef nonnull align 1 dereferenceable(22) @.str.16, i64 22, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !187
  %i.j = load ptr, ptr %3, align 8, !tbaa !189
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 0, ptr %i.k, align 1, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.l = load ptr, ptr %3, align 8, !tbaa !189    ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.f
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.n = load i64, ptr %i.f, align 8, !tbaa !188
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !305
  %i.r = sext i32 %i.q to i64
  %i.s = sext i32 %2 to i64
  %i.t = mul nsw i64 %i.r, %i.s
  store i64 %i.t, ptr %i.c, align 8, !tbaa !228
  %i.u = call i32 @OMP_NUM_THREADS()
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.u)
  %i.v = load i32, ptr %i.p, align 8, !tbaa !305
  %i.w = icmp sgt i32 %i.v, 1023
  br i1 %i.w, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN8LightGBM12ScoreUpdater8AddScoreEdi.omp_outlined, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.e)
  store i32 %i.e, ptr %i.d, align 4, !tbaa !190
  call void @_ZN8LightGBM12ScoreUpdater8AddScoreEdi.omp_outlined(ptr nonnull %i.d, ptr nonnull poison, ptr nonnull %0, ptr %i.c, ptr %i.b) #21
  call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM12ScoreUpdater13MultiplyScoreEdi(ptr noundef nonnull align 8 dereferenceable(49) %0, double noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8LightGBM12ScoreUpdater8AddScoreEPKNS_4TreeEPKiii:.noexc.i
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 22, ptr %i.a, align 8, !tbaa !228
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !189
  %i.d = load i64, ptr %i.a, align 8, !tbaa !228  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.c, ptr noundef nonnull align 1 dereferenceable(22) @.str.16, i64 22, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !187
  %i.f = load ptr, ptr %5, align 8, !tbaa !189
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.h = load ptr, ptr %5, align 8, !tbaa !189    ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.b
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.j = load i64, ptr %i.b, align 8, !tbaa !188
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !305
  %i.n = sext i32 %i.m to i64
  %i.o = sext i32 %4 to i64
  %i.p = mul nsw i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !339
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !340
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.p
  %i.v = load ptr, ptr %1, align 8, !tbaa !202
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(648) %1, ptr noundef %i.r, ptr noundef %2, i32 noundef %3, ptr noundef %i.u)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK8LightGBM12ScoreUpdater5scoreEv(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !616  ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !340    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !617
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.e
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = icmp ult i64 %i.h, 1152921504606846976
  tail call void @llvm.assume(i1 %i.n)
  %i.o = xor i64 %i.h, 1152921504606846975        ; 2 uses
  %i.p = icmp ule i64 %i.m, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not37 = icmp ult i64 %i.m, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit

_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit: ; preds = %bb.b
  %i.q = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.q, i1 false), !tbaa !273
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %i.q
  store ptr %scevgep.i, ptr %i.b, align 8, !tbaa !616
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.o, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #37
  unreachable

_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.h
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975) ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.v = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.u) #21
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.w, ptr null ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 %i.g ; 2 uses
  %i.y = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !273
  %.not13.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.0.i.i.i.i, %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.d, %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.z = load double, ptr %.sroa.010.014.i.i, align 8, !tbaa !273
  store double %i.z, ptr %.015.i.i, align 8, !tbaa !273
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !615

_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i, %_ZNKSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE12_M_check_lenEmPKc.exit
  %.not.i45 = icmp eq ptr %i.d, null
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit
  tail call void @free(ptr noundef nonnull %i.d) #21
  br label %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46

_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_N8LightGBM6Common18AlignmentAllocatorIdLm32EEEET0_T_S6_S5_RT1_.exit, %bb.e
  store ptr %.0.i.i.i.i, ptr %0, align 8, !tbaa !340
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !616
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.t
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !617
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmN8LightGBM6Common18AlignmentAllocatorIdLm32EEEET_S5_T0_RT1_.exit, %_ZNSt12_Vector_baseIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE13_M_deallocateEPdm.exit46, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM12ScoreUpdater8AddScoreEdi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !305  ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.g, ptr %i.b, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 1, ptr %i.c, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !190
  %i.i = load i32, ptr %0, align 4, !tbaa !190    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !190
  %.promoted17 = load i32, ptr %i.a, align 4, !tbaa !190 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not18 = icmp sgt i32 %.promoted17, %i.j
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %3, align 8, !tbaa !228    ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !340  ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !190  ; 2 uses
  %i.p = sext i32 %.promoted17 to i64             ; 4 uses
  %i.q = sext i32 %i.o to i64                     ; 4 uses
  %i.r = add i64 %i.l, %i.p
  %i.s = shl i64 %i.r, 3                          ; 2 uses
  %i.t = shl nsw i64 %i.q, 3
  %scevgep32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = getelementptr i8, ptr %i.m, i64 %i.s
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.p, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.x = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.ar, %.loopexit ] ; 2 uses
  %5 = mul i64 %indvar, %i.q
  %6 = add i64 %5, %i.p
  %7 = sext i32 %i.x to i64                       ; 3 uses
  %8 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %7)
  %reass.sub = sub i64 %8, %6
  %i.y = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.z = mul i64 %indvar, %i.q
  %i.aa = add i64 %i.z, %i.p
  %i.ab = mul i64 %i.t, %indvar                   ; 2 uses
  %scevgep30 = getelementptr i8, ptr %i.v, i64 %i.ab
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ab
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %7)
  %i.ac = sub i64 %smax, %i.aa
  %i.ad = shl i64 %i.ac, 3
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.ad
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %4, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.ae = add i64 %indvars.iv, %n.vec
  %i.af = load double, ptr %4, align 8, !tbaa !273, !alias.scope !623
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.af, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ah, align 8, !tbaa !273, !alias.scope !624, !noalias !623
  %wide.load33 = load <2 x double>, ptr %i.ai, align 8, !tbaa !273, !alias.scope !624, !noalias !623
  %i.aj = fadd <2 x double> %broadcast.splat, %wide.load
  %i.ak = fadd <2 x double> %broadcast.splat, %wide.load33
  store <2 x double> %i.aj, ptr %i.ah, align 8, !tbaa !273, !alias.scope !624, !noalias !623
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !273, !alias.scope !624, !noalias !623
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.ae, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %scalar.ph ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 3 uses
  %i.am = load double, ptr %4, align 8, !tbaa !273
  %i.an = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv22 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !273
  %i.ap = fadd double %i.am, %i.ao
  store double %i.ap, ptr %i.an, align 8, !tbaa !273
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %7
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !622

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.q    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.aq = add nsw i32 %i.o, %i.x
  %i.ar = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.ar, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.ar, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !190
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #21

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM12ScoreUpdater13MultiplyScoreEdi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !305  ; 2 uses
  %i.g = add nsw i32 %i.f, -1                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 %i.g, ptr %i.b, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 1, ptr %i.c, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !190
  %i.i = load i32, ptr %0, align 4, !tbaa !190    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 512)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !190
  %.promoted17 = load i32, ptr %i.a, align 4, !tbaa !190 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not18 = icmp sgt i32 %.promoted17, %i.j
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i64, ptr %3, align 8, !tbaa !228    ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !340  ; 3 uses
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.c, align 4, !tbaa !190  ; 2 uses
  %i.p = sext i32 %.promoted17 to i64             ; 4 uses
  %i.q = sext i32 %i.o to i64                     ; 4 uses
  %i.r = add i64 %i.l, %i.p
  %i.s = shl i64 %i.r, 3                          ; 2 uses
  %i.t = shl nsw i64 %i.q, 3
  %scevgep32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = getelementptr i8, ptr %i.m, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = getelementptr i8, ptr %i.m, i64 %i.s
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.p, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.x = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.ar, %.loopexit ] ; 2 uses
  %5 = mul i64 %indvar, %i.q
  %6 = add i64 %5, %i.p
  %7 = sext i32 %i.x to i64                       ; 3 uses
  %8 = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %7)
  %reass.sub = sub i64 %8, %6
  %i.y = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.z = mul i64 %indvar, %i.q
  %i.aa = add i64 %i.z, %i.p
  %i.ab = mul i64 %i.t, %indvar                   ; 2 uses
  %scevgep30 = getelementptr i8, ptr %i.v, i64 %i.ab
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ab
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %7)
  %i.ac = sub i64 %smax, %i.aa
  %i.ad = shl i64 %i.ac, 3
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.ad
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %4, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.ae = add i64 %indvars.iv, %n.vec
  %i.af = load double, ptr %4, align 8, !tbaa !273, !alias.scope !630
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.af, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ah, align 8, !tbaa !273, !alias.scope !631, !noalias !630
  %wide.load33 = load <2 x double>, ptr %i.ai, align 8, !tbaa !273, !alias.scope !631, !noalias !630
  %i.aj = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ak = fmul <2 x double> %broadcast.splat, %wide.load33
  store <2 x double> %i.aj, ptr %i.ah, align 8, !tbaa !273, !alias.scope !631, !noalias !630
  store <2 x double> %i.ak, ptr %i.ai, align 8, !tbaa !273, !alias.scope !631, !noalias !630
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.ae, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %scalar.ph ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 3 uses
  %i.am = load double, ptr %4, align 8, !tbaa !273
  %i.an = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv22 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !273
  %i.ap = fmul double %i.am, %i.ao
  store double %i.ap, ptr %i.an, align 8, !tbaa !273
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %7
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !629

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.q    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.aq = add nsw i32 %i.o, %i.x
  %i.ar = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.ar, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.ar, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !190
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 288230376151711743
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i, !prof !203

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 576460752303423487
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = shl nuw nsw i64 %1, 5
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #36
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 4 uses
  %i.f = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %2, ptr %3, ptr noundef %i.e)
          to label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit unwind label %bb.f ; 0 uses

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  ret ptr %i.e

bb.f:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #21 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = shl nuw nsw i64 %1, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %bb.g, %bb.f
  invoke void @__cxa_rethrow() #37
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #38
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !186
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !189 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !187  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.e, ptr %i.a, align 8, !tbaa !228
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !189
  %i.h = load i64, ptr %i.a, align 8, !tbaa !228
  store i64 %i.h, ptr %i.b, align 8, !tbaa !188
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !188
  store i8 %i.j, ptr %i.i, align 1, !tbaa !188
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !187
  %i.m = load ptr, ptr %.016, align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !632

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #37
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #38
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8LightGBM9BinMapper15bin_info_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
end_hunk_1
