Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE10InitLinearEPKNS_7DatasetEi:bb.a
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit90

_ZNSt6vectorIdSaIdEED2Ev.exit90:                  ; preds = %.loopexit112, %.loopexit.split-lp113, %bb.y, %bb.x
  %.pn21 = phi { ptr, i32 } [ %i.fy, %bb.y ], [ %i.fy, %bb.x ], [ %lpad.loopexit114, %.loopexit112 ], [ %lpad.loopexit.split-lp115, %.loopexit.split-lp113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.z

._crit_edge128:                                   ; preds = %.lr.ph127, %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE5clearEv.exit62
  ret void

.lr.ph127:                                        ; preds = %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE5clearEv.exit62, %.lr.ph127
  %.0126 = phi i32 [ %i.ge, %.lr.ph127 ], [ 0, %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE5clearEv.exit62 ]
  call void @_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %i.at)
  call void @_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.be)
  %i.ge = add nuw nsw i32 %.0126, 1               ; 2 uses
  %exitcond131.not = icmp eq i32 %i.ge, %i.en
  br i1 %exitcond131.not, label %._crit_edge128, label %.lr.ph127, !llvm.loop !423

bb.z:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit88, %_ZNSt6vectorIdSaIdEED2Ev.exit90
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit88 ], [ %.pn21, %_ZNSt6vectorIdSaIdEED2Ev.exit90 ]
  resume { ptr, i32 } %.pn21.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM17LinearTreeLearnerINS_17SerialTreeLearnerEE10InitLinearEPKNS_7DatasetEi.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !170  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.i, ptr %i.b, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !166
  %i.j = load i32, ptr %0, align 4, !tbaa !166    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !166
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !166
  %i.m = load i32, ptr %i.a, align 4, !tbaa !166  ; 2 uses
  %.not21 = icmp sgt i32 %i.m, %i.l
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 536
  %i.p = sext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %.loopexit
  %i.q = phi i32 [ %i.l, %.lr.ph23 ], [ %i.bf, %.loopexit ] ; 3 uses
  %indvars.iv25 = phi i64 [ %i.p, %.lr.ph23 ], [ %indvars.iv.next26, %.loopexit ] ; 6 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !183  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 464
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !167
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv25
  %i.v = load i32, ptr %i.u, align 4, !tbaa !166
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 488
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv25
  %i.z = load i32, ptr %i.y, align 4, !tbaa !166
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ab = sext i32 %i.v to i64
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !194
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = sext i32 %i.z to i64
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !199
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !201
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !213
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 680
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 720
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !167
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv25
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !166
  %i.as = sext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !214
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !215
  %i.aw = load ptr, ptr %2, align 8, !tbaa !141
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !165 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.ay to i64
  br label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !424

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !216
  %i.bc = fcmp uno float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.f, label %bb.e

bb.f:                                             ; preds = %.lr.ph
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !171
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv25
  store i8 1, ptr %i.be, align 1, !tbaa !182
  %.pre = load i32, ptr %i.b, align 4, !tbaa !166
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %i.bf = phi i32 [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %.pre, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1
  %i.bg = sext i32 %i.bf to i64
  %.not.not = icmp slt i64 %indvars.iv25, %i.bg
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #37
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

declare i32 @OMP_NUM_THREADS() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !218 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !219
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !186  ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !185    ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = sdiv exact i64 %i.j, 24
  %i.k = icmp ugt i64 %2, 384307168202282325
  br i1 %i.k, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, !prof !220

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #35
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.m = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !185
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !191
  %i.q = load ptr, ptr %1, align 8, !tbaa !221
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !221
  %i.s = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.q, ptr %i.r, ptr noundef %i.m)
          to label %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2ERKS3_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !185  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !191
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #36
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit.i

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.t

_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2ERKS3_.exit:     ; preds = %bb.d
  store ptr %i.s, ptr %i.n, align 8, !tbaa !186
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !193
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt6vectorIS_IdSaIdEESaIS1_EEC2ERKS3_.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorIdSaIdEEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !187 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #36
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i:      ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIdSaIdEEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !186  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !185    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #34
  unreachable

_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !222
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !222
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !188
  store ptr %i.u, ptr %i.s, align 8, !tbaa !188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !222, !alias.scope !433, !noalias !432
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !222, !alias.scope !432, !noalias !433
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !188, !alias.scope !433, !noalias !432
  store ptr %i.y, ptr %i.w, align 8, !tbaa !188, !alias.scope !432, !noalias !433
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !433, !noalias !432
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !428

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IdSaIdEESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !222, !alias.scope !435, !noalias !434
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !222, !alias.scope !434, !noalias !435
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !188, !alias.scope !435, !noalias !434
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !188, !alias.scope !434, !noalias !435
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !435, !noalias !434
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !428

_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !191
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #36
  br label %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !185
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !186
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !192    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #34
  unreachable

_ZNKSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !186  ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !185    ; 3 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %3 = sdiv exact i64 %i.w, 24
  %i.x = icmp ugt i64 %3, 384307168202282325
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, !prof !220

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35
          to label %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !221
  %.pre43 = load ptr, ptr %i.r, align 8, !tbaa !221
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.s, %_ZNKSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ], [ %.pre43, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ]
  %i.aa = phi ptr [ %i.t, %_ZNKSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ]
  %i.ab = phi ptr [ null, %_ZNKSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.y, %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ] ; 4 uses
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !185
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !186
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !191
  %i.af = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %i.aa, ptr %i.z, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %.noexc26
  %i.ag = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ah = load ptr, ptr %i.q, align 8, !tbaa !185 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !191
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #36
  br label %bb.j

bb.f:                                             ; preds = %.noexc26
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !186
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %bb.f ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.am = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !221, !alias.scope !444, !noalias !443
  store <2 x ptr> %i.am, ptr %.012.i.i.i, align 8, !tbaa !221, !alias.scope !443, !noalias !444
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !191, !alias.scope !444, !noalias !443
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !191, !alias.scope !443, !noalias !444
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !444, !noalias !443
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !439

_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.ay, %.lr.ph.i.i.i29 ], [ %i.as, %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 3 uses
  %.0911.i.i.i31 = phi ptr [ %i.ax, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.at = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !221, !alias.scope !446, !noalias !445
  store <2 x ptr> %i.at, ptr %.012.i.i.i30, align 8, !tbaa !221, !alias.scope !445, !noalias !446
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !191, !alias.scope !446, !noalias !445
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !191, !alias.scope !445, !noalias !446
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i31, i8 0, i64 24, i1 false), !alias.scope !446, !noalias !445
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !439

_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.as, %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ay, %.lr.ph.i.i.i29 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !219
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #36
  br label %_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt6vectorIS0_IdSaIdEESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIS_IS_IdSaIdEESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit34, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !192
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !193
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !219
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIdSaIdEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.be, %bb.h ], [ %i.ag, %bb.e ], [ %i.ag, %bb.d ]
  %i.bg = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bh = tail call ptr @__cxa_begin_catch(ptr %i.bg) #6 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #36
  invoke void @__cxa_rethrow() #34
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bf

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  tail call void @__clang_call_terminate(ptr %i.bj) #37
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIdSaIdEES2_IS4_SaIS4_EEEEPS4_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.017 = phi ptr [ %i.w, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.sroa.09.016 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.016, align 8, !tbaa !187 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.017, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, !prof !220

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.017, align 8, !tbaa !187
  %i.j = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !190
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.017, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !188
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !222 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !223

bb.c:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f
end_hunk_0
