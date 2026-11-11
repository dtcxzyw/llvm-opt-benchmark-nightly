Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaReadVer?download=true
inline.NumInlined: 1012
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Cba_NtkSetMap2:bb.a
  %.not9.i.i.i.i = icmp eq ptr %i.h, null
  %i.i = sext i32 %i.b to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @realloc(ptr noundef nonnull %i.h, i64 noundef %i.j) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  store ptr %i.m, ptr %i.g, align 8, !tbaa !34
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 2 uses
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
  store ptr %i.u, ptr %i.o, align 8, !tbaa !34
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.m ], [ %i.b, %bb.g ]
  store i32 %spec.select.sink.i.i.i, ptr %i.a, align 8, !tbaa !33
  %.pre.i.i = load i32, ptr %i.c, align 4, !tbaa !32
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.i, %bb.h, %bb.c
  %i.v = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %i.d, %bb.i ], [ %i.d, %bb.h ], [ %i.d, %bb.c ] ; 3 uses
  %.not4.i.i = icmp sgt i32 %i.v, %0
  br i1 %.not4.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34
  %i.y = sext i32 %i.v to i64
  %i.z = shl nsw i64 %i.y, 2
  %scevgep.i.i.i = getelementptr i8, ptr %i.x, i64 %i.z
  %i.aa = sub i32 %0, %i.v
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i, i8 0, i64 %i.ad, i1 false), !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.b, ptr %i.c, align 4, !tbaa !32
  br label %Vec_IntSetEntry.exit.i

Vec_IntSetEntry.exit.i:                           ; preds = %._crit_edge.i.i.i, %bb.a
  %i.ae = getelementptr i8, ptr %.0.val, i64 72
  %.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.af = sext i32 %0 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.af
  store i32 %1, ptr %i.ag, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 100 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32 ; 7 uses
  %i.ak = load i32, ptr %i.ah, align 8, !tbaa !33
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.n, label %Cba_ManSetMap2.exit

bb.n:                                             ; preds = %Vec_IntSetEntry.exit.i
  %i.am = icmp slt i32 %i.aj, 16
  br i1 %i.am, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 104 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !34 ; 2 uses
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
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.r:                                             ; preds = %bb.n
  %i.as = icmp samesign ult i32 %i.aj, 1073741823
  %i.at = shl nuw nsw i32 %i.aj, 1
  %spec.select.i.i = select i1 %i.as, i32 %i.at, i32 2147483647 ; 3 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.aj, %spec.select.i.i
  br i1 %.not.i9.i.i, label %bb.s, label %Cba_ManSetMap2.exit

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %.0.val, i64 104 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34 ; 2 uses
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
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.v, %Vec_IntGrow.exit.i.i
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.ah, align 8, !tbaa !33
  %.pre.i = load i32, ptr %i.ai, align 4, !tbaa !32
  br label %Cba_ManSetMap2.exit

Cba_ManSetMap2.exit:                              ; preds = %Vec_IntSetEntry.exit.i, %bb.r, %Vec_IntGrow.exit11.sink.split.i.i
  %i.bb = phi i32 [ %i.aj, %Vec_IntSetEntry.exit.i ], [ %i.aj, %bb.r ], [ %.pre.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = add nsw i32 %i.bb, 1
  store i32 %i.be, ptr %i.ai, align 4, !tbaa !32
  %i.bf = sext i32 %i.bb to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bf
  store i32 %0, ptr %i.bg, align 4, !tbaa !35
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Prs_CreateDetectRamPort(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !32  ; 2 uses
  %i.b = icmp sgt i32 %.val, 1
  br i1 %i.b, label %.critedge.lr.ph, label %.loopexit

.critedge.lr.ph:                                  ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.c, align 8, !tbaa !34 ; 2 uses
  br label %.critedge

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.d = trunc i64 %indvars.iv.next to i32
  %i.e = or disjoint i32 %i.d, 1
  %i.f = icmp slt i32 %i.e, %.val
  br i1 %i.f, label %.critedge, label %.loopexit, !llvm.loop !9

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %i.i = icmp eq i32 %i.h, %2
  br i1 %i.i, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.o = ashr i32 %i.l, 2
  %i.p = tail call ptr @Abc_NamStr(ptr noundef %i.n, i32 noundef %i.o) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.011 = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.011
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define i32 @Prs_CreateGetMemSize(ptr nofree noundef readonly %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 95) #32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 95) #32
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #28, !inline_history !2
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.f, ptr noundef null, i32 noundef 10) #28, !inline_history !2
  %i.h = trunc i64 %i.g to i32
  %i.i = shl i32 %i.h, %i.e
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define noalias ptr @Prs_CreateDetectRams(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = tail call i32 @Abc_NamStrFind(ptr noundef %i.b, ptr noundef nonnull @.str.22) #28
  %i.d = getelementptr i8, ptr %0, i64 228        ; 2 uses
  %.val55129 = load i32, ptr %i.d, align 4, !tbaa !32
  %i.e = icmp sgt i32 %.val55129, 0
  br i1 %i.e, label %.lr.ph133, label %.critedge

.lr.ph133:                                        ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 232        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph133, %bb.bn
  %indvars.iv140 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next141, %bb.bn ] ; 5 uses
  %.048130 = phi ptr [ null, %.lr.ph133 ], [ %.2, %bb.bn ] ; 9 uses
  %.val56 = load ptr, ptr %i.f, align 8, !tbaa !34 ; 2 uses
  %.val57 = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val57, i64 %indvars.iv140 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !35
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %.val56, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %i.m = add nsw i32 %i.l, -2                     ; 2 uses
  store i32 %i.m, ptr @Prs_BoxSignals.V, align 8, !tbaa !33
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 4), align 4, !tbaa !32
  %i.n = load i32, ptr %i.h, align 4, !tbaa !35
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %.val56, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 12
  store ptr %i.q, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 8), align 8, !tbaa !34
  %.val58 = load ptr, ptr %i.f, align 8, !tbaa !34
  %.val59 = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val59, i64 %indvars.iv140
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [4 x i8], ptr %.val58, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !35
  %.not.i.not = icmp eq i32 %i.w, 0
  br i1 %.not.i.not, label %bb.bn, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !35
  %.val54 = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.z = tail call ptr @Abc_NamStr(ptr noundef %.val54, i32 noundef %i.y) #28 ; 3 uses
  %i.aa = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(18) @.str.23, i64 noundef 17) #32
  %.not50 = icmp eq i32 %i.aa, 0                  ; 3 uses
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(10) @.str.24, i64 noundef 9) #32
  %.not51 = icmp eq i32 %i.ab, 0
  br i1 %.not51, label %bb.e, label %bb.bn

bb.e:                                             ; preds = %bb.d, %bb.c
  %.val.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 4), align 4, !tbaa !32 ; 2 uses
  %i.ac = icmp sgt i32 %.val.i, 1
  br i1 %i.ac, label %.critedge.lr.ph.i, label %Prs_CreateDetectRamPort.exit

.critedge.lr.ph.i:                                ; preds = %bb.e
  %.val14.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 8), align 8, !tbaa !34 ; 2 uses
  br label %.critedge.i

bb.f:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ad = trunc i64 %indvars.iv.next.i to i32
  %i.ae = or disjoint i32 %i.ad, 1
  %i.af = icmp slt i32 %i.ae, %.val.i
  br i1 %i.af, label %.critedge.i, label %Prs_CreateDetectRamPort.exit, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.f, %.critedge.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.critedge.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !35
  %i.ai = icmp eq i32 %i.ah, %i.c
  br i1 %i.ai, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.critedge.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !63
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
  store i32 0, ptr %i.ar, align 4, !tbaa !50
  store i32 8, ptr %i.aq, align 8, !tbaa !51
  %i.as = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !52
  %i.au = getelementptr i8, ptr %i.aq, i64 4
  br label %Vec_PtrPush.exit76

bb.h:                                             ; preds = %Prs_CreateDetectRamPort.exit
  %.phi.trans.insert = getelementptr i8, ptr %.048130, i64 4
  %.1.val52.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !50 ; 4 uses
  %i.av = getelementptr i8, ptr %.048130, i64 4   ; 3 uses
  %i.aw = icmp sgt i32 %.1.val52.pre, 0
  br i1 %i.aw, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.h
  %i.ax = getelementptr i8, ptr %.048130, i64 8
  %.1.val53 = load ptr, ptr %i.ax, align 8, !tbaa !52
  %wide.trip.count = zext nneg i32 %.1.val52.pre to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.1.val53, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !62 ; 5 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !52
  %i.bb = load ptr, ptr %.val, align 8, !tbaa !62
  %i.bc = icmp eq ptr %.011.i, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr i8, ptr %i.az, i64 8      ; 4 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not50, label %bb.k, label %.critedge2

bb.k:                                             ; preds = %bb.j
  %Prs_BoxSignals.V.val63 = load i32, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 4), align 4, !tbaa !32 ; 9 uses
  %Prs_BoxSignals.V.val64 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @Prs_BoxSignals.V, i64 8), align 8
  %i.bf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store i32 %Prs_BoxSignals.V.val63, ptr %i.bg, align 4, !tbaa !32
  store i32 %Prs_BoxSignals.V.val63, ptr %i.bf, align 8, !tbaa !33
  %.not.i65 = icmp eq i32 %Prs_BoxSignals.V.val63, 0
  br i1 %.not.i65, label %.thread113, label %bb.l

.thread113:                                       ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !34
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bi = sext i32 %Prs_BoxSignals.V.val63 to i64 ; 5 uses
  %i.bj = shl nsw i64 %i.bi, 2                    ; 2 uses
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bj) #30 ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !34
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
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.l
  %i.bs = icmp samesign ult i32 %Prs_BoxSignals.V.val63, 1073741823
  %i.bt = shl nuw nsw i32 %Prs_BoxSignals.V.val63, 1
  %spec.select.i = select i1 %i.bs, i32 %i.bt, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %Prs_BoxSignals.V.val63, %spec.select.i
end_hunk_0
begin_hunk_1_@Vec_StrPrintF:bb.a
bb.f:                                             ; preds = %Vec_StrGrow.exit
  %.val = load i32, ptr %i.a, align 4, !tbaa !60  ; 3 uses
  %i.o = add nuw i32 %i.m, 1000
  %i.p = add i32 %i.o, %.val                      ; 3 uses
  %i.q = load i32, ptr %0, align 8, !tbaa !61
  %.not.i25 = icmp slt i32 %i.q, %i.p
  %.val22.pre = load ptr, ptr %i.j, align 8, !tbaa !59 ; 3 uses
  br i1 %.not.i25, label %bb.g, label %Vec_StrGrow.exit27

bb.g:                                             ; preds = %bb.f
  %.not9.i26 = icmp eq ptr %.val22.pre, null
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  br i1 %.not9.i26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @realloc(ptr noundef nonnull %.val22.pre, i64 noundef %i.r) #29
  %.val21.pre.pre = load i32, ptr %i.a, align 4, !tbaa !60
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = call noalias ptr @malloc(i64 noundef %i.r) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val21.pre = phi i32 [ %.val21.pre.pre, %bb.h ], [ %.val, %bb.i ]
  %i.u = phi ptr [ %i.s, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  store ptr %i.u, ptr %i.j, align 8, !tbaa !59
  store i32 %i.p, ptr %0, align 8, !tbaa !61
  br label %Vec_StrGrow.exit27

Vec_StrGrow.exit27:                               ; preds = %bb.f, %bb.j
  %.val22 = phi ptr [ %.val22.pre, %bb.f ], [ %i.u, %bb.j ]
  %.val21 = phi i32 [ %.val, %bb.f ], [ %.val21.pre, %bb.j ]
  %i.v = sext i32 %.val21 to i64
  %i.w = getelementptr inbounds i8, ptr %.val22, i64 %i.v
  %i.x = zext nneg i32 %i.m to i64
  %i.y = call i32 @vsnprintf(ptr noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.200, ptr noundef nonnull %2) #28 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %Vec_StrGrow.exit27, %Vec_StrGrow.exit
  %i.z = load i32, ptr %i.a, align 4, !tbaa !60
  %i.aa = add nsw i32 %i.z, %i.m
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !60
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #23 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !35
  %i.b = load i32, ptr %1, align 4, !tbaa !35
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

declare ptr @Extra_FileDesignName(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #24

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @Cba_NtkIsSeq(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i8, ptr %i.a, align 4               ; 3 uses
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 2
  %.not17 = icmp eq i8 %i.d, 0
  br i1 %.not17, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %.val25 = load i32, ptr %i.e, align 4, !tbaa !60 ; 2 uses
  %i.f = icmp sgt i32 %.val25, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 96
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %.val29 = phi i32 [ %.val25, %.lr.ph ], [ %.val, %bb.h ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.val23 = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %.val23, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37    ; 3 uses
  %i.j = add i8 %i.i, -90
  %i.k = icmp ult i8 %i.j, -87
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not24 = icmp eq i8 %i.i, 3
  br i1 %.not24, label %bb.e, label %Cba_ObjIsSeq.exit

bb.e:                                             ; preds = %bb.d
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = tail call fastcc ptr @Cba_ObjNtk(ptr noundef nonnull %0, i32 noundef %i.l)
  %i.n = tail call fastcc i32 @Cba_NtkIsSeq(ptr noundef %i.m)
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %._crit_edge28, label %bb.f

._crit_edge28:                                    ; preds = %bb.e
  %.val.pre = load i32, ptr %i.e, align 4, !tbaa !60
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.a, align 4
  %i.p = or i8 %i.o, 4
  br label %.sink.split

Cba_ObjIsSeq.exit:                                ; preds = %bb.d
  %i.q = add nsw i8 %i.i, -88
  %i.r = icmp ult i8 %i.q, -12
  br i1 %i.r, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Cba_ObjIsSeq.exit
  %i.s = load i8, ptr %i.a, align 4
  %i.t = or i8 %i.s, 4
  br label %.sink.split

bb.h:                                             ; preds = %._crit_edge28, %bb.c, %Cba_ObjIsSeq.exit
  %.val = phi i32 [ %.val.pre, %._crit_edge28 ], [ %.val29, %bb.c ], [ %.val29, %Cba_ObjIsSeq.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = sext i32 %.val to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !177

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load i8, ptr %i.a, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.w = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %.preheader ]
  %i.x = or i8 %i.w, 2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %._crit_edge
  %.sink = phi i8 [ %i.x, %._crit_edge ], [ %i.t, %bb.g ], [ %i.p, %bb.f ]
  %.016.ph = phi i32 [ 0, %._crit_edge ], [ 1, %bb.g ], [ 1, %bb.f ]
  store i8 %.sink, ptr %i.a, align 4
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.016 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ %.016.ph, %.sink.split ]
  ret i32 %.016
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind allocsize(0,1) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{null}
!3 = distinct !{!3, !39}
!4 = distinct !{!4, !39}
!5 = distinct !{!5, !39}
!6 = distinct !{!6, !39}
!7 = distinct !{!7, !39}
!8 = distinct !{!8, !39}
!9 = distinct !{!9, !39}
!10 = distinct !{!10, !39}
!11 = distinct !{!11, !39}
!12 = distinct !{!12, !39}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"p1 _ZTS10Abc_Nam_t_", !21, i64 0}
!24 = !{!"p1 _ZTS14Hash_IntMan_t_", !21, i64 0}
!25 = !{!"p1 _ZTS10Prs_Ntk_t_", !21, i64 0}
!26 = !{!"p1 _ZTS10Vec_Ptr_t_", !21, i64 0}
!27 = !{!"Vec_Str_t_", !18, i64 0, !18, i64 4, !22, i64 8}
!28 = !{!"p1 int", !21, i64 0}
!29 = !{!"Vec_Int_t_", !18, i64 0, !18, i64 4, !28, i64 8}
!30 = !{!"Prs_Man_t_", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !23, i64 32, !23, i64 40, !24, i64 48, !25, i64 56, !26, i64 64, !27, i64 72, !29, i64 88, !29, i64 104, !29, i64 120, !29, i64 136, !29, i64 152, !29, i64 168, !29, i64 184, !18, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !17, i64 216}
!31 = !{!30, !23, i64 32}
!32 = !{!29, !18, i64 4}
!33 = !{!29, !18, i64 0}
!34 = !{!29, !28, i64 8}
!35 = !{!18, !18, i64 0}
!36 = !{!30, !22, i64 24}
!37 = !{!17, !17, i64 0}
!38 = !{!30, !22, i64 16}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!30, !25, i64 56}
!41 = !{!30, !23, i64 40}
!42 = !{!"p1 _ZTS10Vec_Int_t_", !21, i64 0}
!43 = !{!"Hash_IntMan_t_", !42, i64 0, !42, i64 8, !18, i64 16}
!44 = !{!43, !42, i64 0}
!45 = !{!43, !42, i64 8}
!46 = !{!43, !18, i64 16}
!47 = !{!30, !24, i64 48}
!48 = !{!"any p2 pointer", !21, i64 0}
!49 = !{!"Vec_Ptr_t_", !18, i64 0, !18, i64 4, !48, i64 8}
!50 = !{!49, !18, i64 4}
!51 = !{!49, !18, i64 0}
!52 = !{!49, !48, i64 8}
!53 = !{!30, !26, i64 64}
!54 = !{!22, !22, i64 0}
!55 = !{!"Prs_Ntk_t_", !18, i64 0, !18, i64 4, !18, i64 4, !18, i64 4, !18, i64 4, !18, i64 4, !18, i64 4, !23, i64 8, !23, i64 16, !24, i64 24, !29, i64 32, !29, i64 48, !29, i64 64, !29, i64 80, !29, i64 96, !29, i64 112, !29, i64 128, !29, i64 144, !29, i64 160, !29, i64 176, !29, i64 192, !29, i64 208, !29, i64 224}
!56 = !{!55, !18, i64 0}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!27, !22, i64 8}
!60 = !{!27, !18, i64 4}
!61 = !{!27, !18, i64 0}
!62 = !{!21, !21, i64 0}
!63 = !{!55, !23, i64 8}
!64 = !{!55, !23, i64 16}
!65 = !{!55, !24, i64 24}
!66 = !{!"p1 _ZTS10Cba_Man_t_", !21, i64 0}
!67 = !{!"Cba_Ntk_t_", !66, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 20, !18, i64 20, !29, i64 24, !29, i64 40, !29, i64 56, !29, i64 72, !27, i64 88, !29, i64 104, !29, i64 120, !29, i64 136, !29, i64 152, !29, i64 168, !29, i64 184, !29, i64 200, !29, i64 216, !29, i64 232, !29, i64 248, !29, i64 264, !29, i64 280, !29, i64 296, !29, i64 312, !29, i64 328, !29, i64 344, !29, i64 360, !29, i64 376, !26, i64 392, !29, i64 400, !29, i64 416}
!68 = !{!67, !66, i64 0}
!69 = !{!67, !18, i64 12}
!70 = !{!"Cba_Man_t_", !22, i64 0, !22, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !24, i64 40, !29, i64 48, !29, i64 64, !29, i64 80, !29, i64 96, !17, i64 112, !17, i64 832, !17, i64 1192, !18, i64 1552, !49, i64 1560, !18, i64 1576, !27, i64 1584, !27, i64 1600, !21, i64 1616}
!71 = !{!70, !23, i64 16}
!72 = !{!70, !24, i64 40}
!73 = !{!70, !23, i64 24}
!74 = !{!"Hash_IntObj_t_", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!75 = !{!74, !18, i64 0}
!76 = !{!74, !18, i64 4}
!77 = !{!70, !23, i64 32}
!78 = !{!67, !18, i64 8}
!79 = !{!42, !42, i64 0}
!80 = !{!30, !18, i64 208}
!81 = !{!30, !18, i64 212}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, !39}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = distinct !{null}
!89 = !{!30, !18, i64 204}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !39}
!96 = distinct !{!96, !39, !57, !58}
!97 = distinct !{!97, !39, !58, !57}
!98 = !{!30, !22, i64 0}
!99 = !{!30, !22, i64 8}
!100 = distinct !{!100, !39}
!101 = !{!"long", !17, i64 0}
!102 = !{!"timespec", !101, i64 0, !101, i64 8}
!103 = !{!102, !101, i64 0}
!104 = !{!102, !101, i64 8}
!105 = distinct !{!105, !39}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39, !57, !58}
!112 = distinct !{!112, !39, !57, !58}
!113 = distinct !{!113, !39, !58, !57}
!114 = distinct !{!114, !39}
!115 = distinct !{!115, !39, !58, !57}
!116 = distinct !{!116, !39}
!117 = distinct !{!117, !39}
!118 = distinct !{!118, !39}
!119 = distinct !{!119, !39}
!120 = distinct !{!120, !39}
!121 = distinct !{!121, !39}
!122 = distinct !{!122, !39}
!123 = distinct !{!123, !39}
!124 = distinct !{!124, !39}
!125 = distinct !{!125, !39}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
!133 = distinct !{!133, !39}
!134 = distinct !{!134, !39}
!135 = distinct !{!135, !39}
!136 = distinct !{!136, !39}
!137 = distinct !{!137, !39}
!138 = distinct !{!138, !39}
!139 = distinct !{!139, !39}
!140 = distinct !{!140, !39}
!141 = distinct !{!141, !39}
!142 = distinct !{!142, !39}
!143 = distinct !{!143, !39}
!144 = !{!"Prs_VerInfo_t_", !18, i64 0, !18, i64 4, !22, i64 8, !17, i64 16}
!145 = !{!144, !22, i64 8}
!146 = !{!144, !18, i64 4}
!147 = !{!144, !18, i64 0}
!148 = !{ptr @Prs_CreateSignalIn}
!149 = distinct !{!149, !39}
!150 = distinct !{!150, !39}
!151 = distinct !{!151, !39}
!152 = distinct !{!152, !39}
!153 = !{!70, !22, i64 0}
!154 = !{!70, !22, i64 8}
!155 = !{!70, !18, i64 1552}
!156 = distinct !{!156, !39}
!157 = distinct !{!157, !39}
!158 = distinct !{!158, !39}
!159 = distinct !{!159, !39}
!160 = !{!74, !18, i64 12}
!161 = distinct !{!161, !39}
!162 = distinct !{!162, !39}
!163 = distinct !{!163, !39}
!164 = distinct !{!164, !39}
!165 = distinct !{!165, !39}
!166 = distinct !{!166, !39}
!167 = distinct !{!167, !39, !57, !58}
!168 = distinct !{!168, !39, !58, !57}
!169 = !{!"Prs_VerPrim_t_", !18, i64 0, !22, i64 8}
end_hunk_1
