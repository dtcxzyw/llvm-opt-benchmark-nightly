Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/circulation?download=true
inline.NumInlined: 122
inline.NumDeleted: 75
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EESt6vectorIiSaIiEEibRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EE = comdat any

$_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S3_EEvibRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE = comdat any

$_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_iEEvibRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERSt6vectorIT3_SaISN_EESQ_ = comdat any

@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EESt6vectorIiSaIiEEibRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %7 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %7, ptr %0, align 8, !tbaa !12
  store ptr %7, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17
  %i.e = sdiv i64 %i.d, 3
  %i.f = trunc i64 %i.e to i32
  %i.g = sext i32 %1 to i64
  %i.h = load ptr, ptr %4, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr [4 x i8], ptr %i.h, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4, !tbaa !20   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = select i1 %2, i32 2, i32 4
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.a, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.n = phi ptr [ %7, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.a ], [ %i.bb, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 9 uses
  %i.o = phi ptr [ %i.b, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.a ], [ %i.bc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.p = phi ptr [ %7, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.a ], [ %i.bd, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.023 = phi i32 [ %i.k, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.a ], [ %i.ae, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.0 = phi i32 [ %1, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.a ], [ %i.am, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.q = sext i32 %.0 to i64                      ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !19
  %i.s = getelementptr [4 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %i.u = icmp eq i32 %i.t, %.023                  ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !19
  %i.w = load i64, ptr %i.l, align 8, !tbaa !21
  %i.x = select i1 %i.u, i64 %i.w, i64 0
  %i.y = getelementptr [4 x i8], ptr %i.v, i64 %i.q
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !20
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !21
  %i.ac = select i1 %i.u, i64 %i.ab, i64 0
  %i.ad = getelementptr [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !20 ; 5 uses
  %i.af = add i32 %i.m, %i.aa
  %i.ag = srem i32 %i.af, 3
  %i.ah = mul nsw i32 %i.ag, %i.f
  %i.ai = add nsw i32 %i.ah, %i.ae
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load ptr, ptr %3, align 8, !tbaa !22
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !20
  %.not.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.ae, ptr %i.p, align 4, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %bb.a
  %i.an = ptrtoint ptr %i.o to i64
  %i.ao = ptrtoint ptr %i.n to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775804
  br i1 %i.aq, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.p, ptr %i.a, align 8
  store ptr %i.o, ptr %6, align 8
  store ptr %i.n, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #10
          to label %.noexc16 unwind label %.loopexit.split-lp

.noexc16:                                         ; preds = %bb.d
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.ar = ashr exact i64 %i.ap, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 2305843009213693951)
  %i.av = select i1 %i.at, i64 2305843009213693951, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #9
          to label %.noexc17 unwind label %.loopexit ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store i32 %i.ae, ptr %i.ay, align 4, !tbaa !20
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.e, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

bb.e:                                             ; preds = %.noexc17
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.n, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.e, %.noexc17
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ap) #11
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.av
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.b
  %i.bb = phi ptr [ %i.ax, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.bc = phi ptr [ %i.ba, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.o, %bb.b ] ; 2 uses
  %.pn = phi ptr [ %i.ay, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.p, %bb.b ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.be = icmp eq i32 %i.ae, %i.k
  br i1 %i.be, label %bb.f, label %bb.a, !llvm.loop !23

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.p, ptr %i.a, align 8
  store ptr %i.o, ptr %6, align 8
  store ptr %i.n, ptr %0, align 8
  br label %bb.g

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store ptr %i.bd, ptr %i.a, align 8
  store ptr %i.bc, ptr %6, align 8
  store ptr %i.bb, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i18 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = ptrtoint ptr %i.o to i64
  %i.bg = ptrtoint ptr %i.n to i64
  %i.bh = sub i64 %i.bf, %i.bg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.bh) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_S3_EEvibRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERNS1_15PlainObjectBaseIT2_EE(i32 noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector", align 8       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EESt6vectorIiSaIiEEibRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %6, i32 noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.a = invoke noundef zeroext i1 @_ZN3igl14list_to_matrixIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEbRKSt6vectorIT_SaIS5_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %6, align 8, !tbaa !12     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %6, align 8, !tbaa !12     ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #11
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  resume { ptr, i32 } %i.h
}

declare noundef zeroext i1 @_ZN3igl14list_to_matrixIiN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEbRKSt6vectorIT_SaIS5_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_S3_iEEvibRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EERKNS5_IT2_EERSt6vectorIT3_SaISN_EESQ_(i32 noundef %0, i1 noundef zeroext %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !12     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !13
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 40
  br i1 %i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.j = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #9 ; 4 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !12     ; 4 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.k, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.b, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.k, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.s) #11
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.j, ptr %6, align 8, !tbaa !12
  store ptr %i.j, ptr %i.b, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.t, ptr %i.d, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %i.u = load ptr, ptr %7, align 8, !tbaa !12     ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13
  %.not.i.i17 = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i17, label %_ZNSt6vectorIiSaIiEE5clearEv.exit19, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i18

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i18:      ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  store ptr %i.u, ptr %i.v, align 8, !tbaa !13
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit19

_ZNSt6vectorIiSaIiEE5clearEv.exit19:              ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i18
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 40
  br i1 %i.ac, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i20, label %_ZNSt6vectorIiSaIiEE7reserveEm.exit24

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i20: ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit19
  %i.ad = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #9 ; 4 uses
  %i.ae = load ptr, ptr %7, align 8, !tbaa !12    ; 4 uses
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i21

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %i.ae, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i21

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i21: ; preds = %bb.d, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i20
  %.not.i8.i22 = icmp eq ptr %i.ae, null
  br i1 %.not.i8.i22, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i23, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i21
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !14
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.am) #11
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i23

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i23: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i21
  store ptr %i.ad, ptr %7, align 8, !tbaa !12
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.an, ptr %i.x, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit24

_ZNSt6vectorIiSaIiEE7reserveEm.exit24:            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit19, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i23
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.aq = sdiv i64 %i.ap, 3
  %i.ar = trunc i64 %i.aq to i32
  %i.as = sext i32 %0 to i64
  %i.at = load ptr, ptr %4, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = getelementptr [4 x i8], ptr %i.at, i64 %i.as
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = select i1 %1, i32 2, i32 4
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit32, %_ZNSt6vectorIiSaIiEE7reserveEm.exit24
  %.040 = phi i32 [ %i.aw, %_ZNSt6vectorIiSaIiEE7reserveEm.exit24 ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit32 ]
  %.0 = phi i32 [ %0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit24 ], [ %i.ce, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit32 ]
  %i.ba = sext i32 %.0 to i64                     ; 2 uses
  %i.bb = load ptr, ptr %4, align 8, !tbaa !19
  %i.bc = getelementptr [4 x i8], ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20
  %i.be = icmp eq i32 %i.bd, %.040                ; 2 uses
  %i.bf = load ptr, ptr %5, align 8, !tbaa !19
  %i.bg = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.bh = select i1 %i.be, i64 %i.bg, i64 0
  %i.bi = getelementptr [4 x i8], ptr %i.bf, i64 %i.ba
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !20 ; 2 uses
  %i.bl = load i64, ptr %i.au, align 8, !tbaa !21
  %i.bm = select i1 %i.be, i64 %i.bl, i64 0
  %i.bn = getelementptr [4 x i8], ptr %i.bc, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !20 ; 6 uses
  %i.bp = sext i32 %i.bo to i64
end_hunk_0
