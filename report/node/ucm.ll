inline.NumInlined: 28
inline.NumDeleted: 6
begin_hunk_0_@ucm_separateMappings:bb.a
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr %i.cu, align 4
  store i8 0, ptr %i.dc, align 2
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.split.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.035.i, i64 12
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.128.i = phi ptr [ %i.eg, %bb.am ], [ %.02734.i, %bb.an ] ; 2 uses
  %.1.i = phi ptr [ %.035.i, %bb.am ], [ %i.ek, %bb.an ] ; 2 uses
  %i.el = icmp ult ptr %.1.i, %.128.i
  br i1 %i.el, label %.lr.ph.split.i, label %ucm_moveMappings.exit, !llvm.loop !13

ucm_moveMappings.exit:                            ; preds = %bb.ao, %bb.ac, %bb.x
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.en = load ptr, ptr %0, align 8
  %i.eo = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.ep = tail call signext i8 @ucm_checkBaseExt(ptr noundef nonnull %i.em, ptr noundef %i.en, ptr noundef %i.eo, ptr noundef %i.eo, i8 noundef signext 0)
  br label %._crit_edge.thread82

.thread85:                                        ; preds = %bb.a, %bb.w
  %i.eq = load ptr, ptr %0, align 8
  tail call void @ucm_sortTable(ptr noundef %i.eq)
  br label %._crit_edge.thread82

._crit_edge.thread82:                             ; preds = %.thread.thread, %._crit_edge, %.thread85, %ucm_moveMappings.exit
  %.047 = phi i8 [ %i.ep, %ucm_moveMappings.exit ], [ 1, %.thread85 ], [ 0, %._crit_edge ], [ 0, %.thread.thread ]
  ret i8 %.047
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 -1, 2) i32 @ucm_mappingType(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @ucm_countChars(ptr noundef %0, ptr noundef %3, i32 noundef %i.c) #15 ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %.thread19, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 4
  %i.h = icmp eq i8 %i.g, 1
  %i.i = icmp eq i32 %i.d, 1
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = load i8, ptr %i.j, align 2               ; 3 uses
  %i.l = icmp slt i8 %i.k, 4
  br i1 %i.l, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 132104
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %.thread19, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %i.k, label %bb.h [
    i8 2, label %bb.f
    i8 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.a, align 1
  %i.q = icmp eq i8 %i.p, 1
  br i1 %i.q, label %bb.j, label %.thread19

bb.g:                                             ; preds = %bb.e
  %i.r = load i8, ptr %3, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.j, label %.thread18

bb.h:                                             ; preds = %bb.e
  %i.t = icmp slt i8 %i.k, 2
  br i1 %i.t, label %.thread18, label %.thread19

.thread18:                                        ; preds = %bb.g, %bb.h
  %i.u = load i8, ptr %i.a, align 1
  %i.v = icmp sgt i8 %i.u, 1
  br i1 %i.v, label %bb.i, label %.thread19

bb.i:                                             ; preds = %.thread18
  %i.w = load i8, ptr %3, align 1
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.j, label %.thread19

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.f, %bb.c, %bb.b
  br label %.thread19

.thread19:                                        ; preds = %bb.f, %bb.d, %bb.h, %.thread18, %bb.i, %bb.a, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ -1, %bb.a ], [ 0, %bb.i ], [ 0, %.thread18 ], [ 0, %bb.h ], [ 0, %bb.d ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext i8 @ucm_parseBytes(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr %2, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.pre = load i8, ptr %i.b, align 1
  %.not.peel = icmp eq i8 %.pre, 92
  br i1 %.not.peel, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %.not19.peel = icmp eq i8 %i.d, 120
  br i1 %.not19.peel, label %bb.c, label %.loopexit31

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.f = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 16) #15
  %i.g = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.not20.peel = icmp eq ptr %i.g, %i.h
  br i1 %.not20.peel, label %.peel.next, label %.loopexit31

.peel.next:                                       ; preds = %bb.c
  %i.i = trunc i64 %i.f to i8
  store i8 %i.i, ptr %0, align 1
  %i.j = load i8, ptr %i.g, align 1
  %i.k = icmp eq i8 %i.j, 43
  %spec.select.idx43 = zext i1 %i.k to i64
  %spec.select44 = getelementptr inbounds nuw i8, ptr %i.g, i64 %spec.select.idx43 ; 3 uses
  %i.l = load i8, ptr %spec.select44, align 1
  %.not45 = icmp eq i8 %i.l, 92
  br i1 %.not45, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.peel.next, %bb.f
  %spec.select47 = phi ptr [ %spec.select, %bb.f ], [ %spec.select44, %.peel.next ] ; 3 uses
  %indvars.iv46 = phi i64 [ %indvars.iv.next, %bb.f ], [ 1, %.peel.next ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select47, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %.not19 = icmp eq i8 %i.n, 120
  br i1 %.not19, label %bb.d, label %.loopexit31

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select47, i64 2
  %i.p = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.o, ptr noundef nonnull %i.a, i32 noundef 16) #15
  %i.q = trunc i64 %i.p to i8
  %i.r = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select47, i64 4
  %.not20 = icmp eq ptr %i.r, %i.s
  br i1 %.not20, label %bb.e, label %.loopexit31

.loopexit31:                                      ; preds = %bb.d, %.lr.ph, %bb.c, %bb.b
  %i.t = load ptr, ptr @stderr, align 8
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.5, ptr noundef %1) #19 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %indvars.iv46, 31
  br i1 %i.v, label %.loopexit32, label %bb.f

.loopexit32:                                      ; preds = %bb.e
  %i.w = load ptr, ptr @stderr, align 8
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.6, ptr noundef %1) #19 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv46
  store i8 %i.q, ptr %i.y, align 1
  %i.z = load i8, ptr %i.r, align 1
  %i.aa = icmp eq i8 %i.z, 43
  %spec.select.idx = zext i1 %i.aa to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.r, i64 %spec.select.idx ; 3 uses
  %i.ab = load i8, ptr %spec.select, align 1
  %.not = icmp eq i8 %i.ab, 92
  br i1 %.not, label %.lr.ph, label %..loopexit_crit_edge, !llvm.loop !26

..loopexit_crit_edge:                             ; preds = %bb.f
  %i.ac = trunc nuw nsw i64 %indvars.iv.next to i8
  br label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %..loopexit_crit_edge, %bb.a
  %.1.lcssa = phi ptr [ %i.b, %bb.a ], [ %spec.select, %..loopexit_crit_edge ], [ %spec.select44, %.peel.next ]
  %.0.lcssa.wide = phi i8 [ 0, %bb.a ], [ %i.ac, %..loopexit_crit_edge ], [ 1, %.peel.next ]
  store ptr %.1.lcssa, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.loopexit32, %.loopexit31
  %.017 = phi i8 [ %.0.lcssa.wide, %.loopexit ], [ -1, %.loopexit31 ], [ -1, %.loopexit32 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i8 %.017
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @ucm_parseMappingLine(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %.pre = load i8, ptr %3, align 1
  %.not.peel = icmp eq i8 %.pre, 60
  br i1 %.not.peel, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.f = load i8, ptr %i.e, align 1
  %.not48.peel = icmp eq i8 %i.f, 85
  br i1 %.not48.peel, label %bb.c, label %.loopexit82

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.h = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, i32 noundef 16) #15
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %.loopexit82, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.j, align 1
  %.not49.peel = icmp eq i8 %i.l, 62
  br i1 %.not49.peel, label %bb.e, label %.loopexit82

bb.e:                                             ; preds = %bb.d
  %i.m = icmp ugt i32 %i.i, 1114111
  %i.n = and i32 %i.i, 2095104
  %i.o = icmp eq i32 %i.n, 55296
  %or.cond.peel = or i1 %i.m, %i.o
  br i1 %or.cond.peel, label %.loopexit83, label %.peel.next

.peel.next:                                       ; preds = %bb.e
  store i32 %i.i, ptr %1, align 4
  %storemerge107 = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %i.p = load i8, ptr %storemerge107, align 1
  %i.q = icmp eq i8 %i.p, 43
  %spec.select.idx108 = zext i1 %i.q to i64
  %spec.select109 = getelementptr inbounds nuw i8, ptr %storemerge107, i64 %spec.select.idx108 ; 3 uses
  %i.r = load i8, ptr %spec.select109, align 1
  %.not110 = icmp eq i8 %i.r, 60
  br i1 %.not110, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.peel.next, %bb.j
  %spec.select112 = phi ptr [ %spec.select, %bb.j ], [ %spec.select109, %.peel.next ] ; 2 uses
  %indvars.iv111 = phi i64 [ %indvars.iv.next, %bb.j ], [ 1, %.peel.next ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %spec.select112, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %.not48 = icmp eq i8 %i.t, 85
  br i1 %.not48, label %bb.f, label %.loopexit82

bb.f:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select112, i64 2 ; 2 uses
  %i.v = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, i32 noundef 16) #15
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.y = icmp eq ptr %i.x, %i.u
  br i1 %i.y, label %.loopexit82, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.x, align 1
  %.not49 = icmp eq i8 %i.z, 62
  br i1 %.not49, label %bb.h, label %.loopexit82

.loopexit82:                                      ; preds = %bb.g, %bb.f, %.lr.ph, %bb.d, %bb.c, %bb.b
  %i.aa = load ptr, ptr @stderr, align 8
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #19 ; 0 uses
  br label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp ugt i32 %i.w, 1114111
  %i.ad = and i32 %i.w, 2095104
  %i.ae = icmp eq i32 %i.ad, 55296
  %or.cond = or i1 %i.ac, %i.ae
  br i1 %or.cond, label %.loopexit83, label %bb.i

.loopexit83:                                      ; preds = %bb.h, %bb.e
  %i.af = load ptr, ptr @stderr, align 8
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #19 ; 0 uses
  br label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %indvars.iv111, 19
  br i1 %i.ah, label %.loopexit84, label %bb.j

.loopexit84:                                      ; preds = %bb.i
  %i.ai = load ptr, ptr @stderr, align 8
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #19 ; 0 uses
  br label %bb.x

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv111
  store i32 %i.w, ptr %i.ak, align 4
  %storemerge = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 2 uses
  %i.al = load i8, ptr %storemerge, align 1
  %i.am = icmp eq i8 %i.al, 43
  %spec.select.idx = zext i1 %i.am to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %storemerge, i64 %spec.select.idx ; 3 uses
  %i.an = load i8, ptr %spec.select, align 1
  %.not = icmp eq i8 %i.an, 60
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.j, %.peel.next
  %indvars.iv.lcssa = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %spec.select.lcssa = phi ptr [ %spec.select109, %.peel.next ], [ %spec.select, %bb.j ]
  %i.ao = trunc nuw nsw i64 %indvars.iv.lcssa to i8
  %cond = icmp eq i64 %indvars.iv.lcssa, 1
  br i1 %cond, label %bb.k, label %bb.l

.thread:                                          ; preds = %bb.a
  %i.ap = load ptr, ptr @stderr, align 8
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #19 ; 0 uses
  br label %bb.x

bb.k:                                             ; preds = %._crit_edge
  %i.ar = load i32, ptr %1, align 4
  store i32 %i.ar, ptr %0, align 4
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge
  %i.as = trunc nsw i64 %indvars.iv.lcssa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4
  %i.at = call ptr @u_strFromUTF32_78(ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c, ptr noundef nonnull %1, i32 noundef %i.as, ptr noundef nonnull %i.d) #15 ; 0 uses
  %i.au = load i32, ptr %i.d, align 4             ; 2 uses
  %i.av = icmp slt i32 %i.au, 1
  %i.aw = icmp eq i32 %i.au, 15
  %or.cond.not53 = or i1 %i.av, %i.aw
  %i.ax = load i32, ptr %i.c, align 4
  %i.ay = icmp slt i32 %i.ax, 20
  %or.cond3.not = select i1 %or.cond.not53, i1 %i.ay, i1 false
  br i1 %or.cond3.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = load ptr, ptr @stderr, align 8
  %i.ba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.11, ptr noundef nonnull %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.x

.critedge:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.k
  %i.bb = call ptr @u_skipWhitespace(ptr noundef nonnull %spec.select.lcssa) #15
  store ptr %i.bb, ptr %i.a, align 8
  %i.bc = call signext i8 @ucm_parseBytes(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %i.a) ; 5 uses
  %i.bd = icmp slt i8 %i.bc, 0
  br i1 %i.bd, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = icmp eq i8 %i.bc, 0
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr @stderr, align 8
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.12, ptr noundef nonnull %3) #19 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.bh = icmp samesign ult i8 %i.bc, 5
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = zext nneg i8 %i.bc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bi, ptr align 1 %2, i64 %i.bj, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.promoted = load ptr, ptr %i.a, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.s
  %i.bk = phi ptr [ %i.bs, %bb.w ], [ %.promoted, %bb.s ] ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 1
  switch i8 %i.bl, label %bb.w [
    i8 0, label %.loopexit
    i8 124, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = add i8 %i.bn, -48                       ; 2 uses
  %i.bp = icmp ugt i8 %i.bo, 4
  br i1 %i.bp, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  %i.bq = load ptr, ptr @stderr, align 8
  %i.br = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.13, ptr noundef nonnull %3) #19 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  br label %bb.t, !llvm.loop !29

.loopexit:                                        ; preds = %bb.t, %bb.u
  %.040 = phi i8 [ %i.bo, %bb.u ], [ -1, %bb.t ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ao, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bc, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.040, ptr %i.bv, align 2
  br label %bb.x

bb.x:                                             ; preds = %bb.m, %bb.n, %.loopexit, %bb.v, %bb.p, %.thread, %.loopexit84, %.loopexit83, %.loopexit82
  %.1 = phi i8 [ 0, %.thread ], [ 0, %.loopexit84 ], [ 0, %bb.p ], [ 1, %.loopexit ], [ 0, %bb.v ], [ 0, %bb.m ], [ 0, %.loopexit82 ], [ 0, %.loopexit83 ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i8 %.1
}

declare ptr @u_strFromUTF32_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @u_skipWhitespace(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local nonnull ptr @ucm_openTable() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(64) ptr @uprv_malloc_78(i64 noundef 64) #16 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.14, i64 41, i64 1, ptr %i.c) #17 ; 0 uses
  tail call void @exit(i32 noundef 7) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucm_closeTable(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @uprv_free_78(ptr noundef %i.c) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @uprv_free_78(ptr noundef %i.e) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @uprv_free_78(ptr noundef %i.g) #15
  tail call void @uprv_free_78(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ucm_resetTable(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i8 0, ptr %i.f, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @uprv_realloc_78(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define dso_local nonnull ptr @ucm_open() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(132192) ptr @uprv_malloc_78(i64 noundef 132192) #16 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.20, i64 40, i64 1, ptr %i.c) #17 ; 0 uses
  tail call void @exit(i32 noundef 7) #18
end_hunk_0
