inline.NumInlined: 90
inline.NumDeleted: 48
begin_hunk_0_@usrc_writeArray:bb.a
    i32 4, label %bb.p
    i32 5, label %bb.o
    i32 6, label %bb.n
  ]

bb.n:                                             ; preds = %.split1.us.peel
  %i.u = load i64, ptr %.040, align 8
  br label %bb.r

bb.o:                                             ; preds = %.split1.us.peel
  %i.v = load i32, ptr %.041, align 4
  %i.w = zext i32 %i.v to i64
  br label %bb.r

bb.p:                                             ; preds = %.split1.us.peel
  %i.x = load i16, ptr %.042, align 2
  %i.y = zext i16 %i.x to i64
  br label %bb.r

bb.q:                                             ; preds = %.split1.us.peel, %.split1.us.peel
  %i.z = load i8, ptr %.043, align 1
  %i.aa = zext i8 %i.z to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.039.us.peel = phi i64 [ %i.u, %bb.n ], [ %i.aa, %bb.q ], [ %i.y, %bb.p ], [ %i.w, %bb.o ]
  %.039.us.peel.fr = freeze i64 %.039.us.peel
  %.not48.us.peel = icmp eq i64 %.039.us.peel.fr, 0
  br i1 %.not48.us.peel, label %.thread65, label %bb.s

.thread65:                                        ; preds = %.split1.us.peel, %bb.r
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread65
  %i.ab = phi ptr [ @.str.9, %.thread65 ], [ @.str.8, %bb.r ]
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %i.ab) #21 ; 0 uses
  %exitcond58.peel.not = icmp eq i32 %4, 1
  br i1 %exitcond58.peel.not, label %._crit_edge, label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %bb.s, %bb.aa
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %bb.aa ], [ 1, %bb.s ] ; 5 uses
  %.050.us = phi i32 [ %.1.us, %bb.aa ], [ 1, %bb.s ] ; 2 uses
  %i.ad = icmp slt i32 %.050.us, 16
  br i1 %i.ad, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us.peel.next
  %i.ae = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  %i.af = tail call i32 @fputs(ptr noundef %5, ptr noundef %0) ; 0 uses
  br label %.split1.us

bb.u:                                             ; preds = %.lr.ph.split.us.peel.next
  %i.ag = tail call i32 @fputc(i32 noundef 44, ptr noundef %0) ; 0 uses
  %i.ah = add nsw i32 %.050.us, 1
  br label %.split1.us

.split1.us:                                       ; preds = %bb.u, %bb.t
  %.1.us = phi i32 [ %i.ah, %bb.u ], [ 1, %bb.t ]
  switch i32 %i.c, label %.thread70 [
    i32 0, label %bb.y
    i32 3, label %bb.y
    i32 4, label %bb.x
    i32 5, label %bb.w
    i32 6, label %bb.v
  ]

bb.v:                                             ; preds = %.split1.us
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %indvars.iv54
  %i.aj = load i64, ptr %i.ai, align 8
  br label %bb.z

bb.w:                                             ; preds = %.split1.us
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.041, i64 %indvars.iv54
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = zext i32 %i.al to i64
  br label %bb.z

bb.x:                                             ; preds = %.split1.us
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.042, i64 %indvars.iv54
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = zext i16 %i.ao to i64
  br label %bb.z

bb.y:                                             ; preds = %.split1.us, %.split1.us
  %i.aq = getelementptr inbounds nuw i8, ptr %.043, i64 %indvars.iv54
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.039.us = phi i64 [ %i.aj, %bb.v ], [ %i.as, %bb.y ], [ %i.ap, %bb.x ], [ %i.am, %bb.w ]
  %.039.us.fr = freeze i64 %.039.us
  %.not48.us = icmp eq i64 %.039.us.fr, 0
  br i1 %.not48.us, label %.thread70, label %bb.aa

.thread70:                                        ; preds = %.split1.us, %bb.z
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread70
  %i.at = phi ptr [ @.str.9, %.thread70 ], [ @.str.8, %bb.z ]
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %i.at) #21 ; 0 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge, label %.lr.ph.split.us.peel.next, !llvm.loop !5

.lr.ph.split.peel.next:                           ; preds = %.thread, %.thread74
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread74 ], [ 1, %.thread ] ; 5 uses
  %.050 = phi i32 [ %.1, %.thread74 ], [ 1, %.thread ] ; 2 uses
  %i.av = icmp slt i32 %.050, 16
  br i1 %i.av, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.peel.next
  %i.aw = tail call i32 @fputc(i32 noundef 44, ptr noundef %0) ; 0 uses
  %i.ax = add nsw i32 %.050, 1
  br label %.split1

bb.ac:                                            ; preds = %.lr.ph.split.peel.next
  %i.ay = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  %i.az = tail call i32 @fputs(ptr noundef %5, ptr noundef %0) ; 0 uses
  br label %.split1

.split1:                                          ; preds = %bb.ac, %bb.ab
  %.1 = phi i32 [ %i.ax, %bb.ab ], [ 1, %bb.ac ]
  switch i32 %i.c, label %.thread74 [
    i32 0, label %bb.ad
    i32 3, label %bb.ad
    i32 4, label %bb.ae
    i32 5, label %bb.af
    i32 6, label %bb.ag
  ]

bb.ad:                                            ; preds = %.split1, %.split1
  %i.ba = getelementptr inbounds nuw i8, ptr %.043, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i64
  br label %bb.ah

bb.ae:                                            ; preds = %.split1
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.042, i64 %indvars.iv
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i64
  br label %bb.ah

bb.af:                                            ; preds = %.split1
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.041, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = zext i32 %i.bh to i64
  br label %bb.ah

bb.ag:                                            ; preds = %.split1
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.040, i64 %indvars.iv
  %i.bk = load i64, ptr %i.bj, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.039 = phi i64 [ %i.bk, %bb.ag ], [ %i.bc, %bb.ad ], [ %i.bf, %bb.ae ], [ %i.bi, %bb.af ] ; 2 uses
  %i.bl = icmp slt i64 %.039, 10
  %spec.select79 = select i1 %i.bl, ptr @.str.10, ptr @.str.11
  br label %.thread74

.thread74:                                        ; preds = %bb.ah, %.split1
  %.03976 = phi i64 [ %.039, %bb.ah ], [ 0, %.split1 ]
  %i.bm = phi ptr [ %spec.select79, %bb.ah ], [ @.str.10, %.split1 ]
  %i.bn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %i.bm, i64 noundef %.03976) #21 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count57
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.peel.next, !llvm.loop !8

._crit_edge:                                      ; preds = %.thread74, %bb.aa, %.thread, %bb.s, %bb.h
  %.not46 = icmp eq ptr %6, null
  br i1 %.not46, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.bo = tail call i32 @fputs(ptr noundef nonnull %6, ptr noundef %0) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge, %bb.ai, %bb.e
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @usrc_writeUTrie2Arrays(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  %i.d = load ptr, ptr %3, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add nsw i32 %i.h, %i.f
  tail call void @usrc_writeArray(ptr noundef %0, ptr noundef %1, ptr noundef %i.d, i32 noundef 16, i32 noundef %i.i, ptr noundef nonnull @.str.12, ptr noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @usrc_writeArray(ptr noundef %0, ptr noundef %1, ptr noundef %i.d, i32 noundef 16, i32 noundef %i.f, ptr noundef nonnull @.str.12, ptr noundef %4)
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.l = load i32, ptr %i.k, align 4
  tail call void @usrc_writeArray(ptr noundef %0, ptr noundef %2, ptr noundef %i.j, i32 noundef 32, i32 noundef %i.l, ptr noundef nonnull @.str.12, ptr noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @usrc_writeUTrie2Struct(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly captures(address_is_null) %5) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @fputs(ptr noundef nonnull %1, ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef %3, ptr noundef %3, i64 noundef %i.g) #21 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %3, ptr noundef %4) #21 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i16, ptr %i.p, align 8
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.t = load i16, ptr %i.s, align 2
  %i.u = sext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.w = load i32, ptr %i.v, align 4
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15, i64 noundef %i.l, i64 noundef %i.o, i32 noundef %i.r, i32 noundef %i.u, i64 noundef %i.x, i64 noundef %i.aa, i64 noundef %i.ad, i64 noundef %i.ag) #21 ; 0 uses
  %.not24 = icmp eq ptr %5, null
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call i32 @fputs(ptr noundef nonnull %5, ptr noundef %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @usrc_writeUCPTrieArrays(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %5, 1
  %i.b = select i1 %i.a, ptr @.str.16, ptr @.str.12 ; 2 uses
  %i.c = load ptr, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i32, ptr %i.d, align 8
  tail call void @usrc_writeArray(ptr noundef %0, ptr noundef %1, ptr noundef %i.c, i32 noundef 16, i32 noundef %i.e, ptr noundef nonnull %i.b, ptr noundef %4)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 31
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = icmp ult i8 %i.g, 3
  br i1 %i.h, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.i = zext nneg i8 %i.g to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.usrc_writeUCPTrie.1, i64 %i.i
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.j = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = load i32, ptr %i.m, align 4
  tail call void @usrc_writeArray(ptr noundef %0, ptr noundef %2, ptr noundef %i.l, i32 noundef %i.j, i32 noundef %i.n, ptr noundef nonnull %i.b, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @usrc_writeUCPTrieStruct(ptr noundef captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr noundef readonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @fputs(ptr noundef nonnull %1, ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp eq i32 %6, 0
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %3, ptr noundef %4) #21 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi ptr [ @.str.18, %bb.d ], [ @.str.19, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = load i16, ptr %i.n, align 4
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.r = load i8, ptr %i.q, align 2
  %i.s = sext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.u = load i8, ptr %i.t, align 1
  %i.v = sext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 38
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef %i.j, i64 noundef %i.m, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.v, i32 noundef %i.y, i64 noundef %i.ab, i64 noundef %i.ae) #21 ; 0 uses
  %.not22 = icmp eq ptr %5, null
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call i32 @fputs(ptr noundef nonnull %5, ptr noundef %0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @usrc_writeUCPTrie(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 9 uses
  %i.b = alloca [100 x i8], align 16              ; 8 uses
  %i.c = alloca [100 x i8], align 16              ; 9 uses
  %i.d = alloca [100 x i8], align 16              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 31 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp ult i8 %i.f, 3
  br i1 %i.g, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.h = zext nneg i8 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.usrc_writeUCPTrie.1, i64 %i.h
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  switch i32 %3, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.20, ptr noundef %1) #21 ; 0 uses
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.21, i32 noundef %i.i, ptr noundef %1) #21 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.c, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.23, i64 13, i1 false)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 100, ptr noundef nonnull @.str.24, i32 noundef %i.i) #21 ; 0 uses
  store i32 679178, ptr %i.c, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @abort() #20
  unreachable
end_hunk_0
