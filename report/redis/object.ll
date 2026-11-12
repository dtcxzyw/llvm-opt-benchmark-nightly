Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/object?download=true
inline.NumInlined: 99
inline.NumDeleted: 11
begin_hunk_0_@kvobjMetaRef:bb.a
bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 34) #13
  tail call void @abort() #14
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add i32 %i.f, -1
  %i.i = and i32 %i.d, %i.h
  %i.j = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.i)
  %i.k = zext nneg i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.pn = phi ptr [ %i.m, %bb.d ], [ %0, %bb.a ]
  %.0 = getelementptr inbounds i8, ptr %.pn, i64 -8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kvobjCreate(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !271 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !143

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 64) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !144 ; 2 uses
  %i.b = and i8 %.val.i, 7
  switch i8 %i.b, label %sdslen.exit.thread [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = lshr i8 %.val.i, 3
  %i.d = zext nneg i8 %i.c to i64
  br label %sdslen.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds i8, ptr %1, i64 -3
  %i.f = load i8, ptr %i.e, align 1, !tbaa !144
  %i.g = zext i8 %i.f to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %1, i64 -5
  %i.i = load i16, ptr %i.h, align 1, !tbaa !146
  %i.j = zext i16 %i.i to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds i8, ptr %1, i64 -9
  %i.l = load i32, ptr %i.k, align 1, !tbaa !12
  %i.m = zext i32 %i.l to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %1, i64 -17
  %i.o = load i64, ptr %i.n, align 1, !tbaa !148
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.o, %bb.h ], [ %i.m, %bb.g ], [ %i.g, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %i.p = icmp ugt i64 %.0.i, 127
  %i.q = zext i1 %i.p to i32
  %spec.select = or i32 %3, %i.q
  br label %sdslen.exit.thread

sdslen.exit.thread:                               ; preds = %sdslen.exit, %bb.c, %bb.d
  %.0.i37 = phi i64 [ %i.d, %bb.d ], [ %.0.i, %sdslen.exit ], [ 0, %bb.c ] ; 3 uses
  %i.r = phi i32 [ %3, %bb.d ], [ %spec.select, %sdslen.exit ], [ %3, %bb.c ] ; 2 uses
  %i.s = trunc i32 %i.r to i16
  %i.t = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.s)
  %i.u = shl nuw nsw i16 %i.t, 3
  %i.v = tail call signext i8 @sdsReqType(i64 noundef %.0.i37) #13 ; 2 uses
  %i.w = and i8 %i.v, 7                           ; 3 uses
  %i.x = icmp samesign ult i8 %i.w, 5
  br i1 %i.x, label %switch.lookup, label %sdsReqSize.exit

switch.lookup:                                    ; preds = %sdslen.exit.thread
  %i.y = zext nneg i8 %i.w to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.kvobjSet, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %sdsReqSize.exit

sdsReqSize.exit:                                  ; preds = %sdslen.exit.thread, %switch.lookup
  %.0.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %sdslen.exit.thread ]
  %i.z = add i64 %.0.i37, 1
  %i.aa = add i64 %i.z, %.0.i.i                   ; 2 uses
  %i.ab = zext nneg i16 %i.u to i64               ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 17
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = tail call noalias ptr @zmalloc(i64 noundef %i.ad) #15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 9 uses
  %i.ag = and i32 %0, 15
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %2, ptr %i.ai, align 8, !tbaa !151
  %i.aj = and i32 %i.r, 255
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 32
  %i.am = or disjoint i64 %i.al, %i.ah
  %i.an = or disjoint i64 %i.am, 2147483904
  store i64 %i.an, ptr %i.af, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ap = shl nuw nsw i8 %i.w, 3
  %switch.shiftamt = zext nneg i8 %i.ap to i64
  %switch.downshift = lshr i64 73165767425, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  store i8 %switch.masked, ptr %i.ao, align 8, !tbaa !144
  %i.ar = tail call ptr @sdsnewplacement(ptr noundef nonnull %i.aq, i64 noundef %i.aa, i8 noundef signext %i.v, ptr noundef nonnull %1, i64 noundef %.0.i37) #13 ; 0 uses
  %i.as = load i64, ptr %i.af, align 8            ; 2 uses
  %i.at = and i64 %i.as, 1090921693184
  %.not.i = icmp eq i64 %i.at, 0
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !142

bb.i:                                             ; preds = %sdsReqSize.exit
  tail call void @keyMetaResetModuleValues(ptr noundef nonnull %i.af) #13
  %.pre.i = load i64, ptr %i.af, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %sdsReqSize.exit
  %i.au = phi i64 [ %.pre.i, %bb.i ], [ %i.as, %sdsReqSize.exit ]
  %i.av = and i64 %i.au, 4294967296
  %.not4.i = icmp eq i64 %i.av, 0
  br i1 %.not4.i, label %keyMetaResetValues.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds i8, ptr %i.af, i64 -8
  store i64 -1, ptr %i.aw, align 8, !tbaa !148
  br label %keyMetaResetValues.exit

keyMetaResetValues.exit:                          ; preds = %bb.j, %bb.k
  ret ptr %i.af
}

declare signext i8 @sdsReqType(i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

declare ptr @sdsnewplacement(ptr noundef, i64 noundef, i8 noundef signext, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createObject(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !guid !272 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.b = and i32 %0, 15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !151
  %i.d = or disjoint i32 %i.b, 256
  %i.e = zext nneg i32 %i.d to i64
  store i64 %i.e, ptr %i.a, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @initObjectLRUOrLFU(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 !guid !273 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 2147483392
  %i.c = icmp eq i64 %i.b, 2147483392
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !183
  %i.e = and i32 %i.d, 2
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @LFUGetTimeInMinutes() #13
  %i.g = shl i64 %i.f, 48
  %i.h = load i64, ptr %0, align 8
  %1 = and i64 %i.h, 1099511627775
  %2 = or disjoint i64 %1, %i.g
  %i.i = or disjoint i64 %2, 5497558138880
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = tail call i32 @LRU_CLOCK() #13
  %i.k = load i64, ptr %0, align 8
  %i.l = and i32 %i.j, 16777215
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 %i.m, 40
  %i.o = and i64 %i.k, 1099511627775
  %i.p = or disjoint i64 %i.n, %i.o
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ %i.i, %bb.c ], [ %i.p, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

declare i64 @LFUGetTimeInMinutes() local_unnamed_addr #2

declare i32 @LRU_CLOCK() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @makeObjectShared(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #0 !guid !274 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 2147483392
  %i.c = icmp eq i64 %i.b, 256
  br i1 %i.c, label %bb.c, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 144) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = or i64 %i.a, 2147483392
  store i64 %i.d, ptr %0, align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createRawStringObject(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !275 {
bb.a:
  %i.a = tail call ptr @sdsnewlen(ptr noundef %0, i64 noundef %1) #13
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !151
  store i64 256, ptr %i.b, align 8
  ret ptr %i.b
}

declare ptr @sdsnewlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @createEmbeddedStringObject(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !276 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !148
  %i.b = add i64 %1, 20
  %i.c = call ptr @zmalloc_usable(i64 noundef %i.b, ptr noundef nonnull %i.a) #13 ; 4 uses
  store i64 384, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.a, align 8, !tbaa !148
  %i.f = add i64 %i.e, -16
  %i.g = call ptr @sdsnewplacement(ptr noundef nonnull %i.d, i64 noundef %i.f, i8 noundef signext 1, ptr noundef %0, i64 noundef %1) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.c
}

declare ptr @zmalloc_usable(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local nonnull ptr @kvobjGetKey(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #6 !guid !277 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !144
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @kvobjGetExpire(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 !guid !278 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.i = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load i64, ptr %.0.i, align 8, !tbaa !148
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kvobjSetExpire(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !guid !279 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, -1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !144
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = lshr i64 %i.a, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = and i32 %i.j, 254
  %i.l = or disjoint i32 %i.k, 1
  %i.m = tail call ptr @kvobjSet(ptr noundef nonnull %i.h, ptr noundef nonnull %0, i32 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.09 = phi ptr [ %0, %bb.a ], [ %i.m, %bb.c ]   ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %.09, i64 -8
  store i64 %1, ptr %.0.i, align 8, !tbaa !148
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi ptr [ %.09, %bb.d ], [ %0, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @kvobjSet(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !280 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i64, ptr %1, align 8                ; 5 uses
  %i.c = and i64 %i.b, 255
  %or.cond = icmp eq i64 %i.c, 128
  br i1 %or.cond, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 7 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !144 ; 2 uses
  %i.g = and i8 %.val.i, 7
  switch i8 %i.g, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i8 %.val.i, 3
  %i.i = zext nneg i8 %i.h to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !144
  %i.l = zext i8 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 -5
  %i.n = load i16, ptr %i.m, align 1, !tbaa !146
  %i.o = zext i16 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 -9
  %i.q = load i32, ptr %i.p, align 1, !tbaa !12
  %i.r = zext i32 %i.q to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.e, i64 -17
  %i.t = load i64, ptr %i.s, align 1, !tbaa !148
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.t, %bb.g ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ 0, %bb.b ] ; 4 uses
  %i.u = getelementptr i8, ptr %0, i64 -1
  %.val.i45 = load i8, ptr %i.u, align 1, !tbaa !144 ; 3 uses
  %i.v = and i8 %.val.i45, 7                      ; 2 uses
  switch i8 %i.v, label %sdslen.exit47 [
end_hunk_0
