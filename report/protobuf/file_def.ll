inline.NumInlined: 203
inline.NumDeleted: 68
begin_hunk_0_@upb_FileDef_Pool:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @_upb_FileDef_ExtensionMiniTable(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  ret ptr %i.e
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @upb_FileDef_Resolves(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %1) #13
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.p = tail call zeroext i1 @upb_FileDef_Resolves(ptr noundef %i.o, ptr noundef nonnull %1) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.p, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.loopexit, label %bb.b, !llvm.loop !47

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ false, %.preheader ], [ %i.p, %bb.b ]
  ret i1 %.3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_FileDef_FindEdition(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  %i.b = tail call ptr @upb_DefPool_FeatureSetDefaults(ptr noundef %i.a) #12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i32, ptr %i.e, align 1              ; 2 uses
  %i.g = icmp slt i32 %1, %i.d
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @upb_FileDef_EditionName(i32 noundef %1)
  %i.i = tail call ptr @upb_FileDef_EditionName(i32 noundef %i.d)
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %1, %i.f
  %i.k = icmp ne i32 %1, 9999
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @upb_FileDef_EditionName(i32 noundef %1)
  %i.m = tail call ptr @upb_FileDef_EditionName(i32 noundef %i.f)
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSetDefaults__FeatureSetEditionDefault_msg_init) #12, !srcloc !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = load i64, ptr %i.n, align 1              ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %._crit_edge.thread, label %google_protobuf_FeatureSetDefaults_defaults.exit

google_protobuf_FeatureSetDefaults_defaults.exit: ; preds = %bb.e
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %.val.i = load i64, ptr %i.p, align 8, !tbaa !60
  %i.s = and i64 %.val.i, -8
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %google_protobuf_FeatureSetDefaults_defaults.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 1
  %i.x = icmp sgt i32 %i.w, %1
  br i1 %i.x, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.y = phi ptr [ %i.ab, %.lr.ph ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.0404666 = phi i64 [ %i.z, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.z = add nuw i64 %.0404666, 1                 ; 3 uses
  %exitcond.not = icmp eq i64 %i.z, %i.r
  br i1 %exitcond.not, label %._crit_edge.thread59, label %.lr.ph, !llvm.loop !63

.lr.ph:                                           ; preds = %.lr.ph67
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = icmp sgt i32 %i.ad, %1
  br i1 %i.ae, label %._crit_edge, label %.lr.ph67, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader
  %.03947.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.af = icmp eq ptr %.03947.lcssa, null
  br i1 %i.af, label %._crit_edge.thread, label %._crit_edge.thread59

._crit_edge.thread:                               ; preds = %bb.e, %google_protobuf_FeatureSetDefaults_defaults.exit, %._crit_edge
  %i.ag = tail call ptr @upb_FileDef_EditionName(i32 noundef %1)
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ag) #14
  unreachable

._crit_edge.thread59:                             ; preds = %.lr.ph67, %._crit_edge
  %.039.lcssa61 = phi ptr [ %.03947.lcssa, %._crit_edge ], [ %i.y, %.lr.ph67 ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSet_msg_init) #12, !srcloc !57
  %i.ah = getelementptr inbounds nuw i8, ptr %.039.lcssa61, i64 24
  %i.ai = load i64, ptr %i.ah, align 1            ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSet_msg_init) #12, !srcloc !57
  %i.ak = getelementptr inbounds nuw i8, ptr %.039.lcssa61, i64 16
  %i.al = load i64, ptr %i.ak, align 1            ; 2 uses
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = icmp ne i64 %i.ai, 0                    ; 2 uses
  %i.ao = icmp ne i64 %i.al, 0
  %or.cond3 = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread59
  %i.ap = tail call ptr @upb_FileDef_EditionName(i32 noundef %1)
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.ap) #14
  unreachable

bb.g:                                             ; preds = %._crit_edge.thread59
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, ptr noundef %i.am, i1 noundef zeroext true) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi ptr [ %i.aq, %bb.h ], [ %i.am, %bb.g ]
  ret ptr %.0
}

declare ptr @upb_DefPool_FeatureSetDefaults(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_upb_DefBuilder_Errf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

declare ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @_upb_FileDef_Create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 4 uses
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !65 ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val11.i.i = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.f = ptrtoint ptr %.val11.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 144
  br i1 %i.i, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !68

upb_Arena_Malloc.exit.thread.i:                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 144
  store ptr %i.j, ptr %i.d, align 8, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %_upb_DefBuilder_Alloc.exit

upb_Arena_Malloc.exit.i:                          ; preds = %bb.a
  %i.k = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.d, i64 noundef 144) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %_upb_DefBuilder_Alloc.exit

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

_upb_DefBuilder_Alloc.exit:                       ; preds = %upb_Arena_Malloc.exit.thread.i, %upb_Arena_Malloc.exit.i
  %.0.i = phi ptr [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.k, %upb_Arena_Malloc.exit.i ] ; 38 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.0.i, ptr %i.l, align 8, !tbaa !69
  %i.m = load ptr, ptr %0, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 104
  store ptr %i.m, ptr %i.n, align 8, !tbaa !33
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FieldDescriptorProto_msg_init) #12, !srcloc !57
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 1              ; 2 uses
  %.not.i241 = icmp eq i64 %i.p, 0
  br i1 %.not.i241, label %google_protobuf_FileDescriptorProto_extension.exit, label %bb.c

bb.c:                                             ; preds = %_upb_DefBuilder_Alloc.exit
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !58
  %i.t = trunc i64 %i.s to i32
  br label %google_protobuf_FileDescriptorProto_extension.exit

google_protobuf_FileDescriptorProto_extension.exit: ; preds = %_upb_DefBuilder_Alloc.exit, %bb.c
  %.0335 = phi i32 [ %i.t, %bb.c ], [ 0, %_upb_DefBuilder_Alloc.exit ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__DescriptorProto_msg_init) #12, !srcloc !57
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.v = load i64, ptr %i.u, align 1              ; 2 uses
  %.not.i243 = icmp eq i64 %i.v, 0
  br i1 %.not.i243, label %._crit_edge, label %google_protobuf_FileDescriptorProto_message_type.exit

google_protobuf_FileDescriptorProto_message_type.exit: ; preds = %google_protobuf_FileDescriptorProto_extension.exit
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58   ; 2 uses
  %.val.i244 = load i64, ptr %i.w, align 8, !tbaa !60
  %i.z = and i64 %.val.i244, -8
  %i.aa = inttoptr i64 %i.z to ptr
  %.not383 = icmp eq i64 %i.y, 0
  br i1 %.not383, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %google_protobuf_FileDescriptorProto_extension.exit, %google_protobuf_FileDescriptorProto_message_type.exit
  %.0.lcssa = phi i32 [ %.0335, %google_protobuf_FileDescriptorProto_message_type.exit ], [ %.0335, %google_protobuf_FileDescriptorProto_extension.exit ], [ %i.ah, %.lr.ph ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 140 ; 5 uses
  store i32 %.0.lcssa, ptr %i.ab, align 4, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71 ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.f, label %bb.d

.lr.ph:                                           ; preds = %google_protobuf_FileDescriptorProto_message_type.exit, %.lr.ph
  %.0360 = phi i32 [ %i.ah, %.lr.ph ], [ %.0335, %google_protobuf_FileDescriptorProto_message_type.exit ]
  %.0212359 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %google_protobuf_FileDescriptorProto_message_type.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.0212359
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.ag = tail call fastcc i32 @count_exts_in_msg(ptr noundef %i.af)
  %i.ah = add nsw i32 %i.ag, %.0360               ; 2 uses
  %i.ai = add nuw i64 %.0212359, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.y
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

bb.d:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !44
  %i.am = getelementptr i8, ptr %i.ad, i64 32
  %.val = load i32, ptr %i.am, align 8, !tbaa !79 ; 2 uses
  %.not230 = icmp eq i32 %.val, %.0.lcssa
  br i1 %.not230, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %.val, i32 noundef %.0.lcssa) #14
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.an = icmp eq i32 %.0.lcssa, 0
  br i1 %i.an, label %_upb_DefBuilder_Alloc.exit252.thread, label %bb.g

_upb_DefBuilder_Alloc.exit252.thread:             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  store ptr null, ptr %i.ao, align 8, !tbaa !44
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %.0.lcssa to i64
  %i.aq = shl nsw i64 %i.ap, 3                    ; 3 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !64  ; 4 uses
  %.val.i.i246 = load ptr, ptr %i.ar, align 8, !tbaa !65 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %.val11.i.i247 = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.at = ptrtoint ptr %.val11.i.i247 to i64
  %i.au = ptrtoint ptr %.val.i.i246 to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ult i64 %i.av, %i.aq
  br i1 %i.aw, label %upb_Arena_Malloc.exit.i250, label %_upb_DefBuilder_Alloc.exit252.thread457, !prof !68

_upb_DefBuilder_Alloc.exit252.thread457:          ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i246, i64 %i.aq
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i246) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 96 ; 2 uses
  store ptr %.val.i.i246, ptr %i.ay, align 8, !tbaa !44
  br label %bb.i

upb_Arena_Malloc.exit.i250:                       ; preds = %bb.g
  %i.az = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ar, i64 noundef %i.aq) #12 ; 2 uses
  %.not.i251 = icmp eq ptr %i.az, null
  br i1 %.not.i251, label %bb.h, label %_upb_DefBuilder_Alloc.exit252

bb.h:                                             ; preds = %upb_Arena_Malloc.exit.i250
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

_upb_DefBuilder_Alloc.exit252:                    ; preds = %upb_Arena_Malloc.exit.i250
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !70 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i, i64 96 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !44
  %i.bb = icmp eq i32 %.pre, 0
  br i1 %i.bb, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %_upb_DefBuilder_Alloc.exit252.thread457, %_upb_DefBuilder_Alloc.exit252
  %i.bc = phi ptr [ %i.ay, %_upb_DefBuilder_Alloc.exit252.thread457 ], [ %i.ba, %_upb_DefBuilder_Alloc.exit252 ]
  %i.bd = phi i32 [ %.0.lcssa, %_upb_DefBuilder_Alloc.exit252.thread457 ], [ %.pre, %_upb_DefBuilder_Alloc.exit252 ] ; 3 uses
  %mul.ov.i = icmp slt i32 %i.bd, 0
  br i1 %mul.ov.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 5                ; 3 uses
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !64  ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.bg, align 8, !tbaa !65 ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %.val11.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !67
  %i.bi = ptrtoint ptr %.val11.i.i.i to i64
  %i.bj = ptrtoint ptr %.val.i.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bf
  br i1 %i.bl, label %upb_Arena_Malloc.exit.i.i, label %_upb_DefBuilder_AllocCounted.exit.thread460, !prof !68

_upb_DefBuilder_AllocCounted.exit.thread460:      ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.bf
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %.lr.ph362

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.k
  %i.bn = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.bg, i64 noundef %i.bf) #12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %bb.l, label %_upb_DefBuilder_AllocCounted.exit

bb.l:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

_upb_DefBuilder_AllocCounted.exit:                ; preds = %upb_Arena_Malloc.exit.i.i
  %.pre399 = load i32, ptr %i.ab, align 4, !tbaa !70 ; 2 uses
  %i.bo = icmp sgt i32 %.pre399, 0
  br i1 %i.bo, label %.lr.ph362, label %.loopexit

.lr.ph362:                                        ; preds = %_upb_DefBuilder_AllocCounted.exit.thread460, %_upb_DefBuilder_AllocCounted.exit
  %.0.i253462 = phi ptr [ %.val.i.i.i, %_upb_DefBuilder_AllocCounted.exit.thread460 ], [ %i.bn, %_upb_DefBuilder_AllocCounted.exit ] ; 3 uses
  %i.bp = phi i32 [ %i.bd, %_upb_DefBuilder_AllocCounted.exit.thread460 ], [ %.pre399, %_upb_DefBuilder_AllocCounted.exit ] ; 2 uses
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !44 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bp to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bp, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph362
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [32 x i8], ptr %.0.i253462, <2 x i64> %vec.ind
  %wide.gep498 = getelementptr inbounds nuw [32 x i8], ptr %.0.i253462, <2 x i64> %step.add
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <2 x ptr> %wide.gep, ptr %i.br, align 8, !tbaa !45
  store <2 x ptr> %wide.gep498, ptr %i.bs, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph362, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph362 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %.0.i253462, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond395.not, label %.loopexit, label %scalar.ph, !llvm.loop !83

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %_upb_DefBuilder_Alloc.exit252.thread, %_upb_DefBuilder_Alloc.exit252, %_upb_DefBuilder_AllocCounted.exit, %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.013.0.copyload14.i = load ptr, ptr %i.bw, align 1
  %.sroa.9.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload16.i = load i64, ptr %.sroa.9.0..sroa_idx15.i, align 1 ; 2 uses
  %.val.i254 = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.bx = tail call ptr @upb_strdup2(ptr noundef %.sroa.013.0.copyload14.i, i64 noundef %.sroa.9.0.copyload16.i, ptr noundef %.val.i254) #12 ; 3 uses
  %.not.i255 = icmp eq ptr %i.bx, null
  br i1 %.not.i255, label %bb.m, label %_strviewdup.exit

bb.m:                                             ; preds = %.loopexit
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

_strviewdup.exit:                                 ; preds = %.loopexit
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !24
  %i.bz = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #13
  %.not231 = icmp eq i64 %i.bz, %.sroa.9.0.copyload16.i
  br i1 %.not231, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_strviewdup.exit
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #14
  unreachable

bb.o:                                             ; preds = %_strviewdup.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.013.0.copyload14.i256 = load ptr, ptr %i.ca, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx15.i257 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.9.0.copyload16.i258 = load i64, ptr %.sroa.9.0..sroa_idx15.i257, align 1 ; 4 uses
  %.not232 = icmp eq i64 %.sroa.9.0.copyload16.i258, 0
  br i1 %.not232, label %_strviewdup.exit263, label %.preheader356

bb.p:                                             ; preds = %.preheader356
  br i1 %i.cq, label %_upb_DefBuilder_CheckIdentFull.exit, label %bb.q

.preheader356:                                    ; preds = %bb.o, %.preheader356
  %.026.i = phi i1 [ %i.cq, %.preheader356 ], [ true, %bb.o ]
  %.02125.i = phi i1 [ %i.cn, %.preheader356 ], [ true, %bb.o ]
  %.02224.i = phi i64 [ %i.cr, %.preheader356 ], [ 0, %bb.o ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload14.i256, i64 %.02224.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !84  ; 4 uses
  %i.cd = or i8 %i.cc, 32
  %i.ce = add i8 %i.cd, -97
  %i.cf = icmp ult i8 %i.ce, 26
  %i.cg = icmp eq i8 %i.cc, 95
  %i.ch = or i1 %i.cg, %i.cf
  %i.ci = add i8 %i.cc, -48
  %i.cj = icmp ult i8 %i.ci, 10
  %i.ck = xor i1 %.02125.i, true                  ; 2 uses
  %i.cl = and i1 %i.cj, %i.ck
  %i.cm = icmp eq i8 %i.cc, 46
  %i.cn = and i1 %i.cm, %i.ck                     ; 2 uses
  %i.co = or i1 %i.cl, %i.ch
  %i.cp = or i1 %i.cn, %i.co
  %i.cq = and i1 %.026.i, %i.cp                   ; 2 uses
  %i.cr = add nuw i64 %.02224.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cr, %.sroa.9.0.copyload16.i258
  br i1 %exitcond.not.i, label %bb.p, label %.preheader356, !llvm.loop !85

bb.q:                                             ; preds = %bb.p
  tail call void @_upb_DefBuilder_CheckIdentSlow(ptr noundef nonnull %0, ptr nonnull %.sroa.013.0.copyload14.i256, i64 range(i64 1, 0) %.sroa.9.0.copyload16.i258, i1 noundef zeroext true) #12
  br label %_upb_DefBuilder_CheckIdentFull.exit

_upb_DefBuilder_CheckIdentFull.exit:              ; preds = %bb.p, %bb.q
  %.val.i261 = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.cs = tail call ptr @upb_strdup2(ptr noundef nonnull %.sroa.013.0.copyload14.i256, i64 noundef %.sroa.9.0.copyload16.i258, ptr noundef %.val.i261) #12 ; 2 uses
  %.not.i262 = icmp eq ptr %i.cs, null
  br i1 %.not.i262, label %bb.r, label %_strviewdup.exit263

bb.r:                                             ; preds = %_upb_DefBuilder_CheckIdentFull.exit
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

_strviewdup.exit263:                              ; preds = %bb.o, %_upb_DefBuilder_CheckIdentFull.exit
  %.sink = phi ptr [ %i.cs, %_upb_DefBuilder_CheckIdentFull.exit ], [ null, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %.sink, ptr %i.ct, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.013.0.copyload14.i264 = load ptr, ptr %i.cu, align 1 ; 8 uses
  %.sroa.9.0..sroa_idx15.i265 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.9.0.copyload16.i266 = load i64, ptr %.sroa.9.0..sroa_idx15.i265, align 1 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !84  ; 2 uses
  %i.cx = and i8 %i.cw, 32
  %.not350 = icmp eq i8 %i.cx, 0
  br i1 %.not350, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_strviewdup.exit263
  %i.cy = icmp eq i64 %.sroa.9.0.copyload16.i266, 8
  br i1 %i.cy, label %streql_view.exit, label %streql_view.exit.thread

streql_view.exit:                                 ; preds = %bb.s
  %i.cz = load i64, ptr %.sroa.013.0.copyload14.i264, align 1
  %i.da = icmp ne i64 %i.cz, 8317708060515198053
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.t, label %streql_view.exit.thread

streql_view.exit.thread:                          ; preds = %bb.s, %streql_view.exit
  %i.dd = trunc i64 %.sroa.9.0.copyload16.i266 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %i.dd, ptr noundef %.sroa.013.0.copyload14.i264) #14
  unreachable

bb.t:                                             ; preds = %streql_view.exit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.df = load i32, ptr %i.de, align 1
  br label %bb.y

bb.u:                                             ; preds = %_strviewdup.exit263
  %i.dg = and i8 %i.cw, 16
  %.not351 = icmp eq i8 %i.dg, 0
  br i1 %.not351, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %cond = icmp eq i64 %.sroa.9.0.copyload16.i266, 6
  br i1 %cond, label %streql_view.exit270, label %streql_view.exit272.thread

streql_view.exit270:                              ; preds = %bb.v
  %i.dh = load i32, ptr %.sroa.013.0.copyload14.i264, align 1
  %i.di = xor i32 %i.dh, 1953460848
  %i.dj = getelementptr i8, ptr %.sroa.013.0.copyload14.i264, i64 4
  %i.dk = load i16, ptr %i.dj, align 1
  %i.dl = zext i16 %i.dk to i32
  %i.dm = xor i32 %i.dl, 12911
  %i.dn = or i32 %i.di, %i.dm
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.y, label %streql_view.exit272

streql_view.exit272:                              ; preds = %streql_view.exit270
  %i.dr = load i32, ptr %.sroa.013.0.copyload14.i264, align 1
  %i.ds = xor i32 %i.dr, 1953460848
  %i.dt = getelementptr i8, ptr %.sroa.013.0.copyload14.i264, i64 4
  %i.du = load i16, ptr %i.dt, align 1
  %i.dv = zext i16 %i.du to i32
  %i.dw = xor i32 %i.dv, 13167
  %i.dx = or i32 %i.ds, %i.dw
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.y, label %streql_view.exit272.thread

streql_view.exit272.thread:                       ; preds = %bb.v, %streql_view.exit272
  %i.eb = tail call fastcc zeroext i1 @streql_view(ptr %.sroa.013.0.copyload14.i264, i64 %.sroa.9.0.copyload16.i266, ptr noundef nonnull @.str.10)
  br i1 %i.eb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %streql_view.exit272.thread
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #14
  unreachable

bb.x:                                             ; preds = %streql_view.exit272.thread
  %i.ec = trunc i64 %.sroa.9.0.copyload16.i266 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i32 noundef %i.ec, ptr noundef %.sroa.013.0.copyload14.i264) #14
  unreachable

bb.y:                                             ; preds = %bb.u, %streql_view.exit272, %streql_view.exit270, %bb.t
  %.sink486 = phi i32 [ 999, %streql_view.exit272 ], [ 998, %streql_view.exit270 ], [ %i.df, %bb.t ], [ 998, %bb.u ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store i32 %.sink486, ptr %i.ed, align 8, !tbaa !26
  %i.ee = load i8, ptr %i.cv, align 1, !tbaa !84
  %i.ef = and i8 %i.ee, 4
  %.not352 = icmp eq i8 %i.ef, 0
  br i1 %.not352, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FileOptions_msg_init) #12, !srcloc !57
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eh = load i64, ptr %i.eg, align 1
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.el = call i32 @upb_Encode(ptr noundef %i.ei, ptr noundef nonnull @google__protobuf__FileOptions_msg_init, i32 noundef 0, ptr noundef %i.ek, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.not233 = icmp eq ptr %i.em, null
  br i1 %.not233, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.en = load i64, ptr %i.b, align 8, !tbaa !87
  %i.eo = load ptr, ptr %0, align 8, !tbaa !49
  %i.ep = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.eo) #12
  %.val240 = load ptr, ptr %i.c, align 8, !tbaa !64 ; 5 uses
  %i.eq = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FileOptions_msg_init, i64 8), align 8, !tbaa !88
  %i.er = zext i16 %i.eq to i64                   ; 5 uses
  %i.es = and i64 %i.er, 7
  %i.et = icmp eq i64 %i.es, 0
  call void @llvm.assume(i1 %i.et)
  %.val.i.i.i.i = load ptr, ptr %.val240, align 8, !tbaa !65 ; 4 uses
  %i.eu = getelementptr i8, ptr %.val240, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.eu, align 8, !tbaa !67
  %i.ev = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.ew = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp ult i64 %i.ex, %i.er
  br i1 %i.ey, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !68

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.er
  store ptr %i.ez, ptr %.val240, align 8, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.ac

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.ab
  %i.fa = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.val240, i64 noundef %i.er) #12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac, !prof !90

bb.ac:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.fa, %upb_Arena_Malloc.exit.i.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.er, i1 false)
  %i.fb = call i32 @upb_Decode(ptr noundef nonnull %i.em, i64 noundef %i.en, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__FileOptions_msg_init, ptr noundef %i.ep, i32 noundef 0, ptr noundef nonnull %.val240) #12
  %.not10.i = icmp eq i32 %i.fb, 0
  br i1 %.not10.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %upb_Arena_Malloc.exit.i.i.i
  store ptr null, ptr %.0.i, align 8, !tbaa !7
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store ptr %.0.i3.i.i.i, ptr %.0.i, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %.pre400 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %bb.ag

bb.af:                                            ; preds = %bb.y
  %i.fc = load ptr, ptr @kUpbDefOptDefault, align 8, !tbaa !23
  store ptr %i.fc, ptr %.0.i, align 8, !tbaa !7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fd = phi i32 [ %.sink486, %bb.af ], [ %.pre400, %bb.ae ]
  %i.fe = call ptr @_upb_FileDef_FindEdition(ptr noundef nonnull %0, i32 noundef %i.fd)
  %i.ff = load ptr, ptr %.0.i, align 8, !tbaa !7
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSet_msg_init) #12, !srcloc !57
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 184
  %i.fh = load i64, ptr %i.fg, align 1
  %i.fi = inttoptr i64 %i.fh to ptr
  %i.fj = call ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef nonnull %0, ptr noundef %i.fe, ptr noundef %i.fi, i1 noundef zeroext false) #12
  %i.fk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 5 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !22
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fm = load i64, ptr %i.fl, align 1            ; 2 uses
  %.not.i274 = icmp eq i64 %i.fm, 0
  br i1 %.not.i274, label %google_protobuf_FileDescriptorProto_dependency.exit.thread, label %google_protobuf_FileDescriptorProto_dependency.exit

google_protobuf_FileDescriptorProto_dependency.exit.thread: ; preds = %bb.ag
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i, i64 112 ; 2 uses
  store i32 0, ptr %i.fn, align 8, !tbaa !28
  br label %_upb_DefBuilder_AllocCounted.exit285.thread

google_protobuf_FileDescriptorProto_dependency.exit: ; preds = %bb.ag
  %i.fo = inttoptr i64 %i.fm to ptr               ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !58 ; 5 uses
  %.val.i275 = load i64, ptr %i.fo, align 8, !tbaa !60
  %i.fr = and i64 %.val.i275, -8
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = trunc i64 %i.fq to i32
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i, i64 112 ; 3 uses
  store i32 %i.ft, ptr %i.fu, align 8, !tbaa !28
  %i.fv = icmp eq i64 %i.fq, 0
  br i1 %i.fv, label %_upb_DefBuilder_AllocCounted.exit285.thread, label %bb.ah

bb.ah:                                            ; preds = %google_protobuf_FileDescriptorProto_dependency.exit
  %mul.ov.i278 = icmp ugt i64 %i.fq, 2305843009213693951
  br i1 %mul.ov.i278, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.fw = shl nuw i64 %i.fq, 3                    ; 3 uses
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !64  ; 4 uses
  %.val.i.i.i279 = load ptr, ptr %i.fx, align 8, !tbaa !65 ; 4 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 8
  %.val11.i.i.i280 = load ptr, ptr %i.fy, align 8, !tbaa !67
  %i.fz = ptrtoint ptr %.val11.i.i.i280 to i64
  %i.ga = ptrtoint ptr %.val.i.i.i279 to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = icmp ult i64 %i.gb, %i.fw
  br i1 %i.gc, label %upb_Arena_Malloc.exit.i.i283, label %upb_Arena_Malloc.exit.thread.i.i281, !prof !68

upb_Arena_Malloc.exit.thread.i.i281:              ; preds = %bb.aj
  %i.gd = getelementptr inbounds nuw i8, ptr %.val.i.i.i279, i64 %i.fw
  store ptr %i.gd, ptr %i.fx, align 8, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i279) ]
  br label %.lr.ph364.preheader

upb_Arena_Malloc.exit.i.i283:                     ; preds = %bb.aj
  %i.ge = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.fx, i64 noundef %i.fw) #12 ; 2 uses
  %.not.i.i284 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i284, label %bb.ak, label %.lr.ph364.preheader

bb.ak:                                            ; preds = %upb_Arena_Malloc.exit.i.i283
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

_upb_DefBuilder_AllocCounted.exit285.thread:      ; preds = %google_protobuf_FileDescriptorProto_dependency.exit, %google_protobuf_FileDescriptorProto_dependency.exit.thread
  %.ph = phi ptr [ %i.fn, %google_protobuf_FileDescriptorProto_dependency.exit.thread ], [ %i.fu, %google_protobuf_FileDescriptorProto_dependency.exit ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store ptr null, ptr %i.gf, align 8, !tbaa !37
  br label %._crit_edge365

.lr.ph364.preheader:                              ; preds = %upb_Arena_Malloc.exit.i.i283, %upb_Arena_Malloc.exit.thread.i.i281
  %.0.i282 = phi ptr [ %i.ge, %upb_Arena_Malloc.exit.i.i283 ], [ %.val.i.i.i279, %upb_Arena_Malloc.exit.thread.i.i281 ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  store ptr %.0.i282, ptr %i.gg, align 8, !tbaa !37
  br label %.lr.ph364

bb.al:                                            ; preds = %.lr.ph364
  %i.gh = add nuw i64 %.0216363, 1                ; 2 uses
  %exitcond396.not = icmp eq i64 %i.gh, %i.fq
  br i1 %exitcond396.not, label %._crit_edge365, label %.lr.ph364, !llvm.loop !91

._crit_edge365:                                   ; preds = %bb.al, %_upb_DefBuilder_AllocCounted.exit285.thread
  %i.gi = phi ptr [ %.ph, %_upb_DefBuilder_AllocCounted.exit285.thread ], [ %i.fu, %bb.al ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.gk = load i64, ptr %i.gj, align 1            ; 2 uses
  %.not.i286 = icmp eq i64 %i.gk, 0
  br i1 %.not.i286, label %google_protobuf_FileDescriptorProto_public_dependency.exit.thread, label %google_protobuf_FileDescriptorProto_public_dependency.exit

google_protobuf_FileDescriptorProto_public_dependency.exit.thread: ; preds = %._crit_edge365
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i, i64 116
  store i32 0, ptr %i.gl, align 4, !tbaa !29
  br label %_upb_DefBuilder_AllocCounted.exit297.thread

google_protobuf_FileDescriptorProto_public_dependency.exit: ; preds = %._crit_edge365
  %i.gm = inttoptr i64 %i.gk to ptr               ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !58 ; 5 uses
  %.val.i287 = load i64, ptr %i.gm, align 8, !tbaa !60
  %i.gp = and i64 %.val.i287, -8
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = trunc i64 %i.go to i32
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.i, i64 116
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !29
  %i.gt = icmp eq i64 %i.go, 0
  br i1 %i.gt, label %_upb_DefBuilder_AllocCounted.exit297.thread, label %bb.am

bb.am:                                            ; preds = %google_protobuf_FileDescriptorProto_public_dependency.exit
  %mul.ov.i290 = icmp ugt i64 %i.go, 4611686018427387903
  br i1 %mul.ov.i290, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.gu = shl nuw i64 %i.go, 2
  %i.gv = load ptr, ptr %i.c, align 8, !tbaa !64  ; 4 uses
  %i.gw = add i64 %i.gu, 4
  %i.gx = and i64 %i.gw, -8                       ; 3 uses
  %.val.i.i.i291 = load ptr, ptr %i.gv, align 8, !tbaa !65 ; 4 uses
  %i.gy = getelementptr i8, ptr %i.gv, i64 8
  %.val11.i.i.i292 = load ptr, ptr %i.gy, align 8, !tbaa !67
  %i.gz = ptrtoint ptr %.val11.i.i.i292 to i64
  %i.ha = ptrtoint ptr %.val.i.i.i291 to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = icmp ult i64 %i.hb, %i.gx
  br i1 %i.hc, label %upb_Arena_Malloc.exit.i.i295, label %upb_Arena_Malloc.exit.thread.i.i293, !prof !68

upb_Arena_Malloc.exit.thread.i.i293:              ; preds = %bb.ao
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i.i.i291, i64 %i.gx
  store ptr %i.hd, ptr %i.gv, align 8, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i291) ]
  br label %.lr.ph367.preheader

upb_Arena_Malloc.exit.i.i295:                     ; preds = %bb.ao
  %i.he = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.gv, i64 noundef %i.gx) #12 ; 2 uses
  %.not.i.i296 = icmp eq ptr %i.he, null
  br i1 %.not.i.i296, label %bb.ap, label %.lr.ph367.preheader

bb.ap:                                            ; preds = %upb_Arena_Malloc.exit.i.i295
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

_upb_DefBuilder_AllocCounted.exit297.thread:      ; preds = %google_protobuf_FileDescriptorProto_public_dependency.exit, %google_protobuf_FileDescriptorProto_public_dependency.exit.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store ptr null, ptr %i.hf, align 8, !tbaa !31
  br label %._crit_edge368

.lr.ph367.preheader:                              ; preds = %upb_Arena_Malloc.exit.i.i295, %upb_Arena_Malloc.exit.thread.i.i293
  %.0.i294 = phi ptr [ %i.he, %upb_Arena_Malloc.exit.i.i295 ], [ %.val.i.i.i291, %upb_Arena_Malloc.exit.thread.i.i293 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store ptr %.0.i294, ptr %i.hg, align 8, !tbaa !31
  br label %.lr.ph367

.lr.ph364:                                        ; preds = %.lr.ph364.preheader, %bb.al
  %.0216363 = phi i64 [ %i.gh, %bb.al ], [ 0, %.lr.ph364.preheader ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %.0216363 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.hh, align 8, !tbaa !23 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !87 ; 2 uses
  %i.hi = load ptr, ptr %0, align 8, !tbaa !49
  %i.hj = call ptr @upb_DefPool_FindFileByNameWithSize(ptr noundef %i.hi, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.5.0.copyload) #12 ; 2 uses
  %i.hk = load ptr, ptr %i.gg, align 8, !tbaa !37
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.0216363
  store ptr %i.hj, ptr %i.hl, align 8, !tbaa !38
  %.not239 = icmp eq ptr %i.hj, null
  br i1 %.not239, label %bb.aq, label %bb.al

bb.aq:                                            ; preds = %.lr.ph364
  %i.hm = trunc i64 %.sroa.5.0.copyload to i32
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef %i.hm, ptr noundef %.sroa.0.0.copyload) #14
  unreachable

._crit_edge368:                                   ; preds = %bb.aw, %_upb_DefBuilder_AllocCounted.exit297.thread
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ho = load i64, ptr %i.hn, align 1            ; 2 uses
  %.not.i298 = icmp eq i64 %i.ho, 0
  br i1 %.not.i298, label %google_protobuf_FileDescriptorProto_weak_dependency.exit.thread, label %google_protobuf_FileDescriptorProto_weak_dependency.exit

google_protobuf_FileDescriptorProto_weak_dependency.exit.thread: ; preds = %._crit_edge368
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i, i64 120
  store i32 0, ptr %i.hp, align 8, !tbaa !30
  br label %_upb_DefBuilder_AllocCounted.exit309.thread

google_protobuf_FileDescriptorProto_weak_dependency.exit: ; preds = %._crit_edge368
  %i.hq = inttoptr i64 %i.ho to ptr               ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !58 ; 5 uses
  %.val.i299 = load i64, ptr %i.hq, align 8, !tbaa !60
  %i.ht = and i64 %.val.i299, -8
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = trunc i64 %i.hs to i32
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i, i64 120
  store i32 %i.hv, ptr %i.hw, align 8, !tbaa !30
  %i.hx = icmp eq i64 %i.hs, 0
  br i1 %i.hx, label %_upb_DefBuilder_AllocCounted.exit309.thread, label %bb.ar

bb.ar:                                            ; preds = %google_protobuf_FileDescriptorProto_weak_dependency.exit
  %mul.ov.i302 = icmp ugt i64 %i.hs, 4611686018427387903
  br i1 %mul.ov.i302, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.hy = shl nuw i64 %i.hs, 2
  %i.hz = load ptr, ptr %i.c, align 8, !tbaa !64  ; 4 uses
  %i.ia = add i64 %i.hy, 4
  %i.ib = and i64 %i.ia, -8                       ; 3 uses
  %.val.i.i.i303 = load ptr, ptr %i.hz, align 8, !tbaa !65 ; 4 uses
  %i.ic = getelementptr i8, ptr %i.hz, i64 8
  %.val11.i.i.i304 = load ptr, ptr %i.ic, align 8, !tbaa !67
  %i.id = ptrtoint ptr %.val11.i.i.i304 to i64
  %i.ie = ptrtoint ptr %.val.i.i.i303 to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = icmp ult i64 %i.if, %i.ib
  br i1 %i.ig, label %upb_Arena_Malloc.exit.i.i307, label %upb_Arena_Malloc.exit.thread.i.i305, !prof !68

upb_Arena_Malloc.exit.thread.i.i305:              ; preds = %bb.at
  %i.ih = getelementptr inbounds nuw i8, ptr %.val.i.i.i303, i64 %i.ib
  store ptr %i.ih, ptr %i.hz, align 8, !tbaa !65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i303) ]
  br label %.lr.ph370.preheader

upb_Arena_Malloc.exit.i.i307:                     ; preds = %bb.at
  %i.ii = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.hz, i64 noundef %i.ib) #12 ; 2 uses
  %.not.i.i308 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i308, label %bb.au, label %.lr.ph370.preheader

bb.au:                                            ; preds = %upb_Arena_Malloc.exit.i.i307
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #14
  unreachable

_upb_DefBuilder_AllocCounted.exit309.thread:      ; preds = %google_protobuf_FileDescriptorProto_weak_dependency.exit, %google_protobuf_FileDescriptorProto_weak_dependency.exit.thread
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr null, ptr %i.ij, align 8, !tbaa !32
  br label %._crit_edge371

.lr.ph370.preheader:                              ; preds = %upb_Arena_Malloc.exit.i.i307, %upb_Arena_Malloc.exit.thread.i.i305
  %.0.i306 = phi ptr [ %i.ii, %upb_Arena_Malloc.exit.i.i307 ], [ %.val.i.i.i303, %upb_Arena_Malloc.exit.thread.i.i305 ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %.0.i306, ptr %i.ik, align 8, !tbaa !32
  br label %.lr.ph370

.lr.ph367:                                        ; preds = %.lr.ph367.preheader, %bb.aw
  %.0218366 = phi i64 [ %i.ip, %bb.aw ], [ 0, %.lr.ph367.preheader ] ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.0218366
  %i.im = load i32, ptr %i.il, align 4, !tbaa !3  ; 3 uses
  %i.in = load i32, ptr %i.gi, align 8, !tbaa !28
  %.not238 = icmp slt i32 %i.im, %i.in
  br i1 %.not238, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph367
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %i.im) #14
  unreachable

bb.aw:                                            ; preds = %.lr.ph367
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.0.i294, i64 %.0218366
  store i32 %i.im, ptr %i.io, align 4, !tbaa !3
  %i.ip = add nuw i64 %.0218366, 1                ; 2 uses
  %exitcond397.not = icmp eq i64 %i.ip, %i.go
  br i1 %exitcond397.not, label %._crit_edge368, label %.lr.ph367, !llvm.loop !92

._crit_edge371:                                   ; preds = %bb.bc, %_upb_DefBuilder_AllocCounted.exit309.thread
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__EnumDescriptorProto_msg_init) #12, !srcloc !57
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ir = load i64, ptr %i.iq, align 1            ; 2 uses
  %.not.i310 = icmp eq i64 %i.ir, 0
  br i1 %.not.i310, label %google_protobuf_FileDescriptorProto_enum_type.exit, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge371
  %i.is = inttoptr i64 %i.ir to ptr               ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !58
  %.val.i311 = load i64, ptr %i.is, align 8, !tbaa !60
  %i.iv = and i64 %.val.i311, -8
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = trunc i64 %i.iu to i32
  br label %google_protobuf_FileDescriptorProto_enum_type.exit

google_protobuf_FileDescriptorProto_enum_type.exit: ; preds = %._crit_edge371, %bb.ax
  %.5 = phi i32 [ %i.ix, %bb.ax ], [ 0, %._crit_edge371 ] ; 2 uses
  %.0.i312 = phi ptr [ %i.iw, %bb.ax ], [ null, %._crit_edge371 ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i, i64 128
  store i32 %.5, ptr %i.iy, align 8, !tbaa !34
  %i.iz = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.ja = call ptr @_upb_EnumDefs_New(ptr noundef nonnull %0, i32 noundef %.5, ptr noundef %.0.i312, ptr noundef %i.iz, ptr noundef null) #12
  %i.jb = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  store ptr %i.ja, ptr %i.jb, align 8, !tbaa !41
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FieldDescriptorProto_msg_init) #12, !srcloc !57
  %i.jc = load i64, ptr %i.o, align 1             ; 2 uses
  %.not.i313 = icmp eq i64 %i.jc, 0
  br i1 %.not.i313, label %google_protobuf_FileDescriptorProto_extension.exit316, label %bb.ay

bb.ay:                                            ; preds = %google_protobuf_FileDescriptorProto_enum_type.exit
  %i.jd = inttoptr i64 %i.jc to ptr               ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !58
  %.val.i314 = load i64, ptr %i.jd, align 8, !tbaa !60
  %i.jg = and i64 %.val.i314, -8
  %i.jh = inttoptr i64 %i.jg to ptr
  %i.ji = trunc i64 %i.jf to i32
  br label %google_protobuf_FileDescriptorProto_extension.exit316

google_protobuf_FileDescriptorProto_extension.exit316: ; preds = %google_protobuf_FileDescriptorProto_enum_type.exit, %bb.ay
  %.6 = phi i32 [ %i.ji, %bb.ay ], [ 0, %google_protobuf_FileDescriptorProto_enum_type.exit ] ; 2 uses
  %.0.i315 = phi ptr [ %i.jh, %bb.ay ], [ null, %google_protobuf_FileDescriptorProto_enum_type.exit ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.i, i64 132 ; 5 uses
  store i32 %.6, ptr %i.jj, align 4, !tbaa !35
  %i.jk = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !25
  %i.jn = call ptr @_upb_Extensions_New(ptr noundef nonnull %0, i32 noundef %.6, ptr noundef %.0.i315, ptr noundef %i.jk, ptr noundef %i.jm, ptr noundef null) #12
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i, i64 80 ; 3 uses
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !42
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__DescriptorProto_msg_init) #12, !srcloc !57
  %i.jp = load i64, ptr %i.u, align 1             ; 2 uses
  %.not.i317 = icmp eq i64 %i.jp, 0
  br i1 %.not.i317, label %google_protobuf_FileDescriptorProto_message_type.exit320, label %bb.az

bb.az:                                            ; preds = %google_protobuf_FileDescriptorProto_extension.exit316
  %i.jq = inttoptr i64 %i.jp to ptr               ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !58
  %.val.i318 = load i64, ptr %i.jq, align 8, !tbaa !60
  %i.jt = and i64 %.val.i318, -8
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = trunc i64 %i.js to i32
  br label %google_protobuf_FileDescriptorProto_message_type.exit320

google_protobuf_FileDescriptorProto_message_type.exit320: ; preds = %google_protobuf_FileDescriptorProto_extension.exit316, %bb.az
  %.7 = phi i32 [ %i.jv, %bb.az ], [ 0, %google_protobuf_FileDescriptorProto_extension.exit316 ] ; 2 uses
  %.0.i319 = phi ptr [ %i.ju, %bb.az ], [ null, %google_protobuf_FileDescriptorProto_extension.exit316 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.i, i64 124 ; 7 uses
  store i32 %.7, ptr %i.jw, align 4, !tbaa !27
  %i.jx = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.jy = call ptr @_upb_MessageDefs_New(ptr noundef nonnull %0, i32 noundef %.7, ptr noundef %.0.i319, ptr noundef %i.jx, ptr noundef null) #12
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 4 uses
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !40
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__ServiceDescriptorProto_msg_init) #12, !srcloc !57
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.kb = load i64, ptr %i.ka, align 1            ; 2 uses
  %.not.i321 = icmp eq i64 %i.kb, 0
  br i1 %.not.i321, label %google_protobuf_FileDescriptorProto_service.exit, label %bb.ba

bb.ba:                                            ; preds = %google_protobuf_FileDescriptorProto_message_type.exit320
  %i.kc = inttoptr i64 %i.kb to ptr               ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !58
  %.val.i322 = load i64, ptr %i.kc, align 8, !tbaa !60
  %i.kf = and i64 %.val.i322, -8
  %i.kg = inttoptr i64 %i.kf to ptr
  %i.kh = trunc i64 %i.ke to i32
  br label %google_protobuf_FileDescriptorProto_service.exit

google_protobuf_FileDescriptorProto_service.exit: ; preds = %google_protobuf_FileDescriptorProto_message_type.exit320, %bb.ba
  %.8 = phi i32 [ %i.kh, %bb.ba ], [ 0, %google_protobuf_FileDescriptorProto_message_type.exit320 ] ; 2 uses
  %.0.i323 = phi ptr [ %i.kg, %bb.ba ], [ null, %google_protobuf_FileDescriptorProto_message_type.exit320 ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  store i32 %.8, ptr %i.ki, align 8, !tbaa !36
  %i.kj = load ptr, ptr %i.fk, align 8, !tbaa !22
  %i.kk = call ptr @_upb_ServiceDefs_New(ptr noundef nonnull %0, i32 noundef %.8, ptr noundef %.0.i323, ptr noundef %i.kj) #12
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i, i64 88
  store ptr %i.kk, ptr %i.kl, align 8, !tbaa !43
  %i.km = load i32, ptr %i.jw, align 4, !tbaa !27 ; 2 uses
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.lr.ph373, label %.preheader355

.lr.ph370:                                        ; preds = %.lr.ph370.preheader, %bb.bc
  %.0220369 = phi i64 [ %i.ks, %bb.bc ], [ 0, %.lr.ph370.preheader ] ; 3 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %.0220369
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !3  ; 3 uses
  %i.kq = load i32, ptr %i.gi, align 8, !tbaa !28
  %.not237 = icmp slt i32 %i.kp, %i.kq
  br i1 %.not237, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph370
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef %i.kp) #14
  unreachable

bb.bc:                                            ; preds = %.lr.ph370
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.0.i306, i64 %.0220369
  store i32 %i.kp, ptr %i.kr, align 4, !tbaa !3
  %i.ks = add nuw i64 %.0220369, 1                ; 2 uses
  %exitcond398.not = icmp eq i64 %i.ks, %i.hs
  br i1 %exitcond398.not, label %._crit_edge371, label %.lr.ph370, !llvm.loop !93

.preheader355:                                    ; preds = %.lr.ph373, %google_protobuf_FileDescriptorProto_service.exit
  %i.kt = phi i32 [ %i.km, %google_protobuf_FileDescriptorProto_service.exit ], [ %i.kz, %.lr.ph373 ]
  %i.ku = load i32, ptr %i.jj, align 4, !tbaa !35 ; 2 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph375, label %.preheader354

.lr.ph373:                                        ; preds = %google_protobuf_FileDescriptorProto_service.exit, %.lr.ph373
  %.0219372 = phi i32 [ %i.ky, %.lr.ph373 ], [ 0, %google_protobuf_FileDescriptorProto_service.exit ] ; 2 uses
  %i.kw = load ptr, ptr %i.jz, align 8, !tbaa !40
  %i.kx = call ptr @_upb_MessageDef_At(ptr noundef %i.kw, i32 noundef %.0219372) #12
  call void @_upb_MessageDef_Resolve(ptr noundef nonnull %0, ptr noundef %i.kx) #12
  %i.ky = add nuw nsw i32 %.0219372, 1            ; 2 uses
  %i.kz = load i32, ptr %i.jw, align 4, !tbaa !27 ; 2 uses
  %i.la = icmp slt i32 %i.ky, %i.kz
  br i1 %i.la, label %.lr.ph373, label %.preheader355, !llvm.loop !94

.preheader354.loopexit:                           ; preds = %.lr.ph375
  %.pre401 = load i32, ptr %i.jw, align 4, !tbaa !27
  br label %.preheader354

.preheader354:                                    ; preds = %.preheader354.loopexit, %.preheader355
  %i.lb = phi i32 [ %i.li, %.preheader354.loopexit ], [ %i.ku, %.preheader355 ]
  %i.lc = phi i32 [ %.pre401, %.preheader354.loopexit ], [ %i.kt, %.preheader355 ] ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, 0
  br i1 %i.ld, label %.lr.ph377, label %.preheader353

.lr.ph375:                                        ; preds = %.preheader355, %.lr.ph375
  %.0217374 = phi i32 [ %i.lh, %.lr.ph375 ], [ 0, %.preheader355 ] ; 2 uses
  %i.le = load ptr, ptr %i.jo, align 8, !tbaa !42
  %i.lf = call ptr @_upb_FieldDef_At(ptr noundef %i.le, i32 noundef %.0217374) #12
  %i.lg = load ptr, ptr %i.jl, align 8, !tbaa !25
  call void @_upb_FieldDef_Resolve(ptr noundef nonnull %0, ptr noundef %i.lg, ptr noundef %i.lf) #12
  %i.lh = add nuw nsw i32 %.0217374, 1            ; 2 uses
  %i.li = load i32, ptr %i.jj, align 4, !tbaa !35 ; 2 uses
  %i.lj = icmp slt i32 %i.lh, %i.li
end_hunk_0
