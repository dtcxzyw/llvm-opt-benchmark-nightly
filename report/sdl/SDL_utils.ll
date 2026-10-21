Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_utils?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@SDL_SetObjectValid:bb.a
  %i.h = tail call zeroext i1 @SDL_InsertIntoHashTable(ptr noundef %i.e, ptr noundef %0, ptr noundef %i.g, i1 noundef zeroext true) #11 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @SDL_RemoveFromHashTable(ptr noundef %i.e, ptr noundef %0) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  ret void
}

declare zeroext i1 @SDL_ShouldInit_REAL(ptr noundef) local_unnamed_addr #5

declare ptr @SDL_CreateHashTable(i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @SDL_HashObject(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @SDL_KeyMatchObject(ptr nofree readnone captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(address) %2) #0 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  ret i1 %i.a
}

declare void @SDL_SetInitialized_REAL(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define internal void @SDL_InvalidParamChecksChanged(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) #6 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %3, align 1
  %i.b = and i8 %i.a, -2
  %switch = icmp ne i8 %i.b, 48
  %spec.select = zext i1 %switch to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i8 [ %spec.select, %bb.b ], [ 1, %bb.a ]
  store i8 %.0, ptr @SDL_object_validation, align 1
  ret void
}

declare zeroext i1 @SDL_InsertIntoHashTable(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare zeroext i1 @SDL_RemoveFromHashTable(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_FindObject(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load ptr, ptr @SDL_objects, align 8
  %i.c = call zeroext i1 @SDL_FindInHashTable(ptr noundef %i.b, ptr noundef %0, ptr noundef nonnull %i.a) #11
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp eq i32 %1, %i.f
  %.0 = select i1 %i.c, i1 %i.g, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i1 %.0
}

declare zeroext i1 @SDL_FindInHashTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_GetObjects(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.GetOneObjectData, align 8   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store i32 %0, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 0, ptr %i.d, align 4
  %i.e = load ptr, ptr @SDL_objects, align 8
  %i.f = call zeroext i1 @SDL_IterateHashTable(ptr noundef %i.e, ptr noundef nonnull @GetOneObject, ptr noundef nonnull %3) #11 ; 0 uses
  %i.g = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %i.g
}

declare zeroext i1 @SDL_IterateHashTable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @GetOneObject(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3) #7 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = load i32, ptr %0, align 8
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  store ptr %2, ptr %i.m, align 8
  %.pre = load i32, ptr %i.e, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre, %bb.c ], [ %i.f, %bb.b ]
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.e, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret i1 true
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_SetObjectsInvalid() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call zeroext i1 @SDL_ShouldQuit_REAL(ptr noundef nonnull @SDL_objects_init) #11
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @SDL_objects, align 8
  %i.c = tail call zeroext i1 @SDL_IterateHashTable(ptr noundef %i.b, ptr noundef nonnull @LogOneLeakedObject, ptr noundef null) #11 ; 0 uses
  %i.d = load ptr, ptr @SDL_objects, align 8
  tail call void @SDL_DestroyHashTable(ptr noundef %i.d) #11
  store ptr null, ptr @SDL_objects, align 8
  tail call void @SDL_SetInitialized_REAL(ptr noundef nonnull @SDL_objects_init, i1 noundef zeroext false) #11
  tail call void @SDL_RemoveHintCallback_REAL(ptr noundef nonnull @.str, ptr noundef nonnull @SDL_InvalidParamChecksChanged, ptr noundef null) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare zeroext i1 @SDL_ShouldQuit_REAL(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @LogOneLeakedObject(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = trunc i64 %i.a to i32
  %switch.tableidx = add i32 %i.b, -1             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 11
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.LogOneLeakedObject, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ @.str.37, %bb.a ], [ %switch.load, %switch.lookup ]
  tail call void (i32, ptr, ...) @SDL_LogDebug_REAL(i32 noundef 3, ptr noundef nonnull @.str.49, ptr noundef nonnull %.0, ptr noundef %2) #11
  ret i1 true
}

declare void @SDL_DestroyHashTable(ptr noundef) local_unnamed_addr #5

declare void @SDL_RemoveHintCallback_REAL(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i32 @SDL_URIToLocal(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [257 x i8], align 16              ; 8 uses
  %i.c = tail call i32 @SDL_memcmp_REAL(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 6) #11
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call ptr @SDL_strstr_REAL(ptr noundef %0, ptr noundef nonnull @.str.2) #11
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %SDL_URIDecode.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.032 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.c ]  ; 5 uses
  %i.g = load i8, ptr %.032, align 1
  %.not39 = icmp eq i8 %i.g, 47
  br i1 %.not39, label %bb.e, label %.thread51

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.032, i64 1 ; 5 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 47
  br i1 %i.j, label %.thread51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %.not40 = icmp eq i8 %i.l, 47
  br i1 %.not40, label %SDL_URIDecode.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @SDL_strchr_REAL(ptr noundef nonnull %i.h, i32 noundef 47) #11 ; 4 uses
  %.not41 = icmp eq ptr %i.m, null
  br i1 %.not41, label %SDL_URIDecode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.q = call i32 @gethostname(ptr noundef nonnull %i.b, i64 noundef 255) #11
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %.thread45

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store i8 0, ptr %i.s, align 16
  %i.t = call i64 @SDL_strlen_REAL(ptr noundef nonnull %i.b) #11
  %i.u = icmp eq i64 %i.t, %i.p
  br i1 %i.u, label %bb.j, label %.thread45

bb.j:                                             ; preds = %bb.i
  %i.v = call i32 @SDL_strncasecmp_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, i64 noundef %i.p) #11
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.thread59, label %.thread45

.thread59:                                        ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.thread51

.thread45:                                        ; preds = %bb.i, %bb.h, %bb.j
  %i.y = call i64 @SDL_strlen_REAL(ptr noundef nonnull @.str.3) #11
  %i.z = icmp eq i64 %i.y, %i.p
  br i1 %i.z, label %bb.k, label %.thread62

.thread62:                                        ; preds = %.thread45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %SDL_URIDecode.exit

bb.k:                                             ; preds = %.thread45
  %i.aa = call i32 @SDL_strncasecmp_REAL(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.3, i64 noundef %i.p) #11
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br i1 %i.ab, label %.thread51, label %SDL_URIDecode.exit

.thread51:                                        ; preds = %bb.d, %bb.e, %.thread59, %bb.k
  %.454 = phi ptr [ %i.x, %.thread59 ], [ %i.ac, %bb.k ], [ %.032, %bb.e ], [ %.032, %bb.d ] ; 3 uses
  %.45471 = ptrtoaddr ptr %.454 to i64
  %i.ad = load i8, ptr %.454, align 1
  %i.ae = icmp eq i8 %i.ad, 47
  %.5.v = select i1 %i.ae, i64 1, i64 -1          ; 2 uses
  %.5 = getelementptr inbounds i8, ptr %.454, i64 %.5.v ; 6 uses
  %i.af = icmp eq ptr %1, null
  br i1 %i.af, label %SDL_URIDecode.exit, label %bb.l

bb.l:                                             ; preds = %.thread51
  %i.ag = call i64 @SDL_strlen_REAL(ptr noundef nonnull %.5) #11 ; 2 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph101.preheader.i, label %._crit_edge.i

.lr.ph101.preheader.i:                            ; preds = %bb.l
  %i.aj = and i64 %i.ag, 2147483647
  %i.ak = add i64 %.5.v, %.45471
  br label %.lr.ph101.i

.lr.ph101.i:                                      ; preds = %.loopexit.i, %.lr.ph101.preheader.i
  %indvars.iv110.i = phi i64 [ 0, %.lr.ph101.preheader.i ], [ %indvars.iv.next111.i, %.loopexit.i ] ; 6 uses
  %.075100.i = phi i8 [ 0, %.lr.ph101.preheader.i ], [ %.2.i, %.loopexit.i ] ; 3 uses
  %.07699.i = phi i32 [ 0, %.lr.ph101.preheader.i ], [ %.3.i, %.loopexit.i ] ; 4 uses
  %.07998.i = phi i32 [ 0, %.lr.ph101.preheader.i ], [ %.4.i, %.loopexit.i ] ; 7 uses
  %i.al = icmp eq i32 %.07699.i, 0
  br i1 %i.al, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph101.i
  %i.am = getelementptr inbounds nuw i8, ptr %.5, i64 %indvars.iv110.i
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = icmp eq i8 %i.an, 37
  br i1 %i.ao, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = sext i32 %.07998.i to i64
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  store i8 %i.an, ptr %i.aq, align 1
  %i.ar = add nsw i32 %.07998.i, 1
  br label %.loopexit.i

bb.o:                                             ; preds = %.lr.ph101.i
  %i.as = icmp eq i32 %.07699.i, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.5, i64 %indvars.iv110.i
  %i.au = load i8, ptr %i.at, align 1
  %.fr103.i = freeze i8 %i.au                     ; 6 uses
  %i.av = add nsw i8 %.fr103.i, -97
  %spec.select.i = icmp ult i8 %i.av, 6
  %i.aw = add nsw i8 %.fr103.i, -65
  %i.ax = icmp ult i8 %i.aw, 6
  %i.ay = add i8 %.fr103.i, -48
  %i.az = icmp ult i8 %i.ay, 10
  br i1 %i.az, label %bb.p, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.o
  switch i8 %.fr103.i, label %iter.check [
    i8 102, label %bb.p
    i8 101, label %bb.p
    i8 100, label %bb.p
    i8 99, label %bb.p
    i8 98, label %bb.p
    i8 97, label %bb.p
    i8 70, label %bb.p
    i8 69, label %bb.p
    i8 68, label %bb.p
    i8 67, label %bb.p
    i8 66, label %bb.p
    i8 65, label %bb.p
  ]

iter.check:                                       ; preds = %switch.early.test.i
  %i.ba = trunc i64 %indvars.iv110.i to i32
  %i.bb = sub i32 %i.ba, %.07699.i
  %i.bc = sext i32 %i.bb to i64                   ; 9 uses
  %i.bd = sext i32 %.07998.i to i64               ; 7 uses
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv110.i, i64 %i.bc)
  %i.be = add nuw i64 %smax, 1
  %i.bf = sub i64 %i.be, %i.bc                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.bf, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bg = add i64 %i.a, %i.bd
  %i.bh = add i64 %i.ak, %i.bc
  %i.bi = sub i64 %i.bh, %i.bg
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check72 = icmp ult i64 %i.bf, 32
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %i.bf, 24
  %n.vec = and i64 %i.bf, -32                     ; 5 uses
  %i.bk = add i64 %n.vec, %i.bd                   ; 2 uses
  %i.bl = add i64 %n.vec, %i.bc
  %invariant.gep = getelementptr i8, ptr %.5, i64 %i.bc
  %invariant.gep84 = getelementptr i8, ptr %1, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1
  %wide.load73 = load <16 x i8>, ptr %i.bm, align 1
  %gep85 = getelementptr i8, ptr %invariant.gep84, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %gep85, i64 16
  store <16 x i8> %wide.load, ptr %gep85, align 1
  store <16 x i8> %wide.load73, ptr %i.bn, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !4

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !10

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %i.bf, -8                    ; 4 uses
  %i.bp = add i64 %n.vec75, %i.bd                 ; 2 uses
  %i.bq = add i64 %n.vec75, %i.bc
  %invariant.gep86 = getelementptr i8, ptr %.5, i64 %i.bc
  %invariant.gep88 = getelementptr i8, ptr %1, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 3 uses
  %gep87 = getelementptr i8, ptr %invariant.gep86, i64 %index76
  %wide.load77 = load <8 x i8>, ptr %gep87, align 1
  %gep89 = getelementptr i8, ptr %invariant.gep88, i64 %index76
  store <8 x i8> %wide.load77, ptr %gep89, align 1
  %index.next78 = add nuw i64 %index76, 8         ; 2 uses
  %i.br = icmp eq i64 %index.next78, %n.vec75
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n79 = icmp eq i64 %i.bf, %n.vec75
  br i1 %cmp.n79, label %.loopexit.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv105.i.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bd, %vector.memcheck ], [ %i.bk, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ %i.bc, %iter.check ], [ %i.bc, %vector.memcheck ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i, %.lr.ph.i ], [ %indvars.iv105.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.5, i64 %indvars.iv.i
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %indvars.iv105.i
  store i8 %i.bt, ptr %i.bu, align 1
  %indvars.iv.next106.i = add nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %.not.not.i = icmp slt i64 %indvars.iv.i, %indvars.iv110.i
  br i1 %.not.not.i, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !6

bb.p:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.o
  %i.bv = icmp samesign ult i8 %.fr103.i, 58
  %spec.select92.i = select i1 %i.ax, i32 201, i32 0
  %.mux.i = select i1 %spec.select.i, i32 169, i32 %spec.select92.i
  %.074.i = select i1 %i.bv, i32 208, i32 %.mux.i
  %i.bw = zext nneg i8 %.fr103.i to i32
  %i.bx = add nuw nsw i32 %.074.i, %i.bw
  %i.by = shl nuw nsw i32 %.07699.i, 2
  %i.bz = sub nuw nsw i32 8, %i.by
  %i.ca = shl nuw nsw i32 %i.bx, %i.bz
  %i.cb = trunc i32 %i.ca to i8
  %i.cc = or i8 %.075100.i, %i.cb                 ; 3 uses
  br i1 %i.as, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.cd = sext i32 %.07998.i to i64
  %i.ce = getelementptr inbounds i8, ptr %1, i64 %i.cd
  store i8 %i.cc, ptr %i.ce, align 1
  %i.cf = add nsw i32 %.07998.i, 1
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next106.i.lcssa = phi i64 [ %i.bp, %vec.epilog.middle.block ], [ %i.bk, %middle.block ], [ %indvars.iv.next106.i, %.lr.ph.i ]
  %i.cg = trunc nsw i64 %indvars.iv.next106.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.q, %bb.p, %bb.n, %bb.m
  %.4.i = phi i32 [ %i.cg, %.loopexit.loopexit.i ], [ %i.ar, %bb.n ], [ %.07998.i, %bb.m ], [ %.07998.i, %bb.p ], [ %i.cf, %bb.q ] ; 3 uses
  %.3.i = phi i32 [ 0, %.loopexit.loopexit.i ], [ 0, %bb.n ], [ 1, %bb.m ], [ 2, %bb.p ], [ 0, %bb.q ]
  %.2.i = phi i8 [ %.075100.i, %.loopexit.loopexit.i ], [ %.075100.i, %bb.n ], [ 0, %bb.m ], [ %i.cc, %bb.p ], [ %i.cc, %bb.q ]
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
end_hunk_0
