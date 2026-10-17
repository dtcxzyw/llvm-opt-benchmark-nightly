Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCGeometry?download=true
inline.NumInlined: 2077
inline.NumDeleted: 820
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp3IFC25ProcessRepresentationItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE:bb.a
bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load i64, ptr %i.af, align 8
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %0, ptr %6, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.g, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.aj = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not11.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i ], [ %i.aj, %bb.g ] ; 5 uses
  %.0812.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i ], [ %i.j, %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = icmp ult ptr %i.al, %0
  br i1 %i.am, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = icmp eq ptr %i.al, %0
  br i1 %i.an, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp ult i32 %i.ap, %i.g
  br i1 %i.aq, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  br label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i, %bb.h
  %.sink.i.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ 16, %bb.h ], [ 16, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i ]
  %.19.i.i.i.i.i = phi ptr [ %.0812.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread.i.i.i.i.i ], [ %.013.i.i.i.i.i, %bb.h ], [ %.013.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i.i.i.i ] ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 %.sink.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %i.ar, align 8    ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN6Assimp3IFC14ConversionData14MeshCacheIndexESt3setIjSt4lessIjESaIjEES5_IS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt3mapIN6Assimp3IFC14ConversionData14MeshCacheIndexESt3setIjSt4lessIjESaIjEES5_IS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSB_.exit.i.i: ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.thread10.i.i.i.i.i
  %i.as = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.as, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIN6Assimp3IFC14ConversionData14MeshCacheIndexESt3setIjSt4lessIjESaIjEES5_IS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSB_.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp ult ptr %0, %i.au
  br i1 %i.av, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %0, %i.au
  br i1 %i.aw, label %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i, label %_ZN6Assimp3IFC17PopulateMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERKSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE.exit

_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i: ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 40
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp ult i32 %i.g, %i.ay
  br i1 %i.az, label %.critedge.i.i, label %_ZN6Assimp3IFC17PopulateMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERKSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE.exit

.critedge.i.i:                                    ; preds = %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i, %bb.i, %_ZNSt3mapIN6Assimp3IFC14ConversionData14MeshCacheIndexESt3setIjSt4lessIjESaIjEES5_IS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSB_.exit.i.i, %bb.g
  %.08.lcssa.i.i.i11.i.i = phi ptr [ %i.j, %bb.g ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN6Assimp3IFC14ConversionData14MeshCacheIndexESt3setIjSt4lessIjESaIjEES5_IS3_ESaISt4pairIKS3_S8_EEE11lower_boundERSB_.exit.i.i ], [ %.19.i.i.i.i.i, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %6, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ba = call ptr @_ZNSt8_Rb_treeIN6Assimp3IFC14ConversionData14MeshCacheIndexESt4pairIKS3_St3setIjSt4lessIjESaIjEEESt10_Select1stISB_ES7_IS3_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESL_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr %.08.lcssa.i.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN6Assimp3IFC17PopulateMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERKSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE.exit

_ZN6Assimp3IFC17PopulateMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERKSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE.exit: ; preds = %bb.j, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i, %.critedge.i.i
  %.sroa.06.0.i.i = phi ptr [ %i.ba, %.critedge.i.i ], [ %.19.i.i.i.i.i, %_ZNKSt4lessIN6Assimp3IFC14ConversionData14MeshCacheIndexEEclERKS3_S6_.exit.i.i ], [ %.19.i.i.i.i.i, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 48
  %i.bc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(48) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.k

bb.k:                                             ; preds = %_ZN6Assimp3IFC17TryQueryMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE.exit, %bb.f, %_ZN6Assimp3IFC17PopulateMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERKSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE.exit, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %_ZN6Assimp3IFC17PopulateMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERKSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE.exit ], [ true, %bb.f ], [ true, %_ZN6Assimp3IFC17TryQueryMeshCacheERKNS0_10Schema_2x321IfcRepresentationItemERSt3setIjSt4lessIjESaIjEEjRNS0_14ConversionDataE.exit ]
  ret i1 %.0
}

declare noundef i32 @_ZN6Assimp3IFC16ProcessMaterialsEmjRNS0_14ConversionDataEb(i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(392), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !234
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4              ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #30, !inline_history !234
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIdESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8                  ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.u = load ptr, ptr %i.g, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #29
  br label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %2, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 24
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 24
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 24
  br i1 %i.af, label %bb.l, label %bb.m, !prof !17

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 24
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit

_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit:   ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !235

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIP10aiVector3tIdES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPK10aiVector3tIdESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4
  store i32 %i.r, ptr %i.o, align 4
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 4
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 4
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.c, align 4
  store i32 %i.ae, ptr %i.i, align 4
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 4
  br i1 %i.af, label %bb.o, label %bb.p, !prof !17

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ab, i1 false)
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 4
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i32, ptr %i.c, align 4
  store i32 %i.ah, ptr %i.i, align 4
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.an ; 3 uses
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp sgt i64 %i.as, 4
  br i1 %i.at, label %bb.r, label %bb.s, !prof !17
end_hunk_0
