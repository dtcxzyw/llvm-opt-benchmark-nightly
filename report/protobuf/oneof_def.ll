inline.NumInlined: 68
inline.NumDeleted: 44
begin_hunk_0_@upb_OneofDef_LookupNameWithSize:bb.a
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare zeroext i1 @upb_strtable_lookup2(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind uwtable
define hidden ptr @upb_OneofDef_LookupName(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.upb_value, align 8          ; 4 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = call zeroext i1 @upb_strtable_lookup2(ptr noundef nonnull %i.b, ptr noundef nonnull %1, i64 noundef %i.a, ptr noundef nonnull %2) #10
  %i.d = load i64, ptr %2, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = select i1 %i.c, ptr %i.e, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @upb_OneofDef_LookupNumber(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.upb_value, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = zext i32 %1 to i64
  %i.c = call zeroext i1 @upb_inttable_lookup(ptr noundef nonnull %i.a, i64 noundef %i.b, ptr noundef nonnull %2) #10
  %i.d = load i64, ptr %2, align 8
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = select i1 %i.c, ptr %i.e, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret ptr %i.f
}

declare zeroext i1 @upb_inttable_lookup(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @_upb_OneofDef_Insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !25
  %i.d = tail call zeroext i1 @_upb_FieldDef_IsProto3Optional(ptr noundef %2) #10
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.e, align 4, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @upb_FieldDef_Number(ptr noundef %2) #10 ; 2 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %i.j = tail call zeroext i1 @upb_inttable_lookup(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef null) #10
  br i1 %i.j, label %bb.d, label %bb.e, !prof !32

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.f) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = tail call zeroext i1 @upb_strtable_lookup2(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4, ptr noundef null) #10
  br i1 %i.l, label %bb.f, label %bb.g, !prof !32

bb.f:                                             ; preds = %bb.e
  %i.m = trunc i64 %4 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.m, ptr noundef %3) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.p = tail call zeroext i1 @upb_inttable_insert(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 %i.g, ptr noundef %i.o) #10
  br i1 %i.p, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.r = tail call zeroext i1 @upb_strtable_insert(ptr noundef nonnull %i.k, ptr noundef %3, i64 noundef %4, i64 %i.g, ptr noundef %i.q) #10
  br i1 %i.r, label %bb.i, label %.critedge, !prof !40

.critedge:                                        ; preds = %bb.g, %bb.h
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #12
  unreachable

bb.i:                                             ; preds = %bb.h
  ret void
}

declare zeroext i1 @_upb_FieldDef_IsProto3Optional(ptr noundef) local_unnamed_addr #4

declare i32 @upb_FieldDef_Number(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_upb_DefBuilder_Errf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare zeroext i1 @upb_inttable_insert(ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @upb_strtable_insert(ptr noundef, ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_upb_DefBuilder_OomErr(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden range(i64 -2147483648, 2147483648) i64 @_upb_OneofDefs_Finalize(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @upb_MessageDef_OneofCount(ptr noundef %1) #10
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

.preheader.loopexit:                              ; preds = %_upb_DefBuilder_AllocCounted.exit
  %i.d = sext i32 %.164 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.d, %.preheader.loopexit ]
  %i.e = tail call i32 @upb_MessageDef_FieldCount(ptr noundef %1) #10
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph46, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %_upb_DefBuilder_AllocCounted.exit
  %.044 = phi i32 [ 0, %.lr.ph ], [ %.164, %_upb_DefBuilder_AllocCounted.exit ] ; 2 uses
  %.02943 = phi i32 [ 0, %.lr.ph ], [ %i.ag, %_upb_DefBuilder_AllocCounted.exit ] ; 2 uses
  %i.g = tail call ptr @upb_MessageDef_Oneof(ptr noundef %1, i32 noundef %.02943) #10 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.i = load i8, ptr %i.h, align 4, !tbaa !29, !range !30, !noundef !31
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not33 = icmp eq i32 %i.l, 1
  br i1 %.not33, label %.thread65, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @upb_OneofDef_Name(ptr noundef nonnull %i.g)
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %i.l, ptr noundef %i.m) #12
  unreachable

.thread65:                                        ; preds = %bb.c
  %i.n = add nsw i32 %.044, 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %.not34 = icmp eq i32 %.044, 0
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @upb_OneofDef_Name(ptr noundef nonnull %i.g)
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %i.p) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !25 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.r = icmp eq i32 %.pre, 0
  br i1 %i.r, label %_upb_DefBuilder_AllocCounted.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = zext i32 %.pre to i64
  %mul.ov.i = icmp slt i32 %.pre, 0
  br i1 %mul.ov.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #12
  unreachable

bb.j:                                             ; preds = %.thread65, %bb.h
  %.16368 = phi i32 [ %i.n, %.thread65 ], [ 0, %bb.h ] ; 2 uses
  %i.t = phi ptr [ %i.o, %.thread65 ], [ %i.q, %bb.h ] ; 2 uses
  %i.u = phi i64 [ 1, %.thread65 ], [ %i.s, %bb.h ]
  %i.v = shl nuw nsw i64 %i.u, 3                  ; 3 uses
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !33   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !41 ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val11.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !43
  %i.y = ptrtoint ptr %.val11.i.i.i to i64
  %i.z = ptrtoint ptr %.val.i.i.i to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.v
  br i1 %i.ab, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !32

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.v
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %_upb_DefBuilder_AllocCounted.exit

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.j
  %i.ad = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.w, i64 noundef %i.v) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.k, label %_upb_DefBuilder_AllocCounted.exit

bb.k:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #12
  unreachable

_upb_DefBuilder_AllocCounted.exit:                ; preds = %bb.g, %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %i.ae = phi ptr [ %i.q, %bb.g ], [ %i.t, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.t, %upb_Arena_Malloc.exit.i.i ]
  %.164 = phi i32 [ 0, %bb.g ], [ %.16368, %upb_Arena_Malloc.exit.thread.i.i ], [ %.16368, %upb_Arena_Malloc.exit.i.i ] ; 2 uses
  %.0.i = phi ptr [ null, %bb.g ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.ad, %upb_Arena_Malloc.exit.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %.0.i, ptr %i.af, align 8, !tbaa !26
  store i32 0, ptr %i.ae, align 8, !tbaa !25
  %i.ag = add nuw nsw i32 %.02943, 1              ; 2 uses
  %i.ah = tail call i32 @upb_MessageDef_OneofCount(ptr noundef %1) #10
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.b, label %.preheader.loopexit, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.m, %.preheader
  ret i64 %.0.lcssa

.lr.ph46:                                         ; preds = %.preheader, %bb.m
  %.03045 = phi i32 [ %i.as, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %i.aj = tail call ptr @upb_MessageDef_Field(ptr noundef %1, i32 noundef %.03045) #10 ; 2 uses
  %i.ak = tail call ptr @upb_FieldDef_ContainingOneof(ptr noundef %i.aj) #10 ; 3 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph46
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !25 ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !25
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.aq
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph46
  %i.as = add nuw nsw i32 %.03045, 1              ; 2 uses
  %i.at = tail call i32 @upb_MessageDef_FieldCount(ptr noundef %1) #10
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %.lr.ph46, label %._crit_edge, !llvm.loop !46
}

declare i32 @upb_MessageDef_OneofCount(ptr noundef) local_unnamed_addr #4

declare i32 @upb_MessageDef_FieldCount(ptr noundef) local_unnamed_addr #4

declare ptr @upb_MessageDef_Field(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @upb_FieldDef_ContainingOneof(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_OneofDefs_New(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_upb_DefBuilder_OomErr(ptr noundef %0) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = mul nuw nsw i64 %i.c, 104                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !41 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val11.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.i = ptrtoint ptr %.val11.i.i.i to i64
  %i.j = ptrtoint ptr %.val.i.i.i to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, %i.e
  br i1 %i.l, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !32

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.e
  store ptr %i.m, ptr %i.g, align 8, !tbaa !41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %.lr.ph

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.d
  %i.n = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.g, i64 noundef %i.e) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %upb_Arena_Malloc.exit.i.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #12
  unreachable

.lr.ph:                                           ; preds = %upb_Arena_Malloc.exit.thread.i.i, %upb_Arena_Malloc.exit.i.i
  %.0.i.ph = phi ptr [ %i.n, %upb_Arena_Malloc.exit.i.i ], [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.q = load i16, ptr getelementptr inbounds nuw (i8, ptr @google__protobuf__OneofOptions_msg_init, i64 8), align 8
  %i.r = zext i16 %i.q to i64                     ; 5 uses
  %i.s = and i64 %i.r, 7
  %i.t = icmp eq i64 %i.s, 0
  br label %bb.g

bb.f:                                             ; preds = %create_oneofdef.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.i37 = phi ptr [ null, %bb.a ], [ %.0.i.ph, %bb.f ]
  ret ptr %.0.i37

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48   ; 4 uses
  %i.w = getelementptr inbounds nuw [104 x i8], ptr %.0.i.ph, i64 %indvars.iv ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !50
  %i.z = and i8 %i.y, 2
  %.not48.i = icmp eq i8 %i.z, 0
  br i1 %.not48.i, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__OneofOptions_msg_init) #10, !srcloc !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ae = call i32 @upb_Encode(ptr noundef %i.ac, ptr noundef nonnull @google__protobuf__OneofOptions_msg_init, i32 noundef 0, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #12
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !53
  %i.ah = load ptr, ptr %0, align 8, !tbaa !54
  %i.ai = call ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef %i.ah) #10
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !33 ; 5 uses
  call void @llvm.assume(i1 %i.t)
  %.val.i.i.i.i.i = load ptr, ptr %.val.i, align 8, !tbaa !41 ; 4 uses
  %i.aj = getelementptr i8, ptr %.val.i, i64 8
  %.val11.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.ak = ptrtoint ptr %.val11.i.i.i.i.i to i64
  %i.al = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = icmp ult i64 %i.am, %i.r
  br i1 %i.an, label %upb_Arena_Malloc.exit.i.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i.i, !prof !32

upb_Arena_Malloc.exit.thread.i.i.i.i:             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.r
  store ptr %i.ao, ptr %.val.i, align 8, !tbaa !41
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  br label %bb.k

upb_Arena_Malloc.exit.i.i.i.i:                    ; preds = %bb.j
  %i.ap = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.val.i, i64 noundef %i.r) #10 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !55

bb.k:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i
  %.0.i3.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i.i ], [ %i.ap, %upb_Arena_Malloc.exit.i.i.i.i ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i.i, i8 0, i64 %i.r, i1 false)
  %i.aq = call i32 @upb_Decode(ptr noundef nonnull %i.af, i64 noundef %i.ag, ptr noundef nonnull %.0.i3.i.i.i.i, ptr noundef nonnull @google__protobuf__OneofOptions_msg_init, ptr noundef %i.ai, i32 noundef 0, ptr noundef nonnull %.val.i) #10
  %.not10.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not10.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %upb_Arena_Malloc.exit.i.i.i.i
  store ptr null, ptr %i.w, align 8, !tbaa !7
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #12
  unreachable

bb.m:                                             ; preds = %bb.k
  store ptr %.0.i3.i.i.i.i, ptr %i.w, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr @kUpbDefOptDefault, align 8, !tbaa !21 ; 2 uses
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = phi ptr [ %i.ar, %bb.n ], [ %.0.i3.i.i.i.i, %bb.m ]
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__FeatureSet_msg_init) #10, !srcloc !51
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = call ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %i.av, i1 noundef zeroext false) #10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.013.0.copyload14.i.i = load ptr, ptr %i.ay, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.9.0.copyload16.i.i = load i64, ptr %.sroa.9.0..sroa_idx15.i.i, align 1 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %4, ptr %i.az, align 8, !tbaa !24
  %i.ba = call ptr @upb_MessageDef_FullName(ptr noundef %4) #10
  %i.bb = call ptr @_upb_DefBuilder_MakeFullName(ptr noundef nonnull %0, ptr noundef %i.ba, ptr %.sroa.013.0.copyload14.i.i, i64 %.sroa.9.0.copyload16.i.i) #10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i32 0, ptr %i.bd, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i8 0, ptr %i.be, align 4, !tbaa !29
  %i.bf = call zeroext i1 @upb_MessageDef_FindByNameWithSize(ptr noundef %4, ptr noundef %.sroa.013.0.copyload14.i.i, i64 noundef %.sroa.9.0.copyload16.i.i, ptr noundef null, ptr noundef null) #10
  br i1 %i.bf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !23
  call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.bh) #12
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bi = call i64 @_upb_DefType_Pack(ptr noundef nonnull %i.w, i32 noundef 1) #10
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.bk = call zeroext i1 @_upb_MessageDef_Insert(ptr noundef %4, ptr noundef %.sroa.013.0.copyload14.i.i, i64 noundef %.sroa.9.0.copyload16.i.i, i64 %i.bi, ptr noundef %i.bj) #10
  br i1 %i.bk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #12
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.bn = call zeroext i1 @upb_inttable_init(ptr noundef nonnull %i.bl, ptr noundef %i.bm) #10
  br i1 %i.bn, label %create_oneofdef.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #12
  unreachable

create_oneofdef.exit:                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.bq = call zeroext i1 @upb_strtable_init(ptr noundef nonnull %i.bo, i64 noundef 4, ptr noundef %i.bp) #10
  br i1 %i.bq, label %bb.f, label %bb.u

bb.u:                                             ; preds = %create_oneofdef.exit
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #12
  unreachable
}

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef) local_unnamed_addr #4

declare ptr @_upb_DefBuilder_MakeFullName(ptr noundef, ptr noundef, ptr, i64) local_unnamed_addr #4

declare ptr @upb_MessageDef_FullName(ptr noundef) local_unnamed_addr #4

declare zeroext i1 @upb_MessageDef_FindByNameWithSize(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @_upb_DefType_Pack(ptr noundef, i32 noundef) local_unnamed_addr #4

declare zeroext i1 @_upb_MessageDef_Insert(ptr noundef, ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @upb_inttable_init(ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @upb_strtable_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @upb_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"upb_OneofDef", !9, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !4, i64 32, !14, i64 36, !15, i64 40, !17, i64 48, !20, i64 64}
!9 = !{!"p1 _ZTS28google_protobuf_OneofOptions", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS26google_protobuf_FeatureSet", !10, i64 0}
!12 = !{!"p1 _ZTS14upb_MessageDef", !10, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"_Bool", !5, i64 0}
!15 = !{!"p2 _ZTS12upb_FieldDef", !16, i64 0}
!16 = !{!"any p2 pointer", !10, i64 0}
!17 = !{!"", !18, i64 0}
!18 = !{!"", !19, i64 0, !4, i64 8, !4, i64 12}
!19 = !{!"p1 _ZTS11_upb_tabent", !10, i64 0}
!20 = !{!"", !18, i64 0, !10, i64 16, !13, i64 24, !4, i64 32, !4, i64 36}
!21 = !{!13, !13, i64 0}
!22 = !{!8, !11, i64 8}
!23 = !{!8, !13, i64 24}
!24 = !{!8, !12, i64 16}
!25 = !{!8, !4, i64 32}
!26 = !{!8, !15, i64 40}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS12upb_FieldDef", !10, i64 0}
!29 = !{!8, !14, i64 36}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!34, !38, i64 56}
!34 = !{!"upb_DefBuilder", !35, i64 0, !17, i64 8, !11, i64 24, !13, i64 32, !36, i64 40, !37, i64 48, !38, i64 56, !38, i64 64, !10, i64 72, !39, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !5, i64 104}
!35 = !{!"p1 _ZTS11upb_DefPool", !10, i64 0}
!36 = !{!"long", !5, i64 0}
!37 = !{!"p1 _ZTS11upb_FileDef", !10, i64 0}
!38 = !{!"p1 _ZTS9upb_Arena", !10, i64 0}
!39 = !{!"p1 _ZTS17upb_MiniTableFile", !10, i64 0}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!42, !13, i64 0}
!42 = !{!"upb_Arena", !13, i64 0, !13, i64 8}
!43 = !{!42, !13, i64 8}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = !{!49, !49, i64 0}
!49 = !{!"p1 _ZTS36google_protobuf_OneofDescriptorProto", !10, i64 0}
!50 = !{!5, !5, i64 0}
!51 = !{i64 1675642}
!52 = !{!34, !38, i64 64}
!53 = !{!36, !36, i64 0}
!54 = !{!34, !35, i64 0}
!55 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_0
