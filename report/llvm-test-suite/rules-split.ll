inline.NumInlined: 203
inline.NumDeleted: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@memory_FREEDBYTES = external local_unnamed_addr global i64, align 8
@memory_ARRAY = external local_unnamed_addr global [0 x ptr], align 8
@clause_CLAUSECOUNTER = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @split_Backtrack(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 128        ; 13 uses
  %.val54.i = load i32, ptr %i.b, align 8         ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 132        ; 2 uses
  %.val55.i = load i32, ptr %i.c, align 4         ; 3 uses
  %i.d = icmp sgt i32 %.val54.i, %.val55.i
  br i1 %i.d, label %.lr.ph185.i, label %split_RemoveUnnecessarySplits.exit

.lr.ph185.i:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = getelementptr i8, ptr %0, i64 40         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %clause_DependsOnSplitLevel.exit.thread156.i, %.lr.ph185.i
  %.0183.in.i = phi ptr [ %i.a, %.lr.ph185.i ], [ %.0183.i, %clause_DependsOnSplitLevel.exit.thread156.i ]
  %.045182.i = phi ptr [ null, %.lr.ph185.i ], [ %.3.i, %clause_DependsOnSplitLevel.exit.thread156.i ] ; 5 uses
  %.047180.i = phi i32 [ %.val54.i, %.lr.ph185.i ], [ %i.ck, %clause_DependsOnSplitLevel.exit.thread156.i ] ; 11 uses
  %.0183.i = load ptr, ptr %.0183.in.i, align 8   ; 2 uses
  %i.i = getelementptr i8, ptr %.0183.i, i64 8
  %.0.val56.i = load ptr, ptr %i.i, align 8       ; 4 uses
  %i.j = getelementptr i8, ptr %.0.val56.i, i64 4 ; 2 uses
  %.val57.i = load i32, ptr %i.j, align 4
  %.not.i.not.i = icmp ne i32 %.val57.i, 0
  %i.k = icmp eq i32 %.047180.i, 0
  %or.cond.i = or i1 %i.k, %.not.i.not.i
  br i1 %or.cond.i, label %clause_DependsOnSplitLevel.exit.thread156.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp ugt i32 %.047180.i, 63
  %i.m = add i32 %.047180.i, -64
  %i.n = lshr i32 %i.m, 6
  %i.o = add nuw nsw i32 %i.n, 1
  %storemerge.i.i.i = select i1 %i.l, i32 %i.o, i32 0 ; 8 uses
  %i.p = load i32, ptr %i.e, align 8
  %.not.i68.i = icmp ult i32 %storemerge.i.i.i, %i.p
  br i1 %.not.i68.i, label %clause_DependsOnSplitLevel.exit.i, label %clause_DependsOnSplitLevel.exit.thread.i

clause_DependsOnSplitLevel.exit.i:                ; preds = %bb.c
  %i.q = and i32 %.047180.i, 63
  %i.r = load ptr, ptr %i.f, align 8
  %i.s = zext nneg i32 %storemerge.i.i.i to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  %i.v = zext nneg i32 %i.q to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.u, %i.w
  %.not49.i = icmp eq i64 %i.x, 0
  br i1 %.not49.i, label %clause_DependsOnSplitLevel.exit.thread.i, label %clause_DependsOnSplitLevel.exit.thread156.i

clause_DependsOnSplitLevel.exit.thread.i:         ; preds = %clause_DependsOnSplitLevel.exit.i, %bb.c
  %i.y = getelementptr i8, ptr %.0.val56.i, i64 8 ; 2 uses
  %.val58.i = load ptr, ptr %i.y, align 8
  tail call void @clause_DeleteClauseList(ptr noundef %.val58.i) #3
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %.0.val56.i, i64 16 ; 2 uses
  %.val60.i = load ptr, ptr %i.z, align 8         ; 4 uses
  %.not.i69.i = icmp eq ptr %.val60.i, null
  br i1 %.not.i69.i, label %list_Nconc.exit.i, label %bb.d

bb.d:                                             ; preds = %clause_DependsOnSplitLevel.exit.thread.i
  %.not16.i.i = icmp eq ptr %.045182.i, null
  br i1 %.not16.i.i, label %list_Nconc.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.012.i.i = phi ptr [ %.012.val15.i.i, %.preheader.i.i ], [ %.val60.i, %bb.d ] ; 2 uses
  %.012.val15.i.i = load ptr, ptr %.012.i.i, align 8 ; 2 uses
  %.not17.i.i = icmp eq ptr %.012.val15.i.i, null
  br i1 %.not17.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !4

bb.e:                                             ; preds = %.preheader.i.i
  store ptr %.045182.i, ptr %.012.i.i, align 8
  br label %list_Nconc.exit.i

list_Nconc.exit.i:                                ; preds = %bb.e, %bb.d, %clause_DependsOnSplitLevel.exit.thread.i
  %.0.i.i = phi ptr [ %.val60.i, %bb.e ], [ %.045182.i, %clause_DependsOnSplitLevel.exit.thread.i ], [ %.val60.i, %bb.d ] ; 3 uses
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %.0.val56.i, i64 24 ; 2 uses
  %.val64.i = load ptr, ptr %i.aa, align 8        ; 2 uses
  %.not50.i = icmp eq ptr %.val64.i, null
  br i1 %.not50.i, label %bb.f, label %.thread

.thread:                                          ; preds = %list_Nconc.exit.i
  %i.ab = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.val64.i, ptr %i.ac, align 8
  store ptr %.0.i.i, ptr %i.ab, align 8
  store ptr null, ptr %i.aa, align 8
  br label %.lr.ph.i142

bb.f:                                             ; preds = %list_Nconc.exit.i
  %.not28.i = icmp eq ptr %.0.i.i, null
  br i1 %.not28.i, label %split_DeleteClausesDependingOnLevelFromList.exit, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %.thread, %bb.f
  %.1.i168 = phi ptr [ %i.ab, %.thread ], [ %.0.i.i, %bb.f ] ; 2 uses
  %i.ad = and i32 %.047180.i, 63
  %i.ae = zext nneg i32 %storemerge.i.i.i to i64
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = shl nuw i64 1, %i.af
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i142, %clause_DependsOnSplitLevel.exit.thread.i145
  %.0161 = phi ptr [ null, %.lr.ph.i142 ], [ %.1162, %clause_DependsOnSplitLevel.exit.thread.i145 ] ; 5 uses
  %.029.i = phi ptr [ %.1.i168, %.lr.ph.i142 ], [ %.0.val19.i146, %clause_DependsOnSplitLevel.exit.thread.i145 ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.029.i, i64 8    ; 2 uses
  %.0.val.i144 = load ptr, ptr %i.ah, align 8     ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val.i144, i64 24
  %i.aj = load i32, ptr %i.ai, align 8
  %.not.i.i = icmp ult i32 %storemerge.i.i.i, %i.aj
  br i1 %.not.i.i, label %clause_DependsOnSplitLevel.exit.i149, label %clause_DependsOnSplitLevel.exit.thread.i145

clause_DependsOnSplitLevel.exit.i149:             ; preds = %.lr.ph.split.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.val.i144, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ae
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, %i.ag
  %.not16.i150 = icmp eq i64 %i.ao, 0
  br i1 %.not16.i150, label %clause_DependsOnSplitLevel.exit.thread.i145, label %clause_DependsOnSplitLevel.exit.thread25.i

clause_DependsOnSplitLevel.exit.thread25.i:       ; preds = %clause_DependsOnSplitLevel.exit.i149
  %i.ap = getelementptr i8, ptr %.0.val.i144, i64 12
  %.val20.i151 = load i32, ptr %i.ap, align 4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %clause_DependsOnSplitLevel.exit.thread25.i
  %.0.val7.sink.i.in.i = phi ptr [ %i.a, %clause_DependsOnSplitLevel.exit.thread25.i ], [ %.0.val7.sink.i.i, %.lr.ph.i.i ]
  %.0.val7.sink.i.i = load ptr, ptr %.0.val7.sink.i.in.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aq = getelementptr i8, ptr %.0.val7.sink.i.i, i64 8
  %.0.val6.i.i = load ptr, ptr %i.aq, align 8     ; 2 uses
  %i.ar = load i32, ptr %.0.val6.i.i, align 8
  %.not5.i.i = icmp eq i32 %i.ar, %.val20.i151
  br i1 %.not5.i.i, label %prfs_GetSplitOfLevel.exit.i, label %.lr.ph.i.i

prfs_GetSplitOfLevel.exit.i:                      ; preds = %.lr.ph.i.i
  %i.as = getelementptr i8, ptr %.0.val6.i.i, i64 16 ; 2 uses
  %.val18.i152 = load ptr, ptr %i.as, align 8     ; 3 uses
  %.not17.i153 = icmp eq ptr %.val18.i152, null
  br i1 %.not17.i153, label %bb.i, label %bb.g

bb.g:                                             ; preds = %prfs_GetSplitOfLevel.exit.i
  %.not16.i.i154 = icmp eq ptr %.0161, null
  br i1 %.not16.i.i154, label %list_Nconc.exit.i159, label %.preheader.i.i155

.preheader.i.i155:                                ; preds = %bb.g, %.preheader.i.i155
  %.012.i.i156 = phi ptr [ %.012.val15.i.i157, %.preheader.i.i155 ], [ %.val18.i152, %bb.g ] ; 2 uses
  %.012.val15.i.i157 = load ptr, ptr %.012.i.i156, align 8 ; 2 uses
  %.not17.i.i158 = icmp eq ptr %.012.val15.i.i157, null
  br i1 %.not17.i.i158, label %bb.h, label %.preheader.i.i155, !llvm.loop !4

bb.h:                                             ; preds = %.preheader.i.i155
  store ptr %.0161, ptr %.012.i.i156, align 8
  br label %list_Nconc.exit.i159

list_Nconc.exit.i159:                             ; preds = %bb.h, %bb.g
  store ptr null, ptr %i.as, align 8
  br label %bb.i

bb.i:                                             ; preds = %list_Nconc.exit.i159, %prfs_GetSplitOfLevel.exit.i
  %.2163 = phi ptr [ %.0161, %prfs_GetSplitOfLevel.exit.i ], [ %.val18.i152, %list_Nconc.exit.i159 ]
  tail call void @prfs_InsertDocProofClause(ptr noundef %0, ptr noundef nonnull %.0.val.i144) #3
  store ptr null, ptr %i.ah, align 8
  br label %clause_DependsOnSplitLevel.exit.thread.i145

clause_DependsOnSplitLevel.exit.thread.i145:      ; preds = %bb.i, %clause_DependsOnSplitLevel.exit.i149, %.lr.ph.split.i
  %.1162 = phi ptr [ %.0161, %clause_DependsOnSplitLevel.exit.i149 ], [ %.2163, %bb.i ], [ %.0161, %.lr.ph.split.i ] ; 2 uses
  %.0.val19.i146 = load ptr, ptr %.029.i, align 8 ; 2 uses
  %.not.i147 = icmp eq ptr %.0.val19.i146, null
  br i1 %.not.i147, label %split_DeleteClausesDependingOnLevelFromList.exit, label %.lr.ph.split.i, !llvm.loop !7

split_DeleteClausesDependingOnLevelFromList.exit: ; preds = %clause_DependsOnSplitLevel.exit.thread.i145, %bb.f
  %.1.i169 = phi ptr [ null, %bb.f ], [ %.1.i168, %clause_DependsOnSplitLevel.exit.thread.i145 ]
  %.5 = phi ptr [ null, %bb.f ], [ %.1162, %clause_DependsOnSplitLevel.exit.thread.i145 ] ; 2 uses
  %i.at = tail call ptr @list_PointerDeleteElement(ptr noundef %.1.i169, ptr noundef null) #3 ; 2 uses
  %.046170.i = load ptr, ptr %i.a, align 8        ; 2 uses
  %.not171.i = icmp eq ptr %.046170.i, null
  br i1 %.not171.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %split_DeleteClausesDependingOnLevelFromList.exit
  %i.au = and i32 %.047180.i, 63
  %i.av = zext nneg i32 %storemerge.i.i.i to i64
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = shl nuw i64 1, %i.aw
  br label %bb.j

bb.j:                                             ; preds = %split_DeleteClausesDependingOnLevelFromList.exit.i, %.lr.ph.i
  %.046173.i = phi ptr [ %.046170.i, %.lr.ph.i ], [ %.046.i, %split_DeleteClausesDependingOnLevelFromList.exit.i ] ; 2 uses
  %.val18.i164.lcssa169172.i = phi ptr [ %.5, %.lr.ph.i ], [ %.val18.i164.lcssa168.i, %split_DeleteClausesDependingOnLevelFromList.exit.i ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.046173.i, i64 8
  %.046.val.i = load ptr, ptr %i.ay, align 8      ; 2 uses
  %.val65.i = load i32, ptr %.046.val.i, align 8
  %i.az = icmp sgt i32 %.val65.i, %.val55.i
  br i1 %i.az, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr i8, ptr %.046.val.i, i64 16 ; 3 uses
  %.val59.i = load ptr, ptr %i.ba, align 8        ; 3 uses
  store ptr null, ptr %i.ba, align 8
  %.not28.i.i = icmp eq ptr %.val59.i, null
  br i1 %.not28.i.i, label %split_DeleteClausesDependingOnLevelFromList.exit.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.k, %clause_DependsOnSplitLevel.exit.thread.i.i
  %.val18.i166.i = phi ptr [ %.val18.i164.i, %clause_DependsOnSplitLevel.exit.thread.i.i ], [ %.val18.i164.lcssa169172.i, %bb.k ] ; 5 uses
  %.029.i.i = phi ptr [ %.0.val19.i.i, %clause_DependsOnSplitLevel.exit.thread.i.i ], [ %.val59.i, %bb.k ] ; 2 uses
  %i.bb = getelementptr i8, ptr %.029.i.i, i64 8  ; 2 uses
  %.0.val.i.i = load ptr, ptr %i.bb, align 8      ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 24
  %i.bd = load i32, ptr %i.bc, align 8
  %.not.i.i.i = icmp ult i32 %storemerge.i.i.i, %i.bd
  br i1 %.not.i.i.i, label %clause_DependsOnSplitLevel.exit.i.i, label %clause_DependsOnSplitLevel.exit.thread.i.i

clause_DependsOnSplitLevel.exit.i.i:              ; preds = %.lr.ph.split.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.av
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, %i.ax
  %.not16.i71.i = icmp eq i64 %i.bi, 0
  br i1 %.not16.i71.i, label %clause_DependsOnSplitLevel.exit.thread.i.i, label %clause_DependsOnSplitLevel.exit.thread25.i.i

clause_DependsOnSplitLevel.exit.thread25.i.i:     ; preds = %clause_DependsOnSplitLevel.exit.i.i
  %i.bj = getelementptr i8, ptr %.0.val.i.i, i64 12
  %.val20.i.i = load i32, ptr %i.bj, align 4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %clause_DependsOnSplitLevel.exit.thread25.i.i
  %.0.val7.sink.i.in.i.i = phi ptr [ %i.a, %clause_DependsOnSplitLevel.exit.thread25.i.i ], [ %.0.val7.sink.i.i.i, %.lr.ph.i.i.i ]
  %.0.val7.sink.i.i.i = load ptr, ptr %.0.val7.sink.i.in.i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bk = getelementptr i8, ptr %.0.val7.sink.i.i.i, i64 8
  %.0.val6.i.i.i = load ptr, ptr %i.bk, align 8   ; 2 uses
  %i.bl = load i32, ptr %.0.val6.i.i.i, align 8
  %.not5.i.i.i = icmp eq i32 %i.bl, %.val20.i.i
  br i1 %.not5.i.i.i, label %prfs_GetSplitOfLevel.exit.i.i, label %.lr.ph.i.i.i

prfs_GetSplitOfLevel.exit.i.i:                    ; preds = %.lr.ph.i.i.i
  %i.bm = getelementptr i8, ptr %.0.val6.i.i.i, i64 16 ; 2 uses
  %.val18.i.i = load ptr, ptr %i.bm, align 8      ; 3 uses
  %.not17.i72.i = icmp eq ptr %.val18.i.i, null
  br i1 %.not17.i72.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %prfs_GetSplitOfLevel.exit.i.i
  %.not16.i.i.i = icmp eq ptr %.val18.i166.i, null
  br i1 %.not16.i.i.i, label %list_Nconc.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.l, %.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %.012.val15.i.i.i, %.preheader.i.i.i ], [ %.val18.i.i, %bb.l ] ; 2 uses
  %.012.val15.i.i.i = load ptr, ptr %.012.i.i.i, align 8 ; 2 uses
  %.not17.i.i.i = icmp eq ptr %.012.val15.i.i.i, null
  br i1 %.not17.i.i.i, label %bb.m, label %.preheader.i.i.i, !llvm.loop !4

bb.m:                                             ; preds = %.preheader.i.i.i
  store ptr %.val18.i166.i, ptr %.012.i.i.i, align 8
  br label %list_Nconc.exit.i.i

list_Nconc.exit.i.i:                              ; preds = %bb.m, %bb.l
  store ptr null, ptr %i.bm, align 8
  br label %bb.n

bb.n:                                             ; preds = %list_Nconc.exit.i.i, %prfs_GetSplitOfLevel.exit.i.i
  %.val18.i165.i = phi ptr [ %.val18.i.i, %list_Nconc.exit.i.i ], [ %.val18.i166.i, %prfs_GetSplitOfLevel.exit.i.i ]
  tail call void @prfs_InsertDocProofClause(ptr noundef %0, ptr noundef nonnull %.0.val.i.i) #3
  store ptr null, ptr %i.bb, align 8
  br label %clause_DependsOnSplitLevel.exit.thread.i.i

clause_DependsOnSplitLevel.exit.thread.i.i:       ; preds = %bb.n, %clause_DependsOnSplitLevel.exit.i.i, %.lr.ph.split.i.i
  %.val18.i164.i = phi ptr [ %.val18.i165.i, %bb.n ], [ %.val18.i166.i, %clause_DependsOnSplitLevel.exit.i.i ], [ %.val18.i166.i, %.lr.ph.split.i.i ] ; 2 uses
  %.0.val19.i.i = load ptr, ptr %.029.i.i, align 8 ; 2 uses
  %.not.i70.i = icmp eq ptr %.0.val19.i.i, null
  br i1 %.not.i70.i, label %split_DeleteClausesDependingOnLevelFromList.exit.i, label %.lr.ph.split.i.i, !llvm.loop !7

split_DeleteClausesDependingOnLevelFromList.exit.i: ; preds = %clause_DependsOnSplitLevel.exit.thread.i.i, %bb.k
  %.val18.i164.lcssa168.i = phi ptr [ %.val18.i164.lcssa169172.i, %bb.k ], [ %.val18.i164.i, %clause_DependsOnSplitLevel.exit.thread.i.i ] ; 2 uses
  %i.bn = tail call ptr @list_PointerDeleteElement(ptr noundef %.val59.i, ptr noundef null) #3
  store ptr %i.bn, ptr %i.ba, align 8
  %.046.i = load ptr, ptr %.046173.i, align 8     ; 2 uses
  %.not.i = icmp eq ptr %.046.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.j, !llvm.loop !8

.critedge.i:                                      ; preds = %split_DeleteClausesDependingOnLevelFromList.exit.i, %bb.j, %split_DeleteClausesDependingOnLevelFromList.exit
  %.val18.i164.lcssa169.lcssa.i = phi ptr [ %.5, %split_DeleteClausesDependingOnLevelFromList.exit ], [ %.val18.i164.lcssa169172.i, %bb.j ], [ %.val18.i164.lcssa168.i, %split_DeleteClausesDependingOnLevelFromList.exit.i ] ; 2 uses
  %.not163176.i = icmp eq ptr %.val18.i164.lcssa169.lcssa.i, null
  br i1 %.not163176.i, label %._crit_edge.i, label %.lr.ph.i74.lr.ph.i

.lr.ph.i74.lr.ph.i:                               ; preds = %.critedge.i
  %i.bo = and i32 %.047180.i, 63
  %i.bp = zext nneg i32 %storemerge.i.i.i to i64
  %i.bq = zext nneg i32 %i.bo to i64
  %i.br = shl nuw i64 1, %i.bq
  br label %.lr.ph.i74.i

.lr.ph.i74.i:                                     ; preds = %list_Nconc.exit130.i, %.lr.ph.i74.lr.ph.i
  %.2177.i = phi ptr [ %i.at, %.lr.ph.i74.lr.ph.i ], [ %.0.i129.i, %list_Nconc.exit130.i ] ; 3 uses
  %i.bs = phi ptr [ %.val18.i164.lcssa169.lcssa.i, %.lr.ph.i74.lr.ph.i ], [ %.1151.i, %list_Nconc.exit130.i ] ; 2 uses
  br label %.lr.ph.split.i76.i

.lr.ph.split.i76.i:                               ; preds = %clause_DependsOnSplitLevel.exit.thread.i80.i, %.lr.ph.i74.i
  %.0150.i = phi ptr [ null, %.lr.ph.i74.i ], [ %.1151.i, %clause_DependsOnSplitLevel.exit.thread.i80.i ] ; 5 uses
  %.029.i77.i = phi ptr [ %i.bs, %.lr.ph.i74.i ], [ %.0.val19.i81.i, %clause_DependsOnSplitLevel.exit.thread.i80.i ] ; 2 uses
  %i.bt = getelementptr i8, ptr %.029.i77.i, i64 8 ; 2 uses
  %.0.val.i78.i = load ptr, ptr %i.bt, align 8    ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.val.i78.i, i64 24
  %i.bv = load i32, ptr %i.bu, align 8
  %.not.i.i79.i = icmp ult i32 %storemerge.i.i.i, %i.bv
  br i1 %.not.i.i79.i, label %clause_DependsOnSplitLevel.exit.i83.i, label %clause_DependsOnSplitLevel.exit.thread.i80.i

clause_DependsOnSplitLevel.exit.i83.i:            ; preds = %.lr.ph.split.i76.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.val.i78.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bp
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = and i64 %i.bz, %i.br
  %.not16.i84.i = icmp eq i64 %i.ca, 0
  br i1 %.not16.i84.i, label %clause_DependsOnSplitLevel.exit.thread.i80.i, label %clause_DependsOnSplitLevel.exit.thread25.i85.i

clause_DependsOnSplitLevel.exit.thread25.i85.i:   ; preds = %clause_DependsOnSplitLevel.exit.i83.i
  %i.cb = getelementptr i8, ptr %.0.val.i78.i, i64 12
  %.val20.i86.i = load i32, ptr %i.cb, align 4
  br label %.lr.ph.i.i87.i

.lr.ph.i.i87.i:                                   ; preds = %.lr.ph.i.i87.i, %clause_DependsOnSplitLevel.exit.thread25.i85.i
  %.0.val7.sink.i.in.i88.i = phi ptr [ %i.a, %clause_DependsOnSplitLevel.exit.thread25.i85.i ], [ %.0.val7.sink.i.i89.i, %.lr.ph.i.i87.i ]
  %.0.val7.sink.i.i89.i = load ptr, ptr %.0.val7.sink.i.in.i88.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.cc = getelementptr i8, ptr %.0.val7.sink.i.i89.i, i64 8
  %.0.val6.i.i90.i = load ptr, ptr %i.cc, align 8 ; 2 uses
  %i.cd = load i32, ptr %.0.val6.i.i90.i, align 8
  %.not5.i.i91.i = icmp eq i32 %i.cd, %.val20.i86.i
  br i1 %.not5.i.i91.i, label %prfs_GetSplitOfLevel.exit.i92.i, label %.lr.ph.i.i87.i

prfs_GetSplitOfLevel.exit.i92.i:                  ; preds = %.lr.ph.i.i87.i
  %i.ce = getelementptr i8, ptr %.0.val6.i.i90.i, i64 16 ; 2 uses
  %.val18.i93.i = load ptr, ptr %i.ce, align 8    ; 3 uses
  %.not17.i94.i = icmp eq ptr %.val18.i93.i, null
  br i1 %.not17.i94.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %prfs_GetSplitOfLevel.exit.i92.i
  %.not16.i.i95.i = icmp eq ptr %.0150.i, null
  br i1 %.not16.i.i95.i, label %list_Nconc.exit.i100.i, label %.preheader.i.i96.i

.preheader.i.i96.i:                               ; preds = %bb.o, %.preheader.i.i96.i
  %.012.i.i97.i = phi ptr [ %.012.val15.i.i98.i, %.preheader.i.i96.i ], [ %.val18.i93.i, %bb.o ] ; 2 uses
  %.012.val15.i.i98.i = load ptr, ptr %.012.i.i97.i, align 8 ; 2 uses
  %.not17.i.i99.i = icmp eq ptr %.012.val15.i.i98.i, null
  br i1 %.not17.i.i99.i, label %bb.p, label %.preheader.i.i96.i, !llvm.loop !4

bb.p:                                             ; preds = %.preheader.i.i96.i
  store ptr %.0150.i, ptr %.012.i.i97.i, align 8
  br label %list_Nconc.exit.i100.i

list_Nconc.exit.i100.i:                           ; preds = %bb.p, %bb.o
  store ptr null, ptr %i.ce, align 8
  br label %bb.q

bb.q:                                             ; preds = %list_Nconc.exit.i100.i, %prfs_GetSplitOfLevel.exit.i92.i
  %.2152.i = phi ptr [ %.0150.i, %prfs_GetSplitOfLevel.exit.i92.i ], [ %.val18.i93.i, %list_Nconc.exit.i100.i ]
  tail call void @prfs_InsertDocProofClause(ptr noundef %0, ptr noundef nonnull %.0.val.i78.i) #3
  store ptr null, ptr %i.bt, align 8
  br label %clause_DependsOnSplitLevel.exit.thread.i80.i

clause_DependsOnSplitLevel.exit.thread.i80.i:     ; preds = %bb.q, %clause_DependsOnSplitLevel.exit.i83.i, %.lr.ph.split.i76.i
  %.1151.i = phi ptr [ %.0150.i, %clause_DependsOnSplitLevel.exit.i83.i ], [ %.2152.i, %bb.q ], [ %.0150.i, %.lr.ph.split.i76.i ] ; 3 uses
  %.0.val19.i81.i = load ptr, ptr %.029.i77.i, align 8 ; 2 uses
  %.not.i82.i = icmp eq ptr %.0.val19.i81.i, null
  br i1 %.not.i82.i, label %split_DeleteClausesDependingOnLevelFromList.exit122.i, label %.lr.ph.split.i76.i, !llvm.loop !7

split_DeleteClausesDependingOnLevelFromList.exit122.i: ; preds = %clause_DependsOnSplitLevel.exit.thread.i80.i
  %i.cf = tail call ptr @list_PointerDeleteElement(ptr noundef nonnull %i.bs, ptr noundef null) #3 ; 4 uses
  %.not.i123.i = icmp eq ptr %i.cf, null
  br i1 %.not.i123.i, label %list_Nconc.exit130.i, label %bb.r

bb.r:                                             ; preds = %split_DeleteClausesDependingOnLevelFromList.exit122.i
  %.not16.i124.i = icmp eq ptr %.2177.i, null
  br i1 %.not16.i124.i, label %list_Nconc.exit130.i, label %.preheader.i125.i

.preheader.i125.i:                                ; preds = %bb.r, %.preheader.i125.i
  %.012.i126.i = phi ptr [ %.012.val15.i127.i, %.preheader.i125.i ], [ %i.cf, %bb.r ] ; 2 uses
  %.012.val15.i127.i = load ptr, ptr %.012.i126.i, align 8 ; 2 uses
  %.not17.i128.i = icmp eq ptr %.012.val15.i127.i, null
  br i1 %.not17.i128.i, label %bb.s, label %.preheader.i125.i, !llvm.loop !4

bb.s:                                             ; preds = %.preheader.i125.i
  store ptr %.2177.i, ptr %.012.i126.i, align 8
  br label %list_Nconc.exit130.i

list_Nconc.exit130.i:                             ; preds = %bb.s, %bb.r, %split_DeleteClausesDependingOnLevelFromList.exit122.i
  %.0.i129.i = phi ptr [ %i.cf, %bb.s ], [ %.2177.i, %split_DeleteClausesDependingOnLevelFromList.exit122.i ], [ %i.cf, %bb.r ] ; 2 uses
  %.not163.i = icmp eq ptr %.1151.i, null
  br i1 %.not163.i, label %._crit_edge.i, label %.lr.ph.i74.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %list_Nconc.exit130.i, %.critedge.i
  %.2.lcssa.i = phi ptr [ %i.at, %.critedge.i ], [ %.0.i129.i, %list_Nconc.exit130.i ] ; 3 uses
  %.val66.i = load ptr, ptr %i.g, align 8
  %i.cg = tail call fastcc ptr @split_DeleteClausesDependingOnLevelFromSet(ptr noundef %0, ptr noundef %.val66.i, i32 noundef %.047180.i) ; 4 uses
  %.not.i131.i = icmp eq ptr %.2.lcssa.i, null
  br i1 %.not.i131.i, label %list_Nconc.exit138.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %.not16.i132.i = icmp eq ptr %i.cg, null
  br i1 %.not16.i132.i, label %list_Nconc.exit138.thread.i, label %.preheader.i133.i

.preheader.i133.i:                                ; preds = %bb.t, %.preheader.i133.i
  %.012.i134.i = phi ptr [ %.012.val15.i135.i, %.preheader.i133.i ], [ %.2.lcssa.i, %bb.t ] ; 2 uses
  %.012.val15.i135.i = load ptr, ptr %.012.i134.i, align 8 ; 2 uses
  %.not17.i136.i = icmp eq ptr %.012.val15.i135.i, null
  br i1 %.not17.i136.i, label %bb.u, label %.preheader.i133.i, !llvm.loop !4

bb.u:                                             ; preds = %.preheader.i133.i
  store ptr %i.cg, ptr %.012.i134.i, align 8
  br label %list_Nconc.exit138.thread.i

list_Nconc.exit138.thread.i:                      ; preds = %bb.u, %bb.t
  %.val67160.i = load ptr, ptr %i.h, align 8
  %i.ch = tail call fastcc ptr @split_DeleteClausesDependingOnLevelFromSet(ptr noundef nonnull %0, ptr noundef %.val67160.i, i32 noundef %.047180.i)
  br label %bb.v

list_Nconc.exit138.i:                             ; preds = %._crit_edge.i
  %.val67.i = load ptr, ptr %i.h, align 8
  %i.ci = tail call fastcc ptr @split_DeleteClausesDependingOnLevelFromSet(ptr noundef nonnull %0, ptr noundef %.val67.i, i32 noundef %.047180.i) ; 2 uses
  %.not.i139.i = icmp eq ptr %i.cg, null
  br i1 %.not.i139.i, label %list_Nconc.exit146.i, label %bb.v

bb.v:                                             ; preds = %list_Nconc.exit138.i, %list_Nconc.exit138.thread.i
  %i.cj = phi ptr [ %i.ch, %list_Nconc.exit138.thread.i ], [ %i.ci, %list_Nconc.exit138.i ] ; 2 uses
  %.0.i137162.i = phi ptr [ %.2.lcssa.i, %list_Nconc.exit138.thread.i ], [ %i.cg, %list_Nconc.exit138.i ] ; 3 uses
  %.not16.i140.i = icmp eq ptr %i.cj, null
  br i1 %.not16.i140.i, label %list_Nconc.exit146.i, label %.preheader.i141.i

.preheader.i141.i:                                ; preds = %bb.v, %.preheader.i141.i
  %.012.i142.i = phi ptr [ %.012.val15.i143.i, %.preheader.i141.i ], [ %.0.i137162.i, %bb.v ] ; 2 uses
  %.012.val15.i143.i = load ptr, ptr %.012.i142.i, align 8 ; 2 uses
  %.not17.i144.i = icmp eq ptr %.012.val15.i143.i, null
  br i1 %.not17.i144.i, label %bb.w, label %.preheader.i141.i, !llvm.loop !4

bb.w:                                             ; preds = %.preheader.i141.i
  store ptr %i.cj, ptr %.012.i142.i, align 8
  br label %list_Nconc.exit146.i

list_Nconc.exit146.i:                             ; preds = %bb.w, %bb.v, %list_Nconc.exit138.i
  %.0.i145.i = phi ptr [ %.0.i137162.i, %bb.w ], [ %i.ci, %list_Nconc.exit138.i ], [ %.0.i137162.i, %bb.v ]
  store i32 1, ptr %i.j, align 4
  br label %clause_DependsOnSplitLevel.exit.thread156.i

clause_DependsOnSplitLevel.exit.thread156.i:      ; preds = %list_Nconc.exit146.i, %clause_DependsOnSplitLevel.exit.i, %bb.b
  %.3.i = phi ptr [ %.045182.i, %clause_DependsOnSplitLevel.exit.i ], [ %.0.i145.i, %list_Nconc.exit146.i ], [ %.045182.i, %bb.b ] ; 2 uses
  %i.ck = add nsw i32 %.047180.i, -1              ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, %.val55.i
  br i1 %i.cl, label %bb.b, label %split_RemoveUnnecessarySplits.exit, !llvm.loop !10

split_RemoveUnnecessarySplits.exit:               ; preds = %clause_DependsOnSplitLevel.exit.thread156.i, %bb.a
  %.045.lcssa.i = phi ptr [ null, %bb.a ], [ %.3.i, %clause_DependsOnSplitLevel.exit.thread156.i ] ; 2 uses
  %i.cm = getelementptr i8, ptr %1, i64 12
  %.val94 = load i32, ptr %i.cm, align 4
  store ptr null, ptr %2, align 8
  %.val97176 = load ptr, ptr %i.a, align 8        ; 2 uses
  %.not177 = icmp eq ptr %.val97176, null
  br i1 %.not177, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %split_RemoveUnnecessarySplits.exit
  %.val77.pre = load i32, ptr %i.b, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %list_Nconc.exit
  %.val77 = phi i32 [ %i.dl, %list_Nconc.exit ], [ %.val77.pre, %.lr.ph.preheader ]
  %.val97179 = phi ptr [ %.val97, %list_Nconc.exit ], [ %.val97176, %.lr.ph.preheader ] ; 5 uses
  %.0178 = phi ptr [ %.0.i, %list_Nconc.exit ], [ %.045.lcssa.i, %.lr.ph.preheader ] ; 3 uses
  %i.cn = icmp sgt i32 %.val77, %.val94
  br i1 %i.cn, label %bb.x, label %.lr.ph186

bb.x:                                             ; preds = %.lr.ph
  %i.co = getelementptr i8, ptr %.val97179, i64 8
  %.val101.val = load ptr, ptr %i.co, align 8     ; 5 uses
  %.val.i.i = load ptr, ptr %.val97179, align 8
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = sext i32 %i.cr to i64
  %i.ct = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cu = add i64 %i.ct, %i.cs
  store i64 %i.cu, ptr @memory_FREEDBYTES, align 8
  %i.cv = load ptr, ptr %i.cp, align 8
  store ptr %i.cv, ptr %.val97179, align 8
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.val97179, ptr %i.cw, align 8
  store ptr %.val.i.i, ptr %i.a, align 8
  %i.cx = getelementptr i8, ptr %.val101.val, i64 24 ; 2 uses
  %.val93 = load ptr, ptr %i.cx, align 8          ; 2 uses
  %.not69 = icmp eq ptr %.val93, null
  br i1 %.not69, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %.val93, ptr %i.cz, align 8
  store ptr %.0178, ptr %i.cy, align 8
  store ptr null, ptr %i.cx, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.1 = phi ptr [ %i.cy, %bb.y ], [ %.0178, %bb.x ] ; 3 uses
  %i.da = getelementptr i8, ptr %.val101.val, i64 16
  %.val87 = load ptr, ptr %i.da, align 8          ; 4 uses
  %.not.i104 = icmp eq ptr %.val87, null
  br i1 %.not.i104, label %list_Nconc.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not16.i = icmp eq ptr %.1, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %.val87, %bb.aa ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.ab, label %.preheader.i, !llvm.loop !4

bb.ab:                                            ; preds = %.preheader.i
  store ptr %.1, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %bb.z, %bb.aa, %bb.ab
  %.0.i = phi ptr [ %.val87, %bb.ab ], [ %.1, %bb.z ], [ %.val87, %bb.aa ] ; 2 uses
  %i.db = getelementptr i8, ptr %.val101.val, i64 8
  %.val84 = load ptr, ptr %i.db, align 8
  tail call void @clause_DeleteClauseList(ptr noundef %.val84) #3
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = sext i32 %i.de to i64
  %i.dg = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dh = add i64 %i.dg, %i.df
  store i64 %i.dh, ptr @memory_FREEDBYTES, align 8
  %i.di = load ptr, ptr %i.dc, align 8
  store ptr %i.di, ptr %.val101.val, align 8
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %.val101.val, ptr %i.dj, align 8
  %i.dk = load i32, ptr %i.b, align 8
  %i.dl = add nsw i32 %i.dk, -1                   ; 2 uses
  store i32 %i.dl, ptr %i.b, align 8
  %.val97 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not = icmp eq ptr %.val97, null
  br i1 %.not, label %.critedge2, label %.lr.ph, !llvm.loop !11

.lr.ph186:                                        ; preds = %.lr.ph, %list_Nconc.exit113
  %.val96185 = phi ptr [ %.val96, %list_Nconc.exit113 ], [ %.val97179, %.lr.ph ] ; 4 uses
  %.2184 = phi ptr [ %.0.i112, %list_Nconc.exit113 ], [ %.0178, %.lr.ph ] ; 5 uses
  %i.dm = getelementptr i8, ptr %.val96185, i64 8
  %.val100.val = load ptr, ptr %i.dm, align 8     ; 7 uses
  %i.dn = getelementptr i8, ptr %.val100.val, i64 8
  %.val83 = load ptr, ptr %i.dn, align 8
  %.not172 = icmp eq ptr %.val83, null
  br i1 %.not172, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %.lr.ph186
  %.val.i.i105 = load ptr, ptr %.val96185, align 8
  %i.do = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = sext i32 %i.dq to i64
  %i.ds = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dt = add i64 %i.ds, %i.dr
  store i64 %i.dt, ptr @memory_FREEDBYTES, align 8
  %i.du = load ptr, ptr %i.do, align 8
  store ptr %i.du, ptr %.val96185, align 8
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.val96185, ptr %i.dv, align 8
  store ptr %.val.i.i105, ptr %i.a, align 8
  %i.dw = getelementptr i8, ptr %.val100.val, i64 24
  %.val91 = load ptr, ptr %i.dw, align 8          ; 2 uses
  %.not72 = icmp eq ptr %.val91, null
  br i1 %.not72, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dx = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %.val91, ptr %i.dy, align 8
  store ptr %.2184, ptr %i.dx, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.3 = phi ptr [ %i.dx, %bb.ad ], [ %.2184, %bb.ac ] ; 3 uses
  %i.dz = getelementptr i8, ptr %.val100.val, i64 16
  %.val86 = load ptr, ptr %i.dz, align 8          ; 4 uses
  %.not.i106 = icmp eq ptr %.val86, null
  br i1 %.not.i106, label %list_Nconc.exit113, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not16.i107 = icmp eq ptr %.3, null
  br i1 %.not16.i107, label %list_Nconc.exit113, label %.preheader.i108

.preheader.i108:                                  ; preds = %bb.af, %.preheader.i108
  %.012.i109 = phi ptr [ %.012.val15.i110, %.preheader.i108 ], [ %.val86, %bb.af ] ; 2 uses
  %.012.val15.i110 = load ptr, ptr %.012.i109, align 8 ; 2 uses
  %.not17.i111 = icmp eq ptr %.012.val15.i110, null
  br i1 %.not17.i111, label %bb.ag, label %.preheader.i108, !llvm.loop !4

bb.ag:                                            ; preds = %.preheader.i108
  store ptr %.3, ptr %.012.i109, align 8
  br label %list_Nconc.exit113

list_Nconc.exit113:                               ; preds = %bb.ae, %bb.af, %bb.ag
  %.0.i112 = phi ptr [ %.val86, %bb.ag ], [ %.3, %bb.ae ], [ %.val86, %bb.af ] ; 2 uses
  %i.ea = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = sext i32 %i.ec to i64
  %i.ee = load i64, ptr @memory_FREEDBYTES, align 8
  %i.ef = add i64 %i.ee, %i.ed
  store i64 %i.ef, ptr @memory_FREEDBYTES, align 8
  %i.eg = load ptr, ptr %i.ea, align 8
  store ptr %i.eg, ptr %.val100.val, align 8
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %.val100.val, ptr %i.eh, align 8
  %i.ei = load i32, ptr %i.b, align 8
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr %i.b, align 8
  %.val96 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not170 = icmp eq ptr %.val96, null
  br i1 %.not170, label %.critedge2, label %.lr.ph186, !llvm.loop !12

bb.ah:                                            ; preds = %.lr.ph186
  %i.ek = getelementptr i8, ptr %.val100.val, i64 8 ; 2 uses
  %.val76 = load i32, ptr %i.b, align 8
  %i.el = add nsw i32 %.val76, -1
  %i.em = getelementptr i8, ptr %.val100.val, i64 16 ; 2 uses
  %.val85 = load ptr, ptr %i.em, align 8          ; 3 uses
  %.not.i114 = icmp eq ptr %.val85, null
  %.not12.i = icmp eq ptr %.2184, null            ; 2 uses
  br i1 %.not.i114, label %list_Nconc.exit121, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not12.i, label %list_Nconc.exit121.thread, label %.preheader.i116

.preheader.i116:                                  ; preds = %bb.ai, %.preheader.i116
  %.012.i117 = phi ptr [ %.012.val15.i118, %.preheader.i116 ], [ %.val85, %bb.ai ] ; 2 uses
  %.012.val15.i118 = load ptr, ptr %.012.i117, align 8 ; 2 uses
  %.not17.i119 = icmp eq ptr %.012.val15.i118, null
  br i1 %.not17.i119, label %bb.aj, label %.preheader.i116, !llvm.loop !4

bb.aj:                                            ; preds = %.preheader.i116
  store ptr %.2184, ptr %.012.i117, align 8
  br label %list_Nconc.exit121.thread

list_Nconc.exit121.thread:                        ; preds = %bb.aj, %bb.ai
  store ptr null, ptr %i.em, align 8
  br label %.lr.ph.i122.preheader

list_Nconc.exit121:                               ; preds = %bb.ah
  br i1 %.not12.i, label %split_DeleteInvalidClausesFromList.exit, label %.lr.ph.i122.preheader

.lr.ph.i122.preheader:                            ; preds = %list_Nconc.exit121.thread, %list_Nconc.exit121
  %.0.i120213 = phi ptr [ %.val85, %list_Nconc.exit121.thread ], [ %.2184, %list_Nconc.exit121 ] ; 2 uses
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.lr.ph.i122.preheader, %bb.al
  %.013.i = phi ptr [ %.0.val10.i, %bb.al ], [ %.0.i120213, %.lr.ph.i122.preheader ] ; 2 uses
  %i.en = getelementptr i8, ptr %.013.i, i64 8    ; 2 uses
  %.0.val.i = load ptr, ptr %i.en, align 8        ; 2 uses
  %i.eo = getelementptr i8, ptr %.0.val.i, i64 12
  %.val.i = load i32, ptr %i.eo, align 4
  %.not11.i = icmp ugt i32 %.val.i, %i.el
  br i1 %.not11.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i122
  tail call void @prfs_InsertDocProofClause(ptr noundef %0, ptr noundef nonnull %.0.val.i) #3
  store ptr null, ptr %i.en, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i122
  %.0.val10.i = load ptr, ptr %.013.i, align 8    ; 2 uses
  %.not.i123 = icmp eq ptr %.0.val10.i, null
  br i1 %.not.i123, label %split_DeleteInvalidClausesFromList.exit, label %.lr.ph.i122, !llvm.loop !13

split_DeleteInvalidClausesFromList.exit:          ; preds = %bb.al, %list_Nconc.exit121
  %.0.i120214 = phi ptr [ null, %list_Nconc.exit121 ], [ %.0.i120213, %bb.al ]
  %i.ep = tail call ptr @list_PointerDeleteElement(ptr noundef %.0.i120214, ptr noundef null) #3 ; 3 uses
  %.val82 = load ptr, ptr %i.ek, align 8          ; 5 uses
  store ptr null, ptr %i.ek, align 8
  %cond = icmp eq ptr %.val82, null
  br i1 %cond, label %list_Nconc.exit132, label %.lr.ph190

.lr.ph190:                                        ; preds = %split_DeleteInvalidClausesFromList.exit, %bb.an
  %.067189 = phi ptr [ %.067.val89, %bb.an ], [ %.val82, %split_DeleteInvalidClausesFromList.exit ] ; 2 uses
  %i.eq = getelementptr i8, ptr %.067189, i64 8   ; 4 uses
  %.067.val81 = load ptr, ptr %i.eq, align 8      ; 3 uses
  %.val103 = load i32, ptr %.067.val81, align 8
  %i.er = icmp eq i32 %.val103, 0
  br i1 %i.er, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph190
  store ptr %.067.val81, ptr %2, align 8
  %.067.val79.pre = load ptr, ptr %i.eq, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph190
  %.067.val79 = phi ptr [ %.067.val79.pre, %bb.am ], [ %.067.val81, %.lr.ph190 ]
  %i.es = load i32, ptr @clause_CLAUSECOUNTER, align 4 ; 2 uses
  %i.et = add nsw i32 %i.es, 1
  store i32 %i.et, ptr @clause_CLAUSECOUNTER, align 4
  store i32 %i.es, ptr %.067.val79, align 8
  %.067.val78 = load ptr, ptr %i.eq, align 8
  %.val102 = load i32, ptr %1, align 8
  %i.eu = sext i32 %.val102 to i64
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds nuw i8, ptr %.067.val78, i64 32 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ev, ptr %i.ez, align 8
  store ptr %i.ex, ptr %i.ey, align 8
  store ptr %i.ey, ptr %i.ew, align 8
  %.067.val = load ptr, ptr %i.eq, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.067.val, i64 40 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr null, ptr %i.fd, align 8
  store ptr %i.fb, ptr %i.fc, align 8
  store ptr %i.fc, ptr %i.fa, align 8
  %.067.val89 = load ptr, ptr %.067189, align 8   ; 2 uses
  %.not173 = icmp eq ptr %.067.val89, null
  br i1 %.not173, label %._crit_edge, label %.lr.ph190, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.an
  %.not16.i126 = icmp eq ptr %i.ep, null
  br i1 %.not16.i126, label %list_Nconc.exit132, label %.preheader.i127

.preheader.i127:                                  ; preds = %._crit_edge, %.preheader.i127
  %.012.i128 = phi ptr [ %.012.val15.i129, %.preheader.i127 ], [ %.val82, %._crit_edge ] ; 2 uses
  %.012.val15.i129 = load ptr, ptr %.012.i128, align 8 ; 2 uses
  %.not17.i130 = icmp eq ptr %.012.val15.i129, null
  br i1 %.not17.i130, label %bb.ao, label %.preheader.i127, !llvm.loop !4

bb.ao:                                            ; preds = %.preheader.i127
  store ptr %i.ep, ptr %.012.i128, align 8
  br label %list_Nconc.exit132

list_Nconc.exit132:                               ; preds = %split_DeleteInvalidClausesFromList.exit, %._crit_edge, %bb.ao
  %.0.i131 = phi ptr [ %.val82, %bb.ao ], [ %i.ep, %split_DeleteInvalidClausesFromList.exit ], [ %.val82, %._crit_edge ]
  %i.fe = load i32, ptr %i.b, align 8
  %i.ff = add nsw i32 %i.fe, -1
  store i32 %i.ff, ptr %i.b, align 8
  tail call void @prfs_MoveInvalidClausesDocProof(ptr noundef %0) #3
  %.val18.i = load i32, ptr %i.b, align 8         ; 2 uses
  %.028.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not29.i = icmp eq ptr %.028.i, null
  br i1 %.not29.i, label %split_DeleteInvalidClausesFromStack.exit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %list_Nconc.exit132, %._crit_edge.i134
  %.030.i = phi ptr [ %.0.i136, %._crit_edge.i134 ], [ %.028.i, %list_Nconc.exit132 ] ; 2 uses
  %i.fg = getelementptr i8, ptr %.030.i, i64 8    ; 2 uses
  %.0.val19.i = load ptr, ptr %i.fg, align 8      ; 2 uses
  %i.fh = getelementptr i8, ptr %.0.val19.i, i64 16
  %.val20.i = load ptr, ptr %i.fh, align 8        ; 3 uses
  %.not2426.i = icmp eq ptr %.val20.i, null
  br i1 %.not2426.i, label %._crit_edge.i134, label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph32.i, %bb.aq
  %.01527.i = phi ptr [ %.015.val22.i, %bb.aq ], [ %.val20.i, %.lr.ph32.i ] ; 2 uses
  %i.fi = getelementptr i8, ptr %.01527.i, i64 8  ; 2 uses
  %.015.val.i = load ptr, ptr %i.fi, align 8      ; 2 uses
  %i.fj = getelementptr i8, ptr %.015.val.i, i64 12
  %.val23.i = load i32, ptr %i.fj, align 4
  %.not25.i = icmp ugt i32 %.val23.i, %.val18.i
  br i1 %.not25.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i133
  tail call void @prfs_InsertDocProofClause(ptr noundef %0, ptr noundef nonnull %.015.val.i) #3
  store ptr null, ptr %i.fi, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i133
  %.015.val22.i = load ptr, ptr %.01527.i, align 8 ; 2 uses
  %.not24.i = icmp eq ptr %.015.val22.i, null
  br i1 %.not24.i, label %._crit_edge.loopexit.i, label %.lr.ph.i133, !llvm.loop !15

._crit_edge.loopexit.i:                           ; preds = %bb.aq
  %.0.val.pre.i = load ptr, ptr %i.fg, align 8
  br label %._crit_edge.i134

._crit_edge.i134:                                 ; preds = %._crit_edge.loopexit.i, %.lr.ph32.i
  %.0.val.i135 = phi ptr [ %.0.val.pre.i, %._crit_edge.loopexit.i ], [ %.0.val19.i, %.lr.ph32.i ]
  %i.fk = tail call ptr @list_PointerDeleteElement(ptr noundef %.val20.i, ptr noundef null) #3
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.val.i135, i64 16
  store ptr %i.fk, ptr %i.fl, align 8
  %.0.i136 = load ptr, ptr %.030.i, align 8       ; 2 uses
  %.not.i137 = icmp eq ptr %.0.i136, null
  br i1 %.not.i137, label %split_DeleteInvalidClausesFromStack.exit.loopexit, label %.lr.ph32.i, !llvm.loop !16

split_DeleteInvalidClausesFromStack.exit.loopexit: ; preds = %._crit_edge.i134
  %.pre = load i32, ptr %i.b, align 8
  br label %split_DeleteInvalidClausesFromStack.exit

split_DeleteInvalidClausesFromStack.exit:         ; preds = %split_DeleteInvalidClausesFromStack.exit.loopexit, %list_Nconc.exit132
  %i.fm = phi i32 [ %.pre, %split_DeleteInvalidClausesFromStack.exit.loopexit ], [ %.val18.i, %list_Nconc.exit132 ]
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.b, align 8
  br label %list_Delete.exit

.critedge2:                                       ; preds = %list_Nconc.exit, %list_Nconc.exit113, %split_RemoveUnnecessarySplits.exit
  %.2.lcssa = phi ptr [ %.045.lcssa.i, %split_RemoveUnnecessarySplits.exit ], [ %.0.i112, %list_Nconc.exit113 ], [ %.0.i, %list_Nconc.exit ] ; 3 uses
  tail call void @prfs_MoveInvalidClausesDocProof(ptr noundef nonnull %0) #3
  %cond196 = icmp eq ptr %.2.lcssa, null
  br i1 %cond196, label %list_Delete.exit, label %.lr.ph193

.lr.ph193:                                        ; preds = %.critedge2, %.lr.ph193
  %.168192 = phi ptr [ %.168.val88, %.lr.ph193 ], [ %.2.lcssa, %.critedge2 ] ; 2 uses
  %i.fo = getelementptr i8, ptr %.168192, i64 8
  %.168.val = load ptr, ptr %i.fo, align 8
  tail call void @prfs_InsertDocProofClause(ptr noundef nonnull %0, ptr noundef %.168.val) #3
  %.168.val88 = load ptr, ptr %.168192, align 8   ; 2 uses
  %.not171 = icmp eq ptr %.168.val88, null
  br i1 %.not171, label %.lr.ph.i138, label %.lr.ph193, !llvm.loop !17

.lr.ph.i138:                                      ; preds = %.lr.ph193, %.lr.ph.i138
  %.07.i = phi ptr [ %.0.val.i139, %.lr.ph.i138 ], [ %.2.lcssa, %.lr.ph193 ] ; 3 uses
  %.0.val.i139 = load ptr, ptr %.07.i, align 8    ; 2 uses
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = sext i32 %i.fr to i64
  %i.ft = load i64, ptr @memory_FREEDBYTES, align 8
  %i.fu = add i64 %i.ft, %i.fs
  store i64 %i.fu, ptr @memory_FREEDBYTES, align 8
  %i.fv = load ptr, ptr %i.fp, align 8
  store ptr %i.fv, ptr %.07.i, align 8
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.fw, align 8
  %.not.i140 = icmp eq ptr %.0.val.i139, null
  br i1 %.not.i140, label %list_Delete.exit, label %.lr.ph.i138, !llvm.loop !18

list_Delete.exit:                                 ; preds = %.lr.ph.i138, %.critedge2, %split_DeleteInvalidClausesFromStack.exit
  %.4 = phi ptr [ %.0.i131, %split_DeleteInvalidClausesFromStack.exit ], [ null, %.critedge2 ], [ null, %.lr.ph.i138 ]
  %.val = load i32, ptr %i.b, align 8
  store i32 %.val, ptr %i.c, align 4
  ret ptr %.4
}

declare void @clause_DeleteClauseList(ptr noundef) local_unnamed_addr #1

declare void @prfs_MoveInvalidClausesDocProof(ptr noundef) local_unnamed_addr #1

declare void @prfs_InsertDocProofClause(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @split_DeleteClauseAtLevel(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %.val = load i32, ptr %i.a, align 8
  %i.b = and i32 %.val, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @prfs_ExtractWorkedOff(ptr noundef %0, ptr noundef nonnull %1) #3
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @prfs_ExtractUsable(ptr noundef %0, ptr noundef nonnull %1) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr i8, ptr %0, i64 120
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.0.val7.sink.i.in.i = phi ptr [ %i.c, %bb.d ], [ %.0.val7.sink.i.i, %.lr.ph.i.i ]
  %.0.val7.sink.i.i = load ptr, ptr %.0.val7.sink.i.in.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr i8, ptr %.0.val7.sink.i.i, i64 8
  %.0.val6.i.i = load ptr, ptr %i.d, align 8      ; 2 uses
  %i.e = load i32, ptr %.0.val6.i.i, align 8
  %.not5.i.i = icmp eq i32 %i.e, %2
  br i1 %.not5.i.i, label %split_KeepClauseAtLevel.exit, label %.lr.ph.i.i

split_KeepClauseAtLevel.exit:                     ; preds = %.lr.ph.i.i
  %i.f = getelementptr i8, ptr %.0.val6.i.i, i64 16 ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8
  %i.g = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %1, ptr %i.h, align 8
  store ptr %.val.i, ptr %i.g, align 8
  store ptr %i.g, ptr %i.f, align 8
  ret void
}

declare void @prfs_ExtractWorkedOff(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @prfs_ExtractUsable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @split_KeepClauseAtLevel(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.0.val7.sink.i.in = phi ptr [ %i.a, %bb.a ], [ %.0.val7.sink.i, %.lr.ph.i ]
  %.0.val7.sink.i = load ptr, ptr %.0.val7.sink.i.in, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.b = getelementptr i8, ptr %.0.val7.sink.i, i64 8
  %.0.val6.i = load ptr, ptr %i.b, align 8        ; 2 uses
  %i.c = load i32, ptr %.0.val6.i, align 8
  %.not5.i = icmp eq i32 %i.c, %2
  br i1 %.not5.i, label %prfs_GetSplitOfLevel.exit, label %.lr.ph.i

prfs_GetSplitOfLevel.exit:                        ; preds = %.lr.ph.i
  %i.d = getelementptr i8, ptr %.0.val6.i, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8
  %i.e = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  store ptr %.val, ptr %i.e, align 8
  store ptr %i.e, ptr %i.d, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @split_ExtractEmptyClauses(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not15 = icmp eq ptr %0, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %clause_IsEmptyClause.exit.thread
  %.016 = phi ptr [ %.0.val12, %clause_IsEmptyClause.exit.thread ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %.016, i64 8       ; 2 uses
  %.0.val = load ptr, ptr %i.a, align 8           ; 5 uses
  %.not.i = icmp eq ptr %.0.val, null
  br i1 %.not.i, label %clause_IsEmptyClause.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr i8, ptr %.0.val, i64 68
  %.val.i = load i32, ptr %i.b, align 4
  %.not8.i = icmp eq i32 %.val.i, 0
  br i1 %.not8.i, label %bb.c, label %clause_IsEmptyClause.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %.0.val, i64 72
  %.val6.i = load i32, ptr %i.c, align 8
  %.not9.i = icmp eq i32 %.val6.i, 0
  br i1 %.not9.i, label %clause_IsEmptyClause.exit, label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit:                        ; preds = %bb.c
  %i.d = getelementptr i8, ptr %.0.val, i64 64
  %.val7.i = load i32, ptr %i.d, align 8
  %.not14 = icmp eq i32 %.val7.i, 0
  br i1 %.not14, label %bb.d, label %clause_IsEmptyClause.exit.thread

bb.d:                                             ; preds = %clause_IsEmptyClause.exit
  %i.e = load ptr, ptr %1, align 8
  %i.f = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.0.val, ptr %i.g, align 8
  store ptr %i.e, ptr %i.f, align 8
  store ptr %i.f, ptr %1, align 8
  store ptr null, ptr %i.a, align 8
  br label %clause_IsEmptyClause.exit.thread

clause_IsEmptyClause.exit.thread:                 ; preds = %.lr.ph, %bb.b, %bb.c, %clause_IsEmptyClause.exit, %bb.d
  %.0.val12 = load ptr, ptr %.016, align 8        ; 2 uses
  %.not = icmp eq ptr %.0.val12, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %clause_IsEmptyClause.exit.thread, %bb.a
  %i.h = tail call ptr @list_PointerDeleteElement(ptr noundef %0, ptr noundef null) #3
  ret ptr %i.h
}

declare ptr @list_PointerDeleteElement(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @split_SmallestSplitLevelClause(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.0813 = load ptr, ptr %0, align 8              ; 2 uses
  %.not14 = icmp eq ptr %.0813, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0816 = phi ptr [ %.08, %.lr.ph ], [ %.0813, %bb.a ] ; 2 uses
  %.015.a = phi ptr [ %spec.select, %.lr.ph ], [ %.val, %bb.a ] ; 2 uses
  %1 = getelementptr i8, ptr %.015.a, i64 12
  %.0.val = load i32, ptr %1, align 4
  %i.b = getelementptr i8, ptr %.0816, i64 8
  %.08.val9 = load ptr, ptr %i.b, align 8         ; 2 uses
  %i.c = getelementptr i8, ptr %.08.val9, i64 12
  %.val12 = load i32, ptr %i.c, align 4
  %i.d = icmp ugt i32 %.0.val, %.val12
  %spec.select = select i1 %i.d, ptr %.08.val9, ptr %.015.a ; 2 uses
  %.08 = load ptr, ptr %.0816, align 8            ; 2 uses
  %.not = icmp eq ptr %.08, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %.val, %bb.a ], [ %spec.select, %.lr.ph ]
  ret ptr %.0.lcssa
}

declare ptr @memory_Malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @split_DeleteClausesDependingOnLevelFromSet(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %.not38 = icmp eq ptr %1, null
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = icmp eq i32 %2, 0
  %i.b = icmp ugt i32 %2, 63
  %i.c = add i32 %2, -64
  %i.d = lshr i32 %i.c, 6
  %i.e = add nuw nsw i32 %i.d, 1
  %storemerge.i.i = select i1 %i.b, i32 %i.e, i32 0 ; 2 uses
  %i.f = and i32 %2, 63
  %i.g = zext nneg i32 %storemerge.i.i to i64
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = getelementptr i8, ptr %0, i64 120        ; 2 uses
  br i1 %i.a, label %clause_DependsOnSplitLevel.exit.thread34.us, label %.lr.ph.split

clause_DependsOnSplitLevel.exit.thread34.us:      ; preds = %.lr.ph, %list_Nconc.exit.us
  %.041.us = phi ptr [ %.0.val27.us, %list_Nconc.exit.us ], [ %1, %.lr.ph ] ; 2 uses
  %.02140.us = phi ptr [ %.0.i.us, %list_Nconc.exit.us ], [ null, %.lr.ph ] ; 3 uses
  %.02239.us = phi ptr [ %i.p, %list_Nconc.exit.us ], [ null, %.lr.ph ]
  %i.k = getelementptr i8, ptr %.041.us, i64 8
  %.0.val.us = load ptr, ptr %i.k, align 8        ; 2 uses
  %i.l = getelementptr i8, ptr %.0.val.us, i64 12
  %.val28.us = load i32, ptr %i.l, align 4
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %clause_DependsOnSplitLevel.exit.thread34.us
  %.0.val7.sink.i.in.us = phi ptr [ %i.j, %clause_DependsOnSplitLevel.exit.thread34.us ], [ %.0.val7.sink.i.us, %.lr.ph.i.us ]
  %.0.val7.sink.i.us = load ptr, ptr %.0.val7.sink.i.in.us, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = getelementptr i8, ptr %.0.val7.sink.i.us, i64 8
  %.0.val6.i.us = load ptr, ptr %i.m, align 8     ; 2 uses
  %i.n = load i32, ptr %.0.val6.i.us, align 8
  %.not5.i.us = icmp eq i32 %i.n, %.val28.us
  br i1 %.not5.i.us, label %prfs_GetSplitOfLevel.exit.us, label %.lr.ph.i.us

prfs_GetSplitOfLevel.exit.us:                     ; preds = %.lr.ph.i.us
  %i.o = getelementptr i8, ptr %.0.val6.i.us, i64 16 ; 2 uses
  %.val.us = load ptr, ptr %i.o, align 8          ; 4 uses
  %.not.i31.us = icmp eq ptr %.val.us, null
  br i1 %.not.i31.us, label %list_Nconc.exit.us, label %bb.b

bb.b:                                             ; preds = %prfs_GetSplitOfLevel.exit.us
  %.not16.i.us = icmp eq ptr %.02140.us, null
  br i1 %.not16.i.us, label %list_Nconc.exit.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.b, %.preheader.i.us
  %.012.i.us = phi ptr [ %.012.val15.i.us, %.preheader.i.us ], [ %.val.us, %bb.b ] ; 2 uses
  %.012.val15.i.us = load ptr, ptr %.012.i.us, align 8 ; 2 uses
  %.not17.i.us = icmp eq ptr %.012.val15.i.us, null
  br i1 %.not17.i.us, label %bb.c, label %.preheader.i.us, !llvm.loop !4

bb.c:                                             ; preds = %.preheader.i.us
  store ptr %.02140.us, ptr %.012.i.us, align 8
  br label %list_Nconc.exit.us

list_Nconc.exit.us:                               ; preds = %bb.c, %bb.b, %prfs_GetSplitOfLevel.exit.us
  %.0.i.us = phi ptr [ %.val.us, %bb.c ], [ %.02140.us, %prfs_GetSplitOfLevel.exit.us ], [ %.val.us, %bb.b ] ; 2 uses
  store ptr null, ptr %i.o, align 8
  %i.p = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.0.val.us, ptr %i.q, align 8
  store ptr %.02239.us, ptr %i.p, align 8
  %.0.val27.us = load ptr, ptr %.041.us, align 8  ; 2 uses
  %.not.us = icmp eq ptr %.0.val27.us, null
  br i1 %.not.us, label %.lr.ph46.preheader, label %clause_DependsOnSplitLevel.exit.thread34.us, !llvm.loop !21

.preheader:                                       ; preds = %clause_DependsOnSplitLevel.exit.thread
  %.not3744 = icmp eq ptr %.123, null
  br i1 %.not3744, label %._crit_edge, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %list_Nconc.exit.us, %.preheader
  %.021.lcssa57 = phi ptr [ %.1, %.preheader ], [ %.0.i.us, %list_Nconc.exit.us ]
  %.022.lcssa56 = phi ptr [ %.123, %.preheader ], [ %i.p, %list_Nconc.exit.us ]
  br label %.lr.ph46

.lr.ph.split:                                     ; preds = %.lr.ph, %clause_DependsOnSplitLevel.exit.thread
  %.041 = phi ptr [ %.0.val27, %clause_DependsOnSplitLevel.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %.02140 = phi ptr [ %.1, %clause_DependsOnSplitLevel.exit.thread ], [ null, %.lr.ph ] ; 5 uses
  %.02239 = phi ptr [ %.123, %clause_DependsOnSplitLevel.exit.thread ], [ null, %.lr.ph ] ; 3 uses
  %i.r = getelementptr i8, ptr %.041, i64 8
  %.0.val = load ptr, ptr %i.r, align 8           ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.t = load i32, ptr %i.s, align 8
  %.not.i = icmp ult i32 %storemerge.i.i, %i.t
  br i1 %.not.i, label %clause_DependsOnSplitLevel.exit, label %clause_DependsOnSplitLevel.exit.thread

clause_DependsOnSplitLevel.exit:                  ; preds = %.lr.ph.split
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.g
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, %i.i
  %.not26 = icmp eq i64 %i.y, 0
  br i1 %.not26, label %clause_DependsOnSplitLevel.exit.thread, label %clause_DependsOnSplitLevel.exit.thread34

clause_DependsOnSplitLevel.exit.thread34:         ; preds = %clause_DependsOnSplitLevel.exit
  %i.z = getelementptr i8, ptr %.0.val, i64 12
  %.val28 = load i32, ptr %i.z, align 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %clause_DependsOnSplitLevel.exit.thread34
  %.0.val7.sink.i.in = phi ptr [ %i.j, %clause_DependsOnSplitLevel.exit.thread34 ], [ %.0.val7.sink.i, %.lr.ph.i ]
  %.0.val7.sink.i = load ptr, ptr %.0.val7.sink.i.in, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.aa = getelementptr i8, ptr %.0.val7.sink.i, i64 8
  %.0.val6.i = load ptr, ptr %i.aa, align 8       ; 2 uses
  %i.ab = load i32, ptr %.0.val6.i, align 8
  %.not5.i = icmp eq i32 %i.ab, %.val28
  br i1 %.not5.i, label %prfs_GetSplitOfLevel.exit, label %.lr.ph.i

prfs_GetSplitOfLevel.exit:                        ; preds = %.lr.ph.i
  %i.ac = getelementptr i8, ptr %.0.val6.i, i64 16 ; 2 uses
  %.val = load ptr, ptr %i.ac, align 8            ; 4 uses
  %.not.i31 = icmp eq ptr %.val, null
  br i1 %.not.i31, label %list_Nconc.exit, label %bb.d

bb.d:                                             ; preds = %prfs_GetSplitOfLevel.exit
  %.not16.i = icmp eq ptr %.02140, null
  br i1 %.not16.i, label %list_Nconc.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.012.i = phi ptr [ %.012.val15.i, %.preheader.i ], [ %.val, %bb.d ] ; 2 uses
  %.012.val15.i = load ptr, ptr %.012.i, align 8  ; 2 uses
  %.not17.i = icmp eq ptr %.012.val15.i, null
  br i1 %.not17.i, label %bb.e, label %.preheader.i, !llvm.loop !4

bb.e:                                             ; preds = %.preheader.i
  store ptr %.02140, ptr %.012.i, align 8
  br label %list_Nconc.exit

list_Nconc.exit:                                  ; preds = %prfs_GetSplitOfLevel.exit, %bb.d, %bb.e
  %.0.i = phi ptr [ %.val, %bb.e ], [ %.02140, %prfs_GetSplitOfLevel.exit ], [ %.val, %bb.d ]
  store ptr null, ptr %i.ac, align 8
  %i.ad = tail call noundef ptr @memory_Malloc(i32 noundef 16) #3 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.0.val, ptr %i.ae, align 8
  store ptr %.02239, ptr %i.ad, align 8
  br label %clause_DependsOnSplitLevel.exit.thread

clause_DependsOnSplitLevel.exit.thread:           ; preds = %.lr.ph.split, %clause_DependsOnSplitLevel.exit, %list_Nconc.exit
  %.123 = phi ptr [ %i.ad, %list_Nconc.exit ], [ %.02239, %clause_DependsOnSplitLevel.exit ], [ %.02239, %.lr.ph.split ] ; 3 uses
  %.1 = phi ptr [ %.0.i, %list_Nconc.exit ], [ %.02140, %clause_DependsOnSplitLevel.exit ], [ %.02140, %.lr.ph.split ] ; 3 uses
  %.0.val27 = load ptr, ptr %.041, align 8        ; 2 uses
  %.not = icmp eq ptr %.0.val27, null
  br i1 %.not, label %.preheader, label %.lr.ph.split, !llvm.loop !21

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %bb.h
  %.245 = phi ptr [ %.val.i, %bb.h ], [ %.022.lcssa56, %.lr.ph46.preheader ] ; 4 uses
  %i.af = getelementptr i8, ptr %.245, i64 8
  %.2.val = load ptr, ptr %i.af, align 8          ; 3 uses
  %i.ag = getelementptr i8, ptr %.2.val, i64 48
  %.val30 = load i32, ptr %i.ag, align 8
  %i.ah = and i32 %.val30, 1
  %.not25 = icmp eq i32 %i.ah, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph46
  tail call void @prfs_MoveWorkedOffDocProof(ptr noundef %0, ptr noundef nonnull %.2.val) #3
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph46
  tail call void @prfs_MoveUsableDocProof(ptr noundef %0, ptr noundef nonnull %.2.val) #3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.val.i = load ptr, ptr %.245, align 8          ; 2 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = load i64, ptr @memory_FREEDBYTES, align 8
  %i.an = add i64 %i.am, %i.al
  store i64 %i.an, ptr @memory_FREEDBYTES, align 8
  %i.ao = load ptr, ptr %i.ai, align 8
  store ptr %i.ao, ptr %.245, align 8
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.245, ptr %i.ap, align 8
  %.not37 = icmp eq ptr %.val.i, null
  br i1 %.not37, label %._crit_edge, label %.lr.ph46, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.h, %bb.a, %.preheader
  %.021.lcssa51 = phi ptr [ null, %bb.a ], [ %.1, %.preheader ], [ %.021.lcssa57, %bb.h ]
  ret ptr %.021.lcssa51
}

declare void @prfs_MoveWorkedOffDocProof(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @prfs_MoveUsableDocProof(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
end_hunk_0
