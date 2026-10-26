Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/function?download=true
inline.NumInlined: 2301
inline.NumDeleted: 1300
begin_hunk_0_@_ZN5arrow7compute6detail17DispatchExactImplEPKNS0_8FunctionERKSt6vectorINS_10TypeHolderESaIS6_EE:bb.a

.noexc59:                                         ; preds = %.noexc58
  %i.do = icmp ne ptr %i.dl, null
  %or.cond.i54 = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i54, label %bb.aa, label %bb.z

.lr.ph.i48:                                       ; preds = %bb.w, %bb.y
  %.sroa.018.021.i49 = phi ptr [ %i.dx, %bb.y ], [ %i.dh, %bb.w ] ; 3 uses
  %i.dp = load ptr, ptr %.sroa.018.021.i49, align 8, !tbaa !108
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !85
  %i.dr = invoke noundef zeroext i1 @_ZNK5arrow7compute15KernelSignature13MatchesInputsERKSt6vectorINS_10TypeHolderESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(112) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc60 unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %.lr.ph.i48
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc60
  %i.ds = load ptr, ptr %.sroa.018.021.i49, align 8, !tbaa !108 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 52
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !305
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dv
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !108
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.noexc60
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.018.021.i49, i64 8 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dj
  br i1 %i.dy, label %._crit_edge.loopexit.i50, label %.lr.ph.i48

bb.z:                                             ; preds = %.noexc59
  %i.dz = invoke noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i64 noundef 32)
          to label %.noexc61 unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = icmp ne ptr %i.eb, null
  %or.cond5.i55 = select i1 %i.dz, i1 %i.ec, i1 false
  %i.ed = load ptr, ptr %i.a, align 16
  %spec.select.i56 = select i1 %or.cond5.i55, ptr %i.eb, ptr %i.ed
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc61, %.noexc59
  %.0.i57 = phi ptr [ %spec.select.i56, %.noexc61 ], [ %i.dl, %.noexc59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ee = load ptr, ptr %5, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !110
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #22
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ad

.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i48, %bb.z, %.noexc58, %._crit_edge.i53
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ek = load ptr, ptr %5, align 8, !tbaa !312   ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !110
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #22
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64: ; preds = %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit
  %.07 = phi ptr [ %.0.i, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit ], [ %.0.i23, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit ], [ %.0.i40, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit ], [ %.0.i57, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.07

bb.ae:                                            ; preds = %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit47, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit30, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit13
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp127, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit13 ], [ %lpad.loopexit.split-lp129, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit30 ], [ %lpad.loopexit.split-lp132, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit47 ], [ %lpad.loopexit.split-lp, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEE7kernelsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa16 = phi ptr [ null, %bb.a ], [ %i.ac, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.08.019, ptr %i.i, align 8, !tbaa !82
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !313
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #25
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %.sroa.08.019, ptr %i.w, align 8, !tbaa !82
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !313
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !95
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.z, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.ac = phi ptr [ %i.v, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow7compute6detail12FunctionImplINS0_12VectorKernelEE7kernelsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa16 = phi ptr [ null, %bb.a ], [ %i.ac, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.08.019, ptr %i.i, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !314
  br label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #25
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %.sroa.08.019, ptr %i.w, align 8, !tbaa !98
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !314
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !100
  br label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.z, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.ac = phi ptr [ %i.v, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 136 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow7compute6detail12FunctionImplINS0_21ScalarAggregateKernelEE7kernelsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.70") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa16 = phi ptr [ null, %bb.a ], [ %i.ac, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.08.019, ptr %i.i, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !315
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #25
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %.sroa.08.019, ptr %i.w, align 8, !tbaa !103
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !315
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !105
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.z, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.ac = phi ptr [ %i.v, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 104 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow7compute6detail12FunctionImplINS0_19HashAggregateKernelEE7kernelsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.81") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa16 = phi ptr [ null, %bb.a ], [ %i.ac, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.08.019, ptr %i.i, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !316
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = sub i64 %i.l, %i.m                       ; 7 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #25
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.n ; 2 uses
  store ptr %.sroa.08.019, ptr %i.w, align 8, !tbaa !108
  %i.x = icmp sgt i64 %i.n, 0
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.y, ptr %i.f, align 8, !tbaa !316
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !110
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.aa = phi ptr [ %i.z, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.ab = phi ptr [ %i.y, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.ac = phi ptr [ %i.v, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %._crit_edge, label %bb.b

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute8Function13DispatchExactERKSt6vectorINS_10TypeHolderESaIS3_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.92") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(38) @.str.4)
  call void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %i.d = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !60, !range !61, !noundef !62
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit8:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !113
  %i.j = load ptr, ptr %2, align 8, !tbaa !114
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = trunc i64 %i.n to i32
  call fastcc void @_ZN5arrow7computeL14CheckArityImplERKNS0_8FunctionEi(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %i.o)
  %i.p = load ptr, ptr %5, align 8, !tbaa !50     ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.e, !prof !51

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit8
  call void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %.not.i11 = icmp eq ptr %.pr, null
  br i1 %.not.i11, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.f, !prof !115

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !60, !range !61, !noundef !62
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit12.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZN5arrow6StatusD2Ev.exit12.thread

_ZN5arrow6StatusD2Ev.exit12.thread:               ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.m

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.u = call noundef ptr @_ZN5arrow7compute6detail17DispatchExactImplEPKNS0_8FunctionERKSt6vectorINS_10TypeHolderESaIS6_EE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not.not = icmp eq ptr %i.u, null
  br i1 %.not.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !117
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN5arrow7compute6detail16NoMatchingKernelEPKNS0_8FunctionERKSt6vectorINS_10TypeHolderESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %i.w = load ptr, ptr %6, align 8, !tbaa !50     ; 2 uses
  %.not.i13 = icmp eq ptr %i.w, null
  br i1 %.not.i13, label %_ZN5arrow6StatusD2Ev.exit14, label %bb.k, !prof !51

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !60, !range !61, !noundef !62
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %_ZN5arrow6StatusD2Ev.exit12.thread, %_ZN5arrow6StatusD2Ev.exit14, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !50
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !63

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !46     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !47
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !46     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !47
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.m = load ptr, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !47
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
end_hunk_0
