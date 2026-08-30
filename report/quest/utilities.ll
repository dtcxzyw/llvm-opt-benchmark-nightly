Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/utilities?download=true
inline.NumInlined: 1369
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z20util_getPrefixBraIndi5Qureg
define noundef i32 @_Z20util_getPrefixBraIndi5Qureg(i32 noundef %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z42error_utilsGetPrefixBraIndGivenNonDensMatrv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.f = icmp sgt i64 %i.e, %i.c
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z42error_utilsGetPrefixBraIndGivenSuffixQubitv()
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = trunc i64 %i.e to i32
  %i.h = sub i32 %0, %i.g
  ret i32 %i.h
}

declare void @_Z42error_utilsGetPrefixBraIndGivenNonDensMatrv() local_unnamed_addr #1

declare void @_Z42error_utilsGetPrefixBraIndGivenSuffixQubitv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_Z20util_isQubitInSuffixi5Qureg(i32 noundef %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9
  %i.d = icmp sgt i64 %i.c, %i.a
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_Z25util_areAllQubitsInSuffixSt6vectorIiSaIiEE5Qureg(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.not11 = icmp eq ptr %i.a, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.1.0.copyload = load i64, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.a, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.d = load i32, ptr %.sroa.08.012, align 4, !tbaa !20
  %i.e = sext i32 %i.d to i64
  %i.f = icmp sgt i64 %.sroa.1.0.copyload, %i.e   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 4 ; 2 uses
  %.not = icmp ne ptr %i.g, %i.c
  %or.cond.not = select i1 %i.f, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z23util_isBraQubitInSuffixi5Qureg(i32 noundef %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z45error_utilsIsBraQubitInSuffixGivenNonDensMatrv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = icmp sgt i64 %i.e, %i.c
  ret i1 %i.f
}

declare void @_Z45error_utilsIsBraQubitInSuffixGivenNonDensMatrv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z23getPrefixOrSuffixQubitsSt6vectorIiSaIiEE5Quregb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not57 = icmp eq ptr %i.c, %i.d
  br i1 %.not57, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !23
  store ptr %i.j, ptr %i.a, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !24
  %.pre = load ptr, ptr %1, align 8, !tbaa !17
  %.pre45 = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %.promoted21 = phi ptr [ %i.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %.promoted25 = phi ptr [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %i.l = phi ptr [ %.pre45, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %.not29 = icmp eq ptr %i.m, %i.l
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.lcssa26 = phi ptr [ %.promoted25, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.lcssa22 = phi ptr [ %.promoted21, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.al, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.lcssa = phi ptr [ %.promoted25, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.am, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa, ptr %i.a, align 8
  store ptr %.lcssa22, ptr %i.i, align 8
  store ptr %.lcssa26, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.015.030 = phi ptr [ %i.m, %.lr.ph ], [ %i.an, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.n = phi ptr [ %.promoted25, %.lr.ph ], [ %i.am, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %i.o = phi ptr [ %.promoted21, %.lr.ph ], [ %i.al, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.p = phi ptr [ %.promoted25, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %i.q = load i32, ptr %.sroa.015.030, align 4, !tbaa !20 ; 3 uses
  %.sroa.1.0.copyload = load i64, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !19
  %i.r = sext i32 %i.q to i64
  %i.s = icmp sgt i64 %.sroa.1.0.copyload, %i.r
  %i.t = xor i1 %3, %i.s
  br i1 %i.t, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.q, ptr %i.n, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.v, %i.w                       ; 6 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775804
  br i1 %i.y, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.n, ptr %i.a, align 8
  store ptr %i.o, ptr %i.i, align 8
  store ptr %i.p, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.z = ashr exact i64 %i.x, 2                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 2305843009213693951)
  %i.ad = select i1 %i.ab, i64 2305843009213693951, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store i32 %i.q, ptr %i.ag, align 4, !tbaa !20
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %i.p, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.not.i17.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.x) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %i.a, align 8
  store ptr %i.o, ptr %i.i, align 8
  store ptr %i.p, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e, %bb.c
  %i.ak = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.p, %bb.e ], [ %i.p, %bb.c ] ; 2 uses
  %i.al = phi ptr [ %i.aj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.o, %bb.e ], [ %i.o, %bb.c ] ; 2 uses
  %i.am = phi ptr [ %i.ai, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.u, %bb.e ], [ %i.n, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.015.030, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.l
  br i1 %.not, label %._crit_edge, label %bb.c

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i12 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = ptrtoint ptr %i.n to i64
  %i.ap = ptrtoint ptr %i.p to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.aq) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #32 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define void @_Z29util_getPrefixAndSuffixQubitsSt6vectorIiSaIiEE5Qureg(ptr dead_on_unwind noalias nofree writable sret(%"struct.std::array") align 8 captures(address) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 4 uses
  %4 = alloca %"class.std::vector", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !25

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30
  %.pre = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %.pre28 = load ptr, ptr %i.a, align 8, !tbaa !17
  %.pre31 = ptrtoint ptr %.pre28 to i64
  %.pre32 = ptrtoint ptr %.pre to i64
  br label %.noexc10

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi33 = phi i64 [ %.pre32, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %.pre-phi = phi i64 [ %.pre31, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ]
  %i.i = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = phi ptr [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 9 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !24
  %i.n = sub i64 %.pre-phi, %.pre-phi33           ; 4 uses
  %i.o = icmp sgt i64 %i.n, 4
  br i1 %i.o, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr align 4 %i.i, i64 %i.n, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc10
  %i.p = icmp eq i64 %i.n, 4
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.i, align 4, !tbaa !20
  store i32 %i.q, ptr %i.j, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 %i.n
  store ptr %i.r, ptr %i.k, align 8, !tbaa !21
  invoke void @_Z23getPrefixOrSuffixQubitsSt6vectorIiSaIiEE5Quregb(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.Qureg) align 8 %2, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i11 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i11, label %.noexc15, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = icmp ugt i64 %i.x, 9223372036854775804
  br i1 %i.y, label %.noexc.i.i13, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12, !prof !25

.noexc.i.i13:                                     ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc14 unwind label %bb.p

.noexc14:                                         ; preds = %.noexc.i.i13
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12: ; preds = %bb.h
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge unwind label %bb.p

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12
  %.pre29 = load ptr, ptr %1, align 8, !tbaa !17  ; 2 uses
  %.pre30 = load ptr, ptr %i.a, align 8, !tbaa !17
  %.pre34 = ptrtoint ptr %.pre30 to i64
  %.pre36 = ptrtoint ptr %.pre29 to i64
  br label %.noexc15

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge, %bb.g
  %.pre-phi37 = phi i64 [ %.pre36, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge ], [ %i.w, %bb.g ]
  %.pre-phi35 = phi i64 [ %.pre34, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge ], [ %i.v, %bb.g ]
  %i.aa = phi ptr [ %.pre29, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge ], [ %i.u, %bb.g ] ; 2 uses
  %i.ab = phi ptr [ %i.z, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i12..noexc15_crit_edge ], [ null, %bb.g ] ; 9 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !24
end_hunk_0
begin_hunk_1_@_Z31util_getRankWithBraQubitFlippedi5Qureg:bb.a
  %.not.i = icmp eq i32 %.sroa.2.0.copyload, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z42error_utilsGetPrefixBraIndGivenNonDensMatrv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = sext i32 %0 to i64
  %i.b = icmp sgt i64 %.sroa.46.0.copyload, %i.a
  br i1 %i.b, label %bb.d, label %_Z20util_getPrefixBraIndi5Qureg.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Z42error_utilsGetPrefixBraIndGivenSuffixQubitv()
  br label %_Z20util_getPrefixBraIndi5Qureg.exit

_Z20util_getPrefixBraIndi5Qureg.exit:             ; preds = %bb.c, %bb.d
  %i.c = trunc i64 %.sroa.46.0.copyload to i32
  %i.d = sub i32 %0, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !27
  %i.g = zext nneg i32 %i.d to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = xor i32 %i.f, %i.i
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z32util_getRankWithBraQubitsFlippedSt6vectorIiSaIiEE5Qureg(ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %.not13 = icmp eq ptr %i.c, %i.e
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !20
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.411.0.copyload = load i64, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %.not.i = icmp eq i32 %.sroa.2.0.copyload, 0
  %i.f = trunc i64 %.sroa.411.0.copyload to i32   ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_Z20util_getPrefixBraIndi5Qureg.exit.us
  %.015.us = phi i32 [ %i.n, %_Z20util_getPrefixBraIndi5Qureg.exit.us ], [ %i.b, %.lr.ph ]
  %.sroa.04.014.us = phi ptr [ %i.o, %_Z20util_getPrefixBraIndi5Qureg.exit.us ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.g = load i32, ptr %.sroa.04.014.us, align 4, !tbaa !20 ; 2 uses
  tail call void @_Z42error_utilsGetPrefixBraIndGivenNonDensMatrv()
  %i.h = sext i32 %i.g to i64
  %i.i = icmp sgt i64 %.sroa.411.0.copyload, %i.h
  br i1 %i.i, label %bb.b, label %_Z20util_getPrefixBraIndi5Qureg.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us
  tail call void @_Z42error_utilsGetPrefixBraIndGivenSuffixQubitv()
  br label %_Z20util_getPrefixBraIndi5Qureg.exit.us

_Z20util_getPrefixBraIndi5Qureg.exit.us:          ; preds = %bb.b, %.lr.ph.split.us
  %i.j = sub i32 %i.g, %i.f
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = xor i32 %.015.us, %i.m                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.014.us, i64 4 ; 2 uses
  %.not.us = icmp eq ptr %i.o, %i.e
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_Z20util_getPrefixBraIndi5Qureg.exit, %_Z20util_getPrefixBraIndi5Qureg.exit.us, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.n, %_Z20util_getPrefixBraIndi5Qureg.exit.us ], [ %i.w, %_Z20util_getPrefixBraIndi5Qureg.exit ]
  ret i32 %.0.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %_Z20util_getPrefixBraIndi5Qureg.exit
  %.015 = phi i32 [ %i.w, %_Z20util_getPrefixBraIndi5Qureg.exit ], [ %i.b, %.lr.ph ]
  %.sroa.04.014 = phi ptr [ %i.x, %_Z20util_getPrefixBraIndi5Qureg.exit ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.p = load i32, ptr %.sroa.04.014, align 4, !tbaa !20 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp sgt i64 %.sroa.411.0.copyload, %i.q
  br i1 %i.r, label %bb.c, label %_Z20util_getPrefixBraIndi5Qureg.exit

bb.c:                                             ; preds = %.lr.ph.split
  tail call void @_Z42error_utilsGetPrefixBraIndGivenSuffixQubitv()
  br label %_Z20util_getPrefixBraIndi5Qureg.exit

_Z20util_getPrefixBraIndi5Qureg.exit:             ; preds = %.lr.ph.split, %bb.c
  %i.s = sub i32 %i.p, %i.f
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = trunc i64 %i.u to i32
  %i.w = xor i32 %.015, %i.v                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.014, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress uwtable
define void @_Z17util_getBraQubitsSt6vectorIiSaIiEE5Qureg(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not61 = icmp eq ptr %i.c, %i.d
  br i1 %.not61, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #30 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !23
  store ptr %i.j, ptr %i.a, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !24
  %.pre = load ptr, ptr %1, align 8, !tbaa !17
  %.pre49 = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %.promoted24 = phi ptr [ %i.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %.promoted28 = phi ptr [ %i.j, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 4 uses
  %i.l = phi ptr [ %.pre49, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ %i.d, %bb.b ] ; 2 uses
  %.not32 = icmp eq ptr %i.m, %i.l
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.lcssa29 = phi ptr [ %.promoted28, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.ag, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.lcssa25 = phi ptr [ %.promoted24, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.ah, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  %.lcssa = phi ptr [ %.promoted28, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ]
  store ptr %.lcssa, ptr %i.a, align 8
  store ptr %.lcssa25, ptr %i.i, align 8
  store ptr %.lcssa29, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %.sroa.014.033 = phi ptr [ %i.m, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.n = phi ptr [ %.promoted28, %.lr.ph ], [ %i.ai, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 7 uses
  %i.o = phi ptr [ %.promoted24, %.lr.ph ], [ %i.ah, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 5 uses
  %i.p = phi ptr [ %.promoted28, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 10 uses
  %i.q = load i32, ptr %.sroa.014.033, align 4, !tbaa !20
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !20
  %.sroa.320.0.copyload = load i32, ptr %.sroa.320.0..sroa_idx, align 4, !tbaa !20
  %.not.i = icmp eq i32 %.sroa.2.0.copyload, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_Z36error_utilsGetBraIndGivenNonDensMatrv()
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = add nsw i32 %.sroa.320.0.copyload, %i.q  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.r, ptr %i.n, align 4, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.g:                                             ; preds = %bb.e
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775804
  br i1 %i.v, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.n, ptr %i.a, align 8
  store ptr %i.o, ptr %i.i, align 8
  store ptr %i.p, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.w = ashr exact i64 %i.u, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 2305843009213693951)
  %i.aa = select i1 %i.y, i64 2305843009213693951, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #30
          to label %.noexc12 unwind label %.loopexit ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store i32 %i.r, ptr %i.ad, align 4, !tbaa !20
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %i.p, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc12
  %.not.i17.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.aa
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.f
  %i.ag = phi ptr [ %i.ac, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.p, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %i.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.o, %bb.f ] ; 2 uses
  %.pn36 = phi ptr [ %i.ad, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %i.n, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn36, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.033, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.l
  br i1 %.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %i.a, align 8
  store ptr %i.o, ptr %i.i, align 8
  store ptr %i.p, ptr %0, align 8
  br label %bb.k

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %i.ak = phi ptr [ %i.n, %.loopexit.split-lp ], [ %i.o, %.loopexit ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.p to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z25util_getNonTargetedQubitsPiii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %_Z10getBitMaskPii.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi81 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %wide.load = load <2 x i32>, ptr %i.b, align 4, !tbaa !20
  %wide.load82 = load <2 x i32>, ptr %i.c, align 4, !tbaa !20
  %i.d = zext nneg <2 x i32> %wide.load to <2 x i64>
  %i.e = zext nneg <2 x i32> %wide.load82 to <2 x i64>
  %i.f = shl nuw <2 x i64> splat (i64 1), %i.d
  %i.g = shl nuw <2 x i64> splat (i64 1), %i.e
  %i.h = xor <2 x i64> %i.f, %vec.phi             ; 2 uses
  %i.i = xor <2 x i64> %i.g, %vec.phi81           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <2 x i64> %i.i, %i.h
  %i.k = tail call i64 @llvm.vector.reduce.xor.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_Z10getBitMaskPii.exit, label %.lr.ph.preheader94

.lr.ph.preheader94:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.06.i17.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader94, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader94 ] ; 2 uses
  %.06.i17 = phi i64 [ %i.p, %.lr.ph ], [ %.06.i17.ph, %.lr.ph.preheader94 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw i64 1, %i.n
  %i.p = xor i64 %i.o, %.06.i17                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_Z10getBitMaskPii.exit, label %.lr.ph, !llvm.loop !32

_Z10getBitMaskPii.exit:                           ; preds = %.lr.ph, %middle.block, %bb.a
  %.06.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %i.p, %.lr.ph ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.q = sub nsw i32 %3, %2                       ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %.noexc, label %bb.b

.noexc:                                           ; preds = %_Z10getBitMaskPii.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #29
  unreachable

bb.b:                                             ; preds = %_Z10getBitMaskPii.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not = icmp eq i32 %3, %2
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.u = shl nuw nsw i64 %i.r, 2
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #30 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %0, align 8, !tbaa !23
  store ptr %i.v, ptr %i.w, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.r ; 2 uses
  store ptr %i.x, ptr %i.t, align 8, !tbaa !24
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.b
  %.promoted21 = phi ptr [ %i.v, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 3 uses
  %.promoted = phi ptr [ %i.x, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.b ] ; 2 uses
  %i.y = icmp sgt i32 %3, 0
  br i1 %i.y, label %.lr.ph26, label %._crit_edge

.lr.ph26:                                         ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count42 = zext nneg i32 %3 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %.lcssa22 = phi ptr [ %.promoted21, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.az, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.lcssa = phi ptr [ %.promoted, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %i.ba, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  store ptr %.lcssa, ptr %i.t, align 8
  store ptr %.lcssa22, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %.lr.ph26, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.aa = phi ptr [ %.promoted21, %.lr.ph26 ], [ %i.ay, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %indvars.iv39 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next40, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %i.ab = phi ptr [ %.promoted, %.lr.ph26 ], [ %i.ba, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %i.ac = phi ptr [ %.promoted21, %.lr.ph26 ], [ %i.az, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %i.ad = shl nuw i64 1, %indvars.iv39
  %i.ae = and i64 %i.ad, %.06.i.lcssa
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.d, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = trunc nuw nsw i64 %indvars.iv39 to i32
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !21
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = ptrtoint ptr %i.aa to i64
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 6 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775804
  br i1 %i.al, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.t, align 8
  store ptr %i.ac, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #29
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.am = ashr exact i64 %i.ak, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 2305843009213693951)
  %i.aq = select i1 %i.ao, i64 2305843009213693951, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #30
          to label %.noexc13 unwind label %.loopexit ; 4 uses

.noexc13:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ak ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv39 to i32
  store i32 %i.au, ptr %i.at, align 4, !tbaa !20
  %i.av = icmp sgt i64 %i.ak, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %i.ac, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ak) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %i.z, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aq
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %i.t, align 8
  store ptr %i.ac, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e, %bb.c
  %i.ay = phi ptr [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ah, %bb.e ], [ %i.aa, %bb.c ]
  %i.az = phi ptr [ %i.as, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ac, %bb.e ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ba = phi ptr [ %i.ax, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.c ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge, label %bb.c, !llvm.loop !33

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i14 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = ptrtoint ptr %i.aa to i64
  %i.bc = ptrtoint ptr %i.ac to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bd) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z20util_getConcatenatedSt6vectorIiSaIiEES1_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef align 8 dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load ptr, ptr %2, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.j, ptr %i.c, ptr %i.e)
  %i.k = load <2 x ptr>, ptr %1, align 8, !tbaa !17
  store <2 x ptr> %i.k, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  store ptr %i.n, ptr %i.l, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 4                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr nonnull align 4 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 4
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.q, align 4, !tbaa !20
  store i32 %i.u, ptr %i.h, align 4, !tbaa !20
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !21
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !26

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.ae = load i32, ptr %1, align 4, !tbaa !20
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !20
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %1, ptr align 4 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 4
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i32, ptr %2, align 4, !tbaa !20
  store i32 %i.ag, ptr %1, align 4, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 4
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o, !prof !26

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 4
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !20
  store i32 %i.an, ptr %i.h, align 4, !tbaa !20
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
end_hunk_1
