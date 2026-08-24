Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/serializing_stream?download=true
inline.NumInlined: 1477
inline.NumDeleted: 395
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE17_M_realloc_insertIJPNS0_11FmuInternalEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.z = load i8, ptr %i.y, align 8, !tbaa !96, !range !58, !alias.scope !300, !noalias !297, !noundef !59
  store i8 %i.z, ptr %i.x, align 8, !tbaa !74, !alias.scope !297, !noalias !300
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !300, !noalias !297
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !245

_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_11FmuInternalEEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_11FmuInternalEEEEvRS2_PT_DpOT0_.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ai, %.lr.ph.i.i.i28 ], [ %i.ac, %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ad = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !146, !alias.scope !305, !noalias !302
  store ptr %i.ad, ptr %.012.i.i.i29, align 8, !tbaa !72, !alias.scope !302, !noalias !305
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !96, !range !58, !alias.scope !305, !noalias !302, !noundef !59
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !74, !alias.scope !302, !noalias !305
  store ptr null, ptr %.0911.i.i.i30, align 8, !tbaa !72, !alias.scope !305, !noalias !302
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !245

_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ac, %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ai, %.lr.ph.i.i.i28 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #24
  br label %_ZNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !83
  ret void
}

declare void @_ZN6casadi3Fmu11deserializeERNS_19DeserializingStreamE(ptr dead_on_unwind writable sret(%"class.casadi::Fmu") align 8, ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #5

declare void @_ZN6casadi3Fmu6createEPNS_11FmuInternalE(ptr dead_on_unwind writable sret(%"class.casadi::Fmu") align 8, ptr noundef) local_unnamed_addr #5

declare void @_ZNK6casadi6Linsol9serializeERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #5

declare void @_ZN6casadi6Linsol11deserializeERNS_19DeserializingStreamE(ptr dead_on_unwind writable sret(%"class.casadi::Linsol") align 8, ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #5

declare void @_ZN6casadi6Linsol6createEPNS_14LinsolInternalE(ptr dead_on_unwind writable sret(%"class.casadi::Linsol") align 8, ptr noundef) local_unnamed_addr #5

declare void @_ZNK6casadi11GenericType9serializeERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #5

declare void @_ZN6casadi11GenericType11deserializeERNS_19DeserializingStreamE(ptr dead_on_unwind writable sret(%"class.casadi::GenericType") align 8, ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #5

declare void @_ZN6casadi11GenericType6createEPNS_20SharedObjectInternalE(ptr dead_on_unwind writable sret(%"class.casadi::GenericType") align 8, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK6casadi6SXElem3getEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZNK6casadi6SXElem9serializeERNS_17SerializingStreamE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(73)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE17_M_realloc_insertIJPNS0_6SXNodeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !70     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #23
  unreachable

_ZNKSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !193    ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 1, ptr %i.s, align 8, !tbaa !74
  %.not.i26 = icmp eq ptr %i.r, null
  br i1 %.not.i26, label %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_6SXNodeEEEEvRS2_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !75
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !75
  br label %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_6SXNodeEEEEvRS2_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_6SXNodeEEEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_6SXNodeEEEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_6SXNodeEEEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_6SXNodeEEEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.w = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !146, !alias.scope !310, !noalias !307
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !72, !alias.scope !307, !noalias !310
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !96, !range !58, !alias.scope !310, !noalias !307, !noundef !59
  store i8 %i.z, ptr %i.x, align 8, !tbaa !74, !alias.scope !307, !noalias !310
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !72, !alias.scope !310, !noalias !307
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !245

_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_6SXNodeEEEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6casadi18UniversalNodeOwnerEEE9constructIS1_JPNS0_6SXNodeEEEEvRS2_PT_DpOT0_.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ai, %.lr.ph.i.i.i28 ], [ %i.ac, %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.ah, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.ad = load ptr, ptr %.0911.i.i.i30, align 8, !tbaa !146, !alias.scope !315, !noalias !312
  store ptr %i.ad, ptr %.012.i.i.i29, align 8, !tbaa !72, !alias.scope !312, !noalias !315
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !96, !range !58, !alias.scope !315, !noalias !312, !noundef !59
  store i8 %i.ag, ptr %i.ae, align 8, !tbaa !74, !alias.scope !312, !noalias !315
  store ptr null, ptr %.0911.i.i.i30, align 8, !tbaa !72, !alias.scope !315, !noalias !312
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !245

_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ac, %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ai, %.lr.ph.i.i.i28 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #24
  br label %_ZNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6casadi18UniversalNodeOwnerESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6casadi18UniversalNodeOwnerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !70
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !71
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !83
  ret void
}

declare void @_ZN6casadi6SXElem11deserializeERNS_19DeserializingStreamE(ptr dead_on_unwind writable sret(%"class.casadi::SXElem") align 8, ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi6SXElemaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6casadi6SXElemD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

declare void @_ZN6casadi6SXElem6createEPNS_6SXNodeE(ptr dead_on_unwind writable sret(%"class.casadi::SXElem") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = sext i1 %4 to i8                        ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317
  %i.d = load ptr, ptr %0, align 8, !tbaa !198    ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !201  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.l to i64                     ; 3 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %i.r = sub i64 %i.h, %i.q
  %.not = icmp ult i64 %i.r, %3
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.m, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %2 to i64                       ; 4 uses
  %i.w = sub nsw i64 %i.p, %i.v
  %i.x = add i64 %i.w, %i.u                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.c
  %i.z = add nsw i64 %3, %i.p                     ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 63
  %i.ac = sdiv i64 %i.z, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ac
  %i.ae = and i64 %i.z, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.x, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %storemerge.i.i.i, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.ab, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.j, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.l, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.ah = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.ah, i32 63, i32 %i.ag ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.ah, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.ai = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.al = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0  ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.al, i32 63, i32 %i.ak ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.al, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.am = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  %i.ao = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !43
  %i.ap = and i64 %i.aj, %i.ao
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.aq = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !43
  %i.ar = or i64 %i.aq, %i.an
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.as = xor i64 %i.an, -1
  %i.at = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !43
  %i.au = and i64 %i.at, %i.as
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.e, %bb.d
  %storemerge.i.i.i.i.i = phi i64 [ %i.ar, %bb.d ], [ %i.au, %bb.e ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !43
  %i.av = add nsw i64 %.024.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.aw, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !320

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.c
  %i.ax = add nsw i64 %3, %i.v                    ; 3 uses
  %i.ay = sdiv i64 %i.ax, 64
  %.idx = shl nsw i64 %i.ay, 3
  %i.az = and i64 %i.ax, -9223372036854775745
  %i.ba = icmp ugt i64 %i.az, -9223372036854775808
  %storemerge.idx.i.i.i75 = select i1 %i.ba, i64 -8, i64 0
  %i.bb = add nsw i64 %storemerge.idx.i.i.i75, %.idx ; 2 uses
  %storemerge.i.i.i76 = getelementptr inbounds i8, ptr %1, i64 %i.bb ; 4 uses
  %i.bc = trunc i64 %i.ax to i32
  %i.bd = and i32 %i.bc, 63                       ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not26.i.i.i = icmp eq i32 %2, 0
  br i1 %.not26.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bf = shl nsw i64 -1, %i.v                    ; 2 uses
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load i64, ptr %1, align 8, !tbaa !43
  %i.bh = or i64 %i.bg, %i.bf
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bf, -1
  %i.bj = load i64, ptr %1, align 8, !tbaa !43
  %i.bk = and i64 %i.bj, %i.bi
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

_ZSt14__fill_bvectorPmjjb.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %storemerge.i.i.i.i = phi i64 [ %i.bk, %bb.i ], [ %i.bh, %bb.h ]
  store i64 %storemerge.i.i.i.i, ptr %1, align 8, !tbaa !43
  %.pre = ptrtoint ptr %i.be to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i, %bb.f
  %.pre-phi = phi i64 [ %.pre, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %i.s, %bb.f ]
  %.0.i.i.i = phi ptr [ %i.be, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %1, %bb.f ]
  %i.bl = ptrtoint ptr %storemerge.i.i.i76 to i64
  %i.bm = sub i64 %i.bl, %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i, i8 %.neg, i64 %i.bm, i1 false)
  %.not27.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = sub nuw nsw i32 64, %i.bd
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 -1, %i.bo                      ; 2 uses
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !43
  %i.br = or i64 %i.bq, %i.bp
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bs = xor i64 %i.bp, -1
  %i.bt = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !43
  %i.bu = and i64 %i.bt, %i.bs
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i:           ; preds = %bb.m, %bb.l
  %storemerge.i28.i.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.br, %bb.l ]
  store i64 %storemerge.i28.i.i.i, ptr %storemerge.i.i.i76, align 8, !tbaa !43
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.n:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not25.i.i.i = icmp eq i32 %2, %i.bd
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = shl nsw i64 -1, %i.v
  %i.bw = sub nuw nsw i32 64, %i.bd
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = lshr i64 -1, %i.bx
  %i.bz = and i64 %i.by, %i.bv                    ; 2 uses
  br i1 %4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = load i64, ptr %1, align 8, !tbaa !43
  %i.cb = or i64 %i.ca, %i.bz
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cc = xor i64 %i.bz, -1
  %i.cd = load i64, ptr %1, align 8, !tbaa !43
  %i.ce = and i64 %i.cd, %i.cc
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i:           ; preds = %bb.q, %bb.p
  %storemerge.i30.i.i.i = phi i64 [ %i.ce, %bb.q ], [ %i.cb, %bb.p ]
  store i64 %storemerge.i30.i.i.i, ptr %1, align 8, !tbaa !43
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %bb.j, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i, %bb.n, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i
  %i.cf = load i32, ptr %i.k, align 8, !tbaa !201
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nsw i64 %3, %i.cg                   ; 3 uses
  %i.ci = sdiv i64 %i.ch, 64
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !198
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = and i64 %i.ch, -9223372036854775745
  %i.cm = icmp ugt i64 %i.cl, -9223372036854775808
  %storemerge.idx.i.i = select i1 %i.cm, i64 -8, i64 0
  %storemerge.i.i = getelementptr inbounds i8, ptr %i.ck, i64 %storemerge.idx.i.i
  store ptr %storemerge.i.i, ptr %i.i, align 8, !tbaa !198
  %i.cn = trunc i64 %i.ch to i32
  %i.co = and i32 %i.cn, 63
  br label %.sink.split

bb.r:                                             ; preds = %bb.b
  %i.cp = sub i64 9223372036854775744, %i.q
  %i.cq = icmp ult i64 %i.cp, %3
  br i1 %i.cq, label %bb.s, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #23
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %3)
  %i.cr = add i64 %.sroa.speculated.i, %i.q       ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.q
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 9223372036854775744)
  %i.cu = add nuw nsw i64 %i.ct, 63
  %i.cv = select i1 %i.cs, i64 9223372036854775807, i64 %i.cu ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = and i64 %i.cw, 1152921504606846968
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #27 ; 5 uses
  %i.cz = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.da = sub i64 %i.cz, %i.f                     ; 4 uses
  %i.db = icmp sgt i64 %i.da, 8
  br i1 %i.db, label %bb.t, label %bb.u, !prof !321

bb.t:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr align 8 %i.d, i64 %i.da, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.u:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.dc = icmp eq i64 %i.da, 8
  br i1 %i.dc, label %bb.v, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.dd = load i64, ptr %i.d, align 8, !tbaa !43
  store i64 %i.dd, ptr %i.cy, align 8, !tbaa !43
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.v, %bb.u, %bb.t
  %i.de = getelementptr inbounds i8, ptr %i.cy, i64 %i.da ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.df = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.dv, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.df, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.de, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.dg = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !43
  %i.dj = and i64 %i.di, %i.dh
  %.not.i.i.i.i.i.i81 = icmp eq i64 %i.dj, 0
  %i.dk = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.dl = shl nuw i64 1, %i.dk                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dm = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !43
  %i.dn = or i64 %i.dm, %i.dl
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.do = xor i64 %i.dl, -1
  %i.dp = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !43
  %i.dq = and i64 %i.dp, %i.do
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.x, %bb.w
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.dq, %bb.x ], [ %i.dn, %bb.w ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !43
  %i.dr = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.ds = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.ds, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.ds, i32 0, i32 %i.dr
  %i.dt = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.du = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.du, i32 0, i32 %i.dt ; 2 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.du, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 2 uses
  %i.dv = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.dw = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !322

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.de, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ] ; 9 uses
  %i.dx = zext i32 %.sroa.55.0.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.dy = add nsw i64 %3, %i.dx                   ; 3 uses
  %i.dz = sdiv i64 %i.dy, 64
  %.idx157 = shl nsw i64 %i.dz, 3
  %i.ea = and i64 %i.dy, -9223372036854775745
  %i.eb = icmp ugt i64 %i.ea, -9223372036854775808
  %storemerge.idx.i.i.i85 = select i1 %i.eb, i64 -8, i64 0
  %i.ec = add nsw i64 %storemerge.idx.i.i.i85, %.idx157 ; 2 uses
  %storemerge.i.i.i86 = getelementptr inbounds i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 %i.ec ; 6 uses
  %i.ed = trunc i64 %i.dy to i32
  %i.ee = and i32 %i.ed, 63                       ; 6 uses
  %.not.i.i.i89 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i89, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not26.i.i.i90 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not26.i.i.i90, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 8
  %i.eg = shl nsw i64 -1, %i.dx                   ; 2 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !43
  %i.ei = or i64 %i.eh, %i.eg
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

bb.ab:                                            ; preds = %bb.z
  %i.ej = xor i64 %i.eg, -1
  %i.ek = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !43
  %i.el = and i64 %i.ek, %i.ej
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

_ZSt14__fill_bvectorPmjjb.exit.i.i.i92:           ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i.i93 = phi i64 [ %i.el, %bb.ab ], [ %i.ei, %bb.aa ]
  store i64 %storemerge.i.i.i.i93, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92, %bb.y
  %.0.i.i.i94 = phi ptr [ %i.ef, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92 ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %i.em = ptrtoint ptr %storemerge.i.i.i86 to i64
  %i.en = ptrtoint ptr %.0.i.i.i94 to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i94, i8 %.neg, i64 %i.eo, i1 false)
  %.not27.i.i.i95 = icmp eq i32 %i.ee, 0
  br i1 %.not27.i.i.i95, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = sub nuw nsw i32 64, %i.ee
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 -1, %i.eq                      ; 2 uses
  br i1 %4, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !43
  %i.et = or i64 %i.es, %i.er
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

bb.af:                                            ; preds = %bb.ad
  %i.eu = xor i64 %i.er, -1
  %i.ev = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !43
  %i.ew = and i64 %i.ev, %i.eu
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96:         ; preds = %bb.af, %bb.ae
  %storemerge.i28.i.i.i97 = phi i64 [ %i.ew, %bb.af ], [ %i.et, %bb.ae ]
  store i64 %storemerge.i28.i.i.i97, ptr %storemerge.i.i.i86, align 8, !tbaa !43
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

bb.ag:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not25.i.i.i98 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, %i.ee
  br i1 %.not25.i.i.i98, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ex = shl nsw i64 -1, %i.dx
  %i.ey = sub nuw nsw i32 64, %i.ee
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 -1, %i.ez
  %i.fb = and i64 %i.fa, %i.ex                    ; 2 uses
  br i1 %4, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fc = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !43
  %i.fd = or i64 %i.fc, %i.fb
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

bb.aj:                                            ; preds = %bb.ah
  %i.fe = xor i64 %i.fb, -1
  %i.ff = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !43
  %i.fg = and i64 %i.ff, %i.fe
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99:         ; preds = %bb.aj, %bb.ai
  %storemerge.i30.i.i.i100 = phi i64 [ %i.fg, %bb.aj ], [ %i.fd, %bb.ai ]
  store i64 %storemerge.i30.i.i.i100, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !43
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101: ; preds = %bb.ac, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96, %bb.ag, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i104 = load i32, ptr %i.k, align 8
  %i.fh = ptrtoint ptr %.sroa.0.0.copyload.i102 to i64
  %i.fi = sub i64 %i.fh, %i.cz
  %i.fj = shl nsw i64 %i.fi, 3
  %i.fk = zext i32 %.sroa.2.0.copyload.i104 to i64
  %i.fl = zext i32 %2 to i64
  %i.fm = sub nsw i64 %i.fk, %i.fl
  %i.fn = add i64 %i.fm, %i.fj                    ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %.024.i.i.i.i.i118 = phi i64 [ %i.ge, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.fn, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i119 = phi ptr [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i120 = phi i32 [ %.sroa.59.1.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i125, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %2, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i124, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %i.fp = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = zext nneg i32 %.sroa.59.022.i.i.i.i.i120 to i64
  %i.fs = shl nuw i64 1, %i.fr                    ; 2 uses
  %i.ft = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !43
  %i.fu = and i64 %i.ft, %i.fq
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !43
  %i.fw = or i64 %i.fv, %i.fs
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = xor i64 %i.fs, -1
  %i.fy = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !43
  %i.fz = and i64 %i.fy, %i.fx
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.al, %bb.ak
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.fw, %bb.ak ], [ %i.fz, %bb.al ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !43
  %i.ga = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.gb = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
end_hunk_0
