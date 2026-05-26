inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0_@_ZN6Assimp4Ogre13VertexElement16SemanticToStringB5cxx11ENS1_8SemanticE:bb.a
  br label %bb.b

._crit_edge.i.i32:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str.37, i64 7, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.x, align 1
  br label %bb.b

.noexc.i37:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 30, ptr %i.a, align 8
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %0, align 8
  %i.z = load i64, ptr %i.a, align 8              ; 3 uses
  store i64 %i.z, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.y, ptr noundef nonnull align 1 dereferenceable(30) @.str.38, i64 30, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i37, %._crit_edge.i.i32, %._crit_edge.i.i28, %.noexc.i25, %._crit_edge.i.i20, %._crit_edge.i.i16, %._crit_edge.i.i12, %._crit_edge.i.i8, %._crit_edge.i.i4, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre11IVertexDataC2Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 4), (8, 32), (40, 44), (48, 56)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre11IVertexData18HasBoneAssignmentsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  store i32 %1, ptr %i.a, align 4
  store i32 %2, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ult i32 %i.h, %2                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.i, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i.i, %i.f
  br i1 %i.j, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp ult i32 %2, %i.l
  br i1 %i.m, label %.critedge.i, label %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEEixERS9_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, %bb.a
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i ], [ %i.f, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.b, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.n = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEEixERS9_.exit

_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEEixERS9_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.n, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @_ZNK6Assimp4Ogre11IVertexData24BoneAssignmentsForVertexEjjRSt6vectorINS0_20VertexBoneAssignmentESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not10.i.i.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i1, label %.critedge.i11, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEEixERS9_.exit
  %i.t = load i32, ptr %i.a, align 4              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i2
  %.012.i.i.i.i3 = phi ptr [ %i.r, %.lr.ph.i.i.i.i2 ], [ %.1.i.i.i.i8, %bb.c ] ; 3 uses
  %.0811.i.i.i.i4 = phi ptr [ %i.s, %.lr.ph.i.i.i.i2 ], [ %.19.i.i.i.i5, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i3, i64 32
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp ult i32 %i.v, %i.t                  ; 2 uses
  %.19.i.i.i.i5 = select i1 %i.w, ptr %.0811.i.i.i.i4, ptr %.012.i.i.i.i3 ; 6 uses
  %.1.in.v.i.i.i.i6 = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i3, i64 %.1.in.v.i.i.i.i6
  %.1.i.i.i.i8 = load ptr, ptr %.1.in.i.i.i.i7, align 8 ; 2 uses
  %.not.i.i.i.i9 = icmp eq ptr %.1.i.i.i.i8, null
  br i1 %.not.i.i.i.i9, label %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE11lower_boundERS6_.exit.i, label %bb.c, !llvm.loop !5

_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE11lower_boundERS6_.exit.i: ; preds = %bb.c
  %i.x = icmp eq ptr %.19.i.i.i.i5, %i.s
  br i1 %i.x, label %.critedge.i11, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE11lower_boundERS6_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i5, i64 32
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp ult i32 %i.t, %i.z
  br i1 %i.aa, label %.critedge.i11, label %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEEixERS6_.exit

.critedge.i11:                                    ; preds = %bb.d, %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE11lower_boundERS6_.exit.i, %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEEixERS9_.exit
  %.08.lcssa.i.i.i11.i12 = phi ptr [ %.19.i.i.i.i5, %bb.d ], [ %.19.i.i.i.i5, %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEE11lower_boundERS6_.exit.i ], [ %i.s, %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEEixERS9_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.a, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ab = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIjSaIjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr %.08.lcssa.i.i.i11.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEEixERS6_.exit

_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEEixERS6_.exit: ; preds = %bb.d, %.critedge.i11
  %.sroa.06.0.i10 = phi ptr [ %i.ab, %.critedge.i11 ], [ %.19.i.i.i.i5, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i10, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i10, i64 48 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i10, i64 56 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %.not.i = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEEixERS6_.exit
  %i.ah = load i32, ptr %i.b, align 4
  store i32 %i.ah, ptr %i.ae, align 4
  %i.ai = load ptr, ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.aj, ptr %i.ad, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.f:                                             ; preds = %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEEixERS6_.exit
  %i.ak = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775804
  br i1 %i.ao, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #29
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ap = ashr exact i64 %i.an, 2                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = call i64 @llvm.umin.i64(i64 %i.aq, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #30 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.an ; 2 uses
  %i.av = load i32, ptr %i.b, align 4
  store i32 %i.av, ptr %i.au, align 4
  %i.aw = icmp sgt i64 %i.an, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.at, ptr %i.ac, align 8
  store ptr %i.ax, ptr %i.ad, align 8
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  store ptr %i.ay, ptr %i.af, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp4Ogre11IVertexData24BoneAssignmentsForVertexEjjRSt6vectorINS0_20VertexBoneAssignmentESaIS3_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE9push_backERKS2_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE9push_backERKS2_.exit
  %.sroa.012.016 = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.g = load i32, ptr %.sroa.012.016, align 4
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %bb.c, label %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 4
  %i.i = load i64, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.k = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %2, ptr %i.j, align 4
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx9, align 4
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store ptr %i.m, ptr %i.e, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8                ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #29
  unreachable

_ZNKSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.s = sdiv exact i64 %i.q, 12                  ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.q ; 3 uses
  store i32 %2, ptr %i.x, align 4
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx10, align 4
  %i.y = icmp sgt i64 %i.q, 0
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #31
  br label %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.w, ptr %3, align 8
  store ptr %i.z, ptr %i.e, align 8
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.u
  store ptr %i.aa, ptr %i.f, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre11IVertexData17AssimpBoneWeightsEm(ptr dead_on_unwind noalias writable sret(%"class.std::map.16") align 8 initializes((8, 12), (16, 24)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<unsigned short, std::pair<const unsigned short, std::vector<aiVertexWeight>>, std::_Select1st<std::pair<const unsigned short, std::vector<aiVertexWeight>>>, std::less<unsigned short>>::_Auto_node", align 8 ; 6 uses
  %4 = alloca %"class.std::tuple.162", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.f, align 8
  %.not49 = icmp eq i64 %2, 0
  br i1 %.not49, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %._crit_edge
  %.01345 = phi i64 [ 0, %.lr.ph47 ], [ %i.y, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.k = trunc i64 %.01345 to i32                 ; 5 uses
  store i32 %i.k, ptr %i.a, align 4
  %i.l = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.i, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp ult i32 %i.n, %i.k                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.i
  br i1 %i.p, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp ugt i32 %i.r, %i.k
  br i1 %i.s, label %.critedge.i, label %bb.d

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i, %bb.b
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS3_EESt4lessIjESaISt4pairIKjS5_EEE11lower_boundERS9_.exit.i ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8, !alias.scope !6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.t = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN6Assimp4Ogre20VertexBoneAssignmentESaIS5_EEESt10_Select1stIS8_ESt4lessIjESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.c
  %.sroa.06.0.i = phi ptr [ %i.t, %.noexc ], [ %.19.i.i.i.i, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not43 = icmp eq ptr %i.v, %i.x
  br i1 %.not43, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit, %bb.d
  %i.y = add nuw i64 %.01345, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %2
  br i1 %exitcond.not, label %._crit_edge48, label %bb.b, !llvm.loop !9

bb.e:                                             ; preds = %.critedge.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.body

.lr.ph:                                           ; preds = %bb.d, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit
  %.sroa.037.044 = phi ptr [ %i.cv, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit ], [ %i.v, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.037.044, i64 4 ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %i.ab, null
  br i1 %.not10.i.i.i.i16, label %.critedge.i26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %.lr.ph
  %i.ac = load i16, ptr %i.aa, align 2            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i17 ], [ %.1.i.i.i.i23, %bb.f ] ; 3 uses
  %.0811.i.i.i.i19 = phi ptr [ %i.b, %.lr.ph.i.i.i.i17 ], [ %.19.i.i.i.i20, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = icmp ult i16 %i.ae, %i.ac               ; 2 uses
  %.19.i.i.i.i20 = select i1 %i.af, ptr %.0811.i.i.i.i19, ptr %.012.i.i.i.i18 ; 6 uses
  %.1.in.v.i.i.i.i21 = select i1 %i.af, i64 24, i64 16
  %.1.in.i.i.i.i22 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 %.1.in.v.i.i.i.i21
  %.1.i.i.i.i23 = load ptr, ptr %.1.in.i.i.i.i22, align 8 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %.1.i.i.i.i23, null
  br i1 %.not.i.i.i.i24, label %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, label %bb.f, !llvm.loop !10

_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.f
  %i.ag = icmp eq ptr %.19.i.i.i.i20, %i.b
  br i1 %i.ag, label %.critedge.i26, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i20, i64 32
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = icmp ult i16 %i.ac, %i.ai
  br i1 %i.aj, label %.critedge.i26, label %bb.n

.critedge.i26:                                    ; preds = %bb.g, %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i27 = phi ptr [ %.19.i.i.i.i20, %bb.g ], [ %.19.i.i.i.i20, %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i ], [ %i.b, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8
  %i.ak = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30
          to label %.noexc33 unwind label %bb.s   ; 7 uses

.noexc33:                                         ; preds = %.critedge.i26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 3 uses
  %i.am = load i16, ptr %i.aa, align 2
  store i16 %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  store ptr %i.ak, ptr %i.j, align 8
  %i.ao = invoke { ptr, ptr } @_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i11.i27, ptr noundef nonnull align 2 dereferenceable(2) %i.al)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %.noexc33
  %i.ap = extractvalue { ptr, ptr } %i.ao, 0      ; 2 uses
  %i.aq = extractvalue { ptr, ptr } %i.ao, 1      ; 4 uses
  %.not.i31 = icmp eq ptr %i.aq, null
  br i1 %.not.i31, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i32 = icmp ne ptr %i.ap, null
  %i.ar = icmp eq ptr %i.aq, %i.b
  %or.cond.i.i.i = or i1 %.not.i.i.i32, %i.ar
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.at = load i16, ptr %i.al, align 8
  %i.au = load i16, ptr %i.as, align 2
  %i.av = icmp ult i16 %i.at, %i.au
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i
  %i.aw = phi i1 [ %i.av, %bb.j ], [ true, %bb.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aw, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #28
  %i.ax = load i64, ptr %i.f, align 8
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.f, align 8
  br label %.noexc28

bb.k:                                             ; preds = %.noexc33
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.body

bb.l:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #31
  br label %_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i

_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 64) #31
  br label %.noexc28

.noexc28:                                         ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.ak, %.thread.i ], [ %i.ap, %_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.n

bb.n:                                             ; preds = %.noexc28, %bb.g
  %.sroa.06.0.i25 = phi ptr [ %.sroa.0.010.i, %.noexc28 ], [ %.19.i.i.i.i20, %bb.g ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i25, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.037.044, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i25, i64 48 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i25, i64 56 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %.not.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = load float, ptr %i.bh, align 4
  store i32 %i.k, ptr %i.bj, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store float %i.bm, ptr %i.bn, align 4
  %i.bo = load ptr, ptr %i.bi, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bi, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.bg, align 8            ; 7 uses
  %i.br = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.q, label %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #29
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.bv = ashr exact i64 %i.bt, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i, %i.bv ; 2 uses
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #30
          to label %.noexc30 unwind label %.loopexit ; 8 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bt ; 2 uses
  %i.cb = load float, ptr %i.bh, align 4
  store i32 %i.k, ptr %i.ca, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store float %i.cb, ptr %i.cc, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.bq, %i.bj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc30
  %i.cd = ptrtoaddr ptr %i.bz to i64
  %i.ce = add i64 %i.br, -8
  %i.cf = sub i64 %i.ce, %i.bs                    ; 2 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cf, 24
  %i.ci = sub i64 %i.cd, %i.bs
  %diff.check = icmp ult i64 %i.ci, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ch, 4611686018427387900     ; 3 uses
  %i.cj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bz, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.bq, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bz, i64 %i.cm ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.bq, i64 %i.cm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.cn = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep61, align 4, !alias.scope !14, !noalias !11
  %wide.load62 = load <2 x i64>, ptr %i.cn, align 4, !alias.scope !14, !noalias !11
  %i.co = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !11, !noalias !14
  store <2 x i64> %wide.load62, ptr %i.co, align 4, !alias.scope !11, !noalias !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader64

.lr.ph.i.i.i.i.i.preheader64:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader64, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader64 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader64 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11)
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %i.cq = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !14, !noalias !11
  store i64 %i.cq, ptr %.012.i.i.i.i.i, align 4, !alias.scope !11, !noalias !14
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cr, %i.bj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !19

_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc30
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bz, %.noexc30 ], [ %i.ck, %middle.block ], [ %i.cs, %.lr.ph.i.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #31
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorI14aiVertexWeightSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33.i.i
  store ptr %i.bz, ptr %i.bg, align 8
  store ptr %i.ct, ptr %i.bi, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.cu, ptr %i.bk, align 8
  br label %_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit

_ZNSt6vectorI14aiVertexWeightSaIS0_EE12emplace_backIJjRKfEEERS0_DpOT_.exit: ; preds = %_ZNSt6vectorI14aiVertexWeightSaIS0_EE17_M_realloc_insertIJjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.037.044, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.cv, %i.x
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

bb.s:                                             ; preds = %.critedge.i26
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNKSt6vectorI14aiVertexWeightSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %bb.s, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.az, %bb.k ], [ %i.cw, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #28
  resume { ptr, i32 } %.pn.pn

._crit_edge48:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp4Ogre11IVertexData24ReferencedBonesByWeightsEv(ptr dead_on_unwind noalias writable sret(%"class.std::set") align 8 initializes((8, 12), (16, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.g, %i.i
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.sroa.06.011 = phi ptr [ %i.ab, %bb.e ], [ %i.g, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 4
  %.02022.i.i.i = load ptr, ptr %i.b, align 8     ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  %.pre.i.pre.pre.i.i = load i16, ptr %i.j, align 2 ; 4 uses
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.l = load i16, ptr %i.k, align 2              ; 2 uses
  %i.m = icmp ult i16 %.pre.i.pre.pre.i.i, %i.l   ; 2 uses
  %.in.v.i.i.i = select i1 %i.m, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !21

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.m, label %._crit_edge.thread.i.i.i, label %bb.c

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = icmp eq ptr %.019.lcssa29.i.i.i, %i.n
  br i1 %i.o, label %select.unfold.i.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #33
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i
  %i.q = phi i16 [ %.pre.i.i, %bb.b ], [ %i.l, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.b ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.r = icmp ult i16 %i.q, %.pre.i.pre.pre.i.i
  %cond.fr.i.i = freeze i1 %i.r
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %bb.e

select.unfold.i.i:                                ; preds = %bb.c, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.c ] ; 3 uses
  %i.s = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.s, label %_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEE10_M_insert_IRKtNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorItEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %select.unfold.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.u = load i16, ptr %i.t, align 2
  %i.v = icmp ult i16 %.pre.i.pre.pre.i.i, %i.u
  br label %_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEE10_M_insert_IRKtNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorItEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEE10_M_insert_IRKtNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorItEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.d, %select.unfold.i.i
  %i.w = phi i1 [ %i.v, %bb.d ], [ true, %select.unfold.i.i ]
  %i.x = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEE10_M_insert_IRKtNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorItEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i16 %.pre.i.pre.pre.i.i, ptr %i.y, align 2
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28
  %i.z = load i64, ptr %i.e, align 8
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.011, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEE10_M_insert_IRKtNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorItEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3setItSt4lessItESaItEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #28
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setItSt4lessItESaItEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEE8_M_eraseEPSt13_Rb_tree_nodeItE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #32
  unreachable

_ZNSt8_Rb_treeIttSt9_IdentityItESt4lessItESaItEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre10VertexDataC2Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 4), (8, 32), (40, 44), (48, 56)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.g, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.m, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE:bb.a
  %i.xs = load i16, ptr %i.xr, align 8
  %i.xt = icmp eq i16 %i.xs, %i.xm
  br i1 %i.xt, label %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit, label %bb.ea

_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit:        ; preds = %bb.ea, %.lr.ph.i375, %bb.dz
  %i.xu = phi ptr [ null, %bb.dz ], [ %i.xr, %.lr.ph.i375 ], [ null, %bb.ea ] ; 5 uses
  %i.xv = load ptr, ptr %i.wy, align 8            ; 2 uses
  %.not10.i.i.i.i377 = icmp eq ptr %i.xv, null
  br i1 %.not10.i.i.i.i377, label %.critedge.i, label %.lr.ph.i.i.i.i378

.lr.ph.i.i.i.i378:                                ; preds = %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit
  %i.xw = load i16, ptr %i.xu, align 2            ; 2 uses
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.lr.ph.i.i.i.i378
  %.012.i.i.i.i379 = phi ptr [ %i.xv, %.lr.ph.i.i.i.i378 ], [ %.1.i.i.i.i384, %bb.eb ] ; 4 uses
  %.0811.i.i.i.i380 = phi ptr [ %i.wz, %.lr.ph.i.i.i.i378 ], [ %.19.i.i.i.i381, %bb.eb ] ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i379, i64 32
  %i.xy = load i16, ptr %i.xx, align 2
  %i.xz = icmp ult i16 %i.xy, %i.xw               ; 3 uses
  %.19.i.i.i.i381 = select i1 %i.xz, ptr %.0811.i.i.i.i380, ptr %.012.i.i.i.i379 ; 5 uses
  %.1.in.v.i.i.i.i382 = select i1 %i.xz, i64 24, i64 16
  %.1.in.i.i.i.i383 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i379, i64 %.1.in.v.i.i.i.i382
  %.1.i.i.i.i384 = load ptr, ptr %.1.in.i.i.i.i383, align 8 ; 2 uses
  %.not.i.i.i.i385 = icmp eq ptr %.1.i.i.i.i384, null
  br i1 %.not.i.i.i.i385, label %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, label %bb.eb, !llvm.loop !10

_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i: ; preds = %bb.eb
  %i.ya = icmp eq ptr %.19.i.i.i.i381, %i.wz
  br i1 %i.ya, label %.critedge.i, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i381.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.xz, ptr %.0811.i.i.i.i380, ptr %.012.i.i.i.i379
  %.19.i.i.i.i381.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i381.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.yb = load i16, ptr %.19.i.i.i.i381.sroa.sel.v.sroa.sel.v.sroa.sel, align 2
  %i.yc = icmp ult i16 %i.xw, %i.yb
  br i1 %i.yc, label %.critedge.i, label %bb.ed

.critedge.i:                                      ; preds = %bb.ec, %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i381, %bb.ec ], [ %.19.i.i.i.i381, %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i ], [ %i.wz, %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.xu, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.yd = invoke ptr @_ZNSt8_Rb_treeItSt4pairIKtSt6vectorI14aiVertexWeightSaIS3_EEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.eg

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ed

bb.ed:                                            ; preds = %.noexc, %bb.ec
  %.sroa.06.0.i = phi ptr [ %i.yd, %.noexc ], [ %.19.i.i.i.i381, %bb.ec ] ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.yf = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #30
          to label %.noexc386 unwind label %bb.eg ; 7 uses

.noexc386:                                        ; preds = %bb.ed
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 1056
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %i.yf, i8 0, i64 1056, i1 false)
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.yi = load i64, ptr %i.yh, align 8            ; 4 uses
  %i.yj = icmp ugt i64 %i.yi, 1023
  br i1 %i.yj, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.ee

bb.ee:                                            ; preds = %.noexc386
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.yl = trunc nuw nsw i64 %i.yi to i32
  store i32 %i.yl, ptr %i.yf, align 4
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yf, i64 4 ; 2 uses
  %i.yn = load ptr, ptr %i.yk, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ym, ptr align 1 %i.yn, i64 %i.yi, i1 false)
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yi
  store i8 0, ptr %i.yo, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.ee, %.noexc386
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xu, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.yg, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.yp, i64 64, i1 false)
  %i.yq = load ptr, ptr %i.ye, align 8            ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.ys = load ptr, ptr %i.yr, align 8            ; 2 uses
  %i.yt = icmp eq ptr %i.yq, %i.ys
  br i1 %i.yt, label %_ZN6Assimp4Ogre4Bone19ConvertToAssimpBoneEPNS0_8SkeletonERKSt6vectorI14aiVertexWeightSaIS5_EE.exit, label %bb.ef

bb.ef:                                            ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.yu = ptrtoint ptr %i.ys to i64
  %i.yv = ptrtoint ptr %i.yq to i64
  %i.yw = sub i64 %i.yu, %i.yv                    ; 4 uses
  %i.yx = ashr exact i64 %i.yw, 3                 ; 2 uses
  %i.yy = trunc i64 %i.yx to i32
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yf, i64 1028
  store i32 %i.yy, ptr %i.yz, align 4
  %i.za = icmp ugt i64 %i.yx, 2305843009213693951
  %i.zb = select i1 %i.za, i64 -1, i64 %i.yw
  %i.zc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.zb) #30
          to label %.noexc387 unwind label %bb.eg ; 3 uses

.noexc387:                                        ; preds = %bb.ef
  %i.zd = and i64 %i.yw, -8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.zc, i8 0, i64 %i.zd, i1 false)
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yf, i64 1048
  store ptr %i.zc, ptr %i.ze, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.zc, ptr nonnull align 4 %i.yq, i64 %i.yw, i1 false)
  br label %_ZN6Assimp4Ogre4Bone19ConvertToAssimpBoneEPNS0_8SkeletonERKSt6vectorI14aiVertexWeightSaIS5_EE.exit

_ZN6Assimp4Ogre4Bone19ConvertToAssimpBoneEPNS0_8SkeletonERKSt6vectorI14aiVertexWeightSaIS5_EE.exit: ; preds = %.noexc387, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.wu, i64 %.0170433
  store ptr %i.yf, ptr %i.zf, align 8
  %i.zg = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0388.0432) #33 ; 2 uses
  %i.zh = add i64 %.0170433, 1
  %.not417 = icmp eq ptr %i.zg, %i.wx
  br i1 %.not417, label %._crit_edge436, label %bb.dz, !llvm.loop !47

bb.eg:                                            ; preds = %bb.ef, %bb.ed, %.critedge.i
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.dy
  %.pn = phi { ptr, i32 } [ %i.zi, %bb.eg ], [ %i.xj, %bb.dy ]
  call void @_ZNSt3setItSt4lessItESaItEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #28
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.dx
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.eh ], [ %i.xi, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.ej:                                            ; preds = %_ZNSt3mapItSt6vectorI14aiVertexWeightSaIS1_EESt4lessItESaISt4pairIKtS3_EEED2Ev.exit, %._crit_edge
  ret ptr %i.j

_ZN6aiFaceD2Ev.exit373:                           ; preds = %.thread404, %bb.r, %bb.v, %bb.aa, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, %bb.d
  %.pn229 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.bt, %bb.v ], [ %i.bx, %bb.aa ], [ %i.bp, %bb.r ], [ %i.ky, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364 ], [ %i.lx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372 ], [ %.pn.pn, %bb.ei ], [ %.pn222.pn408, %.thread404 ]
  resume { ptr, i32 } %.pn229
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp4Ogre8Skeleton9RootBonesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.69") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(52) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not18 = icmp eq ptr %i.a, %i.c
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit, %bb.a
  %.lcssa15 = phi ptr [ null, %bb.a ], [ %i.ae, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit ]
  store ptr %.lcssa15, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit
  %i.f = phi ptr [ null, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit ] ; 5 uses
  %.sroa.06.019 = phi ptr [ %i.a, %.lr.ph ], [ %i.af, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit ] ; 10 uses
  %i.h = load ptr, ptr %.sroa.06.019, align 8     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp ne i32 %i.j, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ne ptr %i.l, null
  %i.n = select i1 %.not.i, i1 %i.m, i1 false
  br i1 %i.n, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.e, align 8
  %.not.i3 = icmp eq ptr %i.f, %i.o
  br i1 %.not.i3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.d, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.f to i64
  %i.r = ptrtoint ptr %i.g to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store ptr %i.g, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #30
          to label %.noexc4 unwind label %.loopexit ; 4 uses

.noexc4:                                          ; preds = %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.s ; 2 uses
  store ptr %i.h, ptr %i.z, align 8
  %i.aa = icmp sgt i64 %i.s, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.g:                                             ; preds = %.noexc4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.g, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.g, %.noexc4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.s) #31
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ab, ptr %i.d, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ac, ptr %i.e, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.g, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i5 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.s) #31
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.phi

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.d, %bb.b
  %i.ad = phi ptr [ %i.ab, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.p, %bb.d ], [ %i.f, %bb.b ]
  %i.ae = phi ptr [ %i.y, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.g, %bb.d ], [ %i.g, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.019, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.af, %i.ag
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !48
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp4Ogre4Bone19ConvertToAssimpNodeEPNS0_8SkeletonEP6aiNode(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #30 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1028
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.loopexit26, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i32 %i.o, ptr %i.p, align 8
  %i.q = shl i64 %i.m, 2
  %i.r = and i64 %i.q, 34359738360
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #30
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1144) #31
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph, %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit
  %.02232 = phi i64 [ 0, %.lr.ph ], [ %i.am, %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit ] ; 4 uses
  %i.w = load ptr, ptr %i.f, align 8
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.02232
  %i.y = load i16, ptr %i.x, align 2
  %i.z = load ptr, ptr %1, align 8                ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not10.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not10.i, label %.loopexit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.011.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !46

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.04.011.i = phi ptr [ %i.ab, %bb.e ], [ %i.z, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.04.011.i, align 8  ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = icmp eq i16 %i.ad, %i.y
  br i1 %i.ae, label %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit, label %bb.e

.loopexit:                                        ; preds = %bb.d, %bb.e
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.02232
  invoke void @_ZN17DeadlyImportErrorC2IJRA48_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(48) @.str.49, ptr noundef nonnull align 2 dereferenceable(2) %i.ah, ptr noundef nonnull align 1 dereferenceable(13) @.str.47, ptr noundef nonnull align 2 dereferenceable(2) %0, ptr noundef nonnull align 1 dereferenceable(2) @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.loopexit
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.af) #28
  br label %bb.h

_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit:        ; preds = %.lr.ph.i
  %i.aj = tail call noundef ptr @_ZN6Assimp4Ogre4Bone19ConvertToAssimpNodeEPNS0_8SkeletonEP6aiNode(ptr noundef nonnull align 8 dereferenceable(248) %i.ac, ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  %i.ak = load ptr, ptr %i.t, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.02232
  store ptr %i.aj, ptr %i.al, align 8
  %i.am = add nuw i64 %.02232, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.n
  br i1 %exitcond.not, label %.loopexit26, label %bb.d, !llvm.loop !49

.loopexit26:                                      ; preds = %_ZNK6Assimp4Ogre8Skeleton8BoneByIdEt.exit, %bb.b
  ret ptr %i.a

bb.h:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.v, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6Assimp4Ogre9Animation24ConvertToAssimpAnimationEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #30 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %i.a, i8 0, i64 1028, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1048 ; 2 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1056 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8              ; 4 uses
  %i.l = icmp ugt i64 %i.k, 1023
  br i1 %i.l, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = trunc nuw nsw i64 %i.k to i32
  store i32 %i.n, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 1 %i.p, i64 %i.k, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  store i8 0, ptr %i.q, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load float, ptr %i.r, align 8
  %i.t = fpext float %i.s to double
  store double %i.t, ptr %i.b, align 8
  store double 1.000000e+00, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 112               ; 3 uses
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.d, align 8
  %i.ae = shl nsw i64 %i.ac, 3
  %i.af = and i64 %i.ae, 34359738360
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #30 ; 2 uses
  store ptr %i.ag, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.c ] ; 3 uses
  %i.ai = load ptr, ptr %i.u, align 8
  %i.aj = getelementptr inbounds nuw [112 x i8], ptr %i.ai, i64 %.013
end_hunk_1
