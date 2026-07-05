inline.NumInlined: 166
inline.NumDeleted: 80
begin_hunk_0_@upb_Map_DeepClone:bb.a
  %i.av = load i64, ptr %i.j, align 8
  %i.aw = load ptr, ptr %6, align 8
  %i.ax = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8
  %i.ay = call i32 @upb_Map_Insert(ptr noundef nonnull %i.g, ptr %i.au, i64 %i.av, ptr %i.aw, i64 %i.ax, ptr noundef %4) #7
  %.not31 = icmp eq i32 %i.ay, 2
  br i1 %.not31, label %.critedge, label %bb.c, !llvm.loop !31

.critedge:                                        ; preds = %upb_Arena_Malloc.exit, %upb_Clone_MessageValue.exit, %bb.c, %upb_Clone_MessageValue.exit.thread
  %.2 = phi ptr [ null, %upb_Clone_MessageValue.exit.thread ], [ %i.g, %bb.c ], [ null, %upb_Clone_MessageValue.exit ], [ null, %upb_Arena_Malloc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.critedge
  %.3 = phi ptr [ %.2, %.critedge ], [ null, %bb.a ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_upb_Map_New(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @upb_Map_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @upb_Array_DeepClone(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !33  ; 7 uses
  %i.b = add i32 %1, -1                           ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_upb_CType_SizeLg2_dont_copy_me__upb_internal_use_only.size, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = sext i8 %i.e to i64                      ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = shl i64 %.val, %i.g
  %i.i = add i64 %i.h, 31
  %i.j = and i64 %i.i, -8                         ; 3 uses
  %.val.i.i.i = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %i.k = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val11.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.l = ptrtoint ptr %.val11.i.i.i to i64
  %i.m = ptrtoint ptr %.val.i.i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, %i.j
  br i1 %i.o, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !27

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.j
  store ptr %i.p, ptr %3, align 8, !tbaa !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.q = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.j) #7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit: ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i19.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.q, %upb_Arena_Malloc.exit.i.i ] ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 24
  %i.s = icmp ne i32 %i.b, 0
  %.neg.i.i.i = sext i1 %i.s to i64
  %i.t = add nsw i64 %i.f, %.neg.i.i.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = or i64 %i.t, %i.u
  store i64 %i.v, ptr %.0.i19.i.i, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 16
  store i64 %.val, ptr %i.x, align 8, !tbaa !36
  store i64 %.val, ptr %i.w, align 8, !tbaa !33
  %.not2746.not = icmp eq i64 %.val, 0
  br i1 %.not2746.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit
  switch i32 %1, label %.lr.ph.split [
    i32 1, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 2, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 3, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 4, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 5, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 7, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 8, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 9, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 10, label %.lr.ph.split.us50.preheader
    i32 11, label %.lr.ph.split.us50.preheader
    i32 6, label %upb_Clone_MessageValue.exit.us
  ]

.lr.ph.split.us50.preheader:                      ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us50

upb_Clone_MessageValue.exit.thread.us.preheader:  ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  br label %upb_Clone_MessageValue.exit.thread.us

upb_Clone_MessageValue.exit.thread.us:            ; preds = %upb_Clone_MessageValue.exit.thread.us.preheader, %upb_Clone_MessageValue.exit.thread.us
  %.047.us = phi i64 [ %i.ab, %upb_Clone_MessageValue.exit.thread.us ], [ 0, %upb_Clone_MessageValue.exit.thread.us.preheader ] ; 3 uses
  %i.y = tail call { ptr, i64 } @upb_Array_Get(ptr noundef nonnull %0, i64 noundef %.047.us) #7 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us, ptr %i.z, i64 %i.aa) #7
  %i.ab = add nuw i64 %.047.us, 1                 ; 2 uses
  %exitcond73.not = icmp eq i64 %i.ab, %.val
  br i1 %exitcond73.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us, !llvm.loop !37

.lr.ph.split.us50:                                ; preds = %.lr.ph.split.us50.preheader, %upb_Clone_MessageValue.exit.thread.us52
  %.047.us51 = phi i64 [ %i.ao, %upb_Clone_MessageValue.exit.thread.us52 ], [ 0, %.lr.ph.split.us50.preheader ] ; 3 uses
  %i.ac = tail call { ptr, i64 } @upb_Array_Get(ptr noundef %0, i64 noundef %.047.us51) #7 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %sext.i.us = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext.i.us, 32           ; 3 uses
  %i.ag = add nsw i64 %i.af, 7
  %i.ah = and i64 %i.ag, -8                       ; 3 uses
  %.val.i.i.us = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %.val11.i.i.us = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.ai = ptrtoint ptr %.val11.i.i.us to i64
  %i.aj = ptrtoint ptr %.val.i.i.us to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ah
  br i1 %i.al, label %upb_Arena_Malloc.exit.i.us, label %upb_Arena_Malloc.exit.i.thread.us, !prof !27

upb_Arena_Malloc.exit.i.thread.us:                ; preds = %.lr.ph.split.us50
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.us, i64 %i.ah
  store ptr %i.am, ptr %3, align 8, !tbaa !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us) ]
  br label %upb_Clone_MessageValue.exit.thread.us52

upb_Arena_Malloc.exit.i.us:                       ; preds = %.lr.ph.split.us50
  %i.an = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.ah) #7, !inline_history !38 ; 2 uses
  %.not45.us = icmp eq ptr %i.an, null
  br i1 %.not45.us, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us52

upb_Clone_MessageValue.exit.thread.us52:          ; preds = %upb_Arena_Malloc.exit.i.us, %upb_Arena_Malloc.exit.i.thread.us
  %.0.i.i2835.us = phi ptr [ %.val.i.i.us, %upb_Arena_Malloc.exit.i.thread.us ], [ %i.an, %upb_Arena_Malloc.exit.i.us ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i2835.us, ptr align 1 %i.ad, i64 %i.af, i1 false)
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us51, ptr nonnull %.0.i.i2835.us, i64 %i.af) #7
  %i.ao = add nuw i64 %.047.us51, 1               ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ao, %.val
  br i1 %exitcond71.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %.lr.ph.split.us50, !llvm.loop !37

upb_Clone_MessageValue.exit.us:                   ; preds = %.lr.ph, %upb_Clone_MessageValue.exit.thread.us61
  %.047.us60 = phi i64 [ %i.au, %upb_Clone_MessageValue.exit.thread.us61 ], [ 0, %.lr.ph ] ; 3 uses
  %i.ap = tail call { ptr, i64 } @upb_Array_Get(ptr noundef %0, i64 noundef %.047.us60) #7 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = tail call ptr @upb_Message_New(ptr noundef %2, ptr noundef nonnull %3) #7, !inline_history !39
  %i.as = tail call ptr @_upb_Message_Copy(ptr noundef %i.ar, ptr noundef %i.aq, ptr noundef %2, ptr noundef nonnull %3), !inline_history !39 ; 2 uses
  %.not.us = icmp eq ptr %i.as, null
  br i1 %.not.us, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us61

upb_Clone_MessageValue.exit.thread.us61:          ; preds = %upb_Clone_MessageValue.exit.us
  %i.at = extractvalue { ptr, i64 } %i.ap, 1
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us60, ptr nonnull %i.as, i64 %i.at) #7
  %i.au = add nuw i64 %.047.us60, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %.val
  br i1 %exitcond.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.us, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.av = tail call { ptr, i64 } @upb_Array_Get(ptr noundef nonnull %0, i64 noundef 0) #7 ; 0 uses
  unreachable

_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread: ; preds = %upb_Clone_MessageValue.exit.us, %upb_Clone_MessageValue.exit.thread.us61, %upb_Arena_Malloc.exit.i.us, %upb_Clone_MessageValue.exit.thread.us52, %upb_Clone_MessageValue.exit.thread.us, %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit, %upb_Arena_Malloc.exit.i.i
  %.3 = phi ptr [ null, %upb_Arena_Malloc.exit.i.i ], [ null, %upb_Arena_Malloc.exit.i.us ], [ %.0.i19.i.i, %upb_Clone_MessageValue.exit.thread.us ], [ %.0.i19.i.i, %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit ], [ %.0.i19.i.i, %upb_Clone_MessageValue.exit.thread.us52 ], [ %.0.i19.i.i, %upb_Clone_MessageValue.exit.thread.us61 ], [ null, %upb_Clone_MessageValue.exit.us ]
  ret ptr %.3
}

declare { ptr, i64 } @upb_Array_Get(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @upb_Array_Set(ptr noundef, i64 noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_upb_Message_Copy(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !40
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b, i64 %i.f, i1 false)
  %i.g = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %.val153252 = load i16, ptr %i.g, align 2, !tbaa !40
  %.not133253.not = icmp eq i16 %.val153252, 0
  br i1 %.not133253.not, label %.critedge144, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv ; 24 uses
  %i.j = getelementptr i8, ptr %i.i, i64 11       ; 10 uses
  %.val155 = load i8, ptr %i.j, align 1, !tbaa !19 ; 9 uses
  %i.k = and i8 %.val155, 3
  switch i8 %i.k, label %.unreachabledefault [
    i8 2, label %bb.c
    i8 0, label %bb.af
    i8 1, label %bb.ao
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 10       ; 2 uses
  %.val151 = load i8, ptr %i.l, align 2, !tbaa !16 ; 4 uses
  %i.m = zext i8 %.val151 to i64
  %i.n = and i8 %.val155, 16                      ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %.val151, label %bb.f [
    i8 5, label %upb_MiniTableField_CType.exit
    i8 12, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %upb_MiniTableField_CType.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = add nuw nsw i64 %i.m, 4294967295
  %i.p = and i64 %i.o, 4294967295
  br label %upb_MiniTableField_CType.exit

upb_MiniTableField_CType.exit:                    ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.p, %bb.f ], [ 8, %bb.e ], [ 13, %bb.d ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  switch i32 %i.r, label %.critedge [
    i32 6, label %bb.g
    i32 10, label %upb_MiniTableField_CType.exit.i
    i32 11, label %upb_MiniTableField_CType.exit.i
  ]

bb.g:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.s = icmp ugt i8 %.val155, -65
  tail call void @llvm.assume(i1 %i.s)
  %i.t = tail call fastcc { ptr, i64 } @upb_Message_GetField(ptr noundef %1, ptr noundef nonnull %i.i, ptr null, i64 undef)
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %.not131 = icmp eq ptr %i.u, null
  br i1 %.not131, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = load i16, ptr %i.v, align 4, !tbaa !20
  %i.x = zext i16 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = tail call ptr @upb_Message_New(ptr noundef %i.aa, ptr noundef %3) #7, !inline_history !41
  %i.ac = tail call ptr @_upb_Message_Copy(ptr noundef %i.ab, ptr noundef nonnull %i.u, ptr noundef %i.aa, ptr noundef %3), !inline_history !41 ; 5 uses
  %.not132 = icmp eq ptr %i.ac, null
  br i1 %.not132, label %.critedge143, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val4.i = load i8, ptr %i.j, align 1, !tbaa !19 ; 4 uses
  %i.ad = icmp ugt i8 %.val4.i, -65
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i8 %.val4.i, 8
  %.not.i.i159 = icmp eq i8 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i159)
  %i.af = getelementptr i8, ptr %i.i, i64 6
  %.val6.i.i.i = load i16, ptr %i.af, align 2, !tbaa !42 ; 5 uses
  %i.ag = icmp sgt i16 %.val6.i.i.i, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = lshr i16 %.val6.i.i.i, 3
  %i.ai = trunc i16 %.val6.i.i.i to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = zext nneg i16 %i.ah to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !21
  %.val7.pre.i.i = load i8, ptr %i.j, align 1, !tbaa !19
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp slt i16 %.val6.i.i.i, 0
  br i1 %i.ap, label %bb.l, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i

bb.l:                                             ; preds = %bb.k
  %.val8.i.i.i = load i32, ptr %i.i, align 4, !tbaa !43
  %i.aq = xor i16 %.val6.i.i.i, -1
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i32 %.val8.i.i.i, ptr %i.as, align 4, !tbaa !3
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.val7.i.i = phi i8 [ %.val7.pre.i.i, %bb.j ], [ %.val4.i, %bb.k ], [ %.val4.i, %bb.l ]
  %i.at = getelementptr i8, ptr %i.i, i64 4
  %.val8.i.i = load i16, ptr %i.at, align 4, !tbaa !44
  %i.au = zext i16 %.val8.i.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au ; 4 uses
  %i.aw = lshr i8 %.val7.i.i, 6
  switch i8 %i.aw, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 3, label %bb.o
    i8 2, label %bb.p
  ]

bb.m:                                             ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  %i.ax = ptrtoint ptr %i.ac to i64
  %.0.extract.trunc7.i = trunc i64 %i.ax to i8
  store i8 %.0.extract.trunc7.i, ptr %i.av, align 1
  br label %.critedge

bb.n:                                             ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  %i.ay = ptrtoint ptr %i.ac to i64
  %.0.extract.trunc.i = trunc i64 %i.ay to i32
  store i32 %.0.extract.trunc.i, ptr %i.av, align 1
  br label %.critedge

bb.o:                                             ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  %i.az = ptrtoint ptr %i.ac to i64
  store i64 %i.az, ptr %i.av, align 1
  br label %.critedge

bb.p:                                             ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  store ptr %i.ac, ptr %i.av, align 1
  br label %.critedge

default.unreachable:                              ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i, %bb.t, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  unreachable

upb_MiniTableField_CType.exit.i:                  ; preds = %upb_MiniTableField_CType.exit, %upb_MiniTableField_CType.exit
  %.not.i.i.i = icmp ne i8 %i.n, 0
  %i.ba = icmp eq i8 %.val151, 9
  %or.cond.i = select i1 %.not.i.i.i, i1 true, i1 %i.ba
  br i1 %or.cond.i, label %upb_Message_GetString.exit, label %.critedge17.i

.critedge17.i:                                    ; preds = %upb_MiniTableField_CType.exit.i
  %i.bb = icmp eq i8 %.val151, 12
  tail call void @llvm.assume(i1 %i.bb)
  br label %upb_Message_GetString.exit

upb_Message_GetString.exit:                       ; preds = %upb_MiniTableField_CType.exit.i, %.critedge17.i
  %i.bc = icmp slt i8 %.val155, -64
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call fastcc { ptr, i64 } @upb_Message_GetField(ptr noundef %1, ptr noundef nonnull %i.i, ptr null, i64 0) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 5 uses
  %.not130 = icmp eq i64 %i.be, 0
  br i1 %.not130, label %.critedge, label %bb.q

bb.q:                                             ; preds = %upb_Message_GetString.exit
  %i.bf = extractvalue { ptr, i64 } %i.bd, 0
  %i.bg = add i64 %i.be, 7
  %i.bh = and i64 %i.bg, -8                       ; 3 uses
  %.val.i.i = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %.val11.i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.bi = ptrtoint ptr %.val11.i.i to i64
  %i.bj = ptrtoint ptr %.val.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bh
  br i1 %i.bl, label %bb.r, label %bb.s, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.bm = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.bh) #7
  br label %upb_Clone_StringView.exit

bb.s:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bh
  store ptr %i.bn, ptr %3, align 8, !tbaa !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %upb_Clone_StringView.exit

upb_Clone_StringView.exit:                        ; preds = %bb.r, %bb.s
  %.0.i.i160 = phi ptr [ %i.bm, %bb.r ], [ %.val.i.i, %bb.s ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i160, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bf, i64 range(i64 1, 0) %i.be, i1 false)
  %.val.i161 = load i8, ptr %i.j, align 1, !tbaa !19 ; 7 uses
  %i.bo = and i8 %.val.i161, 8
  %.not.i = icmp eq i8 %i.bo, 0
  %.val7.i8.i = load i8, ptr %i.l, align 2, !tbaa !16 ; 3 uses
  %i.bp = and i8 %.val.i161, 16
  %.not.i.i.i.i = icmp ne i8 %i.bp, 0
  %.not.i.i.i.i.a = icmp eq i8 %.val7.i8.i, 9
  %or.cond.i10.i = select i1 %.not.i.i.i.i, i1 true, i1 %.not.i.i.i.i.a ; 2 uses
  br i1 %.not.i, label %upb_MiniTableField_CType.exit.i.i, label %upb_MiniTableExtension_CType.exit.i.i

upb_MiniTableExtension_CType.exit.i.i:            ; preds = %upb_Clone_StringView.exit
  br i1 %or.cond.i10.i, label %.critedge.i.i, label %.critedge17.i.i

.critedge17.i.i:                                  ; preds = %upb_MiniTableExtension_CType.exit.i.i
  %i.bq = icmp eq i8 %.val7.i8.i, 12
  tail call void @llvm.assume(i1 %i.bq)
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge17.i.i, %upb_MiniTableExtension_CType.exit.i.i
  %i.br = icmp slt i8 %.val.i161, -64
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = tail call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef nonnull %3) #7 ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.not.i, label %.critedge143, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %.val.i.i.i = load i8, ptr %i.j, align 1, !tbaa !19
  %i.bu = lshr i8 %.val.i.i.i, 6
  switch i8 %i.bu, label %default.unreachable [
    i8 0, label %bb.u
    i8 1, label %bb.v
    i8 3, label %bb.w
    i8 2, label %bb.x
  ]

bb.u:                                             ; preds = %bb.t
  %i.bv = ptrtoint ptr %.0.i.i160 to i64
  %.sroa.0.0.extract.trunc16.i.i = trunc i64 %i.bv to i8
  store i8 %.sroa.0.0.extract.trunc16.i.i, ptr %i.bt, align 1
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.bw = ptrtoint ptr %.0.i.i160 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bw to i32
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.bt, align 1
  br label %.critedge

bb.w:                                             ; preds = %bb.t
  %i.bx = ptrtoint ptr %.0.i.i160 to i64
  store i64 %i.bx, ptr %i.bt, align 1
  br label %.critedge

bb.x:                                             ; preds = %bb.t
  store ptr %.0.i.i160, ptr %i.bt, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  br label %.critedge

upb_MiniTableField_CType.exit.i.i:                ; preds = %upb_Clone_StringView.exit
  br i1 %or.cond.i10.i, label %.critedge.i10.i, label %.critedge18.i.i

.critedge18.i.i:                                  ; preds = %upb_MiniTableField_CType.exit.i.i
  %i.by = icmp eq i8 %.val7.i8.i, 12
  tail call void @llvm.assume(i1 %i.by)
  br label %.critedge.i10.i

.critedge.i10.i:                                  ; preds = %.critedge18.i.i, %upb_MiniTableField_CType.exit.i.i
  %i.bz = and i8 %.val.i161, 3
  %i.ca = icmp eq i8 %i.bz, 2
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = icmp slt i8 %.val.i161, -64
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr i8, ptr %i.i, i64 6
  %.val6.i.i.i.i = load i16, ptr %i.cc, align 2, !tbaa !42 ; 5 uses
  %i.cd = icmp sgt i16 %.val6.i.i.i.i, 0
  br i1 %i.cd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.critedge.i10.i
  %i.ce = lshr i16 %.val6.i.i.i.i, 3
  %i.cf = trunc i16 %.val6.i.i.i.i to i8
  %i.cg = and i8 %i.cf, 7
  %i.ch = shl nuw i8 1, %i.cg
  %i.ci = zext nneg i16 %i.ce to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !21
  %i.cl = or i8 %i.ck, %i.ch
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !21
  %.val7.pre.i.i.i = load i8, ptr %i.j, align 1, !tbaa !19
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i

bb.z:                                             ; preds = %.critedge.i10.i
  %i.cm = icmp slt i16 %.val6.i.i.i.i, 0
  br i1 %i.cm, label %bb.aa, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %.val8.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !43
  %i.cn = xor i16 %.val6.i.i.i.i, -1
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 %i.co
  store i32 %.val8.i.i.i.i, ptr %i.cp, align 4, !tbaa !3
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y
  %.val7.i.i.i = phi i8 [ %.val7.pre.i.i.i, %bb.y ], [ %.val.i161, %bb.z ], [ %.val.i161, %bb.aa ]
  %i.cq = getelementptr i8, ptr %i.i, i64 4
  %.val8.i.i.i163 = load i16, ptr %i.cq, align 4, !tbaa !44
  %i.cr = zext i16 %.val8.i.i.i163 to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr ; 5 uses
  %i.ct = lshr i8 %.val7.i.i.i, 6
  switch i8 %i.ct, label %default.unreachable [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
    i8 3, label %bb.ad
    i8 2, label %bb.ae
  ]

bb.ab:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  %i.cu = ptrtoint ptr %.0.i.i160 to i64
  %.sroa.0.0.extract.trunc17.i.i = trunc i64 %i.cu to i8
  store i8 %.sroa.0.0.extract.trunc17.i.i, ptr %i.cs, align 1
  br label %.critedge

bb.ac:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  %i.cv = ptrtoint ptr %.0.i.i160 to i64
  %.sroa.0.0.extract.trunc.i13.i = trunc i64 %i.cv to i32
  store i32 %.sroa.0.0.extract.trunc.i13.i, ptr %i.cs, align 1
  br label %.critedge

bb.ad:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  %i.cw = ptrtoint ptr %.0.i.i160 to i64
  store i64 %i.cw, ptr %i.cs, align 1
  br label %.critedge

bb.ae:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  store ptr %.0.i.i160, ptr %i.cs, align 1
  %.sroa.5.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx.i12.i, align 1
  br label %.critedge

bb.af:                                            ; preds = %bb.b
  %i.cx = getelementptr i8, ptr %i.i, i64 6
  %i.cy = icmp ugt i8 %.val155, -65
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = and i8 %.val155, 8
  %.not.i164 = icmp eq i8 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i164)
  %i.da = getelementptr i8, ptr %i.i, i64 4       ; 2 uses
  %.val7.i165 = load i16, ptr %i.da, align 4, !tbaa !44
  %i.db = zext i16 %.val7.i165 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 1            ; 2 uses
  %.not128 = icmp eq i64 %i.dd, 0
  br i1 %.not128, label %.critedge, label %upb_MiniTableField_CType.exit197

upb_MiniTableField_CType.exit197:                 ; preds = %bb.af
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dg = load i16, ptr %i.df, align 4, !tbaa !20
  %i.dh = zext i16 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !21
  %i.dl = tail call ptr @upb_Map_DeepClone(ptr noundef nonnull %i.de, i32 poison, i32 poison, ptr noundef nonnull %i.dk, ptr noundef %3), !inline_history !45 ; 5 uses
  %.not.i169 = icmp eq ptr %i.dl, null
  br i1 %.not.i169, label %.critedge143, label %bb.ag

bb.ag:                                            ; preds = %upb_MiniTableField_CType.exit197
  %.val.i186 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %i.dm = and i8 %.val.i186, 8
  %.not.i187 = icmp eq i8 %i.dm, 0
  tail call void @llvm.assume(i1 %.not.i187)
  %.val6.i.i = load i16, ptr %i.cx, align 2, !tbaa !42 ; 5 uses
  %i.dn = icmp sgt i16 %.val6.i.i, 0
  br i1 %i.dn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.do = lshr i16 %.val6.i.i, 3
  %i.dp = trunc i16 %.val6.i.i to i8
  %i.dq = and i8 %i.dp, 7
  %i.dr = shl nuw i8 1, %i.dq
  %i.ds = zext nneg i16 %i.do to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !21
  %i.dv = or i8 %i.du, %i.dr
  store i8 %i.dv, ptr %i.dt, align 1, !tbaa !21
  %.val7.pre.i = load i8, ptr %i.j, align 1, !tbaa !19
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dw = icmp slt i16 %.val6.i.i, 0
  br i1 %i.dw, label %bb.aj, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i

bb.aj:                                            ; preds = %bb.ai
  %.val8.i.i191 = load i32, ptr %i.i, align 4, !tbaa !43
  %i.dx = xor i16 %.val6.i.i, -1
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %i.dy
  store i32 %.val8.i.i191, ptr %i.dz, align 4, !tbaa !3
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %.val7.i188 = phi i8 [ %.val7.pre.i, %bb.ah ], [ %.val.i186, %bb.ai ], [ %.val.i186, %bb.aj ]
  %.val8.i189 = load i16, ptr %i.da, align 4, !tbaa !44
  %i.ea = zext i16 %.val8.i189 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 4 uses
  %i.ec = lshr i8 %.val7.i188, 6
  switch i8 %i.ec, label %default.unreachable [
    i8 0, label %bb.ak
    i8 1, label %bb.al
    i8 3, label %bb.am
    i8 2, label %bb.an
  ]

bb.ak:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i
  %i.ed = ptrtoint ptr %i.dl to i64
  %.0.extract.trunc228 = trunc i64 %i.ed to i8
  store i8 %.0.extract.trunc228, ptr %i.eb, align 1
  br label %.critedge

bb.al:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i
  %i.ee = ptrtoint ptr %i.dl to i64
  %.0.extract.trunc = trunc i64 %i.ee to i32
  store i32 %.0.extract.trunc, ptr %i.eb, align 1
  br label %.critedge

bb.am:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i
  %i.ef = ptrtoint ptr %i.dl to i64
  store i64 %i.ef, ptr %i.eb, align 1
  br label %.critedge

bb.an:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i
  store ptr %i.dl, ptr %i.eb, align 1
  br label %.critedge

.unreachabledefault:                              ; preds = %bb.b
  unreachable

bb.ao:                                            ; preds = %bb.b
  %i.eg = getelementptr i8, ptr %i.i, i64 6
  %i.eh = icmp ugt i8 %.val155, -65
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = and i8 %.val155, 8
  %.not.i172 = icmp eq i8 %i.ei, 0
  tail call void @llvm.assume(i1 %.not.i172)
  %i.ej = getelementptr i8, ptr %i.i, i64 4       ; 2 uses
  %.val7.i173 = load i16, ptr %i.ej, align 4, !tbaa !44
  %i.ek = zext i16 %.val7.i173 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 1            ; 2 uses
  %i.en = inttoptr i64 %i.em to ptr
  %.not = icmp eq i64 %i.em, 0
  br i1 %.not, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eo = getelementptr i8, ptr %i.i, i64 10
  %.val9.i176 = load i8, ptr %i.eo, align 2, !tbaa !16 ; 2 uses
  %i.ep = zext i8 %.val9.i176 to i64              ; 3 uses
  %i.eq = and i8 %.val155, 16
  %.not.i.i211 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i211, label %upb_MiniTableField_CType.exit213.thread239, label %bb.aq

upb_MiniTableField_CType.exit213.thread239:       ; preds = %bb.ap
  %i.er = add nuw nsw i64 %i.ep, 4294967295
  %i.es = and i64 %i.er, 4294967295               ; 2 uses
  br label %upb_MiniTableField_CType.exit210

bb.aq:                                            ; preds = %bb.ap
  switch i8 %.val9.i176, label %upb_MiniTableField_CType.exit213.thread [
    i8 5, label %upb_MiniTableField_CType.exit213.thread.thread
    i8 12, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %upb_MiniTableField_CType.exit213.thread.thread

upb_MiniTableField_CType.exit213.thread.thread:   ; preds = %bb.ar, %bb.aq
  %.0.i.i212.ph.pn.ph = phi i64 [ 8, %bb.ar ], [ 13, %bb.aq ]
  %.in250285 = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i212.ph.pn.ph
  %i.et = load i32, ptr %.in250285, align 4, !tbaa !3
  br label %upb_Message_Array_DeepClone.exit

upb_MiniTableField_CType.exit213.thread:          ; preds = %bb.aq
  %i.eu = add nuw nsw i64 %i.ep, 4294967295
  %i.ev = and i64 %i.eu, 4294967295
  %.pre269 = add nuw nsw i64 %i.ep, 4294967295
  %.pre271 = and i64 %.pre269, 4294967295
  br label %upb_MiniTableField_CType.exit210

upb_MiniTableField_CType.exit210:                 ; preds = %upb_MiniTableField_CType.exit213.thread239, %upb_MiniTableField_CType.exit213.thread
  %.pre-phi272 = phi i64 [ %.pre271, %upb_MiniTableField_CType.exit213.thread ], [ %i.es, %upb_MiniTableField_CType.exit213.thread239 ]
  %.pn = phi i64 [ %i.ev, %upb_MiniTableField_CType.exit213.thread ], [ %i.es, %upb_MiniTableField_CType.exit213.thread239 ]
  %.in291.a = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.pn
  %i.ew = load i32, ptr %.in291.a, align 4, !tbaa !3 ; 2 uses
  %i.ex = add nsw i64 %.pre-phi272, -9
  %i.ey = icmp ult i64 %i.ex, 2
  br i1 %i.ey, label %bb.as, label %upb_Message_Array_DeepClone.exit

bb.as:                                            ; preds = %upb_MiniTableField_CType.exit210
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fa = load i16, ptr %i.ez, align 4, !tbaa !20
  %i.fb = zext i16 %i.fa to i64
  %i.fc = shl nuw nsw i64 %i.fb, 2
  %i.fd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !21
  br label %upb_Message_Array_DeepClone.exit

upb_Message_Array_DeepClone.exit:                 ; preds = %upb_MiniTableField_CType.exit213.thread.thread, %upb_MiniTableField_CType.exit210, %bb.as
  %i.ff = phi i32 [ %i.ew, %bb.as ], [ %i.ew, %upb_MiniTableField_CType.exit210 ], [ %i.et, %upb_MiniTableField_CType.exit213.thread.thread ]
  %i.fg = phi ptr [ %i.fe, %bb.as ], [ null, %upb_MiniTableField_CType.exit210 ], [ null, %upb_MiniTableField_CType.exit213.thread.thread ]
  %i.fh = tail call ptr @upb_Array_DeepClone(ptr noundef nonnull %i.en, i32 noundef %i.ff, ptr noundef %i.fg, ptr noundef %3), !inline_history !46 ; 4 uses
  %.val.i198 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %i.fi = and i8 %.val.i198, 8
  %.not.i199 = icmp eq i8 %i.fi, 0
  tail call void @llvm.assume(i1 %.not.i199)
  %.val6.i.i200 = load i16, ptr %i.eg, align 2, !tbaa !42 ; 5 uses
  %i.fj = icmp sgt i16 %.val6.i.i200, 0
  br i1 %i.fj, label %bb.at, label %bb.au

bb.at:                                            ; preds = %upb_Message_Array_DeepClone.exit
  %i.fk = lshr i16 %.val6.i.i200, 3
  %i.fl = trunc i16 %.val6.i.i200 to i8
  %i.fm = and i8 %i.fl, 7
  %i.fn = shl nuw i8 1, %i.fm
  %i.fo = zext nneg i16 %i.fk to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 %i.fo ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !21
  %i.fr = or i8 %i.fq, %i.fn
  store i8 %i.fr, ptr %i.fp, align 1, !tbaa !21
  %.val7.pre.i206 = load i8, ptr %i.j, align 1, !tbaa !19
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201

bb.au:                                            ; preds = %upb_Message_Array_DeepClone.exit
  %i.fs = icmp slt i16 %.val6.i.i200, 0
  br i1 %i.fs, label %bb.av, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201

bb.av:                                            ; preds = %bb.au
  %.val8.i.i205 = load i32, ptr %i.i, align 4, !tbaa !43
  %i.ft = xor i16 %.val6.i.i200, -1
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 %i.fu
  store i32 %.val8.i.i205, ptr %i.fv, align 4, !tbaa !3
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201: ; preds = %bb.av, %bb.au, %bb.at
  %.val7.i202 = phi i8 [ %.val7.pre.i206, %bb.at ], [ %.val.i198, %bb.au ], [ %.val.i198, %bb.av ]
  %.val8.i203 = load i16, ptr %i.ej, align 4, !tbaa !44
  %i.fw = zext i16 %.val8.i203 to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %i.fw ; 4 uses
  %i.fy = lshr i8 %.val7.i202, 6
  switch i8 %i.fy, label %default.unreachable [
    i8 0, label %bb.aw
    i8 1, label %bb.ax
    i8 3, label %bb.ay
    i8 2, label %bb.az
  ]

bb.aw:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201
  %i.fz = ptrtoint ptr %i.fh to i64
  %.0.extract.trunc233 = trunc i64 %i.fz to i8
  store i8 %.0.extract.trunc233, ptr %i.fx, align 1
  br label %.critedge

bb.ax:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201
  %i.ga = ptrtoint ptr %i.fh to i64
  %.0.extract.trunc231 = trunc i64 %i.ga to i32
  store i32 %.0.extract.trunc231, ptr %i.fx, align 1
  br label %.critedge

bb.ay:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201
  %i.gb = ptrtoint ptr %i.fh to i64
  store i64 %i.gb, ptr %i.fx, align 1
  br label %.critedge

bb.az:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201
  store ptr %i.fh, ptr %i.fx, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.w, %bb.v, %bb.u, %bb.x, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.p, %bb.o, %bb.n, %bb.m, %bb.af, %upb_Message_GetString.exit, %bb.g, %bb.ao, %upb_MiniTableField_CType.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val153 = load i16, ptr %i.g, align 2, !tbaa !40
  %i.gc = zext i16 %.val153 to i64
  %.not133 = icmp samesign ult i64 %indvars.iv.next, %i.gc
  br i1 %.not133, label %bb.b, label %.critedge144, !llvm.loop !47

.critedge144:                                     ; preds = %.critedge, %bb.a
  %.val157 = load i64, ptr %1, align 8, !tbaa !21
  %i.gd = and i64 %.val157, -2                    ; 2 uses
  %i.ge = inttoptr i64 %i.gd to ptr               ; 3 uses
  %.not134 = icmp eq i64 %i.gd, 0
  br i1 %.not134, label %.critedge143, label %.preheader

.preheader:                                       ; preds = %.critedge144
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !3
  %.not137255.not = icmp eq i32 %i.gf, 0
  br i1 %.not137255.not, label %.critedge143, label %.lr.ph257

.lr.ph257:                                        ; preds = %.preheader
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = getelementptr i8, ptr %3, i64 8
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph257, %.critedge148
  %.0119256 = phi i64 [ 0, %.lr.ph257 ], [ %i.ix, %.critedge148 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.0119256
  %.sroa.0.0.copyload = load i64, ptr %i.gi, align 8, !tbaa !11 ; 4 uses
  %i.gj = trunc i64 %.sroa.0.0.copyload to i1
  br i1 %i.gj, label %bb.bb, label %bb.br

bb.bb:                                            ; preds = %bb.ba
  %i.gk = and i64 %.sroa.0.0.copyload, -4
  %i.gl = inttoptr i64 %i.gk to ptr               ; 5 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !48 ; 3 uses
  %i.gn = tail call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef %i.gm, ptr noundef %3) #7 ; 4 uses
  %.not135 = icmp eq ptr %i.gn, null
  br i1 %.not135, label %.critedge143, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.go = getelementptr i8, ptr %i.gm, i64 11
  %.val154 = load i8, ptr %i.go, align 1, !tbaa !19 ; 2 uses
  %i.gp = and i8 %.val154, 3
  %i.gq = icmp eq i8 %i.gp, 2
  br i1 %i.gq, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.gr = load ptr, ptr %i.gl, align 8, !tbaa !48 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i64 16, i1 false), !tbaa.struct !51
  %i.gu = getelementptr i8, ptr %i.gr, i64 10
  %.val.i179 = load i8, ptr %i.gu, align 2, !tbaa !16 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gr, i64 11
  %.val6.i = load i8, ptr %i.gv, align 1, !tbaa !19
  %i.gw = zext i8 %.val.i179 to i64               ; 3 uses
  %i.gx = and i8 %.val6.i, 16
  %.not.i.i.i225 = icmp eq i8 %i.gx, 0
  br i1 %.not.i.i.i225, label %upb_MiniTableExtension_CType.exit.thread241, label %bb.be

upb_MiniTableExtension_CType.exit.thread241:      ; preds = %bb.bd
  %i.gy = add nuw nsw i64 %i.gw, 4294967295
  %i.gz = and i64 %i.gy, 4294967295               ; 2 uses
  br label %upb_MiniTableExtension_CType.exit.i223
end_hunk_0
