Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/def_builder?download=true
inline.NumInlined: 42
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_upb_DefBuilder_ParseEscape:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !27
  %i.g = add i8 %i.e, -48
  %or.cond.i.i = icmp ult i8 %i.g, 10
  br i1 %or.cond.i.i, label %TryGetHexDigit.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.h = or i8 %i.e, 32                           ; 2 uses
  %i.i = add i8 %i.h, -97
  %or.cond5.i.i = icmp ult i8 %i.i, 6
  br i1 %or.cond5.i.i, label %TryGetHexDigit.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.d, ptr %2, align 8, !tbaa !27
  br label %bb.n

TryGetHexDigit.exit.i:                            ; preds = %bb.l, %bb.k
  %.sink40.i = phi i8 [ %i.e, %bb.k ], [ %i.h, %bb.l ]
  %.sink39.i = phi i32 [ -48, %bb.k ], [ -87, %bb.l ]
  %i.j = zext nneg i8 %.sink40.i to i32
  %i.k = add nsw i32 %.sink39.i, %i.j             ; 2 uses
  %.not.i1526.i = icmp eq ptr %i.f, %3
  br i1 %.not.i1526.i, label %upb_DefBuilder_ParseHexEscape.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.l = tail call ptr @upb_FieldDef_FullName(ptr noundef %1) #14
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %i.l) #15
  unreachable

.lr.ph.i:                                         ; preds = %TryGetHexDigit.exit.i, %bb.q
  %.027.i = phi i32 [ %i.v, %bb.q ], [ %i.k, %TryGetHexDigit.exit.i ] ; 2 uses
  %i.m = phi ptr [ %i.o, %bb.q ], [ %i.f, %TryGetHexDigit.exit.i ] ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !27
  %i.p = add i8 %i.n, -48
  %or.cond.i16.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i16.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.q = or i8 %i.n, 32                           ; 2 uses
  %i.r = add i8 %i.q, -97
  %or.cond5.i17.i = icmp ult i8 %i.r, 6
  br i1 %or.cond5.i17.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.m, ptr %2, align 8, !tbaa !27
  br label %TryGetHexDigit.exit19.i

bb.q:                                             ; preds = %bb.o, %.lr.ph.i
  %.sink42.i = phi i8 [ %i.n, %.lr.ph.i ], [ %i.q, %bb.o ]
  %.sink41.i = phi i32 [ -48, %.lr.ph.i ], [ -87, %bb.o ]
  %i.s = zext nneg i8 %.sink42.i to i32
  %i.t = add nsw i32 %.sink41.i, %i.s
  %i.u = shl i32 %.027.i, 4
  %i.v = or i32 %i.t, %i.u                        ; 2 uses
  %.not.i15.i = icmp eq ptr %i.o, %3
  br i1 %.not.i15.i, label %TryGetHexDigit.exit19.i, label %.lr.ph.i, !llvm.loop !45

TryGetHexDigit.exit19.i:                          ; preds = %bb.q, %bb.p
  %.025.i = phi i32 [ %.027.i, %bb.p ], [ %i.v, %bb.q ] ; 2 uses
  %i.w = icmp ugt i32 %.025.i, 255
  br i1 %i.w, label %bb.r, label %upb_DefBuilder_ParseHexEscape.exit

bb.r:                                             ; preds = %TryGetHexDigit.exit19.i
  %i.x = tail call ptr @upb_FieldDef_FullName(ptr noundef %1) #14
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef %i.x) #15
  unreachable

upb_DefBuilder_ParseHexEscape.exit:               ; preds = %TryGetHexDigit.exit.i, %TryGetHexDigit.exit19.i
  %.02535.i = phi i32 [ %.025.i, %TryGetHexDigit.exit19.i ], [ %i.k, %TryGetHexDigit.exit.i ]
  %i.y = trunc nuw i32 %.02535.i to i8
  br label %upb_DefBuilder_ParseOctalEscape.exit

bb.s:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store ptr %i.a, ptr %2, align 8, !tbaa !27
  %i.z = load i8, ptr %i.a, align 1, !tbaa !20    ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !27
  %i.aa = and i8 %i.z, -8
  %or.cond.i.i15 = icmp eq i8 %i.aa, 48
  br i1 %or.cond.i.i15, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.a, ptr %2, align 8, !tbaa !27
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
  store ptr %i.af, ptr %2, align 8, !tbaa !27
  %i.ag = and i8 %i.ae, -8
  %or.cond.i.1.i = icmp eq i8 %i.ag, 48
  br i1 %or.cond.i.1.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ac, ptr %2, align 8, !tbaa !27
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
  store ptr %i.an, ptr %2, align 8, !tbaa !27
  %i.ao = and i8 %i.am, -8
  %or.cond.i.2.i = icmp eq i8 %i.ao, 48
  br i1 %or.cond.i.2.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ak, ptr %2, align 8, !tbaa !27
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
  %.033.us = phi i64 [ %i.r, %upb_isalphanum.exit.thread.us ], [ 1, %upb_isalphanum.exit.thread.us.peel ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.033.us
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
  %i.r = add nuw i64 %.033.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %2
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph.split.us, !llvm.loop !46

._crit_edge:                                      ; preds = %upb_isalphanum.exit.thread
  br i1 %i.u, label %._crit_edge.thread51, label %._crit_edge.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %upb_isalphanum.exit.thread
  %.033 = phi i64 [ %i.af, %upb_isalphanum.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %.02432 = phi i1 [ %i.u, %upb_isalphanum.exit.thread ], [ true, %.lr.ph ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.033
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20    ; 4 uses
  %i.u = icmp eq i8 %i.t, 46                      ; 3 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  br i1 %.02432, label %.split37.us, label %upb_isalphanum.exit.thread

.split37.us:                                      ; preds = %.lr.ph.split.us, %bb.d, %.lr.ph.split.us.preheader
  %i.v = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.v, ptr noundef nonnull %1) #15
  unreachable

bb.e:                                             ; preds = %.lr.ph.split
  %i.w = or i8 %i.t, 32
  %i.x = add i8 %i.w, -97
  %i.y = icmp ult i8 %i.x, 26
  %i.z = icmp eq i8 %i.t, 95
  %i.aa = or i1 %i.z, %i.y                        ; 2 uses
  br i1 %.02432, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.aa, label %upb_isalphanum.exit.thread, label %.split35.us

.split35.us:                                      ; preds = %bb.f, %bb.b
  %i.ab = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.ab, ptr noundef nonnull %1) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = add i8 %i.t, -48
  %i.ad = icmp ult i8 %i.ac, 10
  %or.cond28 = or i1 %i.ad, %i.aa
  br i1 %or.cond28, label %upb_isalphanum.exit.thread, label %.split.us

.split.us:                                        ; preds = %bb.c, %bb.g
  %i.ae = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.ae, ptr noundef nonnull %1) #15
  unreachable

upb_isalphanum.exit.thread:                       ; preds = %bb.g, %bb.f, %bb.d
  %i.af = add nuw i64 %.033, 1                    ; 2 uses
  %exitcond44.not = icmp eq i64 %i.af, %2
  br i1 %exitcond44.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !47

._crit_edge.thread51:                             ; preds = %bb.a, %._crit_edge
  %i.ag = trunc i64 %2 to i32
  tail call void (ptr, ptr, ...) @_upb_DefBuilder_Errf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.ag, ptr noundef %1) #15
  unreachable

._crit_edge.thread:                               ; preds = %upb_isalphanum.exit.thread.us, %upb_isalphanum.exit.thread.us.peel, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define hidden { ptr, i64 } @_upb_DefBuilder_MakeKey(ptr noundef %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #7 {
bb.a:
  %i.a = add i64 %3, 8                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !29
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.a to i32                    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.h = sub nuw nsw i32 32, %i.g
  %i.i = shl nuw i32 1, %i.h
  %.inv.i = icmp sgt i32 %i.e, 1
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.i, i32 64)
  %narrow = select i1 %.inv.i, i32 %i.j, i32 64
  %spec.select = zext nneg i32 %narrow to i64     ; 2 uses
  store i64 %spec.select, ptr %i.b, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 4 uses
  %i.m = add nuw nsw i64 %spec.select, 7
  %i.n = and i64 %i.m, 4294967288                 ; 3 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !24 ; 5 uses
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.val11.i = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.p = ptrtoint ptr %.val11.i to i64
  %i.q = ptrtoint ptr %.val.i to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, %i.n
  br i1 %i.s, label %upb_Arena_Malloc.exit, label %upb_Arena_Malloc.exit.thread, !prof !26

upb_Arena_Malloc.exit.thread:                     ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.n
  store ptr %i.t, ptr %i.l, align 8, !tbaa !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val.i, ptr %i.u, align 8, !tbaa !29
  br label %bb.d

upb_Arena_Malloc.exit:                            ; preds = %bb.b
  %i.v = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.l, i64 noundef %i.n) #14 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.w, align 8, !tbaa !29
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %upb_Arena_Malloc.exit
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

bb.d:                                             ; preds = %._crit_edge, %upb_Arena_Malloc.exit.thread, %upb_Arena_Malloc.exit
  %i.x = phi ptr [ %.pre, %._crit_edge ], [ %.val.i, %upb_Arena_Malloc.exit.thread ], [ %i.v, %upb_Arena_Malloc.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %1, ptr %i.x, align 1
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %2, i64 %3, i1 false)
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !29
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.ab, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.a, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_upb_DefBuilder_GetOrCreateFeatureSet(ptr noundef %0, ptr noundef %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #7 {
bb.a:
  %5 = alloca %struct.upb_value, align 8          ; 5 uses
  %i.a = add i64 %3, 8                            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = icmp ult i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !29
  br label %_upb_DefBuilder_MakeKey.exit

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.a to i32                    ; 2 uses
  %i.f = add nsw i32 %i.e, -1
  %i.g = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 true)
  %i.h = sub nuw nsw i32 32, %i.g
  %i.i = shl nuw i32 1, %i.h
  %.inv.i.i = icmp sgt i32 %i.e, 1
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.i, i32 64)
  %narrow.i = select i1 %.inv.i.i, i32 %i.j, i32 64
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 2 uses
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 4 uses
  %i.m = add nuw nsw i64 %spec.select.i, 7
  %i.n = and i64 %i.m, 4294967288                 ; 3 uses
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !24 ; 5 uses
  %i.o = getelementptr i8, ptr %i.l, i64 8
  %.val11.i.i = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.p = ptrtoint ptr %.val11.i.i to i64
  %i.q = ptrtoint ptr %.val.i.i to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, %i.n
  br i1 %i.s, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.thread.i, !prof !26

upb_Arena_Malloc.exit.thread.i:                   ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.n
  store ptr %i.t, ptr %i.l, align 8, !tbaa !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val.i.i, ptr %i.u, align 8, !tbaa !29
  br label %_upb_DefBuilder_MakeKey.exit

upb_Arena_Malloc.exit.i:                          ; preds = %bb.b
  %i.v = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.l, i64 noundef %i.n) #14 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.v, ptr %i.w, align 8, !tbaa !29
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.c, label %_upb_DefBuilder_MakeKey.exit

bb.c:                                             ; preds = %upb_Arena_Malloc.exit.i
  tail call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

_upb_DefBuilder_MakeKey.exit:                     ; preds = %._crit_edge.i, %upb_Arena_Malloc.exit.thread.i, %upb_Arena_Malloc.exit.i
  %i.x = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.val.i.i, %upb_Arena_Malloc.exit.thread.i ], [ %i.v, %upb_Arena_Malloc.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %1, ptr %i.x, align 1
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr readonly align 1 %2, i64 %3, i1 false)
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !29  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = call zeroext i1 @upb_strtable_lookup2(ptr noundef nonnull %i.ac, ptr noundef %i.ab, i64 noundef %i.a, ptr noundef nonnull %5) #14 ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_upb_DefBuilder_MakeKey.exit
  %i.ae = load i64, ptr %5, align 8
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %4, align 8, !tbaa !31
  br label %bb.i

bb.e:                                             ; preds = %_upb_DefBuilder_MakeKey.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.ai = call ptr @upb_Message_DeepClone(ptr noundef %1, ptr noundef nonnull @google__protobuf__FeatureSet_msg_init, ptr noundef %i.ah) #14 ; 3 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !31
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.am = call zeroext i1 @upb_strtable_insert(ptr noundef nonnull %i.ac, ptr noundef %i.ab, i64 noundef %i.a, i64 %i.aj, ptr noundef %i.al) #14
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_upb_DefBuilder_OomErr(ptr noundef nonnull %0) #15
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.d
  %.0 = xor i1 %i.ad, true
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
end_hunk_0
