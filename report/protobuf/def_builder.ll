inline.NumInlined: 42
inline.NumDeleted: 31
begin_hunk_0_@_upb_DefBuilder_ParseEscape:bb.a
  %i.aa = and i8 %i.z, -8
  %or.cond.i.i15 = icmp eq i8 %i.aa, 48
  br i1 %or.cond.i.i15, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.a, ptr %2, align 8, !tbaa !39
  br label %TryGetOctalDigit.exit.thread.i

bb.u:                                             ; preds = %bb.s
  %i.ab = add nsw i8 %i.z, -48
  br label %TryGetOctalDigit.exit.thread.i

TryGetOctalDigit.exit.thread.i:                   ; preds = %bb.u, %bb.t
  %i.ac = phi ptr [ %i.d, %bb.u ], [ %i.a, %bb.t ] ; 6 uses
  %i.ad = phi i8 [ %i.ab, %bb.u ], [ 0, %bb.t ]   ; 3 uses
  %.not.i.1.i = icmp eq ptr %i.ac, %3
  br i1 %.not.i.1.i, label %TryGetOctalDigit.exit.thread.1.i, label %bb.v

bb.v:                                             ; preds = %TryGetOctalDigit.exit.thread.i
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !20  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.af, ptr %2, align 8, !tbaa !39
  %i.ag = and i8 %i.ae, -8
  %or.cond.i.1.i = icmp eq i8 %i.ag, 48
  br i1 %or.cond.i.1.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ac, ptr %2, align 8, !tbaa !39
  br label %TryGetOctalDigit.exit.thread.1.i

bb.x:                                             ; preds = %bb.v
  %i.ah = add nsw i8 %i.ae, -48
  %i.ai = shl nuw nsw i8 %i.ad, 3
  %i.aj = or disjoint i8 %i.ah, %i.ai
  br label %TryGetOctalDigit.exit.thread.1.i

TryGetOctalDigit.exit.thread.1.i:                 ; preds = %bb.x, %bb.w, %TryGetOctalDigit.exit.thread.i
  %i.ak = phi ptr [ %i.af, %bb.x ], [ %i.ac, %bb.w ], [ %i.ac, %TryGetOctalDigit.exit.thread.i ] ; 4 uses
  %i.al = phi i8 [ %i.aj, %bb.x ], [ %i.ad, %bb.w ], [ %i.ad, %TryGetOctalDigit.exit.thread.i ] ; 3 uses
  %.not.i.2.i = icmp eq ptr %i.ak, %3
  br i1 %.not.i.2.i, label %upb_DefBuilder_ParseOctalEscape.exit, label %bb.y

bb.y:                                             ; preds = %TryGetOctalDigit.exit.thread.1.i
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !20  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.an, ptr %2, align 8, !tbaa !39
  %i.ao = and i8 %i.am, -8
  %or.cond.i.2.i = icmp eq i8 %i.ao, 48
  br i1 %or.cond.i.2.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ak, ptr %2, align 8, !tbaa !39
  br label %upb_DefBuilder_ParseOctalEscape.exit

bb.aa:                                            ; preds = %bb.y
  %i.ap = add nsw i8 %i.am, -48
  %i.aq = shl i8 %i.al, 3
  %i.ar = or disjoint i8 %i.ap, %i.aq
  br label %upb_DefBuilder_ParseOctalEscape.exit

bb.ab:                                            ; preds = %bb.b
  %i.as = sext i8 %i.c to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.as) #15
  unreachable

upb_DefBuilder_ParseOctalEscape.exit:             ; preds = %bb.aa, %bb.z, %TryGetOctalDigit.exit.thread.1.i, %bb.b, %upb_DefBuilder_ParseHexEscape.exit, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i8 [ 7, %bb.b ], [ 8, %bb.c ], [ 12, %bb.d ], [ 10, %bb.e ], [ 13, %bb.f ], [ 9, %bb.g ], [ 11, %bb.h ], [ %i.c, %bb.i ], [ %i.al, %TryGetOctalDigit.exit.thread.1.i ], [ %i.al, %bb.z ], [ %i.ar, %bb.aa ], [ %i.y, %upb_DefBuilder_ParseHexEscape.exit ]
  ret i8 %.0
}

declare ptr @upb_FieldDef_FullName(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @_upb_DefBuilder_CheckIdentSlow(ptr noundef %0, ptr %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #7 {
bb.a:
  %.not38 = icmp eq i64 %2, 0
  br i1 %.not38, label %._crit_edge.thread51, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %3, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.a = load i8, ptr %1, align 1, !tbaa !20      ; 3 uses
  %i.b = icmp eq i8 %i.a, 46
  br i1 %i.b, label %.split37.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.preheader
  %i.c = or i8 %i.a, 32
  %i.d = add i8 %i.c, -97
  %i.e = icmp ult i8 %i.d, 26
  %i.f = icmp eq i8 %i.a, 95
  %i.g = or i1 %i.f, %i.e
  br i1 %i.g, label %upb_isalphanum.exit.thread.us.peel, label %.split35.us

upb_isalphanum.exit.thread.us.peel:               ; preds = %bb.b
  %exitcond.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond.peel.not, label %._crit_edge.thread, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %upb_isalphanum.exit.thread.us.peel, %upb_isalphanum.exit.thread.us
  %.02432.us = phi i64 [ %i.r, %upb_isalphanum.exit.thread.us ], [ 1, %upb_isalphanum.exit.thread.us.peel ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.02432.us
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20    ; 4 uses
  %i.j = icmp eq i8 %i.i, 46
  br i1 %i.j, label %.split37.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.k = or i8 %i.i, 32
  %i.l = add i8 %i.k, -97
  %i.m = icmp ult i8 %i.l, 26
  %i.n = icmp eq i8 %i.i, 95
  %i.o = or i1 %i.n, %i.m
  %i.p = add i8 %i.i, -48
  %i.q = icmp ult i8 %i.p, 10
  %or.cond28.us = or i1 %i.q, %i.o
  br i1 %or.cond28.us, label %upb_isalphanum.exit.thread.us, label %.split.us

upb_isalphanum.exit.thread.us:                    ; preds = %bb.c
  %i.r = add nuw i64 %.02432.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %2
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !41

._crit_edge:                                      ; preds = %upb_isalphanum.exit.thread
  %i.s = trunc nuw i8 %.1 to i1
  br i1 %i.s, label %._crit_edge.thread51, label %._crit_edge.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %upb_isalphanum.exit.thread
  %.033 = phi i8 [ %.1, %upb_isalphanum.exit.thread ], [ 1, %.lr.ph ]
  %.02432 = phi i64 [ %i.ah, %upb_isalphanum.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.02432
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20    ; 4 uses
  %i.v = icmp eq i8 %i.u, 46
  %i.w = trunc nuw i8 %.033 to i1                 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  br i1 %i.w, label %.split37.us, label %upb_isalphanum.exit.thread

.split37.us:                                      ; preds = %.lr.ph.split.us, %bb.d, %.lr.ph.split.us.preheader
  %i.x = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.x, ptr noundef nonnull %1) #15
  unreachable

bb.e:                                             ; preds = %.lr.ph.split
  %i.y = or i8 %i.u, 32
  %i.z = add i8 %i.y, -97
  %i.aa = icmp ult i8 %i.z, 26
  %i.ab = icmp eq i8 %i.u, 95
  %i.ac = or i1 %i.ab, %i.aa                      ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.ac, label %upb_isalphanum.exit.thread, label %.split35.us

.split35.us:                                      ; preds = %bb.f, %bb.b
  %i.ad = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.ad, ptr noundef nonnull %1) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ae = add i8 %i.u, -48
  %i.af = icmp ult i8 %i.ae, 10
  %or.cond28 = or i1 %i.af, %i.ac
  br i1 %or.cond28, label %upb_isalphanum.exit.thread, label %.split.us

.split.us:                                        ; preds = %bb.c, %bb.g
  %i.ag = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.ag, ptr noundef nonnull %1) #15
  unreachable

upb_isalphanum.exit.thread:                       ; preds = %bb.g, %bb.f, %bb.d
  %.1 = phi i8 [ 0, %bb.g ], [ 1, %bb.d ], [ 0, %bb.f ] ; 2 uses
  %i.ah = add nuw i64 %.02432, 1                  ; 2 uses
  %exitcond44.not = icmp eq i64 %i.ah, %2
  br i1 %exitcond44.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !43

._crit_edge.thread51:                             ; preds = %bb.a, %._crit_edge
  %i.ai = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.ai, ptr noundef %1) #15
  unreachable

._crit_edge.thread:                               ; preds = %upb_isalphanum.exit.thread.us, %upb_isalphanum.exit.thread.us.peel, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden { ptr, i64 } @_upb_DefBuilder_MakeKey(ptr noundef %0, ptr noundef %1, ptr readonly captures(none) %2, i64 %3) local_unnamed_addr #7 {
bb.a:
  %i.a = add i64 %3, 8                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.a to i32                    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.h = sub nuw nsw i32 32, %i.g
  %4 = shl nuw i32 1, %i.h
  %.inv.i = icmp sgt i32 %i.e, 1
  %i.i = tail call i32 @llvm.smax.i32(i32 %4, i32 64)
  %narrow = select i1 %.inv.i, i32 %i.i, i32 64
  %spec.select = zext nneg i32 %narrow to i64     ; 2 uses
  store i64 %spec.select, ptr %i.b, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 4 uses
  %i.l = add nuw nsw i64 %spec.select, 7
  %i.m = and i64 %i.l, 4294967288                 ; 3 uses
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !29 ; 5 uses
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %.val11.i = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.o = ptrtoint ptr %.val11.i to i64
  %i.p = ptrtoint ptr %.val.i to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, %i.m
  br i1 %i.r, label %upb_Arena_Malloc.exit, label %upb_Arena_Malloc.exit.thread, !prof !32

upb_Arena_Malloc.exit.thread:                     ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.m
  store ptr %i.s, ptr %i.k, align 8, !tbaa !29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val.i, ptr %i.t, align 8, !tbaa !45
  br label %bb.d

upb_Arena_Malloc.exit:                            ; preds = %bb.b
  %i.u = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.k, i64 noundef %i.m) #14 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !45
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %upb_Arena_Malloc.exit
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

bb.d:                                             ; preds = %._crit_edge, %upb_Arena_Malloc.exit.thread, %upb_Arena_Malloc.exit
  %i.w = phi ptr [ %.pre, %._crit_edge ], [ %.val.i, %upb_Arena_Malloc.exit.thread ], [ %i.u, %upb_Arena_Malloc.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %1, ptr %i.w, align 1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %2, i64 %3, i1 false)
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !45
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.a, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_upb_DefBuilder_GetOrCreateFeatureSet(ptr noundef %0, ptr noundef %1, ptr readonly captures(none) %2, i64 %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #7 {
bb.a:
  %5 = alloca %struct.upb_value, align 8          ; 5 uses
  %i.a = add i64 %3, 8                            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !44
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !45
  br label %_upb_DefBuilder_MakeKey.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.a to i32                    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.h = sub nuw nsw i32 32, %i.g
  %6 = shl nuw i32 1, %i.h
  %.inv.i.i = icmp sgt i32 %i.e, 1
  %i.i = tail call i32 @llvm.smax.i32(i32 %6, i32 64)
  %narrow.i = select i1 %.inv.i.i, i32 %i.i, i32 64
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 2 uses
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 4 uses
  %i.l = add nuw nsw i64 %spec.select.i, 7
  %i.m = and i64 %i.l, 4294967288                 ; 3 uses
  %.val.i.i = load ptr, ptr %i.k, align 8, !tbaa !29 ; 5 uses
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %.val11.i.i = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.o = ptrtoint ptr %.val11.i.i to i64
  %i.p = ptrtoint ptr %.val.i.i to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp ult i64 %i.q, %i.m
  br i1 %i.r, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !32

upb_Arena_Malloc.exit.thread.i:                   ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.m
  store ptr %i.s, ptr %i.k, align 8, !tbaa !29
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val.i.i, ptr %i.t, align 8, !tbaa !45
  br label %_upb_DefBuilder_MakeKey.exit

upb_Arena_Malloc.exit.i:                          ; preds = %bb.b
  %i.u = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.k, i64 noundef %i.m) #14 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !45
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.c, label %_upb_DefBuilder_MakeKey.exit

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

_upb_DefBuilder_MakeKey.exit:                     ; preds = %._crit_edge.i, %upb_Arena_Malloc.exit.thread.i, %upb_Arena_Malloc.exit.i
  %i.w = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.u, %upb_Arena_Malloc.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %1, ptr %i.w, align 1
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !45  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = call zeroext i1 @upb_strtable_lookup2(ptr noundef nonnull %i.ab, ptr noundef %i.aa, i64 noundef %i.a, ptr noundef nonnull %5) #14 ; 2 uses
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_upb_DefBuilder_MakeKey.exit
  %i.ad = load i64, ptr %5, align 8
  %i.ae = inttoptr i64 %i.ad to ptr
  store ptr %i.ae, ptr %4, align 8, !tbaa !47
  br label %bb.i

bb.e:                                             ; preds = %_upb_DefBuilder_MakeKey.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = call ptr @upb_Message_DeepClone(ptr noundef %1, ptr noundef nonnull @google__protobuf__FeatureSet_msg_init, ptr noundef %i.ag) #14 ; 3 uses
  store ptr %i.ah, ptr %4, align 8, !tbaa !47
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  store i64 %i.ai, ptr %5, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = call zeroext i1 @upb_strtable_insert(ptr noundef nonnull %i.ab, ptr noundef %i.aa, i64 noundef %i.a, i64 %i.ai, ptr noundef %i.ak) #14
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.d
  %.0 = xor i1 %i.ac, true
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i1 %.0
}

declare zeroext i1 @upb_strtable_lookup2(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @upb_Message_DeepClone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @upb_strtable_insert(ptr noundef, ptr noundef, i64 noundef, i64, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden ptr @_upb_DefBuilder_DoResolveFeatures(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call i32 @upb_FileDef_Edition(ptr noundef %i.e) #14
  %i.g = icmp ult i32 %i.f, 1000
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #15
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.j = call i32 @upb_Encode(ptr noundef nonnull %2, ptr noundef nonnull @google__protobuf__FeatureSet_msg_init, i32 noundef 0, ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.c, align 8, !tbaa !48
  %i.m = call zeroext i1 @_upb_DefBuilder_GetOrCreateFeatureSet(ptr noundef nonnull %0, ptr noundef %1, ptr nonnull %i.k, i64 %i.l, ptr noundef nonnull %i.b)
  %.0.pre = load ptr, ptr %i.b, align 8, !tbaa !47 ; 2 uses
  br i1 %i.m, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.n = load i64, ptr %i.c, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = call i32 @upb_Decode(ptr noundef nonnull %i.k, i64 noundef %i.n, ptr noundef %.0.pre, ptr noundef nonnull @google__protobuf__FeatureSet_msg_init, ptr noundef null, i32 noundef 0, ptr noundef %i.p) #14
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %.1 = phi ptr [ %.0.pre, %bb.j ], [ %1, %bb.a ]
  ret ptr %.1
}

declare i32 @upb_FileDef_Edition(ptr noundef) local_unnamed_addr #6

declare i32 @upb_Decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @upb_Encode(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
end_hunk_0
