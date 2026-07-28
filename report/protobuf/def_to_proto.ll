inline.NumInlined: 298
inline.NumDeleted: 162
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@msgdef_toproto:bb.a
  %i.gi = ptrtoint ptr %.val.i.i.i.i148 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = icmp ult i64 %i.gj, %i.gd
  br i1 %i.gk, label %upb_Arena_Malloc.exit.i.i.i152, label %upb_Arena_Malloc.exit.thread.i.i.i150, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i150:            ; preds = %bb.r
  %i.gl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i148, i64 %i.gd
  store ptr %i.gl, ptr %i.gc, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i148) ]
  br label %bb.s

upb_Arena_Malloc.exit.i.i.i152:                   ; preds = %bb.r
  %i.gm = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.gc, i64 noundef %i.gd) #11 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i153, label %bb.t, label %bb.s, !prof !18

bb.s:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i152, %upb_Arena_Malloc.exit.thread.i.i.i150
  %.0.i3.i.i.i151 = phi ptr [ %.val.i.i.i.i148, %upb_Arena_Malloc.exit.thread.i.i.i150 ], [ %i.gm, %upb_Arena_Malloc.exit.i.i.i152 ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i3.i.i.i151, i8 0, i64 %i.gd, i1 false)
  %i.gn = call i32 @upb_Decode(ptr noundef nonnull %i.fw, i64 noundef %i.fy, ptr noundef nonnull %.0.i3.i.i.i151, ptr noundef nonnull @google__protobuf__MessageOptions_msg_init, ptr noundef %i.gb, i32 noundef 0, ptr noundef nonnull %i.gc) #11
  %.not10.i = icmp eq i32 %i.gn, 0
  br i1 %.not10.i, label %google_protobuf_MessageOptions_parse_ex.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %upb_Arena_Malloc.exit.i.i.i152
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @siglongjmp(ptr noundef nonnull %i.go, i32 noundef 1) #13
  unreachable

google_protobuf_MessageOptions_parse_ex.exit:     ; preds = %bb.s
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__MessageOptions_msg_init) #11, !srcloc !20
  %i.gp = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.gq = or i8 %i.gp, 2
  store i8 %i.gq, ptr %i.ad, align 1, !tbaa !19
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 72
  %i.gs = ptrtoint ptr %.0.i3.i.i.i151 to i64
  store i64 %i.gs, ptr %i.gr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.u

bb.u:                                             ; preds = %google_protobuf_MessageOptions_parse_ex.exit, %._crit_edge186
  %i.gt = call i32 @upb_MessageDef_Visibility(ptr noundef %1) #11 ; 2 uses
  %.not136 = icmp eq i32 %i.gt, 0
  br i1 %.not136, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.gv = or i8 %i.gu, 4
  store i8 %i.gv, ptr %i.ad, align 1, !tbaa !19
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.i3.i.i, i64 12
  store i32 %i.gt, ptr %i.gw, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  ret ptr %.0.i3.i.i
}

; Function Attrs: noreturn nounwind
declare void @siglongjmp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc { ptr, i64 } @strviewdup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.c = add i64 %i.a, 7
  %i.d = and i64 %i.c, -8                         ; 3 uses
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !13 ; 4 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val11.i.i = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.f = ptrtoint ptr %.val11.i.i to i64
  %i.g = ptrtoint ptr %.val.i.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, %i.d
  br i1 %i.i, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !17

upb_Arena_Malloc.exit.thread.i:                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.d
  store ptr %i.j, ptr %i.b, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  br label %strviewdup2.exit

upb_Arena_Malloc.exit.i:                          ; preds = %bb.a
  %i.k = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.b, i64 noundef %i.d) #11 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.b, label %strviewdup2.exit

bb.b:                                             ; preds = %upb_Arena_Malloc.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @siglongjmp(ptr noundef nonnull %i.l, i32 noundef 1) #13
  unreachable

strviewdup2.exit:                                 ; preds = %upb_Arena_Malloc.exit.thread.i, %upb_Arena_Malloc.exit.i
  %.0.i11.i = phi ptr [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.k, %upb_Arena_Malloc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i11.i, ptr nonnull readonly align 1 %1, i64 %i.a, i1 false)
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.0.i11.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.a, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

declare ptr @upb_MessageDef_Name(ptr noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_FieldCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_Field(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_OneofCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_Oneof(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_NestedMessageCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_NestedMessage(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_NestedEnumCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_NestedEnum(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_NestedExtensionCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_NestedExtension(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_ExtensionRangeCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_ExtensionRange(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_ReservedRangeCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_ReservedRange(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_ReservedNameCount(ptr noundef) local_unnamed_addr #5

declare { ptr, i64 } @upb_MessageDef_ReservedName(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare zeroext i1 @upb_MessageDef_HasOptions(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_Options(ptr noundef) local_unnamed_addr #5

declare ptr @_upb_DefPool_GeneratedExtensionRegistry(ptr noundef) local_unnamed_addr #5

declare ptr @upb_FileDef_Pool(ptr noundef) local_unnamed_addr #5

declare ptr @upb_MessageDef_File(ptr noundef) local_unnamed_addr #5

declare i32 @upb_MessageDef_Visibility(ptr noundef) local_unnamed_addr #5

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @upb_Message_ResizeArrayUninitialized(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 11         ; 3 uses
  %.val10 = load i8, ptr %i.a, align 1, !tbaa !64 ; 4 uses
  %i.b = icmp ugt i8 %.val10, -65
  tail call void @llvm.assume(i1 %i.b)
  %i.c = and i8 %.val10, 3
  %i.d = icmp eq i8 %i.c, 1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i8 %.val10, 8
  %.not.i.i.i = icmp eq i8 %i.e, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.f = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val9.i.i.i = load i16, ptr %i.f, align 4, !tbaa !66
  %i.g = zext i16 %.val9.i.i.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i64, ptr %i.h, align 1              ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.b, label %upb_Message_GetOrCreateMutableArray.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 10
  %.val16.i = load i8, ptr %i.k, align 2, !tbaa !67 ; 2 uses
  %i.l = zext i8 %.val16.i to i64
  %i.m = and i8 %.val10, 16
  %.not.i.i18.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i18.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %.val16.i, label %bb.e [
    i8 5, label %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i
    i8 12, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = add nuw nsw i64 %i.l, 4294967295
  %i.o = and i64 %i.n, 4294967295
  br label %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i

_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i.i = phi i64 [ %i.o, %bb.e ], [ 8, %bb.d ], [ 13, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr @_upb_FieldType_SizeLg2_dont_copy_me__upb_internal_use_only.size, i64 %.0.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !19    ; 2 uses
  %i.r = sext i8 %i.q to i64
  %4 = zext nneg i8 %i.q to i64
  %i.s = shl i64 4, %4
  %i.t = add nuw i64 %i.s, 28
  %i.u = and i64 %i.t, -8                         ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !13 ; 4 uses
  %i.v = getelementptr i8, ptr %3, i64 8
  %.val11.i.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.w = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.x = ptrtoint ptr %.val.i.i.i.i to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, %i.u
  br i1 %i.z, label %upb_Arena_Malloc.exit.i.i.i, label %upb_Arena_Malloc.exit.thread.i.i.i, !prof !17

upb_Arena_Malloc.exit.thread.i.i.i:               ; preds = %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.u
  store ptr %i.aa, ptr %3, align 8, !tbaa !13
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  br label %bb.f

upb_Arena_Malloc.exit.i.i.i:                      ; preds = %_upb_MiniTableField_ElemSizeLg2_dont_copy_me__upb_internal_use_only.exit.i
  %i.ab = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.u) #11 ; 2 uses
  %.not.i.i20.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i20.i, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.i, label %bb.f

bb.f:                                             ; preds = %upb_Arena_Malloc.exit.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i
  %.0.i19.i.i.i = phi ptr [ %.val.i.i.i.i, %upb_Arena_Malloc.exit.thread.i.i.i ], [ %i.ab, %upb_Arena_Malloc.exit.i.i.i ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 24
  %i.ad = icmp ne i64 %.0.i.i.i, 7
  %.neg.i.i.i.i = sext i1 %i.ad to i64
  %i.ae = add nsw i64 %.neg.i.i.i.i, %i.r
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = or i64 %i.ae, %i.af
  store i64 %i.ag, ptr %.0.i19.i.i.i, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i19.i.i.i, i64 16
  store i64 4, ptr %i.ai, align 8, !tbaa !71
  br label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.i

_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.i: ; preds = %bb.f, %upb_Arena_Malloc.exit.i.i.i
  %.0.i.i19.i = phi ptr [ %.0.i19.i.i.i, %bb.f ], [ null, %upb_Arena_Malloc.exit.i.i.i ] ; 11 uses
  %.val13.i = load i8, ptr %i.a, align 1, !tbaa !64 ; 3 uses
  %i.aj = icmp ugt i8 %.val13.i, -65
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i8 %.val13.i, 3
  %i.al = icmp eq i8 %i.ak, 1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = and i8 %.val13.i, 8
  %.not.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.i
  %i.an = tail call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3) #11 ; 2 uses
  %.not.i.not.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.not.i.i, label %upb_Message_GetOrCreateMutableArray.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %.val.i.i.i = load i8, ptr %i.a, align 1, !tbaa !64
  %i.ap = lshr i8 %.val.i.i.i, 6
  switch i8 %i.ap, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 3, label %bb.k
    i8 2, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.aq = ptrtoint ptr %.0.i.i19.i to i64
  %.sroa.0.0.extract.trunc22.i.i = trunc i64 %i.aq to i8
  store i8 %.sroa.0.0.extract.trunc22.i.i, ptr %i.ao, align 1
  br label %upb_Message_GetOrCreateMutableArray.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %.0.i.i19.i to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ar to i32
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.ao, align 1
  br label %upb_Message_GetOrCreateMutableArray.exit

bb.k:                                             ; preds = %bb.h
  %i.as = ptrtoint ptr %.0.i.i19.i to i64
  store i64 %i.as, ptr %i.ao, align 1
  br label %upb_Message_GetOrCreateMutableArray.exit

bb.l:                                             ; preds = %bb.h
  store ptr %.0.i.i19.i, ptr %i.ao, align 1
  br label %upb_Message_GetOrCreateMutableArray.exit

default.unreachable:                              ; preds = %bb.h
  unreachable

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i: ; preds = %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.i
  %.val7.i.i.i = load i16, ptr %i.f, align 4, !tbaa !66
  %i.at = zext i16 %.val7.i.i.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = ptrtoint ptr %.0.i.i19.i to i64
  store i64 %i.av, ptr %i.au, align 1
  br label %upb_Message_GetOrCreateMutableArray.exit

upb_Message_GetOrCreateMutableArray.exit:         ; preds = %bb.a, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  %.0.i = phi ptr [ %i.j, %bb.a ], [ %.0.i.i19.i, %bb.g ], [ %.0.i.i19.i, %bb.i ], [ %.0.i.i19.i, %bb.j ], [ %.0.i.i19.i, %bb.k ], [ %.0.i.i19.i, %bb.l ], [ %.0.i.i19.i, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i ] ; 5 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit, label %bb.m

bb.m:                                             ; preds = %upb_Message_GetOrCreateMutableArray.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !71
  %i.ay = icmp ult i64 %i.ax, %2
  br i1 %i.ay, label %upb_Array_Reserve.exit.i, label %bb.n

upb_Array_Reserve.exit.i:                         ; preds = %bb.m
  %i.az = tail call zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %.0.i, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr noundef %3) #11
  br i1 %i.az, label %bb.n, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

bb.n:                                             ; preds = %bb.m, %upb_Array_Reserve.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i64 %2, ptr %i.ba, align 8, !tbaa !70
  %.val11 = load i64, ptr %.0.i, align 8, !tbaa !68
  %i.bb = and i64 %.val11, -8
  %i.bc = inttoptr i64 %i.bb to ptr
  br label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit: ; preds = %upb_Array_Reserve.exit.i, %upb_Message_GetOrCreateMutableArray.exit, %bb.n
  %.0 = phi ptr [ %i.bc, %bb.n ], [ null, %upb_Message_GetOrCreateMutableArray.exit ], [ null, %upb_Array_Reserve.exit.i ]
  ret ptr %.0
}

declare ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @upb_ExtensionRange_Start(ptr noundef) local_unnamed_addr #5

declare i32 @upb_ExtensionRange_End(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @upb_ExtensionRange_HasOptions(ptr noundef) local_unnamed_addr #5

declare ptr @upb_ExtensionRange_Options(ptr noundef) local_unnamed_addr #5

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @upb_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @upb_MessageReservedRange_Start(ptr noundef) local_unnamed_addr #5

declare i32 @upb_MessageReservedRange_End(ptr noundef) local_unnamed_addr #5

declare ptr @upb_EnumDef_Name(ptr noundef) local_unnamed_addr #5

declare i32 @upb_EnumDef_ValueCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_EnumDef_Value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_EnumDef_ReservedRangeCount(ptr noundef) local_unnamed_addr #5

declare ptr @upb_EnumDef_ReservedRange(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @upb_EnumDef_ReservedNameCount(ptr noundef) local_unnamed_addr #5

declare { ptr, i64 } @upb_EnumDef_ReservedName(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @upb_EnumDef_HasOptions(ptr noundef) local_unnamed_addr #5

declare ptr @upb_EnumDef_Options(ptr noundef) local_unnamed_addr #5

declare ptr @upb_EnumDef_File(ptr noundef) local_unnamed_addr #5

declare i32 @upb_EnumDef_Visibility(ptr noundef) local_unnamed_addr #5

declare i32 @upb_EnumReservedRange_Start(ptr noundef) local_unnamed_addr #5

declare i32 @upb_EnumReservedRange_End(ptr noundef) local_unnamed_addr #5

declare ptr @upb_EnumValueDef_Name(ptr noundef) local_unnamed_addr #5

declare i32 @upb_EnumValueDef_Number(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @upb_EnumValueDef_HasOptions(ptr noundef) local_unnamed_addr #5

declare ptr @upb_EnumValueDef_Options(ptr noundef) local_unnamed_addr #5

declare ptr @upb_EnumValueDef_Enum(ptr noundef) local_unnamed_addr #5

declare ptr @upb_FieldDef_Name(ptr noundef) local_unnamed_addr #5

declare i32 @upb_FieldDef_Number(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @upb_FieldDef_IsRequired(ptr noundef) local_unnamed_addr #5

declare i32 @upb_FileDef_Edition(ptr noundef) local_unnamed_addr #5

declare ptr @upb_FieldDef_File(ptr noundef) local_unnamed_addr #5

declare i32 @upb_FieldDef_Label(ptr noundef) local_unnamed_addr #5

declare i32 @upb_FieldDef_Type(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @upb_FieldDef_HasJsonName(ptr noundef) local_unnamed_addr #5

declare ptr @upb_FieldDef_JsonName(ptr noundef) local_unnamed_addr #5

end_hunk_0
