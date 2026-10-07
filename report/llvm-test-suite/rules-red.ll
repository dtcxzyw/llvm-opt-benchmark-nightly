Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rules-red?download=true
inline.NumInlined: 1556
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@red_ClauseDeletion:bb.a
bb.au:                                            ; preds = %bb.as, %bb.at, %bb.aq, %bb.ar
  call void @clause_DeleteClauseListFlatFromIndex(ptr noundef %.2131, ptr noundef %i.i) #14
  call void @clause_DeleteClauseListFlatFromIndex(ptr noundef %.2127, ptr noundef %i.i) #14
  call void @st_IndexDelete(ptr noundef %i.i) #14
  store i32 %i.j, ptr @clause_CLAUSECOUNTER, align 4
  %i.fo = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not155 = icmp eq ptr %i.fo, null
  br i1 %.not155, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @clause_DeleteClauseList(ptr noundef nonnull %i.fo) #14
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.b, %bb.c, %bb.av
  %.069 = phi i32 [ 0, %bb.av ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.ax

bb.ax:                                            ; preds = %bb.a, %bb.aw
  %.170 = phi i32 [ %.069, %bb.aw ], [ 0, %bb.a ]
  ret i32 %.170
}

declare ptr @st_IndexCreate() local_unnamed_addr #1

declare ptr @term_Copy(ptr noundef) local_unnamed_addr #1

declare ptr @list_NReverse(ptr noundef) local_unnamed_addr #1

declare ptr @clause_Create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @clause_InsertFlatIntoIndex(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

declare void @clause_ListPrint(ptr noundef) local_unnamed_addr #1

declare ptr @list_PointerDeleteOneElement(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @clause_DeleteClauseList(ptr noundef) local_unnamed_addr #1

declare void @clause_DeleteClauseListFlatFromIndex(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @st_IndexDelete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @red_SatUnit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %.val45 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 220
  %i.e = load i32, ptr %i.d, align 4
  store ptr null, ptr %i.a, align 8
  %i.f = tail call ptr @clause_ListSortWeighed(ptr noundef %1) #14 ; 2 uses
  %.not84 = icmp eq ptr %i.f, null
  br i1 %.not84, label %list_Delete.exit, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 48
  br label %bb.b

.critedge.preheader:                              ; preds = %list_Nconc.exit57
  %.not8193 = icmp eq ptr %.165, null
  br i1 %.not8193, label %.critedge._crit_edge, label %.critedge

bb.b:                                             ; preds = %.lr.ph91, %list_Nconc.exit57
  %.089 = phi i32 [ %i.e, %.lr.ph91 ], [ %.2, %list_Nconc.exit57 ] ; 4 uses
  %.06488 = phi ptr [ %i.f, %.lr.ph91 ], [ %.165, %list_Nconc.exit57 ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06488, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %.06488, align 8           ; 7 uses
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = sext i32 %i.m to i64
  %i.o = load i64, ptr @memory_FREEDBYTES, align 8
  %i.p = add i64 %i.o, %i.n
  store i64 %i.p, ptr @memory_FREEDBYTES, align 8
  %i.q = load ptr, ptr %i.k, align 8
  store ptr %i.q, ptr %.06488, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.06488, ptr %i.r, align 8
  %i.s = call ptr @red_ReductionOnDerivedClause(ptr noundef %0, ptr noundef %i.i, i32 noundef 1) ; 8 uses
  %.not40 = icmp eq ptr %i.s, null
  br i1 %.not40, label %list_Nconc.exit57, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.s, i64 68
  %.val.i = load i32, ptr %i.t, align 4
  %.not8.i = icmp eq i32 %.val.i, 0
  br i1 %.not8.i, label %bb.d, label %clause_IsEmptyClause.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.s, i64 72
  %.val6.i = load i32, ptr %i.u, align 8
  %.not9.i = icmp eq i32 %.val6.i, 0
  br i1 %.not9.i, label %clause_IsEmptyClause.exit, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit:                        ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.s, i64 64
  %.val7.i = load i32, ptr %i.v, align 8
  %.not79 = icmp eq i32 %.val7.i, 0
  br i1 %.not79, label %bb.e, label %clause_IsEmptyClause.exit.thread

bb.e:                                             ; preds = %clause_IsEmptyClause.exit
  %i.w = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.s, ptr %i.x, align 8
  store ptr null, ptr %i.w, align 8
  store ptr %i.w, ptr %i.a, align 8
  br label %list_Nconc.exit57

clause_IsEmptyClause.exit.thread:                 ; preds = %bb.c, %bb.d, %clause_IsEmptyClause.exit
  %i.y = call ptr @red_BackReduction(ptr noundef %0, ptr noundef nonnull %i.s, i32 noundef 1) ; 5 uses
  %.not42 = icmp eq i32 %.089, 0
  br i1 %.not42, label %list_Nconc.exit, label %bb.f

bb.f:                                             ; preds = %clause_IsEmptyClause.exit.thread
  %.val46 = load ptr, ptr %i.g, align 8
  %i.z = call ptr @inf_BoundedDepthUnitResolution(ptr noundef nonnull %i.s, ptr noundef %.val46, i32 noundef 0, ptr noundef %.val, ptr noundef %.val45) #14 ; 4 uses
  %i.aa = call i32 @list_Length(ptr noundef %i.z) #14
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.089, i32 %i.aa) ; 3 uses
  %.not.i49 = icmp eq ptr %i.y, null
  br i1 %.not.i49, label %list_Nconc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not16.i = icmp eq ptr %i.z, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %i.y, %bb.g ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.h, label %.preheader.i, !llvm.loop !2

bb.h:                                             ; preds = %.preheader.i
  store ptr %i.z, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %clause_IsEmptyClause.exit.thread, %bb.f, %bb.g, %bb.h
  %.172 = phi i32 [ %spec.select, %bb.h ], [ %spec.select, %bb.f ], [ %spec.select, %bb.g ], [ 0, %clause_IsEmptyClause.exit.thread ] ; 3 uses
  %.0.i = phi ptr [ %i.y, %bb.h ], [ %i.z, %bb.f ], [ %i.y, %bb.g ], [ %i.y, %clause_IsEmptyClause.exit.thread ]
  %i.ab = call ptr @split_ExtractEmptyClauses(ptr noundef %.0.i, ptr noundef nonnull %i.a) #14 ; 5 uses
  call void @prfs_InsertUsableClause(ptr noundef %0, ptr noundef nonnull %i.s) #14
  %.not8082 = icmp eq ptr %i.ab, null
  br i1 %.not8082, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %list_Nconc.exit, %.lr.ph
  %.03583 = phi ptr [ %.035.val48, %.lr.ph ], [ %i.ab, %list_Nconc.exit ] ; 2 uses
  %i.ac = getelementptr i8, ptr %.03583, i64 8
  %.035.val = load ptr, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.035.val, i64 8
  store i32 0, ptr %i.ad, align 8
  %.035.val48 = load ptr, ptr %.03583, align 8    ; 2 uses
  %.not80 = icmp eq ptr %.035.val48, null
  br i1 %.not80, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !50

._crit_edge:                                      ; preds = %list_Nconc.exit
  %.not.i50 = icmp eq ptr %i.j, null
  %spec.select111 = select i1 %.not.i50, ptr %i.ab, ptr %i.j
  br label %list_Nconc.exit57

._crit_edge.thread:                               ; preds = %.lr.ph
  %.not.i50108 = icmp eq ptr %i.j, null
  br i1 %.not.i50108, label %list_Nconc.exit57, label %.preheader.i52

.preheader.i52:                                   ; preds = %._crit_edge.thread, %.preheader.i52
  %.012.i53 = phi ptr [ %.012.val15.i54, %.preheader.i52 ], [ %i.j, %._crit_edge.thread ] ; 2 uses
  %.012.val15.i54 = load ptr, ptr %.012.i53, align 8 ; 2 uses
  %.not17.i55 = icmp eq ptr %.012.val15.i54, null
  br i1 %.not17.i55, label %bb.i, label %.preheader.i52, !llvm.loop !2

bb.i:                                             ; preds = %.preheader.i52
  store ptr %i.ab, ptr %.012.i53, align 8
  br label %list_Nconc.exit57

list_Nconc.exit57:                                ; preds = %._crit_edge, %._crit_edge.thread, %bb.i, %bb.e, %bb.b
  %.165 = phi ptr [ %i.j, %bb.b ], [ %i.j, %bb.e ], [ %i.j, %bb.i ], [ %spec.select111, %._crit_edge ], [ %i.ab, %._crit_edge.thread ] ; 5 uses
  %.2 = phi i32 [ %.089, %bb.b ], [ %.089, %bb.e ], [ %.172, %bb.i ], [ %.172, %._crit_edge ], [ %.172, %._crit_edge.thread ]
  %.not = icmp eq ptr %.165, null                 ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8
  %.not78 = icmp ne ptr %i.ae, null
  %or.cond.not = select i1 %.not, i1 true, i1 %.not78
  br i1 %or.cond.not, label %.critedge.preheader, label %bb.b, !llvm.loop !51

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %.13694 = phi ptr [ %.136.val47, %.critedge ], [ %.165, %.critedge.preheader ] ; 2 uses
  %i.af = getelementptr i8, ptr %.13694, i64 8
  %.136.val = load ptr, ptr %i.af, align 8
  call void @prfs_InsertUsableClause(ptr noundef %0, ptr noundef %.136.val) #14
  %.136.val47 = load ptr, ptr %.13694, align 8    ; 2 uses
  %.not81 = icmp eq ptr %.136.val47, null
  br i1 %.not81, label %.critedge._crit_edge, label %.critedge, !llvm.loop !52

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  br i1 %.not, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge._crit_edge, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.165, %.critedge._crit_edge ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr @memory_FREEDBYTES, align 8
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr @memory_FREEDBYTES, align 8
  %i.am = load ptr, ptr %i.ag, align 8
  store ptr %i.am, ptr %.07.i, align 8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.an, align 8
  %.not.i58 = icmp eq ptr %.0.val.i, null
  br i1 %.not.i58, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !1

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.a, %.critedge._crit_edge
  %i.ao = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.ao
}

declare ptr @inf_BoundedDepthUnitResolution(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @red_ReduceInput(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr i8, ptr %0, i64 112
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %.val33 = load ptr, ptr %i.c, align 8
  store ptr null, ptr %i.a, align 8
  %i.d = tail call ptr @list_Copy(ptr noundef %1) #14
  %i.e = tail call ptr @clause_ListSortWeighed(ptr noundef %i.d) #14
  %i.f = call ptr @split_ExtractEmptyClauses(ptr noundef %i.e, ptr noundef nonnull %i.a) #14 ; 3 uses
  %.not48 = icmp eq ptr %i.f, null                ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8
  %.not4550 = icmp ne ptr %i.g, null
  %or.cond51.not = select i1 %.not48, i1 true, i1 %.not4550
  br i1 %or.cond51.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.04352 = phi ptr [ %i.f, %.lr.ph ], [ %.1, %bb.o ] ; 5 uses
  %i.k = load i32, ptr %i.h, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %.critedge2, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sitofp i32 %i.k to float
  %i.n = call float @clock_GetSeconds(i32 noundef 1) #14
  %i.o = fcmp olt float %i.n, %i.m
  br i1 %i.o, label %.critedge2, label %.lr.ph60.preheader

.critedge2:                                       ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.04352, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 7 uses
  %i.r = load ptr, ptr %.04352, align 8           ; 3 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i32, ptr %i.t, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = load i64, ptr @memory_FREEDBYTES, align 8
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr @memory_FREEDBYTES, align 8
  %i.y = load ptr, ptr %i.s, align 8
  store ptr %i.y, ptr %.04352, align 8
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.04352, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.q, i64 64      ; 2 uses
  %.val31.i = load i32, ptr %i.aa, align 8        ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 68      ; 2 uses
  %.val32.i = load i32, ptr %i.ab, align 4        ; 2 uses
  %i.ac = add i32 %.val32.i, %.val31.i            ; 3 uses
  %i.ad = add i32 %i.ac, -1
  %.not48.i = icmp slt i32 %i.ad, 0
  br i1 %.not48.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2
  %i.ae = getelementptr i8, ptr %i.q, i64 56
  %wide.trip.count.i = zext i32 %i.ac to i64
  %.pre63.i = load i32, ptr @fol_NOT, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %i.af = phi i32 [ %.pre63.i, %.lr.ph.i ], [ %i.ap, %bb.g ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %.050.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 2 uses
  %.val34.i = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val34.i, i64 %indvars.iv.i
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %.val36.i = load ptr, ptr %i.ai, align 8        ; 2 uses
  %.val5.val.i.i = load i32, ptr %.val36.i, align 8 ; 2 uses
  %.not.i.i = icmp eq i32 %.val5.val.i.i, %i.af
  br i1 %.not.i.i, label %bb.e, label %clause_LiteralAtom.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %.val36.i, i64 16
  %.val6.i.i = load ptr, ptr %i.aj, align 8
  %i.ak = getelementptr i8, ptr %.val6.i.i, i64 8
  %.val6.val.i.i = load ptr, ptr %i.ak, align 8
  %.val37.pre.i = load i32, ptr %.val6.val.i.i, align 8
  br label %clause_LiteralAtom.exit.i

clause_LiteralAtom.exit.i:                        ; preds = %bb.e, %bb.d
  %.val37.i = phi i32 [ %.val37.pre.i, %bb.e ], [ %.val5.val.i.i, %bb.d ]
  %i.al = load i32, ptr @fol_TRUE, align 4
  %.not46.i = icmp eq i32 %i.al, %.val37.i
  br i1 %.not46.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %clause_LiteralAtom.exit.i
  %i.am = inttoptr i64 %indvars.iv.i to ptr
  %i.an = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  store ptr %.050.i, ptr %i.an, align 8
  %.pre.i = load i32, ptr @fol_NOT, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %clause_LiteralAtom.exit.i
  %i.ap = phi i32 [ %.pre.i, %bb.f ], [ %i.af, %clause_LiteralAtom.exit.i ]
  %.1.i = phi ptr [ %i.an, %bb.f ], [ %.050.i, %clause_LiteralAtom.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.d, !llvm.loop !53

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %.val3.i.i.pre.i = load i32, ptr %i.aa, align 8 ; 2 uses
  %.val.i.i.pre.i = load i32, ptr %i.ab, align 4  ; 2 uses
  %.pre = add i32 %.val3.i.i.pre.i, %.val.i.i.pre.i
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.critedge2
  %.pre-phi = phi i32 [ %.pre, %._crit_edge.loopexit.i ], [ %i.ac, %.critedge2 ] ; 2 uses
  %.val.i.i.i = phi i32 [ %.val.i.i.pre.i, %._crit_edge.loopexit.i ], [ %.val32.i, %.critedge2 ]
  %.val3.i.i.i = phi i32 [ %.val3.i.i.pre.i, %._crit_edge.loopexit.i ], [ %.val31.i, %.critedge2 ]
  %.0.lcssa.i = phi ptr [ %.1.i, %._crit_edge.loopexit.i ], [ null, %.critedge2 ] ; 2 uses
  %i.aq = getelementptr i8, ptr %i.q, i64 72
  %.val4.i.i.i = load i32, ptr %i.aq, align 8
  %i.ar = add i32 %.val4.i.i.i, %.pre-phi         ; 2 uses
  %i.as = add i32 %i.ar, -1
  %.not2751.i = icmp sgt i32 %.pre-phi, %i.as
  br i1 %.not2751.i, label %._crit_edge56.i, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %._crit_edge.i
  %i.at = getelementptr i8, ptr %i.q, i64 56
  %i.au = sext i32 %.val3.i.i.i to i64
  %i.av = sext i32 %.val.i.i.i to i64
  %i.aw = add nsw i64 %i.au, %i.av
  %.pre68.i = load i32, ptr @fol_NOT, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph55.i
  %i.ax = phi i32 [ %.pre68.i, %.lr.ph55.i ], [ %i.bh, %bb.k ] ; 2 uses
  %indvars.iv59.i = phi i64 [ %i.aw, %.lr.ph55.i ], [ %indvars.iv.next60.i, %bb.k ] ; 3 uses
  %.253.i = phi ptr [ %.0.lcssa.i, %.lr.ph55.i ], [ %.3.i, %bb.k ] ; 2 uses
  %.val33.i = load ptr, ptr %i.at, align 8
  %i.ay = getelementptr inbounds [8 x i8], ptr %.val33.i, i64 %indvars.iv59.i
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 24
  %.val35.i = load ptr, ptr %i.ba, align 8        ; 2 uses
  %.val5.val.i39.i = load i32, ptr %.val35.i, align 8 ; 2 uses
  %.not.i40.i = icmp eq i32 %.val5.val.i39.i, %i.ax
  br i1 %.not.i40.i, label %bb.i, label %clause_LiteralAtom.exit44.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr i8, ptr %.val35.i, i64 16
  %.val6.i42.i = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %.val6.i42.i, i64 8
  %.val6.val.i43.i = load ptr, ptr %i.bc, align 8
  %.val38.pre.i = load i32, ptr %.val6.val.i43.i, align 8
  br label %clause_LiteralAtom.exit44.i

clause_LiteralAtom.exit44.i:                      ; preds = %bb.i, %bb.h
  %.val38.i = phi i32 [ %.val38.pre.i, %bb.i ], [ %.val5.val.i39.i, %bb.h ]
  %i.bd = load i32, ptr @fol_FALSE, align 4
  %.not47.i = icmp eq i32 %i.bd, %.val38.i
  br i1 %.not47.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %clause_LiteralAtom.exit44.i
  %i.be = inttoptr i64 %indvars.iv59.i to ptr
  %i.bf = call noundef ptr @memory_Malloc(i32 noundef 16) #14 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.be, ptr %i.bg, align 8
  store ptr %.253.i, ptr %i.bf, align 8
  %.pre67.i = load i32, ptr @fol_NOT, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %clause_LiteralAtom.exit44.i
  %i.bh = phi i32 [ %.pre67.i, %bb.j ], [ %i.ax, %clause_LiteralAtom.exit44.i ]
  %.3.i = phi ptr [ %i.bf, %bb.j ], [ %.253.i, %clause_LiteralAtom.exit44.i ] ; 2 uses
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next60.i to i32
end_hunk_0
