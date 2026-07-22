inline.NumInlined: 306
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_upb_FieldDef_Modifiers:bb.a
  %i.e = load i32, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  switch i32 %i.e, label %_upb_FieldDef_IsPackable.exit.i [
    i32 12, label %.thread
    i32 9, label %.thread
  ]

_upb_FieldDef_IsPackable.exit.i:                  ; preds = %bb.b
  %i.f = and i32 %i.e, -2
  %.not.i = icmp eq i32 %i.f, 10
  br i1 %.not.i, label %.thread, label %upb_FieldDef_IsPacked.exit

upb_FieldDef_IsPacked.exit:                       ; preds = %_upb_FieldDef_IsPackable.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 1
  %.fr = freeze i32 %i.j
  %i.k = icmp eq i32 %.fr, 1
  %i.l = select i1 %i.k, i64 3, i64 1
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 1
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
  %6 = zext nneg i32 %1 to i64
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = mul nuw nsw i64 %6, 96                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !53 ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val11.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.g = ptrtoint ptr %.val11.i.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.c
  store ptr %i.k, ptr %i.e, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %.lr.ph

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.l = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.e, i64 noundef %i.c) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

.lr.ph:                                           ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.l, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %_upb_FieldDef_CreateExt.exit, %bb.a
  %.0.i26 = phi ptr [ null, %bb.a ], [ %.0.i.ph, %_upb_FieldDef_CreateExt.exit ]
  ret ptr %.0.i26

bb.f:                                             ; preds = %.lr.ph, %_upb_FieldDef_CreateExt.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_upb_FieldDef_CreateExt.exit ] ; 4 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 8 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 83
  store i8 1, ptr %i.r, align 1, !tbaa !25
  tail call fastcc void @_upb_FieldDef_Create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %3, ptr noundef %i.q, ptr noundef %5, ptr noundef nonnull %i.o)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !32
  %i.u = trunc i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef %i.w) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr %5, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19   ; 2 uses
  %i.aa = tail call i64 @_upb_DefType_Pack(ptr noundef nonnull %i.o, i32 noundef 0) #14
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #15
  %i.ac = load ptr, ptr %0, align 8, !tbaa !59
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.ae = tail call zeroext i1 @_upb_DefPool_InsertSym(ptr noundef %i.ac, ptr nonnull %i.z, i64 %i.ab, i64 %i.aa, ptr noundef %i.ad) #14
  br i1 %i.ae, label %_upb_FieldDef_CreateExt.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_upb_DefBuilder_FailJmp(ptr noundef nonnull %0) #16
  unreachable

_upb_FieldDef_CreateExt.exit:                     ; preds = %bb.h
  %i.af = load i32, ptr %i.n, align 4, !tbaa !61  ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.n, align 4, !tbaa !61
  %i.ah = trunc i32 %i.af to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 78
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !22
  %i.aj = trunc i64 %indvars.iv to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  store i16 %i.aj, ptr %i.ak, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !62
}

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_FieldDefs_New(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %7 = zext nneg i32 %1 to i64
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = mul nuw nsw i64 %7, 96                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !53 ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val11.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.g = ptrtoint ptr %.val11.i.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !56

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.c
  store ptr %i.k, ptr %i.e, align 8, !tbaa !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %.lr.ph

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.l = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.e, i64 noundef %i.c) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #16
  unreachable

.lr.ph:                                           ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.l, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %.0.i34 = phi ptr [ null, %bb.a ], [ %.0.i.ph, %bb.l ]
  ret ptr %.0.i34

bb.f:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.026 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.l ]
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 83
  store i8 0, ptr %i.q, align 1, !tbaa !25
  tail call fastcc void @_upb_FieldDef_Create(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %3, ptr noundef %i.p, ptr noundef %5, ptr noundef nonnull %i.n)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !32
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %_upb_FieldDef_CreateNotExt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 84
  %i.v = load i8, ptr %i.u, align 4, !tbaa !40, !range !26, !noundef !27
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %_upb_FieldDef_CreateNotExt.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef %i.y) #16
  unreachable

_upb_FieldDef_CreateNotExt.exit:                  ; preds = %bb.f, %bb.g
  tail call void @_upb_MessageDef_InsertField(ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull %i.n) #14
  %i.z = trunc i64 %indvars.iv to i16             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  store i16 %i.z, ptr %i.aa, align 4, !tbaa !21
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !63
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_upb_FieldDef_CreateNotExt.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 78
  store i16 %i.z, ptr %i.ac, align 2, !tbaa !22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_upb_FieldDef_CreateNotExt.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.af = icmp ugt i32 %.026, %i.ae
  br i1 %i.af, label %bb.k, label %bb.l

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
end_hunk_0
