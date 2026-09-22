Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/enabled_protocols_model?download=true
inline.NumInlined: 506
inline.NumDeleted: 257
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN21EnabledProtocolsModel7setDataERK11QModelIndexRK8QVarianti:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.not23 = icmp eq i64 %i.q, 0
  br i1 %.not23, label %_ZNK11QModelIndex7isValidEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = call noundef i32 @_ZNK8QVariant5toIntEPb(ptr noundef align 8 dereferenceable_or_null(32) %2, ptr noundef null)
  %i.t = icmp eq i32 %i.s, 2
  %i.u = zext i1 %i.t to i8
  %i.v = getelementptr i8, ptr %i.r, i64 88
  store i8 %i.u, ptr %i.v, align 8
  br label %_ZNK11QModelIndex7isValidEv.exit.thread

_ZNK11QModelIndex7isValidEv.exit.thread:          ; preds = %bb.a, %bb.g, %bb.f, %_ZeqRK8QVariantS1_.exit, %bb.c
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %_ZeqRK8QVariantS1_.exit ], [ false, %bb.f ], [ true, %bb.g ]
  ret i1 %.1
}

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN8QVariantD1Ev(ptr noundef align 8 dead_on_return(32) dereferenceable_or_null(32)) unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare noundef i32 @_ZNK8QVariant5toIntEPb(ptr noundef align 8 dereferenceable_or_null(32), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21EnabledProtocolsModel8populateEv(ptr noundef align 8 dereferenceable_or_null(24) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %class.QVariant, align 8            ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  tail call void @_ZN18QAbstractItemModel15beginResetModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
  %i.c = call i32 @proto_get_first_protocol(ptr noundef nonnull %i.b) ; 2 uses
  %.not11 = icmp eq i32 %i.c, -1
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  call void @_ZN18QAbstractItemModel13endResetModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.012 = phi i32 [ %i.c, %.lr.ph ], [ %i.n, %bb.h ] ; 2 uses
  %i.e = call zeroext i1 @proto_can_toggle_protocol(i32 noundef %.012)
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @find_protocol_by_id(i32 noundef %.012) ; 3 uses
  %i.g = call zeroext i1 @proto_is_pino(ptr noundef %i.f)
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noalias noundef dereferenceable_or_null(104) ptr @_Znwm(i64 noundef 104) #24 ; 4 uses
  %i.i = load ptr, ptr %i.d, align 8
  invoke void @_ZN16ProtocolTreeItemC2EP9_protocolP19EnabledProtocolItem(ptr noundef align 8 dereferenceable_or_null(104) %i.h, ptr noundef %i.f, ptr noundef %i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !38
  store ptr %i.h, ptr %i.a, align 8, !noalias !38
  call void @_ZN8QVariantC1E9QMetaTypePKv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %1, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !38
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI8QVariantE7emplaceIJS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.k, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE12prependChildEPS0_.exit unwind label %bb.f

common.resume:                                    ; preds = %bb.g, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %common.resume

_ZN19ModelHelperTreeItemI19EnabledProtocolItemE12prependChildEPS0_.exit: ; preds = %bb.e
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @proto_heuristic_dissector_foreach(ptr noundef %i.f, ptr noundef nonnull @_ZL16addHeuristicItemPvS_, ptr noundef %i.h)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 104) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %common.resume

bb.h:                                             ; preds = %bb.b, %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE12prependChildEPS0_.exit, %bb.c
  %i.n = call i32 @proto_get_next_protocol(ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq i32 %i.n, -1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !37
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QAbstractItemModel15beginResetModelEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @proto_get_first_protocol(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @proto_can_toggle_protocol(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @find_protocol_by_id(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @proto_is_pino(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @proto_heuristic_dissector_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define internal void @_ZL16addHeuristicItemPvS_(ptr noundef %0, ptr noundef %1) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %class.QVariant, align 8            ; 7 uses
  %i.b = tail call noalias noundef dereferenceable_or_null(104) ptr @_Znwm(i64 noundef 104) #24 ; 3 uses
  invoke void @_ZN17HeuristicTreeItemC2EP15heur_dtbl_entryP19EnabledProtocolItem(ptr noundef align 8 dereferenceable_or_null(104) %i.b, ptr noundef %0, ptr noundef %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !41
  store ptr %i.b, ptr %i.a, align 8, !noalias !41
  call void @_ZN8QVariantC1E9QMetaTypePKv(ptr noundef nonnull align 8 dereferenceable_or_null(32) %2, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !41
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI8QVariantE7emplaceIJS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.c, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE12prependChildEPS0_.exit unwind label %bb.c

common.resume:                                    ; preds = %bb.d, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.e, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume

_ZN19ModelHelperTreeItemI19EnabledProtocolItemE12prependChildEPS0_.exit: ; preds = %bb.b
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.d:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef 104) #25
  br label %common.resume
}

; Function Attrs: null_pointer_is_valid
declare i32 @proto_get_next_protocol(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @_ZN18QAbstractItemModel13endResetModelEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21EnabledProtocolsModel12applyChangesEb(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(24) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QMetaType, align 8           ; 6 uses
  %3 = alloca %class.QMetaType, align 8           ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %class.QVariant, align 8            ; 8 uses
  %5 = alloca %class.QVariant, align 8            ; 10 uses
  %6 = alloca %class.QVariant, align 8            ; 8 uses
  %7 = alloca %class.QVariant, align 8            ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph36, label %.critedge

.lr.ph36:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.b

._crit_edge37:                                    ; preds = %._crit_edge
  br i1 %.1.lcssa, label %bb.u, label %.critedge

bb.b:                                             ; preds = %.lr.ph36, %._crit_edge
  %indvars.iv39 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next40, %._crit_edge ] ; 3 uses
  %i.k = phi ptr [ %i.d, %.lr.ph36 ], [ %i.aj, %._crit_edge ]
  %i.l = phi ptr [ %i.c, %.lr.ph36 ], [ %i.ai, %._crit_edge ]
  %.034 = phi i1 [ false, %.lr.ph36 ], [ %.1.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false), !noalias !52
  store i64 2, ptr %i.h, align 8, !noalias !52
  %i.m = load i64, ptr %i.k, align 8, !noalias !53
  %i.n = icmp ugt i64 %i.m, %indvars.iv39
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !53
  %i.q = getelementptr [32 x i8], ptr %i.p, i64 %indvars.iv39
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %6, %bb.b ]
  invoke void @_ZN8QVariantC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(32) %7, ptr noundef align 8 dereferenceable(32) %i.r)
          to label %_ZNK5QListI8QVariantE5valueEx.exit.i unwind label %bb.e

common.resume:                                    ; preds = %bb.k, %bb.s, %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.s, %bb.e ], [ %i.as, %bb.k ], [ %i.bp, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !52
  br label %common.resume

_ZNK5QListI8QVariantE5valueEx.exit.i:             ; preds = %bb.d
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !52
  %i.t = invoke noundef ptr @_ZN14VariantPointerI19EnabledProtocolItemE5asPtrE8QVariant(ptr noundef nonnull align 8 %7)
          to label %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit unwind label %bb.f ; 6 uses

bb.f:                                             ; preds = %_ZNK5QListI8QVariantE5valueEx.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %7) #26
  br label %common.resume

_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit: ; preds = %_ZNK5QListI8QVariantE5valueEx.exit.i
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.v = getelementptr i8, ptr %i.t, i64 89
  %i.w = load i8, ptr %i.v, align 1, !range !8, !noundef !9
  %i.x = getelementptr i8, ptr %i.t, i64 88
  %i.y = load i8, ptr %i.x, align 8, !range !8, !noundef !9 ; 2 uses
  %.not.i = icmp ne i8 %i.w, %i.y                 ; 2 uses
  br i1 %.not.i, label %bb.g, label %_ZN19EnabledProtocolItem10applyValueEv.exit

bb.g:                                             ; preds = %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = load ptr, ptr %i.t, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef align 8 dereferenceable_or_null(96) %i.t, i1 noundef zeroext %i.z), !inline_history !11
  br label %_ZN19EnabledProtocolItem10applyValueEv.exit

_ZN19EnabledProtocolItem10applyValueEv.exit:      ; preds = %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit, %bb.g
  %8 = or i1 %.034, %.not.i                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.t, i64 32      ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = trunc i64 %i.ae to i32
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN19EnabledProtocolItem10applyValueEv.exit
  %i.ah = getelementptr i8, ptr %i.t, i64 24
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN19EnabledProtocolItem10applyValueEv.exit21, %_ZN19EnabledProtocolItem10applyValueEv.exit
  %.1.lcssa = phi i1 [ %8, %_ZN19EnabledProtocolItem10applyValueEv.exit ], [ %i.by, %_ZN19EnabledProtocolItem10applyValueEv.exit21 ] ; 2 uses
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 32     ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %sext45 = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext45, 32
  %i.am = icmp slt i64 %indvars.iv.next40, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge37, !llvm.loop !46

bb.h:                                             ; preds = %.lr.ph, %_ZN19EnabledProtocolItem10applyValueEv.exit21
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN19EnabledProtocolItem10applyValueEv.exit21 ] ; 3 uses
  %.132 = phi i1 [ %8, %.lr.ph ], [ %i.by, %_ZN19EnabledProtocolItem10applyValueEv.exit21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false), !noalias !54
  store i64 2, ptr %i.i, align 8, !noalias !54
  %i.an = load i64, ptr %i.ad, align 8, !noalias !55
  %i.ao = icmp ugt i64 %i.an, %indvars.iv
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ah, align 8, !noalias !55
  %i.aq = getelementptr [32 x i8], ptr %i.ap, i64 %indvars.iv
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ar = phi ptr [ %i.aq, %bb.i ], [ %4, %bb.h ]
  invoke void @_ZN8QVariantC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(32) %5, ptr noundef align 8 dereferenceable(32) %i.ar)
          to label %_ZNK5QListI8QVariantE5valueEx.exit.i18 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !54
  br label %common.resume

_ZNK5QListI8QVariantE5valueEx.exit.i18:           ; preds = %bb.j
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !54
  %i.at = load i64, ptr %i.j, align 8
  %i.au = and i64 %i.at, -4                       ; 3 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.av, ptr %2, align 8
  store ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, ptr %3, align 8
  %i.aw = icmp eq i64 %i.au, ptrtoint (ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE to i64)
  br i1 %i.aw, label %_Zeq9QMetaTypeS_.exit.thread.i.i.i, label %bb.l

_Zeq9QMetaTypeS_.exit.thread.i.i.i:               ; preds = %_ZNK5QListI8QVariantE5valueEx.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.p

bb.l:                                             ; preds = %_ZNK5QListI8QVariantE5valueEx.exit.i18
  %.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i, label %_Zeq9QMetaTypeS_.exit.thread10.i.i.i, label %bb.m

_Zeq9QMetaTypeS_.exit.thread10.i.i.i:             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.av, i64 12
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %.not6.not.i.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not6.not.i.i.i.i.i, label %bb.n, label %_ZNK9QMetaType2idEi.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %2)
          to label %_ZNK9QMetaType2idEi.exit.i.i.i.i unwind label %bb.s

_ZNK9QMetaType2idEi.exit.i.i.i.i:                 ; preds = %bb.n, %bb.m
  %.1.i.i.i.i.i = phi i32 [ %i.ay, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, i64 12) monotonic, align 4 ; 2 uses
  %.not6.not.i7.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not6.not.i7.i.i.i.i, label %bb.o, label %_Zeq9QMetaTypeS_.exit.i.i.i

bb.o:                                             ; preds = %_ZNK9QMetaType2idEi.exit.i.i.i.i
  %i.bb = invoke noundef i32 @_ZNK9QMetaType8idHelperEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %3)
          to label %_Zeq9QMetaTypeS_.exit.i.i.i unwind label %bb.s

_Zeq9QMetaTypeS_.exit.i.i.i:                      ; preds = %bb.o, %_ZNK9QMetaType2idEi.exit.i.i.i.i
  %.1.i8.i.i.i.i = phi i32 [ %i.ba, %_ZNK9QMetaType2idEi.exit.i.i.i.i ], [ %i.bb, %bb.o ]
  %i.bc = icmp eq i32 %.1.i.i.i.i.i, %.1.i8.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i.i, %_Zeq9QMetaTypeS_.exit.thread.i.i.i
  %i.bd = load ptr, ptr %5, align 8
  br label %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit19

bb.q:                                             ; preds = %_Zeq9QMetaTypeS_.exit.i.i.i, %_Zeq9QMetaTypeS_.exit.thread10.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8
  %i.be = invoke ptr @_ZNK8QVariant8metaTypeEv(ptr noundef nonnull align 8 dereferenceable(32) dereferenceable_or_null(32) %5)
          to label %.noexc23 unwind label %bb.s

.noexc23:                                         ; preds = %bb.q
  %i.bf = load i64, ptr %i.j, align 8
  %i.bg = and i64 %i.bf, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8QVariant9constDataEv.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc23
  %i.bh = load ptr, ptr %5, align 8               ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.bh, i64 %i.bk
  br label %_ZNK8QVariant9constDataEv.exit.i.i.i

_ZNK8QVariant9constDataEv.exit.i.i.i:             ; preds = %bb.r, %.noexc23
  %i.bm = phi ptr [ %i.bl, %bb.r ], [ %5, %.noexc23 ]
  %i.bn = invoke noundef zeroext i1 @_ZN9QMetaType7convertES_PKvS_Pv(ptr %i.be, ptr noundef %i.bm, ptr nonnull @_ZN9QtPrivate25QMetaTypeInterfaceWrapperIPvE8metaTypeE, ptr noundef nonnull %i.a)
          to label %.noexc24 unwind label %bb.s   ; 0 uses

.noexc24:                                         ; preds = %_ZNK8QVariant9constDataEv.exit.i.i.i
  %i.bo = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit19

bb.s:                                             ; preds = %_ZNK8QVariant9constDataEv.exit.i.i.i, %bb.q, %bb.o, %bb.n
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %5) #26
  br label %common.resume

_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit19: ; preds = %.noexc24, %bb.p
  %.0.i.i.i = phi ptr [ %i.bd, %bb.p ], [ %i.bo, %.noexc24 ] ; 4 uses
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bq = getelementptr i8, ptr %.0.i.i.i, i64 89
  %i.br = load i8, ptr %i.bq, align 1, !range !8, !noundef !9
  %i.bs = getelementptr i8, ptr %.0.i.i.i, i64 88
  %i.bt = load i8, ptr %i.bs, align 8, !range !8, !noundef !9 ; 2 uses
  %.not.i20 = icmp ne i8 %i.br, %i.bt             ; 2 uses
  br i1 %.not.i20, label %bb.t, label %_ZN19EnabledProtocolItem10applyValueEv.exit21

bb.t:                                             ; preds = %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit19
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load ptr, ptr %.0.i.i.i, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef align 8 dereferenceable_or_null(96) %.0.i.i.i, i1 noundef zeroext %i.bu), !inline_history !11
  br label %_ZN19EnabledProtocolItem10applyValueEv.exit21

_ZN19EnabledProtocolItem10applyValueEv.exit21:    ; preds = %_ZN19ModelHelperTreeItemI19EnabledProtocolItemE5childEi.exit19, %bb.t
  %i.by = or i1 %.132, %.not.i20                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = load i64, ptr %i.ad, align 8
  %sext = shl i64 %i.bz, 32
  %i.ca = ashr exact i64 %sext, 32
  %i.cb = icmp slt i64 %indvars.iv.next, %i.ca
  br i1 %i.cb, label %bb.h, label %._crit_edge, !llvm.loop !51

bb.u:                                             ; preds = %._crit_edge37
  br i1 %1, label %bb.v, label %_ZN21EnabledProtocolsModel11saveChangesEb.exit

bb.v:                                             ; preds = %bb.u
  %i.cc = call ptr @application_configuration_environment_prefix()
  call void @save_enabled_and_disabled_lists(ptr noundef %i.cc)
  br label %_ZN21EnabledProtocolsModel11saveChangesEb.exit

_ZN21EnabledProtocolsModel11saveChangesEb.exit:   ; preds = %bb.u, %bb.v
  %i.cd = load ptr, ptr @mainApp, align 8
  call void @_ZN15MainApplication13emitAppSignalENS_9AppSignalE(ptr noundef align 8 dereferenceable_or_null(168) %i.cd, i32 noundef 6)
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %_ZN21EnabledProtocolsModel11saveChangesEb.exit, %._crit_edge37
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21EnabledProtocolsModel11saveChangesEb(i1 noundef zeroext %0) local_unnamed_addr #4 align 2 {
bb.a:
  br i1 %0, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @application_configuration_environment_prefix()
  tail call void @save_enabled_and_disabled_lists(ptr noundef %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @mainApp, align 8
  tail call void @_ZN15MainApplication13emitAppSignalENS_9AppSignalE(ptr noundef align 8 dereferenceable_or_null(168) %i.b, i32 noundef 6)
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21EnabledProtocolsModel15disableProtocolEP9_protocol(ptr noundef %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.ProtocolTreeItem, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN16ProtocolTreeItemC2EP9_protocolP19EnabledProtocolItem(ptr noundef nonnull align 8 dereferenceable_or_null(104) %1, ptr noundef %0, ptr noundef null)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.c = load i8, ptr %i.b, align 1, !range !8, !noundef !9
  %.not.i.not = icmp eq i8 %i.c, 0
  br i1 %.not.i.not, label %_ZN19EnabledProtocolItem10applyValueEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable_or_null(96) %1, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.d, !inline_history !11

end_hunk_0
