Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cuddEssent?download=true
inline.NumInlined: 101
inline.NumDeleted: 11
begin_hunk_0_@ddFindTwoLiteralClausesRecur:bb.a
  %.val115 = load ptr, ptr %i.ce, align 8, !tbaa !36
  %i.cf = call fastcc ptr @computeClausesWithUniverse(ptr %.val114, ptr %.val115, i32 noundef %i.y, i16 noundef signext 1)
  store ptr %i.cf, ptr %i.a, align 8, !tbaa !40
  br label %bb.an

bb.af:                                            ; preds = %bb.v
  %i.cg = call fastcc ptr @ddFindTwoLiteralClausesRecur(ptr noundef nonnull %0, ptr noundef %.073, ptr noundef %2) ; 7 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %emptyClauseSet.exit117.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ci = ptrtoint ptr %.0 to i64
  %i.cj = and i64 %i.ci, -2
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !28
  %i.cm = icmp eq i32 %i.cl, 2147483647
  br i1 %i.cm, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.cn = icmp eq ptr %.0, %i.k
  %i.co = icmp eq ptr %.0, %i.m
  %or.cond100 = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond100, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %.val112 = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.cp = getelementptr i8, ptr %i.cg, i64 8
  %.val113 = load ptr, ptr %i.cp, align 8, !tbaa !36
  %i.cq = call fastcc ptr @computeClausesWithUniverse(ptr %.val112, ptr %.val113, i32 noundef %i.y, i16 noundef signext 0)
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !40
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.cr = call fastcc ptr @emptyClauseSet()       ; 4 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %emptyClauseSet.exit117.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !32
  %.val104 = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.cv = getelementptr i8, ptr %i.cg, i64 8
  %.val105 = load ptr, ptr %i.cv, align 8, !tbaa !36
  %.val106 = load ptr, ptr %i.cr, align 8, !tbaa !34
  %i.cw = getelementptr i8, ptr %i.cr, i64 8
  %.val107 = load ptr, ptr %i.cw, align 8, !tbaa !36
  %i.cx = call fastcc ptr @computeClauses(ptr %.val104, ptr %.val105, ptr %.val106, ptr %.val107, i32 noundef %i.y, i32 noundef %i.cu)
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !40
  call void @Cudd_tlcInfoFree(ptr noundef nonnull %i.cr)
  br label %bb.an

bb.al:                                            ; preds = %bb.ag
  %i.cy = call fastcc ptr @ddFindTwoLiteralClausesRecur(ptr noundef nonnull %0, ptr noundef %.0, ptr noundef %2) ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %emptyClauseSet.exit117.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.db = load i32, ptr %i.da, align 8, !tbaa !32
  %.val = load ptr, ptr %i.cg, align 8, !tbaa !34
  %i.dc = getelementptr i8, ptr %i.cg, i64 8
  %.val101 = load ptr, ptr %i.dc, align 8, !tbaa !36
  %.val102 = load ptr, ptr %i.cy, align 8, !tbaa !34
  %i.dd = getelementptr i8, ptr %i.cy, i64 8
  %.val103 = load ptr, ptr %i.dd, align 8, !tbaa !36
  %i.de = call fastcc ptr @computeClauses(ptr %.val, ptr %.val101, ptr %.val102, ptr %.val103, i32 noundef %i.y, i32 noundef %i.db)
  store ptr %i.de, ptr %i.a, align 8, !tbaa !40
  br label %bb.an

bb.an:                                            ; preds = %bb.ae, %bb.ac, %bb.ai, %bb.ak, %bb.am, %bb.j, %bb.u, %emptyClauseSet.exit
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.dg = call i32 @st__add_direct(ptr noundef nonnull %2, ptr noundef %1, ptr noundef %i.df) #13
  %i.dh = icmp eq i32 %i.dg, -10000
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !40  ; 3 uses
  br i1 %i.dh, label %bb.ao, label %emptyClauseSet.exit117.thread

bb.ao:                                            ; preds = %bb.an
  %.not94 = icmp eq ptr %i.di, null
  br i1 %.not94, label %emptyClauseSet.exit117.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef nonnull %i.di) #13
  br label %emptyClauseSet.exit117.thread

emptyClauseSet.exit117.thread:                    ; preds = %bb.an, %bb.x, %bb.e, %bb.p, %bb.r, %bb.ap, %bb.ao, %bb.al, %bb.aj, %bb.af, %bb.ad, %bb.ab, %bb.i, %bb.z, %bb.t, %bb.g, %bb.b
  %.074 = phi ptr [ %i.c, %bb.b ], [ null, %bb.aj ], [ null, %bb.g ], [ null, %bb.p ], [ null, %bb.al ], [ null, %bb.x ], [ null, %bb.i ], [ null, %bb.t ], [ null, %bb.ao ], [ null, %bb.z ], [ null, %bb.e ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %bb.af ], [ null, %bb.ap ], [ null, %bb.r ], [ %i.di, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.074
}

declare ptr @st__init_gen(ptr noundef) local_unnamed_addr #2

declare i32 @st__gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @st__free_gen(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @Cudd_tlcInfoFree(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #13
  store ptr null, ptr %0, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.c) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Cudd_ReadIthClause(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp slt i32 %1, 0
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37
  %.not = icmp ult i32 %1, %i.i
  br i1 %.not, label %bitVectorRead.exit22, label %bb.e

bitVectorRead.exit22:                             ; preds = %bb.d
  %i.j = shl nuw nsw i32 %1, 1                    ; 3 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  store i32 %i.m, ptr %2, align 4, !tbaa !35
  %i.n = or disjoint i32 %i.j, 1                  ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  store i32 %i.q, ptr %3, align 4, !tbaa !35
  %i.r = lshr i32 %1, 5
  %i.s = and i32 %i.j, 62
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.w = zext nneg i32 %i.s to i64
  %i.x = lshr i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 1
  store i32 %i.z, ptr %4, align 4, !tbaa !35
  %i.aa = and i32 %i.n, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i64 %i.v, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1
  store i32 %i.ae, ptr %5, align 4, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %bitVectorRead.exit22
  %.0 = phi i32 [ 1, %bitVectorRead.exit22 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cudd_PrintTwoLiteralClauses(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Cudd_FindTwoLiteralClauses(ptr noundef %0, ptr noundef %1) ; 6 uses
  %i.b = icmp eq ptr %3, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ %3, %bb.a ]   ; 6 uses
  %i.f = icmp eq ptr %i.a, null
  br i1 %i.f, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %.fr122 = freeze ptr %i.i                       ; 4 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !35   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35   ; 4 uses
  %i.m = or i32 %i.l, %i.j
  %.not105 = icmp eq i32 %i.m, 0
  br i1 %.not105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.not54 = icmp eq ptr %2, null
  %i.n = icmp eq ptr %.fr122, null                ; 3 uses
  br i1 %.not54, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.h ], [ 0, %.lr.ph ] ; 7 uses
  %i.o = phi i32 [ %i.aq, %bb.h ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.p = phi i32 [ %i.ao, %bb.h ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.q = icmp eq i32 %i.o, 2147483647
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  br i1 %i.n, label %bitVectorRead.exit70.thread.us, label %bitVectorRead.exit68.us

bitVectorRead.exit68.us:                          ; preds = %bb.e
  %i.r = lshr i64 %indvars.iv137, 6
  %i.s = and i64 %indvars.iv137, 62
  %i.t = and i64 %i.r, 67108863
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.fr122, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.w = and i64 %indvars.iv137, 62
  %i.x = shl nuw nsw i64 1, %i.w
  %i.y = and i64 %i.v, %i.x
  %.fr102.us = freeze i64 %i.y
  %.not55.us = icmp eq i64 %.fr102.us, 0
  %spec.select97.us = select i1 %.not55.us, ptr @.str.2, ptr @.str.1
  %i.z = shl nuw i64 2, %i.s
  %i.aa = and i64 %i.v, %i.z
  %.fr103.us = freeze i64 %i.aa
  %.not56.us = icmp eq i64 %.fr103.us, 0
  %spec.select98.us = select i1 %.not56.us, ptr @.str.2, ptr @.str.1
  br label %bitVectorRead.exit70.thread.us

bitVectorRead.exit70.thread.us:                   ; preds = %bitVectorRead.exit68.us, %bb.e
  %i.ab = phi ptr [ %spec.select97.us, %bitVectorRead.exit68.us ], [ @.str.2, %bb.e ]
  %i.ac = phi ptr [ %spec.select98.us, %bitVectorRead.exit68.us ], [ @.str.2, %bb.e ]
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ab, i32 noundef %i.p, ptr noundef nonnull %i.ac, i32 noundef %i.o) #13 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph.split.us
  br i1 %i.n, label %bitVectorRead.exit66.thread.us, label %bitVectorRead.exit66.us

bitVectorRead.exit66.us:                          ; preds = %bb.f
  %i.ae = lshr i64 %indvars.iv137, 6
  %i.af = and i64 %indvars.iv137, 62
  %i.ag = and i64 %i.ae, 67108863
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr122, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.aj = shl nuw nsw i64 1, %i.af
  %i.ak = and i64 %i.ai, %i.aj
  %.fr104.us = freeze i64 %i.ak
  %.not57.us = icmp eq i64 %.fr104.us, 0
  br i1 %.not57.us, label %bitVectorRead.exit66.thread.us, label %bb.g

bitVectorRead.exit66.thread.us:                   ; preds = %bitVectorRead.exit66.us, %bb.f
  br label %bb.g

bb.g:                                             ; preds = %bitVectorRead.exit66.thread.us, %bitVectorRead.exit66.us
  %i.al = phi ptr [ @.str.2, %bitVectorRead.exit66.thread.us ], [ @.str.1, %bitVectorRead.exit66.us ]
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.al, i32 noundef %i.p) #13 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bitVectorRead.exit70.thread.us
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next138
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !35 ; 2 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv137
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !35 ; 2 uses
  %i.ar = or i32 %i.aq, %i.ao
  %.not.us = icmp eq i32 %i.ar, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !48

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.n, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split, %bb.i
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.i ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.as = phi i32 [ %i.bg, %bb.i ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %i.at = phi i32 [ %i.be, %bb.i ], [ %i.j, %.lr.ph.split ]
  %i.au = icmp eq i32 %i.as, 2147483647
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 2 uses
  br i1 %i.au, label %bitVectorRead.exit.thread.us.us, label %bitVectorRead.exit64.thread.us.us

bitVectorRead.exit64.thread.us.us:                ; preds = %.lr.ph.split.split.us.split.us
  %i.ay = zext i32 %i.as to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %i.ax, ptr noundef nonnull @.str.2, ptr noundef %i.ba) #13 ; 0 uses
  br label %bb.i

bitVectorRead.exit.thread.us.us:                  ; preds = %.lr.ph.split.split.us.split.us
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef %i.ax) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bitVectorRead.exit.thread.us.us, %bitVectorRead.exit64.thread.us.us
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 2 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next135
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !35 ; 2 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv134
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !35 ; 2 uses
  %i.bh = or i32 %i.bg, %i.be
  %.not.us111.us = icmp eq i32 %i.bh, 0
  br i1 %.not.us111.us, label %._crit_edge, label %.lr.ph.split.split.us.split.us, !llvm.loop !48

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph.split ] ; 5 uses
  %i.bi = phi i32 [ %i.cj, %bb.j ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %i.bj = phi i32 [ %i.ch, %bb.j ], [ %i.j, %.lr.ph.split ] ; 2 uses
  %i.bk = icmp eq i32 %i.bi, 2147483647
  %i.bl = lshr i64 %indvars.iv, 6
  %i.bm = and i64 %indvars.iv, 62                 ; 2 uses
  %i.bn = and i64 %i.bl, 67108863
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.fr122, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !41 ; 3 uses
  br i1 %i.bk, label %bitVectorRead.exit, label %bitVectorRead.exit62

bitVectorRead.exit:                               ; preds = %.lr.ph.split.split.split
  %i.bq = shl nuw nsw i64 1, %i.bm
  %i.br = and i64 %i.bp, %i.bq
  %.fr101 = freeze i64 %i.br
  %.not60 = icmp eq i64 %.fr101, 0
  %spec.select121 = select i1 %.not60, ptr @.str.2, ptr @.str.1
  %i.bs = zext i32 %i.bj to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !50
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str, ptr noundef nonnull %spec.select121, ptr noundef %i.bu) #13 ; 0 uses
  br label %bb.j

bitVectorRead.exit62:                             ; preds = %.lr.ph.split.split.split
  %i.bw = and i64 %indvars.iv, 62
  %i.bx = shl nuw nsw i64 1, %i.bw
  %i.by = and i64 %i.bp, %i.bx
  %.fr = freeze i64 %i.by
  %.not58 = icmp eq i64 %.fr, 0
  %.str.2..str.1 = select i1 %.not58, ptr @.str.2, ptr @.str.1
  %i.bz = shl nuw i64 2, %i.bm
  %i.ca = and i64 %i.bp, %i.bz
  %.fr99 = freeze i64 %i.ca
  %.not59 = icmp eq i64 %.fr99, 0
  %spec.select = select i1 %.not59, ptr @.str.2, ptr @.str.1
  %.pn.pn = zext i32 %i.bj to i64
  %.in100 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.pn.pn
  %i.cb = load ptr, ptr %.in100, align 8, !tbaa !50
  %i.cc = zext i32 %i.bi to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !50
  %i.cf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.2..str.1, ptr noundef %i.cb, ptr noundef nonnull %spec.select, ptr noundef %i.ce) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bitVectorRead.exit62, %bitVectorRead.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !35 ; 2 uses
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !35 ; 2 uses
  %i.ck = or i32 %i.cj, %i.ch
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.cl) #13
  store ptr null, ptr %i.a, align 8, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !36  ; 2 uses
  %.not11.i = icmp eq ptr %i.cm, null
  br i1 %.not11.i, label %Cudd_tlcInfoFree.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.cm) #13
  br label %Cudd_tlcInfoFree.exit

Cudd_tlcInfoFree.exit:                            ; preds = %bb.l, %bb.m
  tail call void @free(ptr noundef nonnull %i.a) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %Cudd_tlcInfoFree.exit
  %.050 = phi i32 [ 1, %Cudd_tlcInfoFree.exit ], [ 0, %bb.c ]
  ret i32 %.050
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare ptr @cuddCacheLookup1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cuddUniqueInter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Cudd_RecursiveDeref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cuddBddAndRecur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cuddBddLiteralSetIntersectionRecur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cuddCacheInsert1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @st__lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @computeClauses(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(address_is_null) %.8.val, ptr nofree readonly captures(none) %.0.val1, ptr nofree readonly captures(address_is_null) %.8.val3, i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @Tolv, align 8, !tbaa !38  ; 5 uses
  %i.b = add nsw i32 %1, -1
  %i.c = ashr i32 %i.b, 6
  %i.d = add nsw i32 %i.c, 1
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 3                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.a, i8 0, i64 %i.f, i1 false)
  %i.g = load ptr, ptr @Tolp, align 8, !tbaa !38  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %i.h = load ptr, ptr @Eolv, align 8, !tbaa !38  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.f, i1 false)
  %i.i = load ptr, ptr @Eolp, align 8, !tbaa !38  ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.f, i1 false)
  %i.j = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #14 ; 9 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.loopexit, label %tlcInfoAlloc.exit

tlcInfoAlloc.exit:                                ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.j, i8 0, i64 20, i1 false)
  %i.l = icmp eq ptr %.8.val, null                ; 7 uses
  %i.m = icmp eq ptr %.8.val3, null               ; 6 uses
  %i.n = icmp eq ptr %i.a, null
  %i.o = icmp eq ptr %i.g, null                   ; 2 uses
  %i.p = icmp eq ptr %i.h, null
  %i.q = icmp eq ptr %i.i, null                   ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %tlcInfoAlloc.exit, %impliedp.exit.thread
  %.0384.ph.ph = phi i32 [ 0, %tlcInfoAlloc.exit ], [ %i.ja, %impliedp.exit.thread ]
  %.0382.ph.ph = phi i32 [ 0, %tlcInfoAlloc.exit ], [ %.0382, %impliedp.exit.thread ]
  %.0371.ph.ph = phi i32 [ 0, %tlcInfoAlloc.exit ], [ %.1372, %impliedp.exit.thread ]
  %.0363.ph.ph = phi ptr [ null, %tlcInfoAlloc.exit ], [ %.1364, %impliedp.exit.thread ]
  %.0354.ph.ph = phi ptr [ null, %tlcInfoAlloc.exit ], [ %.1355, %impliedp.exit.thread ] ; 12 uses
  %.0345.ph.ph = phi ptr [ null, %tlcInfoAlloc.exit ], [ %.0345, %impliedp.exit.thread ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bitVectorRead.exit430
  %.0384.ph = phi i32 [ %i.dm, %bitVectorRead.exit430 ], [ %.0384.ph.ph, %.outer.outer ] ; 18 uses
  %.0382.ph = phi i32 [ %i.dn, %bitVectorRead.exit430 ], [ %.0382.ph.ph, %.outer.outer ]
  %.0371.ph = phi i32 [ %i.do, %bitVectorRead.exit430 ], [ %.0371.ph.ph, %.outer.outer ]
  %.0363.ph = phi ptr [ %i.co, %bitVectorRead.exit430 ], [ %.0363.ph.ph, %.outer.outer ]
  %.0345.ph = phi ptr [ %.0345, %bitVectorRead.exit430 ], [ %.0345.ph.ph, %.outer.outer ]
  %i.r = sext i32 %.0384.ph to i64                ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.r
  %i.t = add nsw i32 %.0384.ph, 1                 ; 11 uses
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.u
  %i.w = ashr i32 %.0384.ph, 6
  %i.x = and i32 %.0384.ph, 63
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.8.val, i64 %i.y
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = ashr i32 %i.t, 6
  %i.ac = and i32 %i.t, 63
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %.8.val, i64 %i.ad
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = ashr i32 %.0384.ph, 6
  %i.ah = and i32 %.0384.ph, 63
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %.8.val, i64 %i.ai
  %i.ak = zext nneg i32 %i.ah to i64
  %i.al = ashr i32 %i.t, 6
  %i.am = and i32 %i.t, 63
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.8.val, i64 %i.an
  %i.ap = zext nneg i32 %i.am to i64
  br label %bb.b

bb.b:                                             ; preds = %.outer, %impliedp.exit467.thread
  %.0382 = phi i32 [ %i.nh, %impliedp.exit467.thread ], [ %.0382.ph, %.outer ] ; 19 uses
  %.0371 = phi i32 [ %.2373, %impliedp.exit467.thread ], [ %.0371.ph, %.outer ] ; 12 uses
  %.0363 = phi ptr [ %.2365, %impliedp.exit467.thread ], [ %.0363.ph, %.outer ] ; 15 uses
  %.0345 = phi ptr [ %.1346, %impliedp.exit467.thread ], [ %.0345.ph, %.outer ] ; 15 uses
  %i.aq = load i32, ptr %i.s, align 4, !tbaa !35  ; 5 uses
  %i.ar = load i32, ptr %i.v, align 4, !tbaa !35  ; 6 uses
  %i.as = or i32 %i.ar, %i.aq
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.at = sext i32 %.0382 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.0.val1, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !35
  %i.aw = getelementptr i8, ptr %i.au, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !35
  %i.ay = or i32 %i.ax, %i.av
  %.not52 = icmp eq i32 %i.ay, 0
  br i1 %.not52, label %bb.am, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  br i1 %i.l, label %bitVectorRead.exit422, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.az = load i64, ptr %i.z, align 8, !tbaa !41
  %i.ba = lshr i64 %i.az, %i.aa
  %i.bb = trunc i64 %i.ba to i16
  %i.bc = and i16 %i.bb, 1
  %i.bd = load i64, ptr %i.ae, align 8, !tbaa !41
  %i.be = lshr i64 %i.bd, %i.af
  %i.bf = trunc i64 %i.be to i16
  %i.bg = and i16 %i.bf, 1
  br label %bitVectorRead.exit422

bitVectorRead.exit422:                            ; preds = %.critedge, %bb.d
  %.0.i6 = phi i16 [ %i.bc, %bb.d ], [ 0, %.critedge ]
  %.0.i421 = phi i16 [ %i.bg, %bb.d ], [ 0, %.critedge ]
  %i.bh = sext i32 %.0382 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %.0.val1, i64 %i.bh ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !35 ; 4 uses
  br i1 %i.m, label %bitVectorRead.exit424.thread, label %bb.e

bitVectorRead.exit424.thread:                     ; preds = %bitVectorRead.exit422
  %i.bk = add nsw i32 %.0382, 1
  br label %bitVectorRead.exit426

bb.e:                                             ; preds = %bitVectorRead.exit422
  %i.bl = ashr i32 %.0382, 6
  %i.bm = and i32 %.0382, 63
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.8.val3, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !41
  %i.bq = zext nneg i32 %i.bm to i64
  %i.br = lshr i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i16
  %i.bt = and i16 %i.bs, 1
  %i.bu = add nsw i32 %.0382, 1                   ; 3 uses
  %i.bv = ashr i32 %i.bu, 6
  %i.bw = and i32 %i.bu, 63
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %.8.val3, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !41
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = lshr i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i16
  %i.cd = and i16 %i.cc, 1
  br label %bitVectorRead.exit426

bitVectorRead.exit426:                            ; preds = %bitVectorRead.exit424.thread, %bb.e
  %i.ce = phi i32 [ %i.bu, %bb.e ], [ %i.bk, %bitVectorRead.exit424.thread ] ; 7 uses
  %.0.i4238 = phi i16 [ %i.bt, %bb.e ], [ 0, %bitVectorRead.exit424.thread ]
end_hunk_0
begin_hunk_1_@computeClauses:bb.a
  %i.sh = ashr i32 %i.sg, 5
  %i.si = and i64 %i.sa, 62                       ; 2 uses
  %i.sj = shl nuw nsw i64 1, %i.si
  %i.sk = xor i64 %i.sj, -1
  %i.sl = sext i32 %i.sh to i64
  %i.sm = getelementptr inbounds [8 x i8], ptr %.0386, i64 %i.sl ; 2 uses
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !41
  %i.so = and i64 %i.sn, %i.sk
  %i.sp = sext i16 %i.ry to i64
  %i.sq = shl i64 %i.sp, %i.si
  %i.sr = or i64 %i.so, %i.sq
  %i.ss = and i64 %i.se, 63                       ; 2 uses
  %i.st = shl nuw i64 1, %i.ss
  %i.su = xor i64 %i.st, -1
  %i.sv = and i64 %i.sr, %i.su
  %i.sw = sext i16 %i.rx to i64
  %i.sx = shl i64 %i.sw, %i.ss
  %i.sy = or i64 %i.sv, %i.sx
  store i64 %i.sy, ptr %i.sm, align 8, !tbaa !41
  %i.sz = getelementptr inbounds nuw i8, ptr %.4367109, i64 16
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !67
  br label %bb.bp

beforep.exit473.thread41:                         ; preds = %.beforep.exit473.thread41_crit_edge, %bb.bl, %bb.bn, %beforep.exit473
  %i.tb = phi i16 [ %.pre144, %.beforep.exit473.thread41_crit_edge ], [ %i.ri, %bb.bl ], [ %i.ri, %bb.bn ], [ %i.ri, %beforep.exit473 ]
  %i.tc = shl nsw i64 %indvars.iv.next, 1         ; 3 uses
  %i.td = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.tc
  store i32 %.pre, ptr %i.td, align 4, !tbaa !35
  %i.te = getelementptr inbounds nuw i8, ptr %.8110, i64 4
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !69
  %i.tg = or disjoint i64 %i.tc, 1                ; 2 uses
  %i.th = getelementptr inbounds [4 x i8], ptr %i.qk, i64 %i.tg
  store i32 %i.tf, ptr %i.th, align 4, !tbaa !35
  %i.ti = trunc nsw i64 %indvars.iv.next to i32
  %i.tj = ashr i32 %i.ti, 5
  %i.tk = and i64 %i.tc, 62                       ; 2 uses
  %i.tl = shl nuw nsw i64 1, %i.tk
  %i.tm = xor i64 %i.tl, -1
  %i.tn = sext i32 %i.tj to i64
  %i.to = getelementptr inbounds [8 x i8], ptr %.0386, i64 %i.tn ; 2 uses
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !41
  %i.tq = and i64 %i.tp, %i.tm
  %i.tr = sext i16 %i.re to i64
  %i.ts = shl i64 %i.tr, %i.tk
  %i.tt = or i64 %i.tq, %i.ts
  %i.tu = and i64 %i.tg, 63                       ; 2 uses
  %i.tv = shl nuw i64 1, %i.tu
  %i.tw = xor i64 %i.tv, -1
  %i.tx = and i64 %i.tt, %i.tw
  %i.ty = sext i16 %i.tb to i64
  %i.tz = shl i64 %i.ty, %i.tu
  %i.ua = or i64 %i.tx, %i.tz
  store i64 %i.ua, ptr %i.to, align 8, !tbaa !41
  %i.ub = getelementptr inbounds nuw i8, ptr %.8110, i64 16
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !67
  br label %bb.bp

bb.bp:                                            ; preds = %beforep.exit473.thread41, %beforep.exit473.thread
  %.8110.sink = phi ptr [ %.8110, %beforep.exit473.thread41 ], [ %.4367109, %beforep.exit473.thread ]
  %.5368 = phi ptr [ %.4367109, %beforep.exit473.thread41 ], [ %i.ta, %beforep.exit473.thread ] ; 2 uses
  %.9 = phi ptr [ %i.uc, %beforep.exit473.thread41 ], [ %.8110, %beforep.exit473.thread ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.8110.sink) #13
  %i.ud = icmp ne ptr %.5368, null                ; 2 uses
  %i.ue = icmp ne ptr %.9, null
  %i.uf = select i1 %i.ud, i1 true, i1 %i.ue
  br i1 %i.uf, label %.lr.ph112, label %.loopexit, !llvm.loop !57

.loopexit68:                                      ; preds = %bb.aa, %impliedp.exit467.thread27, %bb.o, %impliedp.exit.thread21, %bb.f, %bb.bb, %bb.av, %bb.am, %bb.an, %._crit_edge, %bb.bh
  %.7361 = phi ptr [ %.335799, %bb.bb ], [ %.0354.ph.ph, %bb.am ], [ %i.ni, %bb.an ], [ null, %bb.bh ], [ null, %._crit_edge ], [ %.335799, %bb.av ], [ %.0354.ph.ph, %bb.f ], [ %.0354.ph.ph, %impliedp.exit.thread21 ], [ %.0354.ph.ph, %bb.o ], [ %.0354.ph.ph, %impliedp.exit467.thread27 ], [ %.0354.ph.ph, %bb.aa ] ; 2 uses
  %.7352 = phi ptr [ %.3348100, %bb.bb ], [ %.0345, %bb.am ], [ %.0345, %bb.an ], [ null, %bb.bh ], [ null, %._crit_edge ], [ %.3348100, %bb.av ], [ %.0345, %bb.f ], [ %.0345, %impliedp.exit.thread21 ], [ %.0345, %bb.o ], [ %.0345, %impliedp.exit467.thread27 ], [ %.0345, %bb.aa ] ; 2 uses
  %.10 = phi ptr [ %.434191, %bb.bb ], [ null, %bb.am ], [ null, %bb.an ], [ %.7344, %bb.bh ], [ %.7344, %._crit_edge ], [ %.133895, %bb.av ], [ null, %bb.f ], [ null, %impliedp.exit.thread21 ], [ null, %bb.o ], [ null, %impliedp.exit467.thread27 ], [ null, %bb.aa ] ; 2 uses
  %i.ug = load ptr, ptr %i.j, align 8, !tbaa !34  ; 2 uses
  %.not.i474 = icmp eq ptr %i.ug, null
  br i1 %.not.i474, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.loopexit68
  tail call void @free(ptr noundef nonnull %i.ug) #13
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.loopexit68
  %i.uh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !36 ; 2 uses
  %.not11.i = icmp eq ptr %i.ui, null
  br i1 %.not11.i, label %.thread43, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void @free(ptr noundef nonnull %i.ui) #13
  br label %.thread43

.thread43:                                        ; preds = %bb.bs, %bb.br
  tail call void @free(ptr noundef nonnull %i.j) #13
  %.not416113 = icmp eq ptr %.0363, null
  br i1 %.not416113, label %.preheader64, label %.lr.ph115

.preheader64:                                     ; preds = %.lr.ph115, %.thread43
  %.not417116 = icmp eq ptr %.10, null
  br i1 %.not417116, label %.preheader63, label %.lr.ph118

.lr.ph115:                                        ; preds = %.thread43, %.lr.ph115
  %.7370114 = phi ptr [ %i.uk, %.lr.ph115 ], [ %.0363, %.thread43 ] ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %.7370114, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !67 ; 2 uses
  tail call void @free(ptr noundef nonnull %.7370114) #13
  %.not416 = icmp eq ptr %i.uk, null
  br i1 %.not416, label %.preheader64, label %.lr.ph115, !llvm.loop !58

.preheader63:                                     ; preds = %.lr.ph118, %.preheader64
  %.not418119 = icmp eq ptr %.7361, null
  br i1 %.not418119, label %.preheader, label %.lr.ph121

.lr.ph118:                                        ; preds = %.preheader64, %.lr.ph118
  %.11117 = phi ptr [ %i.um, %.lr.ph118 ], [ %.10, %.preheader64 ] ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.11117, i64 16
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !67 ; 2 uses
  tail call void @free(ptr noundef nonnull %.11117) #13
  %.not417 = icmp eq ptr %i.um, null
  br i1 %.not417, label %.preheader63, label %.lr.ph118, !llvm.loop !59

.preheader:                                       ; preds = %.lr.ph121, %.preheader63
  %.not419122 = icmp eq ptr %.7352, null
  br i1 %.not419122, label %.loopexit, label %.lr.ph124

.lr.ph121:                                        ; preds = %.preheader63, %.lr.ph121
  %.8362120 = phi ptr [ %i.uo, %.lr.ph121 ], [ %.7361, %.preheader63 ] ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.8362120, i64 16
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !67 ; 2 uses
  tail call void @free(ptr noundef nonnull %.8362120) #13
  %.not418 = icmp eq ptr %i.uo, null
  br i1 %.not418, label %.preheader, label %.lr.ph121, !llvm.loop !60

.lr.ph124:                                        ; preds = %.preheader, %.lr.ph124
  %.8353123 = phi ptr [ %i.uq, %.lr.ph124 ], [ %.7352, %.preheader ] ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.8353123, i64 16
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !67 ; 2 uses
  tail call void @free(ptr noundef nonnull %.8353123) #13
  %.not419 = icmp eq ptr %i.uq, null
  br i1 %.not419, label %.loopexit, label %.lr.ph124, !llvm.loop !61

.loopexit:                                        ; preds = %bb.bp, %.lr.ph124, %bb.a, %bb.bi, %.preheader
  %.0387 = phi ptr [ null, %.preheader ], [ %i.j, %bb.bi ], [ null, %.lr.ph124 ], [ null, %bb.a ], [ %i.j, %bb.bp ]
  ret ptr %.0387
}

; Function Attrs: nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @computeClausesWithUniverse(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(address_is_null) %.8.val, i32 noundef %0, i16 noundef signext range(i16 0, 2) %1) unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #14 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread.thread, label %tlcInfoAlloc.exit

tlcInfoAlloc.exit:                                ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %tlcInfoAlloc.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %tlcInfoAlloc.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %indvars.iv ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35
  %i.g = or i32 %i.f, %i.d
  %.not = icmp eq i32 %i.g, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !70

bb.c:                                             ; preds = %bb.b
  %i.h = shl i64 %indvars.iv, 2
  %i.i = add i64 %i.h, 16
  %i.j = and i64 %i.i, 17179869176
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %Cudd_tlcInfoFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %indvars.iv, 2
  %i.n = lshr i64 %i.m, 3
  %i.o = and i64 %i.n, 268435448
  %i.p = add nuw nsw i64 %i.o, 8
  %calloc.i = tail call noalias noundef ptr @calloc(i64 1, i64 %i.p) ; 7 uses
  %i.q = icmp eq ptr %calloc.i, null
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.k, ptr %i.a, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %calloc.i, ptr %i.r, align 8, !tbaa !36
  %i.s = load i32, ptr %.0.val, align 4, !tbaa !35 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35   ; 3 uses
  %i.v = or i32 %i.u, %i.s
  %.not36 = icmp eq i32 %i.v, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.w = icmp eq ptr %.8.val, null
  br i1 %i.w, label %bitVectorRead.exit.us, label %bitVectorRead.exit

bitVectorRead.exit.us:                            ; preds = %.lr.ph, %bitVectorRead.exit.us
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %bitVectorRead.exit.us ], [ 0, %.lr.ph ] ; 6 uses
  %i.x = phi i32 [ %i.ap, %bitVectorRead.exit.us ], [ %i.u, %.lr.ph ]
  %2 = phi i64 [ %3, %bitVectorRead.exit.us ], [ 1, %.lr.ph ]
  %i.y = phi i32 [ %i.an, %bitVectorRead.exit.us ], [ %i.s, %.lr.ph ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv27
  store i32 %i.y, ptr %i.z, align 4, !tbaa !35
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %2
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !35
  %i.ab = lshr i64 %indvars.iv27, 6
  %i.ac = and i64 %indvars.iv27, 62
  %i.ad = and i64 %indvars.iv27, 62
  %i.ae = shl nuw nsw i64 1, %i.ad
  %i.af = and i64 %i.ab, 67108863
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !41
  %i.ai = shl nuw i64 2, %i.ac
  %i.aj = or disjoint i64 %i.ae, %i.ai
  %i.ak = xor i64 %i.aj, -1
  %i.al = and i64 %i.ah, %i.ak
  store i64 %i.al, ptr %i.ag, align 8, !tbaa !41
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 2 ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %indvars.iv.next28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !35 ; 2 uses
  %3 = add nuw nsw i64 %indvars.iv27, 3           ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %3
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !35 ; 2 uses
  %i.aq = or i32 %i.ap, %i.an
  %.not3.us = icmp eq i32 %i.aq, 0
  br i1 %.not3.us, label %._crit_edge.loopexit, label %bitVectorRead.exit.us, !llvm.loop !71

bitVectorRead.exit:                               ; preds = %.lr.ph, %bitVectorRead.exit
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %bitVectorRead.exit ], [ 0, %.lr.ph ] ; 6 uses
  %i.ar = phi i32 [ %i.bv, %bitVectorRead.exit ], [ %i.u, %.lr.ph ]
  %4 = phi i64 [ %5, %bitVectorRead.exit ], [ 1, %.lr.ph ]
  %i.as = phi i32 [ %i.bt, %bitVectorRead.exit ], [ %i.s, %.lr.ph ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv24
  store i32 %i.as, ptr %i.at, align 4, !tbaa !35
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %4
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !35
  %i.av = lshr i64 %indvars.iv24, 6
  %i.aw = and i64 %indvars.iv24, 62               ; 3 uses
  %i.ax = and i64 %i.av, 67108863                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41 ; 2 uses
  %i.ba = lshr i64 %i.az, %i.aw
  %i.bb = and i64 %i.ba, 1
  %i.bc = shl nuw nsw i64 1, %i.aw
  %i.bd = xor i64 %i.bc, -1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %i.ax ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !41
  %i.bg = and i64 %i.bf, %i.bd
  %i.bh = shl nuw nsw i64 %i.bb, %i.aw
  %i.bi = or i64 %i.bg, %i.bh
  %i.bj = and i64 %indvars.iv24, 62               ; 2 uses
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bl = lshr i64 %i.az, %i.bk
  %i.bm = and i64 %i.bl, 1
  %i.bn = shl nuw i64 2, %i.bj
  %i.bo = xor i64 %i.bn, -1
  %i.bp = and i64 %i.bi, %i.bo
  %i.bq = shl nuw i64 %i.bm, %i.bk
  %i.br = or i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.be, align 8, !tbaa !41
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 2 ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %indvars.iv.next25
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !35 ; 2 uses
  %5 = add nuw nsw i64 %indvars.iv24, 3           ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %5
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !35 ; 2 uses
  %i.bw = or i32 %i.bv, %i.bt
  %.not3 = icmp eq i32 %i.bw, 0
  br i1 %.not3, label %._crit_edge.loopexit14, label %bitVectorRead.exit, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %bitVectorRead.exit.us
  %i.bx = trunc nuw nsw i64 %indvars.iv.next28 to i32
  br label %._crit_edge

._crit_edge.loopexit14:                           ; preds = %bitVectorRead.exit
  %i.by = trunc nuw nsw i64 %indvars.iv.next25 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit14, %._crit_edge.loopexit, %bb.e
  %.1.lcssa = phi i32 [ 0, %bb.e ], [ %i.bx, %._crit_edge.loopexit ], [ %i.by, %._crit_edge.loopexit14 ] ; 4 uses
  %.lcssa5 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next28, %._crit_edge.loopexit ], [ %indvars.iv.next25, %._crit_edge.loopexit14 ]
  %.lcssa = phi i64 [ 1, %bb.e ], [ %3, %._crit_edge.loopexit ], [ %5, %._crit_edge.loopexit14 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.lcssa5
  store i32 %0, ptr %i.bz, align 4, !tbaa !35
  %i.ca = lshr i32 %.1.lcssa, 6
  %i.cb = and i32 %.1.lcssa, 62
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = shl nuw nsw i64 1, %i.cc
  %i.ce = xor i64 %i.cd, -1
  %i.cf = zext nneg i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %i.cf ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !41
  %i.ci = and i64 %i.ch, %i.ce
  %i.cj = zext nneg i16 %1 to i64
  %i.ck = shl nuw nsw i64 %i.cj, %i.cc
  %i.cl = or i64 %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.lcssa
  store i32 2147483647, ptr %i.cm, align 4, !tbaa !35
  %i.cn = and i64 %.lcssa, 63
  %i.co = shl nuw i64 1, %i.cn
  %i.cp = or i64 %i.cl, %i.co
  store i64 %i.cp, ptr %i.cg, align 8, !tbaa !41
  %i.cq = add nuw nsw i32 %.1.lcssa, 2            ; 3 uses
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cr
  store i32 0, ptr %i.cs, align 4, !tbaa !35
  %i.ct = add nuw nsw i32 %.1.lcssa, 3            ; 3 uses
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cu
  store i32 0, ptr %i.cv, align 4, !tbaa !35
  %i.cw = lshr i32 %i.cq, 6
  %i.cx = and i32 %i.cq, 62
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 1, %i.cy
  %i.da = xor i64 %i.cz, -1
  %i.db = zext nneg i32 %i.cw to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %i.db ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !41
  %i.de = and i64 %i.dd, %i.da
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !41
  %i.df = lshr i32 %i.ct, 6
  %i.dg = and i32 %i.ct, 63
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = xor i64 %i.di, -1
  %i.dk = zext nneg i32 %i.df to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %calloc.i, i64 %i.dk ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !41
  %i.dn = and i64 %i.dm, %i.dj
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !41
  br label %.thread.thread

bb.f:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.k) #13
  br label %Cudd_tlcInfoFree.exit

Cudd_tlcInfoFree.exit:                            ; preds = %bb.f, %bb.c
  tail call void @free(ptr noundef nonnull %i.a) #13
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.a, %Cudd_tlcInfoFree.exit, %._crit_edge
  %.065 = phi ptr [ %i.a, %._crit_edge ], [ null, %Cudd_tlcInfoFree.exit ], [ null, %bb.a ]
  ret ptr %.065
}

declare i32 @st__add_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6DdNode", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"DdNode", !5, i64 0, !5, i64 4, !9, i64 8, !4, i64 16, !10, i64 32}
!12 = !{!"p1 _ZTS7DdCache", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"p1 _ZTS10DdSubtable", !8, i64 0}
!15 = !{!"any p2 pointer", !8, i64 0}
!16 = !{!"p2 _ZTS6DdNode", !15, i64 0}
!17 = !{!"DdSubtable", !16, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48}
!18 = !{!"p1 int", !8, i64 0}
!19 = !{!"p1 long", !8, i64 0}
!20 = !{!"p1 omnipotent char", !8, i64 0}
!21 = !{!"p1 _ZTS7MtrNode", !8, i64 0}
!22 = !{!"p1 _ZTS12DdLocalCache", !8, i64 0}
!23 = !{!"p1 _ZTS6DdHook", !8, i64 0}
!24 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!25 = !{!"DdManager", !11, i64 0, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !12, i64 80, !12, i64 88, !5, i64 96, !5, i64 100, !13, i64 104, !13, i64 112, !13, i64 120, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !14, i64 152, !14, i64 160, !17, i64 168, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !13, i64 256, !5, i64 264, !5, i64 268, !5, i64 272, !16, i64 280, !10, i64 288, !10, i64 296, !13, i64 304, !5, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !16, i64 352, !18, i64 360, !16, i64 368, !5, i64 376, !19, i64 384, !19, i64 392, !16, i64 400, !9, i64 408, !20, i64 416, !16, i64 424, !5, i64 432, !5, i64 436, !5, i64 440, !13, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !13, i64 472, !13, i64 480, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !21, i64 528, !21, i64 536, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !22, i64 568, !20, i64 576, !23, i64 584, !23, i64 592, !23, i64 600, !23, i64 608, !24, i64 616, !24, i64 624, !5, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !5, i64 664, !10, i64 672, !10, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !13, i64 712, !13, i64 720, !13, i64 728, !5, i64 736, !9, i64 744, !9, i64 752, !10, i64 760}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!25, !9, i64 40}
!28 = !{!11, !5, i64 0}
!29 = !{!25, !9, i64 48}
!30 = !{!4, !4, i64 0}
!31 = !{!9, !9, i64 0}
!32 = !{!25, !5, i64 136}
!33 = !{!"DdTlcInfo", !18, i64 0, !19, i64 8, !5, i64 16}
!34 = !{!33, !18, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{!33, !19, i64 8}
!37 = !{!33, !5, i64 16}
!38 = !{!19, !19, i64 0}
!39 = !{!"p1 _ZTS9DdTlcInfo", !8, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!10, !10, i64 0}
!42 = distinct !{!42, !26}
!43 = !{!25, !5, i64 456}
!44 = !{!25, !16, i64 352}
!45 = !{!11, !5, i64 4}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !26}
!49 = !{!25, !24, i64 616}
!50 = !{!20, !20, i64 0}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !26}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !26}
!55 = distinct !{!55, !26}
!56 = distinct !{!56, !26}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !26}
!59 = distinct !{!59, !26}
!60 = distinct !{!60, !26}
!61 = distinct !{!61, !26}
!62 = !{!"short", !4, i64 0}
!63 = !{!"p1 _ZTS8TlClause", !8, i64 0}
!64 = !{!"TlClause", !5, i64 0, !5, i64 4, !62, i64 8, !62, i64 10, !63, i64 16}
!65 = !{!64, !62, i64 8}
!66 = !{!64, !62, i64 10}
!67 = !{!64, !63, i64 16}
!68 = !{!64, !5, i64 0}
!69 = !{!64, !5, i64 4}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26}
end_hunk_1
