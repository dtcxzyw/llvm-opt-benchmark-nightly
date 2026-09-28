Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaReadVer?download=true
inline.NumInlined: 1012
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Cba_NtkSetMap2:bb.a
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp slt i32 %i.e, 1073741823
  %spec.select.i.i.i = select i1 %i.n, i32 %i.f, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.e, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.p, null
  %i.q = sext i32 %spec.select.i.i.i to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = tail call ptr @realloc(ptr noundef nonnull %i.p, i64 noundef %i.r) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  store ptr %i.u, ptr %i.o, align 8, !tbaa !35
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.b, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.a, align 8, !tbaa !34
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h, %bb.c
  %i.v = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.d, %bb.i ], [ %i.d, %bb.h ], [ %i.d, %bb.c ] ; 3 uses
  %.not4.i.i = icmp sgt i32 %i.v, %0
  br i1 %.not4.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = sext i32 %i.v to i64
  %i.z = shl nsw i64 %i.y, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = sub i32 %0, %i.v
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.ad, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.b, ptr %i.c, align 4, !tbaa !33
  br label %Vec_IntSetEntry.exit.i

Vec_IntSetEntry.exit.i:                           ; preds = %._crit_edge.i.i.i, %bb.a
  %i.ae = getelementptr i8, ptr %.0.val, i64 72
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.af = sext i32 %0 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.af
  store i32 %1, ptr %i.ag, align 4, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 100 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !33 ; 7 uses
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !34
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.n, label %Cba_ManSetMap2.exit

bb.n:                                             ; preds = %Vec_IntSetEntry.exit.i
  %i.am = icmp slt i32 %i.aj, 16
  br i1 %i.am, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 104 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.aq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.q, %bb.p
  %i.ar = phi ptr [ %i.ap, %bb.p ], [ %i.aq, %bb.q ]
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.r:                                             ; preds = %bb.n
  %i.as = icmp samesign ult i32 %i.aj, 1073741823
  %i.at = shl nuw nsw i32 %i.aj, 1
  %spec.select.i.i = select i1 %i.as, i32 %i.at, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.aj, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.s, label %Cba_ManSetMap2.exit

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 104 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %.not9.i10.i.i = icmp eq ptr %i.av, null
  %i.aw = zext nneg i32 %spec.select.i.i to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = tail call ptr @realloc(ptr noundef nonnull %i.av, i64 noundef %i.ax) #29
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ax) #30
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ba = phi ptr [ %i.ay, %bb.t ], [ %i.az, %bb.u ]
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.v, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.ah, align 8, !tbaa !34
  %.pre.i = load i32, ptr %i.ai, align 4, !tbaa !33
  br label %Cba_ManSetMap2.exit

Cba_ManSetMap2.exit:                              ; preds = %Vec_IntSetEntry.exit.i, %bb.r, %Vec_IntGrow.exit11.sink.split.i.i
  %i.bb = phi i32 [ %i.aj, %Vec_IntSetEntry.exit.i ], [ %i.aj, %bb.r ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  %i.be = add nsw i32 %i.bb, 1
  store i32 %i.be, ptr %i.ai, align 4, !tbaa !33
  %i.bf = sext i32 %i.bb to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bf
  store i32 %0, ptr %i.bg, align 4, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Prs_CreateDetectRamPort(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !33  ; 2 uses
  %i.b = icmp sgt i32 %.val, 1
  br i1 %i.b, label %.critedge.lr.ph, label %.loopexit

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.c, align 8, !tbaa !35 ; 2 uses
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.d = trunc i64 %indvars.iv.next to i32
  %i.e = or disjoint i32 %i.d, 1
  %i.f = icmp slt i32 %i.e, %.val
  br i1 %i.f, label %.critedge, label %.loopexit, !llvm.loop !10

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, %2
  br i1 %i.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64
  %i.o = ashr i32 %i.l, 2
  %i.p = tail call ptr @Abc_NamStr(ptr noundef %i.n, i32 noundef %i.o) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.011 = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.011
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn uwtable
define i32 @Prs_CreateGetMemSize(ptr nofree noundef readonly %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 95) #32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 95) #32
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #28, !inline_history !3
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.f, ptr noundef null, i32 noundef 10) #28, !inline_history !3
  %i.h = trunc i64 %i.g to i32
  %i.i = shl i32 %i.h, %i.e
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define ptr @Prs_CreateDetectRams(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = tail call i32 @Abc_NamStrFind(ptr noundef %i.b, ptr noundef nonnull @.str.22) #28
  %i.d = getelementptr i8, ptr %0, i64 228        ; 2 uses
  %.val55129 = load i32, ptr %i.d, align 4, !tbaa !33
  %i.e = icmp sgt i32 %.val55129, 0
  br i1 %i.e, label %.lr.ph133, label %.critedge

.lr.ph133:                                        ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 232        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph133, %bb.bn
  %indvars.iv140 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next141, %bb.bn ] ; 5 uses
  %.048130 = phi ptr [ null, %.lr.ph133 ], [ %.2, %bb.bn ] ; 9 uses
  %.val56 = load ptr, ptr %i.f, align 8, !tbaa !35 ; 2 uses
  %.val57 = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val57, i64 %indvars.iv140 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %.val56, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36
  %i.m = add nsw i32 %i.l, -2                     ; 2 uses
  store i32 %i.m, ptr @Prs_BoxSignals.V, align 8, !tbaa !34
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 4), align 4, !tbaa !33
  %i.n = load i32, ptr %i.h, align 4, !tbaa !36
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %.val56, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 12
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 8), align 8, !tbaa !35
  %.val58 = load ptr, ptr %i.f, align 8, !tbaa !35
  %.val59 = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val59, i64 %indvars.iv140
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [4 x i8], ptr %.val58, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %.not.i.not = icmp eq i32 %i.w, 0
  br i1 %.not.i.not, label %bb.bn, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !36
  %.val54 = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.z = tail call ptr @Abc_NamStr(ptr noundef %.val54, i32 noundef %i.y) #28 ; 3 uses
  %i.aa = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(18) @.str.23, i64 noundef 17) #32
  %.not50 = icmp eq i32 %i.aa, 0                  ; 3 uses
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(10) @.str.24, i64 noundef 9) #32
  %.not51 = icmp eq i32 %i.ab, 0
  br i1 %.not51, label %bb.e, label %bb.bn

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 4), align 4, !tbaa !33 ; 2 uses
  %i.ac = icmp sgt i32 %.val.i, 1
  br i1 %i.ac, label %.critedge.lr.ph.i, label %Prs_CreateDetectRamPort.exit

.critedge.lr.ph.i:                                ; preds = %bb.e
  %.val14.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 8), align 8, !tbaa !35 ; 2 uses
  br label %.critedge.i

bb.f:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ad = trunc i64 %indvars.iv.next.i to i32
  %i.ae = or disjoint i32 %i.ad, 1
  %i.af = icmp slt i32 %i.ae, %.val.i
  br i1 %i.af, label %.critedge.i, label %Prs_CreateDetectRamPort.exit, !llvm.loop !10

.critedge.i:                                      ; preds = %bb.f, %.critedge.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.critedge.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ai = icmp eq i32 %i.ah, %i.c
  br i1 %i.ai, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.critedge.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.an = ashr i32 %i.al, 2
  %i.ao = tail call ptr @Abc_NamStr(ptr noundef %i.am, i32 noundef %i.an) #28
  br label %Prs_CreateDetectRamPort.exit

Prs_CreateDetectRamPort.exit:                     ; preds = %bb.f, %bb.e, %bb.g
  %.011.i = phi ptr [ %i.ao, %bb.g ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  %i.ap = icmp eq ptr %.048130, null
  br i1 %i.ap, label %.thread, label %bb.h

.thread:                                          ; preds = %Prs_CreateDetectRamPort.exit
  %i.aq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 0, ptr %i.ar, align 4, !tbaa !51
  store i32 8, ptr %i.aq, align 8, !tbaa !52
  %i.as = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !53
  %i.au = getelementptr i8, ptr %i.aq, i64 4
  br label %Vec_PtrPush.exit76

bb.h:                                             ; preds = %Prs_CreateDetectRamPort.exit
  %.phi.trans.insert = getelementptr i8, ptr %.048130, i64 4
  %.1.val52.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !51 ; 4 uses
  %i.av = getelementptr i8, ptr %.048130, i64 4   ; 3 uses
  %i.aw = icmp sgt i32 %.1.val52.pre, 0
  br i1 %i.aw, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.h
  %i.ax = getelementptr i8, ptr %.048130, i64 8
  %.1.val53 = load ptr, ptr %i.ax, align 8, !tbaa !53
  %wide.trip.count = zext nneg i32 %.1.val52.pre to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.1.val53, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !63 ; 5 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !53
  %i.bb = load ptr, ptr %.val, align 8, !tbaa !63
  %i.bc = icmp eq ptr %.011.i, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr i8, ptr %i.az, i64 8      ; 4 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not50, label %bb.k, label %.critedge2

bb.k:                                             ; preds = %bb.j
  %Prs_BoxSignals.V.val63 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 4), align 4, !tbaa !33 ; 9 uses
  %Prs_BoxSignals.V.val64 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 8), align 8
  %i.bf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store i32 %Prs_BoxSignals.V.val63, ptr %i.bg, align 4, !tbaa !33
  store i32 %Prs_BoxSignals.V.val63, ptr %i.bf, align 8, !tbaa !34
  %.not.i65 = icmp eq i32 %Prs_BoxSignals.V.val63, 0
  br i1 %.not.i65, label %.thread113, label %bb.l

.thread113:                                       ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !35
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bi = sext i32 %Prs_BoxSignals.V.val63 to i64 ; 5 uses
  %i.bj = shl nsw i64 %i.bi, 2                    ; 2 uses
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bj) #30 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bk, ptr readonly align 4 %Prs_BoxSignals.V.val64, i64 %i.bj, i1 false)
  %i.bm = icmp slt i32 %Prs_BoxSignals.V.val63, 16
  br i1 %i.bm, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %.not9.i.i = icmp eq ptr %i.bk, null
  br i1 %.not9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.o:                                             ; preds = %.thread113, %bb.m
  %.pre159.pre-phi = phi i64 [ 0, %.thread113 ], [ %i.bi, %bb.m ]
  %i.bo = phi ptr [ %i.bh, %.thread113 ], [ %i.bl, %bb.m ]
  %i.bp = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.o, %bb.n
  %.pre157.pre-phi = phi i64 [ %.pre159.pre-phi, %bb.o ], [ %i.bi, %bb.n ]
  %i.bq = phi ptr [ %i.bo, %bb.o ], [ %i.bl, %bb.n ]
  %i.br = phi ptr [ %i.bp, %bb.o ], [ %i.bn, %bb.n ] ; 2 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.l
  %i.bs = icmp samesign ult i32 %Prs_BoxSignals.V.val63, 1073741823
  %i.bt = shl nuw nsw i32 %Prs_BoxSignals.V.val63, 1
  %spec.select.i = select i1 %i.bs, i32 %i.bt, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %Prs_BoxSignals.V.val63, %spec.select.i
  br i1 %.not.i9.i, label %bb.q, label %Vec_IntPush.exit

bb.q:                                             ; preds = %bb.p
  %.not9.i10.i = icmp eq ptr %i.bk, null
  %i.bu = zext nneg i32 %spec.select.i to i64
  %i.bv = shl nuw nsw i64 %i.bu, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = tail call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %i.bv) #29
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.bv) #30
  br label %bb.t

end_hunk_0
begin_hunk_1_@Prs_CreateVerilogNtk:bb.a
  %.val9.i.i = load i32, ptr %i.p, align 4, !tbaa !33
  %i.q = icmp sgt i32 %.val9.i.i, 0
  br i1 %i.q, label %.lr.ph.i.i, label %Cba_NtkCleanMap.exit

.lr.ph.i.i:                                       ; preds = %Vec_IntStart.exit
  %i.r = getelementptr i8, ptr %.val660, i64 88
  %.val7.i.i = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr i8, ptr %.val660, i64 56
  %.val8.i.i = load ptr, ptr %i.s, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val7.i.i, i64 %indvars.iv.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.val8.i.i, i64 %i.v
  store i32 0, ptr %i.w, align 4, !tbaa !36
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i = load i32, ptr %i.p, align 4, !tbaa !33
  %i.x = sext i32 %.val.i.i to i64
  %i.y = icmp slt i64 %indvars.iv.next.i.i, %i.x
  br i1 %i.y, label %bb.c, label %Cba_NtkCleanMap.exit, !llvm.loop !11

Cba_NtkCleanMap.exit:                             ; preds = %bb.c, %Vec_IntStart.exit
  store i32 0, ptr %i.p, align 4, !tbaa !33
  %i.z = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %.val6631235 = load i32, ptr %i.z, align 4, !tbaa !33
  %i.aa = icmp sgt i32 %.val6631235, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %Cba_NtkCleanMap.exit
  %i.ab = getelementptr i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 208       ; 5 uses
  %i.af = getelementptr i8, ptr %0, i64 128
  br label %bb.d

.critedge.preheader:                              ; preds = %Cba_ObjName.exit, %Cba_NtkCleanMap.exit
  %i.ag = getelementptr i8, ptr %1, i64 100       ; 2 uses
  %.val5531237 = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ah = icmp sgt i32 %.val5531237, 0
  br i1 %i.ah, label %.critedge2.lr.ph, label %.preheader1230

.critedge2.lr.ph:                                 ; preds = %.critedge.preheader
  %i.ai = getelementptr i8, ptr %1, i64 104
  %i.aj = getelementptr i8, ptr %1, i64 168
  br label %.critedge2

bb.d:                                             ; preds = %.lr.ph, %Cba_ObjName.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Cba_ObjName.exit ] ; 2 uses
  %.val665 = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val665, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36 ; 7 uses
  %i.am = add nsw i32 %i.al, 1                    ; 4 uses
  %i.an = load i32, ptr %i.ad, align 4, !tbaa !33 ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %i.al, %i.an
  br i1 %.not.i.not.i.i, label %Cba_ObjName.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load i32, ptr %i.ac, align 8, !tbaa !34 ; 4 uses
  %i.ap = shl nsw i32 %i.ao, 1                    ; 2 uses
  %.not.i.i702 = icmp slt i32 %i.al, %i.ap
  %.not.i.i.not.i.i = icmp sgt i32 %i.ao, %i.al   ; 2 uses
  br i1 %.not.i.i702, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.aq, null
  %i.ar = sext i32 %i.am to i64
  %i.as = shl nsw i64 %i.ar, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = tail call ptr @realloc(ptr noundef nonnull %i.aq, i64 noundef %i.as) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.as) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.j:                                             ; preds = %bb.e
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = icmp slt i32 %i.ao, 1073741823
  %spec.select.i.i.i = select i1 %i.av, i32 %i.ap, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp slt i32 %i.ao, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.l, label %Vec_IntGrow.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.aw, null
  %i.ax = sext i32 %spec.select.i.i.i to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = tail call ptr @realloc(ptr noundef nonnull %i.aw, i64 noundef %i.ay) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.ay) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.n, %bb.h, %bb.i
  %storemerge1573 = phi ptr [ %i.au, %bb.i ], [ %i.at, %bb.h ], [ %i.az, %bb.m ], [ %i.ba, %bb.n ]
  %spec.select.sink.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %spec.select.i.i.i, %bb.m ], [ %spec.select.i.i.i, %bb.n ]
  store ptr %storemerge1573, ptr %i.ae, align 8, !tbaa !35
  store i32 %spec.select.sink.i.i.i, ptr %i.ac, align 8, !tbaa !34
  %.pre.i.i = load i32, ptr %i.ad, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.k, %bb.j, %bb.f
  %i.bb = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %i.an, %bb.f ] ; 3 uses
  %.not3.i.i = icmp sgt i32 %i.bb, %i.al
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.bd = sext i32 %i.bb to i64
  %i.be = shl nsw i64 %i.bd, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.bc, i64 %i.be
  %i.bf = sub i32 %i.al, %i.bb
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.bi, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.am, ptr %i.ad, align 4, !tbaa !33
  br label %Cba_ObjName.exit

Cba_ObjName.exit:                                 ; preds = %bb.d, %._crit_edge.i.i.i
  %.val.i.i703 = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.bj = sext i32 %i.al to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val.i.i703, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !36
  %.val612 = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.bm = getelementptr inbounds [4 x i8], ptr %.val612, i64 %i.bj
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !36
  %.val616 = load ptr, ptr %0, align 8, !tbaa !69
  tail call fastcc void @Cba_NtkSetMap(ptr %.val616, i32 noundef %i.bl, i32 noundef %i.bn)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val663 = load i32, ptr %i.z, align 4, !tbaa !33
  %i.bo = sext i32 %.val663 to i64
  %i.bp = icmp slt i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.d, label %.critedge.preheader, !llvm.loop !124

.preheader1230:                                   ; preds = %.critedge2, %.critedge.preheader
  %i.bq = getelementptr i8, ptr %1, i64 84        ; 4 uses
  %.val5521239 = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.br = icmp sgt i32 %.val5521239, 0
  br i1 %i.br, label %.critedge4.lr.ph, label %._crit_edge

.critedge4.lr.ph:                                 ; preds = %.preheader1230
  %i.bs = getelementptr i8, ptr %1, i64 88
  %i.bt = getelementptr i8, ptr %1, i64 152
  br label %.critedge4

.critedge2:                                       ; preds = %.critedge2.lr.ph, %.critedge2
  %indvars.iv1300 = phi i64 [ 0, %.critedge2.lr.ph ], [ %indvars.iv.next1301, %.critedge2 ] ; 3 uses
  %.val572 = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val572, i64 %indvars.iv1300
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !36
  %.val571 = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.val571, i64 %indvars.iv1300
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !36
  %i.by = sub nsw i32 0, %i.bx
  %.val615 = load ptr, ptr %0, align 8, !tbaa !69
  tail call fastcc void @Cba_NtkSetMap(ptr %.val615, i32 noundef %i.bv, i32 noundef %i.by)
  %indvars.iv.next1301 = add nuw nsw i64 %indvars.iv1300, 1 ; 2 uses
  %.val553 = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.bz = sext i32 %.val553 to i64
  %i.ca = icmp slt i64 %indvars.iv.next1301, %i.bz
  br i1 %i.ca, label %.critedge2, label %.preheader1230, !llvm.loop !125

.critedge4:                                       ; preds = %.critedge4.lr.ph, %.critedge4
  %indvars.iv1303 = phi i64 [ 0, %.critedge4.lr.ph ], [ %indvars.iv.next1304, %.critedge4 ] ; 3 uses
  %.val570 = load ptr, ptr %i.bs, align 8, !tbaa !35
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val570, i64 %indvars.iv1303
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !36
  %.val569 = load ptr, ptr %i.bt, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.val569, i64 %indvars.iv1303
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !36
  %i.cf = sub nsw i32 0, %i.ce
  %.val614 = load ptr, ptr %0, align 8, !tbaa !69
  tail call fastcc void @Cba_NtkSetMap(ptr %.val614, i32 noundef %i.cc, i32 noundef %i.cf)
  %indvars.iv.next1304 = add nuw nsw i64 %indvars.iv1303, 1 ; 2 uses
  %.val552 = load i32, ptr %i.bq, align 4, !tbaa !33
  %i.cg = sext i32 %.val552 to i64
  %i.ch = icmp slt i64 %indvars.iv.next1304, %i.cg
  br i1 %i.ch, label %.critedge4, label %._crit_edge, !llvm.loop !126

._crit_edge:                                      ; preds = %.critedge4, %.preheader1230
  %i.ci = tail call ptr @Prs_CreateDetectRams(ptr noundef nonnull %1) ; 5 uses
  %.not = icmp eq ptr %i.ci, null
  br i1 %.not, label %Vec_PtrFreeP.exit, label %.preheader1229

.preheader1229:                                   ; preds = %._crit_edge
  %i.cj = getelementptr i8, ptr %i.ci, i64 4      ; 2 uses
  %.val5791244 = load i32, ptr %i.cj, align 4, !tbaa !51
  %i.ck = icmp sgt i32 %.val5791244, 0
  br i1 %i.ck, label %.lr.ph1246, label %.critedge6

.lr.ph1246:                                       ; preds = %.preheader1229
  %2 = getelementptr i8, ptr %i.ci, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 6 uses
  %i.cn = getelementptr i8, ptr %0, i64 208       ; 10 uses
  %i.co = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 6 uses
  %i.cr = getelementptr i8, ptr %0, i64 272       ; 10 uses
  %i.cs = getelementptr i8, ptr %1, i64 216
  %i.ct = getelementptr i8, ptr %1, i64 232
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.cw = getelementptr i8, ptr %0, i64 288       ; 5 uses
  %i.cx = getelementptr i8, ptr %0, i64 112
  %i.cy = getelementptr i8, ptr %0, i64 144
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph1246, %Vec_PtrFree.exit
  %indvars.iv1309 = phi i64 [ 0, %.lr.ph1246 ], [ %indvars.iv.next1310, %Vec_PtrFree.exit ] ; 2 uses
  %.val583 = load ptr, ptr %2, align 8, !tbaa !53
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val583, i64 %indvars.iv1309
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !63 ; 3 uses
  %i.db = getelementptr i8, ptr %i.da, i64 8      ; 3 uses
  %.val582 = load ptr, ptr %i.db, align 8, !tbaa !53 ; 2 uses
  %i.dc = load ptr, ptr %.val582, align 8, !tbaa !63 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val582, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !63
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = trunc i64 %i.df to i32
  %i.dh = tail call i32 (ptr, ptr, ...) @Cba_NtkNewStrId(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef %i.dc)
  %i.di = getelementptr i8, ptr %i.da, i64 4      ; 3 uses
  %.val578 = load i32, ptr %i.di, align 4, !tbaa !51
  %i.dj = add nsw i32 %.val578, -2
  %i.dk = tail call fastcc i32 @Cba_ObjAlloc(ptr noundef nonnull %0, i32 noundef 82, i32 noundef %i.dj, i32 noundef 1) ; 7 uses
  %i.dl = add nsw i32 %i.dk, 1                    ; 4 uses
  %i.dm = load i32, ptr %i.cm, align 4, !tbaa !33 ; 4 uses
  %.not.i.not.i.i704 = icmp slt i32 %i.dk, %i.dm
  br i1 %.not.i.not.i.i704, label %Cba_ObjSetName.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = load i32, ptr %i.cl, align 8, !tbaa !34 ; 4 uses
  %i.do = shl nsw i32 %i.dn, 1                    ; 2 uses
  %.not.i.i705 = icmp slt i32 %i.dk, %i.do
  %.not.i.i.not.i.i706 = icmp sgt i32 %i.dn, %i.dk ; 2 uses
  br i1 %.not.i.i705, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i.i.not.i.i706, label %Vec_IntGrow.exit.i.i.i711, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %i.cn, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i.i707 = icmp eq ptr %i.dp, null
  %i.dq = sext i32 %i.dl to i64
  %i.dr = shl nsw i64 %i.dq, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i707, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = tail call ptr @realloc(ptr noundef nonnull %i.dp, i64 noundef %i.dr) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i708

bb.t:                                             ; preds = %bb.r
  %i.dt = tail call noalias ptr @malloc(i64 noundef %i.dr) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i708

bb.u:                                             ; preds = %bb.p
  br i1 %.not.i.i.not.i.i706, label %Vec_IntGrow.exit.i.i.i711, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = icmp slt i32 %i.dn, 1073741823
  %spec.select.i.i.i716 = select i1 %i.du, i32 %i.do, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i717 = icmp slt i32 %i.dn, %spec.select.i.i.i716
  br i1 %.not.i22.i.i.i717, label %bb.w, label %Vec_IntGrow.exit.i.i.i711

bb.w:                                             ; preds = %bb.v
  %i.dv = load ptr, ptr %i.cn, align 8, !tbaa !35 ; 2 uses
  %.not9.i23.i.i.i718 = icmp eq ptr %i.dv, null
  %i.dw = sext i32 %spec.select.i.i.i716 to i64
  %i.dx = shl nuw nsw i64 %i.dw, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i718, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = tail call ptr @realloc(ptr noundef nonnull %i.dv, i64 noundef %i.dx) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i708

bb.y:                                             ; preds = %bb.w
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dx) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i708

Vec_IntGrow.exit.sink.split.i.i.i708:             ; preds = %bb.x, %bb.y, %bb.s, %bb.t
  %storemerge1574 = phi ptr [ %i.dt, %bb.t ], [ %i.ds, %bb.s ], [ %i.dy, %bb.x ], [ %i.dz, %bb.y ]
  %spec.select.sink.i.i.i709 = phi i32 [ %i.dl, %bb.t ], [ %i.dl, %bb.s ], [ %spec.select.i.i.i716, %bb.x ], [ %spec.select.i.i.i716, %bb.y ]
  store ptr %storemerge1574, ptr %i.cn, align 8, !tbaa !35
  store i32 %spec.select.sink.i.i.i709, ptr %i.cl, align 8, !tbaa !34
  %.pre.i.i710 = load i32, ptr %i.cm, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i711

Vec_IntGrow.exit.i.i.i711:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i708, %bb.v, %bb.u, %bb.q
  %i.ea = phi i32 [ %.pre.i.i710, %Vec_IntGrow.exit.sink.split.i.i.i708 ], [ %i.dm, %bb.v ], [ %i.dm, %bb.u ], [ %i.dm, %bb.q ] ; 3 uses
  %.not4.i.i = icmp sgt i32 %i.ea, %i.dk
  br i1 %.not4.i.i, label %._crit_edge.i.i.i714, label %.lr.ph.i.i.i712

.lr.ph.i.i.i712:                                  ; preds = %Vec_IntGrow.exit.i.i.i711
  %i.eb = load ptr, ptr %i.cn, align 8, !tbaa !35
  %i.ec = sext i32 %i.ea to i64
  %i.ed = shl nsw i64 %i.ec, 2
  %scevgep.i.i.i713 = getelementptr i8, ptr %i.eb, i64 %i.ed
  %i.ee = sub i32 %i.dk, %i.ea
  %i.ef = zext i32 %i.ee to i64
  %i.eg = shl nuw nsw i64 %i.ef, 2
  %i.eh = add nuw nsw i64 %i.eg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i713, i8 0, i64 %i.eh, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i714

._crit_edge.i.i.i714:                             ; preds = %.lr.ph.i.i.i712, %Vec_IntGrow.exit.i.i.i711
  store i32 %i.dl, ptr %i.cm, align 4, !tbaa !33
  br label %Cba_ObjSetName.exit

Cba_ObjSetName.exit:                              ; preds = %bb.o, %._crit_edge.i.i.i714
  %.val.i.i715 = load ptr, ptr %i.cn, align 8, !tbaa !35
  %i.ei = sext i32 %i.dk to i64                   ; 3 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val.i.i715, i64 %i.ei
  store i32 %i.dh, ptr %i.ej, align 4, !tbaa !36
  %.val611 = load ptr, ptr %i.co, align 8, !tbaa !35
  %i.ek = getelementptr inbounds [4 x i8], ptr %.val611, i64 %i.ei
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !36 ; 8 uses
  %i.em = tail call i32 (ptr, ptr, ...) @Cba_NtkNewStrId(ptr noundef nonnull %0, ptr noundef %i.dc) ; 2 uses
  %i.en = add nsw i32 %i.el, 1                    ; 4 uses
  %i.eo = load i32, ptr %i.cq, align 4, !tbaa !33 ; 4 uses
  %.not.i.not.i.i719 = icmp slt i32 %i.el, %i.eo
  br i1 %.not.i.not.i.i719, label %Cba_FonSetName.exit, label %bb.z

bb.z:                                             ; preds = %Cba_ObjSetName.exit
  %i.ep = load i32, ptr %i.cp, align 8, !tbaa !34 ; 4 uses
  %i.eq = shl nsw i32 %i.ep, 1                    ; 2 uses
  %.not.i.i720 = icmp slt i32 %i.el, %i.eq
  %.not.i.i.not.i.i721 = icmp sgt i32 %i.ep, %i.el ; 2 uses
  br i1 %.not.i.i720, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i.i.not.i.i721, label %Vec_IntGrow.exit.i.i.i726, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.er = load ptr, ptr %i.cr, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i.i722 = icmp eq ptr %i.er, null
  %i.es = sext i32 %i.en to i64
  %i.et = shl nsw i64 %i.es, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i722, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = tail call ptr @realloc(ptr noundef nonnull %i.er, i64 noundef %i.et) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i723

bb.ad:                                            ; preds = %bb.ab
  %i.ev = tail call noalias ptr @malloc(i64 noundef %i.et) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i723

bb.ae:                                            ; preds = %bb.z
  br i1 %.not.i.i.not.i.i721, label %Vec_IntGrow.exit.i.i.i726, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = icmp slt i32 %i.ep, 1073741823
  %spec.select.i.i.i732 = select i1 %i.ew, i32 %i.eq, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i733 = icmp slt i32 %i.ep, %spec.select.i.i.i732
  br i1 %.not.i22.i.i.i733, label %bb.ag, label %Vec_IntGrow.exit.i.i.i726

bb.ag:                                            ; preds = %bb.af
  %i.ex = load ptr, ptr %i.cr, align 8, !tbaa !35 ; 2 uses
  %.not9.i23.i.i.i734 = icmp eq ptr %i.ex, null
  %i.ey = sext i32 %spec.select.i.i.i732 to i64
  %i.ez = shl nuw nsw i64 %i.ey, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i734, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = tail call ptr @realloc(ptr noundef nonnull %i.ex, i64 noundef %i.ez) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i723

bb.ai:                                            ; preds = %bb.ag
  %i.fb = tail call noalias ptr @malloc(i64 noundef %i.ez) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i723

Vec_IntGrow.exit.sink.split.i.i.i723:             ; preds = %bb.ah, %bb.ai, %bb.ac, %bb.ad
  %storemerge1575 = phi ptr [ %i.ev, %bb.ad ], [ %i.eu, %bb.ac ], [ %i.fa, %bb.ah ], [ %i.fb, %bb.ai ]
  %spec.select.sink.i.i.i724 = phi i32 [ %i.en, %bb.ad ], [ %i.en, %bb.ac ], [ %spec.select.i.i.i732, %bb.ah ], [ %spec.select.i.i.i732, %bb.ai ]
  store ptr %storemerge1575, ptr %i.cr, align 8, !tbaa !35
  store i32 %spec.select.sink.i.i.i724, ptr %i.cp, align 8, !tbaa !34
  %.pre.i.i725 = load i32, ptr %i.cq, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i726

Vec_IntGrow.exit.i.i.i726:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i723, %bb.af, %bb.ae, %bb.aa
  %i.fc = phi i32 [ %.pre.i.i725, %Vec_IntGrow.exit.sink.split.i.i.i723 ], [ %i.eo, %bb.af ], [ %i.eo, %bb.ae ], [ %i.eo, %bb.aa ] ; 3 uses
  %.not4.i.i727 = icmp sgt i32 %i.fc, %i.el
  br i1 %.not4.i.i727, label %._crit_edge.i.i.i730, label %.lr.ph.i.i.i728

.lr.ph.i.i.i728:                                  ; preds = %Vec_IntGrow.exit.i.i.i726
  %i.fd = load ptr, ptr %i.cr, align 8, !tbaa !35
  %i.fe = sext i32 %i.fc to i64
  %i.ff = shl nsw i64 %i.fe, 2
  %scevgep.i.i.i729 = getelementptr i8, ptr %i.fd, i64 %i.ff
  %i.fg = sub i32 %i.el, %i.fc
  %i.fh = zext i32 %i.fg to i64
  %i.fi = shl nuw nsw i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i729, i8 0, i64 %i.fj, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i730

._crit_edge.i.i.i730:                             ; preds = %.lr.ph.i.i.i728, %Vec_IntGrow.exit.i.i.i726
  store i32 %i.en, ptr %i.cq, align 4, !tbaa !33
  br label %Cba_FonSetName.exit

Cba_FonSetName.exit:                              ; preds = %Cba_ObjSetName.exit, %._crit_edge.i.i.i730
  %.val.i.i731 = load ptr, ptr %i.cr, align 8, !tbaa !35
  %i.fk = sext i32 %i.el to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.val.i.i731, i64 %i.fk
  store i32 %i.em, ptr %i.fl, align 4, !tbaa !36
  %i.fm = tail call i32 @Prs_CreateRange(ptr noundef nonnull %0, i32 noundef %i.el, i32 noundef %i.em) ; 0 uses
  %.val5771241 = load i32, ptr %i.di, align 4, !tbaa !51
  %i.fn = icmp sgt i32 %.val5771241, 2
  br i1 %i.fn, label %.lr.ph1243, label %.critedge8

.lr.ph1243:                                       ; preds = %Cba_FonSetName.exit
  %i.fo = add nsw i32 %i.dg, -1
end_hunk_1
begin_hunk_2_@Prs_CreateVerilogNtk:bb.a
  %i.hp = load ptr, ptr %i.cw, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i.i755 = icmp eq ptr %i.hp, null
  %i.hq = sext i32 %i.hl to i64
  %i.hr = shl nsw i64 %i.hq, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i755, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hs = tail call ptr @realloc(ptr noundef nonnull %i.hp, i64 noundef %i.hr) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i756

bb.ba:                                            ; preds = %bb.ay
  %i.ht = tail call noalias ptr @malloc(i64 noundef %i.hr) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i756

bb.bb:                                            ; preds = %bb.aw
  br i1 %.not.i.i.not.i.i754, label %Vec_IntGrow.exit.i.i.i759, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hu = icmp slt i32 %i.hn, 1073741823
  %spec.select.i.i.i765 = select i1 %i.hu, i32 %i.ho, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i766 = icmp slt i32 %i.hn, %spec.select.i.i.i765
  br i1 %.not.i22.i.i.i766, label %bb.bd, label %Vec_IntGrow.exit.i.i.i759

bb.bd:                                            ; preds = %bb.bc
  %i.hv = load ptr, ptr %i.cw, align 8, !tbaa !35 ; 2 uses
  %.not9.i23.i.i.i767 = icmp eq ptr %i.hv, null
  %i.hw = sext i32 %spec.select.i.i.i765 to i64
  %i.hx = shl nuw nsw i64 %i.hw, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i767, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hy = tail call ptr @realloc(ptr noundef nonnull %i.hv, i64 noundef %i.hx) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i756

bb.bf:                                            ; preds = %bb.bd
  %i.hz = tail call noalias ptr @malloc(i64 noundef %i.hx) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i756

Vec_IntGrow.exit.sink.split.i.i.i756:             ; preds = %bb.be, %bb.bf, %bb.az, %bb.ba
  %storemerge1576 = phi ptr [ %i.ht, %bb.ba ], [ %i.hs, %bb.az ], [ %i.hy, %bb.be ], [ %i.hz, %bb.bf ]
  %spec.select.sink.i.i.i757 = phi i32 [ %i.hl, %bb.ba ], [ %i.hl, %bb.az ], [ %spec.select.i.i.i765, %bb.be ], [ %spec.select.i.i.i765, %bb.bf ]
  store ptr %storemerge1576, ptr %i.cw, align 8, !tbaa !35
  store i32 %spec.select.sink.i.i.i757, ptr %i.cu, align 8, !tbaa !34
  %.pre.i.i758 = load i32, ptr %i.cv, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i759

Vec_IntGrow.exit.i.i.i759:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i756, %bb.bc, %bb.bb, %bb.ax
  %i.ia = phi i32 [ %.pre.i.i758, %Vec_IntGrow.exit.sink.split.i.i.i756 ], [ %i.hm, %bb.bc ], [ %i.hm, %bb.bb ], [ %i.hm, %bb.ax ] ; 3 uses
  %.not4.i.i760 = icmp sgt i32 %i.ia, %i.hi
  br i1 %.not4.i.i760, label %._crit_edge.i.i.i763, label %.lr.ph.i.i.i761

.lr.ph.i.i.i761:                                  ; preds = %Vec_IntGrow.exit.i.i.i759
  %i.ib = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.ic = sext i32 %i.ia to i64
  %i.id = shl nsw i64 %i.ic, 2
  %scevgep.i.i.i762 = getelementptr i8, ptr %i.ib, i64 %i.id
  %i.ie = sub i32 %i.hi, %i.ia
  %i.if = zext i32 %i.ie to i64
  %i.ig = shl nuw nsw i64 %i.if, 2
  %i.ih = add nuw nsw i64 %i.ig, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i762, i8 0, i64 %i.ih, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i763

._crit_edge.i.i.i763:                             ; preds = %.lr.ph.i.i.i761, %Vec_IntGrow.exit.i.i.i759
  store i32 %i.hl, ptr %i.cv, align 4, !tbaa !33
  br label %Cba_FonSetRange.exit

Cba_FonSetRange.exit:                             ; preds = %bb.av, %._crit_edge.i.i.i763
  %i.ii = shl nsw i32 %i.hk, 1
  %.val.i.i764 = load ptr, ptr %i.cw, align 8, !tbaa !35
  %i.ij = sext i32 %i.hi to i64                   ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %.val.i.i764, i64 %i.ij
  store i32 %i.ii, ptr %i.ik, align 4, !tbaa !36
  %i.il = add nsw i64 %indvars.iv1306, -2         ; 2 uses
  %i.im = trunc nuw nsw i64 %i.il to i32
  %i.in = tail call i32 (ptr, ptr, ...) @Cba_NtkNewStrId(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef %i.dc, i32 noundef %i.im) ; 2 uses
  %i.io = load i32, ptr %i.cq, align 4, !tbaa !33 ; 4 uses
  %.not.i.not.i.i768 = icmp slt i32 %i.hi, %i.io
  br i1 %.not.i.not.i.i768, label %Cba_FonSetName.exit784, label %bb.bg

bb.bg:                                            ; preds = %Cba_FonSetRange.exit
  %i.ip = load i32, ptr %i.cp, align 8, !tbaa !34 ; 4 uses
  %i.iq = shl nsw i32 %i.ip, 1                    ; 2 uses
  %.not.i.i769 = icmp slt i32 %i.hi, %i.iq
  %.not.i.i.not.i.i770 = icmp sgt i32 %i.ip, %i.hi ; 2 uses
  br i1 %.not.i.i769, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not.i.i.not.i.i770, label %Vec_IntGrow.exit.i.i.i775, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ir = load ptr, ptr %i.cr, align 8, !tbaa !35 ; 2 uses
  %.not9.i.i.i.i771 = icmp eq ptr %i.ir, null
  %i.is = sext i32 %i.hl to i64
  %i.it = shl nsw i64 %i.is, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i771, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iu = tail call ptr @realloc(ptr noundef nonnull %i.ir, i64 noundef %i.it) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i772

bb.bk:                                            ; preds = %bb.bi
  %i.iv = tail call noalias ptr @malloc(i64 noundef %i.it) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i772

bb.bl:                                            ; preds = %bb.bg
  br i1 %.not.i.i.not.i.i770, label %Vec_IntGrow.exit.i.i.i775, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = icmp slt i32 %i.ip, 1073741823
  %spec.select.i.i.i781 = select i1 %i.iw, i32 %i.iq, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i782 = icmp slt i32 %i.ip, %spec.select.i.i.i781
  br i1 %.not.i22.i.i.i782, label %bb.bn, label %Vec_IntGrow.exit.i.i.i775

bb.bn:                                            ; preds = %bb.bm
  %i.ix = load ptr, ptr %i.cr, align 8, !tbaa !35 ; 2 uses
  %.not9.i23.i.i.i783 = icmp eq ptr %i.ix, null
  %i.iy = sext i32 %spec.select.i.i.i781 to i64
  %i.iz = shl nuw nsw i64 %i.iy, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i783, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ja = tail call ptr @realloc(ptr noundef nonnull %i.ix, i64 noundef %i.iz) #29
  br label %Vec_IntGrow.exit.sink.split.i.i.i772

bb.bp:                                            ; preds = %bb.bn
  %i.jb = tail call noalias ptr @malloc(i64 noundef %i.iz) #30
  br label %Vec_IntGrow.exit.sink.split.i.i.i772

Vec_IntGrow.exit.sink.split.i.i.i772:             ; preds = %bb.bo, %bb.bp, %bb.bj, %bb.bk
  %storemerge1223 = phi ptr [ %i.iv, %bb.bk ], [ %i.iu, %bb.bj ], [ %i.ja, %bb.bo ], [ %i.jb, %bb.bp ]
  %spec.select.sink.i.i.i773 = phi i32 [ %i.hl, %bb.bk ], [ %i.hl, %bb.bj ], [ %spec.select.i.i.i781, %bb.bo ], [ %spec.select.i.i.i781, %bb.bp ]
  store ptr %storemerge1223, ptr %i.cr, align 8, !tbaa !35
  store i32 %spec.select.sink.i.i.i773, ptr %i.cp, align 8, !tbaa !34
  %.pre.i.i774 = load i32, ptr %i.cq, align 4, !tbaa !33
  br label %Vec_IntGrow.exit.i.i.i775

Vec_IntGrow.exit.i.i.i775:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i772, %bb.bm, %bb.bl, %bb.bh
  %i.jc = phi i32 [ %.pre.i.i774, %Vec_IntGrow.exit.sink.split.i.i.i772 ], [ %i.io, %bb.bm ], [ %i.io, %bb.bl ], [ %i.io, %bb.bh ] ; 3 uses
  %.not4.i.i776 = icmp sgt i32 %i.jc, %i.hi
  br i1 %.not4.i.i776, label %._crit_edge.i.i.i779, label %.lr.ph.i.i.i777

.lr.ph.i.i.i777:                                  ; preds = %Vec_IntGrow.exit.i.i.i775
  %i.jd = load ptr, ptr %i.cr, align 8, !tbaa !35
  %i.je = sext i32 %i.jc to i64
  %i.jf = shl nsw i64 %i.je, 2
  %scevgep.i.i.i778 = getelementptr i8, ptr %i.jd, i64 %i.jf
  %i.jg = sub i32 %i.hi, %i.jc
  %i.jh = zext i32 %i.jg to i64
  %i.ji = shl nuw nsw i64 %i.jh, 2
  %i.jj = add nuw nsw i64 %i.ji, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i778, i8 0, i64 %i.jj, i1 false), !tbaa !36
  br label %._crit_edge.i.i.i779

._crit_edge.i.i.i779:                             ; preds = %.lr.ph.i.i.i777, %Vec_IntGrow.exit.i.i.i775
  store i32 %i.hl, ptr %i.cq, align 4, !tbaa !33
  br label %Cba_FonSetName.exit784

Cba_FonSetName.exit784:                           ; preds = %Cba_FonSetRange.exit, %._crit_edge.i.i.i779
  %.val.i.i780 = load ptr, ptr %i.cr, align 8, !tbaa !35
  %i.jk = getelementptr inbounds [4 x i8], ptr %.val.i.i780, i64 %i.ij
  store i32 %i.in, ptr %i.jk, align 4, !tbaa !36
  %.val613 = load ptr, ptr %0, align 8, !tbaa !69
  tail call fastcc void @Cba_NtkSetMap(ptr %.val613, i32 noundef %i.in, i32 noundef %i.hi)
  %.val604 = load ptr, ptr %i.cx, align 8, !tbaa !35
  %.val605 = load ptr, ptr %i.cy, align 8, !tbaa !35
  %i.jl = getelementptr inbounds [4 x i8], ptr %.val604, i64 %i.ei
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !36
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr [4 x i8], ptr %.val605, i64 %i.il
  %i.jp = getelementptr [4 x i8], ptr %i.jo, i64 %i.jn
  store i32 %i.hi, ptr %i.jp, align 4, !tbaa !36
  %i.jq = load ptr, ptr %i.fs, align 8, !tbaa !35 ; 2 uses
  %.not.i785 = icmp eq ptr %i.jq, null
  br i1 %.not.i785, label %Vec_IntFree.exit, label %bb.bq

bb.bq:                                            ; preds = %Cba_FonSetName.exit784
  tail call void @free(ptr noundef nonnull %i.jq) #28
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Cba_FonSetName.exit784, %bb.bq
  tail call void @free(ptr noundef nonnull %i.fq) #28
  %indvars.iv.next1307 = add nuw nsw i64 %indvars.iv1306, 2 ; 2 uses
  %.val577 = load i32, ptr %i.di, align 4, !tbaa !51
  %i.jr = trunc nuw i64 %indvars.iv.next1307 to i32
  %i.js = icmp sgt i32 %.val577, %i.jr
  br i1 %i.js, label %bb.aj, label %.critedge8, !llvm.loop !127

.critedge8:                                       ; preds = %Vec_IntFree.exit, %Cba_FonSetName.exit
  %i.jt = load ptr, ptr %i.db, align 8, !tbaa !53 ; 2 uses
  %.not.i786 = icmp eq ptr %i.jt, null
  br i1 %.not.i786, label %Vec_PtrFree.exit, label %bb.br

bb.br:                                            ; preds = %.critedge8
  tail call void @free(ptr noundef nonnull %i.jt) #28
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge8, %bb.br
  tail call void @free(ptr noundef nonnull %i.da) #28
  %indvars.iv.next1310 = add nuw nsw i64 %indvars.iv1309, 1 ; 2 uses
  %.val579 = load i32, ptr %i.cj, align 4, !tbaa !51
  %3 = sext i32 %.val579 to i64
  %4 = icmp slt i64 %indvars.iv.next1310, %3
  br i1 %4, label %bb.o, label %.critedge6, !llvm.loop !128

.critedge6:                                       ; preds = %Vec_PtrFree.exit, %.preheader1229
  %5 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !53       ; 2 uses
  %.not.i787 = icmp eq ptr %6, null
  br i1 %.not.i787, label %bb.bs, label %.thread.i

.thread.i:                                        ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %6) #28
  br label %bb.bs

bb.bs:                                            ; preds = %.thread.i, %.critedge6
  tail call void @free(ptr noundef nonnull %i.ci) #28
  br label %Vec_PtrFreeP.exit

Vec_PtrFreeP.exit:                                ; preds = %._crit_edge, %bb.bs
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 4 uses
  store i32 0, ptr %i.ju, align 4, !tbaa !33
  %.val6421253 = load i32, ptr %i.e, align 4, !tbaa !33
  %i.jv = icmp sgt i32 %.val6421253, 0
  br i1 %i.jv, label %.lr.ph1255, label %.critedge21

.lr.ph1255:                                       ; preds = %Vec_PtrFreeP.exit
  %i.jw = getelementptr i8, ptr %1, i64 216       ; 3 uses
  %i.jx = getelementptr i8, ptr %1, i64 232       ; 3 uses
  %i.jy = getelementptr i8, ptr %1, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 3 uses
  %i.kb = getelementptr i8, ptr %0, i64 192       ; 5 uses
  %i.kc = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.kf = getelementptr i8, ptr %0, i64 208       ; 5 uses
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1255, %.thread1197
  %indvars.iv1321 = phi i64 [ 0, %.lr.ph1255 ], [ %indvars.iv.next1322, %.thread1197 ] ; 5 uses
  %.val646 = load ptr, ptr %i.jw, align 8, !tbaa !35 ; 2 uses
  %.val647 = load ptr, ptr %i.jx, align 8, !tbaa !35
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.val647, i64 %indvars.iv1321 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !36
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %.val646, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !36
  %i.kl = add nsw i32 %i.kk, -2                   ; 2 uses
  store i32 %i.kl, ptr @Prs_BoxSignals.V, align 8, !tbaa !34
  store i32 %i.kl, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 4), align 4, !tbaa !33
  %i.km = load i32, ptr %i.kg, align 4, !tbaa !36
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr [4 x i8], ptr %.val646, i64 %i.kn
  %i.kp = getelementptr i8, ptr %i.ko, i64 12
  store ptr %i.kp, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 8), align 8, !tbaa !35
  %.val650 = load ptr, ptr %i.jw, align 8, !tbaa !35
  %.val651 = load ptr, ptr %i.jx, align 8, !tbaa !35
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.val651, i64 %indvars.iv1321
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !36
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr [4 x i8], ptr %.val650, i64 %i.ks ; 3 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 12
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !36
  %.not.i788.not = icmp eq i32 %i.kv, 0
  %i.kw = getelementptr i8, ptr %i.kt, i64 4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !36 ; 3 uses
  br i1 %.not.i788.not, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ky = load i32, ptr %i.kt, align 4, !tbaa !36
  %i.kz = add nsw i32 %i.ky, -2
  %i.la = sdiv i32 %i.kz, 2
  %i.lb = add nsw i32 %i.la, -1
  %i.lc = icmp eq i32 %i.kx, 47
  %i.ld = select i1 %i.lc, i32 2, i32 1
  %i.le = tail call fastcc i32 @Cba_ObjAlloc(ptr noundef %0, i32 noundef %i.kx, i32 noundef %i.lb, i32 noundef %i.ld) ; 2 uses
  %.val609 = load ptr, ptr %i.kc, align 8, !tbaa !35
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [4 x i8], ptr %.val609, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !36
  %Prs_BoxSignals.V.val568 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 8), align 8, !tbaa !35
  %i.li = getelementptr inbounds nuw i8, ptr %Prs_BoxSignals.V.val568, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !36
  tail call void @Prs_CreateSignalOut(ptr noundef %0, i32 noundef %i.lh, ptr noundef nonnull %1, i32 noundef %i.lj)
  br label %.loopexit

bb.bv:                                            ; preds = %bb.bt
  %.val619 = load ptr, ptr %i.jy, align 8, !tbaa !64
  %i.lk = tail call ptr @Abc_NamStr(ptr noundef %.val619, i32 noundef %i.kx) #28 ; 13 uses
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bx
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ll = getelementptr inbounds nuw [64 x i8], ptr @s_VerInfo, i64 %indvars.iv.next.i
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 82
  br i1 %exitcond.i, label %Prs_ManFindType.exit.thread, label %bb.bx, !llvm.loop !129

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %indvars.iv.i = phi i64 [ 1, %bb.bv ], [ %indvars.iv.next.i, %bb.bw ]
  %i.lm = phi ptr [ getelementptr inbounds nuw (i8, ptr @s_VerInfo, i64 64), %bb.bv ], [ %i.ll, %bb.bw ] ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !146 ; 2 uses
  %i.lp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lo) #32
  %sext.i = shl i64 %i.lp, 32
  %i.lq = ashr exact i64 %sext.i, 32
  %i.lr = tail call i32 @strncmp(ptr noundef readonly %i.lk, ptr noundef nonnull %i.lo, i64 noundef %i.lq) #32
  %.not16.i = icmp eq i32 %i.lr, 0
  br i1 %.not16.i, label %Prs_ManFindType.exit, label %bb.bw

Prs_ManFindType.exit:                             ; preds = %bb.bx
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !147 ; 8 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %spec.select.i = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %spec.select.i
  %i.lw = load i32, ptr %i.lm, align 16, !tbaa !148 ; 8 uses
  switch i32 %i.lw, label %bb.cg [
    i32 79, label %.thread1197
    i32 3, label %Prs_ManFindType.exit.thread
    i32 86, label %.critedge544
    i32 47, label %.critedge544
    i32 40, label %bb.by
    i32 41, label %bb.cc
  ]

Prs_ManFindType.exit.thread:                      ; preds = %bb.bw, %Prs_ManFindType.exit
  %i.lx = load ptr, ptr %0, align 8, !tbaa !69    ; 3 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 32
  %.val.i = load ptr, ptr %i.ly, align 8, !tbaa !78
  %i.lz = tail call i32 @Abc_NamStrFind(ptr noundef %.val.i, ptr noundef %i.lk) #28 ; 3 uses
  %i.ma = icmp sgt i32 %i.lz, 0
  br i1 %i.ma, label %Cba_ManNtkIsOk.exit.i.i, label %Cba_ManNtkFind.exit.thread

Cba_ManNtkIsOk.exit.i.i:                          ; preds = %Prs_ManFindType.exit.thread
  %i.mb = getelementptr i8, ptr %i.lx, i64 1564
  %.val.i.i.i = load i32, ptr %i.mb, align 4, !tbaa !51
  %.not.i.i789 = icmp slt i32 %i.lz, %.val.i.i.i
  br i1 %.not.i.i789, label %Cba_ManNtkFind.exit, label %Cba_ManNtkFind.exit.thread

Cba_ManNtkFind.exit:                              ; preds = %Cba_ManNtkIsOk.exit.i.i
  %i.mc = getelementptr i8, ptr %i.lx, i64 1568
  %.val.i.i790 = load ptr, ptr %i.mc, align 8, !tbaa !53
  %i.md = zext nneg i32 %i.lz to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i790, i64 %i.md
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !63 ; 8 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %Cba_ManNtkFind.exit.thread, label %bb.ck

Cba_ManNtkFind.exit.thread:                       ; preds = %Prs_ManFindType.exit.thread, %Cba_ManNtkIsOk.exit.i.i, %Cba_ManNtkFind.exit
  %i.mh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, ptr noundef %i.lk) ; 0 uses
  br label %.thread1197

bb.by:                                            ; preds = %Prs_ManFindType.exit
  %i.mi = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lk, ptr noundef nonnull dereferenceable(10) @.str.28, i64 noundef 9) #32
  %.not537 = icmp eq i32 %i.mi, 0
  br i1 %.not537, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lk, i64 9
  %i.mk = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.mj, ptr noundef null, i32 noundef 10) #28, !inline_history !3
  %i.ml = trunc i64 %i.mk to i32
  %i.mm = shl nuw i32 1, %i.ml
  %i.mn = add nuw nsw i32 %i.mm, 1
  br label %.critedge544

bb.ca:                                            ; preds = %bb.by
  %i.mo = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lk, ptr noundef nonnull dereferenceable(5) @.str.29, i64 noundef 4) #32
  %.not538 = icmp eq i32 %i.mo, 0
  br i1 %.not538, label %bb.cb, label %.critedge544

bb.cb:                                            ; preds = %bb.ca
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.mq = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.mp, ptr noundef null, i32 noundef 10) #28, !inline_history !3
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = shl nuw i32 1, %i.mr
  %i.mt = add nuw nsw i32 %i.ms, 1
  br label %.critedge544

bb.cc:                                            ; preds = %Prs_ManFindType.exit
  %i.mu = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lk, ptr noundef nonnull dereferenceable(13) @.str.30, i64 noundef 12) #32
  %.not535 = icmp eq i32 %i.mu, 0
  br i1 %.not535, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  %i.mw = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.mv, ptr noundef null, i32 noundef 10) #28, !inline_history !3
  %i.mx = trunc i64 %i.mw to i32
  %i.my = add nsw i32 %i.mx, 1
  br label %.critedge544

bb.ce:                                            ; preds = %bb.cc
  %i.mz = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lk, ptr noundef nonnull dereferenceable(8) @.str.31, i64 noundef 7) #32
  %.not536 = icmp eq i32 %i.mz, 0
  br i1 %.not536, label %bb.cf, label %.critedge544

bb.cf:                                            ; preds = %bb.ce
  %i.na = getelementptr inbounds nuw i8, ptr %i.lk, i64 7
  %i.nb = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.na, ptr noundef null, i32 noundef 10) #28, !inline_history !3
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = add nsw i32 %i.nc, 1
  br label %.critedge544

bb.cg:                                            ; preds = %Prs_ManFindType.exit
  %i.ne = icmp eq i32 %i.lw, 87
  switch i32 %i.lw, label %.critedge544 [
    i32 87, label %bb.ch
    i32 84, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cg
  %i.nf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.lk, ptr noundef nonnull dereferenceable(6) @.str.32, i64 noundef 5) #32
  %.not533 = icmp eq i32 %i.nf, 0
end_hunk_2
