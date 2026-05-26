inline.NumInlined: 2301
inline.NumDeleted: 1300
begin_hunk_0_@_ZN5arrow7compute6detail17DispatchExactImplEPKNS0_8FunctionERKSt6vectorINS_10TypeHolderESaIS6_EE:bb.a
.loopexit.split-lp77:                             ; preds = %._crit_edge.i36, %.noexc41, %bb.u
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp77, %.loopexit76
  %lpad.phi80 = phi { ptr, i32 } [ %lpad.loopexit78, %.loopexit76 ], [ %lpad.loopexit.split-lp79, %.loopexit.split-lp77 ]
  %i.db = load ptr, ptr %4, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i46 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit47, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !141
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #22
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit47

_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit47: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ai

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZNK5arrow7compute6detail12FunctionImplINS0_19HashAggregateKernelEE7kernelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.81") align 8 %5, ptr noundef nonnull align 8 dereferenceable(216) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.dh = load ptr, ptr %5, align 8, !tbaa !142   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !142 ; 2 uses
  %i.dk = icmp eq ptr %i.dh, %i.dj
  br i1 %i.dk, label %._crit_edge.i53, label %.lr.ph.i48

._crit_edge.loopexit.i50:                         ; preds = %bb.ab
  %.phi.trans.insert.i51 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.pre.i52 = load ptr, ptr %.phi.trans.insert.i51, align 16
  br label %._crit_edge.i53

._crit_edge.i53:                                  ; preds = %._crit_edge.loopexit.i50, %bb.z
  %i.dl = phi ptr [ %.pre.i52, %._crit_edge.loopexit.i50 ], [ null, %bb.z ] ; 2 uses
  %i.dm = invoke noundef ptr @_ZN5arrow8internal7CpuInfo11GetInstanceEv()
          to label %.noexc58 unwind label %.loopexit.split-lp82 ; 2 uses

.noexc58:                                         ; preds = %._crit_edge.i53
  %i.dn = invoke noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i64 noundef 1984)
          to label %.noexc59 unwind label %.loopexit.split-lp82

.noexc59:                                         ; preds = %.noexc58
  %i.do = icmp ne ptr %i.dl, null
  %or.cond.i54 = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i54, label %bb.ad, label %bb.ac

.lr.ph.i48:                                       ; preds = %bb.z, %bb.ab
  %.sroa.018.021.i49 = phi ptr [ %i.dx, %bb.ab ], [ %i.dh, %bb.z ] ; 3 uses
  %i.dp = load ptr, ptr %.sroa.018.021.i49, align 8, !tbaa !144
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !113
  %i.dr = invoke noundef zeroext i1 @_ZNK5arrow7compute15KernelSignature13MatchesInputsERKSt6vectorINS_10TypeHolderESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(112) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc60 unwind label %.loopexit81

.noexc60:                                         ; preds = %.lr.ph.i48
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.noexc60
  %i.ds = load ptr, ptr %.sroa.018.021.i49, align 8, !tbaa !144 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 52
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !116
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dv
  store ptr %i.ds, ptr %i.dw, align 8, !tbaa !144
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.noexc60
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.018.021.i49, i64 8 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.dj
  br i1 %i.dy, label %._crit_edge.loopexit.i50, label %.lr.ph.i48

bb.ac:                                            ; preds = %.noexc59
  %i.dz = invoke noundef zeroext i1 @_ZNK5arrow8internal7CpuInfo11IsSupportedEl(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i64 noundef 32)
          to label %.noexc61 unwind label %.loopexit.split-lp82

.noexc61:                                         ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = icmp ne ptr %i.eb, null
  %or.cond5.i55 = select i1 %i.dz, i1 %i.ec, i1 false
  %i.ed = load ptr, ptr %i.a, align 16
  %spec.select.i56 = select i1 %or.cond5.i55, ptr %i.eb, ptr %i.ed
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc61, %.noexc59
  %.0.i57 = phi ptr [ %spec.select.i56, %.noexc61 ], [ %i.dl, %.noexc59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ee = load ptr, ptr %5, align 8, !tbaa !146   ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !148
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #22
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ah

.loopexit81:                                      ; preds = %.lr.ph.i48
  %lpad.loopexit83 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp82:                             ; preds = %._crit_edge.i53, %.noexc58, %bb.ac
  %lpad.loopexit.split-lp84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp82, %.loopexit81
  %lpad.phi85 = phi { ptr, i32 } [ %lpad.loopexit83, %.loopexit81 ], [ %lpad.loopexit.split-lp84, %.loopexit.split-lp82 ]
  %i.ek = load ptr, ptr %5, align 8, !tbaa !146   ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !148
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #22
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ai

bb.ah:                                            ; preds = %bb.a, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit
  %.07 = phi ptr [ %.0.i, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit ], [ %.0.i23, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit ], [ %.0.i40, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit ], [ %.0.i57, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.07

bb.ai:                                            ; preds = %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit47, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit30, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit13
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EED2Ev.exit13 ], [ %lpad.phi75, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EED2Ev.exit30 ], [ %lpad.phi80, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EED2Ev.exit47 ], [ %lpad.phi85, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EED2Ev.exit64 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEE7kernelsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa16 = phi ptr [ null, %bb.a ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.y, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.z, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.08.019, ptr %i.i, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !149
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
  %i.p = ashr exact i64 %i.n, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.n ; 2 uses
  store ptr %.sroa.08.019, ptr %i.u, align 8, !tbaa !111
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.w, ptr %i.f, align 8, !tbaa !149
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !tbaa !127
  br label %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.y = phi ptr [ %i.x, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.z = phi ptr [ %i.w, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.aa = phi ptr [ %i.t, %_ZNSt6vectorIPKN5arrow7compute12ScalarKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 96 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %._crit_edge, label %bb.b

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa16 = phi ptr [ null, %bb.a ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.y, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.z, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.08.019, ptr %i.i, align 8, !tbaa !130
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !150
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
  %i.p = ashr exact i64 %i.n, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.n ; 2 uses
  store ptr %.sroa.08.019, ptr %i.u, align 8, !tbaa !130
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.w, ptr %i.f, align 8, !tbaa !150
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !tbaa !134
  br label %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.y = phi ptr [ %i.x, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.z = phi ptr [ %i.w, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.aa = phi ptr [ %i.t, %_ZNSt6vectorIPKN5arrow7compute12VectorKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 136 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %._crit_edge, label %bb.b

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa16 = phi ptr [ null, %bb.a ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.y, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.z, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.08.019, ptr %i.i, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !151
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
  %i.p = ashr exact i64 %i.n, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.n ; 2 uses
  store ptr %.sroa.08.019, ptr %i.u, align 8, !tbaa !137
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.w, ptr %i.f, align 8, !tbaa !151
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !tbaa !141
  br label %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.y = phi ptr [ %i.x, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.z = phi ptr [ %i.w, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.aa = phi ptr [ %i.t, %_ZNSt6vectorIPKN5arrow7compute21ScalarAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 104 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %._crit_edge, label %bb.b

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit, %bb.a
  %.lcssa16 = phi ptr [ null, %bb.a ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ]
  store ptr %.lcssa16, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.y, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.z, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.08.019 = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit ] ; 9 uses
  %.not.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %.sroa.08.019, ptr %i.i, align 8, !tbaa !144
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.f, align 8, !tbaa !152
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
  %i.p = ashr exact i64 %i.n, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i.i, %i.p ; 2 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #25
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.n ; 2 uses
  store ptr %.sroa.08.019, ptr %i.u, align 8, !tbaa !144
  %i.v = icmp sgt i64 %i.n, 0
  br i1 %i.v, label %bb.f, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.f, %.noexc6
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.w, ptr %i.f, align 8, !tbaa !152
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 2 uses
  store ptr %i.x, ptr %i.g, align 8, !tbaa !148
  br label %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.c
  %i.y = phi ptr [ %i.x, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.h, %bb.c ]
  %i.z = phi ptr [ %i.w, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.k, %bb.c ]
  %i.aa = phi ptr [ %i.t, %_ZNSt6vectorIPKN5arrow7compute19HashAggregateKernelESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.08.019, i64 112 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %._crit_edge, label %bb.b

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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(38) @.str.4)
  call void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  %i.d = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !50

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !51, !range !60, !noundef !61
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.m

_ZN5arrow6StatusD2Ev.exit9:                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = load ptr, ptr %2, align 8, !tbaa !156
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = trunc i64 %i.n to i32
  call fastcc void @_ZN5arrow7computeL14CheckArityImplERKNS0_8FunctionEi(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(192) %1, i32 noundef %i.o)
  %i.p = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.e, !prof !50

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9
  call void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  %.pr = load ptr, ptr %4, align 8, !tbaa !47     ; 2 uses
  %.not.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i12, label %_ZN5arrow6StatusD2Ev.exit13.thread, label %bb.f, !prof !157

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !51, !range !60, !noundef !61
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit13.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %_ZN5arrow6StatusD2Ev.exit13.thread

_ZN5arrow6StatusD2Ev.exit13.thread:               ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.m

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.u = call noundef ptr @_ZN5arrow7compute6detail17DispatchExactImplEPKNS0_8FunctionERKSt6vectorINS_10TypeHolderESaIS6_EE(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %.not.not = icmp eq ptr %i.u, null
  br i1 %.not.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr null, ptr %0, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !158
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN5arrow7compute6detail16NoMatchingKernelEPKNS0_8FunctionERKSt6vectorINS_10TypeHolderESaIS6_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %i.w = load ptr, ptr %6, align 8, !tbaa !47     ; 2 uses
  %.not.i14 = icmp eq ptr %i.w, null
  br i1 %.not.i14, label %_ZN5arrow6StatusD2Ev.exit15, label %bb.k, !prof !50

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !51, !range !60, !noundef !61
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5arrow6StatusD2Ev.exit15, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %_ZN5arrow6StatusD2Ev.exit15

_ZN5arrow6StatusD2Ev.exit15:                      ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %_ZN5arrow6StatusD2Ev.exit13.thread, %_ZN5arrow6StatusD2Ev.exit15, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIPKNS_7compute6KernelEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !47
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !47
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !62

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
  %i.c = load ptr, ptr %2, align 8, !tbaa !43     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !46
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !43     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12JoinToStringIJRA33_KcRKiRA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ %i.l, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !192
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !282
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !282
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit
  %.05 = phi ptr [ %i.ai, %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !192
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !376
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !376
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !188  ; 8 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !190
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !192
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !377
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21, !inline_history !377
  br label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i2.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit, !prof !62

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #21
  br label %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit

_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i.i.i, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %.05, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !378

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN5arrow7compute9InputTypeEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE17_M_realloc_insertIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !379    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581) ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %i.j, 96
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
  br label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 2 uses
  %i.q = invoke noundef ptr @_ZSt12construct_atIN5arrow7compute12ScalarKernelEJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISK_EEEES8_RKNS1_14KernelInitArgsEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSW_DpOSX_(ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt16allocator_traitsISaIN5arrow7compute12ScalarKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit unwind label %bb.g ; 0 uses

_ZNSt16allocator_traitsISaIN5arrow7compute12ScalarKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE11_M_allocateEm.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5arrow7compute12ScalarKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN5arrow7compute12ScalarKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5arrow7compute12ScalarKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !168, !alias.scope !383, !noalias !380
  store ptr null, ptr %i.r, align 8, !tbaa !188, !alias.scope !383, !noalias !380
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !168, !alias.scope !380, !noalias !383
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !113, !alias.scope !383, !noalias !380
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false), !alias.scope !380, !noalias !383
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !290, !alias.scope !383, !noalias !380
  store ptr %i.w, ptr %i.u, align 8, !tbaa !290, !alias.scope !380, !noalias !383
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !265, !alias.scope !383, !noalias !380 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 16, i1 false), !tbaa.struct !281, !alias.scope !385
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !265, !alias.scope !380, !noalias !383
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !383, !noalias !380
  br label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !383, !noalias !380
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !380, !noalias !383
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !168, !alias.scope !383, !noalias !380
  store ptr null, ptr %i.ag, align 8, !tbaa !188, !alias.scope !383, !noalias !380
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !168, !alias.scope !380, !noalias !383
  store ptr null, ptr %i.af, align 8, !tbaa !291, !alias.scope !383, !noalias !380
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ai, ptr noundef nonnull align 8 dereferenceable(20) %i.aj, i64 20, i1 false), !alias.scope !385
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.0911.i.i.i) #21, !noalias !380
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !386

_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN5arrow7compute12ScalarKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN5arrow7compute12ScalarKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit ], [ %i.al, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i30 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.am, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  %.0911.i.i.i31 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ao = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !168, !alias.scope !390, !noalias !387
  store ptr null, ptr %i.an, align 8, !tbaa !188, !alias.scope !390, !noalias !387
  store <2 x ptr> %i.ao, ptr %.012.i.i.i30, align 8, !tbaa !168, !alias.scope !387, !noalias !390
  store ptr null, ptr %.0911.i.i.i31, align 8, !tbaa !113, !alias.scope !390, !noalias !387
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 24, i1 false), !alias.scope !387, !noalias !390
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !290, !alias.scope !390, !noalias !387
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !290, !alias.scope !387, !noalias !390
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !265, !alias.scope !390, !noalias !387 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i32, label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i29
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 16, i1 false), !tbaa.struct !281, !alias.scope !392
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !265, !alias.scope !387, !noalias !390
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !alias.scope !390, !noalias !387
  br label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %bb.e, %.lr.ph.i.i.i29
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !390, !noalias !387
  store i64 %i.az, ptr %i.ax, align 8, !alias.scope !387, !noalias !390
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 56 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 64
  %i.bd = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !168, !alias.scope !390, !noalias !387
  store ptr null, ptr %i.bc, align 8, !tbaa !188, !alias.scope !390, !noalias !387
  store <2 x ptr> %i.bd, ptr %i.ba, align 8, !tbaa !168, !alias.scope !387, !noalias !390
  store ptr null, ptr %i.bb, align 8, !tbaa !291, !alias.scope !390, !noalias !387
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, ptr noundef nonnull align 8 dereferenceable(20) %i.bf, i64 20, i1 false), !alias.scope !392
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.0911.i.i.i31) #21, !noalias !387
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 96 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 96 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i29, !llvm.loop !386

_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.am, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bh, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !269
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !379
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8, !tbaa !267
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.j
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !269
  ret void

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE11_M_allocateEm.exit
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = tail call ptr @__cxa_begin_catch(ptr %i.bo) #21 ; 0 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.g
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %i.p) #21
  br label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit39

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit39
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.g
  %i.br = mul nuw nsw i64 %i.j, 96
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.br) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit39

_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit39: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit, %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bq

bb.j:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #23
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12construct_atIN5arrow7compute12ScalarKernelEJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISK_EEEES8_RKNS1_14KernelInitArgsEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSW_DpOSX_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.50", align 8 ; 5 uses
  %5 = alloca %"class.std::function", align 8     ; 8 uses
  %6 = alloca %"class.std::shared_ptr.50", align 8 ; 4 uses
  %7 = alloca %"class.std::function", align 8     ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !113    ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !188
  store ptr %i.d, ptr %i.b, align 8, !tbaa !188
  store ptr null, ptr %1, align 8, !tbaa !113
  %i.e = load ptr, ptr %2, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !265  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !168
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !265
  store <2 x ptr> %i.k, ptr %i.f, align 8, !tbaa !168
  br label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !265  ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit: ; preds = %bb.c, %bb.a
  %i.r = phi ptr [ %i.l, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %4, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !188
  store ptr %i.d, ptr %i.s, align 8, !tbaa !188
  store ptr null, ptr %6, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %.not.i.i.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.thread, label %bb.g

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.thread: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.u, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  br label %bb.k

bb.g:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit
  %i.w = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 2)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !265  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body.i unwind label %bb.j    ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #23
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i: ; preds = %bb.g
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !290
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !265 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.ae, align 8, !tbaa !188
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 24, i1 false)
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !290
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.not.i.i.i, label %bb.k, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !281
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !265
  br label %bb.k

.body.i:                                          ; preds = %bb.i, %bb.h
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !265 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ai, null
  br i1 %.not.i11, label %.body, label %bb.n

bb.k:                                             ; preds = %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.thread
  %i.aj = phi ptr [ %i.ad, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i ], [ null, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i ], [ null, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.thread ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i8 0, i64 20, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.al, align 8, !tbaa !298
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.e, ptr %i.am, align 8, !tbaa !393
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.an, align 8, !tbaa !395
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.ao, align 4, !tbaa !396
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.ap, align 8, !tbaa !397
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #23
  unreachable

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.k
  ret ptr %0

bb.n:                                             ; preds = %.body.i
  %i.at = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %.body unwind label %bb.o      ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #23
  unreachable

.body:                                            ; preds = %bb.n, %.body.i, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.x, %bb.n ], [ %i.m, %bb.e ], [ %i.x, %.body.i ]
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(92) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !267  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !379    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 96
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !168
  store ptr null, ptr %i.p, align 8, !tbaa !188
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !168
  store ptr null, ptr %2, align 8, !tbaa !113
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290
  store ptr %i.u, ptr %i.s, align 8, !tbaa !290
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !265  ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZSt12construct_atIN5arrow7compute12ScalarKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 16, i1 false), !tbaa.struct !281
  store ptr %i.w, ptr %i.y, align 8, !tbaa !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atIN5arrow7compute12ScalarKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atIN5arrow7compute12ScalarKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %_ZNKSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !168
  store ptr null, ptr %i.ae, align 8, !tbaa !188
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !168
  store ptr null, ptr %i.ad, align 8, !tbaa !291
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ag, ptr noundef nonnull align 8 dereferenceable(20) %i.ah, i64 20, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5arrow7compute12ScalarKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZSt12construct_atIN5arrow7compute12ScalarKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5arrow7compute12ScalarKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !168, !alias.scope !401, !noalias !398
  store ptr null, ptr %i.ai, align 8, !tbaa !188, !alias.scope !401, !noalias !398
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !168, !alias.scope !398, !noalias !401
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !113, !alias.scope !401, !noalias !398
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 24, i1 false), !alias.scope !398, !noalias !401
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !290, !alias.scope !401, !noalias !398
  store ptr %i.an, ptr %i.al, align 8, !tbaa !290, !alias.scope !398, !noalias !401
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !265, !alias.scope !401, !noalias !398 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !281, !alias.scope !403
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !265, !alias.scope !398, !noalias !401
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !401, !noalias !398
  br label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !401, !noalias !398
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !398, !noalias !401
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ay = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !168, !alias.scope !401, !noalias !398
  store ptr null, ptr %i.ax, align 8, !tbaa !188, !alias.scope !401, !noalias !398
  store <2 x ptr> %i.ay, ptr %i.av, align 8, !tbaa !168, !alias.scope !398, !noalias !401
  store ptr null, ptr %i.aw, align 8, !tbaa !291, !alias.scope !401, !noalias !398
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.az, ptr noundef nonnull align 8 dereferenceable(20) %i.ba, i64 20, i1 false), !alias.scope !403
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.0911.i.i.i) #21, !noalias !398
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !386

_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5arrow7compute12ScalarKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZSt12construct_atIN5arrow7compute12ScalarKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ], [ %i.bc, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 96 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.by, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bd, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bf = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !168, !alias.scope !407, !noalias !404
  store ptr null, ptr %i.be, align 8, !tbaa !188, !alias.scope !407, !noalias !404
  store <2 x ptr> %i.bf, ptr %.012.i.i.i18, align 8, !tbaa !168, !alias.scope !404, !noalias !407
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !113, !alias.scope !407, !noalias !404
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 24, i1 false), !alias.scope !404, !noalias !407
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !290, !alias.scope !407, !noalias !404
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !290, !alias.scope !404, !noalias !407
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !265, !alias.scope !407, !noalias !404 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 16, i1 false), !tbaa.struct !281, !alias.scope !409
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !265, !alias.scope !404, !noalias !407
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !alias.scope !407, !noalias !404
  br label %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.e, %.lr.ph.i.i.i17
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !407, !noalias !404
  store i64 %i.bq, ptr %i.bo, align 8, !alias.scope !404, !noalias !407
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !168, !alias.scope !407, !noalias !404
  store ptr null, ptr %i.bt, align 8, !tbaa !188, !alias.scope !407, !noalias !404
  store <2 x ptr> %i.bu, ptr %i.br, align 8, !tbaa !168, !alias.scope !404, !noalias !407
  store ptr null, ptr %i.bs, align 8, !tbaa !291, !alias.scope !407, !noalias !404
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bv, ptr noundef nonnull align 8 dereferenceable(20) %i.bw, i64 20, i1 false), !alias.scope !409
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.0911.i.i.i19) #21, !noalias !404
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 96 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 96 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bx, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !386

_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bd, %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.by, %_ZSt19__relocate_object_aIN5arrow7compute12ScalarKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !269
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cc) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute12ScalarKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12ScalarKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, %bb.f
  store ptr %i.n, ptr %0, align 8, !tbaa !379
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !267
  %i.cd = getelementptr inbounds nuw [96 x i8], ptr %i.n, i64 %i.j
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !269
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE17_M_realloc_insertIJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !410    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 136                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 67818912035696880) ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %i.j, 136
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 2 uses
  %i.q = invoke noundef ptr @_ZSt12construct_atIN5arrow7compute12VectorKernelEJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISK_EEEES8_RKNS1_14KernelInitArgsEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSW_DpOSX_(ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit unwind label %bb.g ; 0 uses

_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !168, !alias.scope !414, !noalias !411
  store ptr null, ptr %i.r, align 8, !tbaa !188, !alias.scope !414, !noalias !411
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !168, !alias.scope !411, !noalias !414
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !113, !alias.scope !414, !noalias !411
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 24, i1 false), !alias.scope !411, !noalias !414
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !290, !alias.scope !414, !noalias !411
  store ptr %i.w, ptr %i.u, align 8, !tbaa !290, !alias.scope !411, !noalias !414
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !265, !alias.scope !414, !noalias !411 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 16, i1 false), !tbaa.struct !281, !alias.scope !416
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !265, !alias.scope !411, !noalias !414
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !414, !noalias !411
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !414, !noalias !411
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !411, !noalias !414
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !168, !alias.scope !414, !noalias !411
  store ptr null, ptr %i.ag, align 8, !tbaa !188, !alias.scope !414, !noalias !411
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !168, !alias.scope !411, !noalias !414
  store ptr null, ptr %i.af, align 8, !tbaa !291, !alias.scope !414, !noalias !411
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !416
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 24, i1 false), !alias.scope !411, !noalias !414
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !312, !alias.scope !414, !noalias !411
  store ptr %i.an, ptr %i.al, align 8, !tbaa !312, !alias.scope !411, !noalias !414
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !265, !alias.scope !414, !noalias !411 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i

_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !281, !alias.scope !416
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !265, !alias.scope !411, !noalias !414
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !414, !noalias !411
  br label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.as, ptr noundef nonnull align 8 dereferenceable(11) %i.at, i64 11, i1 false), !alias.scope !416
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.0911.i.i.i) #21, !noalias !411
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !417

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt16allocator_traitsISaIN5arrow7compute12VectorKernelEEE9constructIS2_JSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISN_EEEESB_RKNS1_14KernelInitArgsEEEEEEvRS3_PT_DpOT0_.exit ], [ %i.av, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 136 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36
  %.012.i.i.i30 = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %i.aw, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  %.0911.i.i.i31 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %1, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ay = load <2 x ptr>, ptr %.0911.i.i.i31, align 8, !tbaa !168, !alias.scope !421, !noalias !418
  store ptr null, ptr %i.ax, align 8, !tbaa !188, !alias.scope !421, !noalias !418
  store <2 x ptr> %i.ay, ptr %.012.i.i.i30, align 8, !tbaa !168, !alias.scope !418, !noalias !421
  store ptr null, ptr %.0911.i.i.i31, align 8, !tbaa !113, !alias.scope !421, !noalias !418
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, i8 0, i64 24, i1 false), !alias.scope !418, !noalias !421
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !290, !alias.scope !421, !noalias !418
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !290, !alias.scope !418, !noalias !421
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !265, !alias.scope !421, !noalias !418 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i32, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i29
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 16, i1 false), !tbaa.struct !281, !alias.scope !423
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !265, !alias.scope !418, !noalias !421
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !421, !noalias !418
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33: ; preds = %bb.e, %.lr.ph.i.i.i29
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !421, !noalias !418
  store i64 %i.bj, ptr %i.bh, align 8, !alias.scope !418, !noalias !421
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 64
  %i.bn = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !168, !alias.scope !421, !noalias !418
  store ptr null, ptr %i.bm, align 8, !tbaa !188, !alias.scope !421, !noalias !418
  store <2 x ptr> %i.bn, ptr %i.bk, align 8, !tbaa !168, !alias.scope !418, !noalias !421
  store ptr null, ptr %i.bl, align 8, !tbaa !291, !alias.scope !421, !noalias !418
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !alias.scope !423
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 88 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 112
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i8 0, i64 24, i1 false), !alias.scope !418, !noalias !421
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !312, !alias.scope !421, !noalias !418
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !312, !alias.scope !418, !noalias !421
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 104 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !265, !alias.scope !421, !noalias !418 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i34, label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36, label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i35

_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i35: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 16, i1 false), !tbaa.struct !281, !alias.scope !423
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !265, !alias.scope !418, !noalias !421
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !421, !noalias !418
  br label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36

_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i35, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i33
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.by, ptr noundef nonnull align 8 dereferenceable(11) %i.bz, i64 11, i1 false), !alias.scope !423
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.0911.i.i.i31) #21, !noalias !418
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 136 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 136 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.ca, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, label %.lr.ph.i.i.i29, !llvm.loop !417

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.aw, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cb, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !297
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !410
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !295
  %i.cg = getelementptr inbounds nuw [136 x i8], ptr %i.o, i64 %i.j
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !297
  ret void

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE11_M_allocateEm.exit
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  %i.cj = tail call ptr @__cxa_begin_catch(ptr %i.ci) #21 ; 0 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.g
  tail call void @_ZSt10destroy_atIN5arrow7compute12VectorKernelEEvPT_(ptr noundef %i.p)
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.g
  %i.cl = mul nuw nsw i64 %i.j, 136
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.cl) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42

_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42: ; preds = %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit, %_ZSt8_DestroyIPN5arrow7compute12VectorKernelES2_EvT_S4_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ck

bb.j:                                             ; preds = %bb.h
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  tail call void @__clang_call_terminate(ptr %i.cn) #23
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit42
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt12construct_atIN5arrow7compute12VectorKernelEJSt10shared_ptrINS1_15KernelSignatureEERPFNS0_6StatusEPNS1_13KernelContextERKNS1_8ExecSpanEPNS1_10ExecResultEERSt8functionIFNS0_6ResultISt10unique_ptrINS1_11KernelStateESt14default_deleteISK_EEEES8_RKNS1_14KernelInitArgsEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSW_DpOSX_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.50", align 8 ; 3 uses
  %5 = alloca %"class.std::function", align 8     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !188
  store ptr %i.d, ptr %i.b, align 8, !tbaa !188
  store ptr null, ptr %1, align 8, !tbaa !113
  %i.e = load ptr, ptr %2, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !265  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !265  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body unwind label %bb.e      ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #23
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !290  ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !265  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.not.i.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i, label %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i: ; preds = %bb.a, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit
  %i.r = phi ptr [ %i.p, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit ], [ null, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i: ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  store ptr %i.q, ptr %i.u, align 8, !tbaa !265
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i
  %i.v = phi ptr [ %i.p, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.i ], [ %i.r, %_ZN5arrow7compute6KernelC2ESt10shared_ptrINS0_15KernelSignatureEESt8functionIFNS_6ResultISt10unique_ptrINS0_11KernelStateESt14default_deleteIS8_EEEEPNS0_13KernelContextERKNS0_14KernelInitArgsEEE.exit.thread.i ]
  store ptr %i.a, ptr %0, align 8, !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.w, align 8, !tbaa !188
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.v, ptr %i.x, align 8, !tbaa !290
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.z, align 8, !tbaa !298
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !299
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i8 0, i64 40, i1 false)
  store i32 2, ptr %i.ac, align 8, !tbaa !304
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 1, ptr %i.ad, align 4, !tbaa !305
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 1, ptr %i.ae, align 8, !tbaa !306
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 1, ptr %i.af, align 1, !tbaa !307
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 1, ptr %i.ag, align 2, !tbaa !308
  ret ptr %0

.body:                                            ; preds = %bb.c, %bb.d
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  resume { ptr, i32 } %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt10destroy_atIN5arrow7compute12VectorKernelEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5arrow7compute12VectorKernelD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN5arrow7compute12VectorKernelD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #23
  unreachable

_ZN5arrow7compute12VectorKernelD2Ev.exit:         ; preds = %bb.a, %bb.b
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %0) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(131) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !410    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 136                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 67818912035696880) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 136
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !168
  store ptr null, ptr %i.p, align 8, !tbaa !188
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !168
  store ptr null, ptr %2, align 8, !tbaa !113
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290
  store ptr %i.u, ptr %i.s, align 8, !tbaa !290
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !265  ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 16, i1 false), !tbaa.struct !281
  store ptr %i.w, ptr %i.y, align 8, !tbaa !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i:         ; preds = %bb.c, %_ZNKSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !168
  store ptr null, ptr %i.ae, align 8, !tbaa !188
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !168
  store ptr null, ptr %i.ad, align 8, !tbaa !291
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !312
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !312
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !265 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.not.i.i.i, label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 16, i1 false), !tbaa.struct !281
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.aq, ptr noundef nonnull align 8 dereferenceable(11) %i.ar, i64 11, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bw, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 12 uses
  %.0911.i.i.i = phi ptr [ %i.bv, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.at = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !168, !alias.scope !427, !noalias !424
  store ptr null, ptr %i.as, align 8, !tbaa !188, !alias.scope !427, !noalias !424
  store <2 x ptr> %i.at, ptr %.012.i.i.i, align 8, !tbaa !168, !alias.scope !424, !noalias !427
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !113, !alias.scope !427, !noalias !424
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 24, i1 false), !alias.scope !424, !noalias !427
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !290, !alias.scope !427, !noalias !424
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !290, !alias.scope !424, !noalias !427
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !265, !alias.scope !427, !noalias !424 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 16, i1 false), !tbaa.struct !281, !alias.scope !429
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !265, !alias.scope !424, !noalias !427
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false), !alias.scope !427, !noalias !424
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !427, !noalias !424
  store i64 %i.be, ptr %i.bc, align 8, !alias.scope !424, !noalias !427
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.bi = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !168, !alias.scope !427, !noalias !424
  store ptr null, ptr %i.bh, align 8, !tbaa !188, !alias.scope !427, !noalias !424
  store <2 x ptr> %i.bi, ptr %i.bf, align 8, !tbaa !168, !alias.scope !424, !noalias !427
  store ptr null, ptr %i.bg, align 8, !tbaa !291, !alias.scope !427, !noalias !424
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !alias.scope !429
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i8 0, i64 24, i1 false), !alias.scope !424, !noalias !427
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !312, !alias.scope !427, !noalias !424
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !312, !alias.scope !424, !noalias !427
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !265, !alias.scope !427, !noalias !424 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i

_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 16, i1 false), !tbaa.struct !281, !alias.scope !429
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !265, !alias.scope !424, !noalias !427
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false), !alias.scope !427, !noalias !424
  br label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.bt, ptr noundef nonnull align 8 dereferenceable(11) %i.bu, i64 11, i1 false), !alias.scope !429
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.0911.i.i.i) #21, !noalias !424
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !417

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ], [ %i.bw, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 136 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24
  %.012.i.i.i18 = phi ptr [ %i.dc, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ], [ %i.bx, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  %.0911.i.i.i19 = phi ptr [ %i.db, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ], [ %1, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bz = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !168, !alias.scope !433, !noalias !430
  store ptr null, ptr %i.by, align 8, !tbaa !188, !alias.scope !433, !noalias !430
  store <2 x ptr> %i.bz, ptr %.012.i.i.i18, align 8, !tbaa !168, !alias.scope !430, !noalias !433
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !113, !alias.scope !433, !noalias !430
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i8 0, i64 24, i1 false), !alias.scope !430, !noalias !433
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !290, !alias.scope !433, !noalias !430
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !290, !alias.scope !430, !noalias !433
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !265, !alias.scope !433, !noalias !430 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i20, label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i21, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i17
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 16, i1 false), !tbaa.struct !281, !alias.scope !435
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !265, !alias.scope !430, !noalias !433
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false), !alias.scope !433, !noalias !430
  br label %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i21

_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i21: ; preds = %bb.f, %.lr.ph.i.i.i17
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !433, !noalias !430
  store i64 %i.ck, ptr %i.ci, align 8, !alias.scope !430, !noalias !433
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.co = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !168, !alias.scope !433, !noalias !430
  store ptr null, ptr %i.cn, align 8, !tbaa !188, !alias.scope !433, !noalias !430
  store <2 x ptr> %i.co, ptr %i.cl, align 8, !tbaa !168, !alias.scope !430, !noalias !433
  store ptr null, ptr %i.cm, align 8, !tbaa !291, !alias.scope !433, !noalias !430
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false), !alias.scope !435
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 88 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i8 0, i64 24, i1 false), !alias.scope !430, !noalias !433
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !312, !alias.scope !433, !noalias !430
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !312, !alias.scope !430, !noalias !433
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 104 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !265, !alias.scope !433, !noalias !430 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i22 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i22, label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24, label %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i23

_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i23: ; preds = %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i21
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 88
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i64 16, i1 false), !tbaa.struct !281, !alias.scope !435
  store ptr %i.cw, ptr %i.cy, align 8, !tbaa !265, !alias.scope !430, !noalias !433
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false), !alias.scope !433, !noalias !430
  br label %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24

_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24: ; preds = %_ZSt12construct_atIN5arrow7compute12VectorKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i23, %_ZN5arrow7compute6KernelC2EOS1_.exit.i.i.i.i.i.i21
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cz, ptr noundef nonnull align 8 dereferenceable(11) %i.da, i64 11, i1 false), !alias.scope !435
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(131) %.0911.i.i.i19) #21, !noalias !430
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 136 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 136 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.db, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, label %.lr.ph.i.i.i17, !llvm.loop !417

_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.bx, %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.dc, %_ZSt19__relocate_object_aIN5arrow7compute12VectorKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i24 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !297
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dg) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute12VectorKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute12VectorKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27, %bb.g
  store ptr %i.n, ptr %0, align 8, !tbaa !410
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !295
  %i.dh = getelementptr inbounds nuw [136 x i8], ptr %i.n, i64 %i.j
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(97) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !436    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 104                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 88686269585142075) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 104
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !168
  store ptr null, ptr %i.p, align 8, !tbaa !188
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !168
  store ptr null, ptr %2, align 8, !tbaa !113
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290
  store ptr %i.u, ptr %i.s, align 8, !tbaa !290
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !265  ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZSt12construct_atIN5arrow7compute21ScalarAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 16, i1 false), !tbaa.struct !281
  store ptr %i.w, ptr %i.y, align 8, !tbaa !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atIN5arrow7compute21ScalarAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atIN5arrow7compute21ScalarAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %_ZNKSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !168
  store ptr null, ptr %i.ae, align 8, !tbaa !188
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !168
  store ptr null, ptr %i.ad, align 8, !tbaa !291
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ag, ptr noundef nonnull align 8 dereferenceable(25) %i.ah, i64 25, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5arrow7compute21ScalarAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZSt12construct_atIN5arrow7compute21ScalarAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5arrow7compute21ScalarAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !168, !alias.scope !440, !noalias !437
  store ptr null, ptr %i.ai, align 8, !tbaa !188, !alias.scope !440, !noalias !437
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !168, !alias.scope !437, !noalias !440
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !113, !alias.scope !440, !noalias !437
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 24, i1 false), !alias.scope !437, !noalias !440
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !290, !alias.scope !440, !noalias !437
  store ptr %i.an, ptr %i.al, align 8, !tbaa !290, !alias.scope !437, !noalias !440
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !265, !alias.scope !440, !noalias !437 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !281, !alias.scope !442
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !265, !alias.scope !437, !noalias !440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !440, !noalias !437
  br label %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !440, !noalias !437
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !437, !noalias !440
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ay = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !168, !alias.scope !440, !noalias !437
  store ptr null, ptr %i.ax, align 8, !tbaa !188, !alias.scope !440, !noalias !437
  store <2 x ptr> %i.ay, ptr %i.av, align 8, !tbaa !168, !alias.scope !437, !noalias !440
  store ptr null, ptr %i.aw, align 8, !tbaa !291, !alias.scope !440, !noalias !437
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.az, ptr noundef nonnull align 8 dereferenceable(25) %i.ba, i64 25, i1 false), !alias.scope !442
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %.0911.i.i.i) #21, !noalias !437
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !443

_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5arrow7compute21ScalarAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZSt12construct_atIN5arrow7compute21ScalarAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ], [ %i.bc, %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 104 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.by, %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bd, %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bf = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !168, !alias.scope !447, !noalias !444
  store ptr null, ptr %i.be, align 8, !tbaa !188, !alias.scope !447, !noalias !444
  store <2 x ptr> %i.bf, ptr %.012.i.i.i18, align 8, !tbaa !168, !alias.scope !444, !noalias !447
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !113, !alias.scope !447, !noalias !444
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 24, i1 false), !alias.scope !444, !noalias !447
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !290, !alias.scope !447, !noalias !444
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !290, !alias.scope !444, !noalias !447
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !265, !alias.scope !447, !noalias !444 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 16, i1 false), !tbaa.struct !281, !alias.scope !449
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !265, !alias.scope !444, !noalias !447
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !alias.scope !447, !noalias !444
  br label %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.e, %.lr.ph.i.i.i17
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !447, !noalias !444
  store i64 %i.bq, ptr %i.bo, align 8, !alias.scope !444, !noalias !447
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !168, !alias.scope !447, !noalias !444
  store ptr null, ptr %i.bt, align 8, !tbaa !188, !alias.scope !447, !noalias !444
  store <2 x ptr> %i.bu, ptr %i.br, align 8, !tbaa !168, !alias.scope !444, !noalias !447
  store ptr null, ptr %i.bs, align 8, !tbaa !291, !alias.scope !447, !noalias !444
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bv, ptr noundef nonnull align 8 dereferenceable(25) %i.bw, i64 25, i1 false), !alias.scope !449
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(97) %.0911.i.i.i19) #21, !noalias !444
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 104 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bx, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !443

_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bd, %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.by, %_ZSt19__relocate_object_aIN5arrow7compute21ScalarAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN5arrow7compute21ScalarAggregateKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !318
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cc) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute21ScalarAggregateKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute21ScalarAggregateKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute21ScalarAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, %bb.f
  store ptr %i.n, ptr %0, align 8, !tbaa !436
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !316
  %i.cd = getelementptr inbounds nuw [104 x i8], ptr %i.n, i64 %i.j
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(105) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !322  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !450    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 112                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 82351536043346212) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 112
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load <2 x ptr>, ptr %2, align 8, !tbaa !168
  store ptr null, ptr %i.p, align 8, !tbaa !188
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !168
  store ptr null, ptr %2, align 8, !tbaa !113
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 24, i1 false)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290
  store ptr %i.u, ptr %i.s, align 8, !tbaa !290
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !265  ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZSt12construct_atIN5arrow7compute19HashAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 16, i1 false), !tbaa.struct !281
  store ptr %i.w, ptr %i.y, align 8, !tbaa !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %_ZSt12construct_atIN5arrow7compute19HashAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit

_ZSt12construct_atIN5arrow7compute19HashAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit: ; preds = %_ZNKSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !168
  store ptr null, ptr %i.ae, align 8, !tbaa !188
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !168
  store ptr null, ptr %i.ad, align 8, !tbaa !291
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ag, ptr noundef nonnull align 8 dereferenceable(33) %i.ah, i64 33, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atIN5arrow7compute19HashAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit, %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZSt12construct_atIN5arrow7compute19HashAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bb, %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atIN5arrow7compute19HashAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !168, !alias.scope !454, !noalias !451
  store ptr null, ptr %i.ai, align 8, !tbaa !188, !alias.scope !454, !noalias !451
  store <2 x ptr> %i.aj, ptr %.012.i.i.i, align 8, !tbaa !168, !alias.scope !451, !noalias !454
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !113, !alias.scope !454, !noalias !451
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i8 0, i64 24, i1 false), !alias.scope !451, !noalias !454
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !290, !alias.scope !454, !noalias !451
  store ptr %i.an, ptr %i.al, align 8, !tbaa !290, !alias.scope !451, !noalias !454
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !265, !alias.scope !454, !noalias !451 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !281, !alias.scope !456
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !265, !alias.scope !451, !noalias !454
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !454, !noalias !451
  br label %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !454, !noalias !451
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !451, !noalias !454
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.ay = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !168, !alias.scope !454, !noalias !451
  store ptr null, ptr %i.ax, align 8, !tbaa !188, !alias.scope !454, !noalias !451
  store <2 x ptr> %i.ay, ptr %i.av, align 8, !tbaa !168, !alias.scope !451, !noalias !454
  store ptr null, ptr %i.aw, align 8, !tbaa !291, !alias.scope !454, !noalias !451
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.az, ptr noundef nonnull align 8 dereferenceable(33) %i.ba, i64 33, i1 false), !alias.scope !456
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(105) %.0911.i.i.i) #21, !noalias !451
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !457

_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZSt12construct_atIN5arrow7compute19HashAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZSt12construct_atIN5arrow7compute19HashAggregateKernelEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit ], [ %i.bc, %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 112 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i18 = phi ptr [ %i.by, %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.bd, %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.bx, %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bf = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !168, !alias.scope !461, !noalias !458
  store ptr null, ptr %i.be, align 8, !tbaa !188, !alias.scope !461, !noalias !458
  store <2 x ptr> %i.bf, ptr %.012.i.i.i18, align 8, !tbaa !168, !alias.scope !458, !noalias !461
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !113, !alias.scope !461, !noalias !458
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 24, i1 false), !alias.scope !458, !noalias !461
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !290, !alias.scope !461, !noalias !458
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !290, !alias.scope !458, !noalias !461
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !265, !alias.scope !461, !noalias !458 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i20, label %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 16, i1 false), !tbaa.struct !281, !alias.scope !463
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !265, !alias.scope !458, !noalias !461
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !alias.scope !461, !noalias !458
  br label %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21

_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %bb.e, %.lr.ph.i.i.i17
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !461, !noalias !458
  store i64 %i.bq, ptr %i.bo, align 8, !alias.scope !458, !noalias !461
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 56
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 56 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64
  %i.bu = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !168, !alias.scope !461, !noalias !458
  store ptr null, ptr %i.bt, align 8, !tbaa !188, !alias.scope !461, !noalias !458
  store <2 x ptr> %i.bu, ptr %i.br, align 8, !tbaa !168, !alias.scope !458, !noalias !461
  store ptr null, ptr %i.bs, align 8, !tbaa !291, !alias.scope !461, !noalias !458
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 72
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.bv, ptr noundef nonnull align 8 dereferenceable(33) %i.bw, i64 33, i1 false), !alias.scope !463
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(105) %.0911.i.i.i19) #21, !noalias !458
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 112 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 112 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bx, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !457

_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bd, %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.by, %_ZSt19__relocate_object_aIN5arrow7compute19HashAggregateKernelES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseIN5arrow7compute19HashAggregateKernelESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !324
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cc) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute19HashAggregateKernelESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute19HashAggregateKernelESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute19HashAggregateKernelESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, %bb.f
  store ptr %i.n, ptr %0, align 8, !tbaa !450
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !322
  %i.cd = getelementptr inbounds nuw [112 x i8], ptr %i.n, i64 %i.j
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !324
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !192
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !464
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !464
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !265  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !188  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !190
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !192
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !273
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21, !inline_history !273
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i2 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i4 = phi i32 [ %i.ac, %bb.m ], [ %i.am, %bb.n ]
  %i.an = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.an, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #21
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(35) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %1) #21
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(11) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.f = load ptr, ptr %2, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %3) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(35) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA11_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA35_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn9
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

declare void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76   ; 7 uses
end_hunk_1
begin_hunk_2_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_:bb.a
  store i8 4, ptr %i.d, align 8, !tbaa !356
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.an:                                            ; preds = %bb.a
  %i.cm = icmp eq i8 %i.e, 5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.cm, label %bb.ao, label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.co = load <2 x ptr>, ptr %1, align 8, !tbaa !168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %1, i8 0, i64 16, i1 false)
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !188 ; 8 uses
  store <2 x ptr> %i.co, ptr %i.c, align 8, !tbaa !168
  %.not.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i.i.i.i28, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.cq, align 8, !tbaa !190
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !192
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #21, !inline_history !618
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #21, !inline_history !618
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i.i.i.i.i.i.i.i29 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i29, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30

bb.at:                                            ; preds = %bb.ar
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i.i31 = phi i32 [ %i.ct, %bb.as ], [ %i.dd, %bb.at ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i31, 1
  br i1 %i.de, label %bb.au, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit, !prof !62

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #21
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.av:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(17) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  store ptr null, ptr %i.cn, align 8, !tbaa !188
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load <2 x ptr>, ptr %1, align 8, !tbaa !168
  store ptr null, ptr %i.df, align 8, !tbaa !188
  store <2 x ptr> %i.dg, ptr %i.c, align 8, !tbaa !168
  store ptr null, ptr %1, align 8, !tbaa !619
  store i8 5, ptr %i.d, align 8, !tbaa !356
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.aw:                                            ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS5_6ScalarEES8_INS5_9ArrayDataEES8_INS5_12ChunkedArrayEES8_INS5_11RecordBatchEES8_INS5_5TableEEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJS7_SA_SC_SE_SG_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit: ; preds = %bb.av, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i30, %bb.aq, %bb.ao, %bb.am, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i26, %bb.ah, %bb.af, %bb.ad, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i22, %bb.y, %bb.w, %bb.u, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i18, %bb.p, %bb.n, %bb.l, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.g, %bb.e, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6detail16DatumAccumulatorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.216, align 1            ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow7compute6detail16DatumAccumulatorE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i unwind label %bb.b, !inline_history !561

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #23, !inline_history !561
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i:   ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !175

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !173
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail16DatumAccumulatorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !174
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #22, !inline_history !561
  br label %_ZN5arrow7compute6detail16DatumAccumulatorD2Ev.exit

_ZN5arrow7compute6detail16DatumAccumulatorD2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute6detail16DatumAccumulator8OnResultENS_5DatumE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.203, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 -1, ptr %i.e, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.b, ptr %3, align 8, !tbaa !358
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZSt12construct_atIN5arrow5DatumEJRS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.b) #21
  resume { ptr, i32 } %i.f

_ZSt12construct_atIN5arrow5DatumEJRS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !356
  store i8 %i.h, ptr %i.e, align 8, !tbaa !356
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.a, align 8, !tbaa !170
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZSt12construct_atIN5arrow5DatumEJRS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !47, !alias.scope !622
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.216, align 1            ; 3 uses
  %4 = alloca %class.anon.216, align 1            ; 3 uses
  %5 = alloca %class.anon.203, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !173    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #24
  unreachable

_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325) ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %i.j, 24
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #25
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN5arrow5DatumESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i8 -1, ptr %i.q, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.p, ptr %5, align 8, !tbaa !358
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !356
  store i8 %i.s, ptr %i.q, align 8, !tbaa !356
  %.not11.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not11.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.013.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %.0912.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.d ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !356, !alias.scope !628, !noalias !625 ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 8
  %i.y = load <2 x ptr>, ptr %.0912.i.i.i, align 8, !tbaa !168, !alias.scope !628, !noalias !625
  store ptr null, ptr %i.x, align 8, !tbaa !188, !alias.scope !628, !noalias !625
  store <2 x ptr> %i.y, ptr %.013.i.i.i, align 8, !tbaa !168, !alias.scope !625, !noalias !628
  store ptr null, ptr %.0912.i.i.i, align 8, !tbaa !168, !alias.scope !628, !noalias !625
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 %i.v, ptr %i.t, align 8, !tbaa !356, !alias.scope !625, !noalias !628
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !630
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i unwind label %bb.e, !noalias !625

bb.e:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #23, !noalias !625
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !630
  %i.ab = getelementptr inbounds nuw i8, ptr %.0912.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !631

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.ac, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not11.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not11.i.i.i26, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32
  %.013.i.i.i28 = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %i.ad, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0912.i.i.i29 = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ], [ %1, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.ae = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !356, !alias.scope !635, !noalias !632 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30:          ; preds = %.lr.ph.i.i.i27
  %i.ai = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 8
  %i.aj = load <2 x ptr>, ptr %.0912.i.i.i29, align 8, !tbaa !168, !alias.scope !635, !noalias !632
  store ptr null, ptr %i.ai, align 8, !tbaa !188, !alias.scope !635, !noalias !632
  store <2 x ptr> %i.aj, ptr %.013.i.i.i28, align 8, !tbaa !168, !alias.scope !632, !noalias !635
  store ptr null, ptr %.0912.i.i.i29, align 8, !tbaa !168, !alias.scope !635, !noalias !632
  br label %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31

_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i30, %.lr.ph.i.i.i27
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !356, !alias.scope !632, !noalias !635
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !637
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %.0912.i.i.i29)
          to label %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 unwind label %bb.f, !noalias !632

bb.f:                                             ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #23, !noalias !632
  unreachable

_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZSt12construct_atIN5arrow5DatumEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_.exit.i.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !637
  %i.am = getelementptr inbounds nuw i8, ptr %.0912.i.i.i29, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.013.i.i.i28, i64 24 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.am, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, label %.lr.ph.i.i.i27, !llvm.loop !631

_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35: ; preds = %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ad, %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.an, %_ZSt19__relocate_object_aIN5arrow5DatumES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !174
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #22
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit35, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !173
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !170
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.j
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !174
  ret void

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.p) #21
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #21 ; 0 uses
  %i.ax = mul nuw nsw i64 %i.j, 24
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ax) #22
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.at

bb.j:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #23
  unreachable

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !190
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !192
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !282
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !282
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !46
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow7compute7literalENS_5DatumE(ptr dead_on_unwind writable sret(%"class.arrow::compute::Expression") align 8, ptr noundef) local_unnamed_addr #3

declare void @_ZN5arrow5DatumC1Eb(ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(107) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(107) %1) #21
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(107) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.f = load ptr, ptr %2, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA107_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(52) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(30) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(52) %1) #21
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(52) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.f = load ptr, ptr %2, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !342, !nonnull !61, !align !352
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(30) %3) #21
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(30) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E0_clISC_EEDaSJ_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA52_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_S2_EEESA_DpOT_ENKUlOT_E_clISE_EEDaSJ_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn9
end_hunk_2
