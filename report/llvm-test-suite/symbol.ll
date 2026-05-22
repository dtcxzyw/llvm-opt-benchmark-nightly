inline.NumInlined: 259
inline.NumDeleted: 45
begin_hunk_0_@symbol_LowerSignature:bb.a
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
  %2 = phi ptr [ null, %._crit_edge ], [ %i.n, %.lr.ph33 ]
  br i1 %.not2028, label %list_Delete.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge.thread, %.critedge
  %.07.i.ph = phi ptr [ %2, %.critedge ], [ %i.a, %._crit_edge.thread ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ad = add i64 %i.ac, %i.ab
  store i64 %i.ad, ptr @memory_FREEDBYTES, align 8
  %i.ae = load ptr, ptr %i.y, align 8
  store ptr %i.ae, ptr %.07.i, align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.af, align 8
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
end_hunk_0
