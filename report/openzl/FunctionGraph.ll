Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/FunctionGraph?download=true
inline.NumInlined: 593
inline.NumDeleted: 421
begin_hunk_0
@.str.9 = private unnamed_addr constant [55 x i8] c"Unconditional failure: Generic: C++ std::exception: %s\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Unconditional failure: C++ std::exception: %s\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"C++ OpenZL Exception: %s\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Converting to C++ OpenZL Exception: %s\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Converting back to ZL_Error\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1

@_ZN6openzl4EdgeC1EP9ZL_Edge_s = unnamed_addr alias void (ptr, ptr), ptr @_ZN6openzl4EdgeC2EP9ZL_Edge_s

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl4Edge7convertENS_4poly4impl4spanIP9ZL_Edge_sLm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = icmp ugt i64 %2, 384307168202282325
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %._crit_edge, label %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.d = mul nuw nsw i64 %2, 24
  %i.e = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #22
          to label %.lr.ph unwind label %bb.d     ; 3 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !42
  store ptr %i.e, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %2
  store ptr %i.g, ptr %i.c, align 8, !tbaa !44
  %.idx = shl nuw nsw i64 %2, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit
  %.017 = phi ptr [ %1, %.lr.ph ], [ %i.p, %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.k = load ptr, ptr %.017, align 8, !tbaa !46  ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !46
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !43   ; 3 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !44
  %.not.i = icmp eq ptr %i.l, %i.m
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6openzl4EdgeC1EP9ZL_Edge_s(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef %i.k)
          to label %.noexc12 unwind label %bb.h

.noexc12:                                         ; preds = %bb.f
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.i, align 8, !tbaa !43
  br label %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN6openzl4EdgeESaIS1_EE17_M_realloc_insertIJRP9ZL_Edge_sEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit unwind label %bb.h

_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit: ; preds = %bb.g, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.p = getelementptr inbounds nuw i8, ptr %.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.h
  br i1 %.not, label %._crit_edge, label %bb.e

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit, %bb.c
  ret void

bb.i:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.j, %bb.d ]
  call void @_ZNSt6vectorIN6openzl4EdgeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6openzl4EdgeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.g(ptr noundef nonnull %i.e)
          to label %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #24
  unreachable

_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i:       ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl4Edge7convertENS_4poly4impl4spanIS0_Lm18446744073709551615EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.3") align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not45 = icmp eq i64 %2, 0
  br i1 %.not45, label %._crit_edge, label %_ZNSt12_Vector_baseIP9ZL_Edge_sSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIP9ZL_Edge_sSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.c = shl nuw nsw i64 %2, 3
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22
          to label %.lr.ph unwind label %.loopexit.split-lp ; 5 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIP9ZL_Edge_sSaIS1_EE11_M_allocateEm.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !55
  store ptr %i.d, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %2 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !57
  %.idx = mul nuw nsw i64 %2, 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ] ; 4 uses
  %.026 = phi ptr [ %1, %.lr.ph ], [ %i.af, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ] ; 2 uses
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ] ; 7 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ] ; 9 uses
  %i.l = load ptr, ptr %.026, align 8, !tbaa !70  ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %i.i, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !56
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorIP9ZL_Edge_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIP9ZL_Edge_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIP9ZL_Edge_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %i.l, ptr %i.y, align 8, !tbaa !46
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.h:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.h, %.noexc14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %3 = ptrtoint ptr %i.j to i64
  %4 = sub i64 %3, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %4) #25
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %i.ac = phi ptr [ %i.aa, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.m, %bb.e ]
  %i.ad = phi ptr [ %i.x, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.ae = phi ptr [ %i.ab, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.026, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.g
  br i1 %.not, label %._crit_edge, label %bb.d

.loopexit:                                        ; preds = %_ZNKSt6vectorIP9ZL_Edge_sSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g, %_ZNSt12_Vector_baseIP9ZL_Edge_sSaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.ag = phi ptr [ %i.j, %bb.g ], [ null, %_ZNSt12_Vector_baseIP9ZL_Edge_sSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %i.ah = phi ptr [ %i.k, %bb.g ], [ null, %_ZNSt12_Vector_baseIP9ZL_Edge_sSaIS1_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.ai = phi ptr [ %i.j, %.loopexit ], [ %i.ag, %.loopexit.split-lp ]
  %i.aj = phi ptr [ %i.k, %.loopexit ], [ %i.ah, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i15 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit, label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %bb.c
  %.lcssa22 = phi ptr [ null, %bb.c ], [ %i.ad, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ]
  %.lcssa = phi ptr [ null, %bb.c ], [ %i.ae, %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ]
  store ptr %.lcssa, ptr %i.b, align 8
  store ptr %.lcssa22, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #25
  br label %_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit

_ZNSt6vectorIP9ZL_Edge_sSaIS1_EED2Ev.exit:        ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl4EdgeC2EP9ZL_Edge_s(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call ptr @ZL_Edge_getData(ptr noundef %1) ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !571
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZN6openzl8InputRefC2EP10ZL_Input_s.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 112) #23 ; 3 uses
  invoke void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105) %i.d, i64 29, ptr nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #21
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  tail call void @_ZNSt10unique_ptrI10ZL_Input_sN6openzl6detail17NonNullUniqueCPtrIS0_E7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #23
  resume { ptr, i32 } %.pn.i.i.i

bb.g:                                             ; preds = %bb.c
  unreachable

_ZN6openzl8InputRefC2EP10ZL_Input_s.exit:         ; preds = %bb.a
  ret void
}

declare ptr @ZL_Edge_getData(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl4Edge7runNodeE9ZL_NodeIDRKSt8optionalINS_14NodeParametersEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(256) %3) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6openzl4Edge17runMultiInputNodeENS_4poly4impl4spanIS0_Lm18446744073709551615EEE9ZL_NodeIDRKSt8optionalINS_14NodeParametersEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr nonnull %1, i64 1, i32 %2, ptr noundef nonnull align 8 dereferenceable(256) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl4Edge17runMultiInputNodeENS_4poly4impl4spanIS0_Lm18446744073709551615EEE9ZL_NodeIDRKSt8optionalINS_14NodeParametersEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nofree readonly captures(address) %1, i64 %2, i32 %3, ptr noundef nonnull align 8 dereferenceable(256) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.openzl::ExceptionBuilder", align 8 ; 8 uses
  %6 = alloca %"class.std::vector.3", align 8     ; 8 uses
  %7 = alloca %union.ZL_Result_ZL_EdgeList_u, align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.c = load i8, ptr %i.b, align 8, !tbaa !577, !range !73, !noundef !74
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.g = load i8, ptr %i.f, align 8, !range !73
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.d, i1 %i.h, i1 false
  %.0 = select i1 %i.i, ptr %i.e, ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN6openzl4Edge7convertENS_4poly4impl4spanIS0_Lm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.3") align 8 %6, ptr %1, i64 %2)
  %i.j = load ptr, ptr %6, align 8, !tbaa !55     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  invoke void @ZL_Edge_runMultiInputNode_withParams(ptr dead_on_unwind nonnull writable sret(%union.ZL_Result_ZL_EdgeList_u) align 8 %7, ptr noundef %i.j, i64 noundef %i.p, i32 %3, ptr noundef %.0)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %7, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %.not.i, label %bb.c, label %_ZNO6openzl16ExceptionBuilder10withResultI23ZL_Result_ZL_EdgeList_uEEOS0_T_.exit.i

_ZNO6openzl16ExceptionBuilder10withResultI23ZL_Result_ZL_EdgeList_uEEOS0_T_.exit.i: ; preds = %bb.b
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %i.q = call ptr @__cxa_allocate_exception(i64 112) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %.sroa.0.0.copyload, ptr %i.t, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.5.4..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.4..sroa.5.0..sroa_idx.i.sroa_idx, align 8
  store i8 1, ptr %i.r, align 8, !tbaa !76
  call void @_ZNO6openzl16ExceptionBuilder5buildEv(ptr dead_on_unwind writable sret(%"class.openzl::Exception") align 8 %i.q, ptr noundef nonnull align 8 dereferenceable(64) %5) #23
  invoke void @__cxa_throw(ptr %i.q, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #21
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZNO6openzl16ExceptionBuilder10withResultI23ZL_Result_ZL_EdgeList_uEEOS0_T_.exit.i
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !alias.scope !580
  %i.u = icmp ugt i64 %.sroa.6.0.copyload, 384307168202282325
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc.i.i unwind label %bb.f, !noalias !580

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not20.i.i = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not20.i.i, label %_ZN6openzl4Edge7convertE11ZL_EdgeList.exit, label %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.e
  %i.w = mul nuw nsw i64 %.sroa.6.0.copyload, 24
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22
          to label %.lr.ph.i.i unwind label %bb.f, !noalias !580 ; 3 uses

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !42, !alias.scope !580
  store ptr %i.x, ptr %i.y, align 8, !tbaa !43, !alias.scope !580
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.6.0.copyload
  store ptr %i.z, ptr %i.v, align 8, !tbaa !44, !alias.scope !580
  %.idx.i.i = shl nuw nsw i64 %.sroa.6.0.copyload, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.idx.i.i
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i.i.i, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i, %.lr.ph.i.i
  %.017.i.i = phi ptr [ %.sroa.5.0.copyload, %.lr.ph.i.i ], [ %i.ah, %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !580
  %i.ac = load ptr, ptr %.017.i.i, align 8, !tbaa !46, !noalias !580 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !46, !noalias !580
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !43, !alias.scope !580 ; 3 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !44, !alias.scope !580
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN6openzl4EdgeC1EP9ZL_Edge_s(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef %i.ac)
          to label %.noexc12.i.i unwind label %bb.j

.noexc12.i.i:                                     ; preds = %bb.h
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !43, !alias.scope !580
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !43, !alias.scope !580
  br label %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  invoke void @_ZNSt6vectorIN6openzl4EdgeESaIS1_EE17_M_realloc_insertIJRP9ZL_Edge_sEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i unwind label %bb.j

_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i: ; preds = %bb.i, %.noexc12.i.i
end_hunk_0
begin_hunk_1_@_ZN6openzl13FunctionGraph21registerFunctionGraphERNS_10CompressorESt10shared_ptrIKS0_E:bb.a
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !548 ; 2 uses
  store ptr null, ptr %i.bc, align 8, !tbaa !548
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !548
  store ptr null, ptr %1, align 8, !tbaa !592
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !641, !alias.scope !640
  %i.be = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22
          to label %_ZNSt12__shared_ptrIKN6openzl13FunctionGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.e, !noalias !640 ; 3 uses

_ZNSt12__shared_ptrIKN6openzl13FunctionGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !592, !noalias !640
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr null, ptr %i.bb, align 8, !tbaa !548, !noalias !640
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !548, !noalias !640
  store ptr null, ptr %5, align 8, !tbaa !592, !noalias !640
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !642, !alias.scope !640
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 144
  store ptr @_ZZN6openzl15moveToOpaquePtrINS_13FunctionGraphEEE12ZL_OpaquePtrSt10shared_ptrIKT_EENUlPvS7_E_8__invokeES7_S7_, ptr %i.bh, align 8, !tbaa !643, !alias.scope !640
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bi, i8 0, i64 88, i1 false)
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !103, !range !73, !noundef !74
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNSt12__shared_ptrIKN6openzl13FunctionGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i64 48, i1 false), !tbaa.struct !644
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit18

bb.e:                                             ; preds = %bb.b
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN6openzl13FunctionGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  br label %bb.o

bb.f:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.c, %_ZNSt12__shared_ptrIKN6openzl13FunctionGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bq = invoke i32 @_ZN6openzl10Compressor21registerFunctionGraphERK20ZL_FunctionGraphDesc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(240) %4)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.br = load ptr, ptr %3, align 8, !tbaa !546   ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !549
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #25
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit:           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bx = load i8, ptr %i.bk, align 8, !tbaa !103, !range !73, !noundef !74
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.j, label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i

bb.j:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit
  store i8 0, ptr %i.bk, align 8, !tbaa !103
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(208) %i.bj) #23
  br label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i: ; preds = %bb.j, %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit
  %i.bz = load ptr, ptr %i.ap, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI9ZL_NodeIDSaIS0_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !550
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #25
  br label %_ZNSt6vectorI9ZL_NodeIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI9ZL_NodeIDSaIS0_EED2Ev.exit.i:       ; preds = %bb.k, %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i
  %i.cf = load ptr, ptr %i.af, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI9ZL_NodeIDSaIS0_EED2Ev.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !551
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #25
  br label %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i:     ; preds = %bb.l, %_ZNSt6vectorI9ZL_NodeIDSaIS0_EED2Ev.exit.i
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !544 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN6openzl8TypeMaskESaIS1_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !552
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cq) #25
  br label %_ZNSt6vectorIN6openzl8TypeMaskESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6openzl8TypeMaskESaIS1_EED2Ev.exit.i: ; preds = %bb.m, %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i
  %i.cr = load i8, ptr %i.l, align 8, !tbaa !80, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.n, label %_ZN6openzl24FunctionGraphDescriptionD2Ev.exit

bb.n:                                             ; preds = %_ZNSt6vectorIN6openzl8TypeMaskESaIS1_EED2Ev.exit.i
  store i8 0, ptr %i.l, align 8, !tbaa !80
  %i.ct = load ptr, ptr %2, align 8, !tbaa !555   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZN6openzl24FunctionGraphDescriptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !556
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #25
  br label %_ZN6openzl24FunctionGraphDescriptionD2Ev.exit

_ZN6openzl24FunctionGraphDescriptionD2Ev.exit:    ; preds = %bb.n, %_ZNSt6vectorIN6openzl8TypeMaskESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %i.bq

bb.o:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.f ], [ %i.bo, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cy = load ptr, ptr %3, align 8, !tbaa !546   ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !549
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #25
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit18

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit18:         ; preds = %bb.p, %bb.o, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.d ], [ %.pn, %bb.o ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN6openzl24FunctionGraphDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6openzl18typesMasksToCTypesENS_4poly4impl4spanIKNS_8TypeMaskELm18446744073709551615EEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.133") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not44 = icmp eq i64 %2, 0
  br i1 %.not44, label %._crit_edge, label %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.c = shl nuw nsw i64 %2, 2                    ; 2 uses
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22
          to label %.lr.ph unwind label %.loopexit.split-lp ; 5 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %0, align 8, !tbaa !546
  store ptr %i.d, ptr %i.e, align 8, !tbaa !547
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %2 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !549
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 4 uses
  %.025 = phi ptr [ %1, %.lr.ph ], [ %i.af, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.ae, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 7 uses
  %i.k = phi ptr [ %i.d, %.lr.ph ], [ %i.ad, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ] ; 9 uses
  %i.l = load i32, ptr %.025, align 4, !tbaa !646 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.l, ptr %i.i, align 4, !tbaa !648
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !547
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775804
  br i1 %i.q, label %bb.g, label %_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.r = ashr exact i64 %i.p, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2305843009213693951)
  %i.v = select i1 %i.t, i64 2305843009213693951, i64 %i.u ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store i32 %i.l, ptr %i.y, align 4, !tbaa !648
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.h, label %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc14
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.h, %.noexc14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %3 = ptrtoint ptr %i.j to i64
  %4 = sub i64 %3, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %4) #25
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorI7ZL_TypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !547
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.e
  %i.ac = phi ptr [ %i.aa, %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.m, %bb.e ]
  %i.ad = phi ptr [ %i.x, %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.ae = phi ptr [ %i.ab, %_ZNSt6vectorI7ZL_TypeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.025, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.g
  br i1 %.not, label %._crit_edge, label %bb.d

.loopexit:                                        ; preds = %_ZNKSt6vectorI7ZL_TypeSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %i.b, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g, %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i, %bb.b
  %i.ag = phi ptr [ %i.j, %bb.g ], [ null, %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %i.ah = phi ptr [ %i.k, %bb.g ], [ null, %_ZNSt12_Vector_baseI7ZL_TypeSaIS0_EE11_M_allocateEm.exit.i ], [ null, %bb.b ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.ai = phi ptr [ %i.j, %.loopexit ], [ %i.ag, %.loopexit.split-lp ]
  %i.aj = phi ptr [ %i.k, %.loopexit ], [ %i.ah, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit, label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit, %bb.c
  %.lcssa21 = phi ptr [ null, %bb.c ], [ %i.ad, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ]
  %.lcssa = phi ptr [ null, %bb.c ], [ %i.ae, %_ZNSt6vectorI7ZL_TypeSaIS0_EE9push_backEOS0_.exit ]
  store ptr %.lcssa, ptr %i.b, align 8
  store ptr %.lcssa21, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %bb.j
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.am) #25
  br label %_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit

_ZNSt6vectorI7ZL_TypeSaIS0_EED2Ev.exit:           ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN6openzlL7graphFnEP10ZL_Graph_sPP9ZL_Edge_sm(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  %4 = alloca %"class.openzl::GraphState", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = tail call noundef ptr @ZL_Graph_getOperationContext(ptr noundef readnone %0) #26
  store ptr %i.c, ptr %3, align 8, !tbaa !829
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %0, ptr %4, align 8, !tbaa !110
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false), !alias.scope !830
  %i.e = icmp ugt i64 %2, 384307168202282325
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
          to label %.noexc.i.i unwind label %bb.d, !noalias !830

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %.not20.i.i = icmp eq i64 %2, 0
  br i1 %.not20.i.i, label %_ZN6openzl10GraphStateC2EP10ZL_Graph_sNS_4poly4impl4spanIP9ZL_Edge_sLm18446744073709551615EEE.exit, label %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.c
  %i.g = mul nuw nsw i64 %2, 24
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #22
          to label %.lr.ph.i.i unwind label %bb.d, !noalias !830 ; 3 uses

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !42, !alias.scope !830
  store ptr %i.h, ptr %i.i, align 8, !tbaa !43, !alias.scope !830
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %2
  store ptr %i.j, ptr %i.f, align 8, !tbaa !44, !alias.scope !830
  %.idx.i.i = shl nuw nsw i64 %2, 3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6openzl4EdgeESaIS1_EE11_M_allocateEm.exit.i.i.i, %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr @_ZTIN6openzl9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.i

bb.e:                                             ; preds = %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i, %.lr.ph.i.i
  %.017.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.r, %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !830
  %i.m = load ptr, ptr %.017.i.i, align 8, !tbaa !46, !noalias !830 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !46, !noalias !830
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !43, !alias.scope !830 ; 3 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !44, !alias.scope !830
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6openzl4EdgeC1EP9ZL_Edge_s(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef %i.m)
          to label %.noexc12.i.i unwind label %bb.h

.noexc12.i.i:                                     ; preds = %bb.f
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !43, !alias.scope !830
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.q, ptr %i.i, align 8, !tbaa !43, !alias.scope !830
  br label %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN6openzl4EdgeESaIS1_EE17_M_realloc_insertIJRP9ZL_Edge_sEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i unwind label %bb.h

_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i: ; preds = %bb.g, %.noexc12.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !830
  %i.r = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i, label %_ZN6openzl10GraphStateC2EP10ZL_Graph_sNS_4poly4impl4spanIP9ZL_Edge_sLm18446744073709551615EEE.exit, label %bb.e

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr @_ZTIN6openzl9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !830
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.l, %bb.d ]
  call void @_ZNSt6vectorIN6openzl4EdgeESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #23
  br label %.body

_ZN6openzl10GraphStateC2EP10ZL_Graph_sNS_4poly4impl4spanIP9ZL_Edge_sLm18446744073709551615EEE.exit: ; preds = %_ZNSt6vectorIN6openzl4EdgeESaIS1_EE12emplace_backIJRP9ZL_Edge_sEEERS1_DpOT_.exit.i.i, %bb.c
  %i.t = invoke ptr @ZL_Graph_getOpaquePtr(ptr noundef %0)
          to label %bb.j unwind label %bb.p       ; 2 uses

bb.j:                                             ; preds = %_ZN6openzl10GraphStateC2EP10ZL_Graph_sNS_4poly4impl4spanIP9ZL_Edge_sLm18446744073709551615EEE.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.k unwind label %bb.p, !call_target !834

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !42   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ag, %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i.i.i ], [ %i.x, %bb.k ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ad(ptr noundef nonnull %i.ab)
          to label %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i.i.i unwind label %bb.n, !inline_history !0

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #24
  unreachable

_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i.i.i:   ; preds = %bb.m, %bb.l, %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6openzl4EdgeEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.k
  %i.ah = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.x, %bb.k ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i.i, label %_ZN6openzl10GraphStateD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #25
  br label %_ZN6openzl10GraphStateD2Ev.exit

_ZN6openzl10GraphStateD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPN6openzl4EdgeES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.p:                                             ; preds = %bb.j, %_ZN6openzl10GraphStateC2EP10ZL_Graph_sNS_4poly4impl4spanIP9ZL_Edge_sLm18446744073709551615EEE.exit
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTIN6openzl9ExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN6openzl10GraphStateD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #23
  br label %.body

.body:                                            ; preds = %bb.i, %bb.p
  %.pn = phi { ptr, i32 } [ %i.am, %bb.p ], [ %.pn.i.i, %bb.i ] ; 2 uses
  %.0 = extractvalue { ptr, i32 } %.pn, 0         ; 2 uses
  %.037 = extractvalue { ptr, i32 } %.pn, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
end_hunk_1
