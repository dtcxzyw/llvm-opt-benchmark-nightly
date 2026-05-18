inline.NumInlined: 6572
inline.NumDeleted: 2480
begin_hunk_0_@_ZNK6Assimp13ColladaParser23ResolveLibraryReferenceINS_7Collada4DataEEERKT_RKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_St4lessISD_ESaISt4pairIKSD_S4_EEERSH_:bb.a
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread, label %bb.f

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada4DataEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA38_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(38) @.str.309, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str.310)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.x) #28
  resume { ptr, i32 } %i.y

bb.f:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada4DataESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  ret ptr %i.z
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaParser10CopyVertexEmmmmRNS_7Collada4MeshERSt6vectorINS1_12InputChannelESaIS5_EEmRKS4_ImSaImEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(772) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(704) %5, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul i64 %7, %3
  %reass.add = add i64 %i.a, %1
  %reass.mul = mul i64 %reass.add, %2             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not3436 = icmp eq ptr %i.c, %i.e
  br i1 %.not3436, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = load ptr, ptr %6, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not3538 = icmp eq ptr %i.f, %i.h
  br i1 %.not3538, label %._crit_edge42, label %.lr.ph41

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.031.037 = phi ptr [ %i.m, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.i = load ptr, ptr %8, align 8
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %reass.mul
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %4
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_ZN6Assimp13ColladaParser28ExtractDataObjectFromChannelERKNS_7Collada12InputChannelEmRNS1_4MeshE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.031.037, i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(704) %5)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.031.037, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8
  %.not34 = icmp eq ptr %i.m, %i.n
  br i1 %.not34, label %._crit_edge, label %.lr.ph, !llvm.loop !137

._crit_edge42:                                    ; preds = %.lr.ph41, %._crit_edge
  %i.o = add i64 %reass.mul, %4                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %8, align 8                ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %.not = icmp ult i64 %i.o, %i.v
  br i1 %.not, label %bb.e, label %bb.b

.lr.ph41:                                         ; preds = %._crit_edge, %.lr.ph41
  %.sroa.026.039 = phi ptr [ %i.ac, %.lr.ph41 ], [ %i.f, %._crit_edge ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.026.039, i64 16
  %i.x = load i64, ptr %i.w, align 8
  %i.y = load ptr, ptr %8, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %reass.mul
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.x
  %i.ab = load i64, ptr %i.aa, align 8
  tail call void @_ZN6Assimp13ColladaParser28ExtractDataObjectFromChannelERKNS_7Collada12InputChannelEmRNS1_4MeshE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.026.039, i64 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(704) %5)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.026.039, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.g, align 8
  %.not35 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not35, label %._crit_edge42, label %.lr.ph41, !llvm.loop !138

bb.b:                                             ; preds = %._crit_edge42
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.185)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ae) #28
  resume { ptr, i32 } %i.af

bb.e:                                             ; preds = %._crit_edge42
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 656 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 664 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 672 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %i.ah, align 8
  store i64 %i.am, ptr %i.aj, align 8
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.ai, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.aq = ptrtoint ptr %i.aj to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 6 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #29
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #31 ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  %i.bc = load i64, ptr %i.ah, align 8
  store i64 %i.bc, ptr %i.bb, align 8
  %i.bd = icmp sgt i64 %i.as, 0
  br i1 %i.bd, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.as) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ba, ptr %i.ag, align 8
  store ptr %i.be, ptr %i.ai, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bf, ptr %i.ak, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaParser17ReadPrimTriStripsEmmRNS_7Collada4MeshERSt6vectorINS1_12InputChannelESaIS5_EEmRKS4_ImSaImEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(772) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(704) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i64 noundef %5, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %. = and i64 %5, 1
  %not..not = and i64 %5, 1
  %.38 = xor i64 %not..not, 1
  tail call void @_ZN6Assimp13ColladaParser10CopyVertexEmmmmRNS_7Collada4MeshERSt6vectorINS1_12InputChannelESaIS5_EEmRKS4_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(772) %0, i64 noundef %., i64 noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(704) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  tail call void @_ZN6Assimp13ColladaParser10CopyVertexEmmmmRNS_7Collada4MeshERSt6vectorINS1_12InputChannelESaIS5_EEmRKS4_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(772) %0, i64 noundef %.38, i64 noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(704) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  tail call void @_ZN6Assimp13ColladaParser10CopyVertexEmmmmRNS_7Collada4MeshERSt6vectorINS1_12InputChannelESaIS5_EEmRKS4_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(772) %0, i64 noundef 2, i64 noundef %1, i64 noundef 1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(704) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp13ColladaParser28ExtractDataObjectFromChannelERKNS_7Collada12InputChannelEmRNS1_4MeshE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(704) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  %4 = alloca %class.aiVector3t, align 8          ; 5 uses
  %5 = alloca %class.aiVector3t, align 8          ; 5 uses
  %6 = alloca %class.aiVector3t, align 8          ; 5 uses
  %7 = alloca %class.aiVector3t, align 8          ; 5 uses
  %8 = alloca %class.aiColor4t, align 16          ; 4 uses
  %.sroa.0 = alloca float, align 4                ; 8 uses
  %.sroa.6 = alloca float, align 4                ; 7 uses
  %.sroa.8 = alloca float, align 4                ; 7 uses
  %.sroa.10 = alloca float, align 4               ; 7 uses
  store i64 %2, ptr %i.a, align 8
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.bn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 12 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not = icmp ult i64 %2, %i.g
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA21_KcRmRA2_S1_RKmRA29_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(21) @.str.186, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.187, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(29) @.str.188)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.h) #28
  resume { ptr, i32 } %i.i

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = mul i64 %i.r, %2
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.s ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load float, ptr %i.w, align 4            ; 11 uses
  store float %i.x, ptr %i.b, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4          ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4          ; 11 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.al, ptr %i.am, align 4
  switch i32 %i.c, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit [
    i32 2, label %bb.g
    i32 3, label %bb.n
    i32 6, label %bb.w
    i32 7, label %bb.af
    i32 4, label %bb.ao
    i32 5, label %bb.az
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %.not.i = icmp eq ptr %i.as, %i.au
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store float %i.x, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.ab, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.ag, ptr %i.aw, align 4
  %i.ax = load ptr, ptr %i.ar, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store ptr %i.ay, ptr %i.ar, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.aq, align 8            ; 5 uses
  %i.ba = ptrtoint ptr %i.as to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.k, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #29
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.be = sdiv exact i64 %i.bc, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 768614336404564650)
  %i.bi = select i1 %i.bg, i64 768614336404564650, i64 %i.bh ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = mul nuw nsw i64 %i.bi, 12
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #31 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc ; 3 uses
  store float %i.x, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store float %i.ab, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store float %i.ag, ptr %i.bn, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.az, %i.as
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %i.bk, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %i.az, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !alias.scope !139
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, %i.as
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !143

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bp, %.lr.ph.i.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i35.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.bk, ptr %i.aq, align 8
  store ptr %i.bq, ptr %i.ar, align 8
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.br, ptr %i.at, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.m:                                             ; preds = %bb.g
  %i.bs = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bs, ptr noundef nonnull @.str.189)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.n:                                             ; preds = %bb.f
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 5 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = sdiv exact i64 %i.bz, 12                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.cb, align 8
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = sdiv exact i64 %i.ch, 12                ; 2 uses
  %i.cj = add nsw i64 %i.ci, -1
  %i.ck = icmp ult i64 %i.ca, %i.cj
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = xor i64 %i.ca, -1
  %i.cm = add nsw i64 %i.ci, %i.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %9, align 8
  %i.cn = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr %i.cn, i64 noundef %i.cm, ptr noundef nonnull align 4 dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %i.bu, align 8            ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %.not.i86 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not.i86, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store float %i.x, ptr %i.cr, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store float %i.ab, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store float %i.ag, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %i.bu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store ptr %i.cx, ptr %i.bu, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.cy = load ptr, ptr %i.bt, align 8            ; 5 uses
  %i.cz = ptrtoint ptr %i.cr to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 4 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.t, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i87

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #29
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i87: ; preds = %bb.s
  %i.dd = sdiv exact i64 %i.db, 12                ; 3 uses
  %.sroa.speculated.i.i.i88 = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i88, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 768614336404564650)
  %i.dh = select i1 %i.df, i64 768614336404564650, i64 %i.dg ; 3 uses
  %.not.i.i.i89 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i89)
  %i.di = mul nuw nsw i64 %i.dh, 12
  %i.dj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #31 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.db ; 3 uses
  store float %i.x, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store float %i.ab, ptr %i.dl, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store float %i.ag, ptr %i.dm, align 4
  %.not10.i.i.i.i.i90 = icmp eq ptr %i.cy, %i.cr
  br i1 %.not10.i.i.i.i.i90, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i95, label %.lr.ph.i.i.i.i.i91

.lr.ph.i.i.i.i.i91:                               ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i87, %.lr.ph.i.i.i.i.i91
  %.012.i.i.i.i.i92 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i91 ], [ %i.dj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i87 ] ; 2 uses
  %.0911.i.i.i.i.i93 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i91 ], [ %i.cy, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i87 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i92, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i93, i64 12, i1 false), !alias.scope !144
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i93, i64 12 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i92, i64 12 ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq ptr %i.dn, %i.cr
  br i1 %.not.i.i.i.i.i94, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i95, label %.lr.ph.i.i.i.i.i91, !llvm.loop !143

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i95: ; preds = %.lr.ph.i.i.i.i.i91, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i87
  %.0.lcssa.i.i.i.i.i96 = phi ptr [ %i.dj, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i87 ], [ %i.do, %.lr.ph.i.i.i.i.i91 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i96, i64 12
  %.not.i35.i.i97 = icmp eq ptr %i.cy, null
  br i1 %.not.i35.i.i97, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i98, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i95
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.db) #30
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i98

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i98: ; preds = %bb.u, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i95
  store ptr %i.dj, ptr %i.bt, align 8
  store ptr %i.dp, ptr %i.bu, align 8
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %i.dj, i64 %i.dh
  store ptr %i.dq, ptr %i.cs, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.v:                                             ; preds = %bb.p
  %i.dr = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.dr, ptr noundef nonnull @.str.190)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.w:                                             ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = sdiv exact i64 %i.dy, 12                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = load ptr, ptr %i.ea, align 8
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = sdiv exact i64 %i.eg, 12                ; 2 uses
  %i.ei = add nsw i64 %i.eh, -1
  %i.ej = icmp ult i64 %i.dz, %i.ei
  br i1 %i.ej, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ek = xor i64 %i.dz, -1
  %i.el = add nsw i64 %i.eh, %i.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %5, align 8
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float 0.000000e+00, ptr %10, align 8
  %i.em = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr %i.em, i64 noundef %i.el, ptr noundef nonnull align 4 dereferenceable(12) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.eq = load ptr, ptr %i.dt, align 8            ; 7 uses
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8
  %.not.i100 = icmp eq ptr %i.eq, %i.es
  br i1 %.not.i100, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store float %i.x, ptr %i.eq, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store float %i.ab, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store float %i.ag, ptr %i.eu, align 4
  %i.ev = load ptr, ptr %i.dt, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store ptr %i.ew, ptr %i.dt, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.ex = load ptr, ptr %i.ds, align 8            ; 5 uses
  %i.ey = ptrtoint ptr %i.eq to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 4 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.ac, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i101

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #29
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i101: ; preds = %bb.ab
  %i.fc = sdiv exact i64 %i.fa, 12                ; 3 uses
  %.sroa.speculated.i.i.i102 = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i102, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 768614336404564650)
  %i.fg = select i1 %i.fe, i64 768614336404564650, i64 %i.ff ; 3 uses
  %.not.i.i.i103 = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i103)
  %i.fh = mul nuw nsw i64 %i.fg, 12
  %i.fi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #31 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa ; 3 uses
  store float %i.x, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store float %i.ab, ptr %i.fk, align 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store float %i.ag, ptr %i.fl, align 4
  %.not10.i.i.i.i.i104 = icmp eq ptr %i.ex, %i.eq
  br i1 %.not10.i.i.i.i.i104, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i109, label %.lr.ph.i.i.i.i.i105

.lr.ph.i.i.i.i.i105:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i101, %.lr.ph.i.i.i.i.i105
  %.012.i.i.i.i.i106 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i105 ], [ %i.fi, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i101 ] ; 2 uses
  %.0911.i.i.i.i.i107 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i105 ], [ %i.ex, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i101 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i106, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i107, i64 12, i1 false), !alias.scope !148
  %i.fm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i107, i64 12 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i106, i64 12 ; 2 uses
  %.not.i.i.i.i.i108 = icmp eq ptr %i.fm, %i.eq
  br i1 %.not.i.i.i.i.i108, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i109, label %.lr.ph.i.i.i.i.i105, !llvm.loop !143

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i109: ; preds = %.lr.ph.i.i.i.i.i105, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i101
  %.0.lcssa.i.i.i.i.i110 = phi ptr [ %i.fi, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i101 ], [ %i.fn, %.lr.ph.i.i.i.i.i105 ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i110, i64 12
  %.not.i35.i.i111 = icmp eq ptr %i.ex, null
  br i1 %.not.i35.i.i111, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i112, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i109
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef %i.fa) #30
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i112

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i112: ; preds = %bb.ad, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i109
  store ptr %i.fi, ptr %i.ds, align 8
  store ptr %i.fo, ptr %i.dt, align 8
  %i.fp = getelementptr inbounds nuw [12 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.fp, ptr %i.er, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.ae:                                            ; preds = %bb.y
  %i.fq = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fq, ptr noundef nonnull @.str.191)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.af:                                            ; preds = %bb.f
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 5 uses
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 2 uses
  %i.fy = sdiv exact i64 %i.fx, 12                ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = load ptr, ptr %i.fz, align 8
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 12                ; 2 uses
  %i.gh = add nsw i64 %i.gg, -1
  %i.gi = icmp ult i64 %i.fy, %i.gh
  br i1 %i.gi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gj = xor i64 %i.fy, -1
  %i.gk = add nsw i64 %i.gg, %i.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store <2 x float> zeroinitializer, ptr %6, align 8
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float 1.000000e+00, ptr %11, align 8
  %i.gl = getelementptr inbounds i8, ptr %i.fu, i64 %i.fx
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr %i.gl, i64 noundef %i.gk, ptr noundef nonnull align 4 dereferenceable(12) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.gp = load ptr, ptr %i.fs, align 8            ; 7 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8
  %.not.i114 = icmp eq ptr %i.gp, %i.gr
  br i1 %.not.i114, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store float %i.x, ptr %i.gp, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store float %i.ab, ptr %i.gs, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store float %i.ag, ptr %i.gt, align 4
  %i.gu = load ptr, ptr %i.fs, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store ptr %i.gv, ptr %i.fs, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.gw = load ptr, ptr %i.fr, align 8            ; 5 uses
  %i.gx = ptrtoint ptr %i.gp to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775800
  br i1 %i.ha, label %bb.al, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i115

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #29
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i115: ; preds = %bb.ak
  %i.hb = sdiv exact i64 %i.gz, 12                ; 3 uses
  %.sroa.speculated.i.i.i116 = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i116, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 768614336404564650)
  %i.hf = select i1 %i.hd, i64 768614336404564650, i64 %i.he ; 3 uses
  %.not.i.i.i117 = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i117)
  %i.hg = mul nuw nsw i64 %i.hf, 12
  %i.hh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #31 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gz ; 3 uses
  store float %i.x, ptr %i.hi, align 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store float %i.ab, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store float %i.ag, ptr %i.hk, align 4
  %.not10.i.i.i.i.i118 = icmp eq ptr %i.gw, %i.gp
  br i1 %.not10.i.i.i.i.i118, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i123, label %.lr.ph.i.i.i.i.i119

.lr.ph.i.i.i.i.i119:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i115, %.lr.ph.i.i.i.i.i119
  %.012.i.i.i.i.i120 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i119 ], [ %i.hh, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i115 ] ; 2 uses
  %.0911.i.i.i.i.i121 = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i119 ], [ %i.gw, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i115 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i120, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i121, i64 12, i1 false), !alias.scope !152
  %i.hl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i121, i64 12 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i120, i64 12 ; 2 uses
  %.not.i.i.i.i.i122 = icmp eq ptr %i.hl, %i.gp
  br i1 %.not.i.i.i.i.i122, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i123, label %.lr.ph.i.i.i.i.i119, !llvm.loop !143

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i123: ; preds = %.lr.ph.i.i.i.i.i119, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i115
  %.0.lcssa.i.i.i.i.i124 = phi ptr [ %i.hh, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i115 ], [ %i.hm, %.lr.ph.i.i.i.i.i119 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i124, i64 12
  %.not.i35.i.i125 = icmp eq ptr %i.gw, null
  br i1 %.not.i35.i.i125, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i126, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.gz) #30
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i126

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i126: ; preds = %bb.am, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i123
  store ptr %i.hh, ptr %i.fr, align 8
  store ptr %i.hn, ptr %i.fs, align 8
  %i.ho = getelementptr inbounds nuw [12 x i8], ptr %i.hh, i64 %i.hf
  store ptr %i.ho, ptr %i.gq, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.an:                                            ; preds = %bb.ah
  %i.hp = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.hp, ptr noundef nonnull @.str.192)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.ao:                                            ; preds = %bb.f
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.hr = load i64, ptr %i.hq, align 8            ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 8
  br i1 %i.hs, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %bb.ao
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %i.hr ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.hx = load ptr, ptr %i.hu, align 8            ; 2 uses
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz                    ; 2 uses
  %i.ib = sdiv exact i64 %i.ia, 12                ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = load ptr, ptr %i.ic, align 8
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = sdiv exact i64 %i.ii, 12                ; 2 uses
  %i.ik = add nsw i64 %i.ij, -1
  %i.il = icmp ult i64 %i.ib, %i.ik
  br i1 %i.il, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.im = xor i64 %i.ib, -1
  %i.in = add nsw i64 %i.ij, %i.im
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store <2 x float> zeroinitializer, ptr %7, align 8
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float 0.000000e+00, ptr %12, align 8
  %i.io = getelementptr inbounds i8, ptr %i.hx, i64 %i.ia
  call void @_ZNSt6vectorI10aiVector3tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr %i.io, i64 noundef %i.in, ptr noundef nonnull align 4 dereferenceable(12) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.pre181 = load i64, ptr %i.hq, align 8         ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %.pre181
  %.phi.trans.insert182 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre183 = load ptr, ptr %.phi.trans.insert182, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ip = phi ptr [ %.pre183, %bb.aq ], [ %i.hw, %bb.ap ] ; 7 uses
  %i.iq = phi i64 [ %.pre181, %bb.aq ], [ %i.hr, %bb.ap ]
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.ht, i64 %i.iq ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8
  %.not.i128 = icmp eq ptr %i.ip, %i.iu
  br i1 %.not.i128, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store float %i.x, ptr %i.ip, align 4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  store float %i.ab, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store float %i.ag, ptr %i.iw, align 4
  %i.ix = load ptr, ptr %i.is, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store ptr %i.iy, ptr %i.is, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit141

bb.at:                                            ; preds = %bb.ar
  %i.iz = load ptr, ptr %i.ir, align 8            ; 5 uses
  %i.ja = ptrtoint ptr %i.ip to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb                    ; 4 uses
  %i.jd = icmp eq i64 %i.jc, 9223372036854775800
  br i1 %i.jd, label %bb.au, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i129

bb.au:                                            ; preds = %bb.at
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #29
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i129: ; preds = %bb.at
  %i.je = sdiv exact i64 %i.jc, 12                ; 3 uses
  %.sroa.speculated.i.i.i130 = call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = add nsw i64 %.sroa.speculated.i.i.i130, %i.je ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.je
  %i.jh = call i64 @llvm.umin.i64(i64 %i.jf, i64 768614336404564650)
  %i.ji = select i1 %i.jg, i64 768614336404564650, i64 %i.jh ; 3 uses
  %.not.i.i.i131 = icmp ne i64 %i.ji, 0
  call void @llvm.assume(i1 %.not.i.i.i131)
  %i.jj = mul nuw nsw i64 %i.ji, 12
  %i.jk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #31 ; 5 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jc ; 3 uses
  store float %i.x, ptr %i.jl, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store float %i.ab, ptr %i.jm, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store float %i.ag, ptr %i.jn, align 4
  %.not10.i.i.i.i.i132 = icmp eq ptr %i.iz, %i.ip
  br i1 %.not10.i.i.i.i.i132, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i137, label %.lr.ph.i.i.i.i.i133

.lr.ph.i.i.i.i.i133:                              ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i129, %.lr.ph.i.i.i.i.i133
  %.012.i.i.i.i.i134 = phi ptr [ %i.jp, %.lr.ph.i.i.i.i.i133 ], [ %i.jk, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i129 ] ; 2 uses
  %.0911.i.i.i.i.i135 = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i133 ], [ %i.iz, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i129 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i134, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i135, i64 12, i1 false), !alias.scope !156
  %i.jo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i135, i64 12 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i134, i64 12 ; 2 uses
  %.not.i.i.i.i.i136 = icmp eq ptr %i.jo, %i.ip
  br i1 %.not.i.i.i.i.i136, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i137, label %.lr.ph.i.i.i.i.i133, !llvm.loop !143

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i137: ; preds = %.lr.ph.i.i.i.i.i133, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i129
  %.0.lcssa.i.i.i.i.i138 = phi ptr [ %i.jk, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i129 ], [ %i.jp, %.lr.ph.i.i.i.i.i133 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i138, i64 12
  %.not.i35.i.i139 = icmp eq ptr %i.iz, null
  br i1 %.not.i35.i.i139, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i140, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i137
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.jc) #30
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i140

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i140: ; preds = %bb.av, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i137
  store ptr %i.jk, ptr %i.ir, align 8
  store ptr %i.jq, ptr %i.is, align 8
  %i.jr = getelementptr inbounds nuw [12 x i8], ptr %i.jk, i64 %i.ji
  store ptr %i.jr, ptr %i.it, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit141

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit141: ; preds = %bb.as, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i140
  %i.js = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.jt = load i64, ptr %i.js, align 8
  %.not84 = icmp eq i64 %i.jt, 0
  br i1 %.not84, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit141
  %i.ju = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.jv = load i64, ptr %i.ju, align 8
  %.not85 = icmp eq i64 %i.jv, 0
  br i1 %.not85, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit141
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 600
  %i.jx = load i64, ptr %i.hq, align 8
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.jx
  store i32 3, ptr %i.jy, align 4
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.ay:                                            ; preds = %bb.ao
  %i.jz = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.jz, ptr noundef nonnull @.str.193)
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.az:                                            ; preds = %bb.f
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8            ; 2 uses
  %i.kc = icmp ult i64 %i.kb, 8
  br i1 %i.kc, label %bb.ba, label %bb.bm

bb.ba:                                            ; preds = %bb.az
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 408 ; 2 uses
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %i.kd, i64 %i.kb ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = load ptr, ptr %i.ke, align 8            ; 2 uses
  %i.ki = ptrtoint ptr %i.kg to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 2 uses
  %i.kl = ashr exact i64 %i.kk, 4                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = load ptr, ptr %i.km, align 8
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = sdiv exact i64 %i.ks, 12                ; 2 uses
  %i.ku = add nsw i64 %i.kt, -1
  %i.kv = icmp ult i64 %i.kl, %i.ku
  br i1 %i.kv, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.kw = xor i64 %i.kl, -1
  %i.kx = add nsw i64 %i.kt, %i.kw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %8, align 16
  %i.ky = getelementptr inbounds i8, ptr %i.kh, i64 %i.kk
  call void @_ZNSt6vectorI9aiColor4tIfESaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, ptr %i.ky, i64 noundef %i.kx, ptr noundef nonnull align 4 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.kz = phi ptr [ %.pre, %bb.bb ], [ %i.f, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  store float 0.000000e+00, ptr %.sroa.0, align 4
  store float 0.000000e+00, ptr %.sroa.6, align 4
  store float 0.000000e+00, ptr %.sroa.8, align 4
  store float 1.000000e+00, ptr %.sroa.10, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load i64, ptr %i.la, align 8            ; 5 uses
  %.not175 = icmp eq i64 %i.lb, 0
  br i1 %.not175, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 56 ; 3 uses
  %xtraiter = and i64 %i.lb, 1
  %i.ld = icmp eq i64 %i.lb, 1
  br i1 %i.ld, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.lb, -2
  br label %_ZN9aiColor4tIfEixEj.exit

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZN9aiColor4tIfEixEj.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.0174.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.mt, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod237 = trunc i64 %i.lb to i1
  call void @llvm.assume(i1 %lcmp.mod237)
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %.0174.epil.init
  %i.lf = load i64, ptr %i.le, align 8
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4
  %i.li = trunc i64 %.0174.epil.init to i32
  switch i32 %i.li, label %_ZN9aiColor4tIfEixEj.exit.epil [
    i32 3, label %bb.bf
    i32 1, label %bb.be
    i32 2, label %bb.bd
  ]

bb.bd:                                            ; preds = %.epil.preheader
  br label %_ZN9aiColor4tIfEixEj.exit.epil

bb.be:                                            ; preds = %.epil.preheader
  br label %_ZN9aiColor4tIfEixEj.exit.epil
end_hunk_0
