inline.NumInlined: 367
inline.NumDeleted: 230
begin_hunk_0_@_ZN4geos9algorithm15MinimumDiameter19getMinimumRectangleEPNS_4geom8GeometryE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4geos9algorithm15MinimumDiameterC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef %1)
  invoke void @_ZN4geos9algorithm15MinimumDiameter19getMinimumRectangleEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4geos9algorithm15MinimumDiameterD2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #18, !inline_history !112
  br label %_ZN4geos9algorithm15MinimumDiameterD2Ev.exit

_ZN4geos9algorithm15MinimumDiameterD2Ev.exit:     ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i.i2, label %_ZN4geos9algorithm15MinimumDiameterD2Ev.exit4, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i3

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i3: ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #18, !inline_history !112
  br label %_ZN4geos9algorithm15MinimumDiameterD2Ev.exit4

_ZN4geos9algorithm15MinimumDiameterD2Ev.exit4:    ; preds = %bb.c, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm15MinimumDiameter18getMinimumDiameterEPNS_4geom8GeometryE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.18") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.geos::algorithm::MinimumDiameter", align 8 ; 7 uses
  %3 = alloca %"class.std::unique_ptr.2", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4geos9algorithm15MinimumDiameterC1EPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZN4geos9algorithm15MinimumDiameter11getDiameterEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b

_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.a, ptr %0, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4geos9algorithm15MinimumDiameterD2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #18, !inline_history !112
  br label %_ZN4geos9algorithm15MinimumDiameterD2Ev.exit

_ZN4geos9algorithm15MinimumDiameterD2Ev.exit:     ; preds = %_ZNSt10unique_ptrIN4geos4geom10LineStringESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27   ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZN4geos9algorithm15MinimumDiameterD2Ev.exit4, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i3

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i3: ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #18, !inline_history !112
  br label %_ZN4geos9algorithm15MinimumDiameterD2Ev.exit4

_ZN4geos9algorithm15MinimumDiameterD2Ev.exit4:    ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos4util27UniqueCoordinateArrayFilterE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  invoke void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3setIPKN4geos4geom10CoordinateENS1_18CoordinateLessThenESaIS4_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #19
  unreachable

_ZNSt3setIPKN4geos4geom10CoordinateENS1_18CoordinateLessThenESaIS4_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4util27UniqueCoordinateArrayFilterD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4geos4util27UniqueCoordinateArrayFilterE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  invoke void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit unwind label %bb.b, !inline_history !65

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #19, !inline_history !65
  unreachable

_ZN4geos4util27UniqueCoordinateArrayFilterD2Ev.exit: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK4geos4geom16CoordinateFilter9filter_rwEPNS0_10CoordinateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4geos4util27UniqueCoordinateArrayFilter9filter_roEPKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !113
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = call { ptr, i8 } @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.1.extract = extractvalue { ptr, i8 } %i.c, 1
  %i.d = trunc i8 %.fca.1.extract to i1
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115, !nonnull !35, !align !123 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !125
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !113
  store ptr %i.k, ptr %i.h, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !124
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !66   ; 4 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 5 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %2 = icmp ult i64 %i.s, %i.r
  %i.t = call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %3 = select i1 %2, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %3, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.u = shl nuw nsw i64 %3, 3
  %i.v = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #22 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.p ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !113
  store ptr %i.x, ptr %i.w, align 8, !tbaa !113
  %i.y = icmp sgt i64 %i.p, 0
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.m, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.not.i17.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.m) #20
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.v, ptr %i.f, align 8, !tbaa !66
  store ptr %i.z, ptr %i.g, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %3
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !125
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02227.i = load ptr, ptr %i.a, align 8, !tbaa !126 ; 2 uses
  %.not28.i = icmp eq ptr %.02227.i, null
  %.pre.i.pre.pre = load ptr, ptr %1, align 8, !tbaa !113 ; 7 uses
  br i1 %.not28.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load double, ptr %.pre.i.pre.pre, align 8, !tbaa !33 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02229.i = phi ptr [ %.02227.i, %.lr.ph.i ], [ %.02229.i.be, %.backedge.backedge ] ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02229.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 3 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !33 ; 3 uses
  %i.h = fcmp olt double %i.c, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.i = fcmp ogt double %i.c, %i.g
  br i1 %i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load double, ptr %i.d, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !110
  %i.m = fcmp olt double %i.j, %i.l
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %.backedge
  %i.n = getelementptr inbounds nuw i8, ptr %.02229.i, i64 16
  %.022.i = load ptr, ptr %i.n, align 8, !tbaa !126 ; 2 uses
  %.not.i = icmp eq ptr %.022.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %.thread
  %.02229.i.be = phi ptr [ %.022.i, %bb.d ], [ %.022.i14, %.thread ]
  br label %.backedge, !llvm.loop !127

.thread:                                          ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.02229.i, i64 24
  %.022.i14 = load ptr, ptr %i.o, align 8, !tbaa !126 ; 2 uses
  %.not.i15 = icmp eq ptr %.022.i14, null
  br i1 %.not.i15, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %bb.d, %bb.a
  %.021.lcssa37.i = phi ptr [ %i.b, %bb.a ], [ %.02229.i, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.r = icmp eq ptr %.021.lcssa37.i, %i.q
  br i1 %i.r, label %bb.h, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa37.i) #23 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !113 ; 2 uses
  %.pre28 = load double, ptr %.pre, align 8, !tbaa !33
  %.pre29 = load double, ptr %.pre.i.pre.pre, align 8, !tbaa !33
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %.thread, %bb.e
  %i.t = phi double [ %.pre29, %bb.e ], [ %i.c, %.thread ] ; 2 uses
  %i.u = phi double [ %.pre28, %bb.e ], [ %i.g, %.thread ] ; 2 uses
  %i.v = phi ptr [ %.pre, %bb.e ], [ %i.f, %.thread ]
  %.021.lcssa36.i = phi ptr [ %.021.lcssa37.i, %bb.e ], [ %.02229.i, %.thread ] ; 2 uses
  %.sroa.07.0.i = phi ptr [ %i.s, %bb.e ], [ %.02229.i, %.thread ] ; 2 uses
  %i.w = fcmp olt double %i.u, %i.t
  br i1 %i.w, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.thread
  %i.x = fcmp ogt double %i.u, %i.t
  br i1 %i.x, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load double, ptr %i.y, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !110
  %i.ac = fcmp olt double %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.m

bb.h:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.thread.i, %bb.g
  %.sroa.4.0.i.ph = phi ptr [ %.021.lcssa36.i, %bb.g ], [ %.021.lcssa37.i, %._crit_edge.thread.i ], [ %.021.lcssa36.i, %._crit_edge.i.thread ] ; 3 uses
  %i.ad = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.ad, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !113 ; 2 uses
  %i.ag = load double, ptr %.pre.i.pre.pre, align 8, !tbaa !33 ; 2 uses
  %i.ah = load double, ptr %i.af, align 8, !tbaa !33 ; 2 uses
  %i.ai = fcmp olt double %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = fcmp ogt double %i.ag, %i.ah
  br i1 %i.aj, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i.pre.pre, i64 8
  %i.al = load double, ptr %i.ak, align 8, !tbaa !110
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !110
  %i.ao = fcmp olt double %i.al, %i.an
  br i1 %i.ao, label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.ap = phi i1 [ false, %bb.l ], [ true, %bb.h ], [ true, %bb.k ], [ true, %bb.i ], [ false, %bb.j ]
  %i.aq = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %.pre.i.pre.pre, ptr %i.ar, align 8, !tbaa !113
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !64
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.as, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.g, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.aq, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.07.0.i, %bb.g ], [ %.sroa.07.0.i, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE10_M_insert_IRKS4_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.g ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIPKN4geos4geom10CoordinateES4_St9_IdentityIS4_ENS1_18CoordinateLessThenESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.07) #20
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare noundef double @_ZN4geos9algorithm8Distance24pointToLinePerpendicularERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_0
