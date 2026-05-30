inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0_@_TIFFFindOrRegisterField:bb.a
  %i.t = icmp slt i32 %1, %i.s                    ; 2 uses
  %i.u = add nuw i64 %i.o, 1
  %spec.select.i = select i1 %i.t, i64 %i.o, i64 %.01720.i.us.i ; 2 uses
  %spec.select47.i = select i1 %i.t, i64 %.01621.i.us.i, i64 %i.u ; 2 uses
  %i.v = icmp ult i64 %spec.select47.i, %spec.select.i
  br i1 %i.v, label %.lr.ph.i.us.i, label %TIFFFindField.exit.thread18

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.preheader.i, %bb.k
  %.01621.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01720.i.i = phi i64 [ %.118.i.i, %bb.k ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.w = add i64 %.01720.i.i, %.01621.i.i
  %i.x = lshr i64 %i.w, 1                         ; 3 uses
  %i.y = shl i64 %i.x, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %.not.i20.i = icmp eq i32 %1, %i.ab
  br i1 %.not.i20.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ac = sub nsw i32 %1, %i.ab
  br label %tagCompare.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38
  %i.af = sub nsw i32 %i.ae, %2
  br label %tagCompare.exit.i

tagCompare.exit.i:                                ; preds = %bb.h, %bb.g
  %.0.i21.i = phi i32 [ %i.ac, %bb.g ], [ %i.af, %bb.h ] ; 2 uses
  %i.ag = icmp slt i32 %.0.i21.i, 0
  br i1 %i.ag, label %bb.k, label %bb.i

bb.i:                                             ; preds = %tagCompare.exit.i
  %.not.i.i = icmp eq i32 %.0.i21.i, 0
  br i1 %.not.i.i, label %TIFFFindField.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = add nuw i64 %i.x, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %tagCompare.exit.i
  %.118.i.i = phi i64 [ %.01720.i.i, %bb.j ], [ %i.x, %tagCompare.exit.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.ah, %bb.j ], [ %.01621.i.i, %tagCompare.exit.i ] ; 2 uses
  %i.ai = icmp ult i64 %.1.i.i, %.118.i.i
  br i1 %i.ai, label %.lr.ph.i.i, label %TIFFFindField.exit.thread18

TIFFFindField.exit.thread18:                      ; preds = %bb.k, %tagCompare.exit.us.i, %bb.f
  store ptr null, ptr %i.a, align 8, !tbaa !36
  br label %TIFFFindField.exit.thread15

TIFFFindField.exit:                               ; preds = %bb.i, %.lr.ph.i.us.i
  %i.aj = phi ptr [ %i.r, %.lr.ph.i.us.i ], [ %i.aa, %bb.i ] ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !36
  br label %TIFFFindField.exit.thread

TIFFFindField.exit.thread15:                      ; preds = %bb.e, %TIFFFindField.exit.thread18
  %i.ak = tail call ptr @_TIFFCreateAnonField(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %TIFFFindField.exit.thread, label %bb.l

bb.l:                                             ; preds = %TIFFFindField.exit.thread15
  %i.am = tail call i32 @_TIFFMergeFields(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i32 noundef 1)
  %.not = icmp eq i32 %i.am, 0
  %spec.select = select i1 %.not, ptr null, ptr %i.ak
  br label %TIFFFindField.exit.thread

TIFFFindField.exit.thread:                        ; preds = %bb.c, %bb.d, %TIFFFindField.exit, %bb.l, %TIFFFindField.exit.thread15
  %.011 = phi ptr [ null, %TIFFFindField.exit.thread15 ], [ %spec.select, %bb.l ], [ %i.aj, %TIFFFindField.exit ], [ %i.b, %bb.d ], [ %i.b, %bb.c ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define ptr @_TIFFCreateAnonField(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 40) #11 ; 15 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_TIFFmemset(ptr noundef nonnull %i.a, i32 noundef 0, i64 noundef 40) #11
  store i32 %1, ptr %i.a, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 -3, ptr %i.c, align 4, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 -3, ptr %i.d, align 2, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %2, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %switch.tableidx = add i32 %2, -1               ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx, 18
  br i1 %i.h, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.TIFFMergeFieldInfo.4, i64 %i.i
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %switch.lookup
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.g, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i16 65, ptr %i.j, align 4, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 1, ptr %i.k, align 2, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 1, ptr %i.l, align 1, !tbaa !43
  %i.m = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 32) #11 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.m, ptr %i.n, align 8, !tbaa !29
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef %0, ptr noundef nonnull %i.a) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.p, align 8, !tbaa !46
  %i.q = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %1) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d
  %.0 = phi ptr [ %i.a, %bb.e ], [ null, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @_TIFFmallocExt(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @TIFFMergeFieldInfo(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = add i64 %i.b, 1
  %i.f = tail call ptr @_TIFFCheckRealloc(ptr noundef nonnull %0, ptr noundef %i.d, i64 noundef %i.e, i64 noundef 24, ptr noundef nonnull @TIFFMergeFieldInfo.reason) #11 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !48
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef 1, i64 noundef 24, ptr noundef nonnull @TIFFMergeFieldInfo.reason) #11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store ptr %i.g, ptr %i.h, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.not100 = icmp eq ptr %i.i, null
  br i1 %.not100, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFMergeFieldInfo.module, ptr noundef nonnull @.str.2) #11
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.k = load i64, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.a, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.k ; 3 uses
  store i32 3, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %2, ptr %i.n, align 4, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %2, ptr %i.o, align 8, !tbaa !35
  %i.p = zext i32 %2 to i64                       ; 2 uses
  %i.q = tail call ptr @_TIFFCheckMalloc(ptr noundef nonnull %0, i64 noundef %i.p, i64 noundef 40, ptr noundef nonnull @TIFFMergeFieldInfo.reason) #11 ; 4 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.q, ptr %i.t, align 8, !tbaa !33
  %.not101 = icmp eq ptr %i.q, null
  br i1 %.not101, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.not110 = icmp eq i32 %2, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFMergeFieldInfo.module, ptr noundef nonnull @.str.2) #11
  br label %bb.t

.lr.ph:                                           ; preds = %.preheader, %_TIFFSetGetType.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_TIFFSetGetType.exit ], [ 0, %.preheader ] ; 2 uses
  %.093108 = phi ptr [ %i.bn, %_TIFFSetGetType.exit ], [ %i.q, %.preheader ] ; 11 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 8 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51
  store i32 %i.v, ptr %.093108, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %3 = load <2 x i16>, ptr %i.w, align 4, !tbaa !53 ; 3 uses
  %4 = extractelement <2 x i16> %3, i64 1         ; 8 uses
  %5 = extractelement <2 x i16> %3, i64 0         ; 4 uses
  %6 = icmp slt i16 %5, -3
  %i.x = icmp slt i16 %4, -3
  %or.cond156 = select i1 %6, i1 true, i1 %i.x
  br i1 %or.cond156, label %split, label %bb.h

split:                                            ; preds = %.lr.ph
  %i.y = sext i16 %5 to i32
  %i.z = sext i16 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFMergeFieldInfo.module, ptr noundef nonnull @.str.12, i32 noundef %i.y, i32 noundef %i.z) #11
  br label %bb.t

bb.h:                                             ; preds = %.lr.ph
  %i.aa = icmp eq i16 %5, 0
  %i.ab = icmp eq i16 %4, 0
  %or.cond = or i1 %i.aa, %i.ab
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !54
  %.not103 = icmp eq i16 %i.ad, 0
  br i1 %.not103, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = sext i16 %5 to i32
  %i.af = sext i16 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFMergeFieldInfo.module, ptr noundef nonnull @.str.13, i32 noundef %i.ae, i32 noundef %i.af) #11
  br label %bb.t

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.093108, i64 4
  store <2 x i16> %3, ptr %i.ag, align 4, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !55 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.093108, i64 8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %.093108, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  %i.am = load i8, ptr %i.al, align 1, !tbaa !56  ; 3 uses
  %i.an = icmp eq i32 %i.ai, 2
  %i.ao = icmp eq i16 %4, -1                      ; 2 uses
  %or.cond.i = and i1 %i.ao, %i.an
  %i.ap = icmp eq i8 %i.am, 0                     ; 3 uses
  %or.cond5.i = and i1 %or.cond.i, %i.ap
  br i1 %or.cond5.i, label %_TIFFSetGetType.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i16 %4, 1
  %or.cond8.i = and i1 %i.aq, %i.ap
  br i1 %or.cond8.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %switch.tableidx = add i32 %i.ai, -1            ; 2 uses
  %i.ar = icmp ult i32 %switch.tableidx, 18
  br i1 %i.ar, label %_TIFFSetGetType.exit.sink.split, label %_TIFFSetGetType.exit

bb.n:                                             ; preds = %bb.l
  %i.as = icmp sgt i16 %4, 0
  %or.cond11.i = and i1 %i.as, %i.ap
  br i1 %or.cond11.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %switch.tableidx144 = add i32 %i.ai, -1         ; 2 uses
  %i.at = icmp ult i32 %switch.tableidx144, 18
  br i1 %i.at, label %_TIFFSetGetType.exit.sink.split, label %_TIFFSetGetType.exit

bb.p:                                             ; preds = %bb.n
  %i.au = icmp eq i8 %i.am, 1                     ; 2 uses
  %or.cond14.i = and i1 %i.ao, %i.au
  br i1 %or.cond14.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %switch.tableidx148 = add i32 %i.ai, -1         ; 2 uses
  %i.av = icmp ult i32 %switch.tableidx148, 18
  br i1 %i.av, label %_TIFFSetGetType.exit.sink.split, label %_TIFFSetGetType.exit

bb.r:                                             ; preds = %bb.p
  %i.aw = icmp eq i16 %4, -3
  %switch.tableidx152 = add i32 %i.ai, -1         ; 2 uses
  %i.ax = icmp ult i32 %switch.tableidx152, 18
  %i.ay = and i1 %i.aw, %i.ax
  %or.cond157 = and i1 %i.ay, %i.au
  br i1 %or.cond157, label %_TIFFSetGetType.exit.sink.split, label %_TIFFSetGetType.exit

_TIFFSetGetType.exit.sink.split:                  ; preds = %bb.r, %bb.q, %bb.o, %bb.m
  %switch.tableidx152.sink = phi i32 [ %switch.tableidx148, %bb.q ], [ %switch.tableidx144, %bb.o ], [ %switch.tableidx, %bb.m ], [ %switch.tableidx152, %bb.r ]
  %switch.table.TIFFMergeFieldInfo.4.sink = phi ptr [ @switch.table.TIFFMergeFieldInfo.3, %bb.q ], [ @switch.table.TIFFMergeFieldInfo.2, %bb.o ], [ @switch.table.TIFFMergeFieldInfo, %bb.m ], [ @switch.table.TIFFMergeFieldInfo.4, %bb.r ]
  %i.az = zext nneg i32 %switch.tableidx152.sink to i64
  %switch.gep154 = getelementptr inbounds nuw [4 x i8], ptr %switch.table.TIFFMergeFieldInfo.4.sink, i64 %i.az
  %switch.load155 = load i32, ptr %switch.gep154, align 4
  br label %_TIFFSetGetType.exit

_TIFFSetGetType.exit:                             ; preds = %_TIFFSetGetType.exit.sink.split, %bb.m, %bb.o, %bb.q, %bb.k, %bb.r
  %.0.i = phi i32 [ %switch.load155, %_TIFFSetGetType.exit.sink.split ], [ 0, %bb.r ], [ 1, %bb.k ], [ 0, %bb.q ], [ 0, %bb.o ], [ 0, %bb.m ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.093108, i64 16
  store i32 %.0.i, ptr %i.ba, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %.093108, i64 20
  store i16 %i.bc, ptr %i.bd, align 4, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %.093108, i64 22
  store i8 %i.bf, ptr %i.bg, align 2, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %.093108, i64 23
  store i8 %i.am, ptr %i.bh, align 1, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  %spec.select = select i1 %i.bk, ptr @.str.14, ptr %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.093108, i64 24
  store ptr %spec.select, ptr %i.bl, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %.093108, i64 32
  store ptr null, ptr %i.bm, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %.093108, i64 40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_TIFFSetGetType.exit, %.preheader
  %i.bo = tail call i32 @_TIFFMergeFields(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i32 noundef %2)
  %.not102 = icmp eq i32 %i.bo, 0
  br i1 %.not102, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFMergeFieldInfo.module, ptr noundef nonnull @.str.1) #11
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s, %bb.j, %split, %bb.g, %bb.e
  %.092 = phi i32 [ -1, %split ], [ -1, %bb.j ], [ -1, %bb.e ], [ -1, %bb.s ], [ -1, %bb.g ], [ 0, %._crit_edge ]
  ret i32 %.092
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_TIFFCheckFieldIsValidForCodec(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  switch i32 %1, label %bb.p [
    i32 317, label %bb.b
    i32 347, label %bb.b
    i32 513, label %bb.b
    i32 514, label %bb.b
    i32 519, label %bb.b
    i32 520, label %bb.b
    i32 521, label %bb.b
    i32 512, label %bb.b
    i32 515, label %bb.b
    i32 326, label %bb.b
    i32 327, label %bb.b
    i32 328, label %bb.b
    i32 292, label %bb.b
    i32 293, label %bb.b
    i32 50674, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !59
  %i.c = tail call i32 @TIFFIsCODECConfigured(i16 noundef zeroext %i.b) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  switch i16 %i.d, label %bb.o [
    i16 5, label %bb.d
    i16 -30649, label %bb.n
    i16 -15536, label %bb.m
    i16 -30611, label %bb.l
    i16 7, label %bb.e
    i16 6, label %bb.f
    i16 2, label %bb.g
    i16 -32765, label %bb.g
    i16 3, label %bb.g
    i16 4, label %bb.g
    i16 -32627, label %bb.k
    i16 -32590, label %bb.j
    i16 8, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq i32 %1, 317
  br i1 %i.e, label %bb.p, label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %1, 347
  br i1 %i.f, label %bb.p, label %bb.o

bb.f:                                             ; preds = %bb.c
  %switch.tableidx = add i32 %1, -512             ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 10
  br i1 %i.g, label %switch.lookup, label %bb.o

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  switch i32 %1, label %bb.o [
    i32 326, label %bb.p
    i32 327, label %bb.p
    i32 328, label %bb.p
    i32 292, label %bb.h
    i32 293, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i16 %i.d, 3
  br i1 %i.h, label %bb.p, label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.i = icmp eq i16 %i.d, 4
  br i1 %i.i, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.j = icmp eq i32 %1, 317
  br i1 %i.j, label %bb.p, label %bb.o

bb.k:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %1, 317
  br i1 %i.k, label %bb.p, label %bb.o

bb.l:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %1, 317
  br i1 %i.l, label %bb.p, label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %1, 317
  br i1 %i.m, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %1, 50674
  br i1 %i.n, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.g, %bb.h, %bb.i, %bb.e, %bb.d, %bb.c
  br label %bb.p

switch.lookup:                                    ; preds = %bb.f
  %i.o = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._TIFFCheckFieldIsValidForCodec, i64 %i.o
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.g, %bb.g, %bb.e, %bb.d, %bb.b, %bb.a, %bb.o
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %bb.o ], [ 0, %bb.b ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.d ], [ 1, %bb.e ], [ %switch.load, %switch.lookup ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.n ], [ 1, %bb.g ], [ 1, %bb.g ]
  ret i32 %.0
}

declare i32 @TIFFIsCODECConfigured(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !21, i64 1232}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!8, !11, i64 1240}
!28 = !{!23, !23, i64 0}
!29 = !{!30, !9, i64 24}
!30 = !{!"_TIFFField", !4, i64 0, !14, i64 4, !14, i64 6, !4, i64 8, !4, i64 12, !4, i64 16, !14, i64 20, !5, i64 22, !5, i64 23, !9, i64 24, !26, i64 32}
!31 = !{!30, !14, i64 20}
!32 = !{!30, !4, i64 12}
!33 = !{!34, !23, i64 16}
!34 = !{!"_TIFFFieldArray", !4, i64 0, !4, i64 4, !4, i64 8, !23, i64 16}
!35 = !{!34, !4, i64 8}
!36 = !{!8, !23, i64 1248}
!37 = !{!30, !4, i64 0}
!38 = !{!30, !4, i64 8}
!39 = !{!8, !9, i64 0}
!40 = !{!30, !14, i64 4}
!41 = !{!30, !14, i64 6}
!42 = !{!30, !5, i64 22}
!43 = !{!30, !5, i64 23}
!44 = !{!30, !4, i64 16}
!45 = !{!11, !11, i64 0}
!46 = !{!30, !26, i64 32}
!47 = !{!8, !11, i64 1296}
!48 = !{!8, !26, i64 1288}
!49 = !{!34, !4, i64 0}
!50 = !{!34, !4, i64 4}
!51 = !{!52, !4, i64 0}
!52 = !{!"", !4, i64 0, !14, i64 4, !14, i64 6, !4, i64 8, !14, i64 12, !5, i64 14, !5, i64 15, !9, i64 16}
!53 = !{!14, !14, i64 0}
!54 = !{!52, !14, i64 12}
!55 = !{!52, !4, i64 8}
!56 = !{!52, !5, i64 15}
!57 = !{!52, !5, i64 14}
!58 = !{!52, !9, i64 16}
!59 = !{!8, !14, i64 120}
end_hunk_0
