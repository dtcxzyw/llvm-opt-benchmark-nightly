inline.NumInlined: 12424
inline.NumDeleted: 1708
begin_hunk_0_@sqlite3BtreePutData:bb.a
  br i1 %.not.us.i, label %.critedge.i, label %.lr.ph.split.us.i, !llvm.loop !1017

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.f
  %.022.i = phi ptr [ %.0.i, %bb.f ], [ %.020.i, %.lr.ph.i ] ; 4 uses
  %.not17.i = icmp eq ptr %.022.i, %0
  br i1 %.not17.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.l = getelementptr inbounds nuw i8, ptr %.022.i, i64 80
  %i.m = load i32, ptr %i.l, align 8, !tbaa !1016
  %i.n = icmp eq i32 %i.m, %i.h
  br i1 %i.n, label %.split.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.022.i, i64 40
  %.0.i = load ptr, ptr %i.o, align 8, !tbaa !743 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.split.i, !llvm.loop !1017

.split.us.i:                                      ; preds = %bb.e, %.lr.ph.split.us.i
  %.us-phi.i = phi ptr [ %.022.us.i, %.lr.ph.split.us.i ], [ %.022.i, %bb.e ]
  %i.p = tail call fastcc i32 @saveCursorsOnList(ptr noundef %.us-phi.i, i32 noundef %i.h, ptr noundef nonnull %0), !inline_history !759 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !744
  br label %saveAllCursors.exit

.critedge.i:                                      ; preds = %bb.f, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !744
  %i.s = and i8 %i.r, -33                         ; 2 uses
  store i8 %i.s, ptr %i.q, align 1, !tbaa !744
  br label %saveAllCursors.exit

saveAllCursors.exit:                              ; preds = %.split.us.i, %.critedge.i
  %i.t = phi i8 [ %.pre, %.split.us.i ], [ %i.s, %.critedge.i ]
  %i.u = and i8 %i.t, 1
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %saveAllCursors.exit
  %i.w = tail call fastcc i32 @accessPayload(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %saveAllCursors.exit, %.thread, %bb.b, %bb.g
  %.0 = phi i32 [ %i.w, %bb.g ], [ %i.c, %bb.b ], [ 4, %.thread ], [ 8, %saveAllCursors.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i32 @sqlite3_blob_bytes(ptr noundef readonly captures(address_is_null) %0) #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !940
  %.not4 = icmp eq ptr %i.b, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !996
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.d = phi i32 [ %i.c, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_blob_reopen(ptr noundef captures(address_is_null) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 105484, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3_mutex_leave.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !953  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.g(ptr noundef nonnull %i.f) #59, !inline_history !17
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !940  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i32 0, ptr %i.k, align 4, !tbaa !530
  %i.l = call fastcc i32 @blobSeekToRow(ptr noundef %0, i64 noundef %1, ptr noundef %i.a) ; 3 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !251  ; 3 uses
  %.not19 = icmp eq ptr %i.m, null                ; 2 uses
  %i.n = select i1 %.not19, ptr null, ptr @.str.30
  tail call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef nonnull %i.d, i32 noundef %i.l, ptr noundef %i.n, ptr noundef %i.m)
  br i1 %.not19, label %.thread25, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %i.d, ptr noundef nonnull %i.m)
  br label %.thread25

.thread25:                                        ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %.thread

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 103
  %i.p = load i8, ptr %i.o, align 1, !tbaa !550
  %.not27 = icmp eq i8 %i.p, 0
  br i1 %.not27, label %sqlite3ApiExit.exit, label %.thread

.thread:                                          ; preds = %sqlite3_mutex_enter.exit, %.thread25, %bb.h
  %.01624 = phi i32 [ %i.l, %.thread25 ], [ 0, %bb.h ], [ 4, %sqlite3_mutex_enter.exit ]
  %i.q = tail call fastcc i32 @apiHandleError(ptr noundef nonnull %i.d, i32 noundef %.01624)
  br label %sqlite3ApiExit.exit

sqlite3ApiExit.exit:                              ; preds = %bb.h, %.thread
  %.0.i = phi i32 [ %i.q, %.thread ], [ 0, %bb.h ] ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %.not.i21 = icmp eq ptr %i.r, null
  br i1 %.not.i21, label %sqlite3_mutex_leave.exit, label %bb.i

bb.i:                                             ; preds = %sqlite3ApiExit.exit
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.s(ptr noundef nonnull %i.r) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.i, %sqlite3ApiExit.exit, %bb.b
  %.0 = phi i32 [ 21, %bb.b ], [ %.0.i, %sqlite3ApiExit.exit ], [ %.0.i, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @sqlite3_set_authorizer(ptr noundef captures(none) initializes((528, 544)) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.c(ptr noundef nonnull %i.b) #59, !inline_history !17
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  store ptr %1, ptr %i.d, align 8, !tbaa !1018
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %2, ptr %i.e, align 8, !tbaa !1019
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.04.i = load ptr, ptr %i.f, align 8, !tbaa !128 ; 2 uses
  %.not5.i = icmp eq ptr %.04.i, null
  br i1 %.not5.i, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3_mutex_enter.exit, %.lr.ph.i
  %.06.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.04.i, %sqlite3_mutex_enter.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 200 ; 2 uses
  %i.h = load i16, ptr %i.g, align 8
  %i.i = and i16 %i.h, -4
  %i.j = or disjoint i16 %i.i, 2
  store i16 %i.j, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %.0.i = load ptr, ptr %i.k, align 8, !tbaa !128 ; 2 uses
  %.not.i7 = icmp eq ptr %.0.i, null
  br i1 %.not.i7, label %sqlite3ExpirePreparedStatements.exit, label %.lr.ph.i, !llvm.loop !1020

sqlite3ExpirePreparedStatements.exit:             ; preds = %.lr.ph.i, %sqlite3_mutex_enter.exit
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i8 = icmp eq ptr %i.l, null
  br i1 %.not.i8, label %sqlite3_mutex_leave.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3ExpirePreparedStatements.exit
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.m(ptr noundef nonnull %i.l) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %sqlite3ExpirePreparedStatements.exit, %bb.c
  ret i32 0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 3) i32 @sqlite3_strglob(ptr noundef readonly %0, ptr noundef readonly %1) #19 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, null
  %i.c = zext i1 %i.b to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc i32 @patternCompare(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @globInfo, i32 noundef 91)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 3) i32 @patternCompare(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #19 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 17 uses
  %i.b = alloca [3 x i8], align 1                 ; 7 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1021  ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = load i8, ptr %2, align 1, !tbaa !1023
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1024
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %.not119 = icmp eq i8 %i.i, 0                   ; 2 uses
  br label %.critedge130.outer

.critedge130.outer:                               ; preds = %.critedge130.outer.backedge, %bb.a
  %.lcssa344345 = phi ptr [ %0, %bb.a ], [ %.lcssa344346, %.critedge130.outer.backedge ]
  %.0241.ph = phi ptr [ %1, %bb.a ], [ %.9, %.critedge130.outer.backedge ]
  %.0101.ph = phi ptr [ null, %bb.a ], [ %.1102, %.critedge130.outer.backedge ]
  br label %.critedge130

.critedge130:                                     ; preds = %.critedge130.outer, %bb.ao
  %.lcssa324327.lcssa331343 = phi ptr [ %.lcssa324327, %bb.ao ], [ %.lcssa344345, %.critedge130.outer ] ; 2 uses
  %.0241 = phi ptr [ %.15271, %bb.ao ], [ %.0241.ph, %.critedge130.outer ] ; 6 uses
  %i.k = load i8, ptr %.lcssa324327.lcssa331343, align 1, !tbaa !227 ; 4 uses
  %i.l = icmp sgt i8 %i.k, -1
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa324327.lcssa331343, i64 1 ; 6 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !251
  %i.n = zext i8 %i.k to i32                      ; 2 uses
  br i1 %i.l, label %sqlite3Utf8Read.exit, label %bb.b

bb.b:                                             ; preds = %.critedge130
  %i.o = icmp samesign ugt i8 %i.k, -65
  br i1 %i.o, label %bb.c, label %sqlite3Utf8Read.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = zext i8 %i.k to i64
  %i.q = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -192
  %i.s = load i8, ptr %i.r, align 1, !tbaa !227
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = load i8, ptr %i.m, align 1, !tbaa !227   ; 2 uses
  %i.v = icmp slt i8 %i.u, -64
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.w = phi i8 [ %i.ad, %.lr.ph.i ], [ %i.u, %bb.c ]
  %.014.i = phi i32 [ %i.ac, %.lr.ph.i ], [ %i.t, %bb.c ]
  %i.x = phi ptr [ %i.z, %.lr.ph.i ], [ %i.m, %bb.c ]
  %i.y = shl i32 %.014.i, 6
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 4 uses
  %i.aa = and i8 %i.w, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab             ; 2 uses
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !227  ; 2 uses
  %i.ae = icmp slt i8 %i.ad, -64
  br i1 %i.ae, label %.lr.ph.i, label %._crit_edge.i.loopexit, !llvm.loop !1025

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  store ptr %i.z, ptr %i.a, align 8, !tbaa !251
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.c
  %.lcssa324327.lcssa331342 = phi ptr [ %i.m, %bb.c ], [ %i.z, %._crit_edge.i.loopexit ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.t, %bb.c ], [ %i.ac, %._crit_edge.i.loopexit ] ; 4 uses
  %i.af = icmp ult i32 %.0.lcssa.i, 128
  %i.ag = and i32 %.0.lcssa.i, -2048
  %i.ah = icmp eq i32 %i.ag, 55296
  %or.cond.i = or i1 %i.af, %i.ah
  %i.ai = and i32 %.0.lcssa.i, -2
  %i.aj = icmp eq i32 %i.ai, 65534
  %or.cond13.i = or i1 %i.aj, %or.cond.i
  br i1 %or.cond13.i, label %sqlite3Utf8Read.exit.thread.thread, label %sqlite3Utf8Read.exit

sqlite3Utf8Read.exit:                             ; preds = %.critedge130, %._crit_edge.i
  %.lcssa324327.lcssa331340 = phi ptr [ %.lcssa324327.lcssa331342, %._crit_edge.i ], [ %i.m, %.critedge130 ]
  %i.ak = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.n, %.critedge130 ] ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.au, label %sqlite3Utf8Read.exit.thread

sqlite3Utf8Read.exit.thread:                      ; preds = %bb.b, %sqlite3Utf8Read.exit
  %.promoted354 = phi ptr [ %.lcssa324327.lcssa331340, %sqlite3Utf8Read.exit ], [ %i.m, %bb.b ] ; 2 uses
  %i.al = phi i32 [ %i.ak, %sqlite3Utf8Read.exit ], [ %i.n, %bb.b ] ; 2 uses
  %i.am = icmp eq i32 %i.al, %i.g
  br i1 %i.am, label %.preheader283, label %sqlite3Utf8Read.exit.thread.thread

.preheader283:                                    ; preds = %sqlite3Utf8Read.exit.thread
  %i.an = icmp ne i8 %i.d, 0
  br label %sqlite3Utf8Read.exit148.thread.outer

sqlite3Utf8Read.exit148.thread.outer:             ; preds = %sqlite3Utf8Read.exit148.thread.outer.backedge, %.preheader283
  %.lcssa353355.ph = phi ptr [ %.promoted354, %.preheader283 ], [ %i.bm, %sqlite3Utf8Read.exit148.thread.outer.backedge ]
  %.1242.ph = phi ptr [ %.0241, %.preheader283 ], [ %.1242.ph.be, %sqlite3Utf8Read.exit148.thread.outer.backedge ] ; 6 uses
  br label %sqlite3Utf8Read.exit148.thread

sqlite3Utf8Read.exit148.thread:                   ; preds = %sqlite3Utf8Read.exit148.thread.outer, %.critedge
  %.lcssa353355 = phi ptr [ %i.bm, %.critedge ], [ %.lcssa353355.ph, %sqlite3Utf8Read.exit148.thread.outer ] ; 2 uses
  %i.ao = load i8, ptr %.lcssa353355, align 1, !tbaa !227 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa353355, i64 1 ; 5 uses
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !251
  %i.aq = zext i8 %i.ao to i32
  %or.cond505 = icmp ugt i8 %i.ao, -65
  br i1 %or.cond505, label %bb.d, label %sqlite3Utf8Read.exit139

bb.d:                                             ; preds = %sqlite3Utf8Read.exit148.thread
  %i.ar = zext i8 %i.ao to i64
  %i.as = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -192
  %i.au = load i8, ptr %i.at, align 1, !tbaa !227
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  %i.aw = load i8, ptr %i.ap, align 1, !tbaa !227 ; 2 uses
  %i.ax = icmp slt i8 %i.aw, -64
  br i1 %i.ax, label %.lr.ph.i137, label %._crit_edge.i132

.lr.ph.i137:                                      ; preds = %bb.d, %.lr.ph.i137
  %i.ay = phi i8 [ %i.bf, %.lr.ph.i137 ], [ %i.aw, %bb.d ]
  %.014.i138 = phi i32 [ %i.be, %.lr.ph.i137 ], [ %i.av, %bb.d ]
  %i.az = phi ptr [ %i.bb, %.lr.ph.i137 ], [ %i.ap, %bb.d ]
  %i.ba = shl i32 %.014.i138, 6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 4 uses
  %i.bc = and i8 %i.ay, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.ba, %i.bd            ; 2 uses
  %i.bf = load i8, ptr %i.bb, align 1, !tbaa !227 ; 2 uses
  %i.bg = icmp slt i8 %i.bf, -64
  br i1 %i.bg, label %.lr.ph.i137, label %._crit_edge.i132.loopexit, !llvm.loop !1025

._crit_edge.i132.loopexit:                        ; preds = %.lr.ph.i137
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !251
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %._crit_edge.i132.loopexit, %bb.d
  %.lcssa353357 = phi ptr [ %i.ap, %bb.d ], [ %i.bb, %._crit_edge.i132.loopexit ]
  %.0.lcssa.i133 = phi i32 [ %i.av, %bb.d ], [ %i.be, %._crit_edge.i132.loopexit ] ; 4 uses
  %i.bh = icmp ult i32 %.0.lcssa.i133, 128
  %i.bi = and i32 %.0.lcssa.i133, -2048
  %i.bj = icmp eq i32 %i.bi, 55296
  %or.cond.i134 = or i1 %i.bh, %i.bj
  %i.bk = and i32 %.0.lcssa.i133, -2
  %i.bl = icmp eq i32 %i.bk, 65534
  %or.cond13.i135 = or i1 %i.bl, %or.cond.i134
  %spec.select.i136 = select i1 %or.cond13.i135, i32 65533, i32 %.0.lcssa.i133
  br label %sqlite3Utf8Read.exit139

sqlite3Utf8Read.exit139:                          ; preds = %sqlite3Utf8Read.exit148.thread, %._crit_edge.i132
  %i.bm = phi ptr [ %.lcssa353357, %._crit_edge.i132 ], [ %i.ap, %sqlite3Utf8Read.exit148.thread ] ; 3 uses
  %i.bn = phi i32 [ %spec.select.i136, %._crit_edge.i132 ], [ %i.aq, %sqlite3Utf8Read.exit148.thread ] ; 5 uses
  %i.bo = icmp eq i32 %i.bn, %i.g
  %i.bp = icmp eq i32 %i.bn, %i.e                 ; 2 uses
  %i.bq = and i1 %i.an, %i.bp
  %or.cond363 = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond363, label %.critedge, label %bb.g

.critedge:                                        ; preds = %sqlite3Utf8Read.exit139
  br i1 %i.bp, label %bb.e, label %sqlite3Utf8Read.exit148.thread, !llvm.loop !1026

bb.e:                                             ; preds = %.critedge
  %i.br = getelementptr inbounds nuw i8, ptr %.1242.ph, i64 1 ; 4 uses
  %i.bs = load i8, ptr %.1242.ph, align 1, !tbaa !227 ; 3 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = icmp ugt i8 %i.bs, -65
  br i1 %i.bu, label %bb.f, label %sqlite3Utf8Read.exit148

bb.f:                                             ; preds = %bb.e
  %i.bv = zext i8 %i.bs to i64
  %i.bw = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -192
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !227
  %i.bz = zext i8 %i.by to i32                    ; 2 uses
  %i.ca = load i8, ptr %i.br, align 1, !tbaa !227 ; 2 uses
  %i.cb = icmp slt i8 %i.ca, -64
  br i1 %i.cb, label %.lr.ph.i146, label %._crit_edge.i141

.lr.ph.i146:                                      ; preds = %bb.f, %.lr.ph.i146
  %i.cc = phi i8 [ %i.cj, %.lr.ph.i146 ], [ %i.ca, %bb.f ]
  %.014.i147 = phi i32 [ %i.ci, %.lr.ph.i146 ], [ %i.bz, %bb.f ]
end_hunk_0
begin_hunk_1_@patternCompare:bb.a
  %i.kp = zext i8 %i.kj to i64
  %i.kq = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.kp
  %i.kr = getelementptr i8, ptr %i.kq, i64 -192
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !227
  %i.kt = zext i8 %i.ks to i32                    ; 2 uses
  %i.ku = load i8, ptr %i.km, align 1, !tbaa !227 ; 2 uses
  %i.kv = icmp slt i8 %i.ku, -64
  br i1 %i.kv, label %.lr.ph.i209, label %._crit_edge.i204

.lr.ph.i209:                                      ; preds = %bb.ak, %.lr.ph.i209
  %i.kw = phi i8 [ %i.ld, %.lr.ph.i209 ], [ %i.ku, %bb.ak ]
  %.014.i210 = phi i32 [ %i.lc, %.lr.ph.i209 ], [ %i.kt, %bb.ak ]
  %i.kx = phi ptr [ %i.kz, %.lr.ph.i209 ], [ %i.km, %bb.ak ]
  %i.ky = shl i32 %.014.i210, 6
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 1 ; 3 uses
  %i.la = and i8 %i.kw, 63
  %i.lb = zext nneg i8 %i.la to i32
  %i.lc = or disjoint i32 %i.ky, %i.lb            ; 2 uses
  %i.ld = load i8, ptr %i.kz, align 1, !tbaa !227 ; 2 uses
  %i.le = icmp slt i8 %i.ld, -64
  br i1 %i.le, label %.lr.ph.i209, label %._crit_edge.i204, !llvm.loop !1025

._crit_edge.i204:                                 ; preds = %.lr.ph.i209, %bb.ak
  %.lcssa324326 = phi ptr [ %i.km, %bb.ak ], [ %i.kz, %.lr.ph.i209 ]
  %.0.lcssa.i205 = phi i32 [ %i.kt, %bb.ak ], [ %i.lc, %.lr.ph.i209 ] ; 4 uses
  %i.lf = icmp ult i32 %.0.lcssa.i205, 128
  %i.lg = and i32 %.0.lcssa.i205, -2048
  %i.lh = icmp eq i32 %i.lg, 55296
  %or.cond.i206 = or i1 %i.lf, %i.lh
  %i.li = and i32 %.0.lcssa.i205, -2
  %i.lj = icmp eq i32 %i.li, 65534
  %or.cond13.i207 = or i1 %i.lj, %or.cond.i206
  %spec.select.i208 = select i1 %or.cond13.i207, i32 65533, i32 %.0.lcssa.i205
  br label %sqlite3Utf8Read.exit211

sqlite3Utf8Read.exit211:                          ; preds = %bb.aj, %._crit_edge.i204
  %.lcssa324325 = phi ptr [ %i.km, %bb.aj ], [ %.lcssa324326, %._crit_edge.i204 ]
  %.1.i203 = phi i32 [ %i.kn, %bb.aj ], [ %spec.select.i208, %._crit_edge.i204 ]
  %.not117 = icmp ult i32 %.1.i167272, %.084
  %.not118 = icmp ugt i32 %.1.i167272, %.1.i203
  %or.cond127 = select i1 %.not117, i1 true, i1 %.not118
  %.3 = select i1 %or.cond127, i32 %.2, i32 1
  br label %bb.am

bb.al:                                            ; preds = %sqlite3Utf8Read.exit220, %bb.ai, %bb.ah
  %i.lk = icmp eq i32 %.1.i167272, %.296
  %spec.select128 = select i1 %i.lk, i32 1, i32 %.2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %sqlite3Utf8Read.exit211
  %.lcssa324330 = phi ptr [ %.lcssa324325, %sqlite3Utf8Read.exit211 ], [ %.lcssa324327, %bb.al ] ; 2 uses
  %.185 = phi i32 [ 0, %sqlite3Utf8Read.exit211 ], [ %.296, %bb.al ]
  %.5 = phi i32 [ %.3, %sqlite3Utf8Read.exit211 ], [ %spec.select128, %bb.al ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.lcssa324330, i64 1 ; 4 uses
  %i.lm = load i8, ptr %.lcssa324330, align 1, !tbaa !227 ; 3 uses
  %i.ln = zext i8 %i.lm to i32
  %i.lo = icmp ugt i8 %i.lm, -65
  br i1 %i.lo, label %bb.an, label %sqlite3Utf8Read.exit220.backedge

sqlite3Utf8Read.exit220.backedge:                 ; preds = %bb.am, %._crit_edge.i213
  %.lcssa324327.be = phi ptr [ %i.ll, %bb.am ], [ %.lcssa324329, %._crit_edge.i213 ]
  %.296.be = phi i32 [ %i.ln, %bb.am ], [ %spec.select.i217, %._crit_edge.i213 ]
  br label %sqlite3Utf8Read.exit220, !llvm.loop !1031

bb.an:                                            ; preds = %bb.am
  %i.lp = zext i8 %i.lm to i64
  %i.lq = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 -192
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !227
  %i.lt = zext i8 %i.ls to i32                    ; 2 uses
  %i.lu = load i8, ptr %i.ll, align 1, !tbaa !227 ; 2 uses
  %i.lv = icmp slt i8 %i.lu, -64
  br i1 %i.lv, label %.lr.ph.i218, label %._crit_edge.i213

.lr.ph.i218:                                      ; preds = %bb.an, %.lr.ph.i218
  %i.lw = phi i8 [ %i.md, %.lr.ph.i218 ], [ %i.lu, %bb.an ]
  %.014.i219 = phi i32 [ %i.mc, %.lr.ph.i218 ], [ %i.lt, %bb.an ]
  %i.lx = phi ptr [ %i.lz, %.lr.ph.i218 ], [ %i.ll, %bb.an ]
  %i.ly = shl i32 %.014.i219, 6
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 1 ; 3 uses
  %i.ma = and i8 %i.lw, 63
  %i.mb = zext nneg i8 %i.ma to i32
  %i.mc = or disjoint i32 %i.ly, %i.mb            ; 2 uses
  %i.md = load i8, ptr %i.lz, align 1, !tbaa !227 ; 2 uses
  %i.me = icmp slt i8 %i.md, -64
  br i1 %i.me, label %.lr.ph.i218, label %._crit_edge.i213, !llvm.loop !1025

._crit_edge.i213:                                 ; preds = %.lr.ph.i218, %bb.an
  %.lcssa324329 = phi ptr [ %i.ll, %bb.an ], [ %i.lz, %.lr.ph.i218 ]
  %.0.lcssa.i214 = phi i32 [ %i.lt, %bb.an ], [ %i.mc, %.lr.ph.i218 ] ; 4 uses
  %i.mf = icmp ult i32 %.0.lcssa.i214, 128
  %i.mg = and i32 %.0.lcssa.i214, -2048
  %i.mh = icmp eq i32 %i.mg, 55296
  %or.cond.i215 = or i1 %i.mf, %i.mh
  %i.mi = and i32 %.0.lcssa.i214, -2
  %i.mj = icmp eq i32 %i.mi, 65534
  %or.cond13.i216 = or i1 %i.mj, %or.cond.i215
  %spec.select.i217 = select i1 %or.cond13.i216, i32 65533, i32 %.0.lcssa.i214
  br label %sqlite3Utf8Read.exit220.backedge

bb.ao:                                            ; preds = %sqlite3Utf8Read.exit220
  store ptr %.lcssa324327, ptr %i.a, align 8
  %i.mk = icmp eq i32 %.2, %.0278
  br i1 %i.mk, label %.thread, label %.critedge130

sqlite3Utf8Read.exit166.thread:                   ; preds = %sqlite3Utf8Read.exit.thread.thread, %sqlite3Utf8Read.exit166, %._crit_edge.i159
  %.lcssa344346 = phi ptr [ %.lcssa344349, %._crit_edge.i159 ], [ %.lcssa344347, %sqlite3Utf8Read.exit166 ], [ %.lcssa324327.lcssa331341, %sqlite3Utf8Read.exit.thread.thread ] ; 2 uses
  %.1102 = phi ptr [ %.lcssa344349, %._crit_edge.i159 ], [ %.lcssa344347, %sqlite3Utf8Read.exit166 ], [ %.0101.ph, %sqlite3Utf8Read.exit.thread.thread ] ; 2 uses
  %.193 = phi i32 [ 65533, %._crit_edge.i159 ], [ %.1.i158, %sqlite3Utf8Read.exit166 ], [ %i.ff, %sqlite3Utf8Read.exit.thread.thread ] ; 4 uses
  %i.ml = load i8, ptr %.0241, align 1, !tbaa !227 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0241, i64 1 ; 4 uses
  %i.mn = zext i8 %i.ml to i32
  %or.cond506 = icmp ugt i8 %i.ml, -65
  br i1 %or.cond506, label %bb.ap, label %sqlite3Utf8Read.exit229

bb.ap:                                            ; preds = %sqlite3Utf8Read.exit166.thread
  %i.mo = zext i8 %i.ml to i64
  %i.mp = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.mo
  %i.mq = getelementptr i8, ptr %i.mp, i64 -192
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !227
  %i.ms = zext i8 %i.mr to i32                    ; 2 uses
  %i.mt = load i8, ptr %i.mm, align 1, !tbaa !227 ; 2 uses
  %i.mu = icmp slt i8 %i.mt, -64
  br i1 %i.mu, label %.lr.ph.i227, label %._crit_edge.i222

.lr.ph.i227:                                      ; preds = %bb.ap, %.lr.ph.i227
  %i.mv = phi i8 [ %i.nc, %.lr.ph.i227 ], [ %i.mt, %bb.ap ]
  %.014.i228 = phi i32 [ %i.nb, %.lr.ph.i227 ], [ %i.ms, %bb.ap ]
  %i.mw = phi ptr [ %i.my, %.lr.ph.i227 ], [ %i.mm, %bb.ap ]
  %i.mx = shl i32 %.014.i228, 6
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 1 ; 3 uses
  %i.mz = and i8 %i.mv, 63
  %i.na = zext nneg i8 %i.mz to i32
  %i.nb = or disjoint i32 %i.mx, %i.na            ; 2 uses
  %i.nc = load i8, ptr %i.my, align 1, !tbaa !227 ; 2 uses
  %i.nd = icmp slt i8 %i.nc, -64
  br i1 %i.nd, label %.lr.ph.i227, label %._crit_edge.i222, !llvm.loop !1025

._crit_edge.i222:                                 ; preds = %.lr.ph.i227, %bb.ap
  %.16 = phi ptr [ %i.mm, %bb.ap ], [ %i.my, %.lr.ph.i227 ]
  %.0.lcssa.i223 = phi i32 [ %i.ms, %bb.ap ], [ %i.nb, %.lr.ph.i227 ] ; 4 uses
  %i.ne = icmp ult i32 %.0.lcssa.i223, 128
  %i.nf = and i32 %.0.lcssa.i223, -2048
  %i.ng = icmp eq i32 %i.nf, 55296
  %or.cond.i224 = or i1 %i.ne, %i.ng
  %i.nh = and i32 %.0.lcssa.i223, -2
  %i.ni = icmp eq i32 %i.nh, 65534
  %or.cond13.i225 = or i1 %i.ni, %or.cond.i224
  %spec.select.i226 = select i1 %or.cond13.i225, i32 65533, i32 %.0.lcssa.i223
  br label %sqlite3Utf8Read.exit229

sqlite3Utf8Read.exit229:                          ; preds = %sqlite3Utf8Read.exit166.thread, %._crit_edge.i222
  %.9 = phi ptr [ %i.mm, %sqlite3Utf8Read.exit166.thread ], [ %.16, %._crit_edge.i222 ]
  %i.nj = phi i32 [ %i.mn, %sqlite3Utf8Read.exit166.thread ], [ %spec.select.i226, %._crit_edge.i222 ] ; 4 uses
  %i.nk = icmp eq i32 %.193, %i.nj
  br i1 %i.nk, label %.critedge130.outer.backedge, label %bb.aq

.critedge130.outer.backedge:                      ; preds = %sqlite3Utf8Read.exit229, %bb.at, %bb.ar
  br label %.critedge130.outer, !llvm.loop !1032

bb.aq:                                            ; preds = %sqlite3Utf8Read.exit229
  br i1 %.not119, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.nl = and i32 %.193, 255
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !227
  %i.np = and i32 %i.nj, 255
  %i.nq = zext nneg i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !227
  %i.nt = icmp eq i8 %i.no, %i.ns
  %i.nu = or i32 %i.nj, %.193
  %i.nv = icmp ult i32 %i.nu, 128
  %or.cond8 = and i1 %i.nv, %i.nt
  br i1 %or.cond8, label %.critedge130.outer.backedge, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.nw = icmp eq i32 %.193, %i.e
  br i1 %i.nw, label %bb.at, label %.thread

bb.at:                                            ; preds = %bb.as
  %i.nx = icmp ne ptr %.lcssa344346, %.1102
  %i.ny = icmp ne i32 %i.nj, 0
  %or.cond10 = and i1 %i.ny, %i.nx
  br i1 %or.cond10, label %.critedge130.outer.backedge, label %.thread

bb.au:                                            ; preds = %sqlite3Utf8Read.exit
  %i.nz = load i8, ptr %.0241, align 1, !tbaa !227
  %i.oa = icmp ne i8 %i.nz, 0
  %i.ob = zext i1 %i.oa to i32
  br label %.thread

.thread:                                          ; preds = %bb.as, %bb.at, %sqlite3Utf8Read.exit166, %sqlite3Utf8Read.exit175, %bb.ao, %sqlite3Utf8Read.exit220, %sqlite3Utf8Read.exit148, %.loopexit, %bb.k, %sqlite3Utf8Read.exit157, %bb.w, %.preheader280, %.thread253, %bb.t, %bb.j, %bb.g, %bb.au
  %.6 = phi i32 [ %i.ob, %bb.au ], [ %i.da, %bb.k ], [ 0, %bb.g ], [ %i.fe, %bb.w ], [ %i.eb, %bb.t ], [ 2, %.thread253 ], [ 2, %sqlite3Utf8Read.exit148 ], [ 2, %bb.j ], [ 1, %sqlite3Utf8Read.exit220 ], [ 1, %sqlite3Utf8Read.exit175 ], [ 2, %.preheader280 ], [ 2, %sqlite3Utf8Read.exit157 ], [ 2, %.loopexit ], [ 1, %bb.ao ], [ 1, %sqlite3Utf8Read.exit166 ], [ 1, %bb.at ], [ 1, %bb.as ]
  ret i32 %.6
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 3) i32 @sqlite3_strlike(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #19 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %0, null
  %i.c = zext i1 %i.b to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call fastcc i32 @patternCompare(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @likeInfoNorm, i32 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3_errmsg(ptr noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %sqlite3_mutex_leave.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 113
  %.val = load i8, ptr %i.a, align 1, !tbaa !619
  switch i8 %.val, label %bb.c [
    i8 -70, label %sqlite3SafetyCheckSickOrOk.exit
    i8 118, label %sqlite3SafetyCheckSickOrOk.exit
    i8 109, label %sqlite3SafetyCheckSickOrOk.exit
  ]

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.647, ptr noundef nonnull @.str.1395)
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 21, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1928, i32 noundef 188938, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  br label %sqlite3_mutex_leave.exit

sqlite3SafetyCheckSickOrOk.exit:                  ; preds = %bb.b, %bb.b, %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3SafetyCheckSickOrOk.exit
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.d(ptr noundef nonnull %i.c) #59, !inline_history !17
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %sqlite3SafetyCheckSickOrOk.exit, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 103
  %i.f = load i8, ptr %i.e, align 1, !tbaa !550
  %.not15 = icmp eq i8 %i.f, 0
  br i1 %.not15, label %bb.e, label %sqlite3ErrStr.exit

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !589  ; 3 uses
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !605  ; 5 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %sqlite3_value_text.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i16, ptr %i.k, align 4, !tbaa !162  ; 2 uses
  %i.m = and i16 %i.l, 514
  %i.n = icmp eq i16 %i.m, 514
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 22
  %i.p = load i8, ptr %i.o, align 2, !tbaa !349
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !289
  br label %sqlite3_value_text.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.t = and i16 %i.l, 1
  %.not9.i.i = icmp eq i16 %i.t, 0
  br i1 %.not9.i.i, label %bb.k, label %sqlite3_value_text.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.u = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.j, i8 noundef zeroext 1), !inline_history !606
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.k, %bb.i
  %i.v = phi ptr [ %i.u, %bb.k ], [ %i.s, %bb.i ] ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %sqlite3_value_text.exit.sqlite3_value_text.exit.thread_crit_edge, label %sqlite3ErrStr.exit

sqlite3_value_text.exit.sqlite3_value_text.exit.thread_crit_edge: ; preds = %sqlite3_value_text.exit
  %.pr.pre = load i32, ptr %i.g, align 8, !tbaa !589
  br label %sqlite3_value_text.exit.thread

sqlite3_value_text.exit.thread:                   ; preds = %sqlite3_value_text.exit.sqlite3_value_text.exit.thread_crit_edge, %bb.j, %bb.f
  %.pr = phi i32 [ %.pr.pre, %sqlite3_value_text.exit.sqlite3_value_text.exit.thread_crit_edge ], [ %i.h, %bb.j ], [ %i.h, %bb.f ] ; 2 uses
  switch i32 %.pr, label %bb.n [
    i32 516, label %sqlite3ErrStr.exit
    i32 100, label %bb.l
    i32 101, label %bb.m
  ]

bb.l:                                             ; preds = %sqlite3_value_text.exit.thread
  br label %sqlite3ErrStr.exit

bb.m:                                             ; preds = %sqlite3_value_text.exit.thread
  br label %sqlite3ErrStr.exit

bb.n:                                             ; preds = %sqlite3_value_text.exit.thread
  %i.x = and i32 %.pr, 255                        ; 2 uses
  %i.y = icmp samesign ult i32 %i.x, 29
  br i1 %i.y, label %.thread, label %sqlite3ErrStr.exit

.thread:                                          ; preds = %bb.e, %bb.n
  %i.z = phi i32 [ %i.x, %bb.n ], [ 0, %bb.e ]
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = shl nuw nsw i64 1, %i.aa
  %i.ac = and i64 %i.ab, 21037060
  %.not.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.not.i, label %bb.o, label %sqlite3ErrStr.exit

bb.o:                                             ; preds = %.thread
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @sqlite3ErrStr.aMsg, i64 %i.aa
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !251
  br label %sqlite3ErrStr.exit

sqlite3ErrStr.exit:                               ; preds = %bb.o, %.thread, %bb.n, %bb.m, %bb.l, %sqlite3_value_text.exit.thread, %sqlite3_mutex_enter.exit, %sqlite3_value_text.exit
  %.0 = phi ptr [ %i.v, %sqlite3_value_text.exit ], [ @.str.133, %sqlite3_mutex_enter.exit ], [ %i.ae, %bb.o ], [ @.str.1388, %.thread ], [ @.str.1388, %bb.n ], [ @.str.1391, %bb.m ], [ @.str.1390, %bb.l ], [ @.str.1389, %sqlite3_value_text.exit.thread ] ; 2 uses
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !23  ; 2 uses
  %.not.i20 = icmp eq ptr %i.af, null
  br i1 %.not.i20, label %sqlite3_mutex_leave.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3ErrStr.exit
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.ag(ptr noundef nonnull %i.af) #59, !inline_history !20
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.p, %sqlite3ErrStr.exit, %bb.a, %bb.c
  %.011 = phi ptr [ @.str.133, %bb.a ], [ @.str.1382, %bb.c ], [ %.0, %sqlite3ErrStr.exit ], [ %.0, %bb.p ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3_load_extension(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.d(ptr noundef nonnull %i.c) #59, !inline_history !17
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !536    ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr null, ptr %i.a, align 8, !tbaa !251
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #60, !inline_history !1033
  %.fr220.i = freeze i64 %i.f                     ; 5 uses
  %.not.i8 = icmp eq ptr %3, null                 ; 4 uses
  br i1 %.not.i8, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !545
  %i.i = and i64 %i.h, 65536
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %sqlite3LoadExtension.exit.thread, label %bb.e

.thread.i:                                        ; preds = %sqlite3_mutex_enter.exit
  store ptr null, ptr %3, align 8, !tbaa !251
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !545
  %i.m = and i64 %i.l, 65536
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.i
  %i.o = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.649), !inline_history !1033
  store ptr %i.o, ptr %3, align 8, !tbaa !251
  br label %sqlite3LoadExtension.exit.thread

bb.e:                                             ; preds = %.thread.i, %bb.c
  %.not147.i = icmp eq ptr %2, null               ; 2 uses
end_hunk_1
begin_hunk_2_@analysisLoader:bb.a
  br i1 %i.c, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !251  ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !tbaa !2984   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2986 ; 2 uses
  %i.j = tail call fastcc ptr @sqlite3FindTable(ptr noundef %i.g, ptr noundef nonnull %i.b, ptr noundef %i.i) ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !251  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %sqlite3PrimaryKeyIndex.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %bb.h
  %.013.i.i = phi ptr [ %i.z, %bb.h ], [ %i.m, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.y, %bb.h ], [ %i.b, %bb.e ] ; 2 uses
  %i.o = load i8, ptr %.0.i.i, align 1, !tbaa !227 ; 3 uses
  %i.p = load i8, ptr %.013.i.i, align 1, !tbaa !227 ; 2 uses
  %i.q = icmp eq i8 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.i
  %i.r = icmp eq i8 %i.o, 0
  br i1 %i.r, label %sqlite3_stricmp.exit.thread, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.s = zext i8 %i.o to i64
  %i.t = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !227
  %i.v = zext i8 %i.p to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !227
  %.not.i.i = icmp eq i8 %i.u, %i.x
  br i1 %.not.i.i, label %bb.h, label %sqlite3PrimaryKeyIndex.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  br label %.preheader.i

sqlite3_stricmp.exit.thread:                      ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.06.i = load ptr, ptr %i.aa, align 8, !tbaa !935 ; 2 uses
  %.not7.i = icmp eq ptr %.06.i, null
  br i1 %.not7.i, label %sqlite3PrimaryKeyIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %sqlite3_stricmp.exit.thread, %bb.i
  %.08.i = phi ptr [ %.0.i38, %bb.i ], [ %.06.i, %sqlite3_stricmp.exit.thread ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.ac = load i16, ptr %i.ab, align 1            ; 2 uses
  %i.ad = and i16 %i.ac, 3
  %.not5.i = icmp eq i16 %i.ad, 2
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit.thread43, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %.0.i38 = load ptr, ptr %i.ae, align 8, !tbaa !935 ; 2 uses
  %.not.i39 = icmp eq ptr %.0.i38, null
  br i1 %.not.i39, label %sqlite3PrimaryKeyIndex.exit.thread, label %.lr.ph.i, !llvm.loop !2949

sqlite3PrimaryKeyIndex.exit:                      ; preds = %bb.g
  %i.af = tail call fastcc ptr @sqlite3FindIndex(ptr noundef %i.g, ptr noundef nonnull %i.m, ptr noundef %i.i) ; 3 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %sqlite3PrimaryKeyIndex.exit.thread, label %sqlite3PrimaryKeyIndex.exit.sqlite3PrimaryKeyIndex.exit.thread43_crit_edge

sqlite3PrimaryKeyIndex.exit.sqlite3PrimaryKeyIndex.exit.thread43_crit_edge: ; preds = %sqlite3PrimaryKeyIndex.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.af, i64 99
  %.pre = load i16, ptr %.phi.trans.insert, align 1
  br label %sqlite3PrimaryKeyIndex.exit.thread43

sqlite3PrimaryKeyIndex.exit.thread43:             ; preds = %.lr.ph.i, %sqlite3PrimaryKeyIndex.exit.sqlite3PrimaryKeyIndex.exit.thread43_crit_edge
  %i.ag = phi i16 [ %.pre, %sqlite3PrimaryKeyIndex.exit.sqlite3PrimaryKeyIndex.exit.thread43_crit_edge ], [ %i.ac, %.lr.ph.i ]
  %.03446 = phi ptr [ %i.af, %sqlite3PrimaryKeyIndex.exit.sqlite3PrimaryKeyIndex.exit.thread43_crit_edge ], [ %.08.i, %.lr.ph.i ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.03446, i64 94
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !936
  %i.aj = zext i16 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.03446, i64 99 ; 3 uses
  %i.am = and i16 %i.ag, -5
  store i16 %i.am, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.03446, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2987
  tail call fastcc void @decodeIntArray(ptr noundef nonnull %i.e, i32 noundef %i.ak, ptr noundef %i.ao, ptr noundef %.03446)
  %i.ap = load i16, ptr %i.al, align 1
  %i.aq = or i16 %i.ap, 128
  store i16 %i.aq, ptr %i.al, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.03446, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !2797
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %sqlite3PrimaryKeyIndex.exit.thread43
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !2987
  %i.av = load i16, ptr %i.au, align 2, !tbaa !330
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !2988
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !788
  %i.az = or i32 %i.ay, 16
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !788
  br label %bb.k

sqlite3PrimaryKeyIndex.exit.thread:               ; preds = %bb.i, %sqlite3_stricmp.exit.thread, %bb.e, %sqlite3PrimaryKeyIndex.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !3242
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  store i16 %i.bb, ptr %i.bc, align 4, !tbaa !3243
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  call fastcc void @decodeIntArray(ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull %i.bd, ptr noundef %4)
  %i.be = load i16, ptr %i.bc, align 4, !tbaa !3243
  store i16 %i.be, ptr %i.ba, align 4, !tbaa !3242
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !788
  %i.bh = or i32 %i.bg, 16
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  br label %bb.k

bb.k:                                             ; preds = %sqlite3PrimaryKeyIndex.exit.thread, %bb.j, %sqlite3PrimaryKeyIndex.exit.thread43, %bb.d, %bb.a, %bb.b, %bb.c
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @sqlite3DefaultRowEst(ptr noundef readonly captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2987 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 94 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !936  ; 2 uses
  %narrow = tail call i16 @llvm.umin.i16(i16 %i.d, i16 5) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1098
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 58 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !2988 ; 2 uses
  %i.i = icmp slt i16 %i.h, 99
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 99, ptr %i.g, align 2, !tbaa !2988
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.020 = phi i16 [ 99, %bb.b ], [ %i.h, %bb.a ]  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2797
  %.not = icmp eq ptr %i.k, null
  %i.l = add nsw i16 %.020, -10
  %spec.select24 = select i1 %.not, i16 %.020, i16 %i.l
  store i16 %spec.select24, ptr %i.b, align 2, !tbaa !330
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.n = shl nuw nsw i16 %narrow, 1
  %i.o = zext nneg i16 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.m, ptr nonnull align 2 @sqlite3DefaultRowEst.aVal, i64 %i.o, i1 false)
  %i.p = load i16, ptr %i.c, align 2, !tbaa !936  ; 2 uses
  %.not22.not25 = icmp ult i16 %narrow, %i.p
  br i1 %.not22.not25, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = tail call i16 @llvm.umin.i16(i16 %i.d, i16 5)
  %umin = zext nneg i16 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %umin, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next
  store i16 23, ptr %i.r, align 2, !tbaa !330
  %i.s = load i16, ptr %i.c, align 2, !tbaa !936  ; 2 uses
  %i.t = zext i16 %i.s to i64
  %.not22.not = icmp samesign ult i64 %indvars.iv.next, %i.t
  br i1 %.not22.not, label %.lr.ph, label %._crit_edge, !llvm.loop !2989

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.lcssa = phi i16 [ %i.p, %bb.c ], [ %i.s, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.v = load i8, ptr %i.u, align 2, !tbaa !2990
  %.not23 = icmp eq i8 %i.v, 0
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.w = zext i16 %.lcssa to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.w
  store i16 0, ptr %i.x, align 2, !tbaa !330
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @decodeIntArray(ptr noundef readonly %0, i32 noundef range(i32 1, 65537) %1, ptr noundef writeonly captures(none) %2, ptr noundef nonnull captures(none) %3) unnamed_addr #39 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !227     ; 2 uses
  %.not25 = icmp eq i8 %i.b, 0
  br i1 %.not25, label %._crit_edge20, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %sqlite3LogEst.exit
  %i.d = phi i8 [ %i.b, %.preheader.preheader ], [ %i.ak, %sqlite3LogEst.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %sqlite3LogEst.exit ] ; 2 uses
  %.019 = phi ptr [ %0, %.preheader.preheader ], [ %spec.select, %sqlite3LogEst.exit ] ; 2 uses
  %i.e = add i8 %i.d, -48
  %i.f = icmp ult i8 %i.e, 10
  br i1 %i.f, label %.lr.ph, label %sqlite3LogEst.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.g = phi i8 [ %i.m, %.lr.ph ], [ %i.d, %.preheader ]
  %.116 = phi ptr [ %i.l, %.lr.ph ], [ %.019, %.preheader ]
  %.03115 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.preheader ]
  %i.h = zext nneg i8 %i.g to i64
  %i.i = mul i64 %.03115, 10
  %i.j = add i64 %i.i, -48
  %i.k = add i64 %i.j, %i.h                       ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.116, i64 1 ; 4 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !227   ; 2 uses
  %i.n = add i8 %i.m, -48
  %i.o = icmp ult i8 %i.n, 10
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !3244

._crit_edge:                                      ; preds = %.lr.ph
  %i.p = icmp ult i64 %i.k, 8
  br i1 %i.p, label %bb.b, label %.preheader23.i

.preheader23.i:                                   ; preds = %._crit_edge
  %i.q = icmp ugt i64 %i.k, 255
  br i1 %i.q, label %.lr.ph.i, label %.preheader21.i

bb.b:                                             ; preds = %._crit_edge
  %i.r = icmp samesign ult i64 %i.k, 2
  br i1 %i.r, label %sqlite3LogEst.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.b, %.lr.ph34.i
  %.033.i = phi i16 [ %i.s, %.lr.ph34.i ], [ 40, %bb.b ]
  %.01432.i = phi i64 [ %i.t, %.lr.ph34.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.s = add i16 %.033.i, -10                     ; 2 uses
  %i.t = shl nuw nsw i64 %.01432.i, 1             ; 2 uses
  %i.u = icmp ult i64 %.01432.i, 4
  br i1 %i.u, label %.lr.ph34.i, label %.loopexit.i, !llvm.loop !1340

.preheader21.i:                                   ; preds = %.lr.ph.i, %.preheader23.i
  %.115.lcssa.i = phi i64 [ %i.k, %.preheader23.i ], [ %i.x, %.lr.ph.i ] ; 3 uses
  %.1.lcssa.i = phi i16 [ 40, %.preheader23.i ], [ %i.w, %.lr.ph.i ] ; 2 uses
  %i.v = icmp samesign ugt i64 %.115.lcssa.i, 15
  br i1 %i.v, label %.lr.ph29.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader23.i, %.lr.ph.i
  %.125.i = phi i16 [ %i.w, %.lr.ph.i ], [ 40, %.preheader23.i ]
  %.11524.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.k, %.preheader23.i ] ; 2 uses
  %i.w = add nuw nsw i16 %.125.i, 40              ; 2 uses
  %i.x = lshr i64 %.11524.i, 4                    ; 2 uses
  %i.y = icmp ugt i64 %.11524.i, 4095
  br i1 %i.y, label %.lr.ph.i, label %.preheader21.i, !llvm.loop !1341

.lr.ph29.i:                                       ; preds = %.preheader21.i, %.lr.ph29.i
  %.228.i = phi i16 [ %i.z, %.lr.ph29.i ], [ %.1.lcssa.i, %.preheader21.i ]
  %.21627.i = phi i64 [ %i.aa, %.lr.ph29.i ], [ %.115.lcssa.i, %.preheader21.i ] ; 2 uses
  %i.z = add nuw nsw i16 %.228.i, 10              ; 2 uses
  %i.aa = lshr i64 %.21627.i, 1                   ; 2 uses
  %i.ab = icmp samesign ugt i64 %.21627.i, 31
  br i1 %i.ab, label %.lr.ph29.i, label %.loopexit.i, !llvm.loop !1342

.loopexit.i:                                      ; preds = %.lr.ph29.i, %.lr.ph34.i, %.preheader21.i
  %.317.i = phi i64 [ %.115.lcssa.i, %.preheader21.i ], [ %i.t, %.lr.ph34.i ], [ %i.aa, %.lr.ph29.i ]
  %.3.i = phi i16 [ %.1.lcssa.i, %.preheader21.i ], [ %i.s, %.lr.ph34.i ], [ %i.z, %.lr.ph29.i ]
  %i.ac = and i64 %.317.i, 7
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !330
  %i.af = add i16 %.3.i, -10
  %i.ag = add i16 %i.af, %i.ae
  br label %sqlite3LogEst.exit

sqlite3LogEst.exit:                               ; preds = %.preheader, %bb.b, %.loopexit.i
  %.1.lcssa50 = phi ptr [ %i.l, %.loopexit.i ], [ %i.l, %bb.b ], [ %.019, %.preheader ] ; 2 uses
  %.018.i = phi i16 [ %i.ag, %.loopexit.i ], [ 0, %bb.b ], [ 0, %.preheader ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  store i16 %.018.i, ptr %i.ah, align 2, !tbaa !330
  %i.ai = load i8, ptr %.1.lcssa50, align 1, !tbaa !227
  %i.aj = icmp eq i8 %i.ai, 32
  %spec.select.idx = zext i1 %i.aj to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.1.lcssa50, i64 %spec.select.idx ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i8, ptr %spec.select, align 1, !tbaa !227 ; 2 uses
  %i.al = icmp ne i8 %i.ak, 0
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.c
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.preheader, label %._crit_edge20, !llvm.loop !3245

._crit_edge20:                                    ; preds = %sqlite3LogEst.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %spec.select, %sqlite3LogEst.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 99 ; 4 uses
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = and i16 %i.ap, -69                      ; 2 uses
  store i16 %i.aq, ptr %i.ao, align 1
  %.pr = load i8, ptr %.0.lcssa, align 1, !tbaa !227
  %.not22 = icmp eq i8 %.pr, 0
  br i1 %.not22, label %._crit_edge24, label %sqlite3_strglob.exit.lr.ph

sqlite3_strglob.exit.lr.ph:                       ; preds = %._crit_edge20
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 92
  br label %sqlite3_strglob.exit

sqlite3_strglob.exit:                             ; preds = %.critedge, %sqlite3_strglob.exit.lr.ph
  %i.as = phi i16 [ %i.aq, %sqlite3_strglob.exit.lr.ph ], [ %i.bw, %.critedge ] ; 4 uses
  %.323 = phi ptr [ %.0.lcssa, %sqlite3_strglob.exit.lr.ph ], [ %.5, %.critedge ] ; 5 uses
  %i.at = tail call fastcc i32 @patternCompare(ptr noundef nonnull @.str.407, ptr noundef nonnull readonly %.323, ptr noundef nonnull @globInfo, i32 noundef 91)
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.c, label %sqlite3_strglob.exit38

bb.c:                                             ; preds = %sqlite3_strglob.exit
  %i.av = or i16 %i.as, 4                         ; 2 uses
  store i16 %i.av, ptr %i.ao, align 1
  br label %bb.f

sqlite3_strglob.exit38:                           ; preds = %sqlite3_strglob.exit
  %i.aw = tail call fastcc i32 @patternCompare(ptr noundef nonnull @.str.408, ptr noundef nonnull readonly %.323, ptr noundef nonnull @globInfo, i32 noundef 91)
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %sqlite3_strglob.exit58

bb.d:                                             ; preds = %sqlite3_strglob.exit38
  %i.ay = getelementptr inbounds nuw i8, ptr %.323, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.az = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %i.ay, ptr noundef %i.a) ; 0 uses
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !5   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 2)
  %i.bb = zext nneg i32 %spec.store.select to i64 ; 3 uses
  %i.bc = icmp slt i32 %i.ba, 8
  br i1 %i.bc, label %.lr.ph34.i53, label %.preheader23.i39

.preheader23.i39:                                 ; preds = %bb.d
  %i.bd = icmp samesign ugt i32 %i.ba, 255
  br i1 %i.bd, label %.lr.ph.i50, label %.preheader21.i40

.lr.ph34.i53:                                     ; preds = %bb.d, %.lr.ph34.i53
  %.033.i54 = phi i16 [ %i.be, %.lr.ph34.i53 ], [ 40, %bb.d ]
  %.01432.i55 = phi i64 [ %i.bf, %.lr.ph34.i53 ], [ %i.bb, %bb.d ] ; 2 uses
  %i.be = add i16 %.033.i54, -10                  ; 2 uses
  %i.bf = shl nuw nsw i64 %.01432.i55, 1          ; 2 uses
  %i.bg = icmp samesign ult i64 %.01432.i55, 4
  br i1 %i.bg, label %.lr.ph34.i53, label %sqlite3LogEst.exit56, !llvm.loop !1340

.preheader21.i40:                                 ; preds = %.lr.ph.i50, %.preheader23.i39
  %.115.lcssa.i41 = phi i64 [ %i.bb, %.preheader23.i39 ], [ %i.bj, %.lr.ph.i50 ] ; 3 uses
  %.1.lcssa.i42 = phi i16 [ 40, %.preheader23.i39 ], [ %i.bi, %.lr.ph.i50 ] ; 2 uses
  %i.bh = icmp samesign ugt i64 %.115.lcssa.i41, 15
  br i1 %i.bh, label %.lr.ph29.i47, label %sqlite3LogEst.exit56

.lr.ph.i50:                                       ; preds = %.preheader23.i39, %.lr.ph.i50
  %.125.i51 = phi i16 [ %i.bi, %.lr.ph.i50 ], [ 40, %.preheader23.i39 ]
  %.11524.i52 = phi i64 [ %i.bj, %.lr.ph.i50 ], [ %i.bb, %.preheader23.i39 ] ; 2 uses
  %i.bi = add nuw nsw i16 %.125.i51, 40           ; 2 uses
  %i.bj = lshr i64 %.11524.i52, 4                 ; 2 uses
  %i.bk = icmp samesign ugt i64 %.11524.i52, 4095
  br i1 %i.bk, label %.lr.ph.i50, label %.preheader21.i40, !llvm.loop !1341

.lr.ph29.i47:                                     ; preds = %.preheader21.i40, %.lr.ph29.i47
  %.228.i48 = phi i16 [ %i.bl, %.lr.ph29.i47 ], [ %.1.lcssa.i42, %.preheader21.i40 ]
  %.21627.i49 = phi i64 [ %i.bm, %.lr.ph29.i47 ], [ %.115.lcssa.i41, %.preheader21.i40 ] ; 2 uses
  %i.bl = add nuw nsw i16 %.228.i48, 10           ; 2 uses
  %i.bm = lshr i64 %.21627.i49, 1                 ; 2 uses
  %i.bn = icmp samesign ugt i64 %.21627.i49, 31
  br i1 %i.bn, label %.lr.ph29.i47, label %sqlite3LogEst.exit56, !llvm.loop !1342

sqlite3LogEst.exit56:                             ; preds = %.lr.ph29.i47, %.lr.ph34.i53, %.preheader21.i40
  %.317.i44 = phi i64 [ %.115.lcssa.i41, %.preheader21.i40 ], [ %i.bf, %.lr.ph34.i53 ], [ %i.bm, %.lr.ph29.i47 ]
  %.3.i45 = phi i16 [ %.1.lcssa.i42, %.preheader21.i40 ], [ %i.be, %.lr.ph34.i53 ], [ %i.bl, %.lr.ph29.i47 ]
  %i.bo = and i64 %.317.i44, 7
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !330
  %i.br = add i16 %.3.i45, -10
  %i.bs = add i16 %i.br, %i.bq
  store i16 %i.bs, ptr %i.ar, align 4, !tbaa !3243
  br label %bb.f

sqlite3_strglob.exit58:                           ; preds = %sqlite3_strglob.exit38
  %i.bt = tail call fastcc i32 @patternCompare(ptr noundef nonnull @.str.409, ptr noundef nonnull readonly %.323, ptr noundef nonnull @globInfo, i32 noundef 91)
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %sqlite3_strglob.exit58
  %i.bv = or i16 %i.as, 64                        ; 2 uses
  store i16 %i.bv, ptr %i.ao, align 1
  br label %bb.f

bb.f:                                             ; preds = %sqlite3LogEst.exit56, %bb.e, %sqlite3_strglob.exit58, %bb.c
  %i.bw = phi i16 [ %i.as, %sqlite3LogEst.exit56 ], [ %i.bv, %bb.e ], [ %i.as, %sqlite3_strglob.exit58 ], [ %i.av, %bb.c ]
end_hunk_2
begin_hunk_3_@jsonConvertTextToBlob:bb.a
bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 424
  store atomic volatile i32 1, ptr %i.an monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 432 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !553
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !553
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 436
  store i16 0, ptr %i.ar, align 4, !tbaa !554
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 344 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !301 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.at, null
  br i1 %.not.i3.i, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.133), !inline_history !555
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !301 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i32 7, ptr %i.av, align 8, !tbaa !302
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.o ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !313
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !313
  %i.az = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.az, align 8, !tbaa !302
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 216
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not16.i.i, label %.sink.split, label %.lr.ph.i.i, !llvm.loop !557

.sink.split.sink.split:                           ; preds = %bb.g, %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 1, ptr %i.ba, align 4, !tbaa !5
  %i.bb = load ptr, ptr %1, align 8, !tbaa !288
  %i.bc = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.bb, ptr noundef nonnull @.str.616, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.i.i, %.sink.split.sink.split, %.thread, %sqlite3VdbeMemSetNull.exit.i, %bb.k, %bb.n, %bb.o, %bb.d
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonBadPathError(ptr noundef captures(address_is_null) %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, -3
  %.str.630..str.631 = select i1 %i.a, ptr @.str.630, ptr @.str.631
  %i.b = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull %.str.630..str.631, ptr noundef nonnull %1) ; 5 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %sqlite3_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.d, align 4, !tbaa !5
  %i.e = load ptr, ptr %0, align 8, !tbaa !288
  %i.f = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.e, ptr noundef nonnull %i.b, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  %i.g = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.i(ptr noundef nonnull %i.h) #59, !inline_history !268
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.e, %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.k = tail call i32 %i.j(ptr noundef nonnull %i.b) #59, !inline_history !269
  %i.l = sext i32 %i.k to i64
  %i.m = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.n = sub nsw i64 %i.m, %i.l
  store i64 %i.n, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.p = add nsw i64 %i.o, -1
  store i64 %i.p, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.q(ptr noundef nonnull %i.b) #59, !inline_history !270
  %i.r = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.r, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.f

bb.f:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.s(ptr noundef nonnull %i.r) #59, !inline_history !271
  br label %sqlite3_free.exit

bb.g:                                             ; preds = %bb.c
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.t(ptr noundef nonnull %i.b) #59, !inline_history !270
  br label %sqlite3_free.exit

bb.h:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !288    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.w = load i16, ptr %i.v, align 4, !tbaa !162
  %i.x = and i16 %i.w, -28672
  %.not.i.i12 = icmp eq i16 %i.x, 0
  br i1 %.not.i.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.u)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !288
  br label %sqlite3VdbeMemSetNull.exit.i

bb.j:                                             ; preds = %bb.h
  store i16 1, ptr %i.v, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetNull.exit.i

sqlite3VdbeMemSetNull.exit.i:                     ; preds = %bb.j, %bb.i
  %i.y = phi ptr [ %.pre.i, %bb.i ], [ %i.u, %bb.j ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.z, align 4, !tbaa !5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !157 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 103 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !550
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %sqlite3_free.exit

bb.k:                                             ; preds = %sqlite3VdbeMemSetNull.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !551
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %sqlite3_free.exit

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.ac, align 1, !tbaa !550
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 220
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !552
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 424
  store atomic volatile i32 1, ptr %i.al monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 432 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !553
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !553
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 436
  store i16 0, ptr %i.ap, align 4, !tbaa !554
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 344 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !301 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ar, null
  br i1 %.not.i3.i, label %sqlite3_free.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.133), !inline_history !555
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !301 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i32 7, ptr %i.at, align 8, !tbaa !302
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 216
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_free.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.o ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !313
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !313
  %i.ax = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.ax, align 8, !tbaa !302
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 216
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not16.i.i, label %sqlite3_free.exit, label %.lr.ph.i.i, !llvm.loop !557

sqlite3_free.exit:                                ; preds = %.lr.ph.i.i, %bb.o, %bb.n, %bb.k, %sqlite3VdbeMemSetNull.exit.i, %bb.g, %bb.f, %sqlite3_mutex_enter.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jsonLookupStep(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 16 uses
  %4 = alloca %struct.JsonParse, align 8          ; 6 uses
  %5 = alloca %struct.JsonParse, align 8          ; 9 uses
  %6 = alloca %struct.JsonParse, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.c = load i8, ptr %2, align 1, !tbaa !227
  switch i8 %i.c, label %.thread317 [
    i8 0, label %bb.b
    i8 46, label %bb.j
    i8 91, label %bb.ao
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 51 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !3395  ; 2 uses
  %.not301 = icmp eq i8 %i.e, 0
  br i1 %.not301, label %jsonBlobMakeEditable.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3396
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !3357
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.d, label %jsonBlobMakeEditable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3391
  %.not11.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i, label %sqlite3DbRealloc.exit.i.i, label %jsonBlobMakeEditable.exit

sqlite3DbRealloc.exit.i.i:                        ; preds = %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !3392
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !3394
  %i.o = add i32 %i.n, %i.g                       ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !3392
  %i.p = icmp ugt i32 %i.o, 100
  %i.q = add i32 %i.o, 100
  %.1.v.i.i = select i1 %i.p, i32 %i.q, i32 100   ; 2 uses
  %.1.i.i = zext i32 %.1.v.i.i to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3393
  %i.t = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.s, i64 noundef %.1.i.i), !inline_history !394 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %jsonBlobExpand.exit.i, label %bb.e

jsonBlobExpand.exit.i:                            ; preds = %sqlite3DbRealloc.exit.i.i
  store i8 1, ptr %i.h, align 1, !tbaa !3357
  br label %jsonBlobMakeEditable.exit.thread

bb.e:                                             ; preds = %sqlite3DbRealloc.exit.i.i
  store ptr %i.t, ptr %0, align 8, !tbaa !3392
  store i32 %.1.v.i.i, ptr %i.j, align 4, !tbaa !3391
  %i.v = load i32, ptr %i.m, align 8, !tbaa !3394
  %i.w = zext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.l, i64 %i.w, i1 false)
  %.pre372 = load i8, ptr %i.d, align 1, !tbaa !3395
  br label %jsonBlobMakeEditable.exit

jsonBlobMakeEditable.exit:                        ; preds = %bb.e, %bb.d
  %i.x = phi i8 [ %.pre372, %bb.e ], [ %i.e, %bb.d ]
  %i.y = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.b)
  %i.z = load i32, ptr %i.b, align 4, !tbaa !5
  %i.aa = add i32 %i.z, %i.y                      ; 2 uses
  switch i8 %i.x, label %bb.i [
    i8 1, label %bb.f
    i8 3, label %jsonBlobMakeEditable.exit.thread
    i8 5, label %bb.g
  ]

bb.f:                                             ; preds = %jsonBlobMakeEditable.exit
  %.not304 = icmp eq i32 %3, 0                    ; 2 uses
  %i.ab = sub i32 %1, %3
  %i.ac = select i1 %.not304, i32 0, i32 %i.ab
  %i.ad = add i32 %i.aa, %i.ac
  %.0238 = select i1 %.not304, i32 %1, i32 %3     ; 2 uses
  tail call fastcc void @jsonBlobEdit(ptr noundef nonnull %0, i32 noundef %.0238, i32 noundef %i.ad, ptr noundef null, i32 noundef 0)
  br label %jsonBlobMakeEditable.exit.thread

bb.g:                                             ; preds = %jsonBlobMakeEditable.exit
  %i.ae = getelementptr inbounds i8, ptr %2, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !227
  %.not303 = icmp eq i8 %i.af, 93
  br i1 %.not303, label %bb.h, label %.thread317

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !3397
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !3396
  tail call fastcc void @jsonBlobEdit(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0, ptr noundef %i.ah, i32 noundef %i.ai)
  br label %jsonBlobMakeEditable.exit.thread

bb.i:                                             ; preds = %jsonBlobMakeEditable.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3397
  %i.al = load i32, ptr %i.f, align 8, !tbaa !3396
  tail call fastcc void @jsonBlobEdit(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.aa, ptr noundef %i.ak, i32 noundef %i.al)
  br label %jsonBlobMakeEditable.exit.thread

jsonBlobMakeEditable.exit.thread:                 ; preds = %jsonBlobExpand.exit.i, %bb.c, %jsonBlobMakeEditable.exit, %bb.f, %bb.h, %bb.i, %bb.b
  %.1239 = phi i32 [ %.0238, %bb.f ], [ %1, %jsonBlobMakeEditable.exit ], [ %1, %bb.h ], [ %1, %bb.i ], [ %1, %bb.b ], [ %1, %bb.c ], [ %1, %jsonBlobExpand.exit.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %3, ptr %i.am, align 4, !tbaa !3398
  br label %.thread317

bb.j:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %0, align 8, !tbaa !3392  ; 5 uses
  %i.ao = zext i32 %1 to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !227
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 8 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !227 ; 2 uses
  %i.at = icmp eq i8 %i.as, 34
  br i1 %i.at, label %bb.k, label %.preheader

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.0240 = phi i32 [ 1, %bb.k ], [ %i.bc, %bb.n ] ; 6 uses
  %i.av = zext i32 %.0240 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !227
  switch i8 %i.ax, label %bb.n [
    i8 92, label %bb.m
    i8 0, label %.thread317
    i8 34, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.ay = add i32 %.0240, 1                       ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !227
  %.not300 = icmp eq i8 %i.bb, 0
  %spec.select = select i1 %.not300, i32 %.0240, i32 %i.ay
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.1241 = phi i32 [ %.0240, %bb.l ], [ %spec.select, %bb.m ]
  %i.bc = add i32 %.1241, 1
  br label %bb.l, !llvm.loop !3399

bb.o:                                             ; preds = %bb.l
  %i.bd = add i32 %.0240, -1                      ; 2 uses
  %i.be = add i32 %.0240, 1
  %i.bf = zext i32 %i.bd to i64
  %i.bg = tail call ptr @memchr(ptr noundef nonnull %i.au, i32 noundef 92, i64 noundef %i.bf) #60
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = zext i1 %i.bh to i32
  br label %bb.q

.preheader:                                       ; preds = %bb.j, %bb.p
  %i.bj = phi i8 [ %.pre, %bb.p ], [ %i.as, %bb.j ]
  %.2242 = phi i32 [ %i.bk, %bb.p ], [ 0, %bb.j ] ; 4 uses
  switch i8 %i.bj, label %bb.p [
    i8 0, label %.critedge5
    i8 46, label %.critedge5
    i8 91, label %.critedge5
  ]

bb.p:                                             ; preds = %.preheader
  %i.bk = add i32 %.2242, 1                       ; 2 uses
  %.phi.trans.insert = zext i32 %i.bk to i64
  %.phi.trans.insert371 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert371, align 1, !tbaa !227
  br label %.preheader, !llvm.loop !3400

.critedge5:                                       ; preds = %.preheader, %.preheader, %.preheader
  %i.bl = icmp eq i32 %.2242, 0
  br i1 %i.bl, label %.thread317, label %bb.q

bb.q:                                             ; preds = %.critedge5, %bb.o
  %.0256 = phi i32 [ %i.bd, %bb.o ], [ %.2242, %.critedge5 ] ; 7 uses
  %.0255 = phi ptr [ %i.au, %bb.o ], [ %i.ar, %.critedge5 ] ; 3 uses
  %.0248 = phi i32 [ %i.bi, %bb.o ], [ 1, %.critedge5 ] ; 3 uses
  %.3243 = phi i32 [ %i.be, %bb.o ], [ %.2242, %.critedge5 ] ; 2 uses
  %i.bm = and i8 %i.aq, 15
  %.not291 = icmp eq i8 %i.bm, 12
  br i1 %.not291, label %bb.r, label %.thread317

bb.r:                                             ; preds = %bb.q
  %i.bn = call fastcc i32 @jsonbPayloadSize(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.b)
  %i.bo = add i32 %i.bn, %1                       ; 4 uses
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !5
  %i.bq = add i32 %i.bo, %i.bp                    ; 5 uses
  %i.br = icmp ult i32 %i.bo, %i.bq
  br i1 %i.br, label %.lr.ph353, label %._crit_edge354

.lr.ph353:                                        ; preds = %bb.r
  %i.bs = icmp ne i32 %.0248, 0
  %i.bt = zext i32 %.0256 to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph353, %bb.ae
end_hunk_3
begin_hunk_4_@jsonBlobEdit:bb.a
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ap
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !227
  %i.ar = lshr i32 %.029.i.prol, 8                ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3424

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k
  %.029.i.unr = phi i32 [ %i.aj, %bb.k ], [ %i.ar, %.prol.preheader ]
  %.1.i.unr = phi i32 [ %.028.i, %bb.k ], [ %i.an, %.prol.preheader ]
  %i.as = icmp ult i32 %i.am, 3
  br i1 %i.as, label %jsonBlobOverwrite.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.029.i = phi i32 [ 0, %.new ], [ %.029.i.unr, %.prol.loopexit ] ; 4 uses
  %.1.i = phi i32 [ %i.bi, %.new ], [ %.1.i.unr, %.prol.loopexit ] ; 4 uses
  %i.at = add i32 %.1.i, -1
  %i.au = trunc i32 %.029.i to i8
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.av
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !227
  %i.ax = lshr i32 %.029.i, 8
  %i.ay = add i32 %.1.i, -2
  %i.az = trunc i32 %i.ax to i8
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ba
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !227
  %i.bc = lshr i32 %.029.i, 16
  %i.bd = add i32 %.1.i, -3
  %i.be = trunc i32 %i.bc to i8
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bf
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !227
  %i.bh = lshr i32 %.029.i, 24
  %i.bi = add i32 %.1.i, -4                       ; 3 uses
  %i.bj = trunc nuw i32 %i.bh to i8
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !227
  %i.bm = icmp eq i32 %i.bi, 1
  br i1 %i.bm, label %jsonBlobOverwrite.exit, label %.new

jsonBlobOverwrite.exit.thread:                    ; preds = %bb.h, %bb.f, %bb.d, %bb.c, %bb.b, %bb.j, %bb.a
  %.not43 = icmp eq i32 %4, %2
  br i1 %.not43, label %bb.v, label %bb.l

bb.l:                                             ; preds = %jsonBlobOverwrite.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !3394 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nsw i64 %i.c, %i.bp                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3391 ; 3 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp sgt i64 %i.bq, %i.bt
  %.pre49 = load ptr, ptr %0, align 8, !tbaa !3392 ; 8 uses
  br i1 %i.bu, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bv = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bw = icmp eq i32 %i.bs, 0
  %i.bx = shl i32 %i.bs, 1
  %narrow.i = select i1 %i.bw, i32 100, i32 %i.bx ; 2 uses
  %i.by = icmp ult i32 %narrow.i, %i.bv
  %i.bz = add i32 %i.bv, 100
  %.1.v.i = select i1 %i.by, i32 %i.bz, i32 %narrow.i ; 4 uses
  %.1.i45 = zext i32 %.1.v.i to i64               ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !3393 ; 6 uses
  %i.cc = icmp eq ptr %.pre49, null
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.cb, i64 noundef %.1.i45), !inline_history !394
  br label %sqlite3DbRealloc.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 512
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !100
  %i.cg = icmp ult ptr %.pre49, %i.cf
  br i1 %i.cg, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 496
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !174
  %.not.i.i = icmp ult ptr %.pre49, %i.ci
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = icmp ult i32 %.1.v.i, 129
  br i1 %i.cj, label %jsonBlobExpand.exit, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 504
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !99
  %.not19.i.i = icmp ult ptr %.pre49, %i.cl
  br i1 %.not19.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 438
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !353
  %i.co = zext i16 %i.cn to i32
  %.not20.i.i = icmp ugt i32 %.1.v.i, %i.co
  br i1 %.not20.i.i, label %bb.t, label %jsonBlobExpand.exit

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %i.cp = tail call fastcc ptr @dbReallocFinish(ptr noundef nonnull %i.cb, ptr noundef %.pre49, i64 noundef %.1.i45), !inline_history !394
  br label %sqlite3DbRealloc.exit.i

sqlite3DbRealloc.exit.i:                          ; preds = %bb.t, %bb.n
  %.0.i.i = phi ptr [ %i.cd, %bb.n ], [ %i.cp, %bb.t ] ; 2 uses
  %i.cq = icmp eq ptr %.0.i.i, null
  br i1 %i.cq, label %jsonBlobExpand.exit.thread, label %jsonBlobExpand.exit

jsonBlobExpand.exit.thread:                       ; preds = %sqlite3DbRealloc.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 1, ptr %i.cr, align 1, !tbaa !3357
  br label %jsonBlobOverwrite.exit

jsonBlobExpand.exit:                              ; preds = %bb.q, %bb.s, %sqlite3DbRealloc.exit.i
  %.0.i18.i = phi ptr [ %.0.i.i, %sqlite3DbRealloc.exit.i ], [ %.pre49, %bb.q ], [ %.pre49, %bb.s ]
  store ptr %.0.i18.i, ptr %0, align 8, !tbaa !3392
  store i32 %.1.v.i, ptr %i.br, align 4, !tbaa !3391
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 47
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !3357
  %i.cs = icmp eq i8 %.pre, 0
  br i1 %i.cs, label %jsonBlobExpand.exit._crit_edge, label %jsonBlobOverwrite.exit

jsonBlobExpand.exit._crit_edge:                   ; preds = %jsonBlobExpand.exit
  %.pre48 = load ptr, ptr %0, align 8, !tbaa !3392
  %.pre50 = load i32, ptr %i.bn, align 8, !tbaa !3394
  br label %bb.u

bb.u:                                             ; preds = %jsonBlobExpand.exit._crit_edge, %bb.l
  %i.ct = phi i32 [ %.pre50, %jsonBlobExpand.exit._crit_edge ], [ %i.bo, %bb.l ]
  %i.cu = phi ptr [ %.pre48, %jsonBlobExpand.exit._crit_edge ], [ %.pre49, %bb.l ] ; 2 uses
  %i.cv = add i32 %4, %1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  %i.cy = add i32 %2, %1                          ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %i.db = sub i32 %i.ct, %i.cy
  %i.dc = zext i32 %i.db to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.da, i64 %i.dc, i1 false)
  %i.dd = load i32, ptr %i.bn, align 8, !tbaa !3394
  %i.de = trunc i64 %i.c to i32                   ; 2 uses
  %i.df = add i32 %i.dd, %i.de
  store i32 %i.df, ptr %i.bn, align 8, !tbaa !3394
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3401
  %i.di = add i32 %i.dh, %i.de
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !3401
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %jsonBlobOverwrite.exit.thread
  %i.dj = icmp ne i32 %4, 0
  %or.cond5 = and i1 %i.d, %i.dj
  br i1 %or.cond5, label %bb.w, label %jsonBlobOverwrite.exit

bb.w:                                             ; preds = %bb.v
  %i.dk = load ptr, ptr %0, align 8, !tbaa !3392
  %i.dl = zext i32 %1 to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %3, i64 %i.a, i1 false)
  br label %jsonBlobOverwrite.exit

jsonBlobOverwrite.exit:                           ; preds = %.prol.loopexit, %.new, %jsonBlobExpand.exit.thread, %bb.v, %bb.w, %jsonBlobExpand.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonAfterEditSizeAdjust(ptr noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !3394
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3391
  store i32 %i.e, ptr %i.b, align 8, !tbaa !3394
  %i.f = call fastcc i32 @jsonbPayloadSize(ptr noundef %0, i32 noundef %1, ptr noundef %i.a) ; 0 uses
  store i32 %i.c, ptr %i.b, align 8, !tbaa !3394
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3401
  %i.i = load i32, ptr %i.a, align 4, !tbaa !5
  %i.j = add i32 %i.i, %i.h
  %i.k = tail call fastcc i32 @jsonBlobChangePayloadSize(ptr noundef %0, i32 noundef %1, i32 noundef %i.j)
  %i.l = load i32, ptr %i.g, align 4, !tbaa !3401
  %i.m = add nsw i32 %i.l, %i.k
  store i32 %i.m, ptr %i.g, align 4, !tbaa !3401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @jsonCreateEditSubstructure(ptr noundef captures(none) %0, ptr noundef nonnull initializes((0, 72)) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3393
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.b, ptr %i.c, align 8, !tbaa !3393
  %i.d = load i8, ptr %2, align 1, !tbaa !227
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3397
  store ptr %i.g, ptr %1, align 8, !tbaa !3392
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !3396
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !3394
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !3394
  %i.l = load i8, ptr %2, align 1, !tbaa !227
  %i.m = icmp eq i8 %i.l, 46
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @jsonCreateEditSubstructure.emptyObject, i64 %i.n
  store ptr %i.o, ptr %1, align 8, !tbaa !3392
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.q = load i8, ptr %i.p, align 1, !tbaa !3395
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 51
  store i8 %i.q, ptr %i.r, align 1, !tbaa !3395
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !3396
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %i.u, align 8, !tbaa !3396
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3397
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.w, ptr %i.x, align 8, !tbaa !3397
  %i.y = tail call fastcc i32 @jsonLookupStep(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 0)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !3357
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 47 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !3357
  %i.ad = or i8 %i.ac, %i.aa
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !3357
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.y, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @jsonLabelCompareEscaped(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef readonly captures(none) %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #40 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %.not = icmp eq i32 %2, 0
  %.not45 = icmp eq i32 %5, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.v, %bb.a
  %.041 = phi i32 [ %4, %bb.a ], [ %.142, %bb.v ] ; 9 uses
  %.039 = phi ptr [ %3, %bb.a ], [ %.140, %bb.v ] ; 9 uses
  %.037 = phi i32 [ %1, %bb.a ], [ %.138, %bb.v ] ; 9 uses
  %.036 = phi ptr [ %0, %bb.a ], [ %.1, %bb.v ]   ; 10 uses
  %i.c = icmp eq i32 %.037, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !5
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.d = load i8, ptr %.036, align 1, !tbaa !227  ; 3 uses
  %.not44 = icmp eq i8 %i.d, 92
  %or.cond = select i1 %.not, i1 %.not44, i1 false
  br i1 %or.cond, label %bb.k, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d
  %i.e = zext i8 %i.d to i32
  store i32 %i.e, ptr %i.a, align 4, !tbaa !5
  %i.f = icmp ugt i8 %i.d, -65
  br i1 %i.f, label %bb.e, label %bb.j

bb.e:                                             ; preds = %thread-pre-split
  %i.g = load i8, ptr %.036, align 1, !tbaa !227  ; 3 uses
  %i.h = zext i8 %i.g to i32
  %i.i = icmp ugt i8 %i.g, -65
  br i1 %i.i, label %bb.f, label %sqlite3Utf8ReadLimited.exit

bb.f:                                             ; preds = %bb.e
  %i.j = zext i8 %i.g to i64
  %i.k = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -192
  %i.m = load i8, ptr %i.l, align 1, !tbaa !227
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %.037, i32 4) ; 3 uses
  %i.o = icmp sgt i32 %.037, 1
  br i1 %i.o, label %.lr.ph.i, label %sqlite3Utf8ReadLimited.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.036, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !227
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 192
  %i.t = icmp eq i32 %i.s, 128
  br i1 %i.t, label %bb.g, label %sqlite3Utf8ReadLimited.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.u = shl nuw nsw i32 %i.n, 6
  %i.v = and i32 %i.r, 63
  %i.w = or disjoint i32 %i.v, %i.u               ; 3 uses
  %exitcond.not.i = icmp eq i32 %.037, 2
  br i1 %exitcond.not.i, label %sqlite3Utf8ReadLimited.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.036, i64 2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !227
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = and i32 %i.z, 192
  %i.ab = icmp eq i32 %i.aa, 128
  br i1 %i.ab, label %bb.h, label %sqlite3Utf8ReadLimited.exit

bb.h:                                             ; preds = %.lr.ph.i.1
  %i.ac = shl nuw nsw i32 %i.w, 6
  %i.ad = and i32 %i.z, 63
  %i.ae = or disjoint i32 %i.ad, %i.ac            ; 3 uses
  %exitcond.not.i.1 = icmp eq i32 %.037, 3
  br i1 %exitcond.not.i.1, label %sqlite3Utf8ReadLimited.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.036, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !227
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = and i32 %i.ah, 192
  %i.aj = icmp eq i32 %i.ai, 128
  br i1 %i.aj, label %bb.i, label %sqlite3Utf8ReadLimited.exit

bb.i:                                             ; preds = %.lr.ph.i.2
  %i.ak = shl nuw nsw i32 %i.ae, 6
  %i.al = and i32 %i.ah, 63
  %i.am = or disjoint i32 %i.al, %i.ak
  br label %sqlite3Utf8ReadLimited.exit

sqlite3Utf8ReadLimited.exit:                      ; preds = %bb.g, %bb.h, %bb.i, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.e, %bb.f
  %.115.i = phi i32 [ %i.h, %bb.e ], [ %i.n, %bb.f ], [ %i.ae, %.lr.ph.i.2 ], [ %i.n, %.lr.ph.i ], [ %i.w, %.lr.ph.i.1 ], [ %i.w, %bb.g ], [ %i.ae, %bb.h ], [ %i.am, %bb.i ]
  %.1.i = phi i32 [ 1, %bb.e ], [ 1, %bb.f ], [ 3, %.lr.ph.i.2 ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ %spec.store.select.i, %bb.i ], [ %spec.store.select.i, %bb.h ], [ %spec.store.select.i, %bb.g ] ; 2 uses
  store i32 %.115.i, ptr %i.a, align 4, !tbaa !5
  %i.an = sext i32 %.1.i to i64
  %i.ao = getelementptr inbounds i8, ptr %.036, i64 %i.an
  %i.ap = sub i32 %.037, %.1.i
  br label %bb.l

bb.j:                                             ; preds = %thread-pre-split
  %i.aq = getelementptr inbounds nuw i8, ptr %.036, i64 1
  %i.ar = add i32 %.037, -1
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.as = call fastcc i32 @jsonUnescapeOneChar(ptr noundef nonnull %.036, i32 noundef %.037, ptr noundef %i.a) ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.036, i64 %i.at
  %i.av = sub i32 %.037, %i.as
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %sqlite3Utf8ReadLimited.exit, %bb.c
  %.138 = phi i32 [ 0, %bb.c ], [ %i.ap, %sqlite3Utf8ReadLimited.exit ], [ %i.ar, %bb.j ], [ %i.av, %bb.k ]
  %.1 = phi ptr [ %.036, %bb.c ], [ %i.ao, %sqlite3Utf8ReadLimited.exit ], [ %i.aq, %bb.j ], [ %i.au, %bb.k ]
  %i.aw = icmp eq i32 %.041, 0
  br i1 %i.aw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load i8, ptr %.039, align 1, !tbaa !227 ; 3 uses
  %.not46 = icmp eq i8 %i.ax, 92
  %or.cond90 = select i1 %.not45, i1 %.not46, i1 false
  br i1 %or.cond90, label %bb.t, label %thread-pre-split60

thread-pre-split60:                               ; preds = %bb.m
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  store i32 %i.ay, ptr %i.b, align 4, !tbaa !5
  %i.az = icmp ugt i8 %i.ax, -65
  br i1 %i.az, label %bb.n, label %bb.s

bb.n:                                             ; preds = %thread-pre-split60
  %i.ba = load i8, ptr %.039, align 1, !tbaa !227 ; 3 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = icmp ugt i8 %i.ba, -65
  br i1 %i.bc, label %bb.o, label %sqlite3Utf8ReadLimited.exit59

bb.o:                                             ; preds = %bb.n
  %i.bd = zext i8 %i.ba to i64
  %i.be = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -192
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !227
  %i.bh = zext i8 %i.bg to i32                    ; 3 uses
end_hunk_4
begin_hunk_5_@sqlite3AddPrimaryKey:bb.a
bb.u:                                             ; preds = %bb.s
  %i.cj = zext i8 %i.cf to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !227
  %i.cm = zext i8 %i.cg to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !227
  %.not.i28.i = icmp eq i8 %i.cl, %i.co
  br i1 %.not.i28.i, label %bb.v, label %sqlite3StrICmp.exit30.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i27.i, i64 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.013.i26.i, i64 1
  br label %bb.s

sqlite3StrICmp.exit30.i:                          ; preds = %bb.u, %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %makeColumnPartOfPrimaryKey.exit78, label %bb.q

sqlite3ColumnIndex.exit:                          ; preds = %bb.t
  %i.cr = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3ColumnIndex.exit.thread

sqlite3ColumnIndex.exit.thread:                   ; preds = %bb.n, %sqlite3ColumnIndex.exit
  %.0.i97 = phi i32 [ %i.cr, %sqlite3ColumnIndex.exit ], [ %i.bg, %bb.n ] ; 3 uses
  %i.cs = zext nneg i32 %.0.i97 to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.cs ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 14 ; 2 uses
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !883 ; 2 uses
  %i.cw = or i16 %i.cv, 1
  store i16 %i.cw, ptr %i.cu, align 2, !tbaa !883
  %i.cx = and i16 %i.cv, 96
  %.not.i77 = icmp eq i16 %i.cx, 0
  br i1 %.not.i77, label %makeColumnPartOfPrimaryKey.exit78, label %bb.w

bb.w:                                             ; preds = %sqlite3ColumnIndex.exit.thread
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.813)
  br label %makeColumnPartOfPrimaryKey.exit78

makeColumnPartOfPrimaryKey.exit78:                ; preds = %sqlite3StrICmp.exit30.i, %bb.j, %bb.w, %sqlite3ColumnIndex.exit.thread, %sqlite3StringToId.exit
  %.164 = phi i32 [ %.0.i97, %bb.w ], [ %.0.i97, %sqlite3ColumnIndex.exit.thread ], [ %.063111, %sqlite3StringToId.exit ], [ %.063111, %bb.j ], [ -1, %sqlite3StrICmp.exit30.i ] ; 2 uses
  %.1 = phi ptr [ %i.ct, %bb.w ], [ %i.ct, %sqlite3ColumnIndex.exit.thread ], [ %.060113, %sqlite3StringToId.exit ], [ %.060113, %bb.j ], [ %.060113, %sqlite3StrICmp.exit30.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %makeColumnPartOfPrimaryKey.exit.loopexit, label %bb.h, !llvm.loop !3585

makeColumnPartOfPrimaryKey.exit.loopexit:         ; preds = %makeColumnPartOfPrimaryKey.exit78
  %i.cy = icmp eq i32 %i.v, 1
  br label %makeColumnPartOfPrimaryKey.exit

makeColumnPartOfPrimaryKey.exit:                  ; preds = %makeColumnPartOfPrimaryKey.exit.loopexit, %bb.f, %bb.e
  %.265 = phi i32 [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %.164, %makeColumnPartOfPrimaryKey.exit.loopexit ]
  %.061 = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ %i.cy, %makeColumnPartOfPrimaryKey.exit.loopexit ]
  %.2 = phi ptr [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %.1, %makeColumnPartOfPrimaryKey.exit.loopexit ] ; 2 uses
  %i.cz = icmp ne ptr %.2, null
  %or.cond = select i1 %.061, i1 %i.cz, i1 false
  br i1 %or.cond, label %bb.x, label %makeColumnPartOfPrimaryKey.exit.thread

bb.x:                                             ; preds = %makeColumnPartOfPrimaryKey.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.db = load i8, ptr %i.da, align 8
  %.mask = and i8 %i.db, -16
  %i.dc = icmp eq i8 %.mask, 64
  %i.dd = icmp ne i32 %4, 1
  %or.cond3 = and i1 %i.dd, %i.dc
  br i1 %or.cond3, label %bb.y, label %makeColumnPartOfPrimaryKey.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.df = load i8, ptr %i.de, align 4, !tbaa !1091
  %i.dg = icmp ugt i8 %i.df, 1
  %i.dh = icmp ne ptr %1, null                    ; 2 uses
  %or.cond5 = and i1 %i.dh, %i.dg
  br i1 %or.cond5, label %bb.z, label %sqlite3RenameTokenRemap.exit

bb.z:                                             ; preds = %bb.y
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !902 ; 2 uses
  %.not5.i79 = icmp eq ptr %i.dj, null
  br i1 %.not5.i79, label %sqlite3ExprSkipCollate.exit85, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.z, %bb.aa
  %.06.i81 = phi ptr [ %i.do, %bb.aa ], [ %i.dj, %bb.z ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.06.i81, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !367
  %i.dm = and i32 %i.dl, 8192
  %.not4.i82 = icmp eq i32 %i.dm, 0
  br i1 %.not4.i82, label %sqlite3ExprSkipCollate.exit85, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i80
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i81, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !371 ; 2 uses
  %.not.i83 = icmp eq ptr %i.do, null
  br i1 %.not.i83, label %sqlite3ExprSkipCollate.exit85, label %.lr.ph.i80, !llvm.loop !3584

sqlite3ExprSkipCollate.exit85:                    ; preds = %.lr.ph.i80, %bb.aa, %bb.z
  %.0.lcssa.i84 = phi ptr [ null, %bb.z ], [ %.06.i81, %.lr.ph.i80 ], [ null, %bb.aa ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.08.i = load ptr, ptr %i.dq, align 8, !tbaa !3500 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %sqlite3ExprSkipCollate.exit85, %bb.ac
  %.010.i = phi ptr [ %.0.i87, %bb.ac ], [ %.08.i, %sqlite3ExprSkipCollate.exit85 ] ; 3 uses
  %i.dr = load ptr, ptr %.010.i, align 8, !tbaa !3501
  %i.ds = icmp eq ptr %i.dr, %.0.lcssa.i84
  br i1 %i.ds, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i86
  store ptr %i.dp, ptr %.010.i, align 8, !tbaa !3501
  br label %sqlite3RenameTokenRemap.exit

bb.ac:                                            ; preds = %.lr.ph.i86
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.0.i87 = load ptr, ptr %i.dt, align 8, !tbaa !3500 ; 2 uses
  %.not.i88 = icmp eq ptr %.0.i87, null
  br i1 %.not.i88, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i86, !llvm.loop !3503

sqlite3RenameTokenRemap.exit:                     ; preds = %bb.ac, %bb.ab, %sqlite3ExprSkipCollate.exit85, %bb.y
  %i.du = trunc i32 %.265 to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i16 %i.du, ptr %i.dv, align 4, !tbaa !891
  %i.dw = trunc i32 %2 to i8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 62
  store i8 %i.dw, ptr %i.dx, align 2, !tbaa !3586
  %i.dy = shl nsw i32 %3, 3
  %i.dz = load i32, ptr %i.d, align 8, !tbaa !788
  %i.ea = or i32 %i.dz, %i.dy
  store i32 %i.ea, ptr %i.d, align 8, !tbaa !788
  br i1 %i.dh, label %.preheader.i, label %sqlite3ExprListDelete.exit

.preheader.i:                                     ; preds = %sqlite3RenameTokenRemap.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !3499
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 298
  store i8 %i.ec, ptr %i.ed, align 2, !tbaa !3587
  %i.ee = load i32, ptr %1, align 8, !tbaa !5     ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %.lr.ph.preheader.i, label %.split.thread

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i90 = zext nneg i32 %i.ee to i64
  br label %.lr.ph.i91

bb.ad:                                            ; preds = %.lr.ph.i91
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i90
  br i1 %exitcond.not.i94, label %.split.thread, label %.lr.ph.i91, !llvm.loop !3588

.lr.ph.i91:                                       ; preds = %bb.ad, %.lr.ph.preheader.i
  %indvars.iv.i92 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i93, %bb.ad ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i92 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 25
  %i.ei = load i16, ptr %i.eh, align 1
  %i.ej = and i16 %i.ei, 32
  %.not15.i = icmp eq i16 %i.ej, 0
  br i1 %.not15.i, label %bb.ad, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i91
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !3499 ; 2 uses
  %i.em = icmp eq i8 %i.el, 0
  %i.en = icmp eq i8 %i.el, 3
  %i.eo = or i1 %i.em, %i.en
  %i.ep = select i1 %i.eo, ptr @.str.815, ptr @.str.816
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.814, ptr noundef nonnull %i.ep)
  br label %.split.thread

makeColumnPartOfPrimaryKey.exit.thread:           ; preds = %bb.g, %bb.x, %makeColumnPartOfPrimaryKey.exit
  %.not75 = icmp eq i32 %3, 0
  br i1 %.not75, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %makeColumnPartOfPrimaryKey.exit.thread
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.812)
  br label %.split

bb.ag:                                            ; preds = %makeColumnPartOfPrimaryKey.exit.thread
  tail call fastcc void @sqlite3CreateIndex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef null, i32 noundef %4, i32 noundef 0, i8 noundef zeroext 2)
  br label %sqlite3ExprListDelete.exit

.split:                                           ; preds = %bb.af, %bb.a, %bb.c
  %.not.i95 = icmp eq ptr %1, null
  br i1 %.not.i95, label %sqlite3ExprListDelete.exit, label %.split.thread

.split.thread:                                    ; preds = %bb.ad, %bb.ae, %.preheader.i, %.split
  %i.eq = load ptr, ptr %0, align 8, !tbaa !651
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.eq, ptr noundef %1), !inline_history !1009
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %sqlite3RenameTokenRemap.exit, %bb.ag, %.split, %.split.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CreateIndex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef readnone captures(address_is_null) %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i8 noundef zeroext range(i8 0, 3) %10) unnamed_addr #0 {
bb.a:
  %11 = alloca %struct.Select, align 8            ; 5 uses
  %12 = alloca %struct.DbFixer, align 8           ; 16 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %13 = alloca %struct.Token, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #59
  %i.b = load ptr, ptr %0, align 8, !tbaa !651    ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store ptr null, ptr %i.a, align 8, !tbaa !251
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !313
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 8 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !1091
  %i.g = icmp eq i8 %i.f, 1
  %i.h = icmp ne i8 %10, 2
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 197 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !535
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !695
  %i.n = and i32 %i.m, 1
  %.not.i564 = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 113
  %i.t = load i8, ptr %i.s, align 1, !tbaa !954
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i8 %i.t, ptr %i.u, align 4, !tbaa !844
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 114
  %i.w = load i16, ptr %i.v, align 2, !tbaa !693
  %i.x = and i16 %i.w, 1
  %.not23.i = icmp eq i16 %i.x, 0
  br i1 %.not23.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call fastcc i32 @sqlite3InitOne(ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef nonnull %i.k, i32 noundef 0), !inline_history !955 ; 2 uses
  %.not24.i = icmp eq i32 %i.y, 0
  br i1 %.not24.i, label %bb.f, label %sqlite3ReadSchema.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !60  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ac = zext nneg i32 %i.aa to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 114
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !693
  %i.aj = and i16 %i.ai, 1
  %.not25.i = icmp eq i16 %i.aj, 0
  br i1 %.not25.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.ak = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.al = tail call fastcc i32 @sqlite3InitOne(ptr noundef nonnull %i.b, i32 noundef %i.ak, ptr noundef nonnull %i.k, i32 noundef 0), !inline_history !955 ; 2 uses
  %.not26.i = icmp eq i32 %i.al, 0
  br i1 %.not26.i, label %bb.h, label %sqlite3ReadSchema.exit

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.am = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !956

._crit_edge:                                      ; preds = %bb.h, %bb.f
  br i1 %.not.i564, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.an = load i32, ptr %i.l, align 4, !tbaa !695
  %i.ao = and i32 %i.an, -2
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !695
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 111
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !59
  %.not12.i = icmp eq i8 %i.aq, 0
  br i1 %.not12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i32, ptr %i.l, align 4, !tbaa !695
  %i.as = or i32 %i.ar, 16
  store i32 %i.as, ptr %i.l, align 4, !tbaa !695
  br label %bb.l

sqlite3ReadSchema.exit:                           ; preds = %bb.g, %bb.e
  %.0.i565 = phi i32 [ %i.y, %bb.e ], [ %i.al, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i565, ptr %i.at, align 8, !tbaa !302
  %i.au = load i32, ptr %i.c, align 4, !tbaa !313
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.c, align 4, !tbaa !313
  br label %.critedge.thread

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.j
  %.not.i520 = icmp eq ptr %4, null               ; 2 uses
  br i1 %.not.i520, label %.loopexit681, label %.preheader.i

.preheader.i:                                     ; preds = %bb.l
  %i.aw = load i32, ptr %4, align 8, !tbaa !5     ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader.i, label %.loopexit681

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.aw to i64
  br label %.lr.ph.i

bb.m:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit681, label %.lr.ph.i, !llvm.loop !3588

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 25
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = and i16 %i.ba, 32
  %.not15.i = icmp eq i16 %i.bb, 0
  br i1 %.not15.i, label %bb.m, label %sqlite3HasExplicitNulls.exit

sqlite3HasExplicitNulls.exit:                     ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !3499 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  %i.bf = icmp eq i8 %i.bd, 3
  %i.bg = or i1 %i.be, %i.bf
  %i.bh = select i1 %i.bg, ptr @.str.815, ptr @.str.816
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.814, ptr noundef nonnull %i.bh)
  br label %.critedge.thread

.loopexit681:                                     ; preds = %bb.m, %bb.l, %.preheader.i
  %i.bi = icmp ne ptr %3, null                    ; 6 uses
  br i1 %i.bi, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %.loopexit681
  %i.bj = load ptr, ptr %0, align 8, !tbaa !651   ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !376
  %.not.i885 = icmp eq i32 %i.bl, 0
  br i1 %.not.i885, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 197
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !535
  %.not17.i = icmp eq i8 %i.bn, 0
  br i1 %.not17.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.697)
  br label %.critedge.thread

bb.q:                                             ; preds = %bb.o
  %i.bo = tail call fastcc i32 @sqlite3FindDb(ptr noundef nonnull %i.bj, ptr noundef %1) ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.r, label %sqlite3TwoPartName.exit

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.698, ptr noundef %1)
  br label %.critedge.thread

bb.s:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 196
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !632
  %i.bs = zext i8 %i.br to i32
  br label %sqlite3TwoPartName.exit

sqlite3TwoPartName.exit:                          ; preds = %bb.s, %bb.q
  %.0886 = phi ptr [ %1, %bb.s ], [ %2, %bb.q ]   ; 5 uses
  %.0.i = phi i32 [ %i.bs, %bb.s ], [ %i.bo, %bb.q ] ; 3 uses
  %i.bt = load i8, ptr %i.i, align 1, !tbaa !535
  %.not468 = icmp eq i8 %i.bt, 0
  br i1 %.not468, label %bb.t, label %sqlite3FixSrcList.exit

bb.t:                                             ; preds = %sqlite3TwoPartName.exit
  %i.bu = tail call fastcc ptr @sqlite3SrcListLookup(ptr noundef nonnull %0, ptr noundef nonnull %3) ; 2 uses
  %i.bv = load i32, ptr %i.bk, align 8, !tbaa !376
  %i.bw = icmp eq i32 %i.bv, 0
  %i.bx = icmp ne ptr %i.bu, null
  %or.cond4 = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond4, label %bb.u, label %sqlite3FixSrcList.exit

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !923
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !61
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !101
  %i.ce = icmp eq ptr %i.bz, %i.cd
  %spec.select = select i1 %i.ce, i32 1, i32 %.0.i
  br label %sqlite3FixSrcList.exit

sqlite3FixSrcList.exit:                           ; preds = %bb.u, %bb.t, %sqlite3TwoPartName.exit
  %.0424 = phi i32 [ %.0.i, %sqlite3TwoPartName.exit ], [ %.0.i, %bb.t ], [ %spec.select, %bb.u ] ; 6 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !651
  store ptr %0, ptr %12, align 8, !tbaa !3589
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !61
  %i.ci = zext nneg i32 %.0424 to i64
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !494
  %i.cl = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !3591
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !101
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !3592
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 80
  store ptr @.str.817, ptr %i.cp, align 8, !tbaa !3593
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 88
  store ptr %.0886, ptr %i.cq, align 8, !tbaa !3594
  %i.cr = icmp eq i32 %.0424, 1                   ; 2 uses
  %i.cs = zext i1 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i8 %i.cs, ptr %i.ct, align 8, !tbaa !3595
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.cu, align 8, !tbaa !3596
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @fixExprCb, ptr %i.cv, align 8, !tbaa !3597
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr @fixSelectCb, ptr %i.cw, align 8, !tbaa !3598
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr @sqlite3WalkWinDefnDummyCallback, ptr %i.cx, align 8, !tbaa !3599
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %i.cy, align 8, !tbaa !3600
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 44
  store i16 0, ptr %i.cz, align 4, !tbaa !3601
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %12, ptr %i.da, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %11, i8 0, i64 120, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %3, ptr %i.db, align 8, !tbaa !3036
  %i.dc = call fastcc i32 @sqlite3WalkSelect(ptr noundef nonnull %i.cu, ptr noundef nonnull %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #59
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.de = call fastcc ptr @sqlite3LocateTableItem(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.dd) ; 10 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.critedge.thread, label %bb.v

bb.v:                                             ; preds = %sqlite3FixSrcList.exit
  br i1 %i.cr, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !61
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !101
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 96
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !923
  %.not469 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not469, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.de, align 8, !tbaa !947
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.818, ptr noundef %i.dm)
  br label %.thread623.thread

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 48
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !788
  %i.dp = and i32 %i.do, 128
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %sqlite3PrimaryKeyIndex.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.06.i = load ptr, ptr %i.dr, align 8, !tbaa !935 ; 2 uses
  %.not7.i = icmp eq ptr %.06.i, null
  br i1 %.not7.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i523

.lr.ph.i523:                                      ; preds = %bb.z, %bb.aa
  %.08.i = phi ptr [ %.0.i524, %bb.aa ], [ %.06.i, %bb.z ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.dt = load i16, ptr %i.ds, align 1
  %i.du = and i16 %i.dt, 3
  %.not5.i = icmp eq i16 %i.du, 2
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i523
  %i.dv = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %.0.i524 = load ptr, ptr %i.dv, align 8, !tbaa !935 ; 2 uses
  %.not.i525 = icmp eq ptr %.0.i524, null
  br i1 %.not.i525, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i523, !llvm.loop !2949

bb.ab:                                            ; preds = %.loopexit681
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1093 ; 4 uses
  %.not467 = icmp eq ptr %i.dx, null
  br i1 %.not467, label %.critedge.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 96
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !923 ; 2 uses
  %.not.i526 = icmp eq ptr %i.dz, null
  br i1 %.not.i526, label %sqlite3PrimaryKeyIndex.exit, label %.preheader.i527

.preheader.i527:                                  ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !61
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.preheader.i527
  %indvars.iv.i528 = phi i64 [ %indvars.iv.next.i529, %bb.ad ], [ 0, %.preheader.i527 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [32 x i8], ptr %i.eb, i64 %indvars.iv.i528
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !101
  %i.ef = icmp eq ptr %i.ee, %i.dz
  %indvars.iv.next.i529 = add nuw nsw i64 %indvars.iv.i528, 1
  br i1 %i.ef, label %.loopexit.loopexit.i, label %bb.ad

.loopexit.loopexit.i:                             ; preds = %bb.ad
  %i.eg = trunc nuw nsw i64 %indvars.iv.i528 to i32
  br label %sqlite3PrimaryKeyIndex.exit

sqlite3PrimaryKeyIndex.exit:                      ; preds = %bb.aa, %.lr.ph.i523, %.loopexit.loopexit.i, %bb.ac, %bb.z, %bb.y
  %i.eh = phi ptr [ %.0886, %bb.y ], [ null, %bb.ac ], [ %.0886, %bb.z ], [ null, %.loopexit.loopexit.i ], [ %.0886, %.lr.ph.i523 ], [ %.0886, %bb.aa ] ; 3 uses
  %.0433 = phi ptr [ null, %bb.y ], [ null, %bb.ac ], [ null, %bb.z ], [ null, %.loopexit.loopexit.i ], [ null, %bb.aa ], [ %.08.i, %.lr.ph.i523 ] ; 7 uses
  %.1425 = phi i32 [ %.0424, %bb.y ], [ -32768, %bb.ac ], [ %.0424, %bb.z ], [ %i.eg, %.loopexit.loopexit.i ], [ %.0424, %.lr.ph.i523 ], [ %.0424, %bb.aa ] ; 7 uses
  %.0402 = phi ptr [ %i.de, %bb.y ], [ %i.dx, %bb.ac ], [ %i.de, %bb.z ], [ %i.dx, %.loopexit.loopexit.i ], [ %i.de, %.lr.ph.i523 ], [ %i.de, %bb.aa ] ; 38 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !61
  %i.ek = sext i32 %.1425 to i64                  ; 3 uses
  %i.el = getelementptr inbounds [32 x i8], ptr %i.ej, i64 %i.ek ; 3 uses
  %i.em = load ptr, ptr %.0402, align 8, !tbaa !947 ; 10 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %sqlite3_strnicmp.exit.thread573, label %.lr.ph.i532.preheader

.lr.ph.i532.preheader:                            ; preds = %sqlite3PrimaryKeyIndex.exit
  %i.eo = load i8, ptr %i.em, align 1, !tbaa !227 ; 3 uses
  %.not.i533 = icmp eq i8 %i.eo, 0
  br i1 %.not.i533, label %sqlite3_strnicmp.exit, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i532.preheader
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ep
  %i.er = and i8 %i.eo, -33
  %i.es = icmp eq i8 %i.er, 83
  br i1 %i.es, label %.lr.ph.i532.1, label %split.i

.lr.ph.i532.1:                                    ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !227 ; 3 uses
  %.not.i533.1 = icmp eq i8 %i.eu, 0
  br i1 %.not.i533.1, label %sqlite3_strnicmp.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i532.1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ev
  %i.ex = and i8 %i.eu, -33
  %i.ey = icmp eq i8 %i.ex, 81
  br i1 %i.ey, label %.lr.ph.i532.2, label %split.i

.lr.ph.i532.2:                                    ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !227 ; 3 uses
  %.not.i533.2 = icmp eq i8 %i.fa, 0
  br i1 %.not.i533.2, label %sqlite3_strnicmp.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i532.2
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fb
  %i.fd = and i8 %i.fa, -33
  %i.fe = icmp eq i8 %i.fd, 76
  br i1 %i.fe, label %.lr.ph.i532.3, label %split.i

.lr.ph.i532.3:                                    ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !227 ; 3 uses
  %.not.i533.3 = icmp eq i8 %i.fg, 0
  br i1 %.not.i533.3, label %sqlite3_strnicmp.exit, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i532.3
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fh
  %i.fj = and i8 %i.fg, -33
  %i.fk = icmp eq i8 %i.fj, 73
  br i1 %i.fk, label %.lr.ph.i532.4, label %split.i

.lr.ph.i532.4:                                    ; preds = %bb.ah
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !227 ; 3 uses
  %.not.i533.4 = icmp eq i8 %i.fm, 0
  br i1 %.not.i533.4, label %sqlite3_strnicmp.exit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i532.4
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fn
  %i.fp = and i8 %i.fm, -33
  %i.fq = icmp eq i8 %i.fp, 84
  br i1 %i.fq, label %.lr.ph.i532.5, label %split.i

.lr.ph.i532.5:                                    ; preds = %bb.ai
  %i.fr = getelementptr inbounds nuw i8, ptr %i.em, i64 5
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !227 ; 3 uses
  %.not.i533.5 = icmp eq i8 %i.fs, 0
  br i1 %.not.i533.5, label %sqlite3_strnicmp.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i532.5
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ft
  %i.fv = and i8 %i.fs, -33
  %i.fw = icmp eq i8 %i.fv, 69
  br i1 %i.fw, label %.lr.ph.i532.6, label %split.i

.lr.ph.i532.6:                                    ; preds = %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !227 ; 3 uses
  %.not.i533.6 = icmp eq i8 %i.fy, 0
  br i1 %.not.i533.6, label %sqlite3_strnicmp.exit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i532.6
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fz
  %i.gb = icmp eq i8 %i.fy, 95
  br i1 %i.gb, label %sqlite3_strnicmp.exit.thread, label %split.i

split.i:                                          ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %.lcssa775.in = phi ptr [ %i.eq, %bb.ae ], [ %i.ew, %bb.af ], [ %i.fc, %bb.ag ], [ %i.fi, %bb.ah ], [ %i.fo, %bb.ai ], [ %i.fu, %bb.aj ], [ %i.ga, %bb.ak ]
  %.023.i.lcssa772 = phi ptr [ @.str.699, %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 1), %bb.af ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 2), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 3), %bb.ah ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 4), %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 5), %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 6), %bb.ak ]
  %.lcssa775 = load i8, ptr %.lcssa775.in, align 1, !tbaa !227
  %i.gc = zext i8 %.lcssa775 to i32
  br label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i532.preheader, %.lr.ph.i532.1, %.lr.ph.i532.2, %.lr.ph.i532.3, %.lr.ph.i532.4, %.lr.ph.i532.5, %.lr.ph.i532.6, %split.i
  %.023.i774 = phi ptr [ %.023.i.lcssa772, %split.i ], [ @.str.699, %.lr.ph.i532.preheader ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 1), %.lr.ph.i532.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 2), %.lr.ph.i532.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 3), %.lr.ph.i532.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 4), %.lr.ph.i532.4 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 5), %.lr.ph.i532.5 ], [ getelementptr inbounds nuw (i8, ptr @.str.699, i64 6), %.lr.ph.i532.6 ]
  %i.gd = phi i32 [ %i.gc, %split.i ], [ 0, %.lr.ph.i532.preheader ], [ 0, %.lr.ph.i532.1 ], [ 0, %.lr.ph.i532.2 ], [ 0, %.lr.ph.i532.3 ], [ 0, %.lr.ph.i532.4 ], [ 0, %.lr.ph.i532.5 ], [ 0, %.lr.ph.i532.6 ]
  %i.ge = load i8, ptr %.023.i774, align 1, !tbaa !227
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !227
  %i.gi = zext i8 %i.gh to i32
  %i.gj = icmp eq i32 %i.gd, %i.gi
  br i1 %i.gj, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit.thread573

sqlite3_strnicmp.exit.thread:                     ; preds = %bb.ak, %sqlite3_strnicmp.exit
  %i.gk = load i8, ptr %i.i, align 1, !tbaa !535
  %i.gl = icmp eq i8 %i.gk, 0
  %or.cond6 = and i1 %i.bi, %i.gl
  br i1 %or.cond6, label %bb.al, label %sqlite3_strnicmp.exit.thread573

bb.al:                                            ; preds = %sqlite3_strnicmp.exit.thread
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.819, ptr noundef nonnull %i.em)
  br label %.thread623.thread

sqlite3_strnicmp.exit.thread573:                  ; preds = %sqlite3PrimaryKeyIndex.exit, %sqlite3_strnicmp.exit.thread, %sqlite3_strnicmp.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %.0402, i64 63
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !922
  switch i8 %i.gn, label %bb.ao [
    i8 2, label %bb.am
    i8 1, label %bb.an
  ]

bb.am:                                            ; preds = %sqlite3_strnicmp.exit.thread573
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.820)
  br label %.thread623.thread

bb.an:                                            ; preds = %sqlite3_strnicmp.exit.thread573
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.821)
  br label %.thread623.thread

bb.ao:                                            ; preds = %sqlite3_strnicmp.exit.thread573
  %.not470 = icmp eq ptr %i.eh, null
  br i1 %.not470, label %bb.az, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.go = call fastcc ptr @sqlite3NameFromToken(ptr noundef nonnull %i.b, ptr noundef nonnull %i.eh) ; 12 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %.thread623.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gq = load ptr, ptr %.0402, align 8, !tbaa !947
  %i.gr = call fastcc i32 @sqlite3CheckObjectName(ptr noundef nonnull %0, ptr noundef %i.go, ptr noundef nonnull @.str.817, ptr noundef %i.gq)
  %.not473 = icmp eq i32 %i.gr, 0
  br i1 %.not473, label %bb.ar, label %.thread623.thread

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load i8, ptr %i.e, align 4, !tbaa !1091
  %i.gt = icmp ugt i8 %i.gs, 1
  br i1 %i.gt, label %.thread576, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gu = load i8, ptr %i.i, align 1, !tbaa !535
  %.not474 = icmp eq i8 %i.gu, 0
  %.pre = load ptr, ptr %i.el, align 8, !tbaa !494 ; 2 uses
  br i1 %.not474, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.gv = call fastcc ptr @sqlite3FindTable(ptr noundef nonnull %i.b, ptr noundef nonnull %i.go, ptr noundef %.pre)
  %.not475 = icmp eq ptr %i.gv, null
  br i1 %.not475, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.822, ptr noundef nonnull %i.go)
  br label %.thread623.thread

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.gw = call fastcc ptr @sqlite3FindIndex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.go, ptr noundef %.pre)
  %.not476 = icmp eq ptr %i.gw, null
  br i1 %.not476, label %.thread.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not477 = icmp eq i32 %9, 0
  br i1 %.not477, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.823, ptr noundef nonnull %i.go)
  br label %.thread623.thread

bb.ay:                                            ; preds = %bb.aw
  call fastcc void @sqlite3CodeVerifySchema(ptr noundef nonnull %0, i32 noundef %.1425)
  call fastcc void @sqlite3ForceNotReadOnly(ptr noundef nonnull %0)
  br label %.thread623.thread

bb.az:                                            ; preds = %bb.ao
  %i.gx = getelementptr inbounds nuw i8, ptr %.0402, i64 16
  %.0435703 = load ptr, ptr %i.gx, align 8, !tbaa !935 ; 2 uses
  %.not471704 = icmp eq ptr %.0435703, null
  br i1 %.not471704, label %._crit_edge709, label %.lr.ph708

.lr.ph708:                                        ; preds = %bb.az, %.lr.ph708
  %.0435706 = phi ptr [ %.0435, %.lr.ph708 ], [ %.0435703, %bb.az ]
  %.0434705 = phi i32 [ %i.gz, %.lr.ph708 ], [ 1, %bb.az ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.0435706, i64 40
  %i.gz = add nuw nsw i32 %.0434705, 1            ; 2 uses
  %.0435 = load ptr, ptr %i.gy, align 8, !tbaa !935 ; 2 uses
  %.not471 = icmp eq ptr %.0435, null
  br i1 %.not471, label %._crit_edge709, label %.lr.ph708, !llvm.loop !3602

._crit_edge709:                                   ; preds = %.lr.ph708, %bb.az
  %.0434.lcssa = phi i32 [ 1, %bb.az ], [ %i.gz, %.lr.ph708 ]
  %i.ha = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.824, ptr noundef %i.em, i32 noundef %.0434.lcssa) ; 5 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %.thread623.thread, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge709
  %i.hc = load i8, ptr %i.e, align 4, !tbaa !1091
  %.not472 = icmp eq i8 %i.hc, 0
  br i1 %.not472, label %.thread.thread, label %.thread

.thread:                                          ; preds = %bb.ba
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 7 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !227
  %i.hf = add i8 %i.he, 1
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !227
  %.pr.pr.pre = load i8, ptr %i.e, align 4, !tbaa !1091
  %i.hg = icmp ugt i8 %.pr.pr.pre, 1
  br i1 %i.hg, label %.thread576, label %.thread.thread

.thread.thread:                                   ; preds = %bb.av, %bb.ba, %.thread
  %.0411.ph649 = phi ptr [ %i.ha, %.thread ], [ %i.ha, %bb.ba ], [ %i.go, %bb.av ] ; 4 uses
  %i.hh = load ptr, ptr %i.el, align 8, !tbaa !494 ; 2 uses
  %i.hi = icmp eq i32 %.1425, 1                   ; 2 uses
  %i.hj = select i1 %i.hi, ptr @.str.387, ptr @.str.364
  %i.hk = call fastcc i32 @sqlite3AuthCheck(ptr noundef nonnull %0, i32 noundef 18, ptr noundef nonnull %i.hj, ptr noundef null, ptr noundef %i.hh)
  %.not478 = icmp eq i32 %i.hk, 0
  br i1 %.not478, label %bb.bb, label %.thread623.thread

bb.bb:                                            ; preds = %.thread.thread
  %spec.store.select = select i1 %i.hi, i32 3, i32 1
  %i.hl = load ptr, ptr %.0402, align 8, !tbaa !947
  %i.hm = call fastcc i32 @sqlite3AuthCheck(ptr noundef nonnull %0, i32 noundef %spec.store.select, ptr noundef nonnull %.0411.ph649, ptr noundef %i.hl, ptr noundef %i.hh)
  %.not479 = icmp eq i32 %i.hm, 0
  br i1 %.not479, label %.thread576, label %.thread623.thread

.thread576:                                       ; preds = %bb.ar, %bb.bb, %.thread
  %.0411578 = phi ptr [ %.0411.ph649, %bb.bb ], [ %i.ha, %.thread ], [ %i.go, %bb.ar ] ; 9 uses
  br i1 %.not.i520, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %.thread576
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #59
  %i.hn = getelementptr inbounds nuw i8, ptr %.0402, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !882
  %i.hp = getelementptr inbounds nuw i8, ptr %.0402, i64 54
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !881
  %i.hr = sext i16 %i.hq to i64
  %i.hs = getelementptr [16 x i8], ptr %i.ho, i64 %i.hr ; 2 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 -16
  %i.hu = getelementptr i8, ptr %i.hs, i64 -2     ; 2 uses
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !883
  %i.hw = or i16 %i.hv, 8
  store i16 %i.hw, ptr %i.hu, align 2, !tbaa !883
  %i.hx = load ptr, ptr %i.ht, align 8, !tbaa !929 ; 3 uses
  store ptr %i.hx, ptr %13, align 8, !tbaa !377
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %sqlite3TokenInit.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hz = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.hx) #60
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = and i32 %i.ia, 1073741823
  br label %sqlite3TokenInit.exit

sqlite3TokenInit.exit:                            ; preds = %bb.bc, %bb.bd
  %.0.i.i = phi i32 [ %i.ib, %bb.bd ], [ 0, %bb.bc ]
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.0.i.i, ptr %i.ic, align 8, !tbaa !376
  %i.id = call fastcc ptr @sqlite3ExprAlloc(ptr noundef nonnull %i.b, i32 noundef 60, ptr noundef nonnull %13, i32 noundef 0)
  %i.ie = load ptr, ptr %0, align 8, !tbaa !651
  %i.if = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.ie, ptr noundef %i.id) ; 4 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.be, label %.thread582

.thread582:                                       ; preds = %sqlite3TokenInit.exit
  %i.ih = load i32, ptr %i.if, align 8, !tbaa !5  ; 2 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr [24 x i8], ptr %i.if, i64 %i.ii
  %i.ik = icmp eq i32 %8, -1
  %i.il = trunc i32 %8 to i8
  %i.im = select i1 %i.ik, i8 0, i8 %i.il
  store i8 %i.im, ptr %i.ij, align 8, !tbaa !3499
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #59
  br label %bb.bh

bb.be:                                            ; preds = %sqlite3TokenInit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #59
  br label %.thread623.thread

bb.bf:                                            ; preds = %.thread576
  %i.in = load ptr, ptr %0, align 8, !tbaa !651
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 144
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !5
  %i.iq = load i32, ptr %4, align 8, !tbaa !5
  %i.ir = icmp sgt i32 %i.iq, %i.ip
  br i1 %i.ir, label %bb.bg, label %sqlite3ExprListCheckLength.exit

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.954, ptr noundef nonnull @.str.817)
  br label %sqlite3ExprListCheckLength.exit

sqlite3ExprListCheckLength.exit:                  ; preds = %bb.bf, %bb.bg
  %i.is = load i32, ptr %i.c, align 4, !tbaa !313
  %.not480 = icmp eq i32 %i.is, 0
  br i1 %.not480, label %sqlite3ExprListCheckLength.exit._crit_edge, label %.thread623.thread

sqlite3ExprListCheckLength.exit._crit_edge:       ; preds = %sqlite3ExprListCheckLength.exit
  %.pre797 = load i32, ptr %4, align 8, !tbaa !5
  br label %bb.bh

bb.bh:                                            ; preds = %sqlite3ExprListCheckLength.exit._crit_edge, %.thread582
  %i.it = phi i32 [ %i.ih, %.thread582 ], [ %.pre797, %sqlite3ExprListCheckLength.exit._crit_edge ] ; 3 uses
  %.0 = phi ptr [ %i.if, %.thread582 ], [ %4, %sqlite3ExprListCheckLength.exit._crit_edge ] ; 6 uses
  %i.iu = icmp sgt i32 %i.it, 0
  br i1 %i.iu, label %.lr.ph713, label %sqlite3Strlen30.exit538

.lr.ph713:                                        ; preds = %bb.bh
  %i.iv = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %wide.trip.count = zext nneg i32 %i.it to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.lr.ph713, %bb.bl
  %indvars.iv781 = phi i64 [ 0, %.lr.ph713 ], [ %indvars.iv.next782, %bb.bl ] ; 2 uses
  %.0428710 = phi i32 [ 0, %.lr.ph713 ], [ %.1429, %bb.bl ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %i.iv, i64 %indvars.iv781
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !902 ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 8, !tbaa !3021
  %i.iz = icmp eq i8 %i.iy, 114
  br i1 %i.iz, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !227 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %sqlite3Strlen30.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jd = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.jb) #60
  %i.je = trunc i64 %i.jd to i32
  %i.jf = and i32 %i.je, 1073741823
  %i.jg = add nuw nsw i32 %i.jf, 1
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.bj, %bb.bk
  %.0.i536 = phi i32 [ %i.jg, %bb.bk ], [ 1, %bb.bj ]
  %i.jh = add nuw nsw i32 %.0.i536, %.0428710
  br label %bb.bl

bb.bl:                                            ; preds = %sqlite3Strlen30.exit, %bb.bi
  %.1429 = phi i32 [ %i.jh, %sqlite3Strlen30.exit ], [ %.0428710, %bb.bi ] ; 2 uses
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next782, %wide.trip.count
  br i1 %exitcond.not, label %sqlite3Strlen30.exit538.loopexit, label %bb.bi, !llvm.loop !3603

sqlite3Strlen30.exit538.loopexit:                 ; preds = %bb.bl
  %i.ji = add nuw nsw i32 %.1429, 1
  br label %sqlite3Strlen30.exit538

sqlite3Strlen30.exit538:                          ; preds = %sqlite3Strlen30.exit538.loopexit, %bb.bh
  %.0428.lcssa = phi i32 [ 1, %bb.bh ], [ %i.ji, %sqlite3Strlen30.exit538.loopexit ]
  %i.jj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0411578) #60
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = and i32 %i.jk, 1073741823               ; 2 uses
  %.not481 = icmp eq ptr %.0433, null             ; 2 uses
  br i1 %.not481, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %sqlite3Strlen30.exit538
  %i.jm = getelementptr inbounds nuw i8, ptr %.0433, i64 94
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !936
  %i.jo = zext i16 %i.jn to i32
  br label %bb.bn

bb.bn:                                            ; preds = %sqlite3Strlen30.exit538, %bb.bm
  %i.jp = phi i32 [ %i.jo, %bb.bm ], [ 1, %sqlite3Strlen30.exit538 ]
  %i.jq = add nsw i32 %i.jp, %i.it
  %i.jr = add nuw nsw i32 %i.jl, %.0428.lcssa
  %i.js = call fastcc ptr @sqlite3AllocateIndexObject(ptr noundef %i.b, i32 noundef %i.jq, i32 noundef %i.jr, ptr noundef %i.a) ; 46 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 103
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !550
  %.not482 = icmp eq i8 %i.ju, 0
  br i1 %.not482, label %bb.bo, label %.thread595

bb.bo:                                            ; preds = %bb.bn
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !251 ; 3 uses
  store ptr %i.jv, ptr %i.js, align 8, !tbaa !3458
  %i.jw = add nuw nsw i32 %i.jl, 1
  %i.jx = zext nneg i32 %i.jw to i64              ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jx ; 3 uses
  store ptr %i.jy, ptr %i.a, align 8, !tbaa !251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jv, ptr noundef nonnull align 1 dereferenceable(1) %.0411578, i64 %i.jx, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 24 ; 2 uses
  store ptr %.0402, ptr %i.jz, align 8, !tbaa !1098
  %i.ka = trunc i32 %5 to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 98 ; 3 uses
  store i8 %i.ka, ptr %i.kb, align 2, !tbaa !2990
  %.not483 = icmp eq i32 %5, 0                    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 99 ; 11 uses
  %i.kd = load i16, ptr %i.kc, align 1
  %i.ke = select i1 %.not483, i16 0, i16 8
  %i.kf = and i16 %i.kd, -12
  %i.kg = zext nneg i8 %10 to i16
  %i.kh = or disjoint i16 %i.ke, %i.kg
  %i.ki = or disjoint i16 %i.kh, %i.kf
  store i16 %i.ki, ptr %i.kc, align 1
  %i.kj = load ptr, ptr %i.ei, align 8, !tbaa !61
  %i.kk = getelementptr inbounds [32 x i8], ptr %i.kj, i64 %i.ek
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !101
  %i.kn = getelementptr inbounds nuw i8, ptr %i.js, i64 48 ; 2 uses
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !3459
  %i.ko = load i32, ptr %.0, align 8, !tbaa !5
  %i.kp = trunc i32 %i.ko to i16
  %i.kq = getelementptr inbounds nuw i8, ptr %i.js, i64 94 ; 5 uses
  store i16 %i.kp, ptr %i.kq, align 2, !tbaa !936
  %.not484 = icmp eq ptr %7, null
  br i1 %.not484, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kr = call fastcc i32 @sqlite3ResolveSelfReference(ptr noundef nonnull %0, ptr noundef nonnull %.0402, i32 noundef 2, ptr noundef nonnull %7, ptr noundef null) ; 0 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  store ptr %7, ptr %i.ks, align 8, !tbaa !2797
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.kt = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !101
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 112
  %i.kw = load i8, ptr %i.kv, align 8, !tbaa !2685
  %i.kx = icmp ugt i8 %i.kw, 3
  %i.ky = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.kz = load i8, ptr %i.e, align 4, !tbaa !1091
  %i.la = icmp ugt i8 %i.kz, 1
  br i1 %i.la, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.lb = getelementptr inbounds nuw i8, ptr %i.js, i64 80
  store ptr %.0, ptr %i.lb, align 8, !tbaa !2799
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.1 = phi ptr [ null, %bb.br ], [ %.0, %bb.bq ] ; 2 uses
  %i.lc = load i16, ptr %i.kq, align 2, !tbaa !936
  %.not754 = icmp eq i16 %i.lc, 0
  br i1 %.not754, label %._crit_edge725, label %.lr.ph724

.lr.ph724:                                        ; preds = %bb.bs
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.le = getelementptr inbounds nuw i8, ptr %i.js, i64 80 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.js, i64 8 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0402, i64 8 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0402, i64 52
  %i.li = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph724, %bb.ck
  %indvars.iv784.a = phi i64 [ 0, %.lr.ph724 ], [ %indvars.iv.next785.a, %bb.ck ] ; 5 uses
  %.2722 = phi ptr [ %.1, %.lr.ph724 ], [ %.4588, %bb.ck ] ; 7 uses
  %.0427719 = phi ptr [ %i.ky, %.lr.ph724 ], [ %i.oi, %bb.ck ] ; 6 uses
  %i.lk = phi ptr [ %i.jy, %.lr.ph724 ], [ %14, %bb.ck ] ; 8 uses
  %i.ll = load ptr, ptr %.0427719, align 8, !tbaa !902 ; 4 uses
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !3021
  switch i8 %i.lm, label %sqlite3StringToId.exit [
    i8 118, label %.sink.split.i
    i8 114, label %bb.bu
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !371 ; 2 uses
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !3021
  %i.lq = icmp eq i8 %i.lp, 118
  br i1 %i.lq, label %.sink.split.i, label %sqlite3StringToId.exit

.sink.split.i:                                    ; preds = %bb.bu, %bb.bt
  %.sink.i = phi ptr [ %i.ll, %bb.bt ], [ %i.lo, %bb.bu ]
  store i8 60, ptr %.sink.i, align 8, !tbaa !3021
  br label %sqlite3StringToId.exit

sqlite3StringToId.exit:                           ; preds = %bb.bt, %bb.bu, %.sink.split.i
  %i.lr = call fastcc i32 @sqlite3ResolveSelfReference(ptr noundef nonnull %0, ptr noundef nonnull %.0402, i32 noundef 32, ptr noundef nonnull %i.ll, ptr noundef null) ; 0 uses
  %i.ls = load i32, ptr %i.c, align 4, !tbaa !313
  %.not496 = icmp eq i32 %i.ls, 0
  br i1 %.not496, label %.lr.ph.i540, label %.thread634.loopexit

.lr.ph.i540:                                      ; preds = %sqlite3StringToId.exit, %.lr.ph.i540
  %.06.i541.in = phi ptr [ %i.lw, %.lr.ph.i540 ], [ %.0427719, %sqlite3StringToId.exit ]
  %.06.i541 = load ptr, ptr %.06.i541.in, align 8, !tbaa !366, !nonnull !1096, !noundef !1096 ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.06.i541, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !367
  %i.lv = and i32 %i.lu, 8192
  %.not4.i = icmp eq i32 %i.lv, 0
  %i.lw = getelementptr inbounds nuw i8, ptr %.06.i541, i64 16
  br i1 %.not4.i, label %sqlite3ExprSkipCollate.exit, label %.lr.ph.i540

sqlite3ExprSkipCollate.exit:                      ; preds = %.lr.ph.i540
  %i.lx = load i8, ptr %.06.i541, align 8, !tbaa !3021
  %.not497 = icmp eq i8 %i.lx, -88
  br i1 %.not497, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %sqlite3ExprSkipCollate.exit
  %i.ly = load ptr, ptr %i.ld, align 8, !tbaa !1093
  %i.lz = icmp eq ptr %.0402, %i.ly
  br i1 %i.lz, label %.thread595.thread, label %bb.bw

.thread595.thread:                                ; preds = %bb.bv
  store ptr %i.lk, ptr %i.a, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.825)
  br label %.thread634

bb.bw:                                            ; preds = %bb.bv
  %i.ma = load ptr, ptr %i.le, align 8, !tbaa !2799
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %bb.bx, label %.thread584

bb.bx:                                            ; preds = %bb.bw
  store ptr %.2722, ptr %i.le, align 8, !tbaa !2799
  br label %.thread584

bb.by:                                            ; preds = %sqlite3ExprSkipCollate.exit
  %i.mc = getelementptr inbounds nuw i8, ptr %.06.i541, i64 48
  %i.md = load i16, ptr %i.mc, align 8, !tbaa !3488 ; 2 uses
  %i.me = sext i16 %i.md to i32                   ; 3 uses
  %i.mf = icmp slt i16 %i.md, 0
  br i1 %i.mf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mg = load i16, ptr %i.lh, align 4, !tbaa !891
  %i.mh = sext i16 %i.mg to i32
  br label %bb.ce

bb.ca:                                            ; preds = %bb.by
  %i.mi = load ptr, ptr %i.lg, align 8, !tbaa !882 ; 2 uses
  %i.mj = zext nneg i32 %i.me to i64              ; 2 uses
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.mi, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load i8, ptr %i.ml, align 8
  %i.mn = and i8 %i.mm, 15
  %i.mo = icmp eq i8 %i.mn, 0
  br i1 %i.mo, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.mp = load i16, ptr %i.kc, align 1
  %i.mq = and i16 %i.mp, -9
  store i16 %i.mq, ptr %i.kc, align 1
  %.pre798 = load ptr, ptr %i.lg, align 8, !tbaa !882
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.mr = phi ptr [ %.pre798, %bb.cb ], [ %i.mi, %bb.ca ]
  %i.ms = getelementptr inbounds nuw [16 x i8], ptr %i.mr, i64 %i.mj
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 14
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !883
  %i.mv = and i16 %i.mu, 32
  %.not498 = icmp eq i16 %i.mv, 0
  br i1 %.not498, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.mw = load i16, ptr %i.kc, align 1
  %i.mx = or i16 %i.mw, 3072
  store i16 %i.mx, ptr %i.kc, align 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.bz, %bb.cd, %bb.cc
  %.0417 = phi i32 [ %i.mh, %bb.bz ], [ %i.me, %bb.cd ], [ %i.me, %bb.cc ] ; 3 uses
  %i.my = trunc nsw i32 %.0417 to i16
  %i.mz = load ptr, ptr %i.lf, align 8, !tbaa !878
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mz, i64 %indvars.iv784.a
  store i16 %i.my, ptr %i.na, align 2, !tbaa !330
  %i.nb = load ptr, ptr %.0427719, align 8, !tbaa !902 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 8, !tbaa !3021
  %i.nd = icmp eq i8 %i.nc, 114
  br i1 %i.nd, label %bb.cf, label %bb.ch

.thread584:                                       ; preds = %bb.bw, %bb.bx
  %.3 = phi ptr [ null, %bb.bx ], [ %.2722, %bb.bw ] ; 2 uses
  %i.ne = load ptr, ptr %i.lf, align 8, !tbaa !878
  %i.nf = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %indvars.iv784.a
  store i16 -2, ptr %i.nf, align 2, !tbaa !330
  %i.ng = load i16, ptr %i.kc, align 1
  %i.nh = and i16 %i.ng, -2057
  %i.ni = or disjoint i16 %i.nh, 2048
  store i16 %i.ni, ptr %i.kc, align 1
  %i.nj = load ptr, ptr %.0427719, align 8, !tbaa !902 ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 8, !tbaa !3021
  %i.nl = icmp eq i8 %i.nk, 114
  br i1 %i.nl, label %bb.cf, label %.thread591

bb.cf:                                            ; preds = %.thread584, %bb.ce
  %i.nm = phi ptr [ %i.nj, %.thread584 ], [ %i.nb, %bb.ce ]
  %.4590 = phi ptr [ %.3, %.thread584 ], [ %.2722, %bb.ce ]
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !227 ; 3 uses
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %sqlite3Strlen30.exit545, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nq = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.no) #60
  %i.nr = and i64 %i.nq, 1073741823
  %i.ns = add nuw nsw i64 %i.nr, 1
  br label %sqlite3Strlen30.exit545

sqlite3Strlen30.exit545:                          ; preds = %bb.cf, %bb.cg
  %.0.i544 = phi i64 [ %i.ns, %bb.cg ], [ 1, %bb.cf ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lk, ptr noundef nonnull align 1 dereferenceable(1) %i.no, i64 %.0.i544, i1 false)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.0.i544
  br label %.thread591

bb.ch:                                            ; preds = %bb.ce
  %i.nu = icmp sgt i32 %.0417, -1
  br i1 %i.nu, label %bb.ci, label %.thread591

bb.ci:                                            ; preds = %bb.ch
  %i.nv = load ptr, ptr %i.lg, align 8, !tbaa !882
  %i.nw = zext nneg i32 %.0417 to i64
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = call fastcc ptr @sqlite3ColumnColl(ptr noundef %i.nx)
  br label %.thread591

.thread591:                                       ; preds = %.thread584, %bb.ch, %bb.ci, %sqlite3Strlen30.exit545
  %14 = phi ptr [ %i.nt, %sqlite3Strlen30.exit545 ], [ %i.lk, %bb.ci ], [ %i.lk, %bb.ch ], [ %i.lk, %.thread584 ] ; 3 uses
  %.4588 = phi ptr [ %.4590, %sqlite3Strlen30.exit545 ], [ %.2722, %bb.ci ], [ %.2722, %bb.ch ], [ %.3, %.thread584 ] ; 3 uses
  %.0426 = phi ptr [ %i.lk, %sqlite3Strlen30.exit545 ], [ %i.ny, %bb.ci ], [ null, %bb.ch ], [ null, %.thread584 ] ; 2 uses
  %.not499 = icmp eq ptr %.0426, null
  %spec.store.select7 = select i1 %.not499, ptr @.str.136, ptr %.0426 ; 2 uses
  %i.nz = load i8, ptr %i.i, align 1, !tbaa !535
  %.not500 = icmp eq i8 %i.nz, 0
  br i1 %.not500, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread591
  %i.oa = call fastcc ptr @sqlite3LocateCollSeq(ptr noundef nonnull %0, ptr noundef nonnull %spec.store.select7)
  %.not501 = icmp eq ptr %i.oa, null
  br i1 %.not501, label %.thread634.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.thread591
  %i.ob = load ptr, ptr %i.li, align 8, !tbaa !2803
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %indvars.iv784.a
  store ptr %spec.store.select7, ptr %i.oc, align 8, !tbaa !251
  %i.od = getelementptr inbounds nuw i8, ptr %.0427719, i64 16
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !3499
  %i.of = select i1 %i.kx, i8 %i.oe, i8 0
  %i.og = load ptr, ptr %i.lj, align 8, !tbaa !3604
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %indvars.iv784.a
  store i8 %i.of, ptr %i.oh, align 1, !tbaa !227
  %indvars.iv.next785.a = add nuw nsw i64 %indvars.iv784.a, 1 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.0427719, i64 24
  %i.oj = load i16, ptr %i.kq, align 2, !tbaa !936
  %i.ok = zext i16 %i.oj to i64
  %i.ol = icmp samesign ult i64 %indvars.iv.next785.a, %i.ok
  br i1 %i.ol, label %bb.bt, label %._crit_edge725.loopexit, !llvm.loop !3605

._crit_edge725.loopexit:                          ; preds = %bb.ck
  %i.om = trunc nuw nsw i64 %indvars.iv.next785.a to i32
  br label %._crit_edge725

._crit_edge725:                                   ; preds = %._crit_edge725.loopexit, %bb.bs
  %.lcssa716 = phi ptr [ %i.jy, %bb.bs ], [ %14, %._crit_edge725.loopexit ]
  %.1414.lcssa = phi i32 [ 0, %bb.bs ], [ %i.om, %._crit_edge725.loopexit ] ; 2 uses
  %.2.lcssa = phi ptr [ %.1, %bb.bs ], [ %.4588, %._crit_edge725.loopexit ] ; 8 uses
  store ptr %.lcssa716, ptr %i.a, align 8
  br i1 %.not481, label %bb.cp, label %.preheader679

.preheader679:                                    ; preds = %._crit_edge725
  %i.on = getelementptr inbounds nuw i8, ptr %.0433, i64 94 ; 2 uses
  %i.oo = load i16, ptr %i.on, align 2, !tbaa !936 ; 2 uses
  %.not755 = icmp eq i16 %i.oo, 0
  br i1 %.not755, label %.loopexit680, label %.lr.ph731.a

.lr.ph731.a:                                      ; preds = %.preheader679
  %i.op = getelementptr inbounds nuw i8, ptr %i.js, i64 96 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.0433, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.os = getelementptr inbounds nuw i8, ptr %.0433, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.ou = getelementptr inbounds nuw i8, ptr %.0433, i64 56
  %i.ov = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph731.a, %bb.co
  %i.ow = phi i16 [ %i.oo, %.lr.ph731.a ], [ %i.pu, %bb.co ]
  %indvars.iv787 = phi i64 [ 0, %.lr.ph731.a ], [ %indvars.iv.next788, %bb.co ] ; 5 uses
  %.2415730 = phi i32 [ %.1414.lcssa, %.lr.ph731.a ], [ %.3416, %bb.co ] ; 3 uses
  %i.ox = load i16, ptr %i.kq, align 2, !tbaa !936
  %i.oy = zext i16 %i.ox to i32
  %i.oz = trunc nuw nsw i64 %indvars.iv787 to i32
  %i.pa = call fastcc i32 @isDupColumn(ptr noundef nonnull %i.js, i32 noundef %i.oy, ptr noundef nonnull %.0433, i32 noundef %i.oz)
  %.not495 = icmp eq i32 %i.pa, 0
  br i1 %.not495, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pb = load i16, ptr %i.op, align 8, !tbaa !875
  %i.pc = add i16 %i.pb, -1
  store i16 %i.pc, ptr %i.op, align 8, !tbaa !875
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.pd = load ptr, ptr %i.oq, align 8, !tbaa !878
  %i.pe = getelementptr inbounds nuw [2 x i8], ptr %i.pd, i64 %indvars.iv787
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !330
  %i.pg = load ptr, ptr %i.or, align 8, !tbaa !878
  %i.ph = sext i32 %.2415730 to i64               ; 3 uses
  %i.pi = getelementptr inbounds [2 x i8], ptr %i.pg, i64 %i.ph
  store i16 %i.pf, ptr %i.pi, align 2, !tbaa !330
  %i.pj = load ptr, ptr %i.os, align 8, !tbaa !2803
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv787
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !251
  %i.pm = load ptr, ptr %i.ot, align 8, !tbaa !2803
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.pm, i64 %i.ph
  store ptr %i.pl, ptr %i.pn, align 8, !tbaa !251
  %i.po = load ptr, ptr %i.ou, align 8, !tbaa !3604
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %indvars.iv787
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !227
  %i.pr = load ptr, ptr %i.ov, align 8, !tbaa !3604
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 %i.ph
  store i8 %i.pq, ptr %i.ps, align 1, !tbaa !227
  %i.pt = add nsw i32 %.2415730, 1
  %.pre799 = load i16, ptr %i.on, align 2, !tbaa !936
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.pu = phi i16 [ %i.ow, %bb.cm ], [ %.pre799, %bb.cn ] ; 2 uses
  %.3416 = phi i32 [ %.2415730, %bb.cm ], [ %i.pt, %bb.cn ]
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1 ; 2 uses
  %i.pv = zext i16 %i.pu to i64
  %i.pw = icmp samesign ult i64 %indvars.iv.next788, %i.pv
  br i1 %i.pw, label %bb.cl, label %.loopexit680, !llvm.loop !3606

bb.cp:                                            ; preds = %._crit_edge725
  %i.px = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !878
  %i.pz = zext nneg i32 %.1414.lcssa to i64       ; 2 uses
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %i.pz
  store i16 -1, ptr %i.qa, align 2, !tbaa !330
  %i.qb = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !2803
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.pz
  store ptr @.str.136, ptr %i.qd, align 8, !tbaa !251
  br label %.loopexit680

.loopexit680:                                     ; preds = %bb.co, %.preheader679, %bb.cp
  call fastcc void @sqlite3DefaultRowEst(ptr noundef nonnull %i.js)
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !1093
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.loopexit680
  call fastcc void @estimateIndexWidth(ptr noundef nonnull %i.js)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.loopexit680
  call fastcc void @recomputeColumnsNotIndexed(ptr noundef nonnull %i.js)
  br i1 %i.bi, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %bb.cr
  %i.qh = getelementptr inbounds nuw i8, ptr %i.js, i64 96
  %i.qi = load i16, ptr %i.qh, align 8, !tbaa !875
  %.fr = freeze i16 %i.qi                         ; 3 uses
  %i.qj = zext i16 %.fr to i32
  %i.qk = getelementptr inbounds nuw i8, ptr %.0402, i64 54 ; 2 uses
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !881
  %i.qm = sext i16 %i.ql to i32
  %.not485 = icmp slt i32 %i.qj, %i.qm
  br i1 %.not485, label %.loopexit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.qn = load i16, ptr %i.kc, align 1            ; 2 uses
  %i.qo = or i16 %i.qn, 32
  store i16 %i.qo, ptr %i.kc, align 1
  %i.qp = load i16, ptr %i.qk, align 2, !tbaa !881 ; 2 uses
  %i.qq = sext i16 %i.qp to i32                   ; 2 uses
  %i.qr = icmp sgt i16 %i.qp, 0
  br i1 %i.qr, label %.lr.ph734, label %.loopexit

.lr.ph734:                                        ; preds = %bb.ct
  %i.qs = getelementptr inbounds nuw i8, ptr %.0402, i64 52
  %i.qt = load i16, ptr %i.qs, align 4, !tbaa !891 ; 2 uses
  %i.qu = sext i16 %i.qt to i32                   ; 2 uses
  %.not.i546 = icmp eq i16 %.fr, 0
  %i.qv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %wide.trip.count.i548 = zext i16 %.fr to i64
  br i1 %.not.i546, label %.lr.ph734.split.us.preheader, label %.lr.ph734.split

.lr.ph734.split.us.preheader:                     ; preds = %.lr.ph734
  %i.qw = icmp ne i16 %i.qt, 0
  %i.qx = add nuw nsw i32 %i.qu, 1
  %exitcond790.not.us = icmp ne i32 %i.qx, %i.qq
  %brmerge = select i1 %i.qw, i1 true, i1 %exitcond790.not.us
  br i1 %brmerge, label %sqlite3TableColumnToIndex.exit.thread, label %.loopexit

.lr.ph734.split:                                  ; preds = %.lr.ph734, %sqlite3TableColumnToIndex.exit
  %.3420732 = phi i32 [ %i.rg, %sqlite3TableColumnToIndex.exit ], [ 0, %.lr.ph734 ] ; 3 uses
  %i.qy = icmp eq i32 %.3420732, %i.qu
  br i1 %i.qy, label %sqlite3TableColumnToIndex.exit, label %.lr.ph.i547

.lr.ph.i547:                                      ; preds = %.lr.ph734.split
  %sext.i = shl i32 %.3420732, 16
  %i.qz = ashr exact i32 %sext.i, 16
  %i.ra = load ptr, ptr %i.qv, align 8, !tbaa !878
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %.lr.ph.i547
  %indvars.iv.i549 = phi i64 [ 0, %.lr.ph.i547 ], [ %indvars.iv.next.i550, %bb.cv ] ; 2 uses
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.ra, i64 %indvars.iv.i549
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !330
  %i.rd = sext i16 %i.rc to i32
  %i.re = icmp eq i32 %i.qz, %i.rd
  br i1 %i.re, label %sqlite3TableColumnToIndex.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %indvars.iv.next.i550 = add nuw nsw i64 %indvars.iv.i549, 1 ; 2 uses
  %exitcond.not.i551 = icmp eq i64 %indvars.iv.next.i550, %wide.trip.count.i548
  br i1 %exitcond.not.i551, label %sqlite3TableColumnToIndex.exit.thread, label %bb.cu, !llvm.loop !879

sqlite3TableColumnToIndex.exit.thread:            ; preds = %bb.cv, %.lr.ph734.split.us.preheader
  %i.rf = and i16 %i.qn, -33
  store i16 %i.rf, ptr %i.kc, align 1
  br label %.loopexit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.cu, %.lr.ph734.split
  %i.rg = add nuw nsw i32 %.3420732, 1            ; 2 uses
  %exitcond790.not = icmp eq i32 %i.rg, %i.qq
  br i1 %exitcond790.not, label %.loopexit, label %.lr.ph734.split, !llvm.loop !3607

.loopexit:                                        ; preds = %sqlite3TableColumnToIndex.exit, %.lr.ph734.split.us.preheader, %bb.ct, %sqlite3TableColumnToIndex.exit.thread, %bb.cs, %bb.cr
  %i.rh = load ptr, ptr %i.qe, align 8, !tbaa !1093
  %i.ri = icmp eq ptr %.0402, %i.rh
  br i1 %i.ri, label %bb.cw, label %.thread610

bb.cw:                                            ; preds = %.loopexit
  %i.rj = getelementptr inbounds nuw i8, ptr %.0402, i64 16
  %.0422742 = load ptr, ptr %i.rj, align 8, !tbaa !935 ; 2 uses
  %.not486743 = icmp eq ptr %.0422742, null
  br i1 %.not486743, label %.thread610, label %.lr.ph746.a

.lr.ph746.a:                                      ; preds = %bb.cw
  %i.rk = load i16, ptr %i.kq, align 2, !tbaa !936 ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.rn = zext i16 %i.rk to i32
  %.not756 = icmp eq i16 %i.rk, 0
  %wide.trip.count794 = zext i16 %i.rk to i64
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph746.a, %bb.dm
  %.0422744 = phi ptr [ %.0422742, %.lr.ph746.a ], [ %.0422, %bb.dm ] ; 6 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.0422744, i64 94
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !936
  %.not487 = icmp eq i16 %i.rp, %i.rk
  br i1 %.not487, label %.preheader676, label %bb.dm

.preheader676:                                    ; preds = %bb.cx
  br i1 %.not756, label %.thread604, label %.lr.ph736

.lr.ph736:                                        ; preds = %.preheader676
  %i.rq = getelementptr inbounds nuw i8, ptr %.0422744, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !878
  %i.rs = load ptr, ptr %i.rl, align 8, !tbaa !878
  %i.rt = getelementptr inbounds nuw i8, ptr %.0422744, i64 64
  br label %bb.cy
end_hunk_5
begin_hunk_6_@sqlite3CreateIndex:bb.a

.thread610:                                       ; preds = %bb.dm, %bb.cw, %.loopexit
  %i.tm = load i8, ptr %i.e, align 4, !tbaa !1091
  %i.tn = icmp ugt i8 %i.tm, 1
  br i1 %i.tn, label %bb.ec, label %bb.dn

bb.dn:                                            ; preds = %.thread610
  %i.to = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.tp = load i8, ptr %i.i, align 1, !tbaa !535
  %.not491 = icmp eq i8 %i.tp, 0
  br i1 %.not491, label %bb.dt, label %bb.do

bb.do:                                            ; preds = %bb.dn
  br i1 %i.bi, label %bb.dp, label %sqlite3IndexHasDuplicateRootPage.exit.thread

bb.dp:                                            ; preds = %bb.do
  %i.tq = load i32, ptr %i.to, align 8, !tbaa !1335 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.js, i64 88
  store i32 %i.tq, ptr %i.tr, align 8, !tbaa !2971
  %i.ts = load ptr, ptr %i.jz, align 8, !tbaa !1098
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %.09.i = load ptr, ptr %i.tt, align 8, !tbaa !935 ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %sqlite3IndexHasDuplicateRootPage.exit.thread, label %.lr.ph.i555

bb.dq:                                            ; preds = %.lr.ph.i555
  %i.tu = getelementptr inbounds nuw i8, ptr %.011.i, i64 40
  %.0.i556 = load ptr, ptr %i.tu, align 8, !tbaa !935 ; 2 uses
  %.not.i557 = icmp eq ptr %.0.i556, null
  br i1 %.not.i557, label %sqlite3IndexHasDuplicateRootPage.exit.thread, label %.lr.ph.i555, !llvm.loop !2981

.lr.ph.i555:                                      ; preds = %bb.dp, %bb.dq
  %.011.i = phi ptr [ %.0.i556, %bb.dq ], [ %.09.i, %bb.dp ] ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.011.i, i64 88
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !2971
  %i.tx = icmp ne i32 %i.tw, %i.tq
  %.not8.i = icmp eq ptr %.011.i, %i.js
  %or.cond.i = or i1 %.not8.i, %i.tx
  br i1 %or.cond.i, label %bb.dq, label %sqlite3IndexHasDuplicateRootPage.exit

sqlite3IndexHasDuplicateRootPage.exit:            ; preds = %.lr.ph.i555
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.393)
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.1927, i32 noundef 129852, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.54, i64 20))
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 11, ptr %i.ty, align 8, !tbaa !302
  br label %.thread595

sqlite3IndexHasDuplicateRootPage.exit.thread:     ; preds = %bb.dq, %bb.dp, %bb.do
  %i.tz = load ptr, ptr %i.kn, align 8, !tbaa !3459
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 32
  %i.ub = load ptr, ptr %i.js, align 8, !tbaa !3458
  %i.uc = call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.ua, ptr noundef %i.ub, ptr noundef nonnull %i.js)
  %.not494 = icmp eq ptr %i.uc, null
  br i1 %.not494, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %sqlite3IndexHasDuplicateRootPage.exit.thread
  call fastcc void @sqlite3OomFault(ptr noundef %i.b)
  br label %.thread634

bb.ds:                                            ; preds = %sqlite3IndexHasDuplicateRootPage.exit.thread
  %i.ud = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !695
  %i.uf = or i32 %i.ue, 1
  store i32 %i.uf, ptr %i.ud, align 4, !tbaa !695
  br label %bb.ec

bb.dt:                                            ; preds = %bb.dn
  %i.ug = getelementptr inbounds nuw i8, ptr %.0402, i64 48
  %i.uh = load i32, ptr %i.ug, align 8, !tbaa !788
  %i.ui = and i32 %i.uh, 128
  %i.uj = icmp eq i32 %i.ui, 0
  %or.cond9 = or i1 %i.bi, %i.uj
  br i1 %or.cond9, label %bb.du, label %.thread620

bb.du:                                            ; preds = %bb.dt
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !950
  %i.um = add nsw i32 %i.ul, 1                    ; 4 uses
  store i32 %i.um, ptr %i.uk, align 4, !tbaa !950
  %i.un = call fastcc ptr @sqlite3GetVdbe(ptr noundef nonnull %0) ; 8 uses
  %i.uo = icmp eq ptr %i.un, null
  br i1 %i.uo, label %.thread595, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call fastcc void @sqlite3BeginWriteOperation(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.1425)
  %i.up = call fastcc i32 @sqlite3VdbeAddOp0(ptr noundef nonnull %i.un, i32 noundef 188)
  %i.uq = getelementptr inbounds nuw i8, ptr %i.js, i64 88 ; 2 uses
  store i32 %i.up, ptr %i.uq, align 8, !tbaa !2971
  %i.ur = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %i.un, i32 noundef 148, i32 noundef %.1425, i32 noundef %i.um, i32 noundef 2) ; 0 uses
  %.not492 = icmp eq ptr %6, null
  br i1 %.not492, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !1122
  %i.uu = load ptr, ptr %i.eh, align 8, !tbaa !377 ; 3 uses
  %i.uv = ptrtoint ptr %i.ut to i64
  %i.uw = ptrtoint ptr %i.uu to i64
  %i.ux = sub i64 %i.uv, %i.uw
  %i.uy = trunc i64 %i.ux to i32
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !1123
  %i.vb = add i32 %i.va, %i.uy                    ; 2 uses
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr i8, ptr %i.uu, i64 %i.vc
  %i.ve = getelementptr i8, ptr %i.vd, i64 -1
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !227
  %i.vg = icmp eq i8 %i.vf, 59
  %i.vh = sext i1 %i.vg to i32
  %spec.select517 = add nsw i32 %i.vb, %i.vh
  %i.vi = select i1 %.not483, ptr @.str.4, ptr @.str.828
  %i.vj = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.827, ptr noundef nonnull %i.vi, i32 noundef %spec.select517, ptr noundef %i.uu)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dv, %bb.dw
  %.0404 = phi ptr [ %i.vj, %bb.dw ], [ null, %bb.dv ] ; 3 uses
  %i.vk = load ptr, ptr %i.ei, align 8, !tbaa !61
  %i.vl = getelementptr inbounds [32 x i8], ptr %i.vk, i64 %i.ek
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !494
  %i.vn = load ptr, ptr %i.js, align 8, !tbaa !3458
  %i.vo = load ptr, ptr %.0402, align 8, !tbaa !947
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef nonnull %0, ptr noundef nonnull @.str.829, ptr noundef %i.vm, ptr noundef %i.vn, ptr noundef %i.vo, i32 noundef %i.um, ptr noundef %.0404)
  %.not.i558 = icmp eq ptr %.0404, null
  br i1 %.not.i558, label %sqlite3DbFree.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call fastcc void @sqlite3DbFreeNN(ptr noundef nonnull %i.b, ptr noundef nonnull %.0404)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.dx, %bb.dy
  br i1 %i.bi, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %sqlite3DbFree.exit
  call fastcc void @sqlite3RefillIndex(ptr noundef nonnull %0, ptr noundef nonnull %i.js, i32 noundef %i.um)
  %.val = load ptr, ptr %0, align 8, !tbaa !651
  %i.vp = getelementptr i8, ptr %0, i64 16
  %.val519 = load ptr, ptr %i.vp, align 8, !tbaa !976
  %i.vq = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.vq, align 8, !tbaa !61
  call fastcc void @sqlite3ChangeCookie(ptr %.val.val, ptr %.val519, i32 noundef %.1425)
  %i.vr = load ptr, ptr %i.js, align 8, !tbaa !3458
  %i.vs = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.830, ptr noundef %i.vr)
  call fastcc void @sqlite3VdbeAddParseSchemaOp(ptr noundef nonnull %i.un, i32 noundef %.1425, ptr noundef %i.vs, i16 noundef zeroext 0)
  %i.vt = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %i.un, i32 noundef 167, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %sqlite3DbFree.exit
  %i.vu = getelementptr inbounds nuw i8, ptr %i.un, i64 144
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !185
  %i.vw = load ptr, ptr %i.un, align 8, !tbaa !146
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 103
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !550
  %.not.i.i.i = icmp eq i8 %i.vy, 0
  br i1 %.not.i.i.i, label %bb.eb, label %.thread618

bb.eb:                                            ; preds = %bb.ea
  %i.vz = load i32, ptr %i.uq, align 8, !tbaa !2971
  %i.wa = getelementptr inbounds nuw i8, ptr %i.un, i64 136
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !184
  %i.wc = sext i32 %i.vz to i64
  %i.wd = getelementptr inbounds [24 x i8], ptr %i.wb, i64 %i.wc
  br label %.thread618

.thread618:                                       ; preds = %bb.eb, %bb.ea
  %.0.i.i.i = phi ptr [ %i.wd, %bb.eb ], [ @sqlite3VdbeGetOp.dummy, %bb.ea ]
  %i.we = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.vv, ptr %i.we, align 8, !tbaa !585
  br label %bb.ec

bb.ec:                                            ; preds = %.thread618, %bb.ds, %.thread610
  %i.wf = load i8, ptr %i.i, align 1, !tbaa !535
  %i.wg = icmp ne i8 %i.wf, 0
  %i.wh = icmp eq ptr %3, null
  %or.cond11 = or i1 %i.wh, %i.wg
  br i1 %or.cond11, label %.thread620, label %bb.ed

.thread620:                                       ; preds = %bb.dt, %bb.ec
  %i.wi = getelementptr inbounds nuw i8, ptr %.0402, i64 16 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !1097
  %i.wk = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store ptr %i.wj, ptr %i.wk, align 8, !tbaa !2795
  store ptr %i.js, ptr %i.wi, align 8, !tbaa !1097
  br label %.thread623.thread

bb.ed:                                            ; preds = %bb.ec
  %i.wl = load i8, ptr %i.e, align 4, !tbaa !1091
  %i.wm = icmp ugt i8 %i.wl, 1
  br i1 %i.wm, label %bb.ee, label %.thread595

bb.ee:                                            ; preds = %bb.ed
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.js, ptr %i.wn, align 8, !tbaa !3511
  br label %.thread623.thread

.thread595:                                       ; preds = %sqlite3IndexHasDuplicateRootPage.exit, %bb.du, %bb.ed, %bb.bn
  %.1398 = phi ptr [ %7, %bb.bn ], [ null, %bb.ed ], [ null, %bb.du ], [ null, %sqlite3IndexHasDuplicateRootPage.exit ] ; 2 uses
  %.6 = phi ptr [ %.0, %bb.bn ], [ %.2.lcssa, %bb.ed ], [ %.2.lcssa, %bb.du ], [ %.2.lcssa, %sqlite3IndexHasDuplicateRootPage.exit ] ; 2 uses
  %.not502 = icmp eq ptr %i.js, null
  br i1 %.not502, label %.thread623.thread, label %.thread634

.thread634.loopexit:                              ; preds = %bb.cj, %sqlite3StringToId.exit
  %15 = phi ptr [ %i.lk, %sqlite3StringToId.exit ], [ %14, %bb.cj ]
  %.6645.ph = phi ptr [ %.2722, %sqlite3StringToId.exit ], [ %.4588, %bb.cj ]
  store ptr %15, ptr %i.a, align 8
  br label %.thread634

.thread634:                                       ; preds = %.thread595.thread, %.thread634.loopexit, %bb.dr, %bb.dk, %.thread595
  %.6645 = phi ptr [ %.6, %.thread595 ], [ %.2.lcssa, %bb.dk ], [ %.2.lcssa, %bb.dr ], [ %.6645.ph, %.thread634.loopexit ], [ %.2722, %.thread595.thread ]
  %.1398644 = phi ptr [ %.1398, %.thread595 ], [ null, %bb.dk ], [ null, %bb.dr ], [ null, %.thread634.loopexit ], [ null, %.thread595.thread ]
  %i.wo = getelementptr inbounds nuw i8, ptr %i.js, i64 72
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !2797 ; 2 uses
  %.not.i.i = icmp eq ptr %i.wp, null
  br i1 %.not.i.i, label %sqlite3ExprDelete.exit.i, label %bb.ef

bb.ef:                                            ; preds = %.thread634
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.b, ptr noundef %i.wp), !inline_history !2798
  br label %sqlite3ExprDelete.exit.i

sqlite3ExprDelete.exit.i:                         ; preds = %bb.ef, %.thread634
  %i.wq = getelementptr inbounds nuw i8, ptr %i.js, i64 80
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !2799 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.wr, null
  br i1 %.not.i13.i, label %sqlite3ExprListDelete.exit.i, label %bb.eg

bb.eg:                                            ; preds = %sqlite3ExprDelete.exit.i
  call fastcc void @exprListDeleteNN(ptr noundef %i.b, ptr noundef %i.wr), !inline_history !2800
  br label %sqlite3ExprListDelete.exit.i

sqlite3ExprListDelete.exit.i:                     ; preds = %bb.eg, %sqlite3ExprDelete.exit.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !2801 ; 2 uses
  %.not.i14.i = icmp eq ptr %i.wt, null
  br i1 %.not.i14.i, label %sqlite3DbFree.exit.i, label %bb.eh

bb.eh:                                            ; preds = %sqlite3ExprListDelete.exit.i
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.b, ptr noundef nonnull %i.wt), !inline_history !2802
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.eh, %sqlite3ExprListDelete.exit.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.js, i64 99
  %i.wv = load i16, ptr %i.wu, align 1
  %i.ww = and i16 %i.wv, 16
  %.not.i559 = icmp eq i16 %i.ww, 0
  br i1 %.not.i559, label %sqlite3FreeIndex.exit, label %bb.ei

bb.ei:                                            ; preds = %sqlite3DbFree.exit.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !2803 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.wy, null
  br i1 %.not.i15.i, label %sqlite3FreeIndex.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.b, ptr noundef nonnull %i.wy), !inline_history !2802
  br label %sqlite3FreeIndex.exit

sqlite3FreeIndex.exit:                            ; preds = %sqlite3DbFree.exit.i, %bb.ei, %bb.ej
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.b, ptr noundef nonnull %i.js), !inline_history !2802
  br label %.thread623.thread

.thread623.thread:                                ; preds = %.thread595, %sqlite3FreeIndex.exit, %bb.al, %bb.ee, %._crit_edge709, %sqlite3ExprListCheckLength.exit, %bb.dl, %.thread.thread, %bb.bb, %bb.x, %bb.am, %bb.an, %bb.ap, %bb.aq, %.thread620, %bb.be, %bb.ay, %bb.ax, %bb.au
  %.1412630666 = phi ptr [ %i.go, %bb.au ], [ %.0411.ph649, %bb.bb ], [ null, %bb.x ], [ null, %bb.am ], [ null, %bb.an ], [ null, %bb.ap ], [ %i.go, %bb.aq ], [ %.0411578, %.thread620 ], [ %.0411578, %bb.be ], [ %i.go, %bb.ay ], [ %i.go, %bb.ax ], [ %.0411578, %.thread595 ], [ %.0411578, %sqlite3FreeIndex.exit ], [ %.0411.ph649, %.thread.thread ], [ null, %._crit_edge709 ], [ %.0411578, %bb.dl ], [ null, %bb.al ], [ %.0411578, %bb.ee ], [ %.0411578, %sqlite3ExprListCheckLength.exit ] ; 5 uses
  %.1403631665 = phi ptr [ %.0402, %bb.au ], [ %.0402, %bb.bb ], [ %i.de, %bb.x ], [ %.0402, %bb.am ], [ %.0402, %bb.an ], [ %.0402, %bb.ap ], [ %.0402, %bb.aq ], [ %.0402, %.thread620 ], [ %.0402, %bb.be ], [ %.0402, %bb.ay ], [ %.0402, %bb.ax ], [ %.0402, %.thread595 ], [ %.0402, %sqlite3FreeIndex.exit ], [ %.0402, %.thread.thread ], [ %.0402, %._crit_edge709 ], [ %.0402, %bb.dl ], [ %.0402, %bb.al ], [ %.0402, %bb.ee ], [ %.0402, %sqlite3ExprListCheckLength.exit ]
  %.1398632663 = phi ptr [ %7, %bb.au ], [ %7, %bb.bb ], [ %7, %bb.x ], [ %7, %bb.am ], [ %7, %bb.an ], [ %7, %bb.ap ], [ %7, %bb.aq ], [ null, %.thread620 ], [ %7, %bb.be ], [ %7, %bb.ay ], [ %7, %bb.ax ], [ %.1398, %.thread595 ], [ %.1398644, %sqlite3FreeIndex.exit ], [ %7, %.thread.thread ], [ %7, %._crit_edge709 ], [ null, %bb.dl ], [ %7, %bb.al ], [ null, %bb.ee ], [ %7, %sqlite3ExprListCheckLength.exit ] ; 5 uses
  %.6633661 = phi ptr [ %4, %bb.au ], [ %4, %bb.bb ], [ %4, %bb.x ], [ %4, %bb.am ], [ %4, %bb.an ], [ %4, %bb.ap ], [ %4, %bb.aq ], [ %.2.lcssa, %.thread620 ], [ null, %bb.be ], [ %4, %bb.ay ], [ %4, %bb.ax ], [ %.6, %.thread595 ], [ %.6645, %sqlite3FreeIndex.exit ], [ %4, %.thread.thread ], [ %4, %._crit_edge709 ], [ %.2.lcssa, %bb.dl ], [ %4, %bb.al ], [ %.2.lcssa, %bb.ee ], [ %4, %sqlite3ExprListCheckLength.exit ] ; 5 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %.1403631665, i64 16 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !935 ; 4 uses
  %.not504747 = icmp eq ptr %i.xa, null
  br i1 %.not504747, label %.critedge.thread, label %.lr.ph749.preheader

.lr.ph749.preheader:                              ; preds = %.thread623.thread
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 98
  %i.xc = load i8, ptr %i.xb, align 2, !tbaa !2990
  %.not505910 = icmp eq i8 %i.xc, 5
  br i1 %.not505910, label %.preheader, label %.critedge

.lr.ph749.a:                                      ; preds = %.critedge
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xq, i64 98
  %i.xe = load i8, ptr %i.xd, align 2, !tbaa !2990
  %.not505 = icmp eq i8 %i.xe, 5
  br i1 %.not505, label %.preheader.loopexit, label %.critedge, !llvm.loop !3610

.preheader.loopexit:                              ; preds = %.lr.ph749.a
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xo, i64 40
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph749.preheader
  %.lcssa = phi ptr [ %i.xa, %.lr.ph749.preheader ], [ %i.xq, %.preheader.loopexit ] ; 2 uses
  %.0399748.lcssa = phi ptr [ %i.wz, %.lr.ph749.preheader ], [ %i.xf, %.preheader.loopexit ]
  %i.xg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 40 ; 3 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !2795 ; 2 uses
  %.not506750 = icmp eq ptr %i.xh, null
  br i1 %.not506750, label %.critedge.thread, label %.lr.ph752

.lr.ph752:                                        ; preds = %.preheader, %bb.ek
  %i.xi = phi ptr [ %i.xn, %bb.ek ], [ %i.xh, %.preheader ] ; 3 uses
  %.1400751 = phi ptr [ %i.xl, %bb.ek ], [ %.0399748.lcssa, %.preheader ]
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 98
  %i.xk = load i8, ptr %i.xj, align 2, !tbaa !2990
  %.not507 = icmp eq i8 %i.xk, 5
  br i1 %.not507, label %.critedge.thread, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph752
  store ptr %i.xi, ptr %.1400751, align 8, !tbaa !935
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xi, i64 40 ; 3 uses
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !2795
  store ptr %i.xm, ptr %i.xg, align 8, !tbaa !2795
  store ptr %.lcssa, ptr %i.xl, align 8, !tbaa !2795
  %i.xn = load ptr, ptr %i.xg, align 8, !tbaa !2795 ; 2 uses
  %.not506 = icmp eq ptr %i.xn, null
  br i1 %.not506, label %.critedge.thread, label %.lr.ph752, !llvm.loop !3611

.critedge:                                        ; preds = %.lr.ph749.preheader, %.lr.ph749.a
  %i.xo = phi ptr [ %i.xq, %.lr.ph749.a ], [ %i.xa, %.lr.ph749.preheader ] ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 40
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !935 ; 4 uses
  %.not504 = icmp eq ptr %i.xq, null
  br i1 %.not504, label %.critedge.thread, label %.lr.ph749.a, !llvm.loop !3610

.critedge.thread:                                 ; preds = %.critedge, %bb.ek, %.lr.ph752, %bb.r, %bb.p, %.thread623.thread, %.preheader, %sqlite3HasExplicitNulls.exit, %sqlite3FixSrcList.exit, %bb.a, %bb.b, %sqlite3ReadSchema.exit, %bb.ab
  %.1412630667 = phi ptr [ null, %sqlite3FixSrcList.exit ], [ %.1412630666, %.preheader ], [ null, %sqlite3HasExplicitNulls.exit ], [ %.1412630666, %bb.ek ], [ null, %bb.ab ], [ null, %sqlite3ReadSchema.exit ], [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.p ], [ %.1412630666, %.thread623.thread ], [ null, %bb.r ], [ %.1412630666, %.lr.ph752 ], [ %.1412630666, %.critedge ] ; 2 uses
  %.1398632664 = phi ptr [ %7, %sqlite3FixSrcList.exit ], [ %.1398632663, %.preheader ], [ %7, %sqlite3HasExplicitNulls.exit ], [ %.1398632663, %bb.ek ], [ %7, %bb.ab ], [ %7, %sqlite3ReadSchema.exit ], [ %7, %bb.b ], [ %7, %bb.a ], [ %7, %bb.p ], [ %.1398632663, %.thread623.thread ], [ %7, %bb.r ], [ %.1398632663, %.lr.ph752 ], [ %.1398632663, %.critedge ] ; 2 uses
  %.6633662 = phi ptr [ %4, %sqlite3FixSrcList.exit ], [ %.6633661, %.preheader ], [ %4, %sqlite3HasExplicitNulls.exit ], [ %.6633661, %bb.ek ], [ %4, %bb.ab ], [ %4, %sqlite3ReadSchema.exit ], [ %4, %bb.b ], [ %4, %bb.a ], [ %4, %bb.p ], [ %.6633661, %.thread623.thread ], [ %4, %bb.r ], [ %.6633661, %.lr.ph752 ], [ %.6633661, %.critedge ] ; 2 uses
  %.not.i560 = icmp eq ptr %.1398632664, null
  br i1 %.not.i560, label %sqlite3ExprDelete.exit, label %bb.el

bb.el:                                            ; preds = %.critedge.thread
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.b, ptr noundef %.1398632664), !inline_history !144
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %.critedge.thread, %bb.el
  %.not.i561 = icmp eq ptr %.6633662, null
  br i1 %.not.i561, label %sqlite3ExprListDelete.exit, label %bb.em

bb.em:                                            ; preds = %sqlite3ExprDelete.exit
  call fastcc void @exprListDeleteNN(ptr noundef %i.b, ptr noundef %.6633662), !inline_history !1009
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %sqlite3ExprDelete.exit, %bb.em
  call fastcc void @sqlite3SrcListDelete(ptr noundef %i.b, ptr noundef %3)
  %.not.i562 = icmp eq ptr %.1412630667, null
  br i1 %.not.i562, label %sqlite3DbFree.exit563, label %bb.en

bb.en:                                            ; preds = %sqlite3ExprListDelete.exit
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.b, ptr noundef nonnull %.1412630667)
  br label %sqlite3DbFree.exit563

sqlite3DbFree.exit563:                            ; preds = %sqlite3ExprListDelete.exit, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3AddCheckConstraint(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.Token, align 8              ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1093 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !651    ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.e = load i8, ptr %i.d, align 4, !tbaa !1091
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  %i.j = load i8, ptr %i.i, align 4, !tbaa !632
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.p = getelementptr i8, ptr %.val, i64 40
  %.val.val = load i16, ptr %i.p, align 8, !tbaa !717
  %i.q = and i16 %.val.val, 1
  %.not27 = icmp eq i16 %i.q, 0
  br i1 %.not27, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3472 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef nonnull %i.c, ptr noundef %1)
  br label %sqlite3ExprListAppend.exit

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !5
  %i.x = load i32, ptr %i.s, align 8, !tbaa !5    ; 3 uses
  %.not.i = icmp sgt i32 %i.w, %i.x
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef nonnull %i.c, ptr noundef %i.s, ptr noundef %1)
  br label %sqlite3ExprListAppend.exit

bb.h:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.x, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
end_hunk_6
begin_hunk_7_@pragmaFunclistLine:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1264
  %.not19.us = icmp eq ptr %i.i, null
  %.str.975..str.1039.us = select i1 %.not19.us, ptr @.str.975, ptr @.str.1039
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.us = phi ptr [ @.str.1038, %bb.b ], [ %.str.975..str.1039.us, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.01621.us, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !223
  %i.l = and i32 %i.e, 3
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @pragmaFunclistLine.azEnc, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251
  %i.p = load i16, ptr %.01621.us, align 8, !tbaa !573
  %i.q = sext i16 %i.p to i32
  %i.r = and i32 %i.e, %spec.store.select
  %i.s = xor i32 %i.r, 2097152
  tail call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1040, ptr noundef %i.k, i32 noundef %2, ptr noundef nonnull %.0.us, ptr noundef %i.o, i32 noundef %i.q, i32 noundef %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %.01621.us, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !229  ; 2 uses
  %.not17.us = icmp eq ptr %i.u, null
  br i1 %.not17.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !4890

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.01621 = phi ptr [ %i.aq, %bb.j ], [ %1, %.lr.ph ] ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01621, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1263
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.y = getelementptr inbounds nuw i8, ptr %.01621, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1262 ; 3 uses
  %i.aa = and i32 %i.z, 262144
  %.not22 = icmp eq i32 %i.aa, 0
  br i1 %.not22, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.01621, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1265
  %.not18 = icmp eq ptr %i.ac, null
  br i1 %.not18, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.01621, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1264
  %.not19 = icmp eq ptr %i.ae, null
  %.str.975..str.1039 = select i1 %.not19, ptr @.str.975, ptr @.str.1039
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ @.str.1038, %bb.g ], [ %.str.975..str.1039, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %.01621, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !223
  %i.ah = and i32 %i.z, 3
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @pragmaFunclistLine.azEnc, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !251
  %i.al = load i16, ptr %.01621, align 8, !tbaa !573
  %i.am = sext i16 %i.al to i32
  %i.an = and i32 %i.z, %spec.store.select
  %i.ao = xor i32 %i.an, 2097152
  tail call void (ptr, i32, ptr, ...) @sqlite3VdbeMultiLoad(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1040, ptr noundef %i.ag, i32 noundef %2, ptr noundef nonnull %.0, ptr noundef %i.ak, i32 noundef %i.am, i32 noundef %i.ao)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %.lr.ph.split, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.01621, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !229 ; 2 uses
  %.not17 = icmp eq ptr %i.aq, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph.split, !llvm.loop !4890

._crit_edge:                                      ; preds = %bb.e, %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3RegisterLikeFunctions(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %likeInfoNorm.likeInfoAlt = select i1 %.not, ptr @likeInfoNorm, ptr @likeInfoAlt ; 2 uses
  %. = select i1 %.not, i32 4, i32 12             ; 2 uses
  %i.a = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef %0, ptr noundef nonnull @.str.880, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %likeInfoNorm.likeInfoAlt, ptr noundef nonnull @likeFunc, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.b = tail call fastcc ptr @sqlite3FindFunction(ptr noundef %0, ptr noundef nonnull @.str.880, i32 noundef 2, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1262
  %.masked = and i32 %i.d, -2097157
  %i.e = or i32 %.masked, %.
  store i32 %i.e, ptr %i.c, align 4, !tbaa !1262
  %i.f = tail call fastcc i32 @sqlite3CreateFunc(ptr noundef %0, ptr noundef nonnull @.str.880, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %likeInfoNorm.likeInfoAlt, ptr noundef nonnull @likeFunc, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.g = tail call fastcc ptr @sqlite3FindFunction(ptr noundef %0, ptr noundef nonnull @.str.880, i32 noundef 3, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1262
  %.masked.1 = and i32 %i.i, -2097157
  %i.j = or i32 %.masked.1, %.
  store i32 %i.j, ptr %i.h, align 4, !tbaa !1262
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @integrityCheckResultRow(ptr noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !943
  %.not.i.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 85, i32 noundef 3, i32 noundef 1, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  store i8 85, ptr %i.j, align 8, !tbaa !563
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.k, align 2, !tbaa !587
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 3, ptr %i.l, align 4, !tbaa !584
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !585
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !586
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !227
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.b, %bb.c
  %.val = load i32, ptr %i.a, align 8, !tbaa !185 ; 5 uses
  %i.q = add nsw i32 %.val, 2                     ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !943
  %.not.i = icmp sgt i32 %i.r, %.val
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.s = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 60, i32 noundef 1, i32 noundef %i.q, i32 noundef 1), !inline_history !977
  br label %sqlite3VdbeAddOp3.exit

bb.e:                                             ; preds = %sqlite3VdbeAddOp2.exit
  %i.t = add nsw i32 %.val, 1
  store i32 %i.t, ptr %i.a, align 8, !tbaa !185
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !184
  %i.w = sext i32 %.val to i64
  %i.x = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.w ; 7 uses
  store i8 60, ptr %i.x, align 8, !tbaa !563
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i16 0, ptr %i.y, align 2, !tbaa !587
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 1, ptr %i.z, align 4, !tbaa !584
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.q, ptr %i.aa, align 8, !tbaa !585
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 1, ptr %i.ab, align 4, !tbaa !586
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !227
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 0, ptr %i.ad, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.s, %bb.d ], [ %.val, %bb.e ]
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !185 ; 3 uses
  %i.af = load i32, ptr %i.c, align 4, !tbaa !943
  %.not.i.i4 = icmp sgt i32 %i.af, %i.ae
  br i1 %.not.i.i4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.ag = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 71, i32 noundef 0, i32 noundef 0, i32 noundef 0), !inline_history !977 ; 0 uses
  br label %sqlite3VdbeAddOp0.exit

bb.g:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.ah = add nsw i32 %i.ae, 1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !185
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !184
  %i.ak = sext i32 %i.ae to i64
  %i.al = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  store i8 71, ptr %i.al, align 8, !tbaa !563
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.am, i8 0, i64 23, i1 false)
  br label %sqlite3VdbeAddOp0.exit

sqlite3VdbeAddOp0.exit:                           ; preds = %bb.f, %bb.g
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal void @likeFunc(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.compareInfo, align 4        ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !288
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !230
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !828  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.h = load ptr, ptr %2, align 8, !tbaa !288    ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i16, ptr %i.i, align 4, !tbaa !162  ; 2 uses
  %i.k = and i16 %i.j, 2
  %.not.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  %i.m = load i8, ptr %i.l, align 2, !tbaa !349
  %i.n = icmp eq i8 %i.m, 1
  br i1 %i.n, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !558
  br label %sqlite3_value_bytes.exit

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  %i.q = zext i16 %i.j to i32                     ; 3 uses
  %i.r = and i32 %i.q, 16
  %.not20.i.i = icmp eq i32 %i.r, 0
  br i1 %.not20.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.thread.i.i
  %i.s = and i32 %i.q, 1024
  %.not22.i.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !558  ; 2 uses
  br i1 %.not22.i.i, label %sqlite3_value_bytes.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.h, align 8, !tbaa !227
  %i.w = add nsw i32 %i.v, %i.u
  br label %sqlite3_value_bytes.exit

bb.f:                                             ; preds = %.thread.i.i
  %i.x = and i32 %i.q, 1
  %.not21.i.i = icmp eq i32 %i.x, 0
  br i1 %.not21.i.i, label %bb.g, label %sqlite3_value_bytes.exit

bb.g:                                             ; preds = %bb.f
  %i.y = tail call fastcc i32 @valueBytes(ptr noundef nonnull %i.h, i8 noundef zeroext 1)
  br label %sqlite3_value_bytes.exit

sqlite3_value_bytes.exit:                         ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.p, %bb.c ], [ %i.u, %bb.d ], [ %i.w, %bb.e ], [ 0, %bb.f ], [ %i.y, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !5
  %i.ab = icmp sgt i32 %.0.i.i, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %sqlite3_value_bytes.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ac, align 4, !tbaa !5
  %i.ad = load ptr, ptr %0, align 8, !tbaa !288
  %i.ae = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.ad, ptr noundef nonnull @.str.1046, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %sqlite3_result_int.exit

bb.i:                                             ; preds = %sqlite3_value_bytes.exit
  %i.af = icmp eq i32 %1, 3
  br i1 %i.af, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !288 ; 5 uses
  %.not.i.i38 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i38, label %sqlite3_result_int.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = and i16 %i.aj, 514
  %i.al = icmp eq i16 %i.ak, 514
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 22
  %i.an = load i8, ptr %i.am, align 2, !tbaa !349
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !289
  br label %sqlite3_value_text.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.ar = and i16 %i.aj, 1
  %.not9.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not9.i.i, label %bb.o, label %sqlite3_result_int.exit

bb.o:                                             ; preds = %bb.n
  %i.as = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.ah, i8 noundef zeroext 1), !inline_history !606
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.m, %bb.o
  %.0.i.i39 = phi ptr [ %i.aq, %bb.m ], [ %i.as, %bb.o ] ; 5 uses
  %i.at = icmp eq ptr %.0.i.i39, null
  br i1 %i.at, label %sqlite3_result_int.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3_value_text.exit
  %i.au = load i8, ptr %.0.i.i39, align 1, !tbaa !227 ; 5 uses
  %i.av = icmp ne i8 %i.au, 0
  %i.aw = icmp ne ptr %.0.i.i39, inttoptr (i64 -1 to ptr)
  %i.ax = and i1 %i.aw, %i.av
  br i1 %i.ax, label %.lr.ph.i, label %sqlite3Utf8CharLen.exit.thread

.lr.ph.i:                                         ; preds = %bb.p, %.loopexit.i
  %i.ay = phi i8 [ %i.be, %.loopexit.i ], [ %i.au, %bb.p ]
  %.01116.i = phi ptr [ %.2.i, %.loopexit.i ], [ %.0.i.i39, %bb.p ]
  %.01215.i = phi i32 [ %i.bf, %.loopexit.i ], [ 0, %bb.p ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01116.i, i64 1 ; 3 uses
  %i.ba = icmp ugt i8 %i.ay, -65
  br i1 %i.ba, label %.preheader.i, label %.lr.ph..loopexit_crit_edge.i

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i
  %.pre.i = load i8, ptr %i.az, align 1, !tbaa !227
  br label %.loopexit.i

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.1.i = phi ptr [ %i.bd, %.preheader.i ], [ %i.az, %.lr.ph.i ] ; 3 uses
  %i.bb = load i8, ptr %.1.i, align 1, !tbaa !227 ; 2 uses
  %i.bc = icmp slt i8 %i.bb, -64
  %i.bd = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br i1 %i.bc, label %.preheader.i, label %.loopexit.i, !llvm.loop !1064

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph..loopexit_crit_edge.i
  %i.be = phi i8 [ %.pre.i, %.lr.ph..loopexit_crit_edge.i ], [ %i.bb, %.preheader.i ] ; 2 uses
  %.2.i = phi ptr [ %i.az, %.lr.ph..loopexit_crit_edge.i ], [ %.1.i, %.preheader.i ] ; 2 uses
  %i.bf = add nuw nsw i32 %.01215.i, 1
  %i.bg = icmp ne i8 %i.be, 0
  %i.bh = icmp ne ptr %.2.i, inttoptr (i64 -1 to ptr)
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.i, label %sqlite3Utf8CharLen.exit, !llvm.loop !1065

sqlite3Utf8CharLen.exit:                          ; preds = %.loopexit.i
  %.not = icmp eq i32 %.01215.i, 0
  br i1 %.not, label %bb.q, label %sqlite3Utf8CharLen.exit.thread

sqlite3Utf8CharLen.exit.thread:                   ; preds = %bb.p, %sqlite3Utf8CharLen.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.bj, align 4, !tbaa !5
  %i.bk = load ptr, ptr %0, align 8, !tbaa !288
  %i.bl = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.bk, ptr noundef nonnull @.str.1047, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %sqlite3_result_int.exit

bb.q:                                             ; preds = %sqlite3Utf8CharLen.exit
  %i.bm = zext i8 %i.au to i32
  %i.bn = icmp ugt i8 %i.au, -65
  br i1 %i.bn, label %bb.r, label %sqlite3Utf8Read.exit

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 1 ; 2 uses
  %i.bp = zext i8 %i.au to i64
  %i.bq = getelementptr i8, ptr @sqlite3Utf8Trans1, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -192
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !227
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = load i8, ptr %i.bo, align 1, !tbaa !227 ; 2 uses
  %i.bv = icmp slt i8 %i.bu, -64
  br i1 %i.bv, label %.lr.ph.i41, label %._crit_edge.i

.lr.ph.i41:                                       ; preds = %bb.r, %.lr.ph.i41
  %i.bw = phi i8 [ %i.cd, %.lr.ph.i41 ], [ %i.bu, %bb.r ]
  %.014.i = phi i32 [ %i.cc, %.lr.ph.i41 ], [ %i.bt, %bb.r ]
  %i.bx = phi ptr [ %i.bz, %.lr.ph.i41 ], [ %i.bo, %bb.r ]
  %i.by = shl i32 %.014.i, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.ca = and i8 %i.bw, 63
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.by, %i.cb            ; 2 uses
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !227 ; 2 uses
  %i.ce = icmp slt i8 %i.cd, -64
  br i1 %i.ce, label %.lr.ph.i41, label %._crit_edge.i, !llvm.loop !1025

._crit_edge.i:                                    ; preds = %.lr.ph.i41, %bb.r
  %.0.lcssa.i = phi i32 [ %i.bt, %bb.r ], [ %i.cc, %.lr.ph.i41 ] ; 4 uses
  %i.cf = icmp ult i32 %.0.lcssa.i, 128
  %i.cg = and i32 %.0.lcssa.i, -2048
  %i.ch = icmp eq i32 %i.cg, 55296
  %or.cond.i = or i1 %i.cf, %i.ch
  %i.ci = and i32 %.0.lcssa.i, -2
  %i.cj = icmp eq i32 %i.ci, 65534
  %or.cond13.i = or i1 %i.cj, %or.cond.i
  %spec.select.i = select i1 %or.cond13.i, i32 65533, i32 %.0.lcssa.i
  br label %sqlite3Utf8Read.exit

sqlite3Utf8Read.exit:                             ; preds = %bb.q, %._crit_edge.i
  %.1.i40 = phi i32 [ %i.bm, %bb.q ], [ %spec.select.i, %._crit_edge.i ] ; 7 uses
  %i.ck = load i8, ptr %i.g, align 1, !tbaa !1023
  %i.cl = zext i8 %i.ck to i32
  %i.cm = icmp eq i32 %.1.i40, %i.cl
  br i1 %i.cm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %sqlite3Utf8Read.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !1021
  %i.cp = zext i8 %i.co to i32
  %i.cq = icmp eq i32 %.1.i40, %i.cp
  br i1 %i.cq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %sqlite3Utf8Read.exit
  %i.cr = load i32, ptr %i.g, align 1             ; 3 uses
  store i32 %i.cr, ptr %3, align 4
  %i.cs = and i32 %i.cr, 255
  %i.ct = icmp eq i32 %.1.i40, %i.cs
  %i.cu = lshr i32 %i.cr, 8
  br i1 %i.ct, label %4, label %5

4:                                                ; preds = %bb.t
  store i8 0, ptr %3, align 4, !tbaa !1023
  br label %5

5:                                                ; preds = %4, %bb.t
  %6 = and i32 %i.cu, 255
  %7 = icmp eq i32 %.1.i40, %6
  br i1 %7, label %8, label %bb.v

8:                                                ; preds = %5
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %9, align 1, !tbaa !1021
  br label %bb.v

bb.u:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !1027
  %i.cx = zext i8 %i.cw to i32
  br label %bb.v

bb.v:                                             ; preds = %5, %8, %bb.s, %bb.u
  %.133 = phi i32 [ %i.cx, %bb.u ], [ %.1.i40, %bb.s ], [ %.1.i40, %8 ], [ %.1.i40, %5 ]
  %.2 = phi ptr [ %i.g, %bb.u ], [ %i.g, %bb.s ], [ %3, %8 ], [ %3, %5 ]
  %i.cy = load ptr, ptr %2, align 8, !tbaa !288   ; 5 uses
  %.not.i.i42 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i42, label %sqlite3_value_text.exit45, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = and i16 %i.da, 514
  %i.dc = icmp eq i16 %i.db, 514
  br i1 %i.dc, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 22
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !349
  %i.df = icmp eq i8 %i.de, 1
  br i1 %i.df, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !289
  br label %sqlite3_value_text.exit45

bb.z:                                             ; preds = %bb.x, %bb.w
  %i.di = and i16 %i.da, 1
  %.not9.i.i43 = icmp eq i16 %i.di, 0
  br i1 %.not9.i.i43, label %bb.aa, label %sqlite3_value_text.exit45

bb.aa:                                            ; preds = %bb.z
  %i.dj = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.cy, i8 noundef zeroext 1), !inline_history !606
  br label %sqlite3_value_text.exit45

sqlite3_value_text.exit45:                        ; preds = %bb.v, %bb.y, %bb.z, %bb.aa
  %.0.i.i44 = phi ptr [ %i.dh, %bb.y ], [ null, %bb.v ], [ %i.dj, %bb.aa ], [ null, %bb.z ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !288 ; 5 uses
  %.not.i.i46 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i46, label %sqlite3_result_int.exit, label %bb.ab

bb.ab:                                            ; preds = %sqlite3_value_text.exit45
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.dn = load i16, ptr %i.dm, align 4, !tbaa !162 ; 2 uses
  %i.do = and i16 %i.dn, 514
  %i.dp = icmp eq i16 %i.do, 514
  br i1 %i.dp, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 22
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !349
  %i.ds = icmp eq i8 %i.dr, 1
  br i1 %i.ds, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !289
  br label %sqlite3_value_text.exit49

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.dv = and i16 %i.dn, 1
  %.not9.i.i47 = icmp eq i16 %i.dv, 0
  br i1 %.not9.i.i47, label %bb.af, label %sqlite3_result_int.exit

bb.af:                                            ; preds = %bb.ae
  %i.dw = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.dl, i8 noundef zeroext 1), !inline_history !606
  br label %sqlite3_value_text.exit49

sqlite3_value_text.exit49:                        ; preds = %bb.ad, %bb.af
  %.0.i.i48 = phi ptr [ %i.du, %bb.ad ], [ %i.dw, %bb.af ] ; 2 uses
  %i.dx = icmp ne ptr %.0.i.i48, null
  %i.dy = icmp ne ptr %.0.i.i44, null
  %or.cond = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %or.cond, label %bb.ag, label %sqlite3_result_int.exit

bb.ag:                                            ; preds = %sqlite3_value_text.exit49
  %i.dz = call fastcc i32 @patternCompare(ptr noundef nonnull %.0.i.i44, ptr noundef nonnull %.0.i.i48, ptr noundef nonnull %.2, i32 noundef %.133)
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = load ptr, ptr %0, align 8, !tbaa !288   ; 3 uses
  %i.ec = zext i1 %i.ea to i64                    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 20 ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 4, !tbaa !162
  %i.ef = and i16 %i.ee, -28672
  %.not.i.i50 = icmp eq i16 %i.ef, 0
  br i1 %.not.i.i50, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.eb, i64 noundef %i.ec)
  br label %sqlite3_result_int.exit

bb.ai:                                            ; preds = %bb.ag
  store i64 %i.ec, ptr %i.eb, align 8, !tbaa !227
  store i16 4, ptr %i.ed, align 4, !tbaa !162
  br label %sqlite3_result_int.exit

sqlite3_result_int.exit:                          ; preds = %bb.ae, %sqlite3_value_text.exit45, %bb.n, %bb.j, %sqlite3_value_text.exit, %sqlite3Utf8CharLen.exit.thread, %bb.ai, %bb.ah, %sqlite3_value_text.exit49, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @triggerStepAllocate(ptr noundef captures(none) %0, i8 noundef zeroext range(i8 -128, -125) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1135 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !651    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !313
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %sqlite3RenameTokenRemap.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2804
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  %.not29 = icmp eq ptr %i.h, %i.l
  br i1 %.not29, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !227
  %.not30 = icmp eq ptr %i.n, null
  br i1 %.not30, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1060)
  br label %sqlite3RenameTokenRemap.exit

bb.f:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.f
  %i.o = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.c, i64 noundef 88), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i

bb.g:                                             ; preds = %bb.f
  %i.p = tail call fastcc ptr @sqlite3Malloc(i64 noundef 88), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.g, %.thread
  %.0.i.i = phi ptr [ %i.o, %.thread ], [ %i.p, %bb.g ] ; 10 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %sqlite3RenameTokenRemap.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %.0.i.i, i8 0, i64 88, i1 false)
  %i.q = tail call fastcc ptr @sqlite3SrcListDup(ptr noundef %i.c, ptr noundef %2, i32 noundef 1)
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !2885
  store i8 %1, ptr %.0.i.i, align 8, !tbaa !3922
  %i.s = ptrtoint ptr %3 to i64
  %i.t = ptrtoint ptr %4 to i64
  %i.u = trunc i64 %i.t to i32
  %i.v = trunc i64 %i.s to i32
  %i.w = sub i32 %i.u, %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %bb.i ], [ %i.w, %bb.h ] ; 2 uses
  %.09.i.i = phi ptr [ %i.ac, %bb.i ], [ %3, %bb.h ] ; 4 uses
  %i.x = load i8, ptr %.09.i.i, align 1, !tbaa !227
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !227
  %i.ab = and i8 %i.aa, 1
  %.not.i.i33 = icmp eq i8 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1
  %indvars.iv.next.i.i = add i32 %indvars.iv.i.i, -1
  br i1 %.not.i.i33, label %bb.j, label %bb.i, !llvm.loop !3578

bb.j:                                             ; preds = %bb.i
  %i.ad = sext i32 %indvars.iv.i.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv11.i.i = phi i64 [ %indvars.iv.next12.i.i, %bb.k ], [ %i.ad, %bb.j ] ; 5 uses
  %i.ae = getelementptr i8, ptr %.09.i.i, i64 %indvars.iv11.i.i
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !227
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !227
  %i.ak = and i8 %i.aj, 1
  %.not10.i.i = icmp eq i8 %i.ak, 0
  %indvars.iv.next12.i.i = add nsw i64 %indvars.iv11.i.i, -1
  br i1 %.not10.i.i, label %bb.l, label %bb.k, !llvm.loop !3579

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i64 %indvars.iv11.i.i, 1
  %i.am = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.c, i64 noundef %i.al), !inline_history !2645 ; 7 uses
  %.not9.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i.i, label %triggerSpanDup.exit, label %sqlite3DbSpanDup.exit.i

sqlite3DbSpanDup.exit.i:                          ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull readonly align 1 %.09.i.i, i64 range(i64 -2147483648, 4294967296) %indvars.iv11.i.i, i1 false)
end_hunk_7
