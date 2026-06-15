inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0_@_ZN6Assimp4Ogre10VertexDataD2Ev:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #31
  br label %_ZN6Assimp4Ogre11IVertexDataD2Ev.exit

_ZN6Assimp4Ogre11IVertexDataD2Ev.exit:            ; preds = %_ZNSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS2_EEED2Ev.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre10VertexData5ResetEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit
  store ptr %i.k, ptr %i.l, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EE5clearEv.exit

_ZNSt6vectorIN6Assimp4Ogre13VertexElementESaIS2_EE5clearEv.exit: ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE5clearEv.exit, %_ZSt8_DestroyIPN6Assimp4Ogre13VertexElementES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK6Assimp4Ogre10VertexData10VertexSizeEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i16 noundef zeroext %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.b, %i.d
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.07.011 = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = icmp eq i16 %i.f, %1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 8
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp ult i32 %i.i, 28
  br i1 %i.j, label %switch.lookup, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit

switch.lookup:                                    ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.k
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit:      ; preds = %bb.b, %switch.lookup
  %.0.i.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.b ]
  %i.l = add i32 %.0.i.i, %.012
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit, %.lr.ph
  %.1 = phi i32 [ %i.l, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit ], [ %.012, %.lr.ph ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN6Assimp4Ogre10VertexData12VertexBufferEt(ptr noundef nonnull align 8 dereferenceable(200) %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %i.a = alloca i16, align 2                      ; 2 uses
  store i16 %1, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = load i16, ptr %i.f, align 2
  %i.h = icmp ult i16 %i.g, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.h, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !22

_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.k = load i16, ptr %i.j, align 2
  %i.l = icmp ult i16 %1, %i.k
  br i1 %i.l, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp ult i16 %i.n, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.p, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp ult i16 %1, %i.r
  br i1 %i.s, label %.critedge.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.a, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.t = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr %.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit: ; preds = %bb.b, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.t, %.critedge.i ], [ %.19.i.i.i.i, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.thread: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.a, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit
  %.0 = phi ptr [ %i.v, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit ], [ null, %bb.a ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.b, %i.d
  br i1 %.not21, label %._crit_edge, label %bb.b

.lr.ph.a:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.d
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a, %.lr.ph.a
  %.sroa.015.023 = phi ptr [ %i.e, %.lr.ph.a ], [ %i.b, %bb.a ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.015.023, i64 12
  %3 = load i32, ptr %i.g, align 4
  %4 = icmp ne i32 %3, %1
  %5 = load i16, ptr %.sroa.015.023, align 4
  %6 = icmp ne i16 %5, %2
  %or.cond.not = select i1 %4, i1 true, i1 %6
  br i1 %or.cond.not, label %.lr.ph.a, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph.a, %bb.a
  %i.h = phi ptr [ null, %bb.a ], [ null, %.lr.ph.a ], [ %.sroa.015.023, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre13VertexDataXmlC2Ev(ptr noundef nonnull align 8 dereferenceable(224) initializes((0, 4), (8, 32), (40, 44), (48, 56)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i8 0, i64 104, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre13VertexDataXml12HasPositionsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre13VertexDataXml10HasNormalsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre13VertexDataXml11HasTangentsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK6Assimp4Ogre13VertexDataXml6HasUvsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp ne ptr %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 -384307168202282325, 384307168202282326) i64 @_ZNK6Assimp4Ogre13VertexDataXml6NumUvsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre9IndexDataC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 9), (16, 32)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %0, i8 0, i64 9, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre9IndexDataD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((16, 24)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  store ptr null, ptr %i.b, align 8
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !23
  %i.l = load ptr, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !23
  br label %_ZN6Assimp4Ogre9IndexData5ResetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN6Assimp4Ogre9IndexData5ResetEv.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28
  br label %_ZN6Assimp4Ogre9IndexData5ResetEv.exit

_ZN6Assimp4Ogre9IndexData5ResetEv.exit:           ; preds = %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %.pr = load ptr, ptr %i.b, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6Assimp4Ogre9IndexData5ResetEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.w, align 4
  %i.x = load ptr, ptr %.pr, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #28, !inline_history !25
  %i.aa = load ptr, ptr %.pr, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #28, !inline_history !25
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre4Mesh20ConvertToAssimpSceneEP7aiScene:bb.a
  %i.bw = add nuw i64 %.04255, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.ay
  br i1 %exitcond.not, label %._crit_edge58.thread, label %.lr.ph57, !llvm.loop !35

.thread:                                          ; preds = %.lr.ph57
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit49, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  %.pn52 = phi { ptr, i32 } [ %i.bx, %.thread ], [ %i.by, %bb.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.cc) #31
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit49

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit49: ; preds = %bb.i, %bb.j
  %.pn53 = phi { ptr, i32 } [ %i.by, %bb.i ], [ %.pn52, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.m

bb.k:                                             ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit, %bb.e
  %i.cd = phi ptr [ %.pre, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit ], [ %i.x, %bb.e ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.cf to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = lshr exact i64 %i.cl, 3
  %i.cn = trunc i64 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.cn, ptr %i.co, align 8
  %i.cp = and i64 %i.cl, 34359738360
  %i.cq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #30
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not64 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not64, label %.loopexit, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %bb.l
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  br label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.lr.ph61
  %.03959 = phi i64 [ %i.dj, %.lr.ph61 ], [ 0, %.lr.ph61.preheader ] ; 3 uses
  %i.db = load ptr, ptr %i.w, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.03959
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call noundef ptr @_ZN6Assimp4Ogre9Animation24ConvertToAssimpAnimationEv(ptr noundef nonnull align 8 dereferenceable(112) %i.df)
  %i.dh = load ptr, ptr %i.cr, align 8
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.03959
  store ptr %i.dg, ptr %i.di, align 8
  %i.dj = add nuw i64 %.03959, 1                  ; 2 uses
  %exitcond66.not = icmp eq i64 %i.dj, %i.da
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph61, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph61, %bb.l, %bb.k, %bb.a, %._crit_edge
  ret void

bb.m:                                             ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit49, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn53, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit49 ], [ %i.y, %bb.d ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %4 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %6 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %7 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %8 = alloca %"class.std::tuple.167", align 8    ; 4 uses
  %9 = alloca %"class.std::tuple.153", align 1    ; 3 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %10 = alloca %"class.std::tuple.167", align 8   ; 4 uses
  %11 = alloca %"class.std::tuple.153", align 1   ; 3 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i16, align 2                      ; 10 uses
  %14 = alloca %"class.std::map.16", align 8      ; 10 uses
  %15 = alloca %"class.std::set", align 8         ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %.not = icmp eq i32 %i.g, 4
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA63_KcRN6Assimp4Ogre8ISubMesh13OperationTypeEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(63) @.str.39, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #30 ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 224 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1272
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1312
  store ptr null, ptr %i.p, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.m, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.n, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.o, i8 0, i64 36, i1 false)
  store i32 4, ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %i.s = add i64 %i.r, -1024
  %or.cond418 = icmp ult i64 %i.s, -1023
  br i1 %or.cond418, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 236
  %i.v = trunc nuw nsw i64 %i.r to i32
  store i32 %i.v, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 240 ; 2 uses
  %i.x = load ptr, ptr %i.t, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 1 %i.x, i64 %i.r, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r
  store i8 0, ptr %i.y, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %.not210 = icmp eq i32 %i.aa, -1
  br i1 %.not210, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  store i32 %i.aa, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ad = load i8, ptr %i.ac, align 4, !range !27, !noundef !28
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.in = select i1 %i.ae, ptr %i.ag, ptr %i.af
  %i.ah = load ptr, ptr %.in, align 8             ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 136 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 5 uses
  %.not21.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not21.i, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247.thread, label %.lr.ph.i

16:                                               ; preds = %.lr.ph.i
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %17, %i.al
  br i1 %.not.i, label %bb.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %16
  %.sroa.012.022.i = phi ptr [ %17, %16 ], [ %i.aj, %bb.h ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %18 = icmp ne i32 %i.an, 1
  %19 = load i16, ptr %.sroa.012.022.i, align 4
  %20 = icmp ne i16 %19, 0
  %or.cond.not.i = select i1 %18, i1 true, i1 %20
  br i1 %or.cond.not.i, label %16, label %bb.i

bb.i:                                             ; preds = %16, %.lr.ph.i
  %21 = phi ptr [ %.sroa.012.022.i, %.lr.ph.i ], [ null, %16 ] ; 4 uses
  br label %.lr.ph.i234

bb.j:                                             ; preds = %.lr.ph.i234
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i235, i64 16 ; 2 uses
  %.not.i.a = icmp eq ptr %i.ao, %i.al
  br i1 %.not.i.a, label %bb.k, label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %bb.i, %bb.j
  %.sroa.012.022.i235 = phi ptr [ %i.ao, %bb.j ], [ %i.aj, %bb.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i235, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %22 = icmp ne i32 %i.aq, 4
  %23 = load i16, ptr %.sroa.012.022.i235, align 4
  %24 = icmp ne i16 %23, 0
  %or.cond.not.i236 = select i1 %22, i1 true, i1 %24
  br i1 %or.cond.not.i236, label %bb.j, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i234
  %25 = phi ptr [ %.sroa.012.022.i235, %.lr.ph.i234 ], [ null, %bb.j ] ; 6 uses
  br label %.lr.ph.i239

bb.l:                                             ; preds = %.lr.ph.i239
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i240, i64 16 ; 2 uses
  %.not.i236 = icmp eq ptr %i.ar, %i.al
  br i1 %.not.i236, label %bb.m, label %.lr.ph.i239

.lr.ph.i239:                                      ; preds = %bb.k, %bb.l
  %.sroa.012.022.i240 = phi ptr [ %i.ar, %bb.l ], [ %i.aj, %bb.k ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i240, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %26 = icmp ne i32 %i.at, 7
  %27 = load i16, ptr %.sroa.012.022.i240, align 4
  %28 = icmp ne i16 %27, 0
  %or.cond.not.i242 = select i1 %26, i1 true, i1 %28
  br i1 %or.cond.not.i242, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i239
  %29 = phi ptr [ %.sroa.012.022.i240, %.lr.ph.i239 ], [ null, %bb.l ] ; 6 uses
  br label %.lr.ph.i244

bb.n:                                             ; preds = %.lr.ph.i244
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i245, i64 16 ; 2 uses
  %.not.i241 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i241, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %bb.m, %bb.n
  %.sroa.012.022.i245 = phi ptr [ %i.au, %bb.n ], [ %i.aj, %bb.m ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.022.i245, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %30 = icmp ne i32 %i.aw, 7
  %31 = load i16, ptr %.sroa.012.022.i245, align 4
  %32 = icmp ne i16 %31, 1
  %or.cond.not.i248 = select i1 %30, i1 true, i1 %32
  br i1 %or.cond.not.i248, label %bb.n, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247: ; preds = %bb.n, %.lr.ph.i244
  %i.ax = phi ptr [ %.sroa.012.022.i245, %.lr.ph.i244 ], [ null, %bb.n ] ; 6 uses
  %.not211 = icmp eq ptr %21, null
  br i1 %.not211, label %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247.thread, label %bb.q

_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247.thread: ; preds = %bb.h, %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull @.str.40)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247.thread
  tail call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.p:                                             ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247.thread
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ay) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.q:                                             ; preds = %_ZN6Assimp4Ogre10VertexData16GetVertexElementENS0_13VertexElement8SemanticEt.exit247
  %i.ba = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %.not212 = icmp eq i32 %i.bb, 2
  br i1 %.not212, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.41)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bc) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.u:                                             ; preds = %bb.q
  %.not213 = icmp ne ptr %25, null                ; 5 uses
  br i1 %.not213, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bf = load i32, ptr %i.be, align 4
  %.not214 = icmp eq i32 %i.bf, 2
  br i1 %.not214, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull @.str.42)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bg) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.z:                                             ; preds = %bb.v, %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4            ; 7 uses
  store i32 %i.bl, ptr %i.l, align 8
  %i.bm = zext i32 %i.bl to i64                   ; 5 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = or disjoint i64 %i.bn, 8
  %i.bp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #30 ; 2 uses
  store i64 %i.bm, ptr %i.bp, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = icmp eq i32 %i.bl, 0                    ; 3 uses
  br i1 %i.br, label %.loopexit422.a, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bm
  %i.bt = add nuw nsw i64 %i.bm, 1152921504606846975
  %i.bu = and i64 %i.bt, 1152921504606846975
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.aa, %.prol.preheader
  %i.bv = phi ptr [ %i.bx, %.prol.preheader ], [ %i.bq, %bb.aa ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.aa ]
  store i32 0, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr null, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !37

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.aa
  %.unr = phi ptr [ %i.bq, %bb.aa ], [ %i.bx, %.prol.preheader ]
  %i.by = icmp samesign ult i64 %i.bu, 7
  br i1 %i.by, label %.loopexit422.a, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bz = phi ptr [ %i.cp, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr null, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 0, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr null, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i32 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store ptr null, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  store i32 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store ptr null, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  store ptr null, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  store i32 0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  store ptr null, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  store i32 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 104
  store ptr null, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 112
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 120
  store ptr null, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 128 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bs
  br i1 %i.cq, label %.loopexit422.a, label %.new

.loopexit422.a:                                   ; preds = %.prol.loopexit, %.new, %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 208 ; 2 uses
  store ptr %i.bq, ptr %i.cr, align 8
  %i.cs = mul i32 %i.bl, 3                        ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  store i32 %i.cs, ptr %i.k, align 4
  %i.cu = mul nuw nsw i64 %i.ct, 12               ; 8 uses
  %i.cv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #30 ; 2 uses
  br i1 %i.br, label %.loopexit421, label %.loopexit421.loopexit

.loopexit421.loopexit:                            ; preds = %.loopexit422.a
  %i.cw = add nsw i64 %i.cu, -12                  ; 2 uses
  %i.cx = urem i64 %i.cw, 12
  %i.cy = sub nuw nsw i64 %i.cw, %i.cx
  %i.cz = add nsw i64 %i.cy, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cv, i8 0, i64 %i.cz, i1 false)
  br label %.loopexit421

.loopexit421:                                     ; preds = %.loopexit421.loopexit, %.loopexit422.a
  store ptr %i.cv, ptr %i.m, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %21, i64 2 ; 2 uses
  %i.db = load i16, ptr %i.da, align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.db, ptr %i.d, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ah, i64 152 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ah, i64 168 ; 4 uses
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 16 uses
  %.not10.i.i.i.i = icmp eq ptr %i.de, null
  br i1 %.not10.i.i.i.i, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit421, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.de, %.loopexit421 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.df, %.loopexit421 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dh = load i16, ptr %i.dg, align 2
  %i.di = icmp ult i16 %i.dh, %i.db               ; 2 uses
  %.19.i.i.i.i = select i1 %i.di, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.di, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dj = icmp eq ptr %.19.i.i.i.i, %i.df
  br i1 %i.dj, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = icmp ult i16 %i.db, %i.dl
  br i1 %i.dm, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.de, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.df, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.do = load i16, ptr %i.dn, align 2
  %i.dp = icmp ult i16 %i.do, %i.db               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.dp, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.dp, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dq = icmp eq ptr %.19.i.i.i.i.i, %i.df
  br i1 %i.dq, label %.critedge.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = icmp ult i16 %i.db, %i.ds
  br i1 %i.dt, label %.critedge.i.i, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i

.critedge.i.i:                                    ; preds = %bb.ab, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store ptr %i.d, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.du = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr %.19.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i: ; preds = %.critedge.i.i, %bb.ab
  %.sroa.06.0.i.i = phi ptr [ %i.du, %.critedge.i.i ], [ %.19.i.i.i.i.i, %bb.ab ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 40
  %i.dw = load ptr, ptr %i.dv, align 8
  br label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit

_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit: ; preds = %.loopexit421, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i
  %.0.i = phi ptr [ %i.dw, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i ], [ null, %.loopexit421 ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not213, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %25, i64 2
  %i.dy = load i16, ptr %i.dx, align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.dy, ptr %i.c, align 2
  %i.dz = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not10.i.i.i.i248 = icmp eq ptr %i.dz, null
  br i1 %.not10.i.i.i.i248, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272, label %.lr.ph.i.i.i.i249

.lr.ph.i.i.i.i249:                                ; preds = %bb.ac, %.lr.ph.i.i.i.i249
  %.012.i.i.i.i250 = phi ptr [ %.1.i.i.i.i255, %.lr.ph.i.i.i.i249 ], [ %i.dz, %bb.ac ] ; 3 uses
  %.0811.i.i.i.i251 = phi ptr [ %.19.i.i.i.i252, %.lr.ph.i.i.i.i249 ], [ %i.df, %bb.ac ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i250, i64 32
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = icmp ult i16 %i.eb, %i.dy               ; 2 uses
  %.19.i.i.i.i252 = select i1 %i.ec, ptr %.0811.i.i.i.i251, ptr %.012.i.i.i.i250 ; 3 uses
  %.1.in.v.i.i.i.i253 = select i1 %i.ec, i64 24, i64 16
  %.1.in.i.i.i.i254 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i250, i64 %.1.in.v.i.i.i.i253
  %.1.i.i.i.i255 = load ptr, ptr %.1.in.i.i.i.i254, align 8 ; 2 uses
  %.not.i.i.i.i256 = icmp eq ptr %.1.i.i.i.i255, null
  br i1 %.not.i.i.i.i256, label %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i257, label %.lr.ph.i.i.i.i249, !llvm.loop !22

_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i257: ; preds = %.lr.ph.i.i.i.i249
  %i.ed = icmp eq ptr %.19.i.i.i.i252, %i.df
  br i1 %i.ed, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i257
  %i.ee = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i252, i64 32
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = icmp ult i16 %i.dy, %i.ef
  br i1 %i.eg, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272, label %.lr.ph.i.i.i.i.i259

.lr.ph.i.i.i.i.i259:                              ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258, %.lr.ph.i.i.i.i.i259
  %.012.i.i.i.i.i260 = phi ptr [ %.1.i.i.i.i.i265, %.lr.ph.i.i.i.i.i259 ], [ %i.dz, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258 ] ; 3 uses
  %.0811.i.i.i.i.i261 = phi ptr [ %.19.i.i.i.i.i262, %.lr.ph.i.i.i.i.i259 ], [ %i.df, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i260, i64 32
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = icmp ult i16 %i.ei, %i.dy               ; 2 uses
  %.19.i.i.i.i.i262 = select i1 %i.ej, ptr %.0811.i.i.i.i.i261, ptr %.012.i.i.i.i.i260 ; 5 uses
  %.1.in.v.i.i.i.i.i263 = select i1 %i.ej, i64 24, i64 16
  %.1.in.i.i.i.i.i264 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i260, i64 %.1.in.v.i.i.i.i.i263
  %.1.i.i.i.i.i265 = load ptr, ptr %.1.in.i.i.i.i.i264, align 8 ; 2 uses
  %.not.i.i.i.i.i266 = icmp eq ptr %.1.i.i.i.i.i265, null
  br i1 %.not.i.i.i.i.i266, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i267, label %.lr.ph.i.i.i.i.i259, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i267: ; preds = %.lr.ph.i.i.i.i.i259
  %i.ek = icmp eq ptr %.19.i.i.i.i.i262, %i.df
  br i1 %i.ek, label %.critedge.i.i271, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i267
  %i.el = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i262, i64 32
  %i.em = load i16, ptr %i.el, align 2
  %i.en = icmp ult i16 %i.dy, %i.em
  br i1 %i.en, label %.critedge.i.i271, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268

.critedge.i.i271:                                 ; preds = %bb.ad, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i267
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.c, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.eo = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr %.19.i.i.i.i.i262, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268: ; preds = %.critedge.i.i271, %bb.ad
  %.sroa.06.0.i.i269 = phi ptr [ %i.eo, %.critedge.i.i271 ], [ %.19.i.i.i.i.i262, %bb.ad ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i269, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8
  br label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272

_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272: ; preds = %bb.ac, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i257, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268
  %.0.i270 = phi ptr [ %i.eq, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i268 ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i258 ], [ null, %bb.ac ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i257 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272
  %i.er = phi ptr [ %.0.i270, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit272 ], [ null, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit ] ; 13 uses
  %.not215 = icmp ne ptr %29, null                ; 4 uses
  br i1 %.not215, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %29, i64 2
  %i.et = load i16, ptr %i.es, align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.et, ptr %i.b, align 2
  %i.eu = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not10.i.i.i.i273 = icmp eq ptr %i.eu, null
  br i1 %.not10.i.i.i.i273, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297, label %.lr.ph.i.i.i.i274

.lr.ph.i.i.i.i274:                                ; preds = %bb.af, %.lr.ph.i.i.i.i274
  %.012.i.i.i.i275 = phi ptr [ %.1.i.i.i.i280, %.lr.ph.i.i.i.i274 ], [ %i.eu, %bb.af ] ; 3 uses
  %.0811.i.i.i.i276 = phi ptr [ %.19.i.i.i.i277, %.lr.ph.i.i.i.i274 ], [ %i.df, %bb.af ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i275, i64 32
  %i.ew = load i16, ptr %i.ev, align 2
  %i.ex = icmp ult i16 %i.ew, %i.et               ; 2 uses
  %.19.i.i.i.i277 = select i1 %i.ex, ptr %.0811.i.i.i.i276, ptr %.012.i.i.i.i275 ; 3 uses
  %.1.in.v.i.i.i.i278 = select i1 %i.ex, i64 24, i64 16
  %.1.in.i.i.i.i279 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i275, i64 %.1.in.v.i.i.i.i278
  %.1.i.i.i.i280 = load ptr, ptr %.1.in.i.i.i.i279, align 8 ; 2 uses
  %.not.i.i.i.i281 = icmp eq ptr %.1.i.i.i.i280, null
  br i1 %.not.i.i.i.i281, label %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282, label %.lr.ph.i.i.i.i274, !llvm.loop !22

_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282: ; preds = %.lr.ph.i.i.i.i274
  %i.ey = icmp eq ptr %.19.i.i.i.i277, %i.df
  br i1 %i.ey, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282
  %i.ez = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i277, i64 32
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = icmp ult i16 %i.et, %i.fa
  br i1 %i.fb, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297, label %.lr.ph.i.i.i.i.i284

.lr.ph.i.i.i.i.i284:                              ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283, %.lr.ph.i.i.i.i.i284
  %.012.i.i.i.i.i285 = phi ptr [ %.1.i.i.i.i.i290, %.lr.ph.i.i.i.i.i284 ], [ %i.eu, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283 ] ; 3 uses
  %.0811.i.i.i.i.i286 = phi ptr [ %.19.i.i.i.i.i287, %.lr.ph.i.i.i.i.i284 ], [ %i.df, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i285, i64 32
  %i.fd = load i16, ptr %i.fc, align 2
  %i.fe = icmp ult i16 %i.fd, %i.et               ; 2 uses
  %.19.i.i.i.i.i287 = select i1 %i.fe, ptr %.0811.i.i.i.i.i286, ptr %.012.i.i.i.i.i285 ; 5 uses
  %.1.in.v.i.i.i.i.i288 = select i1 %i.fe, i64 24, i64 16
  %.1.in.i.i.i.i.i289 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i285, i64 %.1.in.v.i.i.i.i.i288
  %.1.i.i.i.i.i290 = load ptr, ptr %.1.in.i.i.i.i.i289, align 8 ; 2 uses
  %.not.i.i.i.i.i291 = icmp eq ptr %.1.i.i.i.i.i290, null
  br i1 %.not.i.i.i.i.i291, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i292, label %.lr.ph.i.i.i.i.i284, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i292: ; preds = %.lr.ph.i.i.i.i.i284
  %i.ff = icmp eq ptr %.19.i.i.i.i.i287, %i.df
  br i1 %i.ff, label %.critedge.i.i296, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i292
  %i.fg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i287, i64 32
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = icmp ult i16 %i.et, %i.fh
  br i1 %i.fi, label %.critedge.i.i296, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293

.critedge.i.i296:                                 ; preds = %bb.ag, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i292
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.b, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.fj = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr %.19.i.i.i.i.i287, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293: ; preds = %.critedge.i.i296, %bb.ag
  %.sroa.06.0.i.i294 = phi ptr [ %i.fj, %.critedge.i.i296 ], [ %.19.i.i.i.i.i287, %bb.ag ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i294, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8
  br label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297

_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297: ; preds = %bb.af, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293
  %.0.i295 = phi ptr [ %i.fl, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i293 ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i283 ], [ null, %bb.af ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i282 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297
  %i.fm = phi ptr [ %.0.i295, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit297 ], [ null, %bb.ae ] ; 2 uses
  %.not216 = icmp eq ptr %i.ax, null              ; 3 uses
  br i1 %.not216, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.fo = load i16, ptr %i.fn, align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.fo, ptr %i.a, align 2
  %i.fp = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not10.i.i.i.i298 = icmp eq ptr %i.fp, null
  br i1 %.not10.i.i.i.i298, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322, label %.lr.ph.i.i.i.i299

.lr.ph.i.i.i.i299:                                ; preds = %bb.ai, %.lr.ph.i.i.i.i299
  %.012.i.i.i.i300 = phi ptr [ %.1.i.i.i.i305, %.lr.ph.i.i.i.i299 ], [ %i.fp, %bb.ai ] ; 3 uses
  %.0811.i.i.i.i301 = phi ptr [ %.19.i.i.i.i302, %.lr.ph.i.i.i.i299 ], [ %i.df, %bb.ai ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i300, i64 32
  %i.fr = load i16, ptr %i.fq, align 2
  %i.fs = icmp ult i16 %i.fr, %i.fo               ; 2 uses
  %.19.i.i.i.i302 = select i1 %i.fs, ptr %.0811.i.i.i.i301, ptr %.012.i.i.i.i300 ; 3 uses
  %.1.in.v.i.i.i.i303 = select i1 %i.fs, i64 24, i64 16
  %.1.in.i.i.i.i304 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i300, i64 %.1.in.v.i.i.i.i303
  %.1.i.i.i.i305 = load ptr, ptr %.1.in.i.i.i.i304, align 8 ; 2 uses
  %.not.i.i.i.i306 = icmp eq ptr %.1.i.i.i.i305, null
  br i1 %.not.i.i.i.i306, label %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307, label %.lr.ph.i.i.i.i299, !llvm.loop !22

_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307: ; preds = %.lr.ph.i.i.i.i299
  %i.ft = icmp eq ptr %.19.i.i.i.i302, %i.df
  br i1 %i.ft, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308: ; preds = %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307
  %i.fu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i302, i64 32
  %i.fv = load i16, ptr %i.fu, align 2
  %i.fw = icmp ult i16 %i.fo, %i.fv
  br i1 %i.fw, label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322, label %.lr.ph.i.i.i.i.i309

.lr.ph.i.i.i.i.i309:                              ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308, %.lr.ph.i.i.i.i.i309
  %.012.i.i.i.i.i310 = phi ptr [ %.1.i.i.i.i.i315, %.lr.ph.i.i.i.i.i309 ], [ %i.fp, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308 ] ; 3 uses
  %.0811.i.i.i.i.i311 = phi ptr [ %.19.i.i.i.i.i312, %.lr.ph.i.i.i.i.i309 ], [ %i.df, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i310, i64 32
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = icmp ult i16 %i.fy, %i.fo               ; 2 uses
  %.19.i.i.i.i.i312 = select i1 %i.fz, ptr %.0811.i.i.i.i.i311, ptr %.012.i.i.i.i.i310 ; 5 uses
  %.1.in.v.i.i.i.i.i313 = select i1 %i.fz, i64 24, i64 16
  %.1.in.i.i.i.i.i314 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i310, i64 %.1.in.v.i.i.i.i.i313
  %.1.i.i.i.i.i315 = load ptr, ptr %.1.in.i.i.i.i.i314, align 8 ; 2 uses
  %.not.i.i.i.i.i316 = icmp eq ptr %.1.i.i.i.i.i315, null
  br i1 %.not.i.i.i.i.i316, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i317, label %.lr.ph.i.i.i.i.i309, !llvm.loop !22

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i317: ; preds = %.lr.ph.i.i.i.i.i309
  %i.ga = icmp eq ptr %.19.i.i.i.i.i312, %i.df
  br i1 %i.ga, label %.critedge.i.i321, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i317
  %i.gb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i312, i64 32
  %i.gc = load i16, ptr %i.gb, align 2
  %i.gd = icmp ult i16 %i.fo, %i.gc
  br i1 %i.gd, label %.critedge.i.i321, label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318

.critedge.i.i321:                                 ; preds = %bb.aj, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE11lower_boundERS7_.exit.i.i317
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ge = call ptr @_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr %.19.i.i.i.i.i312, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318

_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318: ; preds = %.critedge.i.i321, %bb.aj
  %.sroa.06.0.i.i319 = phi ptr [ %i.ge, %.critedge.i.i321 ], [ %.19.i.i.i.i.i312, %bb.aj ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i319, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8
  br label %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322

_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322: ; preds = %bb.ai, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318
  %.0.i320 = phi ptr [ %i.gg, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEEixERS7_.exit.i318 ], [ null, %_ZNSt3mapItSt10shared_ptrIN6Assimp14MemoryIOStreamEESt4lessItESaISt4pairIKtS3_EEE4findERS7_.exit.i308 ], [ null, %bb.ai ], [ null, %_ZNSt8_Rb_treeItSt4pairIKtSt10shared_ptrIN6Assimp14MemoryIOStreamEEESt10_Select1stIS6_ESt4lessItESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i307 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322
  %i.gh = phi ptr [ %.0.i320, %_ZN6Assimp4Ogre10VertexData12VertexBufferEt.exit322 ], [ null, %bb.ah ] ; 2 uses
  %i.gi = load i32, ptr %i.ba, align 4            ; 2 uses
  %i.gj = icmp ult i32 %i.gi, 28
  br i1 %i.gj, label %switch.lookup, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit

switch.lookup:                                    ; preds = %bb.ak
  %i.gk = zext nneg i32 %i.gi to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.gk
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit:      ; preds = %bb.ak, %switch.lookup
  %.0.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.ak ] ; 3 uses
  br i1 %.not213, label %bb.al, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324

bb.al:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.gm = load i32, ptr %i.gl, align 4            ; 2 uses
  %i.gn = icmp ult i32 %i.gm, 28
  br i1 %i.gn, label %switch.lookup521, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324

switch.lookup521:                                 ; preds = %bb.al
  %i.go = zext nneg i32 %i.gm to i64
  %switch.gep522 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.go
  %switch.load523 = load i8, ptr %switch.gep522, align 1
  %switch.ext524 = zext i8 %switch.load523 to i64
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324:   ; preds = %bb.al, %switch.lookup521, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit
  %i.gp = phi i64 [ 0, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit ], [ %switch.ext524, %switch.lookup521 ], [ 0, %bb.al ] ; 3 uses
  br i1 %.not215, label %bb.am, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326

bb.am:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324
  %i.gq = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.gr = load i32, ptr %i.gq, align 4            ; 2 uses
  %i.gs = icmp ult i32 %i.gr, 28
  br i1 %i.gs, label %switch.lookup525, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326

switch.lookup525:                                 ; preds = %bb.am
  %i.gt = zext nneg i32 %i.gr to i64
  %switch.gep526 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.gt
  %switch.load527 = load i8, ptr %switch.gep526, align 1
  %switch.ext528 = zext i8 %switch.load527 to i64
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326:   ; preds = %bb.am, %switch.lookup525, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324
  %i.gu = phi i64 [ 0, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit324 ], [ %switch.ext528, %switch.lookup525 ], [ 0, %bb.am ] ; 3 uses
  br i1 %.not216, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328, label %bb.an

bb.an:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.gw = load i32, ptr %i.gv, align 4            ; 2 uses
  %i.gx = icmp ult i32 %i.gw, 28
  br i1 %i.gx, label %switch.lookup529, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328

switch.lookup529:                                 ; preds = %bb.an
  %i.gy = zext nneg i32 %i.gw to i64
  %switch.gep530 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.gy
  %switch.load531 = load i8, ptr %switch.gep530, align 1
  %switch.ext532 = zext i8 %switch.load531 to i64
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328:   ; preds = %bb.an, %switch.lookup529, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326
  %i.gz = phi i64 [ 0, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit326 ], [ %switch.ext532, %switch.lookup529 ], [ 0, %bb.an ] ; 3 uses
  %i.ha = load i16, ptr %i.da, align 2
  %i.hb = load ptr, ptr %i.ai, align 8            ; 5 uses
  %i.hc = load ptr, ptr %i.ak, align 8            ; 5 uses
  %.not10.i = icmp eq ptr %i.hb, %i.hc            ; 2 uses
  br i1 %.not10.i, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread, label %.lr.ph.i329

.lr.ph.i329:                                      ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328, %bb.ap
  %.012.i = phi i32 [ %.1.i, %bb.ap ], [ 0, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328 ] ; 2 uses
  %.sroa.07.011.i = phi ptr [ %i.hl, %bb.ap ], [ %i.hb, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328 ] ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 2
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = icmp eq i16 %i.he, %i.ha
  br i1 %i.hf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i329
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 8
  %i.hh = load i32, ptr %i.hg, align 4            ; 2 uses
  %i.hi = icmp ult i32 %i.hh, 28
  br i1 %i.hi, label %switch.lookup533, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i

switch.lookup533:                                 ; preds = %bb.ao
  %i.hj = zext nneg i32 %i.hh to i64
  %switch.gep534 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.hj
  %switch.load535 = load i8, ptr %switch.gep534, align 1
  %switch.ext536 = zext i8 %switch.load535 to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i:    ; preds = %bb.ao, %switch.lookup533
  %.0.i.i.i = phi i32 [ %switch.ext536, %switch.lookup533 ], [ 0, %bb.ao ]
  %i.hk = add i32 %.0.i.i.i, %.012.i
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i, %.lr.ph.i329
  %.1.i = phi i32 [ %i.hk, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i ], [ %.012.i, %.lr.ph.i329 ] ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i, i64 16 ; 2 uses
  %.not.i330 = icmp eq ptr %i.hl, %i.hc
  br i1 %.not.i330, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit, label %.lr.ph.i329

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit:  ; preds = %bb.ap
  br i1 %.not213, label %bb.aq, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread: ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit328
  %brmerge = or i1 %.not213, %.not215
  br i1 %brmerge, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360

bb.aq:                                            ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %25, i64 2
  %i.hn = load i16, ptr %i.hm, align 2
  br label %.lr.ph.i332

.lr.ph.i332:                                      ; preds = %bb.aq, %bb.as
  %.012.i333 = phi i32 [ %.1.i335, %bb.as ], [ 0, %bb.aq ] ; 2 uses
  %.sroa.07.011.i334 = phi ptr [ %i.hw, %bb.as ], [ %i.hb, %bb.aq ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i334, i64 2
  %i.hp = load i16, ptr %i.ho, align 2
  %i.hq = icmp eq i16 %i.hp, %i.hn
  br i1 %i.hq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i332
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i334, i64 8
  %i.hs = load i32, ptr %i.hr, align 4            ; 2 uses
  %i.ht = icmp ult i32 %i.hs, 28
  br i1 %i.ht, label %switch.lookup537, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338

switch.lookup537:                                 ; preds = %bb.ar
  %i.hu = zext nneg i32 %i.hs to i64
  %switch.gep538 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.hu
  %switch.load539 = load i8, ptr %switch.gep538, align 1
  %switch.ext540 = zext i8 %switch.load539 to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338: ; preds = %bb.ar, %switch.lookup537
  %.0.i.i.i339 = phi i32 [ %switch.ext540, %switch.lookup537 ], [ 0, %bb.ar ]
  %i.hv = add i32 %.0.i.i.i339, %.012.i333
  br label %bb.as

bb.as:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338, %.lr.ph.i332
  %.1.i335 = phi i32 [ %i.hv, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i338 ], [ %.012.i333, %.lr.ph.i332 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i334, i64 16 ; 2 uses
  %.not.i336 = icmp eq ptr %i.hw, %i.hc
  br i1 %.not.i336, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340.loopexit, label %.lr.ph.i332

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340.loopexit: ; preds = %bb.as
  %i.hx = zext i32 %.1.i335 to i64
  br label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340: ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340.loopexit, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit
  %i.hy = phi i64 [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit ], [ %i.hx, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340.loopexit ] ; 2 uses
  br i1 %.not215, label %bb.at, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350

bb.at:                                            ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340
  %i.hz = getelementptr inbounds nuw i8, ptr %29, i64 2
  %i.ia = load i16, ptr %i.hz, align 2
  br label %.lr.ph.i342

.lr.ph.i342:                                      ; preds = %bb.at, %bb.av
  %.012.i343 = phi i32 [ %.1.i345, %bb.av ], [ 0, %bb.at ] ; 2 uses
  %.sroa.07.011.i344 = phi ptr [ %i.ij, %bb.av ], [ %i.hb, %bb.at ] ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i344, i64 2
  %i.ic = load i16, ptr %i.ib, align 2
  %i.id = icmp eq i16 %i.ic, %i.ia
  br i1 %i.id, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i342
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i344, i64 8
  %i.if = load i32, ptr %i.ie, align 4            ; 2 uses
  %i.ig = icmp ult i32 %i.if, 28
  br i1 %i.ig, label %switch.lookup541, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348

switch.lookup541:                                 ; preds = %bb.au
  %i.ih = zext nneg i32 %i.if to i64
  %switch.gep542 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.ih
  %switch.load543 = load i8, ptr %switch.gep542, align 1
  %switch.ext544 = zext i8 %switch.load543 to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348: ; preds = %bb.au, %switch.lookup541
  %.0.i.i.i349 = phi i32 [ %switch.ext544, %switch.lookup541 ], [ 0, %bb.au ]
  %i.ii = add i32 %.0.i.i.i349, %.012.i343
  br label %bb.av

bb.av:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348, %.lr.ph.i342
  %.1.i345 = phi i32 [ %i.ii, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i348 ], [ %.012.i343, %.lr.ph.i342 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i344, i64 16 ; 2 uses
  %.not.i346 = icmp eq ptr %i.ij, %i.hc
  br i1 %.not.i346, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit, label %.lr.ph.i342

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit: ; preds = %bb.av
  %i.ik = zext i32 %.1.i345 to i64
  br label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350: ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340
  %i.il = phi i64 [ %i.hy, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit ], [ %i.hy, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340 ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %.shrunk = phi i32 [ %.1.i, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit ], [ %.1.i, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340 ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %i.im = phi i64 [ %i.ik, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350.loopexit ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit340 ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  br i1 %.not216, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360, label %bb.aw

bb.aw:                                            ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350
  %i.in = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.io = load i16, ptr %i.in, align 2
  br i1 %.not10.i, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360, label %.lr.ph.i352

.lr.ph.i352:                                      ; preds = %bb.aw, %bb.ay
  %.012.i353 = phi i32 [ %.1.i355, %bb.ay ], [ 0, %bb.aw ] ; 2 uses
  %.sroa.07.011.i354 = phi ptr [ %i.ix, %bb.ay ], [ %i.hb, %bb.aw ] ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i354, i64 2
  %i.iq = load i16, ptr %i.ip, align 2
  %i.ir = icmp eq i16 %i.iq, %i.io
  br i1 %i.ir, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i352
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i354, i64 8
  %i.it = load i32, ptr %i.is, align 4            ; 2 uses
  %i.iu = icmp ult i32 %i.it, 28
  br i1 %i.iu, label %switch.lookup545, label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358

switch.lookup545:                                 ; preds = %bb.ax
  %i.iv = zext nneg i32 %i.it to i64
  %switch.gep546 = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp4Ogre7SubMesh19ConvertToAssimpMeshEPNS0_4MeshE.7, i64 %i.iv
  %switch.load547 = load i8, ptr %switch.gep546, align 1
  %switch.ext548 = zext i8 %switch.load547 to i32
  br label %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358

_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358: ; preds = %bb.ax, %switch.lookup545
  %.0.i.i.i359 = phi i32 [ %switch.ext548, %switch.lookup545 ], [ 0, %bb.ax ]
  %i.iw = add i32 %.0.i.i.i359, %.012.i353
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358, %.lr.ph.i352
  %.1.i355 = phi i32 [ %i.iw, %_ZNK6Assimp4Ogre13VertexElement4SizeEv.exit.i358 ], [ %.012.i353, %.lr.ph.i352 ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.07.011.i354, i64 16 ; 2 uses
  %.not.i356 = icmp eq ptr %i.ix, %i.hc
  br i1 %.not.i356, label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit, label %.lr.ph.i352

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit: ; preds = %bb.ay
  %i.iy = zext i32 %.1.i355 to i64
  br label %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360

_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360: ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread, %bb.aw, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350
  %i.iz = phi i64 [ %i.im, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit ], [ %i.im, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350 ], [ %i.im, %bb.aw ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %.shrunk515 = phi i32 [ %.shrunk, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit ], [ %.shrunk, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350 ], [ %.shrunk, %bb.aw ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ]
  %i.ja = phi i64 [ %i.il, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit ], [ %i.il, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350 ], [ %i.il, %bb.aw ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %i.jb = phi i64 [ %i.iy, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360.loopexit ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit350 ], [ 0, %bb.aw ], [ 0, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit.thread ] ; 3 uses
  %i.jc = zext i32 %.shrunk515 to i64             ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = icmp ne ptr %i.je, %i.jg
  %.not217 = icmp eq ptr %i.er, null              ; 4 uses
  br i1 %.not217, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360
  %i.ji = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #30 ; 2 uses
  %i.jj = icmp eq i32 %i.bl, 0
  br i1 %i.jj, label %.loopexit420, label %.loopexit420.loopexit

.loopexit420.loopexit:                            ; preds = %bb.az
  %i.jk = add nsw i64 %i.cu, -12                  ; 2 uses
  %i.jl = urem i64 %i.jk, 12
  %i.jm = sub nuw nsw i64 %i.jk, %i.jl
  %i.jn = add nsw i64 %i.jm, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ji, i8 0, i64 %i.jn, i1 false)
  br label %.loopexit420

.loopexit420:                                     ; preds = %.loopexit420.loopexit, %bb.az
  %i.jo = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ji, ptr %i.jo, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %.loopexit420, %_ZNK6Assimp4Ogre10VertexData10VertexSizeEt.exit360
  %.not218 = icmp eq ptr %i.fm, null
  br i1 %.not218, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jp = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4            ; 2 uses
  %.off = add i32 %i.jq, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit, label %bb.bc

_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit: ; preds = %bb.bb
  %i.jr = icmp eq i32 %i.jq, 2
  %i.js = select i1 %i.jr, i32 3, i32 2
  %i.jt = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store i32 %i.js, ptr %i.jt, align 8
  %i.ju = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #30 ; 2 uses
  %i.jv = icmp eq i32 %i.bl, 0
  br i1 %i.jv, label %.loopexit419, label %.loopexit419.loopexit

.loopexit419.loopexit:                            ; preds = %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit
  %i.jw = add nsw i64 %i.cu, -12                  ; 2 uses
  %i.jx = urem i64 %i.jw, 12
  %i.jy = sub nuw nsw i64 %i.jw, %i.jx
  %i.jz = add nsw i64 %i.jy, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ju, i8 0, i64 %i.jz, i1 false)
  br label %.loopexit419

.loopexit419:                                     ; preds = %.loopexit419.loopexit, %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store ptr %i.ju, ptr %i.ka, align 8
  br label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.kb = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.kc = load i32, ptr %i.jp, align 4, !noalias !39
  call void @_ZN6Assimp4Ogre13VertexElement12TypeToStringB5cxx11ENS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i32 noundef %i.kc)
  invoke void @_ZN6Assimp6Logger4warnIJRA24_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA45_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.kb, ptr noundef nonnull align 1 dereferenceable(24) @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(45) @.str.44)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kd = load ptr, ptr %12, align 8              ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bd
  %i.kg = load i64, ptr %i.ke, align 8
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ki = landingpad { ptr, i32 }
          cleanup
  %i.kj = load ptr, ptr %12, align 8              ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %bb.be
  %i.km = load i64, ptr %i.kk, align 8
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.bf:                                            ; preds = %.loopexit419, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ba
  %.0179 = phi ptr [ %i.fm, %.loopexit419 ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.ba ] ; 13 uses
  %.not219 = icmp eq ptr %i.gh, null
  br i1 %.not219, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4            ; 2 uses
  %.off231 = add i32 %i.kp, -1
  %switch232 = icmp ult i32 %.off231, 2
  br i1 %switch232, label %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit366, label %bb.bh

_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit366: ; preds = %bb.bg
  %i.kq = icmp eq i32 %i.kp, 2
  %i.kr = select i1 %i.kq, i32 3, i32 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.j, i64 180
  store i32 %i.kr, ptr %i.ks, align 4
  %i.kt = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #30 ; 2 uses
  %i.ku = icmp eq i32 %i.bl, 0
  br i1 %i.ku, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit366
  %i.kv = add nsw i64 %i.cu, -12                  ; 2 uses
  %i.kw = urem i64 %i.kv, 12
  %i.kx = sub nuw nsw i64 %i.kv, %i.kw
  %i.ky = add nsw i64 %i.kx, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kt, i8 0, i64 %i.ky, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNK6Assimp4Ogre13VertexElement14ComponentCountEv.exit366
  %i.kz = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store ptr %i.kt, ptr %i.kz, align 8
  br label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.la = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.lb = load i32, ptr %i.ko, align 4, !noalias !42
  call void @_ZN6Assimp4Ogre13VertexElement12TypeToStringB5cxx11ENS1_4TypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i32 noundef %i.lb)
  invoke void @_ZN6Assimp6Logger4warnIJRA24_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA45_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.la, ptr noundef nonnull align 1 dereferenceable(24) @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 1 dereferenceable(45) @.str.44)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.lc = load ptr, ptr %13, align 8              ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %bb.bi
  %i.lf = load i64, ptr %i.ld, align 8
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = load ptr, ptr %13, align 8              ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %bb.bj
  %i.ll = load i64, ptr %i.lj, align 8
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.lm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZN6aiFaceD2Ev.exit373

bb.bk:                                            ; preds = %.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, %bb.bf
  %.0181 = phi ptr [ %i.gh, %.loopexit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369 ], [ null, %bb.bf ] ; 13 uses
  %i.ln = icmp ne ptr %.0179, null                ; 2 uses
  br i1 %i.ln, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lo = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.lp = load ptr, ptr %i.lo, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %i.lq = phi ptr [ %i.lp, %bb.bl ], [ null, %bb.bk ] ; 4 uses
  %i.lr = icmp ne ptr %.0181, null                ; 2 uses
  br i1 %i.lr, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ls = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.lt = load ptr, ptr %i.ls, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.lu = phi ptr [ %i.lt, %bb.bn ], [ null, %bb.bm ] ; 4 uses
  %i.lv = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8            ; 10 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lz = load i8, ptr %i.ly, align 8, !range !27, !noundef !28
  %i.ma = trunc nuw i8 %i.lz to i1                ; 2 uses
  %i.mb = select i1 %i.ma, i64 4, i64 2           ; 4 uses
  %i.mc = select i1 %i.ma, i64 12, i64 6
  br i1 %i.br, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bo
  %i.md = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.mg = icmp ne ptr %i.lq, null
  %or.cond = select i1 %i.ln, i1 %i.mg, i1 false  ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %29, i64 4 ; 3 uses
  %i.mi = icmp ne ptr %i.lu, null
  %or.cond3 = select i1 %i.lr, i1 %i.mi, i1 false ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 3 uses
  br label %bb.bp

._crit_edge:                                      ; preds = %_ZN6aiFaceD2Ev.exit, %bb.bo
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = icmp ne ptr %i.ml, null
  %or.cond5 = and i1 %i.jh, %i.mm
  br i1 %or.cond5, label %bb.dq, label %bb.eh

bb.bp:                                            ; preds = %.lr.ph, %_ZN6aiFaceD2Ev.exit
  %.0182430 = phi i64 [ 0, %.lr.ph ], [ %i.vs, %_ZN6aiFaceD2Ev.exit ] ; 4 uses
  %i.mn = call noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #30 ; 9 uses
  %i.mo = mul nuw nsw i64 %.0182430, %i.mc
  %i.mp = load ptr, ptr %i.lx, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mr = load ptr, ptr %i.mq, align 8
  %i.ms = invoke noundef i32 %i.mr(ptr noundef nonnull align 8 dereferenceable(33) %i.lx, i64 noundef %i.mo, i32 noundef 0)
          to label %bb.bq unwind label %.thread411 ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  %i.mt = load ptr, ptr %i.bi, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i8, ptr %i.mu, align 8, !range !27, !noundef !28
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mx = load ptr, ptr %i.lx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load ptr, ptr %i.my, align 8
  %i.na = invoke noundef i64 %i.mz(ptr noundef nonnull align 8 dereferenceable(33) %i.lx, ptr noundef nonnull %i.mn, i64 noundef %i.mb, i64 noundef 3)
          to label %bb.bx unwind label %.thread411 ; 0 uses

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i16 0, ptr %i.e, align 2
  %i.nb = load ptr, ptr %i.lx, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = invoke noundef i64 %i.nd(ptr noundef nonnull align 8 dereferenceable(33) %i.lx, ptr noundef nonnull %i.e, i64 noundef %i.mb, i64 noundef 1)
          to label %bb.bt unwind label %bb.bw     ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.nf = load i16, ptr %i.e, align 2
  %i.ng = zext i16 %i.nf to i32
  store i32 %i.ng, ptr %i.mn, align 4
  %i.nh = load ptr, ptr %i.lx, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = invoke noundef i64 %i.nj(ptr noundef nonnull align 8 dereferenceable(33) %i.lx, ptr noundef nonnull %i.e, i64 noundef %i.mb, i64 noundef 1)
          to label %bb.bu unwind label %bb.bw     ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.nl = load i16, ptr %i.e, align 2
  %i.nm = zext i16 %i.nl to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store i32 %i.nm, ptr %i.nn, align 4
  %i.no = load ptr, ptr %i.lx, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = invoke noundef i64 %i.nq(ptr noundef nonnull align 8 dereferenceable(33) %i.lx, ptr noundef nonnull %i.e, i64 noundef %i.mb, i64 noundef 1)
          to label %bb.bv unwind label %bb.bw     ; 0 uses

bb.bv:                                            ; preds = %bb.bu
  %i.ns = load i16, ptr %i.e, align 2
  %i.nt = zext i16 %i.ns to i32
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i32 %i.nt, ptr %i.nu, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %.thread404

bb.bx:                                            ; preds = %bb.br, %bb.bv
  %i.nw = load ptr, ptr %i.cr, align 8
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.nw, i64 %.0182430 ; 2 uses
  store i32 3, ptr %i.nx, align 8
  %i.ny = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #30
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 3 uses
  store ptr %i.ny, ptr %i.nz, align 8
  %i.oa = mul nuw nsw i64 %.0182430, 3            ; 7 uses
  %i.ob = trunc i64 %i.oa to i32                  ; 2 uses
  store i32 %i.ob, ptr %i.ny, align 4
  %i.oc = load i32, ptr %i.mn, align 4            ; 2 uses
  %i.od = zext i32 %i.oc to i64                   ; 4 uses
  invoke void @_ZN6Assimp4Ogre11IVertexData16AddVertexMappingEjj(ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i32 noundef %i.oc, i32 noundef %i.ob)
          to label %bb.ca unwind label %bb.cf

bb.bz:                                            ; preds = %bb.bx
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %.thread404

bb.ca:                                            ; preds = %bb.by
  %i.of = mul nuw i64 %i.jc, %i.od
  %i.og = load i16, ptr %i.md, align 4
  %i.oh = zext i16 %i.og to i64
  %i.oi = add nuw i64 %i.of, %i.oh
  %i.oj = load ptr, ptr %.0.i, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 32
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = invoke noundef i32 %i.ol(ptr noundef nonnull align 8 dereferenceable(33) %.0.i, i64 noundef %i.oi, i32 noundef 0)
          to label %bb.cb unwind label %bb.cf     ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.on = load ptr, ptr %i.m, align 8
  %i.oo = getelementptr inbounds nuw [12 x i8], ptr %i.on, i64 %i.oa
  %i.op = load ptr, ptr %.0.i, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.or = load ptr, ptr %i.oq, align 8
  %i.os = invoke noundef i64 %i.or(ptr noundef nonnull align 8 dereferenceable(33) %.0.i, ptr noundef %i.oo, i64 noundef %.0.i.i, i64 noundef 1)
          to label %bb.cc unwind label %bb.cf     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not217, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ot = mul nuw i64 %i.ja, %i.od
  %i.ou = load i16, ptr %i.me, align 4
  %i.ov = zext i16 %i.ou to i64
  %i.ow = add nuw i64 %i.ot, %i.ov
  %i.ox = load ptr, ptr %i.er, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.oz = load ptr, ptr %i.oy, align 8
  %i.pa = invoke noundef i32 %i.oz(ptr noundef nonnull align 8 dereferenceable(33) %i.er, i64 noundef %i.ow, i32 noundef 0)
          to label %bb.ce unwind label %bb.cf     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  %i.pb = load ptr, ptr %i.mf, align 8
  %i.pc = getelementptr inbounds nuw [12 x i8], ptr %i.pb, i64 %i.oa
  %i.pd = load ptr, ptr %i.er, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = invoke noundef i64 %i.pf(ptr noundef nonnull align 8 dereferenceable(33) %i.er, ptr noundef %i.pc, i64 noundef %i.gp, i64 noundef 1)
          to label %bb.cg unwind label %bb.cf     ; 0 uses

bb.cf:                                            ; preds = %bb.do, %bb.dn, %bb.dk, %bb.dj, %bb.dh, %bb.dg, %bb.de, %bb.dd, %bb.dc, %bb.da, %bb.cz, %bb.cw, %bb.cv, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.ci, %bb.ch, %bb.ce, %bb.cd, %bb.cb, %bb.ca, %bb.by
  %i.ph = landingpad { ptr, i32 }
          cleanup
  br label %.thread404

bb.cg:                                            ; preds = %bb.ce, %bb.cc
  br i1 %or.cond, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.pi = mul nuw i64 %i.iz, %i.od
  %i.pj = load i16, ptr %i.mh, align 4
  %i.pk = zext i16 %i.pj to i64
  %i.pl = add nuw i64 %i.pi, %i.pk
  %i.pm = load ptr, ptr %.0179, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = invoke noundef i32 %i.po(ptr noundef nonnull align 8 dereferenceable(33) %.0179, i64 noundef %i.pl, i32 noundef 0)
          to label %bb.ci unwind label %bb.cf     ; 0 uses

bb.ci:                                            ; preds = %bb.ch
  %i.pq = getelementptr inbounds nuw [12 x i8], ptr %i.lq, i64 %i.oa ; 2 uses
  %i.pr = load ptr, ptr %.0179, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = load ptr, ptr %i.ps, align 8
  %i.pu = invoke noundef i64 %i.pt(ptr noundef nonnull align 8 dereferenceable(33) %.0179, ptr noundef nonnull %i.pq, i64 noundef %i.gu, i64 noundef 1)
          to label %bb.cj unwind label %bb.cf     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4
  %i.px = fsub float 1.000000e+00, %i.pw
  store float %i.px, ptr %i.pv, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cg
  br i1 %or.cond3, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.py = mul nuw i64 %i.jb, %i.od
  %i.pz = load i16, ptr %i.mj, align 4
  %i.qa = zext i16 %i.pz to i64
  %i.qb = add nuw i64 %i.py, %i.qa
  %i.qc = load ptr, ptr %.0181, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = invoke noundef i32 %i.qe(ptr noundef nonnull align 8 dereferenceable(33) %.0181, i64 noundef %i.qb, i32 noundef 0)
          to label %bb.cm unwind label %bb.cf     ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  %i.qg = getelementptr inbounds nuw [12 x i8], ptr %i.lu, i64 %i.oa ; 2 uses
  %i.qh = load ptr, ptr %.0181, align 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8
  %i.qk = invoke noundef i64 %i.qj(ptr noundef nonnull align 8 dereferenceable(33) %.0181, ptr noundef nonnull %i.qg, i64 noundef %i.gz, i64 noundef 1)
end_hunk_1
