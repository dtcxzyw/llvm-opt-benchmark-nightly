Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3GraphAcyc?download=true
inline.NumInlined: 1226
inline.NumDeleted: 388
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9GraphAcyc17buildGraphIterateEP13V3GraphVertexP15GraphAcycVertex:bb.a
  %i.q = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22 ; 6 uses
  %i.r = load i32, ptr %i.g, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.016.024, i64 60
  %i.t = load i8, ptr %i.s, align 4, !tbaa !47, !range !48, !noundef !49
  %i.u = trunc nuw i8 %i.t to i1
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV11V3GraphEdge, i64 16), ptr %i.q, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  invoke void @_ZN11V3GraphEdge4initEP7V3GraphP13V3GraphVertexS3_ib(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef %i.p, i32 noundef %i.r, i1 noundef zeroext %i.u)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTV13GraphAcycEdge, i64 16), ptr %i.q, align 8, !tbaa !20
  tail call void @_ZN9GraphAcyc12addOrigEdgepEP11V3GraphEdgeS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.q, ptr noundef nonnull %.sroa.016.024)
  br label %_ZN9GraphAcyc14origFollowEdgeEP11V3GraphEdge.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 72) #23
  resume { ptr, i32 } %i.w

_ZN9GraphAcyc14origFollowEdgeEP11V3GraphEdge.exit.thread: ; preds = %bb.b, %bb.c, %bb.e, %_ZN9GraphAcyc14origFollowEdgeEP11V3GraphEdge.exit
  %.sroa.016.0 = load ptr, ptr %i.d, align 8, !tbaa !28 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.016.0, null
  br i1 %.not21, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9GraphAcyc12addOrigEdgepEP11V3GraphEdgeS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 149) ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.34)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.c) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !51
  store ptr %i.f, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %.not.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %i.k, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !58
  br label %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE9push_backERKS6_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !62   ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #24
  unreachable

_ZNKSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #22 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %i.f, ptr %i.aa, align 8, !tbaa !60
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #23
  br label %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  store ptr %i.z, ptr %i.i, align 8, !tbaa !62
  store ptr %i.ac, ptr %i.j, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.l, align 8, !tbaa !59
  br label %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE9push_backERKS6_.exit: ; preds = %bb.e, %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  store ptr %i.f, ptr %i.d, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE9push_backERKS6_.exit, %bb.c
  %i.ah = phi ptr [ %i.f, %_ZNSt6vectorIPNSt7__cxx114listIP11V3GraphEdgeSaIS3_EEESaIS6_EE9push_backERKS6_.exit ], [ %i.e, %bb.c ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27 ; 12 uses
  %.not13 = icmp eq ptr %i.aj, null
  br i1 %.not13, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.j
  %.sroa.014.023 = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 3 uses
  %.not2224 = icmp eq ptr %.sroa.014.023, %i.aj
  br i1 %.not2224, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.al = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.sroa.014.023, %.preheader ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIP11V3GraphEdgeSaIS2_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %i.al, %._crit_edge ] ; 2 uses
  %i.am = load ptr, ptr %.09.i.i, align 8, !tbaa !54 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #23
  %.not.i.i = icmp eq ptr %i.am, %i.aj
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIP11V3GraphEdgeSaIS2_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !63

_ZNSt7__cxx114listIP11V3GraphEdgeSaIS2_EE5clearEv.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.aj, ptr %i.an, align 8, !tbaa !51
  store ptr %i.aj, ptr %i.aj, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 0, ptr %i.ao, align 8, !tbaa !55
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.014.025 = phi ptr [ %.sroa.014.023, %.lr.ph ], [ %.sroa.014.0, %bb.k ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.025, i64 16
  %i.aq = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !28
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !28
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #25
  %i.at = load i64, ptr %i.ak, align 8, !tbaa !65
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.ak, align 8, !tbaa !65
  %.sroa.014.0 = load ptr, ptr %.sroa.014.025, align 8, !tbaa !54 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.014.0, %i.aj
  br i1 %.not22, label %._crit_edge.loopexit, label %bb.k

bb.l:                                             ; preds = %bb.j
  %i.av = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %2, ptr %i.aw, align 8, !tbaa !28
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !65
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt7__cxx114listIP11V3GraphEdgeSaIS2_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GraphAcyc8simplifyEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not2223 = icmp eq ptr %i.c, null
  br i1 %.not2223, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.f

.preheader:                                       ; preds = %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit, %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %4 = load ptr, ptr %3, align 8, !tbaa !69       ; 3 uses
  %.not30 = icmp eq ptr %4, null
  br i1 %.not30, label %._crit_edge, label %.lr.ph31

.lr.ph31:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  br i1 %1, label %.lr.ph31.split, label %.lr.ph31.split.us

.lr.ph31.split.us:                                ; preds = %.lr.ph31, %_ZN9GraphAcyc7workPopEv.exit.us
  %i.f = phi ptr [ %i.o, %_ZN9GraphAcyc7workPopEv.exit.us ], [ %4, %.lr.ph31 ] ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  store i8 0, ptr %i.g, align 4, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 4 uses
  %.not.i.i13.us = icmp eq ptr %i.i, null
  %.phi.trans.insert.i.i.us = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.pre.i.i.us = load ptr, ptr %.phi.trans.insert.i.i.us, align 8, !tbaa !72 ; 4 uses
  br i1 %.not.i.i13.us, label %._crit_edge.i.i.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph31.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store ptr %.pre.i.i.us, ptr %i.j, align 8, !tbaa !72
  br label %._crit_edge.i.i.us

._crit_edge.i.i.us:                               ; preds = %bb.b, %.lr.ph31.split.us
  %.not15.i.i.us = icmp eq ptr %.pre.i.i.us, null
  br i1 %.not15.i.i.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.us
  %i.k = getelementptr inbounds nuw i8, ptr %.pre.i.i.us, i64 88
  store ptr %i.i, ptr %i.k, align 8, !tbaa !71
  %.pre.i.us = load ptr, ptr %i.h, align 8, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.us
  %i.l = phi ptr [ %.pre.i.us, %bb.c ], [ %i.i, %._crit_edge.i.i.us ]
  store ptr %i.l, ptr %3, align 8, !tbaa !69
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %bb.e, label %_ZN9GraphAcyc7workPopEv.exit.us

bb.e:                                             ; preds = %bb.d
  store ptr %.pre.i.i.us, ptr %i.e, align 8, !tbaa !73
  br label %_ZN9GraphAcyc7workPopEv.exit.us

_ZN9GraphAcyc7workPopEv.exit.us:                  ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  tail call void @_ZN9GraphAcyc12simplifyNoneEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.f)
  tail call void @_ZN9GraphAcyc11simplifyOneEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.f)
  tail call void @_ZN9GraphAcyc11simplifyOutEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.f)
  tail call void @_ZN9GraphAcyc11simplifyDupEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.f)
  %i.o = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  %.not.us = icmp eq ptr %i.o, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph31.split.us

bb.f:                                             ; preds = %.lr.ph, %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit
  %.sroa.015.024 = phi ptr [ %i.c, %.lr.ph ], [ %i.q, %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 3 uses
  %.not.i = icmp eq ptr %i.q, null                ; 2 uses
  %i.r = select i1 %.not.i, ptr %.sroa.015.024, ptr %i.q
  tail call void @llvm.prefetch.p0(ptr nonnull %i.r, i32 1, i32 3, i32 1)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 108 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !70, !range !48, !noundef !49
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.s, align 4, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 88
  store ptr null, ptr %i.v, align 8, !tbaa !71
  %5 = load ptr, ptr %2, align 8, !tbaa !73       ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 96
  store ptr %5, ptr %i.w, align 8, !tbaa !72
  %.not.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %.sroa.015.024, ptr %i.x, align 8, !tbaa !71
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store ptr %.sroa.015.024, ptr %2, align 8, !tbaa !73
  %6 = load ptr, ptr %i.d, align 8, !tbaa !69
  %.not6.i.i = icmp eq ptr %6, null
  br i1 %.not6.i.i, label %bb.j, label %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit

bb.j:                                             ; preds = %bb.i
  store ptr %.sroa.015.024, ptr %i.d, align 8, !tbaa !69
  br label %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit

_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit:     ; preds = %bb.f, %bb.i, %bb.j
  br i1 %.not.i, label %.preheader, label %bb.f

.lr.ph31.split:                                   ; preds = %.lr.ph31, %bb.w
  %i.y = phi ptr [ %i.ba, %bb.w ], [ %4, %.lr.ph31 ] ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 108 ; 3 uses
  store i8 0, ptr %i.z, align 4, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 88 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 4 uses
  %.not.i.i13 = icmp eq ptr %i.ab, null
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !72 ; 4 uses
  br i1 %.not.i.i13, label %._crit_edge.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph31.split
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store ptr %.pre.i.i, ptr %i.ac, align 8, !tbaa !72
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k, %.lr.ph31.split
  %.not15.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not15.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 88
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !71
  %.pre.i = load ptr, ptr %i.aa, align 8, !tbaa !71
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %i.ae = phi ptr [ %.pre.i, %bb.l ], [ %i.ab, %._crit_edge.i.i ]
  store ptr %i.ae, ptr %3, align 8, !tbaa !69
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ag = icmp eq ptr %i.af, %i.y
  br i1 %i.ag, label %bb.n, label %_ZN9GraphAcyc7workPopEv.exit

bb.n:                                             ; preds = %bb.m
  store ptr %.pre.i.i, ptr %i.e, align 8, !tbaa !73
  br label %_ZN9GraphAcyc7workPopEv.exit

_ZN9GraphAcyc7workPopEv.exit:                     ; preds = %bb.m, %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  tail call void @_ZN9GraphAcyc12simplifyNoneEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.y)
  tail call void @_ZN9GraphAcyc11simplifyOneEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.y)
  tail call void @_ZN9GraphAcyc11simplifyOutEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.y)
  tail call void @_ZN9GraphAcyc11simplifyDupEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.y)
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1865), align 1, !range !48
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %bb.w

bb.o:                                             ; preds = %_ZN9GraphAcyc7workPopEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 109
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !74, !range !48, !noundef !49
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN9GraphAcyc8cutBasicEP15GraphAcycVertex.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.an, null
  br i1 %.not.i12.i, label %_ZN9GraphAcyc8cutBasicEP15GraphAcycVertex.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i
  %.sroa.013.020.i = phi ptr [ %.sroa.7.019.i, %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i ], [ %i.an, %bb.p ] ; 6 uses
  %.sroa.7.019.in.i = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 8
  %.sroa.7.019.i = load ptr, ptr %.sroa.7.019.in.i, align 8, !tbaa !29 ; 3 uses
  %.not.i11.i = icmp eq ptr %.sroa.7.019.i, null  ; 2 uses
  %i.ao = select i1 %.not.i11.i, ptr %.sroa.013.020.i, ptr %.sroa.7.019.i
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ao, i32 1, i32 3, i32 1)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 60
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !47, !range !48, !noundef !49
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.q, label %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = icmp eq ptr %i.at, %i.y
  br i1 %i.au, label %bb.r, label %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN9GraphAcyc11cutOrigEdgeEP11V3GraphEdgePKc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sroa.013.020.i, ptr noundef nonnull @.str.11)
  tail call void @_ZN11V3GraphEdge12unlinkDeleteEv(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.013.020.i)
  %i.av = load i8, ptr %i.z, align 4, !tbaa !70, !range !48, !noundef !49
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.z, align 4, !tbaa !70
  store ptr null, ptr %i.aa, align 8, !tbaa !71
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !73  ; 3 uses
  store ptr %i.ax, ptr %.phi.trans.insert.i.i, align 8, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.y, ptr %i.ay, align 8, !tbaa !71
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %i.y, ptr %i.e, align 8, !tbaa !73
  %i.az = load ptr, ptr %3, align 8, !tbaa !69
  %.not6.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not6.i.i.i, label %bb.v, label %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i

bb.v:                                             ; preds = %bb.u
  store ptr %i.y, ptr %3, align 8, !tbaa !69
  br label %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i

_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i:   ; preds = %bb.v, %bb.u, %bb.r, %bb.q, %.lr.ph.i
  br i1 %.not.i11.i, label %_ZN9GraphAcyc8cutBasicEP15GraphAcycVertex.exit, label %.lr.ph.i

_ZN9GraphAcyc8cutBasicEP15GraphAcycVertex.exit:   ; preds = %_ZN9GraphAcyc8workPushEP13V3GraphVertex.exit.i, %bb.o, %bb.p
  tail call void @_ZN9GraphAcyc11cutBackwardEP15GraphAcycVertex(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.y)
  br label %bb.w

bb.w:                                             ; preds = %_ZN9GraphAcyc7workPopEv.exit, %_ZN9GraphAcyc8cutBasicEP15GraphAcycVertex.exit
  %i.ba = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %._crit_edge, label %.lr.ph31.split

._crit_edge:                                      ; preds = %_ZN9GraphAcyc7workPopEv.exit.us, %bb.w, %.preheader
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !68  ; 2 uses
  %.not.i7.i = icmp eq ptr %i.bb, null
  br i1 %.not.i7.i, label %_ZN9GraphAcyc12deleteMarkedEv.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %._crit_edge, %bb.y
  %.sink17.i = phi ptr [ %i.bd, %bb.y ], [ %i.bb, %._crit_edge ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !12 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.bd, null            ; 2 uses
  %i.be = select i1 %.not.i6.i, ptr %.sink17.i, ptr %i.bd
  tail call void @llvm.prefetch.p0(ptr nonnull %i.be, i32 1, i32 3, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink17.i, i64 109
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !74, !range !48, !noundef !49
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i14
  tail call void @_ZN13V3GraphVertex12unlinkDeleteEP7V3Graph(ptr noundef nonnull align 8 dereferenceable(80) %.sink17.i, ptr noundef nonnull %i.a)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i14
  br i1 %.not.i6.i, label %_ZN9GraphAcyc12deleteMarkedEv.exit, label %.lr.ph.i14

_ZN9GraphAcyc12deleteMarkedEv.exit:               ; preds = %bb.y, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GraphAcyc12simplifyNoneEP15GraphAcycVertex(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 109 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !74, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %.not.i.i33 = icmp eq ptr %i.g, null
  br i1 %.not.i.i33, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = tail call noundef i32 @_ZL5debugv()
  %i.i = icmp sgt i32 %i.h, 8
  br i1 %i.i, label %bb.e, label %bb.u, !prof !50

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str.1, i32 noundef 285)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load ptr, ptr %3, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !81
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.2, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoP13V3GraphVertex(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %1)
          to label %bb.g unwind label %bb.m       ; 0 uses
end_hunk_0
