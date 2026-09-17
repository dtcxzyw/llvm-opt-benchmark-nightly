Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/randomiser?download=true
inline.NumInlined: 342
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt8seed_seqC2IN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEET_S8_:bb.a
  br i1 %.not28, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23
          to label %.noexc6 unwind label %bb.f    ; 5 uses

.noexc6:                                          ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.h = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.d:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %i.h, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.d, %.noexc6
  %.not.i8.i = icmp eq ptr %i.h, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.p) #19
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.g, ptr %0, align 8, !tbaa !14
  store ptr %i.g, ptr %i.f, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 2 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !15
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.c
  %i.r = phi ptr [ %i.q, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ]
  %i.s = phi ptr [ %i.g, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ null, %bb.c ] ; 2 uses
  %.not16 = icmp eq ptr %1, %2
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  ret void

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.v = phi ptr [ %i.s, %.lr.ph ], [ %i.as, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 5 uses
  %i.w = phi ptr [ %i.r, %.lr.ph ], [ %i.at, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.x = phi ptr [ %i.s, %.lr.ph ], [ %i.au, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %.sroa.0.017 = phi ptr [ %1, %.lr.ph ], [ %i.av, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.y = load i32, ptr %.sroa.0.017, align 4, !tbaa !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.y, ptr %i.x, align 4, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  store ptr %i.z, ptr %i.t, align 8, !tbaa !16
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 5 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.j, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.j
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #23
          to label %.noexc8 unwind label %.loopexit ; 5 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store i32 %i.y, ptr %i.al, align 4, !tbaa !17
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %i.v, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %.noexc8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !15
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aq) #19
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ak, ptr %0, align 8, !tbaa !14
  store ptr %i.an, ptr %i.t, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai ; 2 uses
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !15
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.h
  %i.as = phi ptr [ %i.ak, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.v, %bb.h ]
  %i.at = phi ptr [ %i.ar, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.w, %bb.h ]
  %i.au = phi ptr [ %i.an, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.av, %2
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !35

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !17
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !17
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %2, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !16
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.n, %1
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.t = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2305843009213693951) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #23 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !17
  %i.y = add nsw i64 %1, -1                       ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !17
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = icmp sgt i64 %i.f, 0
  br i1 %i.ab, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ae) #19
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.w, ptr %0, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %1
  store ptr %i.af, ptr %i.a, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8seed_seq8generateIPjEEvT_S2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = add i64 %i.b, -4
  %i.e = sub i64 %i.d, %i.c
  %i.f = and i64 %i.e, -4
  %i.g = add i64 %i.f, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 -117, i64 %i.g, i1 false), !tbaa !17
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 21 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = icmp ugt i64 %i.k, 622
  br i1 %i.s, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.preheader
  %i.t = icmp samesign ugt i64 %i.k, 67
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i64 %i.k, 38
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp samesign ugt i64 %i.k, 6
  %i.w = add nsw i64 %i.k, -1
  %i.x = lshr i64 %i.w, 1
  %i.y = select i1 %i.v, i64 3, i64 %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %.lr.ph.i.i.i.preheader
  %i.z = phi i64 [ 11, %.lr.ph.i.i.i.preheader ], [ 7, %bb.b ], [ %i.y, %bb.d ], [ 5, %bb.c ] ; 2 uses
  %i.aa = sub i64 %i.k, %i.z
  %i.ab = lshr i64 %i.aa, 1                       ; 5 uses
  %i.ac = add nuw i64 %i.ab, %i.z                 ; 4 uses
  %i.ad = trunc i64 %i.r to i32
  %i.ae = add i32 %i.ad, 1371501266               ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !17
  %i.ah = add i32 %i.ag, 1371501266
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !17
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !17
  %i.ak = add i32 %i.aj, %i.ae
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !17
  store i32 %i.ae, ptr %1, align 4, !tbaa !17
  %.not130 = icmp eq ptr %i.m, %i.n
  br i1 %.not130, label %.preheader129, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %3 = add nsw i64 %i.r, 1                        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %3, i64 2)
  br label %.lr.ph

.preheader129:                                    ; preds = %.lr.ph, %bb.e
  %.pre-phi = phi i64 [ 1, %bb.e ], [ %3, %.lr.ph ] ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.pre-phi, i64 %i.k) ; 4 uses
  %i.al = icmp ugt i64 %i.k, %.pre-phi
  br i1 %i.al, label %.lr.ph133, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0131 = phi i64 [ %i.bn, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %i.am = urem i64 %.0131, %i.k                   ; 2 uses
  %i.an = add i64 %.0131, %i.ab
  %i.ao = urem i64 %i.an, %i.k
  %i.ap = add i64 %.0131, %i.ac
  %i.aq = urem i64 %i.ap, %i.k
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !17
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !17 ; 2 uses
  %i.av = add i64 %.0131, -1                      ; 2 uses
  %i.aw = urem i64 %i.av, %i.k
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !17
  %i.az = xor i32 %i.as, %i.ay
  %i.ba = xor i32 %i.az, %i.au                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 27
  %i.bc = xor i32 %i.bb, %i.ba
  %i.bd = mul i32 %i.bc, 1664525                  ; 2 uses
  %i.be = trunc i64 %i.am to i32
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.av
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !17
  %i.bh = add i32 %i.bg, %i.be
  %i.bi = add i32 %i.bh, %i.bd                    ; 2 uses
  %i.bj = add i32 %i.bd, %i.au
  store i32 %i.bj, ptr %i.at, align 4, !tbaa !17
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aq ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !17
  %i.bm = add i32 %i.bi, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !17
  store i32 %i.bi, ptr %i.ar, align 4, !tbaa !17
  %i.bn = add nuw i64 %.0131, 1                   ; 2 uses
  %exitcond = icmp eq i64 %i.bn, %umax
  br i1 %exitcond, label %.preheader129, label %.lr.ph, !llvm.loop !36

.preheader:                                       ; preds = %.lr.ph133, %.preheader129
  %i.bo = add nsw i64 %.sroa.speculated, %i.k     ; 2 uses
  %i.bp = icmp ult i64 %.sroa.speculated, %i.bo
  br i1 %i.bp, label %.lr.ph135, label %.loopexit

.lr.ph133:                                        ; preds = %.preheader129, %.lr.ph133
  %.0115132 = phi i64 [ %i.co, %.lr.ph133 ], [ %.pre-phi, %.preheader129 ] ; 5 uses
  %i.bq = urem i64 %.0115132, %i.k                ; 2 uses
  %i.br = add i64 %.0115132, %i.ab
  %i.bs = urem i64 %i.br, %i.k
  %i.bt = add i64 %.0115132, %i.ac
  %i.bu = urem i64 %i.bt, %i.k
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !17
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bs ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !17 ; 2 uses
  %i.bz = add i64 %.0115132, -1
  %i.ca = urem i64 %i.bz, %i.k
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !17
  %i.cd = xor i32 %i.bw, %i.cc
  %i.ce = xor i32 %i.cd, %i.by                    ; 2 uses
  %i.cf = lshr i32 %i.ce, 27
  %i.cg = xor i32 %i.cf, %i.ce
  %i.ch = mul i32 %i.cg, 1664525                  ; 2 uses
  %i.ci = trunc i64 %i.bq to i32
  %i.cj = add i32 %i.ch, %i.ci                    ; 2 uses
  %i.ck = add i32 %i.ch, %i.by
  store i32 %i.ck, ptr %i.bx, align 4, !tbaa !17
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17
  %i.cn = add i32 %i.cj, %i.cm
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !17
  store i32 %i.cj, ptr %i.bv, align 4, !tbaa !17
  %i.co = add nuw i64 %.0115132, 1                ; 2 uses
  %exitcond136.not = icmp eq i64 %i.co, %.sroa.speculated
  br i1 %exitcond136.not, label %.preheader, label %.lr.ph133, !llvm.loop !37

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %.0114134 = phi i64 [ %i.dn, %.lr.ph135 ], [ %.sroa.speculated, %.preheader ] ; 5 uses
  %i.cp = urem i64 %.0114134, %i.k                ; 2 uses
  %i.cq = add i64 %.0114134, %i.ab
  %i.cr = urem i64 %i.cq, %i.k
  %i.cs = add i64 %.0114134, %i.ac
  %i.ct = urem i64 %i.cs, %i.k
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cp ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !17
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !17 ; 2 uses
  %i.cy = add i32 %i.cx, %i.cv
  %i.cz = add i64 %.0114134, -1
  %i.da = urem i64 %i.cz, %i.k
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !17
  %i.dd = add i32 %i.cy, %i.dc                    ; 2 uses
  %i.de = lshr i32 %i.dd, 27
  %i.df = xor i32 %i.de, %i.dd
  %i.dg = mul i32 %i.df, 1566083941               ; 2 uses
  %i.dh = trunc i64 %i.cp to i32
  %i.di = sub i32 %i.dg, %i.dh                    ; 2 uses
  %i.dj = xor i32 %i.dg, %i.cx
  store i32 %i.dj, ptr %i.cw, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ct ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !17
  %i.dm = xor i32 %i.di, %i.dl
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !17
  store i32 %i.di, ptr %i.cu, align 4, !tbaa !17
  %i.dn = add nuw i64 %.0114134, 1                ; 2 uses
  %exitcond137.not = icmp eq i64 %i.dn, %i.bo
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph135, !llvm.loop !38

.loopexit:                                        ; preds = %.lr.ph135, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z22rand_setSeedsToDefaultv() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %1 = alloca %"class.std::random_device", align 8 ; 10 uses
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !44
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt13random_deviceC2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !44
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #19
  br label %_ZNSt13random_deviceC2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !44
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

common.resume:                                    ; preds = %_ZNSt13random_deviceD2Ev.exit15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %.pn.pn, %_ZNSt13random_deviceD2Ev.exit15 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  br label %common.resume

_ZNSt13random_deviceC2Ev.exit:                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  %i.m = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %bb.d unwind label %bb.f       ; 8 uses

bb.d:                                             ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.o = invoke noundef i32 @_Z12comm_getRankv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.preheader.preheader, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i

.preheader.preheader:                             ; preds = %bb.e
  %i.q = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceclEv.exit unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt13random_deviceC2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt13random_deviceclEv.exit:                    ; preds = %.preheader.preheader
  store i32 %i.q, ptr %i.m, align 4, !tbaa !17
  %i.t = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceclEv.exit.1 unwind label %bb.h

_ZNSt13random_deviceclEv.exit.1:                  ; preds = %_ZNSt13random_deviceclEv.exit
  store i32 %i.t, ptr %i.n, align 4, !tbaa !17
  %i.u = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceclEv.exit.2 unwind label %bb.h

_ZNSt13random_deviceclEv.exit.2:                  ; preds = %_ZNSt13random_deviceclEv.exit.1
  %.sroa.016.0.ptr29.2 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.u, ptr %.sroa.016.0.ptr29.2, align 4, !tbaa !17
  %i.v = invoke noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceclEv.exit.3 unwind label %bb.h

_ZNSt13random_deviceclEv.exit.3:                  ; preds = %_ZNSt13random_deviceclEv.exit.2
  %.sroa.016.0.ptr29.3 = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %i.v, ptr %.sroa.016.0.ptr29.3, align 4, !tbaa !17
  br label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i

bb.h:                                             ; preds = %_ZNSt13random_deviceclEv.exit.2, %_ZNSt13random_deviceclEv.exit.1, %_ZNSt13random_deviceclEv.exit, %.preheader.preheader
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZNSt13random_deviceclEv.exit.3, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.x = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %bb.i unwind label %bb.g       ; 3 uses

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.x, ptr %2, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !16
  invoke void @_Z13rand_setSeedsSt6vectorIjSaIjEE(ptr nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %2, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit10, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit10

_ZNSt6vectorIjSaIjEED2Ev.exit10:                  ; preds = %bb.j, %bb.k
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #19
  invoke void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000) %1)
          to label %_ZNSt13random_deviceD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit10
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #21
  unreachable

_ZNSt13random_deviceD2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void

bb.m:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !14    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIjSaIjEED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #19
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit14

_ZNSt6vectorIjSaIjEED2Ev.exit14:                  ; preds = %bb.n, %bb.m, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.s, %bb.g ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 16) #19
  br label %bb.o
end_hunk_0
