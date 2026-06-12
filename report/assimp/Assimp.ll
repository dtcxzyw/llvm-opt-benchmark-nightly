inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE7_M_copyILb0ENSA_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_:bb.a

bb.v:                                             ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink13.i.i36, i64 24
  store ptr %i.ax, ptr %i.ay, align 8
  br label %bb.z

bb.w:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i42, %bb.u
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.k
  %.pn = phi { ptr, i32 } [ %i.az, %bb.w ], [ %i.z, %bb.k ]
  %.030 = extractvalue { ptr, i32 } %.pn, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %.030) #47 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink13.i.i)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_rethrow() #48
          to label %bb.ad unwind label %bb.aa

bb.z:                                             ; preds = %bb.v, %bb.t
  %.0.in = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %.0 = load ptr, ptr %.0.in, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.0, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !75

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  resume { ptr, i32 } %i.bb

._crit_edge:                                      ; preds = %bb.z, %bb.l
  ret ptr %.sink13.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #44
  unreachable

bb.ad:                                            ; preds = %bb.y
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKj12aiMatrix4x4tIfEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 104) #45
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23LogToCallbackRedirectorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !63, !align !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.a, @_ZN6AssimpL18gPredefinedStreamsB5cxx11E
  br i1 %.not5.i.i.i, label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.03.06.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = load ptr, ptr %.sroa.03.06.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, @_ZN6AssimpL18gPredefinedStreamsB5cxx11E
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !77

_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %i.e, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #47
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.06.i.i.i) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.06.i.i.i, i64 noundef 24) #45
  br label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.thread

_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.thread: ; preds = %bb.b, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23LogToCallbackRedirectorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, align 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !63, !align !64
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.a, @_ZN6AssimpL18gPredefinedStreamsB5cxx11E
  br i1 %.not5.i.i.i.i, label %_ZN23LogToCallbackRedirectorD2Ev.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %.sroa.03.06.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = load ptr, ptr %.sroa.03.06.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, @_ZN6AssimpL18gPredefinedStreamsB5cxx11E
  br i1 %.not.i.i.i.i, label %_ZN23LogToCallbackRedirectorD2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.j = icmp eq ptr %i.e, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.i
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #47, !inline_history !78
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZSt4findISt14_List_iteratorIPN6Assimp9LogStreamEES3_ET_S5_S5_RKT0_.exit.i
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_ZN6AssimpL18gPredefinedStreamsB5cxx11E, i64 16), align 8
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.06.i.i.i.i) #47
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.06.i.i.i.i, i64 noundef 24) #45
  br label %_ZN23LogToCallbackRedirectorD2Ev.exit

_ZN23LogToCallbackRedirectorD2Ev.exit:            ; preds = %bb.b, %bb.a, %bb.d
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN23LogToCallbackRedirector5writeEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !63, !align !64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.c(ptr noundef %1, ptr noundef %i.e)
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #7

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #31

declare noundef zeroext i1 @_ZNK6Assimp8Importer20IsExtensionSupportedEPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i32 } @_ZNK7aiScene26GetEmbeddedTextureAndIndexEPKc(ptr noundef nonnull align 8 dereferenceable(1168) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1
  %i.c = icmp eq i8 %i.b, 42
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #47, !inline_history !79 ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %2 = icmp sgt i32 %i.f, -1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %4 = load i32, ptr %3, align 8
  %.not24 = icmp ugt i32 %4, %i.f
  %or.cond = select i1 %2, i1 %.not24, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge27

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = and i64 %i.e, 2147483647
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8
  br label %.critedge27

bb.e:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #49 ; 2 uses
  %i.m = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 92) #49 ; 2 uses
  %i.n = icmp ult ptr %i.l, %i.m
  %spec.select.i = select i1 %i.n, ptr %i.m, ptr %i.l ; 2 uses
  %.not.i = icmp eq ptr %spec.select.i, null
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1
  %i.p = select i1 %.not.i, ptr %1, ptr %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %.not2352.not = icmp eq i32 %i.r, 0
  br i1 %.not2352.not, label %.critedge27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %wide.trip.count = zext i32 %i.r to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 36 ; 3 uses
  %i.x = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.w, i32 noundef 47) #49 ; 2 uses
  %i.y = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.w, i32 noundef 92) #49 ; 2 uses
  %i.z = icmp ult ptr %i.x, %i.y
  %spec.select.i28 = select i1 %i.z, ptr %i.y, ptr %i.x ; 2 uses
  %.not.i29 = icmp eq ptr %spec.select.i28, null
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 1
  %i.ab = select i1 %.not.i29, ptr %i.w, ptr %i.aa
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.p) #49
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %.critedge27.loopexit.split.loop.exit61, label %.critedge

.critedge:                                        ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge27, label %bb.f, !llvm.loop !80

.critedge27.loopexit.split.loop.exit61:           ; preds = %bb.f
  %i.ad = trunc nuw i64 %indvars.iv to i32
  br label %.critedge27

.critedge27:                                      ; preds = %.critedge, %.critedge27.loopexit.split.loop.exit61, %bb.e, %bb.c, %bb.a, %bb.d
  %.sroa.051.1 = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.e ], [ %i.v, %.critedge27.loopexit.split.loop.exit61 ], [ null, %.critedge ]
  %.sroa.7.1 = phi i32 [ %i.f, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.e ], [ %i.ad, %.critedge27.loopexit.split.loop.exit61 ], [ -1, %.critedge ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.051.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.7.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef i32 @_ZL16stbi__stdio_readPvPci(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #29 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0)
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal void @_ZL16stbi__stdio_skipPvi(ptr nofree noundef captures(none) %0, i32 noundef %1) #29 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) ; 0 uses
  %i.c = tail call i32 @fgetc(ptr noundef %0)     ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @ungetc(i32 noundef %i.c, ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZL15stbi__stdio_eofPv(ptr nofree noundef captures(none) %0) #29 {
bb.a:
  %i.a = tail call i32 @feof(ptr noundef %0) #47
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ferror(ptr noundef %0) #47
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.stbi__png, align 8          ; 10 uses
  store i32 8, ptr %5, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 26 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 31 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 21 uses
  %.pre.i.i = load ptr, ptr %i.c, align 8         ; 3 uses
  %.pre7.i.i = load ptr, ptr %i.d, align 8        ; 2 uses
  %i.m = icmp ult ptr %.pre.i.i, %.pre7.i.i
  br i1 %i.m, label %bb.ap, label %bb.aq

bb.b:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.i
  %i.n = icmp ult ptr %i.fz, %i.fy
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.e, align 8
  %.not.i.i.1.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.1.i, label %bb.bm, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.g, align 8
  %i.r = load i32, ptr %i.i, align 4
  %i.s = tail call noundef i32 %i.p(ptr noundef %i.q, ptr noundef nonnull %i.h, i32 noundef %i.r), !inline_history !81 ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8
  %i.u = load ptr, ptr %i.j, align 8
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = load i32, ptr %i.k, align 8
  %i.aa = add nsw i32 %i.z, %i.y
  store i32 %i.aa, ptr %i.k, align 8
  %i.ab = icmp eq i32 %i.s, 0
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = sext i32 %i.s to i64
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 %i.ac
  %.pre.i.i.1.i = load i8, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i: ; preds = %bb.f, %bb.e
  %i.ae = phi i8 [ 0, %bb.f ], [ %.pre.i.i.1.i, %bb.e ]
  %.sink.i.i.i.1.i = phi ptr [ %i.l, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  store ptr %.sink.i.i.i.1.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.1.i

bb.g:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.fz, i64 1 ; 2 uses
  store ptr %i.af, ptr %i.c, align 8
  %i.ag = load i8, ptr %i.fz, align 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i.1.i

_ZL10stbi__get8P13stbi__context.exit.i.1.i:       ; preds = %bb.g, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i
  %i.ah = phi ptr [ %i.fy, %bb.g ], [ %.sink.i.i.i.1.i, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ] ; 2 uses
  %i.ai = phi ptr [ %i.af, %bb.g ], [ %i.l, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ] ; 3 uses
  %.0.i.i.1.i = phi i8 [ %i.ag, %bb.g ], [ %i.ae, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.1.i ]
  %.not.i.1.i = icmp eq i8 %.0.i.i.1.i, 80
  br i1 %.not.i.1.i, label %bb.h, label %bb.bm

bb.h:                                             ; preds = %_ZL10stbi__get8P13stbi__context.exit.i.1.i
  %i.aj = icmp ult ptr %i.ai, %i.ah
  br i1 %i.aj, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.e, align 8
  %.not.i.i.2.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.2.i, label %bb.bm, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = load ptr, ptr %i.g, align 8
  %i.an = load i32, ptr %i.i, align 4
  %i.ao = tail call noundef i32 %i.al(ptr noundef %i.am, ptr noundef nonnull %i.h, i32 noundef %i.an), !inline_history !81 ; 2 uses
  %i.ap = load ptr, ptr %i.c, align 8
  %i.aq = load ptr, ptr %i.j, align 8
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = load i32, ptr %i.k, align 8
  %i.aw = add nsw i32 %i.av, %i.au
  store i32 %i.aw, ptr %i.k, align 8
  %i.ax = icmp eq i32 %i.ao, 0
  br i1 %i.ax, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = sext i32 %i.ao to i64
  %i.az = getelementptr inbounds i8, ptr %i.h, i64 %i.ay
  %.pre.i.i.2.i = load i8, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i

bb.l:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8
  store i8 0, ptr %i.h, align 8
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i.2.i: ; preds = %bb.l, %bb.k
  %i.ba = phi i8 [ 0, %bb.l ], [ %.pre.i.i.2.i, %bb.k ]
  %.sink.i.i.i.2.i = phi ptr [ %i.l, %bb.l ], [ %i.az, %bb.k ] ; 2 uses
  store ptr %.sink.i.i.i.2.i, ptr %i.d, align 8
  store ptr %i.l, ptr %i.c, align 8
  br label %_ZL10stbi__get8P13stbi__context.exit.i.2.i

end_hunk_0
