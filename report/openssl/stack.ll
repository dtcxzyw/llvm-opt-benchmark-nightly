Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/stack?download=true
inline.NumInlined: 25
inline.NumDeleted: 8
begin_hunk_0_@OPENSSL_sk_set_cmp_thunks:bb.a

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define i32 @OPENSSL_sk_insert(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @__func__.OPENSSL_sk_insert) #15
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 786690, ptr noundef null) #15
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !13
  %i.c = icmp eq i32 %i.b, 2147483647
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #15
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @__func__.OPENSSL_sk_insert) #15
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 15, i32 noundef 114, ptr noundef null) #15
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @sk_reserve(ptr noundef %0, i32 noundef 1, i32 noundef 0)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.f = icmp sge i32 %2, %i.e
  %i.g = icmp slt i32 %2, 0
  %or.cond = or i1 %i.g, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = sext i32 %i.e to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  store ptr %1, ptr %i.k, align 8, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = zext nneg i32 %2 to i64                  ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = sub nuw nsw i32 %i.e, %2
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.m, i64 %i.q, i1 false)
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.l
  store ptr %1, ptr %i.s, align 8, !tbaa !17
  %.pre = load i32, ptr %0, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = phi i32 [ %i.e, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %.0 = phi i32 [ %i.e, %bb.g ], [ %2, %bb.h ]    ; 4 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %0, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !14
  %.not47 = icmp ne i32 %i.w, 0
  %i.x = icmp sgt i32 %i.t, 0
  %or.cond49 = select i1 %.not47, i1 %i.x, i1 false
  br i1 %or.cond49, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 3 uses
  %.not48 = icmp eq ptr %i.z, null
  br i1 %.not48, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp sgt i32 %.0, 0
  br i1 %i.aa, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19
  %i.ad = zext nneg i32 %.0 to i64
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -8     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 %i.z(ptr noundef %i.af, ptr noundef nonnull %i.ae) #15, !inline_history !0
  br label %cmp_with_thunk.exit

bb.n:                                             ; preds = %bb.l
  %i.ak = tail call i32 %i.ah(ptr noundef nonnull %i.z, ptr noundef %i.af, ptr noundef nonnull %i.ae) #15, !inline_history !0
  br label %cmp_with_thunk.exit

cmp_with_thunk.exit:                              ; preds = %bb.m, %bb.n
  %i.al = phi i32 [ %i.aj, %bb.m ], [ %i.ak, %bb.n ]
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %cmp_with_thunk.exit
  store i32 0, ptr %i.v, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %cmp_with_thunk.exit, %bb.o, %bb.k
  %i.an = load i32, ptr %0, align 8, !tbaa !13
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = icmp slt i32 %.0, %i.ao
  br i1 %i.ap, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19
  %i.as = sext i32 %.0 to i64
  %i.at = getelementptr [8 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !12  ; 2 uses
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.az = tail call i32 %i.ay(ptr noundef %i.au, ptr noundef %i.at) #15, !inline_history !0
  br label %cmp_with_thunk.exit50

bb.s:                                             ; preds = %bb.q
  %i.ba = tail call i32 %i.aw(ptr noundef %i.ay, ptr noundef %i.au, ptr noundef %i.at) #15, !inline_history !0
  br label %cmp_with_thunk.exit50

cmp_with_thunk.exit50:                            ; preds = %bb.r, %bb.s
  %i.bb = phi i32 [ %i.az, %bb.r ], [ %i.ba, %bb.s ]
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.sink.split, label %bb.t

.sink.split:                                      ; preds = %bb.j, %cmp_with_thunk.exit50
  store i32 0, ptr %i.v, align 8, !tbaa !14
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %cmp_with_thunk.exit50, %bb.p, %bb.i
  %i.bd = load i32, ptr %0, align 8, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.e, %bb.t, %bb.d, %bb.b
  %.043 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.bd, %bb.t ], [ 0, %bb.e ]
  ret i32 %.043
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @OPENSSL_sk_delete_ptr(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.j = add nsw i32 %i.b, -1
  %.not.i = icmp eq i32 %i.j, %i.i
  br i1 %.not.i, label %internal_delete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = xor i32 %i.i, -1
  %i.n = add nsw i32 %i.b, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 8 %i.l, i64 %i.p, i1 false)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !13  ; 2 uses
  %.pre15.i = add nsw i32 %.pre.i, -1
  br label %internal_delete.exit

internal_delete.exit:                             ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i32 [ %.pre15.i, %bb.d ], [ %i.i, %bb.c ]
  %i.q = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ]
  store i32 %.pre-phi.i, ptr %0, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !14
  %.not14.i = icmp ne i32 %i.s, 0
  %i.t = icmp slt i32 %i.q, 3
  %narrow.i = select i1 %.not14.i, i1 true, i1 %i.t
  %i.u = zext i1 %narrow.i to i32
  store i32 %i.u, ptr %i.r, align 8, !tbaa !14
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !27

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a, %internal_delete.exit
  %.09 = phi ptr [ null, %bb.a ], [ %i.g, %internal_delete.exit ], [ null, %.preheader ], [ null, %bb.e ]
  ret ptr %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @OPENSSL_sk_delete(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp slt i32 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !13     ; 4 uses
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = add nsw i32 %i.c, -1
  %.not.i = icmp eq i32 %1, %i.i
  br i1 %.not.i, label %internal_delete.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = xor i32 %1, -1
  %i.l = add nsw i32 %i.c, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.j, i64 %i.n, i1 false)
  %.pre.i = load i32, ptr %0, align 8, !tbaa !13  ; 2 uses
  %.pre15.i = add nsw i32 %.pre.i, -1
  br label %internal_delete.exit

internal_delete.exit:                             ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i32 [ %.pre15.i, %bb.d ], [ %1, %bb.c ]
  %i.o = phi i32 [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  store i32 %.pre-phi.i, ptr %0, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !14
  %.not14.i = icmp ne i32 %i.q, 0
  %i.r = icmp slt i32 %i.o, 3
  %narrow.i = select i1 %.not14.i, i1 true, i1 %i.r
  %i.s = zext i1 %narrow.i to i32
  store i32 %i.s, ptr %i.p, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %internal_delete.exit
  %.0 = phi ptr [ %i.h, %internal_delete.exit ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @OPENSSL_sk_find(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i32 @internal_find(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @internal_find(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef range(i32 1, 3) %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !17
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.cont83, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !13     ; 5 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.cont83, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null                     ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.c
  %i.i = icmp sgt i32 %i.c, 0
  br i1 %i.i, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph103, %bb.f
  %indvars.iv112 = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next113, %bb.f ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = trunc nuw nsw i64 %indvars.iv112 to i32  ; 2 uses
  br i1 %i.e, label %.cont83, label %.else85

.else85:                                          ; preds = %bb.e
  store i32 1, ptr %3, align 4, !tbaa !15
  br label %.cont83

bb.f:                                             ; preds = %bb.d
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge104, label %bb.d, !llvm.loop !28

._crit_edge104:                                   ; preds = %bb.f, %.preheader
  br i1 %i.e, label %.cont83, label %.else82

.else82:                                          ; preds = %._crit_edge104
  store i32 0, ptr %3, align 4, !tbaa !15
  br label %.cont83

bb.g:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %1, null
  br i1 %i.p, label %.cont83, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !14
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.preheader91, label %bb.o

.preheader91:                                     ; preds = %bb.h
  %i.s = icmp sgt i32 %i.c, 0
  br i1 %i.s, label %.lr.ph99, label %._crit_edge

.lr.ph99:                                         ; preds = %.preheader91
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.e, label %.lr.ph99.split.us, label %.lr.ph99.split

.lr.ph99.split.us:                                ; preds = %.lr.ph99, %bb.k
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %bb.k ], [ 0, %.lr.ph99 ] ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv109 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph99.split.us
  %i.aa = call i32 %i.x(ptr noundef %i.z, ptr noundef nonnull %i.a, ptr noundef %i.w) #15, !inline_history !0
  br label %cmp_with_thunk.exit.us

bb.j:                                             ; preds = %.lr.ph99.split.us
  %i.ab = call i32 %i.z(ptr noundef nonnull %i.a, ptr noundef %i.w) #15, !inline_history !0
  br label %cmp_with_thunk.exit.us

cmp_with_thunk.exit.us:                           ; preds = %bb.j, %bb.i
  %i.ac = phi i32 [ %i.ab, %bb.j ], [ %i.aa, %bb.i ]
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.cont83.loopexit, label %bb.k

bb.k:                                             ; preds = %cmp_with_thunk.exit.us
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ae = load i32, ptr %0, align 8, !tbaa !13
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next110, %i.af
  br i1 %i.ag, label %.lr.ph99.split.us, label %._crit_edge, !llvm.loop !29

.lr.ph99.split:                                   ; preds = %.lr.ph99, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph99 ] ; 3 uses
  %.05198 = phi i32 [ %.2, %bb.n ], [ -1, %.lr.ph99 ] ; 3 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !23  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !12  ; 2 uses
end_hunk_0
