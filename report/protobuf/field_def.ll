inline.NumInlined: 306
inline.NumDeleted: 92
begin_hunk_0_@_upb_FieldDef_Modifiers:bb.a
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.s = load i8, ptr %i.r, align 2, !tbaa !43, !range !26, !noundef !27
  %i.t = trunc nuw i8 %i.s to i1
  %spec.select = select i1 %i.t, i64 0, i64 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %_upb_FieldDef_IsPackable.exit.i, %bb.b, %bb.b, %upb_FieldDef_IsPacked.exit, %bb.d
  %.0 = phi i64 [ %spec.select, %bb.d ], [ 1, %bb.b ], [ 1, %bb.b ], [ %i.l, %upb_FieldDef_IsPacked.exit ], [ 1, %_upb_FieldDef_IsPackable.exit.i ], [ 16, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %.not.i12 = icmp eq i32 %i.v, 14
  br i1 %.not.i12, label %_upb_FieldDef_IsClosedEnum.exit, label %_upb_FieldDef_IsClosedEnum.exit.thread

_upb_FieldDef_IsClosedEnum.exit:                  ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = tail call zeroext i1 @upb_EnumDef_IsClosed(ptr noundef %i.x) #14
  %i.z = or disjoint i64 %.0, 4
  %cond.fr18 = freeze i1 %i.y
  %spec.select26 = select i1 %cond.fr18, i64 %i.z, i64 %.0
  %.pr = load i32, ptr %i.u, align 8, !tbaa !20
  br label %_upb_FieldDef_IsClosedEnum.exit.thread

_upb_FieldDef_IsClosedEnum.exit.thread:           ; preds = %.thread, %_upb_FieldDef_IsClosedEnum.exit
  %i.aa = phi i32 [ %.pr, %_upb_FieldDef_IsClosedEnum.exit ], [ %i.v, %.thread ]
  %i.ab = phi i64 [ %spec.select26, %_upb_FieldDef_IsClosedEnum.exit ], [ %.0, %.thread ] ; 3 uses
  %.not.i13 = icmp eq i32 %i.aa, 9
  br i1 %.not.i13, label %_upb_FieldDef_ValidateUtf8.exit, label %_upb_FieldDef_ValidateUtf8.exit.thread

_upb_FieldDef_ValidateUtf8.exit:                  ; preds = %_upb_FieldDef_IsClosedEnum.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 1
  %.fr28 = freeze i32 %i.af
  %i.ag = icmp eq i32 %.fr28, 2
  %i.ah = or i64 %i.ab, 32
  %spec.select27 = select i1 %i.ag, i64 %i.ah, i64 %i.ab
  br label %_upb_FieldDef_ValidateUtf8.exit.thread

_upb_FieldDef_ValidateUtf8.exit.thread:           ; preds = %_upb_FieldDef_ValidateUtf8.exit, %_upb_FieldDef_IsClosedEnum.exit.thread
  %i.ai = phi i64 [ %i.ab, %_upb_FieldDef_IsClosedEnum.exit.thread ], [ %spec.select27, %_upb_FieldDef_ValidateUtf8.exit ]
  ret i64 %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @upb_FieldDef_IsRequired(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp eq i32 %i.d, 3
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @upb_FieldDef_HasPresence(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.b = load i8, ptr %i.a, align 2, !tbaa !43, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @upb_FieldDef_HasDefault(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !44, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @upb_FieldDef_HasSubDef(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = and i32 %i.b, -2
  %i.d = icmp eq i32 %i.c, 10
  %i.e = icmp eq i32 %i.b, 14
  %spec.select = or i1 %i.e, %i.d
  ret i1 %spec.select
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @upb_FieldDef_IsMap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20
  %i.f = and i32 %i.e, -2
  %i.g = icmp eq i32 %i.f, 10
  br i1 %i.g, label %upb_FieldDef_MessageSubDef.exit, label %bb.c

upb_FieldDef_MessageSubDef.exit:                  ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = tail call zeroext i1 @upb_MessageDef_IsMapEntry(ptr noundef %i.i) #14
  br label %bb.c

bb.c:                                             ; preds = %upb_FieldDef_MessageSubDef.exit, %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.j, %upb_FieldDef_MessageSubDef.exit ]
  ret i1 %i.k
}

declare zeroext i1 @upb_MessageDef_IsMapEntry(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @upb_FieldDef_IsOptional(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = icmp eq i32 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @upb_FieldDef_IsString(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 8
  %i.e = icmp eq i32 %i.c, 11
  %spec.select = or i1 %i.d, %i.e
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @upb_FieldDef_checklabel(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 3
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @upb_FieldDef_checktype(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 11
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @upb_FieldDef_checkintfmt(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 3
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @upb_FieldDef_checkdescriptortype(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 18
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_Extensions_New(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = mul nuw nsw i64 %i.a, 96                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !53 ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val11.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.h = ptrtoint ptr %.val11.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.d
  store ptr %i.l, ptr %i.f, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %.lr.ph

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.f, i64 noundef %i.d) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

.lr.ph:                                           ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.m, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_upb_FieldDef_CreateExt.exit, %bb.a
  %.0.i26 = phi ptr [ null, %bb.a ], [ %.0.i.ph, %_upb_FieldDef_CreateExt.exit ]
  ret ptr %.0.i26

bb.f:                                             ; preds = %.lr.ph, %_upb_FieldDef_CreateExt.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_upb_FieldDef_CreateExt.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw [96 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 8 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 83
  store i8 1, ptr %i.s, align 1, !tbaa !25
  tail call fastcc void @_upb_FieldDef_Create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %3, ptr noundef %i.r, ptr noundef %5, ptr noundef nonnull %i.p)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef %i.x) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %5, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %i.ab = tail call i64 @_upb_DefType_Pack(ptr noundef nonnull %i.p, i32 noundef 0) #14
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #15
  %i.ad = load ptr, ptr %0, align 8, !tbaa !59
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.af = tail call zeroext i1 @_upb_DefPool_InsertSym(ptr noundef %i.ad, ptr nonnull %i.aa, i64 %i.ac, i64 %i.ab, ptr noundef %i.ae) #14
  br i1 %i.af, label %_upb_FieldDef_CreateExt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_upb_DefBuilder_FailJmp(ptr noundef nonnull %0) #16
  unreachable

_upb_FieldDef_CreateExt.exit:                     ; preds = %bb.h
  %i.ag = load i32, ptr %i.o, align 4, !tbaa !61  ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.o, align 4, !tbaa !61
  %i.ai = trunc i32 %i.ag to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 78
  store i16 %i.ai, ptr %i.aj, align 2, !tbaa !22
  %i.ak = trunc i64 %indvars.iv to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  store i16 %i.ak, ptr %i.al, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !62
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_FieldDefs_New(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = mul nuw nsw i64 %i.a, 96                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !53 ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val11.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.h = ptrtoint ptr %.val11.i.i.i to i64
  %i.i = ptrtoint ptr %.val.i.i.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ult i64 %i.j, %i.d
  br i1 %i.k, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.d
  store ptr %i.l, ptr %i.f, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %.lr.ph

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.f, i64 noundef %i.d) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

.lr.ph:                                           ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.m, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %.0.i34 = phi ptr [ null, %bb.a ], [ %.0.i.ph, %bb.l ]
  ret ptr %.0.i34

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.026 = phi i32 [ 0, %.lr.ph ], [ %i.af, %bb.l ]
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 83
  store i8 0, ptr %i.r, align 1, !tbaa !25
  tail call fastcc void @_upb_FieldDef_Create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %3, ptr noundef %i.q, ptr noundef %5, ptr noundef nonnull %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !32
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %_upb_FieldDef_CreateNotExt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  %i.w = load i8, ptr %i.v, align 4, !tbaa !40, !range !26, !noundef !27
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %_upb_FieldDef_CreateNotExt.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef %i.z) #16
  unreachable

_upb_FieldDef_CreateNotExt.exit:                  ; preds = %bb.f, %bb.g
  tail call void @_upb_MessageDef_InsertField(ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull %i.o) #14
  %i.aa = trunc i64 %indvars.iv to i16            ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  store i16 %i.aa, ptr %i.ab, align 4, !tbaa !21
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !63
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_upb_FieldDef_CreateNotExt.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 78
  store i16 %i.aa, ptr %i.ad, align 2, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_upb_FieldDef_CreateNotExt.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ag = icmp ugt i32 %.026, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %6, align 1, !tbaa !64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !65
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_FieldDefs_Sorted(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = shl nsw i64 %i.a, 3                      ; 3 uses
  %.val.i = load ptr, ptr %2, align 8, !tbaa !53  ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val11.i = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.d = ptrtoint ptr %.val11.i to i64
  %i.e = ptrtoint ptr %.val.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %upb_Arena_Malloc.exit, label %upb_Arena_Malloc.exit.thread, !prof !56

upb_Arena_Malloc.exit.thread:                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.b
  store ptr %i.h, ptr %2, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %.preheader

upb_Arena_Malloc.exit:                            ; preds = %bb.a
  %i.i = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %2, i64 noundef %i.b) #14 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %upb_Arena_Malloc.exit.thread, %upb_Arena_Malloc.exit
  %.0.i37 = phi ptr [ %.val.i, %upb_Arena_Malloc.exit.thread ], [ %i.i, %upb_Arena_Malloc.exit ] ; 16 uses
  %i.j = icmp sgt i32 %1, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [96 x i8], ptr %0, <2 x i64> %vec.ind
  %wide.gep39 = getelementptr inbounds nuw [96 x i8], ptr %0, <2 x i64> %step.add
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x ptr> %wide.gep, ptr %i.k, align 8, !tbaa !66
  store <2 x ptr> %wide.gep39, ptr %i.l, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph26.preheader, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.preheader
  tail call void @qsort(ptr noundef nonnull %.0.i37, i64 noundef %i.a, i64 noundef 8, ptr noundef nonnull @_upb_FieldDef_Compare) #14
  br label %.loopexit

.lr.ph26.preheader:                               ; preds = %.lr.ph, %middle.block
  tail call void @qsort(ptr noundef nonnull %.0.i37, i64 noundef %i.a, i64 noundef 8, ptr noundef nonnull @_upb_FieldDef_Compare) #14
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.n = icmp ult i32 %1, 8
  br i1 %i.n, label %.lr.ph26.epil.preheader, label %.lr.ph26.preheader.new

.lr.ph26.preheader.new:                           ; preds = %.lr.ph26.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph26

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader40 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv
  store ptr %i.o, ptr %i.p, align 8, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph26.preheader, label %.lr.ph, !llvm.loop !71

.lr.ph26:                                         ; preds = %.lr.ph26, %.lr.ph26.preheader.new
  %indvars.iv28 = phi i64 [ 0, %.lr.ph26.preheader.new ], [ %indvars.iv.next29.7, %.lr.ph26 ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph26.preheader.new ], [ %niter.next.7, %.lr.ph26 ]
  %i.q = trunc i64 %indvars.iv28 to i16
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv28
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 78
  store i16 %i.q, ptr %i.t, align 2, !tbaa !22
  %indvars.iv.next29 = or disjoint i64 %indvars.iv28, 1 ; 2 uses
  %i.u = trunc i64 %indvars.iv.next29 to i16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv.next29
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 78
  store i16 %i.u, ptr %i.x, align 2, !tbaa !22
  %indvars.iv.next29.1 = or disjoint i64 %indvars.iv28, 2 ; 2 uses
  %i.y = trunc i64 %indvars.iv.next29.1 to i16
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv.next29.1
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 78
  store i16 %i.y, ptr %i.ab, align 2, !tbaa !22
  %indvars.iv.next29.2 = or disjoint i64 %indvars.iv28, 3 ; 2 uses
  %i.ac = trunc i64 %indvars.iv.next29.2 to i16
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv.next29.2
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 78
  store i16 %i.ac, ptr %i.af, align 2, !tbaa !22
  %indvars.iv.next29.3 = or disjoint i64 %indvars.iv28, 4 ; 2 uses
  %i.ag = trunc i64 %indvars.iv.next29.3 to i16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv.next29.3
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 78
  store i16 %i.ag, ptr %i.aj, align 2, !tbaa !22
  %indvars.iv.next29.4 = or disjoint i64 %indvars.iv28, 5 ; 2 uses
  %i.ak = trunc i64 %indvars.iv.next29.4 to i16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv.next29.4
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 78
  store i16 %i.ak, ptr %i.an, align 2, !tbaa !22
  %indvars.iv.next29.5 = or disjoint i64 %indvars.iv28, 6 ; 2 uses
  %i.ao = trunc i64 %indvars.iv.next29.5 to i16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv.next29.5
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 78
  store i16 %i.ao, ptr %i.ar, align 2, !tbaa !22
  %indvars.iv.next29.6 = or disjoint i64 %indvars.iv28, 7 ; 2 uses
  %i.as = trunc i64 %indvars.iv.next29.6 to i16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv.next29.6
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 78
  store i16 %i.as, ptr %i.av, align 2, !tbaa !22
  %indvars.iv.next29.7 = add nuw nsw i64 %indvars.iv28, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph26, !llvm.loop !72

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph26
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph26.epil.preheader

.lr.ph26.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph26.preheader
  %indvars.iv28.epil.init = phi i64 [ 0, %.lr.ph26.preheader ], [ %indvars.iv.next29.7, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph26.epil

.lr.ph26.epil:                                    ; preds = %.lr.ph26.epil, %.lr.ph26.epil.preheader
  %indvars.iv28.epil = phi i64 [ %indvars.iv28.epil.init, %.lr.ph26.epil.preheader ], [ %indvars.iv.next29.epil, %.lr.ph26.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph26.epil.preheader ], [ %epil.iter.next, %.lr.ph26.epil ]
  %i.aw = trunc i64 %indvars.iv28.epil to i16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0.i37, i64 %indvars.iv28.epil
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 78
  store i16 %i.aw, ptr %i.az, align 2, !tbaa !22
  %indvars.iv.next29.epil = add nuw nsw i64 %indvars.iv28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph26.epil, !llvm.loop !73

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph26.epil, %._crit_edge, %upb_Arena_Malloc.exit
  %.0.i38 = phi ptr [ null, %upb_Arena_Malloc.exit ], [ %.0.i37, %._crit_edge ], [ %.0.i37, %.lr.ph26.epil ], [ %.0.i37, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.0.i38
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @_upb_FieldDef_Compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = load ptr, ptr %1, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call i32 @llvm.ucmp.i32.i32(i32 %i.c, i32 %i.f)
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @upb_FieldDef_MiniDescriptorEncode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.upb_DescState, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 32, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !23
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i32, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  switch i32 %i.i, label %_upb_FieldDef_IsPackable.exit.i.i [
    i32 12, label %.thread.i
    i32 9, label %.thread.i
  ]

_upb_FieldDef_IsPackable.exit.i.i:                ; preds = %bb.b
  %i.j = and i32 %i.i, -2
  %.not.i.i = icmp eq i32 %i.j, 10
  br i1 %.not.i.i, label %.thread.i, label %upb_FieldDef_IsPacked.exit.i

upb_FieldDef_IsPacked.exit.i:                     ; preds = %_upb_FieldDef_IsPackable.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 1
end_hunk_0
begin_hunk_1_@_upb_FieldDef_Resolve:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr align 1 %.sroa.013.0.copyload14.i40.i, i64 %.sroa.9.0.copyload16.i41.i, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.9.0.copyload16.i41.i
  store i8 0, ptr %i.bp, align 1, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.0.i.i = phi ptr [ %.sroa.013.0.copyload14.i40.i, %bb.t ], [ %i.c, %bb.w ] ; 16 uses
  switch i32 %i.bm, label %parse_default.exit.i [
    i32 3, label %bb.y
    i32 5, label %bb.ac
    i32 8, label %bb.ad
    i32 4, label %bb.ag
    i32 9, label %bb.ak
    i32 7, label %bb.an
    i32 2, label %bb.aq
    i32 1, label %bb.at
    i32 10, label %bb.aw
    i32 11, label %bb.bb
    i32 6, label %bb.bh
  ]

bb.y:                                             ; preds = %bb.x
  %i.bq = call i64 @strtol(ptr noundef %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #14 ; 2 uses
  %i.br = add i64 %i.bq, -2147483648
  %or.cond.i.i = icmp ult i64 %i.br, -4294967296
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bt = icmp eq i32 %i.bs, 34
  br i1 %i.bt, label %.thread.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %.not82.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not82.i.i, label %bb.ab, label %.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.bq, ptr %i.bw, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.ac:                                            ; preds = %bb.x
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.by = call ptr @upb_EnumDef_FindValueByNameWithSize(ptr noundef %i.bx, ptr noundef %.0.i.i, i64 noundef %.sroa.9.0.copyload16.i41.i) #14 ; 2 uses
  %.not81.i.i = icmp eq ptr %i.by, null
  br i1 %.not81.i.i, label %.thread.i.i, label %.thread98.i.i

.thread98.i.i:                                    ; preds = %bb.ac
  %i.bz = call i32 @upb_EnumValueDef_Number(ptr noundef nonnull %i.by) #14
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.ad:                                            ; preds = %bb.x
  %i.cc = call i64 @strtoll(ptr noundef %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #14
  %i.cd = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.ce = icmp eq i32 %i.cd, 34
  br i1 %i.ce, label %.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !32
  %.not80.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not80.i.i, label %bb.af, label %.thread.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.cc, ptr %i.ch, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.ag:                                            ; preds = %bb.x
  %i.ci = call i64 @strtoul(ptr noundef %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #14 ; 2 uses
  %i.cj = icmp ugt i64 %i.ci, 4294967295
  br i1 %i.cj, label %.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.cl = icmp eq i32 %i.ck, 34
  br i1 %i.cl, label %.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !32
  %.not79.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not79.i.i, label %bb.aj, label %.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.ci, ptr %i.co, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.ak:                                            ; preds = %bb.x
  %i.cp = call i64 @strtoull(ptr noundef %.0.i.i, ptr noundef nonnull %i.b, i32 noundef 0) #14
  %i.cq = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.cr = icmp eq i32 %i.cq, 34
  br i1 %i.cr, label %.thread.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !32
  %.not78.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not78.i.i, label %bb.am, label %.thread.i.i

bb.am:                                            ; preds = %bb.al
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.cp, ptr %i.cu, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.an:                                            ; preds = %bb.x
  %i.cv = call double @strtod(ptr noundef %.0.i.i, ptr noundef nonnull %i.b) #14
  %i.cw = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.cx = icmp eq i32 %i.cw, 34
  br i1 %i.cx, label %.thread.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !32
  %.not77.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not77.i.i, label %bb.ap, label %.thread.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.cv, ptr %i.da, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.aq:                                            ; preds = %bb.x
  %i.db = call float @strtof(ptr noundef %.0.i.i, ptr noundef nonnull %i.b) #14
  %i.dc = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.dd = icmp eq i32 %i.dc, 34
  br i1 %i.dd, label %.thread.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.df = load i8, ptr %i.de, align 1, !tbaa !32
  %.not.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i, label %bb.as, label %.thread.i.i

bb.as:                                            ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 48
  store float %i.db, ptr %i.dg, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.at:                                            ; preds = %bb.x
  switch i64 %.sroa.9.0.copyload16.i41.i, label %.thread.i.i [
    i64 5, label %streql2.exit.i.i
    i64 4, label %streql2.exit90.i.i
  ]

streql2.exit.i.i:                                 ; preds = %bb.at
  %i.dh = load i32, ptr %.0.i.i, align 1
  %i.di = xor i32 %i.dh, 1936482662
  %i.dj = getelementptr i8, ptr %.0.i.i, i64 4
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i32
  %i.dm = xor i32 %i.dl, 101
  %i.dn = or i32 %i.di, %i.dm
  %i.do = icmp ne i32 %i.dn, 0
  %i.dp = zext i1 %i.do to i32
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.au, label %.thread.i.i

bb.au:                                            ; preds = %streql2.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.dr, align 8, !tbaa !32
  br label %parse_default.exit.i

streql2.exit90.i.i:                               ; preds = %bb.at
  %i.ds = load i32, ptr %.0.i.i, align 1
  %i.dt = icmp ne i32 %i.ds, 1702195828
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.av, label %.thread.i.i

bb.av:                                            ; preds = %streql2.exit90.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 1, ptr %i.dw, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.aw:                                            ; preds = %bb.x
  %i.dx = icmp eq i64 %.sroa.9.0.copyload16.i41.i, -16
  br i1 %i.dx, label %_upb_DefBuilder_Alloc.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !45 ; 4 uses
  %i.ea = add i64 %.sroa.9.0.copyload16.i41.i, 23
  %i.eb = and i64 %i.ea, -8                       ; 3 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !53 ; 4 uses
  %i.ec = getelementptr i8, ptr %i.dz, i64 8
  %.val11.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !55
  %i.ed = ptrtoint ptr %.val11.i.i.i.i.i to i64
  %i.ee = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp ult i64 %i.ef, %i.eb
  br i1 %i.eg, label %upb_Arena_Malloc.exit.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i.i.i:             ; preds = %bb.ax
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.eb
  store ptr %i.eh, ptr %i.dz, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  br label %bb.az

upb_Arena_Malloc.exit.i.i.i.i:                    ; preds = %bb.ax
  %i.ei = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.dz, i64 noundef %i.eb) #14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i.i
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

_upb_DefBuilder_Alloc.exit.i.i.i:                 ; preds = %bb.aw
  call void @_upb_DefBuilder_OomErr(ptr noundef %0) #16
  unreachable

bb.az:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i
  %.0.i.ph.i.i.i = phi ptr [ %.val.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i ], [ %i.ei, %upb_Arena_Malloc.exit.i.i.i.i ] ; 4 uses
  store i64 %.sroa.9.0.copyload16.i41.i, ptr %.0.i.ph.i.i.i, align 8, !tbaa !36
  %.not13.i.i.i = icmp eq i64 %.sroa.9.0.copyload16.i41.i, 0
  br i1 %.not13.i.i.i, label %newstr.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr readonly align 1 %.0.i.i, i64 %.sroa.9.0.copyload16.i41.i, i1 false)
  br label %newstr.exit.i.i

newstr.exit.i.i:                                  ; preds = %bb.ba, %bb.az
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i.i, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.sroa.9.0.copyload16.i41.i
  store i8 0, ptr %i.el, align 1, !tbaa !32
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.0.i.ph.i.i.i, ptr %i.em, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.bb:                                            ; preds = %bb.x
  %i.en = icmp eq i64 %.sroa.9.0.copyload16.i41.i, -16
  br i1 %i.en, label %_upb_DefBuilder_Alloc.exit.thread.i.i.i, label %bb.bc

_upb_DefBuilder_Alloc.exit.thread.i.i.i:          ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !17
  br label %.lr.ph.preheader.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !45 ; 4 uses
  %i.eq = add i64 %.sroa.9.0.copyload16.i41.i, 23
  %i.er = and i64 %i.eq, -8                       ; 3 uses
  %.val.i.i.i91.i.i = load ptr, ptr %i.ep, align 8, !tbaa !53 ; 4 uses
  %i.es = getelementptr i8, ptr %i.ep, i64 8
  %.val11.i.i.i92.i.i = load ptr, ptr %i.es, align 8, !tbaa !55
  %i.et = ptrtoint ptr %.val11.i.i.i92.i.i to i64
  %i.eu = ptrtoint ptr %.val.i.i.i91.i.i to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp ult i64 %i.ev, %i.er
  br i1 %i.ew, label %upb_Arena_Malloc.exit.i.i95.i.i, label %upb_Arena_Malloc.exit.thread.i.i93.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i93.i.i:           ; preds = %bb.bc
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i.i.i91.i.i, i64 %i.er
  store ptr %i.ex, ptr %i.ep, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i91.i.i) ]
  br label %_upb_DefBuilder_Alloc.exit.i94.i.i

upb_Arena_Malloc.exit.i.i95.i.i:                  ; preds = %bb.bc
  %i.ey = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.ep, i64 noundef %i.er) #14 ; 2 uses
  %.not.i.i96.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i96.i.i, label %bb.bd, label %_upb_DefBuilder_Alloc.exit.i94.i.i

bb.bd:                                            ; preds = %upb_Arena_Malloc.exit.i.i95.i.i
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

_upb_DefBuilder_Alloc.exit.i94.i.i:               ; preds = %upb_Arena_Malloc.exit.i.i95.i.i, %upb_Arena_Malloc.exit.thread.i.i93.i.i
  %.0.i.i.i.i = phi ptr [ %.val.i.i.i91.i.i, %upb_Arena_Malloc.exit.thread.i.i93.i.i ], [ %i.ey, %upb_Arena_Malloc.exit.i.i95.i.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !17
  %.not.i.i.i = icmp eq i64 %.sroa.9.0.copyload16.i41.i, 0
  br i1 %.not.i.i.i, label %unescape.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_upb_DefBuilder_Alloc.exit.i94.i.i, %_upb_DefBuilder_Alloc.exit.thread.i.i.i
  %i.fa = phi ptr [ inttoptr (i64 8 to ptr), %_upb_DefBuilder_Alloc.exit.thread.i.i.i ], [ %i.ez, %_upb_DefBuilder_Alloc.exit.i94.i.i ] ; 2 uses
  %.0.i24.i.i.i = phi ptr [ null, %_upb_DefBuilder_Alloc.exit.thread.i.i.i ], [ %.0.i.i.i.i, %_upb_DefBuilder_Alloc.exit.i94.i.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.sroa.9.0.copyload16.i41.i ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bg, %.lr.ph.preheader.i.i.i
  %i.fc = phi ptr [ %i.fi, %bb.bg ], [ %.0.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.017.i.i.i = phi ptr [ %.1.i.i.i, %bb.bg ], [ %i.fa, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !32
  %i.fe = icmp eq i8 %i.fd, 92
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !17
  br i1 %i.fe, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i.i
  %i.fg = call signext i8 @_upb_DefBuilder_ParseEscape(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.fb) #14
  br label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.fh = load i8, ptr %i.fc, align 1, !tbaa !32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %storemerge.i.i.i = phi i8 [ %i.fh, %bb.bf ], [ %i.fg, %bb.be ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 1 ; 2 uses
  store i8 %storemerge.i.i.i, ptr %.017.i.i.i, align 1, !tbaa !32
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.fj = icmp ult ptr %i.fi, %i.fb
  br i1 %i.fj, label %.lr.ph.i.i.i, label %unescape.exit.i.i, !llvm.loop !83

unescape.exit.i.i:                                ; preds = %bb.bg, %_upb_DefBuilder_Alloc.exit.i94.i.i
  %i.fk = phi ptr [ %i.ez, %_upb_DefBuilder_Alloc.exit.i94.i.i ], [ %i.fa, %bb.bg ]
  %.0.i25.i.i.i = phi ptr [ %.0.i.i.i.i, %_upb_DefBuilder_Alloc.exit.i94.i.i ], [ %.0.i24.i.i.i, %bb.bg ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.ez, %_upb_DefBuilder_Alloc.exit.i94.i.i ], [ %.1.i.i.i, %bb.bg ]
  %i.fl = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %.0.i25.i.i.i, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.0.i25.i.i.i, ptr %i.fo, align 8, !tbaa !32
  br label %parse_default.exit.i

bb.bh:                                            ; preds = %bb.x
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %i.fq) #16
  unreachable

.thread.i.i:                                      ; preds = %streql2.exit90.i.i, %streql2.exit.i.i, %bb.at, %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y
  %i.fr = trunc i64 %.sroa.9.0.copyload16.i41.i to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !19
  %i.fu = load i32, ptr %i.h, align 8, !tbaa !20
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %i.fr, ptr noundef %.0.i.i, ptr noundef %i.ft, i32 noundef %i.fu) #16
  unreachable

parse_default.exit.i:                             ; preds = %unescape.exit.i.i, %newstr.exit.i.i, %bb.av, %bb.au, %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.af, %.thread98.i.i, %bb.ab, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %resolve_default.exit

bb.bi:                                            ; preds = %.thread.i, %bb.n
  %i.fv = phi i1 [ false, %.thread.i ], [ %i.an, %bb.n ]
  %i.fw = load i32, ptr %i.h, align 8, !tbaa !20
  %i.fx = add i32 %i.fw, -1
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !3
  switch i32 %i.ga, label %resolve_default.exit [
    i32 3, label %bb.bj
    i32 8, label %bb.bj
    i32 9, label %bb.bk
    i32 4, label %bb.bk
    i32 7, label %bb.bl
    i32 2, label %bb.bl
    i32 10, label %bb.bm
    i32 11, label %bb.bm
    i32 1, label %bb.bo
    i32 5, label %bb.bp
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.gb, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bk:                                            ; preds = %bb.bi, %bb.bi
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.gc, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bl:                                            ; preds = %bb.bi, %bb.bi
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double 0.000000e+00, ptr %i.gd, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bm:                                            ; preds = %bb.bi, %bb.bi
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !45 ; 4 uses
  %.val.i.i.i.i20.i = load ptr, ptr %i.gf, align 8, !tbaa !53 ; 4 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 8
  %.val11.i.i.i.i21.i = load ptr, ptr %i.gg, align 8, !tbaa !55
  %i.gh = ptrtoint ptr %.val11.i.i.i.i21.i to i64
  %i.gi = ptrtoint ptr %.val.i.i.i.i20.i to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = icmp ult i64 %i.gj, 16
  br i1 %i.gk, label %upb_Arena_Malloc.exit.i.i.i25.i, label %upb_Arena_Malloc.exit.thread.i.i.i22.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i.i22.i:           ; preds = %bb.bm
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i20.i, i64 16
  store ptr %i.gl, ptr %i.gf, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i20.i) ]
  br label %newstr.exit.i23.i

upb_Arena_Malloc.exit.i.i.i25.i:                  ; preds = %bb.bm
  %i.gm = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.gf, i64 noundef 16) #14 ; 2 uses
  %.not.i.i.i26.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i26.i, label %bb.bn, label %newstr.exit.i23.i

bb.bn:                                            ; preds = %upb_Arena_Malloc.exit.i.i.i25.i
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

newstr.exit.i23.i:                                ; preds = %upb_Arena_Malloc.exit.i.i.i25.i, %upb_Arena_Malloc.exit.thread.i.i.i22.i
  %.0.i.ph.i.i24.i = phi ptr [ %.val.i.i.i.i20.i, %upb_Arena_Malloc.exit.thread.i.i.i22.i ], [ %i.gm, %upb_Arena_Malloc.exit.i.i.i25.i ] ; 3 uses
  store i64 0, ptr %.0.i.ph.i.i24.i, align 8, !tbaa !36
  %i.gn = getelementptr inbounds nuw i8, ptr %.0.i.ph.i.i24.i, i64 8
  store i8 0, ptr %i.gn, align 8, !tbaa !32
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %.0.i.ph.i.i24.i, ptr %i.go, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bo:                                            ; preds = %bb.bi
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 0, ptr %i.gp, align 8, !tbaa !32
  br label %resolve_default.exit

bb.bp:                                            ; preds = %bb.bi
  %i.gq = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.gr = call i32 @upb_EnumDef_Default(ptr noundef %i.gq) #14 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !32
  %.not.i19.i = icmp ne i32 %i.gr, 0
  %or.cond.not.i.i = select i1 %i.fv, i1 %.not.i19.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.bq, label %resolve_default.exit

bb.bq:                                            ; preds = %bb.bp
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !19
  %i.gw = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.gx = call ptr @upb_EnumDef_FullName(ptr noundef %i.gw) #14
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %i.gv, ptr noundef %i.gx) #16
  unreachable

resolve_default.exit:                             ; preds = %parse_default.exit.i, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %newstr.exit.i23.i, %bb.bo, %bb.bp
  %.sink.i = phi i8 [ 1, %parse_default.exit.i ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %bb.bl ], [ 0, %newstr.exit.i23.i ], [ 0, %bb.bo ], [ 0, %bb.bp ]
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 %.sink.i, ptr %i.gy, align 8, !tbaa !44
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 83
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !25, !range !26, !noundef !27
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.br, label %resolve_extension.exit

bb.br:                                            ; preds = %resolve_default.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !32
  %i.he = and i8 %i.hd, 2
  %.not.i13 = icmp eq i8 %i.he, 0
  br i1 %.not.i13, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %i.hg) #16
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.013.0.copyload14.i.i14 = load ptr, ptr %i.hh, align 1
  %.sroa.9.0..sroa_idx15.i.i15 = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.9.0.copyload16.i.i16 = load i64, ptr %.sroa.9.0..sroa_idx15.i.i15, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !19
  %i.hk = call ptr @_upb_DefBuilder_Resolve(ptr noundef %0, ptr noundef %i.hj, ptr noundef %1, ptr %.sroa.013.0.copyload14.i.i14, i64 %.sroa.9.0.copyload16.i.i16, i32 noundef 1) #14 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.hk, ptr %i.hl, align 8, !tbaa !31
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !24
  %i.ho = call zeroext i1 @_upb_MessageDef_IsValidExtensionNumber(ptr noundef %i.hk, i32 noundef %i.hn) #14
  br i1 %i.ho, label %resolve_extension.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hp = load i32, ptr %i.hm, align 8, !tbaa !24
  %i.hq = load ptr, ptr %i.hi, align 8, !tbaa !19
  %i.hr = call ptr @upb_MessageDef_FullName(ptr noundef %i.hk) #14
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %i.hp, ptr noundef %i.hq, ptr noundef %i.hr) #16
  unreachable

resolve_extension.exit:                           ; preds = %bb.bt, %resolve_default.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_upb_FieldDef_Create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef initializes((16, 40), (56, 64), (72, 76), (84, 85)) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %.val, ptr %i.d, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.013.0.copyload14.i = load ptr, ptr %i.e, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.9.0.copyload16.i = load i64, ptr %.sroa.9.0..sroa_idx15.i, align 1 ; 5 uses
  %i.f = tail call ptr @_upb_DefBuilder_MakeFullName(ptr noundef %0, ptr noundef %1, ptr %.sroa.013.0.copyload14.i, i64 %.sroa.9.0.copyload16.i) #14
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.i = load i32, ptr %i.h, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.n = and i8 %i.l, 1
  store i8 %i.n, ptr %i.m, align 4, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store ptr null, ptr %i.p, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !32
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FieldOptions_msg_init) #14, !srcloc !85
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.u = load i64, ptr %i.t, align 1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.y = call i32 @upb_Encode(ptr noundef %i.v, ptr noundef nonnull @google__protobuf__FieldOptions_msg_init, i32 noundef 0, ptr noundef %i.x, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not130 = icmp eq ptr %i.z, null
  br i1 %.not130, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !86
  %i.ab = load ptr, ptr %0, align 8, !tbaa !59
  %i.ac = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ab) #14
  %i.ad = getelementptr i8, ptr %0, i64 56
  %.val138 = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 5 uses
  %i.ae = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FieldOptions_msg_init, i64 8), align 8, !tbaa !87
  %i.af = zext i16 %i.ae to i64                   ; 5 uses
  %i.ag = and i64 %i.af, 7
  %i.ah = icmp eq i64 %i.ag, 0
  call void @llvm.assume(i1 %i.ah)
  %.val.i.i.i.i = load ptr, ptr %.val138, align 8, !tbaa !53 ; 4 uses
  %i.ai = getelementptr i8, ptr %.val138, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !55
  %i.aj = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.ak = ptrtoint ptr %.val.i.i.i.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, %i.af
  br i1 %i.am, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.af
  store ptr %i.an, ptr %.val138, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.e

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %bb.d
  %i.ao = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.val138, i64 noundef %i.af) #14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e, !prof !88

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i3.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.ao, %upb_Arena_Malloc.exit.i.i.i ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i, i8 0, i64 %i.af, i1 false)
  %i.ap = call i32 @upb_Decode(ptr noundef nonnull %i.z, i64 noundef %i.aa, ptr noundef nonnull %.0.i3.i.i.i, ptr noundef nonnull @google__protobuf__FieldOptions_msg_init, ptr noundef %i.ac, i32 noundef 0, ptr noundef nonnull %.val138) #14
  %.not10.i = icmp eq i32 %i.ap, 0
  br i1 %.not10.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %upb_Arena_Malloc.exit.i.i.i
  store ptr null, ptr %5, align 8, !tbaa !7
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  store ptr %.0.i3.i.i.i, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr @kUpbDefOptDefault, align 8, !tbaa !17
  store ptr %i.aq, ptr %5, align 8, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.as = call i32 @upb_FileDef_Edition(ptr noundef %i.ar) #14 ; 2 uses
  %i.at = load ptr, ptr %5, align 8, !tbaa !7
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSet_msg_init) #14, !srcloc !85
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load i64, ptr %i.au, align 1
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = icmp ult i32 %i.as, 1000
  br i1 %i.ax, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 2 uses
  %.val.i = load i64, ptr %i.az, align 8, !tbaa !32
  %i.ba = and i64 %.val.i, -2                     ; 2 uses
  %i.bb = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__FeatureSet_msg_init, i64 8), align 8, !tbaa !87
  %i.bc = zext i16 %i.bb to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.bc, i1 false)
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %upb_Message_Clear.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = inttoptr i64 %i.ba to ptr
  store i32 0, ptr %i.bd, align 8, !tbaa !3
  br label %upb_Message_Clear.exit

upb_Message_Clear.exit:                           ; preds = %bb.j, %bb.k
  %i.be = load ptr, ptr %5, align 8, !tbaa !7     ; 3 uses
  %i.bf = load ptr, ptr %i.ay, align 8, !tbaa !89 ; 6 uses
  %i.bg = load i8, ptr %i.q, align 1, !tbaa !32   ; 3 uses
  %i.bh = and i8 %i.bg, 8
  %.not.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i, label %google_protobuf_FieldDescriptorProto_label.exit.thread.i, label %google_protobuf_FieldDescriptorProto_label.exit.i

google_protobuf_FieldDescriptorProto_label.exit.i: ; preds = %upb_Message_Clear.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = icmp eq i32 %i.bj, 2
  br i1 %i.bk, label %bb.l, label %google_protobuf_FieldDescriptorProto_label.exit.thread.i

bb.l:                                             ; preds = %google_protobuf_FieldDescriptorProto_label.exit.i
  %i.bl = icmp eq i32 %i.as, 999
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %i.bm) #16
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %i.bp = or i8 %i.bo, 1
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 3, ptr %i.bq, align 1
  %.pre.i = load i8, ptr %i.q, align 1, !tbaa !32
  br label %google_protobuf_FieldDescriptorProto_label.exit.thread.i

google_protobuf_FieldDescriptorProto_label.exit.thread.i: ; preds = %bb.n, %google_protobuf_FieldDescriptorProto_label.exit.i, %upb_Message_Clear.exit
  %i.br = phi i8 [ %i.bg, %google_protobuf_FieldDescriptorProto_label.exit.i ], [ %.pre.i, %bb.n ], [ %i.bg, %upb_Message_Clear.exit ]
  %i.bs = phi i1 [ false, %google_protobuf_FieldDescriptorProto_label.exit.i ], [ true, %bb.n ], [ false, %upb_Message_Clear.exit ]
  %i.bt = and i8 %i.br, 16
  %.not.i13.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i13.i, label %google_protobuf_FieldDescriptorProto_type.exit.thread.i, label %google_protobuf_FieldDescriptorProto_type.exit.i

google_protobuf_FieldDescriptorProto_type.exit.i: ; preds = %google_protobuf_FieldDescriptorProto_label.exit.thread.i
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = icmp eq i32 %i.bv, 10
  br i1 %i.bw, label %google_protobuf_FieldDescriptorProto_type.exit.thread.i.thread, label %google_protobuf_FieldDescriptorProto_type.exit.thread.i

google_protobuf_FieldDescriptorProto_type.exit.thread.i: ; preds = %google_protobuf_FieldDescriptorProto_type.exit.i, %google_protobuf_FieldDescriptorProto_label.exit.thread.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %i.bz = and i8 %i.by, 2
  %.not.i139 = icmp eq i8 %i.bz, 0
  br i1 %.not.i139, label %_upb_FieldDef_InferLegacyFeatures.exit, label %_upb_FieldDef_InferLegacyFeatures.exit.thread

google_protobuf_FieldDescriptorProto_type.exit.thread.i.thread: ; preds = %google_protobuf_FieldDescriptorProto_type.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !32
  %i.cc = or i8 %i.cb, 16
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i32 2, ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !32
  %i.cg = and i8 %i.cf, 2
  %.not.i139184 = icmp eq i8 %i.cg, 0
  br i1 %.not.i139184, label %_upb_FieldDef_InferLegacyFeatures.exit.thread186, label %_upb_FieldDef_InferLegacyFeatures.exit.thread

_upb_FieldDef_InferLegacyFeatures.exit.thread:    ; preds = %google_protobuf_FieldDescriptorProto_type.exit.thread.i.thread, %google_protobuf_FieldDescriptorProto_type.exit.thread.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = select i1 %i.cj, i32 1, i32 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !32
  %i.cn = or i8 %i.cm, 4
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i32 %i.ck, ptr %i.co, align 1
  br label %_upb_FieldDef_InferLegacyFeatures.exit.thread186

_upb_FieldDef_InferLegacyFeatures.exit:           ; preds = %google_protobuf_FieldDescriptorProto_type.exit.thread.i
  br i1 %i.bs, label %_upb_FieldDef_InferLegacyFeatures.exit.thread186, label %bb.o

_upb_FieldDef_InferLegacyFeatures.exit.thread186: ; preds = %google_protobuf_FieldDescriptorProto_type.exit.thread.i.thread, %_upb_FieldDef_InferLegacyFeatures.exit.thread, %_upb_FieldDef_InferLegacyFeatures.exit
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !89
  br label %bb.o

bb.o:                                             ; preds = %_upb_FieldDef_InferLegacyFeatures.exit, %_upb_FieldDef_InferLegacyFeatures.exit.thread186, %bb.i
  %.0123 = phi i1 [ true, %_upb_FieldDef_InferLegacyFeatures.exit.thread186 ], [ false, %_upb_FieldDef_InferLegacyFeatures.exit ], [ false, %bb.i ]
  %.0122 = phi ptr [ %i.cp, %_upb_FieldDef_InferLegacyFeatures.exit.thread186 ], [ %i.aw, %_upb_FieldDef_InferLegacyFeatures.exit ], [ %i.aw, %bb.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 9 ; 3 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cu = load i32, ptr %i.ct, align 1            ; 3 uses
  %.not132 = icmp eq ptr %4, null
  br i1 %.not132, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, ptr noundef %i.cv) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cw = icmp slt i32 %i.cu, 0
  br i1 %i.cw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = call i32 @upb_MessageDef_OneofCount(ptr noundef nonnull %4) #14
  %.not133 = icmp slt i32 %i.cu, %i.cx
  br i1 %.not133, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef %i.cy) #16
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = call ptr @upb_MessageDef_Oneof(ptr noundef nonnull %4, i32 noundef %i.cu) #14 ; 3 uses
  store ptr %i.cz, ptr %i.p, align 8, !tbaa !32
  %i.da = call ptr @upb_OneofDef_ResolvedFeatures(ptr noundef %i.cz) #14
  call void @_upb_OneofDef_Insert(ptr noundef nonnull %0, ptr noundef %i.cz, ptr noundef nonnull %5, ptr noundef %.sroa.013.0.copyload14.i, i64 noundef %.sroa.9.0.copyload16.i) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.o
  %.0 = phi ptr [ %i.da, %bb.u ], [ %2, %bb.o ]
  %i.db = call ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef nonnull %0, ptr noundef %.0, ptr noundef %.0122, i1 noundef zeroext %.0123) #14 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !18
  %i.dd = load i8, ptr %i.q, align 1, !tbaa !32
  %i.de = and i8 %i.dd, 8
  %.not.i140 = icmp eq i8 %i.de, 0
  br i1 %.not.i140, label %google_protobuf_FieldDescriptorProto_label.exit.thread, label %google_protobuf_FieldDescriptorProto_label.exit

google_protobuf_FieldDescriptorProto_label.exit.thread: ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 92 ; 2 uses
  store i32 1, ptr %i.df, align 4, !tbaa !23
  br label %bb.w

google_protobuf_FieldDescriptorProto_label.exit:  ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dh = load i32, ptr %i.dg, align 1            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 92 ; 3 uses
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !23
  %i.dj = icmp eq i32 %i.dh, 1
  br i1 %i.dj, label %bb.w, label %bb.y

bb.w:                                             ; preds = %google_protobuf_FieldDescriptorProto_label.exit.thread, %google_protobuf_FieldDescriptorProto_label.exit
  %i.dk = phi ptr [ %i.df, %google_protobuf_FieldDescriptorProto_label.exit.thread ], [ %i.di, %google_protobuf_FieldDescriptorProto_label.exit ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.dm = load i32, ptr %i.dl, align 1
  %i.dn = icmp eq i32 %i.dm, 3
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 2, ptr %i.dk, align 4, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %google_protobuf_FieldDescriptorProto_label.exit
  %i.do = phi ptr [ %i.dk, %bb.x ], [ %i.dk, %bb.w ], [ %i.di, %google_protobuf_FieldDescriptorProto_label.exit ]
  %i.dp = load i8, ptr %i.q, align 1, !tbaa !32
  %i.dq = trunc i8 %i.dp to i1
  br i1 %i.dq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #16
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dr = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.ds = and i8 %i.dr, 2                         ; 2 uses
  %.not169 = icmp eq i8 %i.ds, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 81
  %.lobit = lshr exact i8 %i.ds, 1
  store i8 %.lobit, ptr %i.dt, align 1, !tbaa !29
  br i1 %.not169, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.013.0.copyload14.i141 = load ptr, ptr %i.du, align 1
  %.sroa.9.0..sroa_idx15.i142 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.sroa.9.0.copyload16.i143 = load i64, ptr %.sroa.9.0..sroa_idx15.i142, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !45
  %i.dx = call ptr @upb_strdup2(ptr noundef %.sroa.013.0.copyload14.i141, i64 noundef %.sroa.9.0.copyload16.i143, ptr noundef %i.dw) #14
  br label %make_json_name.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !45 ; 4 uses
  %i.ea = and i64 %.sroa.9.0.copyload16.i, -8
  %i.eb = add i64 %i.ea, 8                        ; 3 uses
  %.val.i.i = load ptr, ptr %i.dz, align 8, !tbaa !53 ; 4 uses
  %i.ec = getelementptr i8, ptr %i.dz, i64 8
  %.val11.i.i = load ptr, ptr %i.ec, align 8, !tbaa !55
  %i.ed = ptrtoint ptr %.val11.i.i to i64
  %i.ee = ptrtoint ptr %.val.i.i to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp ult i64 %i.ef, %i.eb
  br i1 %i.eg, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !56

upb_Arena_Malloc.exit.thread.i:                   ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.eb
  store ptr %i.eh, ptr %i.dz, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %.preheader.i

upb_Arena_Malloc.exit.i:                          ; preds = %bb.ac
  %i.ei = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.dz, i64 noundef %i.eb) #14 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %make_json_name.exit, label %.preheader.i

.preheader.i:                                     ; preds = %upb_Arena_Malloc.exit.i, %upb_Arena_Malloc.exit.thread.i
  %.0.i33.i = phi ptr [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.ei, %upb_Arena_Malloc.exit.i ] ; 3 uses
  %.not.i146 = icmp eq i64 %.sroa.9.0.copyload16.i, 0
  br i1 %.not.i146, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.ag, %.preheader.i
  %.020.lcssa.i = phi ptr [ %.0.i33.i, %.preheader.i ], [ %.1.i147, %bb.ag ]
  store i8 0, ptr %.020.lcssa.i, align 1, !tbaa !32
  br label %make_json_name.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ag
  %.01927.i = phi i64 [ %i.ev, %bb.ag ], [ 0, %.preheader.i ] ; 2 uses
  %.02026.i = phi ptr [ %.1.i147, %bb.ag ], [ %.0.i33.i, %.preheader.i ] ; 3 uses
  %.02125.i = phi i1 [ %i.em, %bb.ag ], [ false, %.preheader.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload14.i, i64 %.01927.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !32  ; 3 uses
  %i.em = icmp eq i8 %i.el, 95                    ; 2 uses
  br i1 %i.em, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i
  br i1 %.02125.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.en = tail call ptr @__ctype_toupper_loc() #17
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !90
  %i.ep = sext i8 %i.el to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3
  %i.es = trunc i32 %i.er to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.et = phi i8 [ %i.es, %bb.ae ], [ %i.el, %bb.ad ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.02026.i, i64 1
  store i8 %i.et, ptr %.02026.i, align 1, !tbaa !32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i
  %.1.i147 = phi ptr [ %i.eu, %bb.af ], [ %.02026.i, %.lr.ph.i ] ; 2 uses
  %i.ev = add nuw i64 %.01927.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ev, %.sroa.9.0.copyload16.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !92

make_json_name.exit:                              ; preds = %._crit_edge.i, %upb_Arena_Malloc.exit.i, %bb.ab
  %.0.i34.i.sink = phi ptr [ %i.dx, %bb.ab ], [ null, %upb_Arena_Malloc.exit.i ], [ %.0.i33.i, %._crit_edge.i ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %.0.i34.i.sink, ptr %i.ew, align 8, !tbaa !28
  %.not134 = icmp eq ptr %.0.i34.i.sink, null
  br i1 %.not134, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %make_json_name.exit
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

bb.ai:                                            ; preds = %make_json_name.exit
  %i.ex = load i8, ptr %i.q, align 1, !tbaa !32   ; 2 uses
  %i.ey = and i8 %i.ex, 16
  %i.ez = and i8 %i.ex, 32
  %.not = icmp eq i8 %i.ez, 0                     ; 3 uses
  %.not.i148 = icmp eq i8 %i.ey, 0
  br i1 %.not.i148, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fb = load i32, ptr %i.fa, align 1            ; 7 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !20
  switch i32 %i.fb, label %bb.am [
    i32 11, label %bb.ak
    i32 10, label %bb.ak
    i32 14, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj
  br i1 %.not, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.fd = load ptr, ptr %i.g, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, i32 noundef %i.fb, ptr noundef %i.fd) #16
  unreachable

bb.am:                                            ; preds = %bb.aj
  br i1 %.not, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = load ptr, ptr %i.g, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %i.fe, i32 noundef %i.fb) #16
  unreachable

bb.ao:                                            ; preds = %bb.ai
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  store i32 1, ptr %i.ff, align 8, !tbaa !20
  br i1 %.not, label %.thread166, label %bb.aq

bb.ap:                                            ; preds = %bb.ak, %bb.am
  switch i32 %i.fb, label %bb.ar [
    i32 11, label %bb.aq
    i32 0, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fg = phi ptr [ %i.fc, %bb.ap ], [ %i.ff, %bb.ao ] ; 2 uses
  store i32 0, ptr %i.fg, align 8, !tbaa !20
  br label %.thread166

bb.ar:                                            ; preds = %bb.ap
  %i.fh = icmp ugt i32 %i.fb, 18
  br i1 %i.fh, label %bb.as, label %.thread166

bb.as:                                            ; preds = %bb.ap, %bb.ar
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %i.fi, i32 noundef %i.fb) #16
  unreachable

.thread166:                                       ; preds = %bb.ao, %bb.ar, %bb.aq
  %i.fj = phi ptr [ %i.fc, %bb.ar ], [ %i.fg, %bb.aq ], [ %i.ff, %bb.ao ]
  %i.fk = load i32, ptr %i.do, align 4, !tbaa !23 ; 4 uses
  %i.fl = add i32 %i.fk, -4
  %or.cond137 = icmp ult i32 %i.fl, -3
  br i1 %or.cond137, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.thread166
  %i.fm = load ptr, ptr %i.g, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.8, ptr noundef %i.fm, i32 noundef %i.fk) #16
  unreachable

bb.au:                                            ; preds = %.thread166
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %3, ptr %i.fn, align 8, !tbaa !32
  %i.fo = load i8, ptr %i.cq, align 1, !tbaa !32
  %i.fp = trunc i8 %i.fo to i1
  br i1 %i.fp, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %.not135 = icmp eq i32 %i.fk, 1
  br i1 %.not135, label %.thread168, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !19
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %i.fq) #16
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.fr = icmp eq i32 %i.fk, 3
  br i1 %i.fr, label %bb.ba, label %.thread168

.thread168:                                       ; preds = %bb.av, %bb.ax
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 83
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !25, !range !26, !noundef !27
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %.thread168
  %i.fv = load i32, ptr %i.fj, align 8, !tbaa !20
  %i.fw = and i32 %i.fv, -2
  %switch = icmp eq i32 %i.fw, 10
  br i1 %switch, label %bb.ba, label %upb_FieldDef_ContainingOneof.exit

upb_FieldDef_ContainingOneof.exit:                ; preds = %bb.ay
  %i.fx = load ptr, ptr %i.p, align 8, !tbaa !32
  %.not136 = icmp eq ptr %i.fx, null
  br i1 %.not136, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %upb_FieldDef_ContainingOneof.exit
  %i.fy = load ptr, ptr %i.dc, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  %i.ga = load i32, ptr %i.fz, align 1
  %i.gb = icmp ne i32 %i.ga, 2
  %i.gc = zext i1 %i.gb to i8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %.thread168, %bb.az, %upb_FieldDef_ContainingOneof.exit, %bb.ax
  %i.gd = phi i8 [ 0, %bb.ax ], [ 1, %.thread168 ], [ 1, %upb_FieldDef_ContainingOneof.exit ], [ %i.gc, %bb.az ], [ 1, %bb.ay ]
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 82
  store i8 %i.gd, ptr %i.ge, align 2, !tbaa !43
  ret void
}

declare i64 @_upb_DefType_Pack(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @_upb_DefBuilder_MakeFullName(ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #4

declare ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef) local_unnamed_addr #4

declare i32 @upb_FileDef_Edition(ptr noundef) local_unnamed_addr #4

declare i32 @upb_MessageDef_OneofCount(ptr noundef) local_unnamed_addr #4

declare ptr @upb_MessageDef_Oneof(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @upb_OneofDef_ResolvedFeatures(ptr noundef) local_unnamed_addr #4

declare void @_upb_OneofDef_Insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4
end_hunk_1
