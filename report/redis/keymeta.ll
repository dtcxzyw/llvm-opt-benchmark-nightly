inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@keyMetaTransition:bb.a
  br i1 %.not33, label %.loopexit, label %bb.c, !llvm.loop !111

.loopexit:                                        ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 8) i32 @keyMetaClassCreate(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %keyMetaClassEncode.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !112
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #18
  %.not.i = icmp ne i64 %i.c, 4
  %or.cond.i = icmp ugt i32 %2, 31
  %or.cond42.i = or i1 %or.cond.i, %.not.i
  br i1 %or.cond42.i, label %keyMetaClassEncode.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 1                ; 6 uses
  %sext.i = shl i32 %i.d, 24
  %i.e = ashr exact i32 %sext.i, 24
  %memchr.5.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.e, i64 65) ; 2 uses
  %.not41.not.5.i = icmp eq ptr %memchr.5.i, null
  br i1 %.not41.not.5.i, label %keyMetaClassEncode.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = shl i32 %i.d, 16
  %i.g = ashr i32 %i.f, 24
  %memchr.6.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.g, i64 65) ; 2 uses
  %.not41.not.6.i = icmp eq ptr %memchr.6.i, null
  br i1 %.not41.not.6.i, label %keyMetaClassEncode.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = shl i32 %i.d, 8
  %i.i = ashr i32 %i.h, 24
  %memchr.7.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.i, i64 65) ; 2 uses
  %.not41.not.7.i = icmp eq ptr %memchr.7.i, null
  br i1 %.not41.not.7.i, label %keyMetaClassEncode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = ashr i32 %i.d, 24
  %memchr.8.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.15, i32 %i.j, i64 65) ; 2 uses
  %.not41.not.8.i = icmp eq ptr %memchr.8.i, null
  br i1 %.not41.not.8.i, label %keyMetaClassEncode.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = ptrtoint ptr %memchr.5.i to i64
  %i.l = sub i64 %i.k, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = shl i32 %i.m, 12
  %i.o = ptrtoint ptr %memchr.6.i to i64
  %i.p = sub i64 %i.o, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = shl i32 %i.q, 6
  %i.s = or i32 %i.r, %i.n
  %i.t = ptrtoint ptr %memchr.7.i to i64
  %i.u = sub i64 %i.t, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = or i32 %i.s, %i.v
  %i.x = ptrtoint ptr %memchr.8.i to i64
  %i.y = sub i64 %i.x, ptrtoint (ptr @.str.15 to i64) ; 2 uses
  %i.z = shl i64 %i.l, 18
  %i.aa = shl i64 %i.p, 12
  %i.ab = or i64 %i.z, %i.aa
  %i.ac = or i64 %i.ab, 3396598633594880
  %i.ad = shl i64 %i.u, 6
  %i.ae = or i64 %i.ad, %i.ac
  %i.af = or i64 %i.ae, %i.y
  %i.ag = trunc i64 %i.y to i32
  %i.ah = shl i32 %i.w, 14
  %i.ai = shl i32 %i.ag, 8
  %i.aj = or i32 %i.ah, %i.ai
  %i.ak = shl nuw nsw i32 %2, 3
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = trunc i64 %i.b to i32
  %i.an = and i32 %i.am, 7
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = shl i64 %i.af, 10
  %i.aq = zext nneg i32 %2 to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.as = call fastcc i32 @keyMetaClassLookupByName(ptr noundef nonnull %1, ptr noundef %i.a) ; 2 uses
  %i.at = load i32, ptr %i.a, align 4, !tbaa !9
  %.not32 = icmp eq i32 %i.at, 0
  br i1 %.not32, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.au = icmp eq i32 %i.as, -1
  br i1 %i.au, label %.preheader.preheader, label %bb.i, !prof !27

.preheader.preheader:                             ; preds = %bb.h
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 296), align 8, !tbaa !14
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.loopexit, label %.preheader.1

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 752) #16
  tail call void @abort() #17
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 448), align 16, !tbaa !14
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 600), align 8, !tbaa !14
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 752), align 16, !tbaa !14
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.bd = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 904), align 8, !tbaa !14
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1056), align 16, !tbaa !14
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1208), align 8, !tbaa !14
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %bb.g
  %.128 = phi i32 [ %i.as, %bb.g ], [ 1, %.preheader.preheader ], [ 2, %.preheader.1 ], [ 3, %.preheader.2 ], [ 4, %.preheader.3 ], [ 5, %.preheader.4 ], [ 6, %.preheader.5 ], [ 7, %.preheader.6 ] ; 2 uses
  %i.bj = sext i32 %.128 to i64
  %i.bk = getelementptr inbounds [152 x i8], ptr @keyMetaClass, i64 %i.bj ; 10 uses
  store i32 %i.d, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 0, ptr %i.bl, align 4, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bn, ptr noundef nonnull align 1 dereferenceable(5) @.str.16, i64 5, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 21
  store i32 %i.d, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 25
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store i64 %i.ar, ptr %i.bo, align 8, !tbaa !113
  store ptr %0, ptr %i.bm, align 8, !tbaa !114
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  store i32 1, ptr %i.bp, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 148
  store i32 %i.ao, ptr %i.bq, align 4, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.br, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !tbaa.struct !115
  br label %.thread

.thread:                                          ; preds = %.preheader.6, %.loopexit
  %.0 = phi i32 [ %.128, %.loopexit ], [ 0, %.preheader.6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %keyMetaClassEncode.exit.thread

keyMetaClassEncode.exit.thread:                   ; preds = %.thread, %bb.b, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ %.0, %.thread ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @keyMetaClassRelease(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 7
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %.not = icmp eq i32 %i.e, 1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.d, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @keyMetaSetMetadata(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = add i32 %2, -1
  %i.d = icmp ult i32 %i.c, 7
  br i1 %i.d, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 795) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %2 to i64
  %i.f = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %1, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.m = and i32 %i.l, %i.k
  %.not53 = icmp eq i32 %i.m, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %2) #16
  store i64 %3, ptr %i.n, align 8, !tbaa !22
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.o = tail call ptr @kvobjGetKey(ptr noundef nonnull %1) #16 ; 4 uses
  %i.p = tail call i32 @getKeySlot(ptr noundef %i.o) #16 ; 7 uses
  %i.q = load i64, ptr %1, align 8
  %i.r = and i64 %i.q, 15
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !117
  %i.v = tail call i64 @estoreRemove(ptr noundef %i.u, i32 noundef %i.p, ptr noundef nonnull %1) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.051 = phi i64 [ %i.v, %bb.g ], [ 281474976710656, %bb.f ] ; 2 uses
  %i.w = tail call i64 @kvobjGetExpire(ptr noundef nonnull %1) #16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.x = load ptr, ptr %0, align 8, !tbaa !118
  %i.y = tail call ptr @kvstoreDictFindLink(ptr noundef %i.x, i32 noundef %i.p, ptr noundef %i.o, ptr noundef null) #16 ; 2 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !119
  %.not54 = icmp eq ptr %i.y, null
  br i1 %.not54, label %bb.i, label %bb.j, !prof !121

bb.i:                                             ; preds = %bb.h
  tail call void @_serverAssert(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 827) #16
  tail call void @abort() #17
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !119
  %.not55 = icmp eq i64 %i.w, -1
  br i1 %.not55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !122
  %i.ab = tail call ptr @kvstoreDictFindLink(ptr noundef %i.aa, i32 noundef %i.p, ptr noundef %i.o, ptr noundef null) #16 ; 2 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !119
  %.not56 = icmp eq ptr %i.ab, null
  br i1 %.not56, label %bb.l, label %bb.m, !prof !121

bb.l:                                             ; preds = %bb.k
  tail call void @_serverAssert(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 833) #16
  tail call void @abort() #17
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !123
  %.not57 = icmp eq i32 %i.ac, 0
  br i1 %.not57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call i64 @kvobjAllocSize(ptr noundef nonnull %1) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i64 [ %i.ad, %bb.n ], [ 0, %bb.m ]
  %i.ae = load i64, ptr %1, align 8
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 255
  %i.ai = or i32 %i.ah, %i.l
  %i.aj = tail call ptr @kvobjSet(ptr noundef %i.o, ptr noundef nonnull %1, i32 noundef %i.ai) #16 ; 8 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !118
  call void @kvstoreDictSetAtLink(ptr noundef %i.ak, i32 noundef %i.p, ptr noundef %i.aj, ptr noundef nonnull %i.a, i32 noundef 0) #16
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !123
  %.not58 = icmp eq i32 %i.al, 0
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = call i64 @kvobjAllocSize(ptr noundef %i.aj) #16
  call void @updateSlotAllocSize(ptr noundef nonnull %0, i32 noundef %i.p, ptr noundef %i.aj, i64 noundef %.0, i64 noundef %i.am) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = call ptr @kvobjMetaRef(ptr noundef %i.aj, i32 noundef %2) #16
  store i64 %3, ptr %i.an, align 8, !tbaa !22
  %4 = load ptr, ptr %i.b, align 8, !tbaa !119
  %.not59 = icmp eq ptr %4, null
  br i1 %.not59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store i64 %i.w, ptr %i.ao, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !122
  call void @kvstoreDictSetAtLink(ptr noundef %i.aq, i32 noundef %i.p, ptr noundef %i.aj, ptr noundef nonnull %i.b, i32 noundef 0) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not60 = icmp eq i64 %.051, 281474976710656
  br i1 %.not60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !117
  call void @estoreAdd(ptr noundef %i.as, i32 noundef %i.p, ptr noundef %i.aj, i64 noundef %.051) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %bb.u, %bb.e
  %.050 = phi ptr [ %i.aj, %bb.u ], [ %1, %bb.e ], [ null, %bb.c ]
  ret ptr %.050
}

declare ptr @kvobjMetaRef(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @getKeySlot(ptr noundef) local_unnamed_addr #6

declare i64 @estoreRemove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #6

declare ptr @kvstoreDictFindLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #6

declare ptr @kvobjSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @kvstoreDictSetAtLink(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @keyMetaGetMetadata(i32 noundef %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -1
  %i.b = icmp ult i32 %i.a, 7
  br i1 %i.b, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 864) #16
  tail call void @abort() #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %1, align 8
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = shl nuw nsw i32 1, %0
  %i.k = and i32 %i.j, %i.i
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @kvobjMetaRef(ptr noundef nonnull %1, i32 noundef %0) #16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !22
  store i64 %i.m, ptr %2, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @keyMetaResetModuleValues(ptr noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v
  %sum.shift = lshr i64 %i.a, 33
  %i.c = trunc nuw nsw i64 %sum.shift to i32
  %i.d = and i32 %i.c, 127
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 1, %bb.a ] ; 2 uses
  %.1 = phi ptr [ %.2, %bb.d ], [ %spec.select, %bb.a ] ; 3 uses
  %.09 = phi i32 [ %i.j, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.e = and i32 %.09, 1
  %.not12 = icmp eq i32 %i.e, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds i8, ptr %.1, i64 -8
  store i64 %i.h, ptr %.1, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.2 = phi ptr [ %i.i, %bb.c ], [ %.1, %bb.b ]
  %i.j = lshr i32 %.09, 1                         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.e, label %bb.b, !llvm.loop !124

bb.e:                                             ; preds = %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !10, i64 144}
!15 = !{!"KeyMetaClass", !11, i64 0, !16, i64 8, !20, i64 40, !10, i64 144, !10, i64 148}
!16 = !{!"ModuleEntityId", !17, i64 0, !11, i64 8, !19, i64 24}
!17 = !{!"p1 _ZTS11RedisModule", !18, i64 0}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"long", !11, i64 0}
!20 = !{!"KeyMetaClassConf", !19, i64 0, !19, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96}
!21 = !{!20, !19, i64 8}
!22 = !{!19, !19, i64 0}
!23 = !{!24, !25, i64 2}
!24 = !{!"KeyMetaSpec", !25, i64 0, !25, i64 2, !11, i64 8}
!25 = !{!"short", !11, i64 0}
!26 = !{!24, !25, i64 0}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!29, !30, i64 0}
!29 = !{!"RedisModuleKeyOptCtx", !30, i64 0, !30, i64 8, !10, i64 16, !10, i64 20}
!30 = !{!"p1 _ZTS11redisObject", !18, i64 0}
!31 = !{!29, !30, i64 8}
!32 = !{!29, !10, i64 16}
!33 = !{!29, !10, i64 20}
!34 = !{!15, !19, i64 48}
!35 = !{!15, !18, i64 56}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
end_hunk_0
