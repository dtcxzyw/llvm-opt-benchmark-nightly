inline.NumInlined: 259
inline.NumDeleted: 45
begin_hunk_0_@symbol_CreateSkolemPredicate:bb.a

; Function Attrs: nounwind uwtable
define dso_local i32 @symbol_CreateJunctor(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @memory_Malloc(i32 noundef 64) #22 ; 2 uses
  %i.b = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %0) #22 ; 0 uses
  %i.c = tail call fastcc i32 @symbol_SignatureCreate(ptr noundef nonnull %i.a, i32 noundef 3, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @symbol_IsSymbol(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8 = icmp eq i32 %0, 0
  br i1 %.not8, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond = icmp ult i32 %0, 3001
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not7 = icmp sgt i32 %0, -1
  br i1 %.not7, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.b = sub nsw i32 0, %0
  %i.c = lshr i32 %i.b, 3
  %i.d = load i32, ptr @symbol_ACTINDEX, align 4
  %i.e = icmp slt i32 %i.c, %i.d
  %i.f = zext i1 %i.e to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.d, %bb.e, %bb.a
  %i.g = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ %i.f, %bb.e ]
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @symbol_SignatureExists() local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @symbol_Delete(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sub nsw i32 0, %0
  %i.c = lshr i32 %i.b, 3
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr @symbol_FREEDSYMBOLS, align 8
  %i.g = tail call noundef ptr @memory_Malloc(i32 noundef 16) #22 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.e, ptr %i.h, align 8
  store ptr %i.f, ptr %i.g, align 8
  store ptr %i.g, ptr @symbol_FREEDSYMBOLS, align 8
  %i.i = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  store ptr null, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 512), align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = load i64, ptr @memory_FREEDBYTES, align 8
  %i.r = add i64 %i.q, %i.p
  store i64 %i.r, ptr @memory_FREEDBYTES, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %i.s, ptr %i.l, align 8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 512), align 8
  store ptr %i.l, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not6.i.i = icmp eq ptr %i.v, null
  br i1 %.not6.i.i, label %symbol_FreeSignature.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %i.v, %bb.b ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ab = add i64 %i.aa, %i.z
  store i64 %i.ab, ptr @memory_FREEDBYTES, align 8
  %i.ac = load ptr, ptr %i.w, align 8
  store ptr %i.ac, ptr %.07.i.i, align 8
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i, label %symbol_FreeSignature.exit, label %.lr.ph.i.i, !llvm.loop !9

symbol_FreeSignature.exit:                        ; preds = %.lr.ph.i.i, %bb.b
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 320), align 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = sext i32 %i.ag to i64
  %i.ai = load i64, ptr @memory_FREEDBYTES, align 8
  %i.aj = add i64 %i.ai, %i.ah
  store i64 %i.aj, ptr @memory_FREEDBYTES, align 8
  %i.ak = load ptr, ptr %i.ae, align 8
  store ptr %i.ak, ptr %i.k, align 8
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 320), align 8
  store ptr %i.k, ptr %i.al, align 8
  br label %bb.c

bb.c:                                             ; preds = %symbol_FreeSignature.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @symbol_GetAllSymbols() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  %.not = icmp ne i32 %i.a, 0
  %i.b = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %.not, i1 %i.c, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre12 = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.d = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.n, %bb.c ]
  %i.e = phi ptr [ %.pre12, %.lr.ph.preheader ], [ %i.o, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.09 = phi ptr [ null, %.lr.ph.preheader ], [ %.1, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sext i32 %i.i to i64
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call noundef ptr @memory_Malloc(i32 noundef 16) #22 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8
  store ptr %.09, ptr %i.l, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre13 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi i32 [ %.pre13, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.o = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ]
  %.1 = phi ptr [ %i.l, %bb.b ], [ %.09, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = sext i32 %i.n to i64
  %i.q = icmp slt i64 %indvars.iv.next, %i.p
  br i1 %i.q, label %.lr.ph, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.1, %bb.c ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @symbol_GetAllPredicates() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  %.not = icmp ne i32 %i.a, 0
  %i.b = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %.not, i1 %i.c, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre15 = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.d = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.q, %bb.d ] ; 2 uses
  %i.e = phi ptr [ %.pre15, %.lr.ph.preheader ], [ %i.r, %bb.d ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.012 = phi ptr [ null, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %i.j = sub nsw i32 0, %i.i
  %i.k = and i32 %i.j, 3
  %i.l = icmp ne i32 %i.k, 2
  %.not.inv.i = icmp sgt i32 %i.i, -1
  %narrow.i.not = select i1 %.not.inv.i, i1 true, i1 %i.l
  br i1 %narrow.i.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sext i32 %i.i to i64
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call noundef ptr @memory_Malloc(i32 noundef 16) #22 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store ptr %.012, ptr %i.o, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre16 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.b, %bb.c
  %i.q = phi i32 [ %.pre16, %bb.c ], [ %i.d, %bb.b ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.e, %bb.b ], [ %i.e, %.lr.ph ]
  %.1 = phi ptr [ %i.o, %bb.c ], [ %.012, %bb.b ], [ %.012, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %bb.d, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.1, %bb.d ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @symbol_GetAllFunctions() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  %.not = icmp ne i32 %i.a, 0
  %i.b = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %.not, i1 %i.c, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre18 = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %symbol_IsFunction.exit.thread
  %i.d = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.p, %symbol_IsFunction.exit.thread ] ; 3 uses
  %i.e = phi ptr [ %.pre18, %.lr.ph.preheader ], [ %i.q, %symbol_IsFunction.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %symbol_IsFunction.exit.thread ] ; 2 uses
  %.015 = phi ptr [ null, %.lr.ph.preheader ], [ %.1, %symbol_IsFunction.exit.thread ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %symbol_IsFunction.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 3 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %symbol_IsFunction.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sub nsw i32 0, %i.i
  %i.k = and i32 %i.j, 2
  %switch.not.not = icmp eq i32 %i.k, 0
  br i1 %switch.not.not, label %symbol_IsFunction.exit.thread11, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread11:                  ; preds = %bb.c
  %i.l = sext i32 %i.i to i64
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call noundef ptr @memory_Malloc(i32 noundef 16) #22 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8
  store ptr %.015, ptr %i.n, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre19 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread:                    ; preds = %bb.c, %bb.b, %.lr.ph, %symbol_IsFunction.exit.thread11
  %i.p = phi i32 [ %.pre19, %symbol_IsFunction.exit.thread11 ], [ %i.d, %bb.c ], [ %i.d, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %.pre, %symbol_IsFunction.exit.thread11 ], [ %i.e, %bb.c ], [ %i.e, %.lr.ph ], [ %i.e, %bb.b ]
  %.1 = phi ptr [ %i.n, %symbol_IsFunction.exit.thread11 ], [ %.015, %bb.c ], [ %.015, %.lr.ph ], [ %.015, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = sext i32 %i.p to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %symbol_IsFunction.exit.thread, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %.1, %symbol_IsFunction.exit.thread ]
  ret ptr %.2
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @symbol_FreeAllSymbols() local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  %.pre10 = load ptr, ptr @symbol_SIGNATURE, align 8 ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.d = phi ptr [ %.pre10, %.lr.ph.preheader ], [ %i.ah, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %.not5 = icmp eq ptr %i.f, null
  br i1 %.not5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 512), align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = load i64, ptr @memory_FREEDBYTES, align 8
  %i.m = add i64 %i.l, %i.k
  store i64 %i.m, ptr @memory_FREEDBYTES, align 8
  %i.n = load ptr, ptr %i.h, align 8
  store ptr %i.n, ptr %i.g, align 8
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 512), align 8
  store ptr %i.g, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not6.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i, label %symbol_FreeSignature.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.0.val.i.i, %.lr.ph.i.i ], [ %i.q, %bb.b ] ; 3 uses
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8   ; 2 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = load i64, ptr @memory_FREEDBYTES, align 8
  %i.w = add i64 %i.v, %i.u
  store i64 %i.w, ptr @memory_FREEDBYTES, align 8
  %i.x = load ptr, ptr %i.r, align 8
  store ptr %i.x, ptr %.07.i.i, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i.i, ptr %i.y, align 8
  %.not.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i, label %symbol_FreeSignature.exit, label %.lr.ph.i.i, !llvm.loop !9

symbol_FreeSignature.exit:                        ; preds = %.lr.ph.i.i, %bb.b
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 320), align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ae = add i64 %i.ad, %i.ac
  store i64 %i.ae, ptr @memory_FREEDBYTES, align 8
  %i.af = load ptr, ptr %i.z, align 8
  store ptr %i.af, ptr %i.f, align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 320), align 8
  store ptr %i.f, ptr %i.ag, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %symbol_FreeSignature.exit
  %i.ah = phi ptr [ %i.d, %.lr.ph ], [ %.pre, %symbol_FreeSignature.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.ai = phi ptr [ %.pre10, %.preheader ], [ %i.ah, %bb.c ] ; 2 uses
  %i.aj = load i32, ptr @memory_ALIGN, align 4    ; 2 uses
  %i.ak = urem i32 32000, %i.aj                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  %i.al = add i32 %i.aj, 32000
  %i.am = sub i32 %i.al, %i.ak
  %.1.i.i.i = select i1 %.not.i.i.i, i32 32000, i32 %i.am
  %i.an = load i32, ptr @memory_OFFSET, align 4
  %i.ao = zext i32 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ai, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.as, null
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.au, ptr %i.av, align 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge
  store ptr %i.au, ptr @memory_BIGBLOCKS, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not20.i = icmp eq ptr %i.au, null
  br i1 %.not20.i, label %bb.h, label %bb.g
end_hunk_0
begin_hunk_1_@symbol_ReinitGenericNameCounters:bb.a
  %i.c = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %.not, i1 %i.c, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.tail.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.tail.thread ], [ 1, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not34 = icmp eq ptr %i.f, null
  br i1 %.not34, label %.tail.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.f, align 8              ; 13 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #23
  %i.i = icmp ugt i64 %i.h, 3
  br i1 %i.i, label %bb.c, label %.tail.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 3 ; 8 uses
  %i.m = sub nsw i32 0, %i.k
  %i.n = and i32 %i.m, 3
  switch i32 %i.n, label %default.unreachable [
    i32 0, label %sub_0
    i32 1, label %sub_044
    i32 2, label %bb.h
    i32 3, label %.tail.thread
  ]

sub_0:                                            ; preds = %bb.c
  %i.o = load i8, ptr %i.g, align 1
  %.not66 = icmp eq i8 %i.o, 115
  br i1 %.not66, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.q = load i8, ptr %i.p, align 1
  %.not67 = icmp eq i8 %i.q, 107
  br i1 %.not67, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 99
  br i1 %i.t, label %bb.d, label %.tail.thread

bb.d:                                             ; preds = %.tail
  %i.u = tail call i32 @string_StringIsNumber(ptr noundef nonnull %i.l) #22
  %.not41 = icmp eq i32 %i.u, 0
  br i1 %.not41, label %.tail.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.l, ptr noundef null, i32 noundef 10) #22, !inline_history !14
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = load i32, ptr @symbol_ACTSKOLEMCINDEX, align 4
  %.not42 = icmp sgt i32 %i.x, %i.w
  br i1 %.not42, label %.tail.thread, label %.tail.thread.sink.split

sub_044:                                          ; preds = %bb.c
  %i.y = load i8, ptr %i.g, align 1
  %.not64 = icmp eq i8 %i.y, 115
  br i1 %.not64, label %sub_145, label %.tail.thread

sub_145:                                          ; preds = %sub_044
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.aa = load i8, ptr %i.z, align 1
  %.not65 = icmp eq i8 %i.aa, 107
  br i1 %.not65, label %.tail43, label %.tail.thread

.tail43:                                          ; preds = %sub_145
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 102
  br i1 %i.ad, label %bb.f, label %.tail.thread

bb.f:                                             ; preds = %.tail43
  %i.ae = tail call i32 @string_StringIsNumber(ptr noundef nonnull %i.l) #22
  %.not39 = icmp eq i32 %i.ae, 0
  br i1 %.not39, label %.tail.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.l, ptr noundef null, i32 noundef 10) #22, !inline_history !14
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = load i32, ptr @symbol_ACTSKOLEMFINDEX, align 4
  %.not40 = icmp sgt i32 %i.ah, %i.ag
  br i1 %.not40, label %.tail.thread, label %.tail.thread.sink.split

bb.h:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = load i8, ptr %i.g, align 1
  %.not62 = icmp eq i8 %i.al, 83                  ; 2 uses
  br i1 %i.ak, label %sub_049, label %sub_054

sub_049:                                          ; preds = %bb.h
  br i1 %.not62, label %sub_150, label %.tail.thread

sub_150:                                          ; preds = %sub_049
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %.not63 = icmp eq i8 %i.an, 107
  br i1 %.not63, label %.tail48, label %.tail.thread

.tail48:                                          ; preds = %sub_150
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 67
  br i1 %i.aq, label %bb.i, label %.tail.thread

bb.i:                                             ; preds = %.tail48
  %i.ar = tail call i32 @string_StringIsNumber(ptr noundef nonnull %i.l) #22
  %.not37 = icmp eq i32 %i.ar, 0
  br i1 %.not37, label %.tail.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.l, ptr noundef null, i32 noundef 10) #22, !inline_history !14
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = load i32, ptr @symbol_ACTSKOLEMAINDEX, align 4
  %.not38 = icmp sgt i32 %i.au, %i.at
  br i1 %.not38, label %.tail.thread, label %.tail.thread.sink.split

sub_054:                                          ; preds = %bb.h
  br i1 %.not62, label %sub_155, label %.tail.thread

sub_155:                                          ; preds = %sub_054
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.aw = load i8, ptr %i.av, align 1
  %.not61 = icmp eq i8 %i.aw, 107
  br i1 %.not61, label %.tail53, label %.tail.thread

.tail53:                                          ; preds = %sub_155
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 80
  br i1 %i.az, label %bb.k, label %.tail.thread

bb.k:                                             ; preds = %.tail53
  %i.ba = tail call i32 @string_StringIsNumber(ptr noundef nonnull %i.l) #22
  %.not35 = icmp eq i32 %i.ba, 0
  br i1 %.not35, label %.tail.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.l, ptr noundef null, i32 noundef 10) #22, !inline_history !14
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = load i32, ptr @symbol_ACTSKOLEMPINDEX, align 4
  %.not36 = icmp sgt i32 %i.bd, %i.bc
  br i1 %.not36, label %.tail.thread, label %.tail.thread.sink.split

default.unreachable:                              ; preds = %bb.c
  unreachable

.tail.thread.sink.split:                          ; preds = %bb.l, %bb.j, %bb.g, %bb.e
  %.sink73 = phi i32 [ %i.ag, %bb.g ], [ %i.w, %bb.e ], [ %i.at, %bb.j ], [ %i.bc, %bb.l ]
  %symbol_ACTSKOLEMCINDEX.sink = phi ptr [ @symbol_ACTSKOLEMFINDEX, %bb.g ], [ @symbol_ACTSKOLEMCINDEX, %bb.e ], [ @symbol_ACTSKOLEMAINDEX, %bb.j ], [ @symbol_ACTSKOLEMPINDEX, %bb.l ]
  %i.be = add nsw i32 %.sink73, 1
  store i32 %i.be, ptr %symbol_ACTSKOLEMCINDEX.sink, align 4
  br label %.tail.thread

.tail.thread:                                     ; preds = %.tail.thread.sink.split, %sub_155, %sub_054, %sub_150, %sub_049, %sub_145, %sub_044, %sub_1, %sub_0, %bb.c, %.lr.ph, %bb.e, %bb.d, %.tail, %bb.g, %bb.f, %.tail43, %.tail53, %bb.k, %bb.l, %.tail48, %bb.i, %bb.j, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = load i32, ptr @symbol_ACTINDEX, align 4
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %.lr.ph, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.tail.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @string_StringIsNumber(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @symbol_LowerSignature() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre28 = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %symbol_IsFunction.exit.thread
  %i.c = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.aa, %symbol_IsFunction.exit.thread ] ; 3 uses
  %i.d = phi ptr [ %.pre28, %.lr.ph.preheader ], [ %i.ab, %symbol_IsFunction.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %symbol_IsFunction.exit.thread ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %symbol_IsFunction.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = sub nsw i32 0, %i.h
  %i.j = and i32 %i.i, 3                          ; 2 uses
  %i.k = icmp ne i32 %i.j, 2
  %.not.inv.i = icmp sgt i32 %i.h, -1
  %narrow.i.not = select i1 %.not.inv.i, i1 true, i1 %i.k
  br i1 %narrow.i.not, label %bb.c, label %symbol_IsFunction.exit.thread21

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp slt i32 %i.h, 0
  %switch = icmp samesign ult i32 %i.j, 2
  %or.cond25 = select i1 %.not.i, i1 %switch, i1 false
  br i1 %or.cond25, label %symbol_IsFunction.exit.thread21, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread21:                  ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.m = load i8, ptr %i.l, align 1
  %i.n = add i8 %i.m, -65
  %or.cond = icmp ult i8 %i.n, 26
  br i1 %or.cond, label %bb.d, label %symbol_IsFunction.exit.thread

bb.d:                                             ; preds = %symbol_IsFunction.exit.thread21
  %i.o = tail call ptr @memory_Malloc(i32 noundef 64) #22 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) %i.l) #22 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 115, ptr %i.r, align 1
  store i8 115, ptr %i.o, align 1
  store ptr %i.o, ptr %i.f, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 512), align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr @memory_FREEDBYTES, align 8
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr @memory_FREEDBYTES, align 8
  %i.y = load ptr, ptr %i.s, align 8
  store ptr %i.y, ptr %i.l, align 8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 512), align 8
  store ptr %i.l, ptr %i.z, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre29 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread:                    ; preds = %bb.c, %.lr.ph, %symbol_IsFunction.exit.thread21, %bb.d
  %i.aa = phi i32 [ %i.c, %bb.c ], [ %i.c, %.lr.ph ], [ %i.c, %symbol_IsFunction.exit.thread21 ], [ %.pre29, %bb.d ] ; 2 uses
  %i.ab = phi ptr [ %i.d, %bb.c ], [ %i.d, %.lr.ph ], [ %i.d, %symbol_IsFunction.exit.thread21 ], [ %.pre, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = sext i32 %i.aa to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %symbol_IsFunction.exit.thread, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @symbol_Dump(ptr noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stdout, align 8
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.1, i64 5, i64 1, ptr %i.b) ; 0 uses
  %i.d = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %.pre15 = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.f = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.w, %bb.d ]
  %i.g = phi ptr [ %.pre15, %.lr.ph.preheader ], [ %i.x, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %.not12 = icmp eq ptr %i.i, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.u, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, ptr noundef %i.r, i32 noundef %i.t) ; 0 uses
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre16 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.w = phi i32 [ %i.f, %.lr.ph ], [ %.pre16, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %i.g, %.lr.ph ], [ %.pre, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @symbol_SortByPrecedence(ptr noundef returned captures(address_is_null, ret: address, provenance) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #12 {
bb.a:
  %.not29 = icmp eq ptr %0, null
  br i1 %.not29, label %._crit_edge31, label %.preheader

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.030 = phi ptr [ %.0.val21.pre, %._crit_edge ], [ %0, %bb.a ] ; 3 uses
  %.01626 = load ptr, ptr %.030, align 8          ; 2 uses
  %.not2427 = icmp eq ptr %.01626, null
  br i1 %.not2427, label %._crit_edge31, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.a = getelementptr i8, ptr %.030, i64 8       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01628 = phi ptr [ %.01626, %.lr.ph ], [ %.016, %bb.d ] ; 2 uses
  %i.b = getelementptr i8, ptr %.01628, i64 8     ; 2 uses
  %.016.val20 = load ptr, ptr %i.b, align 8       ; 2 uses
  %i.c = ptrtoint ptr %.016.val20 to i64
  %i.d = trunc i64 %i.c to i32
  %.0.val19 = load ptr, ptr %i.a, align 8         ; 2 uses
  %i.e = ptrtoint ptr %.0.val19 to i64
  %i.f = trunc i64 %i.e to i32
  %i.g = sub nsw i32 0, %i.d
  %i.h = ashr i32 %i.g, 3
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sub nsw i32 0, %i.f
  %i.m = ashr i32 %i.l, 3
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %.not25 = icmp slt i32 %i.k, %i.p
  br i1 %.not25, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %.016.val20, ptr %i.a, align 8
  store ptr %.0.val19, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.016 = load ptr, ptr %.01628, align 8          ; 2 uses
  %.not24 = icmp eq ptr %.016, null
  br i1 %.not24, label %._crit_edge, label %bb.b, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.d
  %.0.val21.pre = load ptr, ptr %.030, align 8    ; 2 uses
  %.not = icmp eq ptr %.0.val21.pre, null
  br i1 %.not, label %._crit_edge31, label %.preheader, !llvm.loop !19

._crit_edge31:                                    ; preds = %.preheader, %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local void @symbol_RearrangePrecedence(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not24 = icmp eq ptr %1, null
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  %i.a = tail call ptr @list_PointerSort(ptr noundef null) #22 ; 2 uses
  %.not202837 = icmp eq ptr %i.a, null
  br i1 %.not202837, label %list_Delete.exit, label %.lr.ph.i.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.026 = phi ptr [ %i.l, %.lr.ph ], [ null, %bb.a ]
  %.01825 = phi ptr [ %.018.val23, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.01825, i64 8
  %.018.val = load ptr, ptr %i.b, align 8
  %i.c = ptrtoint ptr %.018.val to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = sub nsw i32 0, %i.d
  %i.f = ashr i32 %i.e, 3
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call noundef ptr @memory_Malloc(i32 noundef 16) #22 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.k, ptr %i.m, align 8
  store ptr %.026, ptr %i.l, align 8
  %.018.val23 = load ptr, ptr %.01825, align 8    ; 2 uses
  %.not = icmp eq ptr %.018.val23, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph
  %i.n = tail call ptr @list_PointerSort(ptr noundef nonnull %i.l) #22 ; 3 uses
  %.not2028 = icmp eq ptr %i.n, null              ; 2 uses
  br i1 %.not2028, label %.critedge, label %.lr.ph33

.lr.ph33:                                         ; preds = %._crit_edge, %.lr.ph33
  %.01731 = phi ptr [ %.017.val21, %.lr.ph33 ], [ %i.n, %._crit_edge ] ; 2 uses
  %.130 = phi ptr [ %.1.val22, %.lr.ph33 ], [ %1, %._crit_edge ] ; 2 uses
  %i.o = getelementptr i8, ptr %.130, i64 8
  %.1.val = load ptr, ptr %i.o, align 8
  %i.p = ptrtoint ptr %.1.val to i64
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr i8, ptr %.01731, i64 8
  %.017.val = load ptr, ptr %i.r, align 8
  %i.s = ptrtoint ptr %.017.val to i64
  %i.t = trunc i64 %i.s to i32
  %i.u = sub nsw i32 0, %i.q
  %i.v = ashr i32 %i.u, 3
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  store i32 %i.t, ptr %i.x, align 4
  %.1.val22 = load ptr, ptr %.130, align 8        ; 2 uses
  %.017.val21 = load ptr, ptr %.01731, align 8    ; 2 uses
  %.not19 = icmp eq ptr %.1.val22, null
  %.not20 = icmp eq ptr %.017.val21, null
  %or.cond = select i1 %.not19, i1 true, i1 %.not20
  br i1 %or.cond, label %.critedge, label %.lr.ph33, !llvm.loop !21

.critedge:                                        ; preds = %.lr.ph33, %._crit_edge
  %i.y = phi ptr [ null, %._crit_edge ], [ %i.n, %.lr.ph33 ]
  br i1 %.not2028, label %list_Delete.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge.thread, %.critedge
  %.07.i.ph = phi ptr [ %i.y, %.critedge ], [ %i.a, %._crit_edge.thread ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ae = add i64 %i.ad, %i.ac
  store i64 %i.ae, ptr @memory_FREEDBYTES, align 8
  %i.af = load ptr, ptr %i.z, align 8
  store ptr %i.af, ptr %.07.i, align 8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.ag, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i, %._crit_edge.thread, %.critedge
  ret void
}

declare ptr @list_PointerSort(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @symbol_PrintPrecedence(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %list_Delete.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph.preheader, label %list_Delete.exit

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre44 = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %symbol_IsFunction.exit.thread
  %i.d = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.q, %symbol_IsFunction.exit.thread ] ; 2 uses
  %i.e = phi ptr [ %.pre44, %.lr.ph.preheader ], [ %i.r, %symbol_IsFunction.exit.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %symbol_IsFunction.exit.thread ] ; 2 uses
  %.01737 = phi ptr [ null, %.lr.ph.preheader ], [ %.1, %symbol_IsFunction.exit.thread ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.g, null
  br i1 %.not21, label %symbol_IsFunction.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 4 uses
  %i.j = sub nsw i32 0, %i.i
  %i.k = and i32 %i.j, 3                          ; 2 uses
  %i.l = icmp ne i32 %i.k, 2
  %.not.inv.i = icmp sgt i32 %i.i, -1
  %narrow.i.not = select i1 %.not.inv.i, i1 true, i1 %i.l
  br i1 %narrow.i.not, label %bb.c, label %symbol_IsFunction.exit.thread31

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp slt i32 %i.i, 0
  %switch = icmp samesign ult i32 %i.k, 2
  %or.cond = select i1 %.not.i, i1 %switch, i1 false
  br i1 %or.cond, label %symbol_IsFunction.exit.thread31, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread31:                  ; preds = %bb.c, %bb.b
  %i.m = sext i32 %i.i to i64
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call noundef ptr @memory_Malloc(i32 noundef 16) #22 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store ptr %.01737, ptr %i.o, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre45 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread:                    ; preds = %bb.c, %.lr.ph, %symbol_IsFunction.exit.thread31
  %i.q = phi i32 [ %.pre45, %symbol_IsFunction.exit.thread31 ], [ %i.d, %bb.c ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.r = phi ptr [ %.pre, %symbol_IsFunction.exit.thread31 ], [ %i.e, %bb.c ], [ %i.e, %.lr.ph ]
  %.1 = phi ptr [ %i.o, %symbol_IsFunction.exit.thread31 ], [ %.01737, %bb.c ], [ %.01737, %.lr.ph ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %symbol_IsFunction.exit.thread
  %.not29.i = icmp eq ptr %.1, null
  br i1 %.not29.i, label %list_Delete.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge, %._crit_edge.i
  %.030.i = phi ptr [ %.0.val21.pre.i, %._crit_edge.i ], [ %.1, %._crit_edge ] ; 3 uses
  %.01626.i = load ptr, ptr %.030.i, align 8      ; 2 uses
  %.not2427.i = icmp eq ptr %.01626.i, null
  br i1 %.not2427.i, label %.lr.ph41.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = getelementptr i8, ptr %.030.i, i64 8     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.01628.i = phi ptr [ %.01626.i, %.lr.ph.i ], [ %.016.i, %bb.f ] ; 2 uses
  %i.v = getelementptr i8, ptr %.01628.i, i64 8   ; 2 uses
  %.016.val20.i = load ptr, ptr %i.v, align 8     ; 2 uses
  %i.w = ptrtoint ptr %.016.val20.i to i64
  %i.x = trunc i64 %i.w to i32
  %.0.val19.i = load ptr, ptr %i.u, align 8       ; 2 uses
  %i.y = ptrtoint ptr %.0.val19.i to i64
  %i.z = trunc i64 %i.y to i32
  %i.aa = sub nsw i32 0, %i.x
  %i.ab = ashr i32 %i.aa, 3
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub nsw i32 0, %i.z
  %i.ag = ashr i32 %i.af, 3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %.not25.i = icmp slt i32 %i.ae, %i.aj
  br i1 %.not25.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %.016.val20.i, ptr %i.u, align 8
  store ptr %.0.val19.i, ptr %i.v, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016.i = load ptr, ptr %.01628.i, align 8      ; 2 uses
  %.not24.i = icmp eq ptr %.016.i, null
  br i1 %.not24.i, label %._crit_edge.i, label %bb.d, !llvm.loop !18

._crit_edge.i:                                    ; preds = %bb.f
  %.0.val21.pre.i = load ptr, ptr %.030.i, align 8 ; 2 uses
  %.not.i26 = icmp eq ptr %.0.val21.pre.i, null
  br i1 %.not.i26, label %.lr.ph41.preheader, label %.preheader.i, !llvm.loop !19

.lr.ph41.preheader:                               ; preds = %.preheader.i, %._crit_edge.i
  br label %.lr.ph41

.lr.ph41:                                         ; preds = %.lr.ph41.preheader, %bb.g
  %.01640 = phi ptr [ %.016.val24.pre, %bb.g ], [ %.1, %.lr.ph41.preheader ] ; 3 uses
  %i.ak = getelementptr i8, ptr %.01640, i64 8
  %.016.val = load ptr, ptr %i.ak, align 8
  %i.al = ptrtoint ptr %.016.val to i64
  %i.am = trunc i64 %i.al to i32
  %i.an = sub nsw i32 0, %i.am
  %i.ao = ashr i32 %i.an, 3
  %i.ap = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr @stdout, align 8
  %i.av = tail call i32 @fputs(ptr noundef %i.at, ptr noundef %i.au) ; 0 uses
  %.016.val25 = load ptr, ptr %.01640, align 8
  %.not34 = icmp eq ptr %.016.val25, null
  br i1 %.not34, label %.lr.ph.i27.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph41
  %i.aw = load ptr, ptr @stdout, align 8
  %i.ax = tail call i64 @fwrite(ptr nonnull @.str.3, i64 3, i64 1, ptr %i.aw) ; 0 uses
  %.016.val24.pre = load ptr, ptr %.01640, align 8 ; 2 uses
  %.not33 = icmp eq ptr %.016.val24.pre, null
  br i1 %.not33, label %.lr.ph.i27.preheader, label %.lr.ph41, !llvm.loop !23

.lr.ph.i27.preheader:                             ; preds = %bb.g, %.lr.ph41
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i27 ], [ %.1, %.lr.ph.i27.preheader ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bd = add i64 %i.bc, %i.bb
  store i64 %i.bd, ptr @memory_FREEDBYTES, align 8
  %i.be = load ptr, ptr %i.ay, align 8
  store ptr %i.be, ptr %.07.i, align 8
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.bf, align 8
  %.not.i28 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i28, label %list_Delete.exit, label %.lr.ph.i27, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i27, %.preheader, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @symbol_FPrintPrecedence(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @symbol_HASSIGNATURE, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %list_Delete.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @symbol_ACTINDEX, align 4  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph.preheader, label %symbol_SortByPrecedence.exit.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre53 = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %symbol_IsFunction.exit.thread
  %i.d = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.q, %symbol_IsFunction.exit.thread ] ; 2 uses
  %i.e = phi ptr [ %.pre53, %.lr.ph.preheader ], [ %i.r, %symbol_IsFunction.exit.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %symbol_IsFunction.exit.thread ] ; 2 uses
  %.02445 = phi ptr [ null, %.lr.ph.preheader ], [ %.125, %symbol_IsFunction.exit.thread ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.g, null
  br i1 %.not29, label %symbol_IsFunction.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8              ; 4 uses
  %i.j = sub nsw i32 0, %i.i
  %i.k = and i32 %i.j, 3                          ; 2 uses
  %i.l = icmp ne i32 %i.k, 2
  %.not.inv.i = icmp sgt i32 %i.i, -1
  %narrow.i.not = select i1 %.not.inv.i, i1 true, i1 %i.l
  br i1 %narrow.i.not, label %bb.c, label %symbol_IsFunction.exit.thread39

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp slt i32 %i.i, 0
  %switch = icmp samesign ult i32 %i.k, 2
  %or.cond = select i1 %.not.i, i1 %switch, i1 false
  br i1 %or.cond, label %symbol_IsFunction.exit.thread39, label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread39:                  ; preds = %bb.c, %bb.b
  %i.m = sext i32 %i.i to i64
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call noundef ptr @memory_Malloc(i32 noundef 16) #22 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store ptr %.02445, ptr %i.o, align 8
  %.pre = load ptr, ptr @symbol_SIGNATURE, align 8
  %.pre54 = load i32, ptr @symbol_ACTINDEX, align 4
  br label %symbol_IsFunction.exit.thread

symbol_IsFunction.exit.thread:                    ; preds = %bb.c, %.lr.ph, %symbol_IsFunction.exit.thread39
  %i.q = phi i32 [ %.pre54, %symbol_IsFunction.exit.thread39 ], [ %i.d, %bb.c ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.r = phi ptr [ %.pre, %symbol_IsFunction.exit.thread39 ], [ %i.e, %bb.c ], [ %i.e, %.lr.ph ]
  %.125 = phi ptr [ %i.o, %symbol_IsFunction.exit.thread39 ], [ %.02445, %bb.c ], [ %.02445, %.lr.ph ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = sext i32 %i.q to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %symbol_IsFunction.exit.thread
  %.not29.i = icmp eq ptr %.125, null
  br i1 %.not29.i, label %symbol_SortByPrecedence.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge, %._crit_edge.i
  %.030.i = phi ptr [ %.0.val21.pre.i, %._crit_edge.i ], [ %.125, %._crit_edge ] ; 3 uses
  %.01626.i = load ptr, ptr %.030.i, align 8      ; 2 uses
  %.not2427.i = icmp eq ptr %.01626.i, null
  br i1 %.not2427.i, label %symbol_SortByPrecedence.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.u = getelementptr i8, ptr %.030.i, i64 8     ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i
  %.01628.i = phi ptr [ %.01626.i, %.lr.ph.i ], [ %.016.i, %bb.f ] ; 2 uses
  %i.v = getelementptr i8, ptr %.01628.i, i64 8   ; 2 uses
  %.016.val20.i = load ptr, ptr %i.v, align 8     ; 2 uses
  %i.w = ptrtoint ptr %.016.val20.i to i64
  %i.x = trunc i64 %i.w to i32
  %.0.val19.i = load ptr, ptr %i.u, align 8       ; 2 uses
  %i.y = ptrtoint ptr %.0.val19.i to i64
  %i.z = trunc i64 %i.y to i32
  %i.aa = sub nsw i32 0, %i.x
  %i.ab = ashr i32 %i.aa, 3
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sub nsw i32 0, %i.z
  %i.ag = ashr i32 %i.af, 3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %.not25.i = icmp slt i32 %i.ae, %i.aj
  br i1 %.not25.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %.016.val20.i, ptr %i.u, align 8
  store ptr %.0.val19.i, ptr %i.v, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016.i = load ptr, ptr %.01628.i, align 8      ; 2 uses
  %.not24.i = icmp eq ptr %.016.i, null
  br i1 %.not24.i, label %._crit_edge.i, label %bb.d, !llvm.loop !18

._crit_edge.i:                                    ; preds = %bb.f
  %.0.val21.pre.i = load ptr, ptr %.030.i, align 8 ; 2 uses
  %.not.i34 = icmp eq ptr %.0.val21.pre.i, null
  br i1 %.not.i34, label %symbol_SortByPrecedence.exit, label %.preheader.i, !llvm.loop !19

symbol_SortByPrecedence.exit.thread:              ; preds = %._crit_edge, %.preheader
  %i.ak = tail call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %0) ; 0 uses
  %i.al = tail call i64 @fwrite(ptr nonnull @.str.6, i64 2, i64 1, ptr %0) ; 0 uses
  br label %list_Delete.exit

symbol_SortByPrecedence.exit:                     ; preds = %.preheader.i, %._crit_edge.i
  %i.am = tail call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %symbol_SortByPrecedence.exit, %bb.k
  %.149 = phi i32 [ %.2, %bb.k ], [ 0, %symbol_SortByPrecedence.exit ] ; 2 uses
  %.02348 = phi ptr [ %.023.val32, %bb.k ], [ %.125, %symbol_SortByPrecedence.exit ] ; 3 uses
  %i.an = getelementptr i8, ptr %.02348, i64 8
  %.023.val = load ptr, ptr %i.an, align 8
  %i.ao = ptrtoint ptr %.023.val to i64
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = sub nsw i32 0, %i.ap
  %i.ar = ashr i32 %i.aq, 3
  %i.as = load ptr, ptr @symbol_SIGNATURE, align 8
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i32 @fputs(ptr noundef %i.aw, ptr noundef %0) ; 0 uses
  %.023.val33 = load ptr, ptr %.02348, align 8
  %.not42 = icmp eq ptr %.023.val33, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph50
  %i.ay = tail call i32 @putc(i32 noundef 44, ptr noundef %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph50
  %i.az = icmp sgt i32 %.149, 15
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call i64 @fwrite(ptr nonnull @.str.5, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bb = add nsw i32 %.149, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.2 = phi i32 [ 0, %bb.i ], [ %i.bb, %bb.j ]
  %.023.val32 = load ptr, ptr %.02348, align 8    ; 2 uses
  %.not41 = icmp eq ptr %.023.val32, null
  br i1 %.not41, label %._crit_edge51, label %.lr.ph50, !llvm.loop !25

._crit_edge51:                                    ; preds = %bb.k
  %i.bc = tail call i64 @fwrite(ptr nonnull @.str.6, i64 2, i64 1, ptr %0) ; 0 uses
  br label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %._crit_edge51, %.lr.ph.i35
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i35 ], [ %.125, %._crit_edge51 ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bi = add i64 %i.bh, %i.bg
  store i64 %i.bi, ptr @memory_FREEDBYTES, align 8
  %i.bj = load ptr, ptr %i.bd, align 8
  store ptr %i.bj, ptr %.07.i, align 8
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.bk, align 8
  %.not.i36 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i36, label %list_Delete.exit, label %.lr.ph.i35, !llvm.loop !9

list_Delete.exit:                                 ; preds = %.lr.ph.i35, %symbol_SortByPrecedence.exit.thread, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @symbol_SetCount(i32 noundef %0, i64 noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = sub nsw i32 0, %0
  %i.b = ashr i32 %i.a, 3
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @symbol_COUNT, i64 %i.c
  store i64 %1, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @symbol_GetCount(i32 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = sub nsw i32 0, %0
  %i.b = ashr i32 %i.a, 3
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr @symbol_COUNT, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8
  ret i64 %i.e
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @symbol_Print(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8
  tail call void @symbol_FPrint(ptr noundef %i.a, i32 noundef %0)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @symbol_FPrint(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.7, i64 4, i64 1, ptr %0) ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i32 %1, -2000
  %i.d = icmp samesign ugt i32 %1, 2000
  br i1 %i.d, label %bb.h, label %bb.e

end_hunk_1
