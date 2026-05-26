inline.NumInlined: 1439
inline.NumDeleted: 477
begin_hunk_0_@_ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper25BuildFieldDescriptorOrderEOSt5arrayIS4_ISt6vectorINS2_10FieldGroupESaIS6_EELm6EELm5EERKNS2_7OptionsE:bb.a
bb.aa:                                            ; preds = %bb.p, %bb.t, %bb.x, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.bw, %bb.x ], [ %i.bg, %bb.t ], [ %i.ar, %bb.p ]
  %i.bz = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !52
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = ptrtoint ptr %i.bz to i64
  %i.ce = sub i64 %i.cc, %i.cd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef %i.ce) #21
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %.pn.pn.pn

bb.ac:                                            ; preds = %bb.z
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5arrayIS_ISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EELm5EED2Ev(ptr noundef nonnull align 8 dead_on_return(720) dereferenceable(720) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.d) #20
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper20FieldAlignmentGroupsD2Ev(ptr noundef nonnull align 8 dead_on_return(2160) dereferenceable(2160) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2016
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1872
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1728
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.d) #20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1584
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.e) #20
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(720) %i.a) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1296
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1152
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.h) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1008
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.j) #20
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(720) %i.f) #20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.k) #20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.l) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.n) #20
  tail call void @_ZNSt5arrayISt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS5_EELm6EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(720) %0) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 5) i32 @_ZN6google8protobuf8compiler3cpp19MessageLayoutHelper14GetFieldFamilyEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(217) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 32
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp11ShouldSplitEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(217) %1)
  %i.e = select i1 %i.d, i32 4, i32 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 2, !tbaa !26
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !37
  switch i32 %i.j, label %bb.d [
    i32 9, label %bb.e
    i32 10, label %.fold.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp22CanInitializeByZeroingEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(217) %1)
  %. = select i1 %i.k, i32 3, i32 4
  br label %bb.e

.fold.split:                                      ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.fold.split, %bb.d, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %., %bb.d ], [ 1, %bb.c ], [ 2, %.fold.split ]
  ret i32 %.0
}

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp11ShouldSplitEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp22CanInitializeByZeroingEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6google8protobuf8compiler3cpp19MessageLayoutHelper19BuildFastParseTableERKNS2_7OptionsE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.16") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(217) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 10 uses
  %4 = alloca %"class.std::vector.21", align 8    ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::Span.26", align 8 ; 2 uses
  %6 = alloca %"struct.google::protobuf::internal::TailCallTableInfo", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  call void @_ZN6google8protobuf8compiler3cpp16GetOrderedFieldsEPKNS0_10DescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef %i.b)
  %i.c = load ptr, ptr %3, align 8, !tbaa !7      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %.not59 = icmp eq ptr %i.c, %i.e
  br i1 %.not59, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !19
  %i.f = ptrtoint ptr %.sroa.9.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.g = phi ptr [ %i.c, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %._crit_edge.loopexit ]
  %.sroa.036.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.036.1, %._crit_edge.loopexit ] ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #21
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.n = ptrtoint ptr %.sroa.036.0.lcssa to i64   ; 2 uses
  %i.o = sub i64 %.sroa.9.0.lcssa, %i.n
  %i.p = ashr exact i64 %i.o, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  invoke void @_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17BuildFieldOptionsEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKPKNS0_15FieldDescriptorEEERKNS2_7OptionsENS9_IKiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.21") align 8 %4, ptr noundef %i.m, ptr %.sroa.036.0.lcssa, i64 %i.p, ptr noundef nonnull align 8 dereferenceable(217) %2, ptr noundef nonnull byval(%"class.absl::lts_20250512::Span.26") align 8 %5)
          to label %bb.l unwind label %bb.q

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit
  %.sroa.036.063 = phi ptr [ %.sroa.036.1, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit ], [ null, %bb.a ] ; 7 uses
  %.sroa.9.062 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit ], [ null, %bb.a ] ; 7 uses
  %.sroa.13.061 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.033.060 = phi ptr [ %i.am, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.033.060, align 8, !tbaa !24 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp17IsLayoutOptimizedEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(217) %2)
          to label %bb.c unwind label %.loopexit48

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.r, label %bb.d, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %.sroa.9.062, %.sroa.13.061
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.q, ptr %.sroa.9.062, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.9.062, i64 8
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = ptrtoint ptr %.sroa.9.062 to i64
  %i.u = ptrtoint ptr %.sroa.036.063 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 6 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.g, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %7 = icmp ult i64 %i.y, %i.x
  %i.z = call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %8 = select i1 %7, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i16 = icmp ne i64 %8, 0
  call void @llvm.assume(i1 %.not.i.i.i16)
  %i.aa = shl nuw nsw i64 %8, 3
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #23
          to label %.noexc17 unwind label %.loopexit48 ; 4 uses

.noexc17:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.v ; 2 uses
  store ptr %i.q, ptr %i.ac, align 8, !tbaa !24
  %i.ad = icmp sgt i64 %i.v, 0
  br i1 %i.ad, label %bb.h, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.h:                                             ; preds = %.noexc17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %.sroa.036.063, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.h, %.noexc17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.036.063, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.036.063, i64 noundef %i.v) #21
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %8
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit

.loopexit48:                                      ; preds = %.lr.ph, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.13.061.lcssa = phi ptr [ %.sroa.13.061, %.lr.ph ], [ %.sroa.9.062, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit48
  %.sroa.13.06168 = phi ptr [ %.sroa.13.061.lcssa, %.loopexit48 ], [ %.sroa.9.062, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit48 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ag = load ptr, ptr %3, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit19, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !52
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #21
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit19

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit19: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.v

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.e, %bb.c
  %.sroa.13.1 = phi ptr [ %.sroa.13.061, %bb.c ], [ %i.af, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.13.061, %bb.e ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.062, %bb.c ], [ %i.ae, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.036.1 = phi ptr [ %.sroa.036.063, %bb.c ], [ %i.ab, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.036.063, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.033.060, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.l:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ao = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  invoke void @_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator30BuildTcTableInfoFromDescriptorEPKNS0_10DescriptorERKNS2_7OptionsEN4absl12lts_202505124SpanIKNS0_8internal17TailCallTableInfo12FieldOptionsEEE(ptr dead_on_unwind nonnull writable sret(%"struct.google::protobuf::internal::TailCallTableInfo") align 8 %6, ptr noundef %i.an, ptr noundef nonnull align 8 dereferenceable(217) %2, ptr %i.ao, i64 %i.au)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !69 ; 3 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !70 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i, label %.noexc21.thread, label %bb.n

.noexc21.thread:                                  ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr null, i64 %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !21
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp ugt i64 %i.bb, 9223372036854775776
  br i1 %i.bf, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoEE8allocateEmPKv.exit.i.i.i.i, !prof !51

.noexc.i.i:                                       ; preds = %bb.n
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc20 unwind label %bb.s

.noexc20:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.n
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #23
          to label %.noexc21 unwind label %bb.s   ; 4 uses

.noexc21:                                         ; preds = %_ZNSt15__new_allocatorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.bg, ptr %0, align 8, !tbaa !70
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bb
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !21
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc21, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %i.bg, %.noexc21 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.ay, %.noexc21 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.08.i.i.i.i.i, i64 32, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, %i.ax
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !71

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc21.thread
  %i.bm = phi ptr [ %i.bc, %.noexc21.thread ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.noexc21.thread ], [ %i.bl, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.bm, align 8, !tbaa !69
  call void @_ZN6google8protobuf8internal17TailCallTableInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bn = load ptr, ptr %4, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !72
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit: ; preds = %.loopexit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.not.i.i.i23 = icmp eq ptr %.sroa.036.0.lcssa, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit24, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit
  %i.bt = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.bu = sub i64 %i.bt, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.036.0.lcssa, i64 noundef %i.bu) #21
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit24

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit24: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit, %bb.p
  ret void

bb.q:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit26

bb.r:                                             ; preds = %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt15__new_allocatorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8internal17TailCallTableInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(140) dereferenceable(140) %6) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.s ], [ %i.bw, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.by = load ptr, ptr %4, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit26, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.by to i64
  %i.cd = sub i64 %i.cb, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cd) #21
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit26

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit26: ; preds = %bb.u, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %.pn, %bb.t ], [ %.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit19, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit26
  %.sroa.13.057 = phi ptr [ %.sroa.13.0.lcssa, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit26 ], [ %.sroa.13.06168, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit19 ]
  %.sroa.036.051 = phi ptr [ %.sroa.036.0.lcssa, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit26 ], [ %.sroa.036.063, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit19 ] ; 3 uses
  %.pn13.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EED2Ev.exit26 ], [ %lpad.phi, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit19 ]
  %.not.i.i.i27 = icmp eq ptr %.sroa.036.051, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit28, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = ptrtoint ptr %.sroa.13.057 to i64
  %i.cf = ptrtoint ptr %.sroa.036.051 to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.036.051, i64 noundef %i.cg) #21
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit28

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit28: ; preds = %bb.v, %bb.w
  resume { ptr, i32 } %.pn13.pn
}

declare void @_ZN6google8protobuf8compiler3cpp16GetOrderedFieldsEPKNS0_10DescriptorE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN6google8protobuf8compiler3cpp17IsLayoutOptimizedEPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(217)) local_unnamed_addr #5

declare void @_ZN6google8protobuf8compiler3cpp22ParseFunctionGenerator17BuildFieldOptionsEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKPKNS0_15FieldDescriptorEEERKNS2_7OptionsENS9_IKiEE(ptr dead_on_unwind writable sret(%"class.std::vector.21") align 8, ptr noundef, ptr, i64, ptr noundef nonnull align 8 dereferenceable(217), ptr noundef byval(%"class.absl::lts_20250512::Span.26") align 8) local_unnamed_addr #5
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEvNS9_IPS4_S6_EET_SF_St20forward_iterator_tag:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPKN6google8protobuf15FieldDescriptorES5_ET0_T_S7_S6_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !24
  store ptr %i.ag, ptr %1, align 8, !tbaa !24
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !53

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !24
  store ptr %i.an, ptr %i.h, align 8, !tbaa !24
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !18
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !53

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEEPS6_S6_ET0_T_SF_SE_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !24
  br label %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51

_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !18
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !53

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN6google8protobuf15FieldDescriptorES5_SaIS4_EET0_T_S8_S7_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8, !tbaa !24
  store ptr %i.ax, ptr %1, align 8, !tbaa !24
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #23
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !53

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit
  %i.bo = icmp eq i64 %i.bm, 8
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.ay, align 8, !tbaa !24
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bq = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm ; 3 uses
  %i.br = icmp sgt i64 %i.c, 8
  br i1 %i.br, label %bb.ad, label %bb.ae, !prof !53

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bq, ptr align 8 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bs = icmp eq i64 %i.c, 8
  br i1 %i.bs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %2, align 8, !tbaa !24
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bu = getelementptr inbounds i8, ptr %i.bq, i64 %i.c ; 3 uses
  %i.bv = sub i64 %i.j, %i.bl                     ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !53

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %1, i64 %i.bv, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bx = icmp eq i64 %i.bv, 8
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %.not.i55 = icmp eq ptr %i.ay, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = sub i64 %i.i, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ca) #21
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bk, ptr %0, align 8, !tbaa !19
  store ptr %i.bz, ptr %i.g, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bh
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !52
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !94     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #22
  unreachable

_ZNKSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %4, 5                    ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !19     ; 4 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNKSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.w = getelementptr inbounds i8, ptr null, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr %i.w, ptr %i.x, align 8, !tbaa !52
  br label %bb.g

bb.c:                                             ; preds = %_ZNKSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE12_M_check_lenEmPKc.exit
  %i.y = icmp ugt i64 %i.u, 9223372036854775800
  br i1 %i.y, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i, !prof !51

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #23
          to label %.noexc26 unwind label %bb.j   ; 5 uses

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.z, ptr %i.o, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !52
  %i.ad = icmp samesign ugt i64 %i.u, 8
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !117

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.r, i64 %i.u, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ae = icmp eq i64 %i.u, 8
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !24
  store ptr %i.af, ptr %i.z, align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.thread
  %i.ag = phi ptr [ %i.ab, %bb.d ], [ %i.ab, %bb.e ], [ %i.ab, %bb.f ], [ %i.w, %.thread ]
  %i.ah = phi ptr [ %i.aa, %bb.d ], [ %i.aa, %bb.e ], [ %i.aa, %bb.f ], [ %i.v, %.thread ]
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  store i64 %i.ak, ptr %i.ai, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.n, %bb.g ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.al = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !7, !alias.scope !121, !noalias !118
  store <2 x ptr> %i.al, ptr %.012.i.i.i, align 8, !tbaa !7, !alias.scope !118, !noalias !121
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52, !alias.scope !121, !noalias !118
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !52, !alias.scope !118, !noalias !121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !121, !noalias !118
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !121, !noalias !118
  store i64 %i.ar, ptr %i.ap, align 8, !alias.scope !118, !noalias !121
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !100

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %bb.g ], [ %i.at, %.lr.ph.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.bd, %.lr.ph.i.i.i28 ], [ %i.au, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  %.0911.i.i.i30 = phi ptr [ %i.bc, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.av = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !7, !alias.scope !126, !noalias !123
  store <2 x ptr> %i.av, ptr %.012.i.i.i29, align 8, !tbaa !7, !alias.scope !123, !noalias !126
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !52, !alias.scope !126, !noalias !123
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !52, !alias.scope !123, !noalias !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !126, !noalias !123
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !126, !noalias !123
  store i64 %i.bb, ptr %i.az, align 8, !alias.scope !123, !noalias !126
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bc, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !100

_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.au, %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bd, %.lr.ph.i.i.i28 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #21
  br label %_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33, %bb.h
  store ptr %i.n, ptr %0, align 8, !tbaa !94
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %4
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !50
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIPKN6google8protobuf15FieldDescriptorEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  %i.bm = tail call ptr @__cxa_begin_catch(ptr %i.bl) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #21
  invoke void @__cxa_rethrow() #22
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bj

bb.l:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #25
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6google8protobuf8compiler3cpp10FieldGroupESaIS4_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS4_S6_EEEEvSB_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not94 = icmp eq ptr %2, %3
  br i1 %.not94, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 5                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 4 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 5 uses
  %i.q = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !7
  store <2 x ptr> %i.q, ptr %.013.i.i.i.i.i, align 8, !tbaa !7
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  store ptr %i.t, ptr %i.r, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.012.i.i.i.i.i, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 24
  %i.w = load i64, ptr %i.v, align 8
  store i64 %i.w, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !128

_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.c
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !47
  %i.ab = ptrtoint ptr %i.p to i64
  %i.ac = sub i64 %i.ab, %i.l
  %i.ad = ashr exact i64 %i.ac, 5                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupES5_ET0_T_S7_S6_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.at, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.ad, %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ag, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.h, %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.af, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = load <2 x ptr>, ptr %i.af, align 8, !tbaa !7
  store <2 x ptr> %i.ak, ptr %i.ag, align 8, !tbaa !7
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !52
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i51
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = ptrtoint ptr %i.ah to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ap) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i51
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = add nsw i64 %.010.i.i.i.i.i, -1
  %i.au = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupES5_ET0_T_S7_S6_.exit, !llvm.loop !129

_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupES5_ET0_T_S7_S6_.exit: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.av = icmp sgt i64 %i.d, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i52 ], [ %i.d, %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i52 ], [ %1, %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupES5_ET0_T_S7_S6_.exit ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i52 ], [ %2, %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupES5_ET0_T_S7_S6_.exit ] ; 3 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i) ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.az = load i64, ptr %i.ay, align 8
  store i64 %i.az, ptr %i.ax, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.bc = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bd = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, !llvm.loop !130

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.be = getelementptr inbounds i8, ptr %2, i64 %i.m
  %i.bf = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_(ptr %i.be, ptr %3, ptr noundef %i.h) ; 0 uses
  %i.bg = sub nuw nsw i64 %i.d, %i.n
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %i.bg ; 3 uses
  store ptr %i.bi, ptr %i.g, align 8, !tbaa !47
  %.not11.i.i.i.i.i53 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i53, label %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59, label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i.i54
  %.013.i.i.i.i.i55 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i54 ], [ %i.bi, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 4 uses
  %.sroa.08.012.i.i.i.i.i56 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i54 ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 5 uses
  %i.bj = load <2 x ptr>, ptr %.sroa.08.012.i.i.i.i.i56, align 8, !tbaa !7
  store <2 x ptr> %i.bj, ptr %.013.i.i.i.i.i55, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.012.i.i.i.i.i56, i8 0, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  store i64 %i.bp, ptr %i.bn, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55, i64 32
  %.not.i.i.i.i.i57 = icmp eq ptr %i.bq, %i.h
  br i1 %.not.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59.loopexit, label %.lr.ph.i.i.i.i.i54, !llvm.loop !128

_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59.loopexit: ; preds = %.lr.ph.i.i.i.i.i54
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !47
  br label %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59

_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59: ; preds = %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bs = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59.loopexit ], [ %i.bi, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !47
  %i.bu = ashr exact i64 %i.m, 5                  ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i61, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i61:                               ; preds = %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59, %.lr.ph.i.i.i.i.i61
  %.012.i.i.i.i.i62 = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i61 ], [ %i.bu, %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59 ] ; 2 uses
  %.0811.i.i.i.i.i63 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i61 ], [ %1, %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59 ] ; 3 uses
  %.0910.i.i.i.i.i64 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i61 ], [ %2, %_ZSt22__uninitialized_move_aIPN6google8protobuf8compiler3cpp10FieldGroupES5_SaIS4_EET0_T_S8_S7_RT1_.exit59 ] ; 3 uses
  %i.bw = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i63, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i64) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64, i64 24
  %i.bz = load i64, ptr %i.by, align 8
  store i64 %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63, i64 32
  %i.cc = add nsw i64 %.012.i.i.i.i.i62, -1
end_hunk_1
