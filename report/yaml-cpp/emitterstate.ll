Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/emitterstate?download=true
inline.NumInlined: 454
inline.NumDeleted: 218
begin_hunk_0_@_ZN4YAML12EmitterState13SetBoolFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE:bb.a

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %switch
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState17SetBoolCaseFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.off = add i32 %1, -16
  %switch = icmp ult i32 %.off, 3                 ; 2 uses
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN4YAML12EmitterState4_SetINS_13EMITTER_MANIPEEEvRNS_7SettingIT_EES4_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %switch
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState19SetBoolLengthFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.off = add i32 %1, -19
  %switch = icmp ult i32 %.off, 2                 ; 2 uses
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @_ZN4YAML12EmitterState4_SetINS_13EMITTER_MANIPEEEvRNS_7SettingIT_EES4_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %switch
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState13SetNullFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.off = add i32 %1, -9
  %switch = icmp ult i32 %.off, 4                 ; 2 uses
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @_ZN4YAML12EmitterState4_SetINS_13EMITTER_MANIPEEEvRNS_7SettingIT_EES4_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %switch
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState12SetIntFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.off = add i32 %1, -21
  %switch = icmp ult i32 %.off, 3                 ; 2 uses
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN4YAML12EmitterState4_SetINS_13EMITTER_MANIPEEEvRNS_7SettingIT_EES4_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %switch
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState11SetFlowTypeENS_9GroupType5valueENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = and i32 %2, -2
  %switch = icmp eq i32 %i.a, 28                  ; 2 uses
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %1, 1
  %.v = select i1 %i.b, i64 104, i64 108
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.v
  tail call void @_ZN4YAML12EmitterState4_SetINS_13EMITTER_MANIPEEEvRNS_7SettingIT_EES4_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %switch
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4YAML12EmitterState15SetMapKeyFormatENS_13EMITTER_MANIPENS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 34, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4YAML12EmitterState4_SetINS_13EMITTER_MANIPEEEvRNS_7SettingIT_EES4_NS_8FmtScope5valueE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %1, i32 noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML12EmitterState9SetAnchorEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((224, 225)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 1, ptr %i.a, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML12EmitterState8SetAliasEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((225, 226)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 1, ptr %i.a, align 1, !tbaa !124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML12EmitterState6SetTagEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((226, 227)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i8 1, ptr %i.a, align 2, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML12EmitterState13SetNonContentEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((227, 228)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 227
  store i8 1, ptr %i.a, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4YAML12EmitterState10SetLongKeyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.h, align 8, !tbaa !61
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4YAML12EmitterState9ForceFlowEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 1, ptr %i.h, align 4, !tbaa !62
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4YAML12EmitterState11StartedNodeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) initializes((224, 228)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !40
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !63
  %1 = trunc i64 %i.m to i1
  br i1 %1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.n, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.o, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 3, 7) i32 @_ZNK4YAML12EmitterState13NextGroupTypeENS_9GroupType5valueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e                   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !62
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit: ; preds = %bb.b, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !36
  %.fr16 = freeze i32 %i.m
  %i.n = icmp eq i32 %.fr16, 29
  %spec.select = select i1 %i.n, i32 4, i32 3
  br label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit9, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i6

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i6: ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !62
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit9

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit9: ; preds = %bb.c, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %.fr = freeze i32 %i.u
  %i.v = icmp eq i32 %.fr, 29
  %spec.select15 = select i1 %i.v, i32 6, i32 5
  br label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread: ; preds = %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit9, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i6, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i
  %.0 = phi i32 [ 3, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i ], [ 5, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i6 ], [ %spec.select15, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit9 ], [ %spec.select, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !62
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread: ; preds = %bb.a, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit
  %i.k = icmp eq i32 %1, 1
  %. = select i1 %i.k, i64 104, i64 108
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit
  %.0 = phi i32 [ 28, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit ], [ %i.m, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML12EmitterState10StartedDocEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((224, 225), (226, 228)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i8 0, ptr %i.b, align 2, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 227
  store i8 0, ptr %i.c, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4YAML12EmitterState8EndedDocEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(240) initializes((224, 225), (226, 228)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 226
  store i8 0, ptr %i.b, align 2, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 227
  store i8 0, ptr %i.c, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4YAML12EmitterState13StartedScalarEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) initializes((224, 228)) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !40
  br label %_ZN4YAML12EmitterState11StartedNodeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63
  %i.m = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !63
  %1 = trunc i64 %i.m to i1
  br i1 %1, label %_ZN4YAML12EmitterState11StartedNodeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.n, align 8, !tbaa !61
  br label %_ZN4YAML12EmitterState11StartedNodeEv.exit

_ZN4YAML12EmitterState11StartedNodeEv.exit:       ; preds = %bb.b, %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not7.i.i.i, label %_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %bb.e
  %.sroa.04.08.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.q, %_ZN4YAML12EmitterState11StartedNodeEv.exit ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.04.08.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.s
  br i1 %.not.i.i.i, label %_ZN4YAML14SettingChanges7restoreEv.exit.i.i, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #18
  unreachable

_ZN4YAML14SettingChanges7restoreEv.exit.i.i:      ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !51 ; 3 uses
  %.pre1.i.i = load ptr, ptr %i.r, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre1.i.i, %.pre.i.i
  br i1 %.not.i.i.i.i, label %_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4YAML14SettingChanges7restoreEv.exit.i.i, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %.pre.i.i, %_ZN4YAML14SettingChanges7restoreEv.exit.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #19, !inline_history !1
  br label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %.pre1.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i.i
  store ptr %.pre.i.i, ptr %i.r, align 8, !tbaa !52
  br label %_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit

_ZN4YAML12EmitterState21ClearModifiedSettingsEv.exit: ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %_ZN4YAML14SettingChanges7restoreEv.exit.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4YAML12EmitterState21ClearModifiedSettingsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(240) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %.not7.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i, label %_ZN4YAML14SettingChanges5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.04.08.i.i = phi ptr [ %i.i, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.04.08.i.i, align 8, !tbaa !48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i, label %_ZN4YAML14SettingChanges7restoreEv.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #18
  unreachable

_ZN4YAML14SettingChanges7restoreEv.exit.i:        ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !51 ; 3 uses
  %.pre1.i = load ptr, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre1.i, %.pre.i
  br i1 %.not.i.i.i, label %_ZN4YAML14SettingChanges5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4YAML14SettingChanges7restoreEv.exit.i, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %.pre.i, %_ZN4YAML14SettingChanges7restoreEv.exit.i ] ; 2 uses
  %i.l = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #19, !inline_history !125
  br label %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4YAML17SettingChangeBaseEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %.pre1.i
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  store ptr %.pre.i, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4YAML14SettingChanges5clearEv.exit

_ZN4YAML14SettingChanges5clearEv.exit:            ; preds = %bb.a, %_ZN4YAML14SettingChanges7restoreEv.exit.i, %_ZSt8_DestroyIPSt10unique_ptrIN4YAML17SettingChangeBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4YAML12EmitterState12StartedGroupENS_9GroupType5valueE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(240) initializes((224, 228)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d                   ; 2 uses
  br i1 %i.e, label %_ZN4YAML12EmitterState11StartedNodeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  %i.j = add i64 %i.i, 1                          ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63
  %3 = trunc i64 %i.j to i1
  br i1 %3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 0, ptr %i.k, align 8, !tbaa !61
  br label %bb.d

_ZN4YAML12EmitterState11StartedNodeEv.exit:       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.o, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %_ZN4YAML12EmitterState11StartedNodeEv.exit, %bb.d
  %i.u = phi i64 [ %i.t, %bb.d ], [ 0, %_ZN4YAML12EmitterState11StartedNodeEv.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !65
  %i.x = add i64 %i.w, %i.u
  store i64 %i.x, ptr %i.v, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.y = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 7 uses
  store i32 %1, ptr %i.y, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(21) %i.z, i8 0, i64 21, i1 false)
  store ptr %i.y, ptr %2, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  %i.ad = ptrtoint ptr %i.y to i64                ; 2 uses
  br i1 %i.ac, label %_ZN4YAML14SettingChangesaSEOS0_.exit, label %_ZN4YAML14SettingChanges5clearEv.exit.i

_ZN4YAML14SettingChanges5clearEv.exit.i:          ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.af = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !46
  store <2 x ptr> %i.af, ptr %i.aa, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !67
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  br label %_ZN4YAML14SettingChangesaSEOS0_.exit

_ZN4YAML14SettingChangesaSEOS0_.exit:             ; preds = %bb.e, %_ZN4YAML14SettingChanges5clearEv.exit.i
  br i1 %i.e, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit, label %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i

_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i: ; preds = %_ZN4YAML14SettingChangesaSEOS0_.exit
  %i.ai = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !62
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit: ; preds = %_ZN4YAML14SettingChangesaSEOS0_.exit, %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i
  %i.an = icmp eq i32 %1, 1
  %..i = select i1 %i.an, i64 104, i64 108
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !36
  %i.aq = icmp eq i32 %i.ap, 29
  br i1 %i.aq, label %bb.h, label %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread

bb.f:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %.not.i7 = icmp eq ptr %i.as, null
  br i1 %.not.i7, label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNKSt14default_deleteIN4YAML12EmitterState5GroupEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.as)
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit

_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread: ; preds = %_ZNK4YAML12EmitterState16CurGroupFlowTypeEv.exit.i, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread
  %storemerge = phi i32 [ 1, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit.thread ], [ 2, %_ZNK4YAML12EmitterState11GetFlowTypeENS_9GroupType5valueE.exit ]
  store i32 %storemerge, ptr %i.z, align 4, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load i64, ptr %i.at, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !64
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !42  ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134
  %.not.i.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i.i, label %bb.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.h
  store i64 %i.ad, ptr %i.aw, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.c, align 8, !tbaa !42
  br label %_ZNSt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS2_EED2Ev.exit11

bb.i:                                             ; preds = %bb.h
  %i.ba = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bb = ptrtoint ptr %i.b to i64                ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i8 = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i8)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #20
          to label %.noexc9 unwind label %bb.f    ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i64 %i.ad, ptr %i.bl, align 8, !tbaa !44
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.aw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc9
  %i.bm = add i64 %i.ba, -8
  %i.bn = sub i64 %i.bm, %i.bb                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bq = and i64 %i.bn, -8
  %i.br = add i64 %i.bq, 8                        ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bk, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.b, i64 %i.br
  %bound0 = icmp ult ptr %i.bk, %i.bt
  %bound1 = icmp ult ptr %i.b, %i.bs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 4611686018427387900     ; 3 uses
  %i.bu = shl i64 %n.vec, 3                       ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.b, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.b, i64 %i.bx ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.by = getelementptr i8, ptr %next.gep23, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !44, !alias.scope !137, !noalias !135
  %wide.load24 = load <2 x i64>, ptr %i.by, align 8, !tbaa !44, !alias.scope !137, !noalias !135
  %i.bz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !44, !alias.scope !138, !noalias !137
  store <2 x i64> %wide.load24, ptr %i.bz, align 8, !tbaa !44, !alias.scope !138, !noalias !137
  %i.ca = getelementptr i8, ptr %next.gep23, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !44, !alias.scope !137, !noalias !135
  store <2 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !44, !alias.scope !137, !noalias !135
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4YAML12EmitterState5GroupESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader26

.lr.ph.i.i.i.i.i.i.i.preheader26:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader26 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader26 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !136, !noalias !135
  store i64 %i.cc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !135, !noalias !136
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !136, !noalias !135
end_hunk_0
