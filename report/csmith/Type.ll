Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Type?download=true
inline.NumInlined: 1553
inline.NumDeleted: 527
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorI12CVQualifiersSaIS0_EEC2ERKS2_:bb.a
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIP12CVQualifiersEvT_S2_.exit.i.i.i.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK12CVQualifiersSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructI12CVQualifiersJRKS0_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.r, %_ZSt10_ConstructI12CVQualifiersJRKS0_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !105
  ret void

.body:                                            ; preds = %bb.e
  %i.ac = load ptr, ptr %0, align 8, !tbaa !83    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseI12CVQualifiersSaIS0_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !106
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt12_Vector_baseI12CVQualifiersSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI12CVQualifiersSaIS0_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !43
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i) #29, !inline_history !1
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !83
  br label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI12CVQualifiersSaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseI12CVQualifiersSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI12CVQualifiersSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4TypeC2EPKS_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((0, 4), (8, 20), (24, 72), (76, 81), (88, 136)) %0, ptr noundef %1) unnamed_addr #11 align 2 {
bb.a:
  store i32 1, ptr %0, align 8, !tbaa !73
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !74
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.d, i8 0, i64 5, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4TypeD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(136) dereferenceable(136) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8, !tbaa !43
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.05.i.i.i) #29, !inline_history !2
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.n, %i.k
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.h, align 8, !tbaa !83
  br label %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.o = phi ptr [ %.pr.i, %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !106
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #27
  br label %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit

_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIP12CVQualifiersS0_EvT_S2_RSaIT0_E.exit.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #27
  br label %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit:            ; preds = %_ZNSt6vectorI12CVQualifiersSaIS0_EED2Ev.exit, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !103 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #27
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPK4TypeSaIS2_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.b = load i1, ptr @_ZZN4Type15get_simple_typeE11eSimpleTypeE6inited, align 1
  br i1 %.b, label %bb.b, label %.preheader20.preheader

.preheader20.preheader:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) @_ZN4Type12simple_typesE, i8 0, i64 112, i1 false), !tbaa !50
  store i1 true, ptr @_ZZN4Type15get_simple_typeE11eSimpleTypeE6inited, align 1
  br label %bb.b

bb.b:                                             ; preds = %.preheader20.preheader, %bb.a
  %i.a = zext i32 %0 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @_ZN4Type12simple_typesE, i64 %i.a ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.preheader, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

.preheader:                                       ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !107 ; 5 uses
  %i.f = load ptr, ptr @_ZL8AllTypes, align 8, !tbaa !28 ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 7 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 6 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = icmp eq i64 %i.i, 8
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = trunc i64 %i.j to i1
  br i1 %lcmp.mod.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ null, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01725.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.al, %._crit_edge.unr-lcssa ]
  %lcmp.mod34 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01725.epil.init
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !73
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph.epil.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !74
  %i.r = icmp eq i32 %i.q, %0
  br i1 %i.r, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %i.b, align 8, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.c, %bb.d, %._crit_edge.unr-lcssa
  %.lcssa = phi ptr [ %i.ak, %._crit_edge.unr-lcssa ], [ %i.m, %bb.d ], [ %.epil.init, %bb.c ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %i.s = icmp eq ptr %.lcssa, null
  br i1 %i.s, label %._crit_edge.thread, label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %i.t = phi ptr [ null, %.lr.ph.preheader.new ], [ %i.ak, %bb.i ] ; 2 uses
  %.01725 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.al, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01725
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50   ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !73
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !74
  %i.aa = icmp eq i32 %i.z, %0
  br i1 %i.aa, label %bb.f, label %.lr.ph.1

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.b, align 8, !tbaa !50
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.f, %bb.e, %.lr.ph
  %i.ab = phi ptr [ %i.v, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.01725
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !73
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !74
  %i.aj = icmp eq i32 %i.ai, %0
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !50
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.1
  %i.ak = phi ptr [ %i.ae, %bb.h ], [ %i.ab, %bb.g ], [ %i.ab, %.lr.ph.1 ] ; 3 uses
  %i.al = add nuw i64 %.01725, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !154

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.am = tail call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #28 ; 8 uses
  store i32 0, ptr %i.am, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i32 %0, ptr %i.ao, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.ap, i8 0, i64 57, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i8 0, i64 48, i1 false)
  store ptr %i.am, ptr %i.b, align 8, !tbaa !50
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 16), align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.e, %i.ar
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.thread
  store ptr %i.am, ptr %i.e, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.as, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !107
  br label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %._crit_edge.thread
  %i.at = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.at, label %bb.l, label %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #30
  unreachable

_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.j
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #28 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.i ; 2 uses
  store ptr %i.am, ptr %i.ba, align 8, !tbaa !50
  %i.bb = icmp sgt i64 %i.i, 0
  br i1 %i.bb, label %bb.m, label %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIP4TypeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #27
  br label %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIP4TypeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.az, ptr @_ZL8AllTypes, align 8, !tbaa !28
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 8), align 8, !tbaa !107
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZL8AllTypes, i64 16), align 8, !tbaa !29
  br label %_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP4TypeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP4TypeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.j, %._crit_edge, %bb.b
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !50
  ret ptr %i.be
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Type20get_type_from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1684631382
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = load ptr, ptr @_ZN4Type9void_typeE, align 8, !tbaa !50
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.i = load i32, ptr %i.c, align 1
  %i.j = icmp ne i32 %i.i, 1918986307
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit16
  %i.m = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 1)
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18: ; preds = %bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !41    ; 3 uses
  %bcmp.i17 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.10, i64 %i.b)
  %i.n = icmp eq i32 %bcmp.i17, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  %i.o = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN4Type15get_simple_typeE11eSimpleType(i32 noundef 6)
  br label %bb.q

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit18
  %i.p = load i32, ptr %.pre, align 1
  %i.q = xor i32 %i.p, 1919903827
  %i.r = getelementptr i8, ptr %.pre, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = xor i32 %i.t, 116
  %i.v = or i32 %i.q, %i.u
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread30
end_hunk_0
