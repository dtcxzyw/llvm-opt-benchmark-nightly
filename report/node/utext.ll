inline.NumInlined: 132
inline.NumDeleted: 35
begin_hunk_0_@utext_openUChars_78:bb.a
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq i64 %2, 0
  %or.cond = and i1 %i.c, %i.d
  %spec.store.select = select i1 %or.cond, ptr @_ZL13gEmptyUString, ptr %1 ; 3 uses
  %i.e = icmp eq ptr %spec.store.select, null
  %i.f = add i64 %2, -2147483648
  %i.g = icmp ult i64 %i.f, -2147483649
  %or.cond5 = or i1 %i.g, %i.e
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call ptr @utext_setup_78(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) ; 12 uses
  %i.i = load i32, ptr %3, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @_ZL10ucstrFuncs, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %spec.store.select, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = icmp eq i64 %2, -1
  %spec.select = select i1 %i.n, i32 6, i32 4
  store i32 %spec.select, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i64 %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %spec.store.select, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 0, ptr %i.q, align 8
  %i.r = tail call i64 @llvm.smax.i64(i64 %2, i64 0) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.r, ptr %i.s, align 8
  %i.t = trunc nuw nsw i64 %i.r to i32            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.t, ptr %i.w, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @utext_openCharacterIterator_78(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 16, ptr %2, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call ptr @utext_setup_78(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %2) ; 17 uses
  %i.g = load i32, ptr %2, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @_ZL13charIterFuncs, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i32 -1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  store i32 -1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.q, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 -1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 0, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 1, ptr %i.ab, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.f, %bb.e ], [ %i.f, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL13utf8TextCloneP5UTextPKS_aP10UErrorCode(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL16shallowTextCloneP5UTextPKS_P10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %3) ; 3 uses
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef %1) #13, !inline_history !14
  %i.i = shl i64 %i.h, 32
  %sext = add i64 %i.i, 4294967296
  %i.j = ashr exact i64 %sext, 32                 ; 2 uses
  %i.k = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.j) #14 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %3, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.n, i64 %i.j, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.k, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = or i32 %i.q, 32
  store i32 %i.r, ptr %i.p, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i64 -2147483648, 2147483648) i64 @_ZL14utf8TextLengthP5UText(ptr nofree noundef captures(none) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i)
  %i.j = add i64 %strlen, %i.h
  %storemerge14 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 2147483647)
  %storemerge = trunc i64 %storemerge14 to i32    ; 2 uses
  store i32 %storemerge, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, -3
  store i32 %i.m, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i32 [ %storemerge, %bb.b ], [ %i.b, %bb.a ]
  %i.o = sext i32 %i.n to i64
  ret i64 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL14utf8TextAccessP5UTextla(ptr nofree noundef %0, i64 noundef %1, i8 noundef signext %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8              ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 7 uses
  %i.f = icmp slt i64 %1, 0
  %spec.select487 = tail call i64 @llvm.umin.i64(i64 %1, i64 2147483647)
  %spec.select = trunc nuw nsw i64 %spec.select487 to i32
  %.0390 = select i1 %i.f, i32 0, i32 %spec.select ; 8 uses
  %i.g = icmp sgt i32 %.0390, %i.e
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.e, -1
  br i1 %i.h, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4              ; 4 uses
  %.not = icmp slt i32 %.0390, %i.j
  br i1 %.not, label %bb.f, label %.preheader489

.preheader489:                                    ; preds = %bb.c
  %i.k = icmp slt i32 %i.j, %.0390
  br i1 %i.k, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader489
  %i.l = sext i32 %i.j to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv
  %i.n = load i8, ptr %i.m, align 1
  %.not443 = icmp eq i8 %i.n, 0
  br i1 %.not443, label %.critedge.loopexit.split.loop.exit557, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.o = trunc i64 %indvars.iv.next to i32        ; 2 uses
  store i32 %i.o, ptr %i.i, align 4
  %exitcond.not = icmp eq i32 %.0390, %i.o
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !15

.critedge.loopexit.split.loop.exit557:            ; preds = %.lr.ph
  %i.p = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %.critedge.loopexit.split.loop.exit557, %.preheader489
  %.lcssa = phi i32 [ %i.j, %.preheader489 ], [ %i.p, %.critedge.loopexit.split.loop.exit557 ], [ %.0390, %bb.d ] ; 4 uses
  %i.q = sext i32 %.lcssa to i64
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  store i32 %.lcssa, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, -3
  store i32 %i.w, ptr %i.u, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %.critedge, %bb.e, %bb.c, %bb.a
  %.1391 = phi i32 [ %.0390, %bb.a ], [ %.lcssa, %bb.e ], [ %.0390, %.critedge ], [ %.0390, %bb.c ], [ %i.e, %bb.b ] ; 28 uses
  %i.x = phi i32 [ %i.e, %bb.a ], [ %.lcssa, %bb.e ], [ %i.e, %.critedge ], [ %i.e, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  %.not444 = icmp eq i8 %2, 0
  %i.y = sext i32 %.1391 to i64                   ; 9 uses
  br i1 %.not444, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.y                 ; 2 uses
  br i1 %i.ab, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %.1391, %i.x
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ae, ptr %i.af, align 8
  br label %bb.bx

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8            ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %.not450 = icmp slt i32 %.1391, %i.ai
  br i1 %.not450, label %.thread550.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp slt i32 %.1391, %i.ak
  br i1 %i.al, label %bb.ac, label %.thread.thread546

.thread.thread546:                                ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.l

.thread:                                          ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 4 uses
  %.pre510 = load i32, ptr %.pre, align 4
  %i.an = icmp slt i32 %.1391, %.pre510
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.an, label %.thread548, label %bb.l

bb.l:                                             ; preds = %.thread.thread546, %.thread
  %i.ap = phi ptr [ %i.am, %.thread.thread546 ], [ %i.ao, %.thread ]
  %i.aq = phi ptr [ %i.ah, %.thread.thread546 ], [ %.pre, %.thread ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp slt i32 %.1391, %i.as
  br i1 %i.at, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = icmp eq i32 %.1391, %i.x
  br i1 %i.au, label %bb.n, label %bb.p

.thread550.a:                                     ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.p

.thread548:                                       ; preds = %.thread
  %i.aw = icmp eq i32 %.1391, %i.x
  br i1 %i.aw, label %.thread549, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.ab, label %bb.o, label %.thread549

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ay, ptr %i.az, align 8
  br label %bb.bx

.thread549:                                       ; preds = %.thread548, %bb.n
  %i.ba = phi ptr [ %i.aq, %bb.n ], [ %.pre, %.thread548 ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = icmp eq i32 %.1391, %i.bc
  br i1 %i.bd, label %bb.ad, label %bb.ag

bb.p:                                             ; preds = %.thread550.a, %.thread548, %bb.m
  %i.be = phi ptr [ %.pre, %.thread548 ], [ %i.aq, %bb.m ], [ %i.ah, %.thread550.a ]
  %i.bf = phi ptr [ %i.ao, %.thread548 ], [ %i.ap, %bb.m ], [ %i.av, %.thread550.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = icmp sle i64 %i.bh, %i.y
  %.not452 = icmp sgt i64 %i.aa, %i.y
  %or.cond486 = and i1 %.not452, %i.bi
  br i1 %or.cond486, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = sub nsw i32 %.1391, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 132
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = sub nsw i32 %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bv, ptr %i.bw, align 8
  br label %bb.bx

bb.r:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %i.bz = icmp eq i64 %i.by, %i.y
  br i1 %i.bz, label %bb.s, label %..thread465_crit_edge

..thread465_crit_edge:                            ; preds = %bb.r
  %.phi.trans.insert513 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre514 = load ptr, ptr %.phi.trans.insert513, align 8 ; 2 uses
  %.pre515 = load i32, ptr %.pre514, align 4
  br label %.thread465

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp eq i32 %.1391, 0
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.cb, align 8
  br label %bb.bx

bb.u:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
begin_hunk_1_@_ZL14utf8TextAccessP5UTextla:bb.a
  %i.iv = icmp ult i8 %i.iu, 64
  br i1 %i.iv, label %bb.ay, label %.thread474

bb.ay:                                            ; preds = %bb.at, %bb.ax
  %.1408 = phi i32 [ %i.hi, %bb.at ], [ %i.in, %bb.ax ]
  %.0399 = phi i32 [ %i.hn, %bb.at ], [ %i.iq, %bb.ax ]
  %.0393 = phi i8 [ %i.hz, %bb.at ], [ %i.iu, %bb.ax ]
  %i.iw = shl nuw nsw i32 %.0399, 6
  %i.ix = zext nneg i8 %.0393 to i32
  %i.iy = or disjoint i32 %i.iw, %i.ix
  %i.iz = add nsw i32 %.1408, 1                   ; 2 uses
  %.not457 = icmp eq i32 %i.iz, %spec.select462
  br i1 %.not457, label %.thread474, label %bb.bb

bb.az:                                            ; preds = %bb.aq
  %i.ja = icmp samesign ugt i8 %i.hh, -63
  br i1 %i.ja, label %bb.ba, label %.thread474

bb.ba:                                            ; preds = %bb.az
  %i.jb = and i32 %i.hj, 31
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ay
  %.2409 = phi i32 [ %i.iz, %bb.ay ], [ %i.hi, %bb.ba ] ; 3 uses
  %.1400 = phi i32 [ %i.iy, %bb.ay ], [ %i.jb, %bb.ba ]
  %i.jc = sext i32 %.2409 to i64
  %i.jd = getelementptr inbounds i8, ptr %i.c, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = xor i8 %i.je, -128                      ; 2 uses
  %i.jg = icmp ult i8 %i.jf, 64
  br i1 %i.jg, label %bb.bc, label %.thread474

bb.bc:                                            ; preds = %bb.bb
  %i.jh = zext nneg i8 %i.jf to i32
  %i.ji = shl nuw nsw i32 %.1400, 6
  %i.jj = or disjoint i32 %i.ji, %i.jh
  %i.jk = add nsw i32 %.2409, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ao
  %.5412 = phi i32 [ %i.hi, %bb.ao ], [ %i.jk, %bb.bc ] ; 3 uses
  %.3402 = phi i32 [ %i.hj, %bb.ao ], [ %i.jj, %bb.bc ] ; 5 uses
  %i.jl = icmp eq i32 %.3402, 0
  %or.cond3 = and i1 %i.gm, %i.jl
  br i1 %or.cond3, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jm = icmp samesign ult i32 %.3402, 65536
  br i1 %i.jm, label %.thread474, label %bb.bf

.thread474:                                       ; preds = %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.ap, %bb.be
  %.5412471480 = phi i32 [ %.5412, %bb.be ], [ %spec.select462, %bb.ap ], [ %i.hi, %bb.az ], [ %i.hi, %bb.au ], [ %i.hi, %bb.av ], [ %spec.select462, %bb.aw ], [ %i.in, %bb.ax ], [ %i.hi, %bb.as ], [ %spec.select462, %bb.ay ], [ %.2409, %bb.bb ]
  %.3402473478 = phi i32 [ %.3402, %bb.be ], [ 65533, %bb.ap ], [ 65533, %bb.az ], [ 65533, %bb.au ], [ 65533, %bb.av ], [ 65533, %bb.aw ], [ 65533, %bb.ax ], [ 65533, %bb.as ], [ 65533, %bb.ay ], [ 65533, %bb.bb ] ; 2 uses
  %i.jn = trunc nuw i32 %.3402473478 to i16
  %i.jo = add nsw i32 %.0413, 1
  %i.jp = sext i32 %.0413 to i64                  ; 2 uses
  %i.jq = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.jp
  store i16 %i.jn, ptr %i.jq, align 2
  %i.jr = icmp eq i32 %.3402473478, 0
  br label %.preheader

bb.bf:                                            ; preds = %bb.be
  %i.js = lshr i32 %.3402, 10
  %i.jt = trunc nuw nsw i32 %i.js to i16
  %i.ju = add nuw nsw i16 %i.jt, -10304
  %i.jv = sext i32 %.0413 to i64                  ; 2 uses
  %i.jw = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %i.jv ; 2 uses
  store i16 %i.ju, ptr %i.jw, align 2
  %i.jx = trunc i32 %.3402 to i16
  %i.jy = and i16 %i.jx, 1023
  %i.jz = or disjoint i16 %i.jy, -9216
  %i.ka = add nsw i32 %.0413, 2
  %i.kb = getelementptr i8, ptr %i.jw, i64 2
  store i16 %i.jz, ptr %i.kb, align 2
  br label %.preheader

.preheader:                                       ; preds = %bb.bf, %.thread474
  %.pre-phi521 = phi i64 [ %i.jv, %bb.bf ], [ %i.jp, %.thread474 ]
  %.5412471479 = phi i32 [ %.5412, %bb.bf ], [ %.5412471480, %.thread474 ] ; 2 uses
  %.3402473477 = phi i1 [ false, %bb.bf ], [ %i.jr, %.thread474 ]
  %.1414 = phi i32 [ %i.ka, %bb.bf ], [ %i.jo, %.thread474 ] ; 2 uses
  %i.kc = sub nsw i32 %.0407, %i.gj
  %i.kd = trunc i32 %i.kc to i8
  %scevgep497 = getelementptr i8, ptr %i.go, i64 %.pre-phi521
  %i.ke = xor i32 %.0413, -1
  %i.kf = add i32 %.1414, %i.ke
  %i.kg = zext i32 %i.kf to i64
  %i.kh = add nuw nsw i64 %i.kg, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep497, i8 %i.kd, i64 %i.kh, i1 false)
  %i.ki = trunc i32 %.0413 to i8
  %scevgep502 = getelementptr i8, ptr %scevgep501, i64 %i.gs
  %smax503 = tail call i32 @llvm.smax.i32(i32 %.5412471479, i32 %i.hi)
  %i.kj = xor i32 %.0407, -1
  %i.kk = add i32 %smax503, %i.kj
  %i.kl = zext i32 %i.kk to i64
  %i.km = add nuw nsw i64 %i.kl, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep502, i8 %i.ki, i64 %i.km, i1 false)
  br label %.thread481

bb.bg:                                            ; preds = %bb.bd
  %i.kn = add nsw i32 %.5412, -1
  br label %.loopexit488

.thread481:                                       ; preds = %.preheader, %bb.al
  %.3416 = phi i32 [ %i.hf, %bb.al ], [ %.1414, %.preheader ] ; 3 uses
  %.7 = phi i32 [ %i.he, %bb.al ], [ %.5412471479, %.preheader ] ; 3 uses
  %.2405 = phi i8 [ %.0403, %bb.al ], [ 1, %.preheader ] ; 2 uses
  %.4 = phi i1 [ false, %bb.al ], [ %.3402473477, %.preheader ]
  %i.ko = icmp slt i32 %.7, %spec.select462
  %i.kp = icmp slt i32 %.3416, 32
  %or.cond7 = select i1 %i.ko, i1 %i.kp, i1 false
  br i1 %or.cond7, label %bb.ak, label %.loopexit488.loopexit, !llvm.loop !16

.loopexit488.loopexit:                            ; preds = %.thread481
  %i.kq = icmp eq i8 %.2405, 0
  br label %.loopexit488

.loopexit488:                                     ; preds = %.loopexit488.loopexit, %bb.bg
  %.4417 = phi i32 [ %.0413, %bb.bg ], [ %.3416, %.loopexit488.loopexit ] ; 4 uses
  %.8 = phi i32 [ %i.kn, %bb.bg ], [ %.7, %.loopexit488.loopexit ] ; 5 uses
  %.3406 = phi i1 [ false, %bb.bg ], [ %i.kq, %.loopexit488.loopexit ]
  %.5 = phi i1 [ true, %bb.bg ], [ %.4, %.loopexit488.loopexit ]
  %i.kr = sub nsw i32 %.8, %i.gj                  ; 2 uses
  %i.ks = trunc i32 %i.kr to i8
  %i.kt = sext i32 %.4417 to i64
  %i.ku = getelementptr inbounds i8, ptr %i.go, i64 %i.kt
  store i8 %i.ks, ptr %i.ku, align 1
  %i.kv = trunc i32 %.4417 to i8
  %i.kw = sext i32 %i.kr to i64
  %i.kx = getelementptr inbounds i8, ptr %i.gp, i64 %i.kw
  store i8 %i.kv, ptr %i.kx, align 1
  store i32 %i.gj, ptr %i.gi, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  store i32 %.8, ptr %i.ky, align 4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 0, ptr %i.kz, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.gi, i64 12 ; 2 uses
  store i32 %.4417, ptr %i.la, align 4
  br i1 %.3406, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.loopexit488
  store i32 %.4417, ptr %i.gq, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.loopexit488
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i32 %i.gj, ptr %i.lb, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.gn, ptr %i.lc, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ld, align 8
  %i.le = load i32, ptr %i.la, align 4
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.le, ptr %i.lf, align 4
  %i.lg = load i32, ptr %i.gi, align 4
  %i.lh = sext i32 %i.lg to i64
  store i64 %i.lh, ptr %i.bg, align 8
  %i.li = load i32, ptr %i.ky, align 4
  %i.lj = sext i32 %i.li to i64
  store i64 %i.lj, ptr %i.z, align 8
  %i.lk = load i32, ptr %i.gq, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.lk, ptr %i.ll, align 4
  br i1 %i.gm, label %bb.bj, label %bb.bx

bb.bj:                                            ; preds = %bb.bi
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = icmp sgt i32 %.8, %i.ln
  br i1 %i.lo, label %bb.bk, label %bb.bx

bb.bk:                                            ; preds = %bb.bj
  store i32 %.8, ptr %i.lm, align 4
  br i1 %.5, label %bb.bl, label %bb.bx

bb.bl:                                            ; preds = %bb.bk
  store i32 %.8, ptr %i.d, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 8
  %i.lr = and i32 %i.lq, -3
  store i32 %i.lr, ptr %i.lp, align 8
  br label %bb.bx

bb.bm:                                            ; preds = %bb.z, %bb.aa
  %.not448 = icmp eq i32 %.1391, %i.x
  br i1 %.not448, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ls = getelementptr inbounds i8, ptr %i.c, i64 %i.y
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = icmp slt i8 %i.lt, -64
  br i1 %i.lu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lv = tail call i32 @utf8_back1SafeBody_78(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %.1391) #13
  %.pre516 = load ptr, ptr %i.ck, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bm
  %i.lw = phi ptr [ %.pre516, %bb.bo ], [ %i.cj, %bb.bn ], [ %i.cj, %bb.bm ] ; 13 uses
  %.3 = phi i32 [ %i.lv, %bb.bo ], [ %.1391, %bb.bn ], [ %.1391, %bb.bm ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8
  store ptr %i.ly, ptr %i.ck, align 8
  store ptr %i.lw, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 24 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 96 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 132 ; 2 uses
  %i.mc = add i32 %.3, -101                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %.3, ptr %i.a, align 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 130
  store i8 101, ptr %i.md, align 1
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 233
  store i8 34, ptr %i.me, align 1
  %i.mf = sext i32 %i.mc to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.loopexit
  %.0385494.a = phi i32 [ 34, %bb.bp ], [ %.1, %.loopexit ] ; 2 uses
  %.0386493.a = phi i32 [ 34, %bb.bp ], [ %.2, %.loopexit ] ; 3 uses
  %3 = load i32, ptr %i.a, align 4                ; 4 uses
  %i.mg = sub nsw i32 %3, %i.mc
  %i.mh = icmp sgt i32 %i.mg, 5
  %i.mi = icmp sgt i32 %3, 0
  %or.cond10 = and i1 %i.mi, %i.mh
  br i1 %or.cond10, label %bb.br, label %.critedge5

bb.br:                                            ; preds = %bb.bq
  %i.mj = add nsw i32 %3, -1                      ; 3 uses
  store i32 %i.mj, ptr %i.a, align 4
  %i.mk = add nsw i32 %.0386493.a, -1             ; 5 uses
  %i.ml = zext nneg i32 %i.mj to i64
  %i.mm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1             ; 3 uses
  %i.mo = icmp sgt i8 %i.mn, -1
  br i1 %i.mo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mp = zext nneg i8 %i.mn to i16
  %i.mq = zext nneg i32 %i.mk to i64              ; 2 uses
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.mq
  store i16 %i.mp, ptr %i.mr, align 2
  %i.ms = trunc i32 %i.mk to i8
  %i.mt = load i32, ptr %i.a, align 4
  %i.mu = sub nsw i32 %i.mt, %i.mc
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds i8, ptr %i.mb, i64 %i.mv
  store i8 %i.ms, ptr %i.mw, align 1
  %i.mx = load i32, ptr %i.a, align 4
  %i.my = sub nsw i32 %i.mx, %i.mc
  %i.mz = trunc i32 %i.my to i8
  %i.na = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mq
  store i8 %i.mz, ptr %i.na, align 1
  br label %.loopexit

bb.bt:                                            ; preds = %bb.br
  %i.nb = zext i8 %i.mn to i32
  %i.nc = call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.nb, i8 noundef signext -3) #13 ; 3 uses
  %i.nd = icmp slt i32 %i.nc, 65536
  %i.ne = trunc i32 %i.nc to i16                  ; 2 uses
  br i1 %i.nd, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.nf = and i16 %i.ne, 1023
  %i.ng = or disjoint i16 %i.nf, -9216
  %i.nh = zext nneg i32 %i.mk to i64              ; 2 uses
  %i.ni = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.nh
  store i16 %i.ng, ptr %i.ni, align 2
  %i.nj = load i32, ptr %i.a, align 4
  %i.nk = sub nsw i32 %i.nj, %i.mc
  %i.nl = trunc i32 %i.nk to i8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.nh
  store i8 %i.nl, ptr %i.nm, align 1
  %i.nn = lshr i32 %i.nc, 10
  %i.no = trunc i32 %i.nn to i16
  %i.np = add i16 %i.no, -10304
  %i.nq = add nsw i32 %.0386493.a, -2
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.sink564 = phi i32 [ %i.nq, %bb.bu ], [ %i.mk, %bb.bt ] ; 4 uses
  %.sink = phi i16 [ %i.np, %bb.bu ], [ %i.ne, %bb.bt ]
  %i.nr = zext nneg i32 %.sink564 to i64          ; 2 uses
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.nr
  store i16 %.sink, ptr %i.ns, align 2
  %i.nt = load i32, ptr %i.a, align 4
  %i.nu = sub nsw i32 %i.nt, %i.mc
  %i.nv = trunc i32 %i.nu to i8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.nr
  store i8 %i.nv, ptr %i.nw, align 1
  %i.nx = trunc i32 %.sink564 to i8
  %i.ny = zext nneg i32 %i.mj to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %bb.bv
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %bb.bw ], [ %i.ny, %bb.bv ] ; 3 uses
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, -1
  %i.nz = sub nsw i64 %indvars.iv507, %i.mf
  %i.oa = getelementptr inbounds i8, ptr %i.mb, i64 %i.nz
  store i8 %i.nx, ptr %i.oa, align 1
  %i.ob = load i32, ptr %i.a, align 4
  %i.oc = sext i32 %i.ob to i64
  %.not449.not = icmp sgt i64 %indvars.iv507, %i.oc
  br i1 %.not449.not, label %bb.bw, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.bw, %bb.bs
  %.2 = phi i32 [ %i.mk, %bb.bs ], [ %.sink564, %bb.bw ] ; 3 uses
  %.1 = phi i32 [ %.0385494.a, %bb.bs ], [ %.sink564, %bb.bw ] ; 2 uses
  %i.od = icmp sgt i32 %.2, 2
  br i1 %i.od, label %bb.bq, label %.loopexit..critedge5_crit_edge, !llvm.loop !18

.loopexit..critedge5_crit_edge:                   ; preds = %.loopexit
  %.pre517 = load i32, ptr %i.a, align 4
  br label %.critedge5, !llvm.loop !18

.critedge5:                                       ; preds = %bb.bq, %.loopexit..critedge5_crit_edge
  %i.oe = phi i32 [ %.pre517, %.loopexit..critedge5_crit_edge ], [ %3, %bb.bq ]
  %.0386.lcssa = phi i32 [ %.2, %.loopexit..critedge5_crit_edge ], [ %.0386493.a, %bb.bq ] ; 3 uses
  %.0385.lcssa = phi i32 [ %.1, %.loopexit..critedge5_crit_edge ], [ %.0385494.a, %bb.bq ]
  store i32 %i.oe, ptr %i.lw, align 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.lw, i64 4 ; 2 uses
  store i32 %.3, ptr %i.of, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 2 uses
  store i32 %.0386.lcssa, ptr %i.og, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.lw, i64 12 ; 2 uses
  store i32 34, ptr %i.oh, align 4
  %i.oi = sub nsw i32 %.0385.lcssa, %.0386.lcssa
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  store i32 %i.oi, ptr %i.oj, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lw, i64 20
  store i32 %i.mc, ptr %i.ok, align 4
  %i.ol = sext i32 %.0386.lcssa to i64
  %i.om = getelementptr inbounds [2 x i8], ptr %i.lz, i64 %i.ol
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.om, ptr %i.on, align 8
  %i.oo = load i32, ptr %i.oh, align 4
  %i.op = load i32, ptr %i.og, align 4
  %i.oq = sub nsw i32 %i.oo, %i.op                ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.oq, ptr %i.or, align 4
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.oq, ptr %i.os, align 8
  %i.ot = load i32, ptr %i.lw, align 4
  %i.ou = sext i32 %i.ot to i64
  store i64 %i.ou, ptr %i.bx, align 8
  %i.ov = load i32, ptr %i.of, align 4
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ow, ptr %i.ox, align 8
  %i.oy = load i32, ptr %i.oj, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.oy, ptr %i.oz, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bi, %bb.bj, %bb.bl, %bb.bk, %bb.ae, %bb.af, %bb.ab, %.critedge5, %bb.ac, %bb.t, %bb.q, %bb.o, %bb.i
  %.0388 = phi i8 [ 0, %bb.i ], [ 1, %.critedge5 ], [ 1, %bb.ac ], [ 0, %bb.o ], [ %., %bb.ab ], [ 0, %bb.ae ], [ 1, %bb.q ], [ 0, %bb.t ], [ 0, %bb.af ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bj ], [ 1, %bb.bi ]
  ret i8 %.0388
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL15utf8TextExtractP5UTextllPDsiP10UErrorCode(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = load i32, ptr %5, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %4, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null                     ; 2 uses
  %i.f = icmp ne i32 %4, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.d, label %_ZL8pinIndexRll.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4
  br label %bb.v

_ZL8pinIndexRll.exit:                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp slt i64 %1, 0
  %spec.select = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.i)
  %i.k = trunc nsw i64 %spec.select to i32
  %i.l = select i1 %i.j, i32 0, i32 %i.k          ; 7 uses
  %i.m = icmp slt i64 %2, 0
  %spec.select60 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.i)
  %i.n = trunc nsw i64 %spec.select60 to i32
  %i.o = select i1 %i.m, i32 0, i32 %i.n          ; 7 uses
  %i.p = icmp sgt i32 %i.l, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZL8pinIndexRll.exit
  store i32 8, ptr %5, align 4
  br label %bb.v

bb.f:                                             ; preds = %_ZL8pinIndexRll.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8              ; 7 uses
  %i.s = sext i32 %i.l to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp sgt i64 %i.u, %i.s
  br i1 %i.v, label %.preheader61.preheader, label %.loopexit62

.preheader61.preheader:                           ; preds = %bb.f
  %i.w = add i32 %i.l, -3
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %.loopexit62, label %bb.g

bb.g:                                             ; preds = %.preheader61.preheader
  %i.aa = add nsw i8 %i.y, 62
  %i.ab = icmp ult i8 %i.aa, 51
  %i.ac = icmp eq i32 %i.l, 0
  %or.cond3 = or i1 %i.ab, %i.ac
  br i1 %or.cond3, label %.loopexit62, label %.preheader61.1

.preheader61.1:                                   ; preds = %bb.g
  %indvars.iv.next = add nsw i64 %i.s, -1         ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.next
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = icmp sgt i8 %i.ae, -1
  %i.ag = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  br i1 %i.af, label %.loopexit62, label %bb.h

bb.h:                                             ; preds = %.preheader61.1
  %i.ah = add nsw i8 %i.ae, 62
  %i.ai = icmp ult i8 %i.ah, 51
  %i.aj = icmp eq i64 %indvars.iv.next, 0
  %or.cond3.1 = or i1 %i.ai, %i.aj
  br i1 %or.cond3.1, label %.loopexit62, label %.preheader61.2

.preheader61.2:                                   ; preds = %bb.h
  %indvars.iv.next.1 = add nsw i64 %i.s, -2       ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.next.1
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  %i.an = trunc nsw i64 %indvars.iv.next.1 to i32 ; 2 uses
  br i1 %i.am, label %.loopexit62, label %bb.i

bb.i:                                             ; preds = %.preheader61.2
  %i.ao = add nsw i8 %i.al, 62
  %i.ap = icmp ult i8 %i.ao, 51
  %i.aq = icmp eq i64 %indvars.iv.next.1, 0
  %or.cond3.2 = or i1 %i.ap, %i.aq
  %spec.select96 = select i1 %or.cond3.2, i32 %i.an, i32 %i.w
  br label %.loopexit62

.loopexit62:                                      ; preds = %bb.i, %bb.g, %.preheader61.preheader, %.preheader61.1, %bb.h, %.preheader61.2, %bb.f
  %.151 = phi i32 [ %i.l, %bb.f ], [ %i.an, %.preheader61.2 ], [ %i.l, %bb.g ], [ %i.l, %.preheader61.preheader ], [ %i.ag, %.preheader61.1 ], [ %i.ag, %bb.h ], [ %spec.select96, %bb.i ] ; 2 uses
  %i.ar = sext i32 %i.o to i64                    ; 4 uses
  %i.as = icmp sgt i64 %i.u, %i.ar
  br i1 %i.as, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit62
  %i.at = add i32 %i.o, -3
  %i.au = getelementptr inbounds i8, ptr %i.r, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.preheader.preheader
  %i.ax = add nsw i8 %i.av, 62
  %i.ay = icmp ult i8 %i.ax, 51
  %i.az = icmp eq i32 %i.o, 0
  %or.cond5 = or i1 %i.ay, %i.az
  br i1 %or.cond5, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %bb.j
  %indvars.iv.next70 = add nsw i64 %i.ar, -1      ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.next70
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  %i.bd = trunc nsw i64 %indvars.iv.next70 to i32 ; 2 uses
  br i1 %i.bc, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.preheader.1
  %i.be = add nsw i8 %i.bb, 62
  %i.bf = icmp ult i8 %i.be, 51
  %i.bg = icmp eq i64 %indvars.iv.next70, 0
  %or.cond5.1 = or i1 %i.bf, %i.bg
  br i1 %or.cond5.1, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %bb.k
  %indvars.iv.next70.1 = add nsw i64 %i.ar, -2    ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.next70.1
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %i.bj = icmp sgt i8 %i.bi, -1
  %i.bk = trunc nsw i64 %indvars.iv.next70.1 to i32 ; 2 uses
  br i1 %i.bj, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.preheader.2
  %i.bl = add nsw i8 %i.bi, 62
  %i.bm = icmp ult i8 %i.bl, 51
  %i.bn = icmp eq i64 %indvars.iv.next70.1, 0
  %or.cond5.2 = or i1 %i.bm, %i.bn
  %spec.select97 = select i1 %or.cond5.2, i32 %i.bk, i32 %i.at
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.j, %.preheader.preheader, %.preheader.1, %bb.k, %.preheader.2, %.loopexit62
  %.149 = phi i32 [ %i.o, %.loopexit62 ], [ %i.bk, %.preheader.2 ], [ %i.o, %bb.j ], [ %i.o, %.preheader.preheader ], [ %i.bd, %.preheader.1 ], [ %i.bd, %bb.k ], [ %spec.select97, %bb.l ] ; 2 uses
  %i.bo = sext i32 %.151 to i64
  %i.bp = getelementptr inbounds i8, ptr %i.r, i64 %i.bo ; 4 uses
  %i.bq = sub nsw i32 %.149, %.151                ; 6 uses
  %i.br = zext nneg i32 %4 to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.br
  %i.bt = select i1 %i.e, ptr null, ptr %i.bs     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %i.bu = icmp sgt i32 %i.bq, 0
  %i.bv = icmp ult ptr %3, %i.bt
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
end_hunk_1
