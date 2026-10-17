Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gcompiler?download=true
inline.NumInlined: 5050
inline.NumDeleted: 2627
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv4util7variantIJNS0_9monostateESt8functionIFvRNS_6detail9VectorRefEEES3_IFvRNS4_9OpaqueRefEEEEE6copy_hISC_E4helpEPNSt15aligned_storageILm32ELm8EE4typeEPKSI_:bb.a

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.f

_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2ERKS5_.exit.i: ; preds = %bb.c, %bb.a
  %i.k = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.e, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 16, i1 false), !tbaa.struct !400
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %0, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !68
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !68   ; 2 uses
  store <2 x ptr> %i.m, ptr %i.a, align 16, !tbaa !68
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !68
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEaSERKS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2ERKS5_.exit.i
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEaSERKS5_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #24
  unreachable

_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEaSERKS5_.exit: ; preds = %_ZNSt8functionIFvRN2cv6detail9OpaqueRefEEEC2ERKS5_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPN2cv5gimpl6RcDescES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not21 = icmp eq ptr %0, %1
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit
  %.023 = phi ptr [ %i.ab, %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 8 uses
  %.01222 = phi ptr [ %i.aa, %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = load i64, ptr %.01222, align 8
  store i64 %i.a, ptr %.023, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.01222, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268  ; 2 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !268
  %i.e = getelementptr inbounds nuw i8, ptr %.023, i64 16 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01222, i64 16 ; 2 uses
  switch i64 %i.d, label %default.switch.case.unreachable.i.i [
    i64 0, label %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit
    i64 1, label %call.1.i.i
    i64 2, label %call.2.i.i
  ], !prof !329

default.switch.case.unreachable.i.i:              ; preds = %.lr.ph
  unreachable

call.1.i.i:                                       ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.023, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01222, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.not.i.i2.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i.i2.i, label %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %call.1.i.i
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !68
  store <2 x ptr> %i.k, ptr %i.g, align 8, !tbaa !68
  br label %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i3.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i3.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #24
  unreachable

call.2.i.i:                                       ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.023, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01222, i64 32 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.not.i.i.i, label %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit, label %bb.g

bb.g:                                             ; preds = %call.2.i.i
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !68
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !68
  br label %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !103  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %.body unwind label %bb.k      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #24
  unreachable

_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit: ; preds = %bb.h, %call.2.i.i, %bb.c, %call.1.i.i, %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.01222, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.023, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.aa, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !859

.body:                                            ; preds = %bb.d, %bb.e, %bb.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %i.v, %bb.j ]
  %i.ac = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #23 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.023
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv5gimpl6RcDescEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.al, %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i ], [ %2, %.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !268
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @constinit.54, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !68
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  invoke void %i.ah(ptr noundef nonnull %i.ai)
          to label %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #24
  unreachable

_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i:   ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %.023
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv5gimpl6RcDescEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZSt8_DestroyIPN2cv5gimpl6RcDescEEvT_S4_.exit:    ; preds = %_ZSt8_DestroyIN2cv5gimpl6RcDescEEvPT_.exit.i.i, %.body
  invoke void @__cxa_rethrow() #26
          to label %bb.p unwind label %bb.m

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ab, %_ZSt10_ConstructIN2cv5gimpl6RcDescEJRS2_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.m:                                             ; preds = %_ZSt8_DestroyIPN2cv5gimpl6RcDescEEvT_S4_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.am

bb.o:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #24
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN2cv5gimpl6RcDescEEvT_S4_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !298    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300
  %i.j = load ptr, ptr %0, align 8, !tbaa !298    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE11_M_allocateEm.exit.i, !prof !95

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN3ade6HandleINS0_4NodeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN3ade6HandleINS0_4NodeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.y, %_ZSt10_ConstructIN3ade6HandleINS0_4NodeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !278  ; 2 uses
  %i.s = load <2 x ptr>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !68
  store <2 x ptr> %i.s, ptr %.09.i.i.i.i.i, align 8, !tbaa !68
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN3ade6HandleINS0_4NodeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.t, align 4, !tbaa !94
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !94
  br label %_ZSt10_ConstructIN3ade6HandleINS0_4NodeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN3ade6HandleINS0_4NodeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN3ade6HandleINS0_4NodeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !24

_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZSt10_ConstructIN3ade6HandleINS0_4NodeEEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE11_M_allocateEm.exit.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !298   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !299 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i ], [ %i.aa, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !278 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !94 ; 2 uses
  %i.ai = add nsw i32 %i.ah, -1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.i ], [ %i.aj, %bb.j ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.k, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #23, !inline_history !21
  br label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i

_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ao, %i.ac
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !14

_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !298
  br label %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exit

_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  %i.ap = phi ptr [ %.pr, %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exitthread-pre-split ], [ %i.aa, %_ZNSt6vectorIN3ade6HandleINS0_4NodeEEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exit
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !300
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #25
  br label %_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN3ade6HandleINS0_4NodeEEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN3ade6HandleINS0_4NodeEEEEvT_S5_.exit, %bb.l
  store ptr %i.p, ptr %0, align 8, !tbaa !298
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.au, ptr %i.h, align 8, !tbaa !300
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit

bb.m:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !299 ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ay, %i.f
  br i1 %.not24, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = icmp sgt i64 %i.g, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.n, %_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bv, %_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.n ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bu, %_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i ], [ %i.j, %bb.n ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bt, %_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i ], [ %i.c, %bb.n ] ; 3 uses
  %i.ba = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !869
  store ptr %i.ba, ptr %.0811.i.i.i.i.i, align 8, !tbaa !869
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !278 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !94
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !94
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p, %.lr.ph.i.i.i.i.i26
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !278 ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 3 uses
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i7.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !94 ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bm, %bb.s ], [ %i.bo, %bb.t ]
  %i.bp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %bb.u, label %_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !77
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #23, !inline_history !860
  br label %_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i

_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !278
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.bv = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bw = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !861

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %_ZN3ade6HandleINS_4NodeEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !119
  %.pre62 = ptrtoint ptr %i.bu to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.n
  %.pre-phi63 = phi i64 [ %.pre62, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.l, %bb.n ]
  %i.bx = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.aw, %bb.n ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.bu, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.j, %bb.n ]
  %.not4.i.i28 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bx
  br i1 %.not4.i.i28, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3ade6HandleINS2_4NodeEEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.by = sub i64 %.pre-phi63, %i.l
  %i.bz = getelementptr inbounds i8, ptr %i.j, i64 %i.by
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i34
  %.sroa.01.05.i.i = phi ptr [ %i.cl, %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i34 ], [ %i.bz, %.lr.ph.i.i29.preheader ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !278 ; 4 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i34, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12 ; 3 uses
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i.i.i31 = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !94 ; 2 uses
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !94
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32

bb.x:                                             ; preds = %bb.v
  %i.cg = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i33 = phi i32 [ %i.ce, %bb.w ], [ %i.cg, %bb.x ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i.i.i33, 1
  br i1 %i.ch, label %bb.y, label %_ZSt8_DestroyIN3ade6HandleINS0_4NodeEEEEvPT_.exit.i.i34

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i32
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !77
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #23, !inline_history !862
end_hunk_0
