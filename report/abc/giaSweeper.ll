inline.NumInlined: 393
inline.NumDeleted: 72
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Gia_ManGetCex:bb.a
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.t = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i32 %i.n, 1073741823
  %i.v = shl nuw nsw i32 %i.n, 1
  %spec.select.i = select i1 %i.u, i32 %i.v, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.n, %spec.select.i
  %.pre54 = load ptr, ptr %i.h, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %.pre54, null
  %i.w = zext nneg i32 %spec.select.i to i64
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @realloc(ptr noundef nonnull %.pre54, i64 noundef %i.x) #27
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.j
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.x) #26
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %i.aa = phi ptr [ %i.t, %bb.h ], [ %i.s, %bb.g ], [ %i.y, %bb.k ], [ %i.z, %bb.l ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ]
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !36
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !35
  %.pre55 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.c
  %.val23 = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.ab = sext i32 %i.m to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !46 ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.af = load i32, ptr %i.a, align 4, !tbaa !8   ; 7 uses
  %i.ag = load i32, ptr %3, align 8, !tbaa !35
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.o, label %.Vec_IntPush.exit38_crit_edge

.Vec_IntPush.exit38_crit_edge:                    ; preds = %bb.n
  %.pre59 = load ptr, ptr %i.h, align 8, !tbaa !36
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = icmp slt i32 %i.af, 16
  br i1 %i.ai, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !36  ; 2 uses
  %.not9.i.i36 = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i36, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.aj, i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i34

bb.r:                                             ; preds = %bb.p
  %i.al = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i34

bb.s:                                             ; preds = %bb.o
  %i.am = icmp samesign ult i32 %i.af, 1073741823
  %i.an = shl nuw nsw i32 %i.af, 1
  %spec.select.i31 = select i1 %i.am, i32 %i.an, i32 2147483647 ; 4 uses
  %.not.i9.i32 = icmp samesign ult i32 %i.af, %spec.select.i31
  %.pre60 = load ptr, ptr %i.h, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i32, label %bb.t, label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.s
  %.not9.i10.i33 = icmp eq ptr %.pre60, null
  %i.ao = zext nneg i32 %spec.select.i31 to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2                ; 2 uses
  br i1 %.not9.i10.i33, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = tail call ptr @realloc(ptr noundef nonnull %.pre60, i64 noundef %i.ap) #27
  br label %Vec_IntGrow.exit11.sink.split.i34

bb.v:                                             ; preds = %bb.t
  %i.ar = tail call noalias ptr @malloc(i64 noundef %i.ap) #26
  br label %Vec_IntGrow.exit11.sink.split.i34

Vec_IntGrow.exit11.sink.split.i34:                ; preds = %bb.u, %bb.v, %bb.q, %bb.r
  %i.as = phi ptr [ %i.al, %bb.r ], [ %i.ak, %bb.q ], [ %i.aq, %bb.u ], [ %i.ar, %bb.v ] ; 2 uses
  %spec.select.sink.i35 = phi i32 [ 16, %bb.r ], [ 16, %bb.q ], [ %spec.select.i31, %bb.u ], [ %spec.select.i31, %bb.v ]
  store ptr %i.as, ptr %i.h, align 8, !tbaa !36
  store i32 %spec.select.sink.i35, ptr %3, align 8, !tbaa !35
  %.pre61 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %Vec_IntPush.exit

bb.w:                                             ; preds = %bb.m
  %i.at = ashr i32 %i.ad, 1
  %.val30 = load ptr, ptr %i.j, align 8, !tbaa !132
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.val30, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !46
  %i.ax = icmp eq i32 %i.aw, 1
  %i.ay = zext i1 %i.ax to i32
  %i.az = and i32 %i.ad, 1
  %i.ba = xor i32 %i.az, %i.ay                    ; 3 uses
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !8   ; 7 uses
  %i.bc = load i32, ptr %3, align 8, !tbaa !35
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.x, label %.Vec_IntPush.exit46_crit_edge

.Vec_IntPush.exit46_crit_edge:                    ; preds = %bb.w
  %.pre56 = load ptr, ptr %i.h, align 8, !tbaa !36
  br label %Vec_IntPush.exit

bb.x:                                             ; preds = %bb.w
  %i.be = icmp slt i32 %i.bb, 16
  br i1 %i.be, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !36  ; 2 uses
  %.not9.i.i44 = icmp eq ptr %i.bf, null
  br i1 %.not9.i.i44, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i42

bb.aa:                                            ; preds = %bb.y
  %i.bh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit11.sink.split.i42

bb.ab:                                            ; preds = %bb.x
  %i.bi = icmp samesign ult i32 %i.bb, 1073741823
  %i.bj = shl nuw nsw i32 %i.bb, 1
  %spec.select.i39 = select i1 %i.bi, i32 %i.bj, i32 2147483647 ; 4 uses
  %.not.i9.i40 = icmp samesign ult i32 %i.bb, %spec.select.i39
  %.pre57 = load ptr, ptr %i.h, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i40, label %bb.ac, label %Vec_IntPush.exit

bb.ac:                                            ; preds = %bb.ab
  %.not9.i10.i41 = icmp eq ptr %.pre57, null
  %i.bk = zext nneg i32 %spec.select.i39 to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  br i1 %.not9.i10.i41, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bm = tail call ptr @realloc(ptr noundef nonnull %.pre57, i64 noundef %i.bl) #27
  br label %Vec_IntGrow.exit11.sink.split.i42

bb.ae:                                            ; preds = %bb.ac
  %i.bn = tail call noalias ptr @malloc(i64 noundef %i.bl) #26
  br label %Vec_IntGrow.exit11.sink.split.i42

Vec_IntGrow.exit11.sink.split.i42:                ; preds = %bb.ad, %bb.ae, %bb.z, %bb.aa
  %i.bo = phi ptr [ %i.bh, %bb.aa ], [ %i.bg, %bb.z ], [ %i.bm, %bb.ad ], [ %i.bn, %bb.ae ] ; 2 uses
  %spec.select.sink.i43 = phi i32 [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i39, %bb.ad ], [ %spec.select.i39, %bb.ae ]
  store ptr %i.bo, ptr %i.h, align 8, !tbaa !36
  store i32 %spec.select.sink.i43, ptr %3, align 8, !tbaa !35
  %.pre58 = load i32, ptr %i.a, align 4, !tbaa !8
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntGrow.exit11.sink.split.i42, %bb.ab, %.Vec_IntPush.exit46_crit_edge, %Vec_IntGrow.exit11.sink.split.i34, %bb.s, %.Vec_IntPush.exit38_crit_edge, %Vec_IntGrow.exit11.sink.split.i, %bb.i, %.Vec_IntPush.exit_crit_edge
  %.sink76 = phi i32 [ %.pre61, %Vec_IntGrow.exit11.sink.split.i34 ], [ %.pre55, %Vec_IntGrow.exit11.sink.split.i ], [ %i.n, %.Vec_IntPush.exit_crit_edge ], [ %i.n, %bb.i ], [ %i.af, %.Vec_IntPush.exit38_crit_edge ], [ %i.af, %bb.s ], [ %i.bb, %.Vec_IntPush.exit46_crit_edge ], [ %i.bb, %bb.ab ], [ %.pre58, %Vec_IntGrow.exit11.sink.split.i42 ] ; 2 uses
  %.sink72 = phi ptr [ %i.as, %Vec_IntGrow.exit11.sink.split.i34 ], [ %i.aa, %Vec_IntGrow.exit11.sink.split.i ], [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre54, %bb.i ], [ %.pre59, %.Vec_IntPush.exit38_crit_edge ], [ %.pre60, %bb.s ], [ %.pre56, %.Vec_IntPush.exit46_crit_edge ], [ %.pre57, %bb.ab ], [ %i.bo, %Vec_IntGrow.exit11.sink.split.i42 ]
  %.sink = phi i32 [ 2, %Vec_IntGrow.exit11.sink.split.i34 ], [ 2, %Vec_IntGrow.exit11.sink.split.i ], [ 2, %.Vec_IntPush.exit_crit_edge ], [ 2, %bb.i ], [ 2, %.Vec_IntPush.exit38_crit_edge ], [ 2, %bb.s ], [ %i.ba, %.Vec_IntPush.exit46_crit_edge ], [ %i.ba, %bb.ab ], [ %i.ba, %Vec_IntGrow.exit11.sink.split.i42 ]
  %i.bp = add nsw i32 %.sink76, 1
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !8
  %i.bq = sext i32 %.sink76 to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.sink72, i64 %i.bq
  store i32 %.sink, ptr %i.br, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val26 = load i32, ptr %i.c, align 8, !tbaa !76
  %.val27 = load ptr, ptr %i.d, align 8, !tbaa !77 ; 2 uses
  %i.bs = getelementptr i8, ptr %.val27, i64 4
  %.val27.val = load i32, ptr %i.bs, align 4, !tbaa !8
  %i.bt = sub nsw i32 %.val27.val, %.val26
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.b, label %.critedge, !llvm.loop !133

.critedge:                                        ; preds = %bb.b, %Vec_IntPush.exit, %bb.a
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @Gia_SweeperCondCheckUnsat(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val4762 = load i32, ptr %i.l, align 4, !tbaa !8
  %i.m = icmp sgt i32 %.val4762, 0
  br i1 %i.m, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.b, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %i.o = phi ptr [ %i.k, %.lr.ph ], [ %i.bh, %Vec_IntPush.exit ]
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val48 = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !46
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val.i = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !46   ; 2 uses
  %i.z = ashr i32 %i.y, 1                         ; 2 uses
  tail call fastcc void @Gia_ManCnfNodeAddToSolver(ptr noundef nonnull %i.b, i32 noundef %i.z)
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !39  ; 6 uses
  %.val51 = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.ab = getelementptr i8, ptr %.val51, i64 8
  %.val51.val = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.val51.val, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46
  %i.af = and i32 %i.y, 1
  %i.ag = xor i32 %i.af, %i.ae
  %i.ah = xor i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8  ; 7 uses
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !35
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.am = icmp slt i32 %i.aj, 16
  br i1 %i.am, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.aq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.ar = phi ptr [ %i.ap, %bb.e ], [ %i.aq, %bb.f ]
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %i.aj, 1073741823
  %i.at = shl nuw nsw i32 %i.aj, 1
  %spec.select.i = select i1 %i.as, i32 %i.at, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.aj, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.av, null
  %i.aw = zext nneg i32 %spec.select.i to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call ptr @realloc(ptr noundef nonnull %i.av, i64 noundef %i.ax) #27
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.az = tail call noalias ptr @malloc(i64 noundef %i.ax) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.ay, %bb.i ], [ %i.az, %bb.j ]
  store ptr %i.ba, ptr %i.au, align 8, !tbaa !36
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.aa, align 8, !tbaa !35
  %.pre = load i32, ptr %i.ai, align 4, !tbaa !8
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.bb = phi i32 [ %i.aj, %bb.b ], [ %i.aj, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36
  %i.be = add nsw i32 %i.bb, 1
  store i32 %i.be, ptr %i.ai, align 4, !tbaa !8
  %i.bf = sext i32 %i.bb to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bf
  store i32 %i.ah, ptr %i.bg, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !38  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %.val47 = load i32, ptr %i.bi, align 4, !tbaa !8
  %i.bj = sext i32 %.val47 to i64
  %i.bk = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %i.bk, label %bb.b, label %.critedge, !llvm.loop !134

.critedge:                                        ; preds = %Vec_IntPush.exit, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !113
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !124
  %.not.i = icmp eq i32 %i.bo, %i.bq
  br i1 %.not.i, label %sat_solver_compress.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.br = tail call i32 @sat_solver_simplify(ptr noundef nonnull %i.bm) #24 ; 0 uses
  br label %sat_solver_compress.exit

sat_solver_compress.exit:                         ; preds = %.critedge, %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %sat_solver_compress.exit
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !44
  %i.bv = sext i32 %i.bt to i64
  %i.bw = mul nsw i64 %i.bv, 1000000
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.bx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #24
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %Abc_Clock.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load i64, ptr %6, align 8, !tbaa !47
  %i.ca = mul nsw i64 %i.bz, 1000000
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !49
  %i.cd = sdiv i64 %i.cc, 1000
  %i.ce = add nsw i64 %i.cd, %i.ca
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.m, %bb.n
  %.0.i = phi i64 [ %i.ce, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cf = add nsw i64 %.0.i, %i.bw
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 512
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !125
  br label %bb.o

bb.o:                                             ; preds = %Abc_Clock.exit, %sat_solver_compress.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ch = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #24
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %Abc_Clock.exit53, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cj = load i64, ptr %5, align 8, !tbaa !47
  %.neg64 = mul i64 %i.cj, -1000000
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !49
  %.neg = sdiv i64 %i.cl, -1000
  %.neg65 = add i64 %.neg, %.neg64
  br label %Abc_Clock.exit53

Abc_Clock.exit53:                                 ; preds = %bb.o, %bb.p
  %.0.i52.neg66 = phi i64 [ %.neg65, %bb.p ], [ 1, %bb.o ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !44
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !39  ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %.val50 = load ptr, ptr %i.co, align 8, !tbaa !36 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 4
  %.val = load i32, ptr %i.cp, align 4, !tbaa !8
  %i.cq = sext i32 %.val to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !34
  %i.cu = sext i32 %i.ct to i64
  %i.cv = call i32 @sat_solver_solve(ptr noundef %i.cm, ptr noundef %.val50, ptr noundef %i.cr, i64 noundef %i.cu, i64 noundef 0, i64 noundef 0, i64 noundef 0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.cw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #24
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %Abc_Clock.exit55, label %bb.q

bb.q:                                             ; preds = %Abc_Clock.exit53
  %i.cy = load i64, ptr %4, align 8, !tbaa !47
  %i.cz = mul nsw i64 %i.cy, 1000000
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !49
  %i.dc = sdiv i64 %i.db, 1000
  %i.dd = add nsw i64 %i.dc, %i.cz
  br label %Abc_Clock.exit55

Abc_Clock.exit55:                                 ; preds = %Abc_Clock.exit53, %bb.q
  %.0.i54 = phi i64 [ %i.dd, %bb.q ], [ -1, %Abc_Clock.exit53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.de = add i64 %.0.i54, %.0.i52.neg66
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !55
  %i.dh = add nsw i64 %i.de, %i.dg
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !55
  switch i32 %i.cv, label %bb.v [
    i32 -1, label %bb.r
    i32 1, label %bb.t
  ]

bb.r:                                             ; preds = %Abc_Clock.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.di = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #24
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %Abc_Clock.exit57, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = load i64, ptr %3, align 8, !tbaa !47
  %i.dl = mul nsw i64 %i.dk, 1000000
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !49
  %i.do = sdiv i64 %i.dn, 1000
  %i.dp = add nsw i64 %i.do, %i.dl
  br label %Abc_Clock.exit57

Abc_Clock.exit57:                                 ; preds = %bb.r, %bb.s
  %.0.i56 = phi i64 [ %i.dp, %bb.s ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.dq = add i64 %.0.i56, %.0.i52.neg66
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !57
  %i.dt = add nsw i64 %i.dq, %i.ds
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !57
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 2 uses
  %7 = load i32, ptr %i.du, align 4, !tbaa !61
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr %i.du, align 4, !tbaa !61
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 2 uses
  %i.dv = load i32, ptr %9, align 4, !tbaa !63
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %9, align 4, !tbaa !63
  br label %bb.x

bb.t:                                             ; preds = %Abc_Clock.exit55
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40
  %i.ea = load ptr, ptr %i.bl, align 8, !tbaa !44
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !43 ; 2 uses
  %i.ed = call fastcc ptr @Gia_ManGetCex(ptr noundef %i.dx, ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef %i.ec) ; 0 uses
  store ptr %i.ec, ptr %i.f, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ee = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #24
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %Abc_Clock.exit59, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = load i64, ptr %2, align 8, !tbaa !47
  %i.eh = mul nsw i64 %i.eg, 1000000
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !49
  %i.ek = sdiv i64 %i.ej, 1000
  %i.el = add nsw i64 %i.ek, %i.eh
  br label %Abc_Clock.exit59

Abc_Clock.exit59:                                 ; preds = %bb.t, %bb.u
  %.0.i58 = phi i64 [ %i.el, %bb.u ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.em = add i64 %.0.i58, %.0.i52.neg66
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !56
  %i.ep = add nsw i64 %i.em, %i.eo
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !56
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !60
  br label %bb.x

bb.v:                                             ; preds = %Abc_Clock.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.eq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #24
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %Abc_Clock.exit61, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = load i64, ptr %1, align 8, !tbaa !47
  %i.et = mul nsw i64 %i.es, 1000000
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !49
  %i.ew = sdiv i64 %i.ev, 1000
  %i.ex = add nsw i64 %i.ew, %i.et
  br label %Abc_Clock.exit61

Abc_Clock.exit61:                                 ; preds = %bb.v, %bb.w
  %.0.i60 = phi i64 [ %i.ex, %bb.w ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.ey = add i64 %.0.i60, %.0.i52.neg66
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !58
  %i.fb = add nsw i64 %i.ey, %i.fa
  store i64 %i.fb, ptr %i.ez, align 8, !tbaa !58
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !62
  br label %bb.x

bb.x:                                             ; preds = %Abc_Clock.exit61, %Abc_Clock.exit59, %Abc_Clock.exit57
  %.0 = phi i32 [ 1, %Abc_Clock.exit57 ], [ 0, %Abc_Clock.exit59 ], [ -1, %Abc_Clock.exit61 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_SweeperGraft(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16         ; 3 uses
  %.val45 = load i32, ptr %i.a, align 8, !tbaa !76 ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 64
  %.val46 = load ptr, ptr %i.b, align 8, !tbaa !77 ; 2 uses
  %i.c = getelementptr i8, ptr %.val46, i64 4
  %.val46.val = load i32, ptr %i.c, align 4, !tbaa !8
  %i.d = sub nsw i32 %.val46.val, %.val45         ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 32
  %.val47 = load ptr, ptr %i.f, align 8, !tbaa !74 ; 7 uses
  %i.g = getelementptr i8, ptr %.val46, i64 8
  %.val48.val = load ptr, ptr %i.g, align 8, !tbaa !36 ; 6 uses
  %.not = icmp eq ptr %.val47, null
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = getelementptr i8, ptr %0, i64 64
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not42 = icmp eq ptr %1, null
  br i1 %.not42, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %.val54.us = load ptr, ptr %i.j, align 8, !tbaa !74 ; 2 uses
  %.val55.us = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.l = getelementptr i8, ptr %.val55.us, i64 8
  %.val55.val.us = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.m = ptrtoint ptr %.val54.us to i64
  %wide.trip.count77 = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.split.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %bb.b ], [ 0, %.lr.ph.split.split.us ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv74
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [12 x i8], ptr %.val47, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val55.val.us, i64 %indvars.iv74
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %.val54.us, i64 %i.t
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = and i64 %i.v, -2
  %i.x = sub i64 %i.w, %i.m
  %i.y = sdiv exact i64 %i.x, 12
  %i.z = trunc i64 %i.y to i32
  %i.aa = trunc i64 %i.v to i32
  %i.ab = and i32 %i.aa, 1
  %i.ac = shl nsw i32 %i.z, 1
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !80
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.critedge, label %bb.b, !llvm.loop !135

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.val = load ptr, ptr %i.h, align 8, !tbaa !36  ; 5 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val.i = load ptr, ptr %i.ai, align 8, !tbaa !36 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.aj = icmp ult i32 %i.d, 4
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.split.split.new

.lr.ph.split.split.new:                           ; preds = %.lr.ph.split.split
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.split.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.new ], [ %niter.next.3, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !46
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %.val47, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !46
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.as, ptr %i.at, align 4, !tbaa !80
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv.next
  %i.av = load i32, ptr %i.au, align 4, !tbaa !46
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [12 x i8], ptr %.val47, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !46
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !80
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv.next.1
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !46
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [12 x i8], ptr %.val47, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next.1
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !46
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !80
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv.next.2
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !46
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [12 x i8], ptr %.val47, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next.2
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !46
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !80
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit95.unr-lcssa, label %bb.c, !llvm.loop !135

.critedge.loopexit95.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit95.unr-lcssa, %.lr.ph.split.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.split ], [ %indvars.iv.next.3, %.critedge.loopexit95.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.val48.val, i64 %indvars.iv.epil
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !46
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [12 x i8], ptr %.val47, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.epil
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !46
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !46
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !80
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.d, !llvm.loop !136

.critedge:                                        ; preds = %.critedge.loopexit95.unr-lcssa, %bb.d, %bb.b, %.lr.ph, %bb.a
  %i.ci = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !52 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph63, label %.critedge2

.lr.ph63:                                         ; preds = %.critedge, %bb.g
  %i.cm = phi i32 [ %i.dl, %bb.g ], [ %i.ck, %.critedge ]
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %bb.g ], [ 0, %.critedge ] ; 2 uses
  %.val43 = load ptr, ptr %i.ci, align 8, !tbaa !74 ; 2 uses
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %.val43, i64 %indvars.iv79 ; 4 uses
  %.not39 = icmp eq ptr %.val43, null
  br i1 %.not39, label %.critedge2.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph63
  %.val44 = load i64, ptr %i.cn, align 4          ; 5 uses
  %i.co = and i64 %.val44, 2147483648
  %.not.i = icmp ne i64 %i.co, 0
  %i.cp = and i64 %.val44, 536870911              ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 536870911
  %narrow.i.not = or i1 %.not.i, %i.cq
  br i1 %narrow.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cr = sub nsw i64 0, %i.cp
  %i.cs = getelementptr inbounds [12 x i8], ptr %i.cn, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !80
  %i.cv = trunc i64 %.val44 to i32
  %i.cw = lshr i32 %i.cv, 29
  %i.cx = and i32 %i.cw, 1
  %i.cy = xor i32 %i.cu, %i.cx
  %i.cz = lshr i64 %.val44, 32
end_hunk_0
