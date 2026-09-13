Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclBuffer?download=true
inline.NumInlined: 437
inline.NumDeleted: 80
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_BufFindNonBuffDriver:bb.a
tailrecurse:                                      ; preds = %.lr.ph
  %.val6 = load ptr, ptr %.tr811, align 8, !tbaa !40
  %i.d = getelementptr i8, ptr %.tr811, i64 32
  %.val7 = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr i8, ptr %.val6, i64 32
  %.val6.val = load ptr, ptr %i.e, align 8, !tbaa !31
  %.val7.val = load i32, ptr %.val7, align 4, !tbaa !42
  %i.f = getelementptr i8, ptr %.val6.val, i64 8
  %.val6.val.val = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.g = sext i32 %.val7.val to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %.val6.val.val, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 20
  %.val = load i32, ptr %i.j, align 4
  %i.k = and i32 %.val, 15
  %.not = icmp eq i32 %i.k, 7
  br i1 %.not, label %.lr.ph, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %.lr.ph, %tailrecurse, %bb.a
  %.tr8.lcssa = phi ptr [ %1, %bb.a ], [ %i.i, %tailrecurse ], [ %.tr811, %.lr.ph ]
  ret ptr %.tr8.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @Abc_BufCountNonCritical(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !48
  %i.d = getelementptr i8, ptr %1, i64 44         ; 2 uses
  %.val1219 = load i32, ptr %i.d, align 4, !tbaa !53
  %i.e = icmp sgt i32 %.val1219, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr i8, ptr %0, i64 40
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.val13 = load ptr, ptr %1, align 8, !tbaa !40
  %.val14 = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.m = getelementptr i8, ptr %.val13, i64 32
  %.val13.val = load ptr, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr i8, ptr %.val13.val, i64 8
  %.val13.val.val = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val14, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %.val13.val.val, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = load i32, ptr %i.g, align 8, !tbaa !63
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !60
  %.val9.i = load i32, ptr %i.i, align 8, !tbaa !43
  %i.u = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.u, align 8, !tbaa !47
  %i.v = sext i32 %.val9.i to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42
  %.val13.i = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.y = getelementptr i8, ptr %i.s, i64 16       ; 2 uses
  %.val14.i = load i32, ptr %i.y, align 8, !tbaa !43
  %i.z = getelementptr i8, ptr %.val13.i, i64 8
  %.val13.val.i = load ptr, ptr %i.z, align 8, !tbaa !47
  %i.aa = sext i32 %.val14.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val13.val.i, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !42
  %i.ad = tail call i32 @Abc_NodeFindFanin(ptr noundef %i.s, ptr noundef nonnull %1) #19
  %.val10.i = load ptr, ptr %i.k, align 8, !tbaa !59
  %.val11.i = load ptr, ptr %i.l, align 8, !tbaa !61
  %.val12.i = load i32, ptr %i.y, align 8, !tbaa !43 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val10.i, i64 8
  %.val10.val.i = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.af = getelementptr i8, ptr %.val11.i, i64 8
  %.val11.val.i = load ptr, ptr %i.af, align 8, !tbaa !47
  %i.ag = sext i32 %.val12.i to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val10.val.i, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !42
  %i.aj = add nsw i32 %i.ai, %i.ad
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %.val11.val.i, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42
  %i.an = add i32 %i.x, %i.ac
  %i.ao = add i32 %i.an, %i.am
  %i.ap = sub i32 %i.t, %i.ao
  %i.aq = icmp sgt i32 %i.ap, 3500
  br i1 %i.aq, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !89  ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !48 ; 7 uses
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !49
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.aw = icmp slt i32 %i.at, 16
  br i1 %i.aw, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ay, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ba = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.bb = phi ptr [ %i.az, %bb.f ], [ %i.ba, %bb.g ]
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !47
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.bc = icmp samesign ult i32 %i.at, 1073741823
  %i.bd = shl nuw nsw i32 %i.at, 1
  %spec.select.i = select i1 %i.bc, i32 %i.bd, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.at, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.bf, null
  %i.bg = zext nneg i32 %spec.select.i to i64
  %i.bh = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = tail call ptr @realloc(ptr noundef nonnull %i.bf, i64 noundef %i.bh) #21
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bh) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = phi ptr [ %i.bi, %bb.j ], [ %i.bj, %bb.k ]
  store ptr %i.bk, ptr %i.be, align 8, !tbaa !47
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ar, align 8, !tbaa !49
  %.pre = load i32, ptr %i.as, align 4, !tbaa !48
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.bl = phi i32 [ %i.at, %bb.c ], [ %i.at, %bb.h ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = add nsw i32 %i.bl, 1
  store i32 %i.bo, ptr %i.as, align 4, !tbaa !48
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bp
  store i32 %.val12.i, ptr %i.bq, align 4, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %Vec_IntPush.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val12 = load i32, ptr %i.d, align 4, !tbaa !53
  %i.br = sext i32 %.val12 to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.b, label %.critedge.loopexit, !llvm.loop !149

.critedge.loopexit:                               ; preds = %bb.m
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !89
  %.phi.trans.insert = getelementptr i8, ptr %.pre22, i64 4
  %.val11.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.val11 = phi i32 [ %.val11.pre, %.critedge.loopexit ], [ 0, %bb.a ]
  ret i32 %.val11
}

; Function Attrs: nounwind uwtable
define void @Abc_BufPerformOne(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.val204 = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr i8, ptr %.val204, i64 8
  %.val204.val = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.val204.val, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 32 uses
  %i.h = tail call i32 @Abc_BufCountNonCritical(ptr noundef %0, ptr noundef %i.g) ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 44       ; 5 uses
  %.val225 = load i32, ptr %i.i, align 4, !tbaa !53
  %i.j = sub nsw i32 %.val225, %i.h               ; 2 uses
  %.not = icmp eq i32 %3, 0                       ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.g, i64 16
  %.val214 = load i32, ptr %i.k, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = tail call ptr @Mio_GateReadName(ptr noundef %i.m) #19
  %i.o = getelementptr i8, ptr %i.g, i64 28
  %.val209 = load i32, ptr %i.o, align 4, !tbaa !39
  %.val224 = load i32, ptr %i.i, align 4, !tbaa !53
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %.val214, ptr noundef %i.n, i32 noundef %.val209, i32 noundef %.val224, i32 noundef %i.j) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = icmp sgt i32 %i.j, 0                     ; 4 uses
  %i.r = icmp sgt i32 %i.h, 1
  %or.cond = and i1 %i.r, %i.q
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.t = tail call ptr @Abc_NtkCreateNodeBuf(ptr noundef %i.s, ptr noundef nonnull %i.g) #19 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !89   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val217265 = load i32, ptr %i.w, align 4, !tbaa !48
  %i.x = icmp sgt i32 %.val217265, 0
  br i1 %i.x, label %.lr.ph268, label %.critedge

.lr.ph268:                                        ; preds = %bb.d, %bb.f
  %i.y = phi ptr [ %i.aj, %bb.f ], [ %i.v, %bb.d ] ; 2 uses
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val216 = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val216, i64 %indvars.iv300
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !42
  %i.ad = getelementptr i8, ptr %i.z, i64 32
  %.val203 = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr i8, ptr %.val203, i64 8
  %.val203.val = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val203.val, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph268
  tail call void @Abc_ObjPatchFanin(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.g, ptr noundef %i.t) #19
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph268
  %i.aj = phi ptr [ %.pre, %bb.e ], [ %i.y, %.lr.ph268 ] ; 2 uses
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val217 = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.al = sext i32 %.val217 to i64
  %i.am = icmp slt i64 %indvars.iv.next301, %i.al
  br i1 %i.am, label %.lr.ph268, label %.critedge, !llvm.loop !150

.critedge:                                        ; preds = %bb.f, %bb.d
  tail call void @Abc_BufCreateEdges(ptr noundef nonnull %0, ptr noundef %i.t)
  tail call void @Abc_BufUpdateArr(ptr noundef nonnull %0, ptr noundef %i.t)
  tail call void @Abc_BufUpdateDep(ptr noundef nonnull %0, ptr noundef %i.t)
  tail call void @Abc_BufAddToQue(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  tail call void @Abc_BufAddToQue(ptr noundef nonnull %0, ptr noundef %i.t)
  tail call void @Abc_SclTimeIncUpdateLevel(ptr noundef %i.t) #19
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !91
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !91
  br i1 %.not, label %.loopexit, label %4

4:                                                ; preds = %.critedge
  %puts194 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.aq = icmp eq i32 %2, 0
  %or.cond3 = and i1 %i.aq, %i.q
  br i1 %or.cond3, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %i.g, i64 20
  %.val206 = load i32, ptr %i.ar, align 4
  %i.as = and i32 %.val206, 15
  %.not233 = icmp eq i32 %i.as, 7
  %.val222.pr.pre303 = load i32, ptr %i.i, align 4, !tbaa !53 ; 3 uses
  br i1 %.not233, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr %0, align 8, !tbaa !67
  %i.au = icmp sgt i32 %.val222.pr.pre303, %i.at
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.aw = tail call ptr @Abc_NtkDupObj(ptr noundef %i.av, ptr noundef nonnull %i.g, i32 noundef 0) #19 ; 7 uses
  %i.ax = getelementptr i8, ptr %i.g, i64 28      ; 4 uses
  %.val208255 = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.ay = icmp sgt i32 %.val208255, 0
  br i1 %i.ay, label %.lr.ph258, label %.critedge5

.lr.ph258:                                        ; preds = %bb.j
  %i.az = getelementptr i8, ptr %i.g, i64 32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph258, %bb.k
  %indvars.iv291 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next292, %bb.k ] ; 2 uses
  %.val212 = load ptr, ptr %i.g, align 8, !tbaa !40
  %.val213 = load ptr, ptr %i.az, align 8, !tbaa !41
  %i.ba = getelementptr i8, ptr %.val212, i64 32
  %.val212.val = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bb = getelementptr i8, ptr %.val212.val, i64 8
  %.val212.val.val = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val213, i64 %indvars.iv291
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !42
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %.val212.val.val, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36
  tail call void @Abc_ObjAddFanin(ptr noundef %i.aw, ptr noundef %i.bg) #19
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %.val208 = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.bh = sext i32 %.val208 to i64
  %i.bi = icmp slt i64 %indvars.iv.next292, %i.bh
  br i1 %i.bi, label %bb.k, label %.critedge5, !llvm.loop !151

.critedge5:                                       ; preds = %bb.k, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !90
  tail call void @Abc_NodeCollectFanouts(ptr noundef nonnull %i.g, ptr noundef %i.bk) #19
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %.val195259 = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.bn = icmp sgt i32 %.val195259, 1
  br i1 %i.bn, label %.lr.ph261, label %.critedge7

.lr.ph261:                                        ; preds = %.critedge5, %.lr.ph261
  %indvars.iv294 = phi i64 [ %indvars.iv.next295, %.lr.ph261 ], [ 0, %.critedge5 ] ; 2 uses
  %i.bo = phi ptr [ %i.bs, %.lr.ph261 ], [ %i.bl, %.critedge5 ]
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val197 = load ptr, ptr %i.bp, align 8, !tbaa !35
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val197, i64 %indvars.iv294
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !36
  tail call void @Abc_ObjPatchFanin(ptr noundef %i.br, ptr noundef nonnull %i.g, ptr noundef %i.aw) #19
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !90 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 4
  %.val195 = load i32, ptr %i.bt, align 4, !tbaa !34
  %i.bu = sdiv i32 %.val195, 2
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next295, %i.bv
  br i1 %i.bw, label %.lr.ph261, label %.critedge7, !llvm.loop !152

.critedge7:                                       ; preds = %.lr.ph261, %.critedge5
  tail call void @Abc_BufCreateEdges(ptr noundef nonnull %0, ptr noundef %i.aw)
  %i.bx = getelementptr i8, ptr %0, i64 40
  %.val226 = load ptr, ptr %i.bx, align 8, !tbaa !60
  %i.by = getelementptr i8, ptr %i.g, i64 16
  %.val227 = load i32, ptr %i.by, align 8, !tbaa !43
  %i.bz = getelementptr i8, ptr %.val226, i64 8
  %.val226.val = load ptr, ptr %i.bz, align 8, !tbaa !47 ; 2 uses
  %i.ca = sext i32 %.val227 to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.val226.val, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !42
  %i.cd = getelementptr i8, ptr %i.aw, i64 16
  %.val229 = load i32, ptr %i.cd, align 8, !tbaa !43
  %i.ce = sext i32 %.val229 to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr %.val226.val, i64 %i.ce
  store i32 %i.cc, ptr %i.cf, align 4, !tbaa !42
  tail call void @Abc_BufUpdateDep(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  tail call void @Abc_BufUpdateDep(ptr noundef nonnull %0, ptr noundef %i.aw)
  tail call void @Abc_BufAddToQue(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  tail call void @Abc_BufAddToQue(ptr noundef nonnull %0, ptr noundef %i.aw)
  %.val207262 = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.cg = icmp sgt i32 %.val207262, 0
  br i1 %i.cg, label %.lr.ph264, label %.critedge9

.lr.ph264:                                        ; preds = %.critedge7
  %i.ch = getelementptr i8, ptr %i.g, i64 32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph264, %bb.l
  %indvars.iv297 = phi i64 [ 0, %.lr.ph264 ], [ %indvars.iv.next298, %bb.l ] ; 2 uses
  %.val210 = load ptr, ptr %i.g, align 8, !tbaa !40
  %.val211 = load ptr, ptr %i.ch, align 8, !tbaa !41
  %i.ci = getelementptr i8, ptr %.val210, i64 32
  %.val210.val = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.cj = getelementptr i8, ptr %.val210.val, i64 8
  %.val210.val.val = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val211, i64 %indvars.iv297
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !42
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %.val210.val.val, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !36
  tail call void @Abc_BufAddToQue(ptr noundef nonnull %0, ptr noundef %i.co)
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %.val207 = load i32, ptr %i.ax, align 4, !tbaa !39
  %i.cp = sext i32 %.val207 to i64
  %i.cq = icmp slt i64 %indvars.iv.next298, %i.cp
  br i1 %i.cq, label %bb.l, label %.critedge9, !llvm.loop !153

.critedge9:                                       ; preds = %bb.l, %.critedge7
  tail call void @Abc_SclTimeIncUpdateLevel(ptr noundef nonnull %i.aw) #19
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !92
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !92
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %.critedge9
  %puts193 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.g
  %.val221.pre = load i32, ptr %i.i, align 4, !tbaa !53 ; 2 uses
  br i1 %i.q, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.h, %bb.m, %bb.i
  %.val222 = phi i32 [ %.val222.pr.pre303, %bb.i ], [ %.val222.pr.pre303, %bb.h ], [ %.val221.pre, %bb.m ] ; 3 uses
  %i.cu = icmp sgt i32 %.val222, 8
  br i1 %i.cu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.val221 = phi i32 [ %.val222, %.thread ], [ %.val221.pre, %bb.m ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !83
  %i.cx = icmp sgt i32 %.val221, %i.cw
  br i1 %i.cx, label %bb.o, label %bb.ab

bb.o:                                             ; preds = %bb.n, %.thread
  %.val220 = phi i32 [ %.val221, %bb.n ], [ %.val222, %.thread ]
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.cz = getelementptr i8, ptr %i.cy, i64 32
  %.val215 = load ptr, ptr %i.cz, align 8, !tbaa !31
  %i.da = getelementptr i8, ptr %.val215, i64 4
  %.val215.val = load i32, ptr %i.da, align 4, !tbaa !34 ; 5 uses
  %i.db = sitofp i32 %.val220 to double
  %sqrt = tail call double @sqrt(double %i.db) #19
  %abs = tail call double @llvm.fabs.f64(double %sqrt)
  %i.dc = fptosi double %abs to i32               ; 4 uses
  %i.dd = tail call noundef range(i32 -2147483648, 11) i32 @llvm.smin.i32(i32 %i.dc, i32 10) ; 9 uses
  %.val219 = load i32, ptr %i.i, align 4, !tbaa !53 ; 2 uses
  %i.de = sdiv i32 %.val219, %i.dd                ; 2 uses
  %i.df = add nsw i32 %i.de, 1                    ; 2 uses
  %i.dg = srem i32 %.val219, %i.dd                ; 2 uses
  %i.dh = mul nsw i32 %i.df, %i.dg                ; 2 uses
  %i.di = zext i1 %i.q to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !95
  %i.dl = add nsw i32 %i.dk, %i.di
  store i32 %i.dl, ptr %i.dj, align 8, !tbaa !95
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !90
  tail call void @Abc_NodeCollectFanouts(ptr noundef nonnull %i.g, ptr noundef %i.dn) #19
  %i.do = getelementptr i8, ptr %i.g, i64 20
  %.val205 = load i32, ptr %i.do, align 4
  %i.dp = and i32 %.val205, 15
  %.not234 = icmp eq i32 %i.dp, 7
  br i1 %.not234, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dq = tail call i32 @Abc_NodeIsBuf(ptr noundef nonnull %i.g) #19
  %.not192 = icmp eq i32 %i.dq, 0
  br i1 %.not192, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !93
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 8, !tbaa !93
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 256
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !86
  %i.dx = tail call ptr @Mio_LibraryReadInv(ptr noundef %i.dw) #19
  %i.dy = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !45
  %i.dz = getelementptr i8, ptr %0, i64 24
  %.val230 = load ptr, ptr %i.dz, align 8, !tbaa !59
  %i.ea = getelementptr i8, ptr %0, i64 32
  %.val231 = load ptr, ptr %i.ea, align 8, !tbaa !61
  %i.eb = getelementptr i8, ptr %i.g, i64 16
  %.val232 = load i32, ptr %i.eb, align 8, !tbaa !43
  %i.ec = getelementptr i8, ptr %.val230, i64 8
  %.val230.val = load ptr, ptr %i.ec, align 8, !tbaa !47
  %i.ed = getelementptr i8, ptr %.val231, i64 8
  %.val231.val = load ptr, ptr %i.ed, align 8, !tbaa !47
  %i.ee = sext i32 %.val232 to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.val230.val, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !42
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %.val231.val, i64 %i.eh
  store i32 1000, ptr %i.ei, align 4, !tbaa !42
  %6 = icmp sgt i32 %i.dc, 0
  br i1 %6, label %.lr.ph.a, label %._crit_edge

.lr.ph.a:                                         ; preds = %bb.q, %.lr.ph.a
  %.4235 = phi i32 [ %i.el, %.lr.ph.a ], [ 0, %bb.q ]
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.ek = tail call ptr @Abc_NtkCreateNodeInv(ptr noundef %i.ej, ptr noundef nonnull %i.g) #19 ; 0 uses
  %i.el = add nuw nsw i32 %.4235, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.el, %i.dd
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.a, !llvm.loop !154

._crit_edge:                                      ; preds = %.lr.ph.a, %bb.q
  br i1 %.not, label %bb.s, label %.sink.split

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !94
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !94
  %7 = icmp sgt i32 %i.dc, 0
  br i1 %7, label %.lr.ph238, label %._crit_edge239

.lr.ph238:                                        ; preds = %bb.r, %.lr.ph238
  %.5236 = phi i32 [ %i.er, %.lr.ph238 ], [ 0, %bb.r ]
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.eq = tail call ptr @Abc_NtkCreateNodeBuf(ptr noundef %i.ep, ptr noundef nonnull %i.g) #19 ; 0 uses
  %i.er = add nuw nsw i32 %.5236, 1               ; 2 uses
  %exitcond270.not = icmp eq i32 %i.er, %i.dd
  br i1 %exitcond270.not, label %._crit_edge239, label %.lr.ph238, !llvm.loop !155

._crit_edge239:                                   ; preds = %.lr.ph238, %bb.r
  br i1 %.not, label %bb.s, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge239, %._crit_edge
  %.str.24.sink = phi ptr [ @.str.23, %._crit_edge ], [ @.str.24, %._crit_edge239 ]
  %i.es = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.24.sink, i32 noundef %i.dd) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %._crit_edge239, %._crit_edge
  %i.et = load ptr, ptr %i.dm, align 8, !tbaa !90 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 4
  %.val240 = load i32, ptr %i.eu, align 4, !tbaa !34
  %i.ev = icmp sgt i32 %.val240, 0
  br i1 %i.ev, label %.lr.ph243.preheader, label %.critedge11.preheader

.lr.ph243.preheader:                              ; preds = %bb.s
  %i.ew = sext i32 %i.dh to i64
  br label %.lr.ph243

.critedge11.preheader:                            ; preds = %bb.v, %bb.s
  %8 = icmp sgt i32 %i.dc, 0
  br i1 %8, label %.critedge11.preheader269, label %._crit_edge249.thread

.critedge11.preheader269:                         ; preds = %.critedge11.preheader
  %i.ex = sext i32 %.val215.val to i64
  %wide.trip.count = zext nneg i32 %i.dd to i64
  br label %.critedge11

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph243.preheader ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %i.ey = phi ptr [ %i.et, %.lr.ph243.preheader ], [ %i.fq, %bb.v ]
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %.val196 = load ptr, ptr %i.ez, align 8, !tbaa !35
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.val196, i64 %indvars.iv
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !36
  %i.fc = icmp slt i64 %indvars.iv, %i.ew
  %i.fd = trunc i64 %indvars.iv to i32            ; 2 uses
  br i1 %i.fc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph243
  %i.fe = sdiv i32 %i.fd, %i.df
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph243
  %i.ff = sub i32 %i.fd, %i.dh
  %i.fg = sdiv i32 %i.ff, %i.de
  %i.fh = add nsw i32 %i.fg, %i.dg
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.fi = phi i32 [ %i.fe, %bb.t ], [ %i.fh, %bb.u ]
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.fk = add nsw i32 %i.fi, %.val215.val
  %i.fl = getelementptr i8, ptr %i.fj, i64 32
  %.val202 = load ptr, ptr %i.fl, align 8, !tbaa !31
  %i.fm = getelementptr i8, ptr %.val202, i64 8
  %.val202.val = load ptr, ptr %i.fm, align 8, !tbaa !35
  %i.fn = sext i32 %i.fk to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %.val202.val, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !36
  tail call void @Abc_ObjPatchFanin(ptr noundef %i.fb, ptr noundef nonnull %i.g, ptr noundef %i.fp) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fq = load ptr, ptr %i.dm, align 8, !tbaa !90 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 4
  %.val = load i32, ptr %i.fr, align 4, !tbaa !34
  %i.fs = sext i32 %.val to i64
  %i.ft = icmp slt i64 %indvars.iv.next, %i.fs
  br i1 %i.ft, label %.lr.ph243, label %.critedge11.preheader, !llvm.loop !156

.critedge11:                                      ; preds = %.critedge11.preheader269, %.critedge11
  %indvars.iv272 = phi i64 [ 0, %.critedge11.preheader269 ], [ %indvars.iv.next273, %.critedge11 ] ; 2 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.fv = getelementptr i8, ptr %i.fu, i64 32
  %.val201 = load ptr, ptr %i.fv, align 8, !tbaa !31
  %i.fw = getelementptr i8, ptr %.val201, i64 8
  %.val201.val = load ptr, ptr %i.fw, align 8, !tbaa !35
  %i.fx = getelementptr [8 x i8], ptr %.val201.val, i64 %indvars.iv272
  %i.fy = getelementptr [8 x i8], ptr %i.fx, i64 %i.ex
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !36
  tail call void @Abc_BufCreateEdges(ptr noundef nonnull %0, ptr noundef %i.fz)
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond275.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count
  br i1 %exitcond275.not, label %.lr.ph248, label %.critedge11, !llvm.loop !157

._crit_edge249.thread:                            ; preds = %.critedge11.preheader
  tail call void @Abc_BufUpdateArr(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  tail call void @Abc_BufUpdateDep(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  br label %.loopexit

.lr.ph248:                                        ; preds = %.critedge11
  tail call void @Abc_BufUpdateArr(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gb = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.gc = getelementptr i8, ptr %0, i64 32
  %9 = sext i32 %.val215.val to i64
  %wide.trip.count279 = zext nneg i32 %i.dd to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph248, %Abc_BufComputeDep.exit
  %indvars.iv276 = phi i64 [ 0, %.lr.ph248 ], [ %indvars.iv.next277, %Abc_BufComputeDep.exit ] ; 2 uses
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.ge = getelementptr i8, ptr %i.gd, i64 32
  %.val200 = load ptr, ptr %i.ge, align 8, !tbaa !31
  %i.gf = getelementptr i8, ptr %.val200, i64 8
  %.val200.val = load ptr, ptr %i.gf, align 8, !tbaa !35
  %i.gg = getelementptr [8 x i8], ptr %.val200.val, i64 %indvars.iv276
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %9
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !36 ; 5 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 44     ; 2 uses
  %.val2232.i = load i32, ptr %i.gj, align 4, !tbaa !53
  %i.gk = icmp sgt i32 %.val2232.i, 0
  br i1 %i.gk, label %.lr.ph.i, label %Abc_BufComputeDep.exit

.lr.ph.i:                                         ; preds = %bb.w
  %i.gl = getelementptr i8, ptr %i.gi, i64 48
  %.pre.i = load ptr, ptr %i.ga, align 8, !tbaa !59
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.lr.ph.i
  %i.gm = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.hq, %bb.aa ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aa ] ; 2 uses
  %.034.i = phi float [ -1.000000e+09, %.lr.ph.i ], [ %.1.i, %bb.aa ] ; 3 uses
  %.val23.i = load ptr, ptr %i.gi, align 8, !tbaa !40
  %.val24.i = load ptr, ptr %i.gl, align 8, !tbaa !54
  %i.gn = getelementptr i8, ptr %.val23.i, i64 32
  %.val23.val.i = load ptr, ptr %i.gn, align 8, !tbaa !31
  %i.go = getelementptr i8, ptr %.val23.val.i, i64 8
  %.val23.val.val.i = load ptr, ptr %i.go, align 8, !tbaa !35
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val24.i, i64 %indvars.iv.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !42
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %.val23.val.val.i, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !36 ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 16     ; 2 uses
  %.val.i = load i32, ptr %i.gu, align 8, !tbaa !43
  %i.gv = getelementptr i8, ptr %i.gm, i64 8
  %.val21.i = load ptr, ptr %i.gv, align 8, !tbaa !47
  %i.gw = sext i32 %.val.i to i64                 ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %.val21.i, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !42
  %i.gz = icmp eq i32 %i.gy, -1000000000
  br i1 %i.gz, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val28.i = load ptr, ptr %i.gb, align 8, !tbaa !62
  %i.ha = getelementptr i8, ptr %.val28.i, i64 8
  %.val28.val.i = load ptr, ptr %i.ha, align 8, !tbaa !47
  %i.hb = getelementptr inbounds [4 x i8], ptr %.val28.val.i, i64 %i.gw
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !42
  %i.hd = tail call i32 @Abc_NodeFindFanin(ptr noundef nonnull %i.gt, ptr noundef nonnull %i.gi) #19
  %.val25.i = load ptr, ptr %i.ga, align 8, !tbaa !59 ; 3 uses
  %.val26.i = load ptr, ptr %i.gc, align 8, !tbaa !61
  %.val27.i = load i32, ptr %i.gu, align 8, !tbaa !43
  %i.he = getelementptr i8, ptr %.val25.i, i64 8
  %.val25.val.i = load ptr, ptr %i.he, align 8, !tbaa !47
  %i.hf = getelementptr i8, ptr %.val26.i, i64 8
  %.val26.val.i = load ptr, ptr %i.hf, align 8, !tbaa !47
  %i.hg = sext i32 %.val27.i to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %.val25.val.i, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !42
  %i.hj = add nsw i32 %i.hi, %i.hd
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %.val26.val.i, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !42
  %i.hn = add nsw i32 %i.hm, %i.hc
  %i.ho = sitofp i32 %i.hn to float               ; 2 uses
  %i.hp = fcmp olt float %.034.i, %i.ho
  br i1 %i.hp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.hq = phi ptr [ %i.gm, %bb.x ], [ %.val25.i, %bb.z ], [ %.val25.i, %bb.y ]
  %.1.i = phi float [ %.034.i, %bb.x ], [ %i.ho, %bb.z ], [ %.034.i, %bb.y ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val22.i = load i32, ptr %i.gj, align 4, !tbaa !53
  %i.hr = sext i32 %.val22.i to i64
  %i.hs = icmp slt i64 %indvars.iv.next.i, %i.hr
  br i1 %i.hs, label %bb.x, label %Abc_BufComputeDep.exit.loopexit, !llvm.loop !2

Abc_BufComputeDep.exit.loopexit:                  ; preds = %bb.aa
  %i.ht = fptosi float %.1.i to i32
  br label %Abc_BufComputeDep.exit

Abc_BufComputeDep.exit:                           ; preds = %Abc_BufComputeDep.exit.loopexit, %bb.w
  %.0.lcssa.i = phi i32 [ -1000000000, %bb.w ], [ %i.ht, %Abc_BufComputeDep.exit.loopexit ]
  %.val30.i = load ptr, ptr %i.gb, align 8, !tbaa !62
  %i.hu = getelementptr i8, ptr %i.gi, i64 16
  %.val31.i = load i32, ptr %i.hu, align 8, !tbaa !43
  %i.hv = getelementptr i8, ptr %.val30.i, i64 8
  %.val30.val.i = load ptr, ptr %i.hv, align 8, !tbaa !47
  %i.hw = sext i32 %.val31.i to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %.val30.val.i, i64 %i.hw
  store i32 %.0.lcssa.i, ptr %i.hx, align 4, !tbaa !42
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %wide.trip.count279
  br i1 %exitcond280.not, label %._crit_edge249, label %bb.w, !llvm.loop !158

._crit_edge249:                                   ; preds = %Abc_BufComputeDep.exit
  tail call void @Abc_BufUpdateDep(ptr noundef nonnull %0, ptr noundef nonnull %i.g)
  %10 = sext i32 %.val215.val to i64
  %wide.trip.count284 = zext nneg i32 %i.dd to i64
  br label %.lr.ph252

.lr.ph254.preheader:                              ; preds = %.lr.ph252
  %11 = sext i32 %.val215.val to i64
  %wide.trip.count289 = zext nneg i32 %i.dd to i64
  br label %.lr.ph254

.lr.ph252:                                        ; preds = %._crit_edge249, %.lr.ph252
  %indvars.iv281 = phi i64 [ 0, %._crit_edge249 ], [ %indvars.iv.next282, %.lr.ph252 ] ; 2 uses
  %i.hy = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.hz = getelementptr i8, ptr %i.hy, i64 32
  %.val199 = load ptr, ptr %i.hz, align 8, !tbaa !31
  %i.ia = getelementptr i8, ptr %.val199, i64 8
  %.val199.val = load ptr, ptr %i.ia, align 8, !tbaa !35
  %i.ib = getelementptr [8 x i8], ptr %.val199.val, i64 %indvars.iv281
  %i.ic = getelementptr [8 x i8], ptr %i.ib, i64 %10
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !36
  tail call void @Abc_BufAddToQue(ptr noundef nonnull %0, ptr noundef %i.id)
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count284
  br i1 %exitcond285.not, label %.lr.ph254.preheader, label %.lr.ph252, !llvm.loop !159

.lr.ph254:                                        ; preds = %.lr.ph254.preheader, %.lr.ph254
  %indvars.iv286 = phi i64 [ 0, %.lr.ph254.preheader ], [ %indvars.iv.next287, %.lr.ph254 ] ; 2 uses
  %i.ie = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.if = getelementptr i8, ptr %i.ie, i64 32
  %.val198 = load ptr, ptr %i.if, align 8, !tbaa !31
  %i.ig = getelementptr i8, ptr %.val198, i64 8
  %.val198.val = load ptr, ptr %i.ig, align 8, !tbaa !35
  %i.ih = getelementptr [8 x i8], ptr %.val198.val, i64 %indvars.iv286
  %i.ii = getelementptr [8 x i8], ptr %i.ih, i64 %11
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !36
  tail call void @Abc_SclTimeIncUpdateLevel(ptr noundef %i.ij) #19
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %.loopexit, label %.lr.ph254, !llvm.loop !160

bb.ab:                                            ; preds = %bb.n
  br i1 %.not, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph254, %._crit_edge249.thread, %.critedge9, %5, %.critedge, %4, %bb.ab, %bb.ac
  ret void
}

declare ptr @Mio_GateReadName(ptr noundef) local_unnamed_addr #3

declare void @Abc_SclTimeIncUpdateLevel(ptr noundef) local_unnamed_addr #3

declare ptr @Abc_NtkDupObj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef ptr @Abc_SclBufPerform(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Buf_ManStart(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) ; 3 uses
  %i.b = tail call i32 @Abc_NtkLevel(ptr noundef %0) #19 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Vec_QuePop.exit
  %.019 = phi i32 [ 0, %bb.a ], [ %i.cb, %Vec_QuePop.exit ]
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 7 uses
  %.val = load i32, ptr %i.e, align 4, !tbaa !81
  %.not = icmp eq i32 %.val, 1
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !42   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 4 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store i32 -1, ptr %i.m, align 4, !tbaa !42
  %i.n = load i32, ptr %i.e, align 4, !tbaa !81
  %i.o = add nsw i32 %i.n, -1                     ; 3 uses
  store i32 %i.o, ptr %i.e, align 4, !tbaa !81
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %i.h, align 4, !tbaa !42
  br label %Vec_QuePop.exit

bb.e:                                             ; preds = %bb.c
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42   ; 4 uses
  store i32 -1, ptr %i.r, align 4, !tbaa !42
  store i32 %i.s, ptr %i.h, align 4, !tbaa !42
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.t ; 2 uses
  store i32 1, ptr %i.u, align 4, !tbaa !42
  %i.v = getelementptr i8, ptr %i.d, i64 24
  %.val40.i.i = load ptr, ptr %i.v, align 8, !tbaa !78
  %.val40.val.i.i = load ptr, ptr %.val40.i.i, align 8, !tbaa !79 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val40.val.i.i, null
  br i1 %.not.i.i.i, label %Vec_QuePrio.exit.i.i, label %Vec_QuePrio.exit.thread.i.i

Vec_QuePrio.exit.i.i:                             ; preds = %bb.e
  %i.w = sitofp i32 %i.s to float
  %i.x = load i32, ptr %i.e, align 4, !tbaa !81   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 2
  br i1 %i.y, label %.lr.ph.split.us.i.i, label %Vec_QueMoveDown.exit.i

Vec_QuePrio.exit.thread.i.i:                      ; preds = %bb.e
  %i.z = getelementptr inbounds [4 x i8], ptr %.val40.val.i.i, i64 %i.t
  %i.aa = load float, ptr %i.z, align 4, !tbaa !72
  %i.ab = load i32, ptr %i.e, align 4, !tbaa !81  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 2
  br i1 %i.ac, label %.lr.ph.split.i.i, label %Vec_QueMoveDown.exit.i

.lr.ph.split.us.i.i:                              ; preds = %Vec_QuePrio.exit.i.i, %bb.f
  %i.ad = phi i32 [ %i.ax, %bb.f ], [ %i.x, %Vec_QuePrio.exit.i.i ]
  %.049.us.i.i = phi i32 [ %.0.us.i.i, %bb.f ], [ 2, %Vec_QuePrio.exit.i.i ] ; 4 uses
  %.03548.us.i.i = phi i32 [ %.1.us.i.i, %bb.f ], [ 1, %Vec_QuePrio.exit.i.i ] ; 3 uses
  %i.ae = or disjoint i32 %.049.us.i.i, 1         ; 3 uses
  %i.af = icmp slt i32 %i.ae, %i.ad
  %i.ag = sext i32 %.049.us.i.i to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !42 ; 3 uses
  br i1 %i.af, label %Vec_QuePrio.exit44.us.i.i, label %Vec_QuePrio.exit46.us.i.i

Vec_QuePrio.exit44.us.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = sext i32 %i.ae to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42 ; 2 uses
  %i.an = sitofp i32 %i.am to float
  %i.ao = fcmp olt float %i.aj, %i.an             ; 2 uses
  %spec.select.us.i.i = select i1 %i.ao, i32 %i.ae, i32 %.049.us.i.i
  %i.ap = select i1 %i.ao, i32 %i.am, i32 %i.ai
  br label %Vec_QuePrio.exit46.us.i.i

Vec_QuePrio.exit46.us.i.i:                        ; preds = %Vec_QuePrio.exit44.us.i.i, %.lr.ph.split.us.i.i
  %i.aq = phi i32 [ %i.ap, %Vec_QuePrio.exit44.us.i.i ], [ %i.ai, %.lr.ph.split.us.i.i ] ; 3 uses
  %.1.us.i.i = phi i32 [ %spec.select.us.i.i, %Vec_QuePrio.exit44.us.i.i ], [ %.049.us.i.i, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.ar = sitofp i32 %i.aq to float
  %i.as = fcmp ult float %i.w, %i.ar
  br i1 %i.as, label %bb.f, label %Vec_QueMoveDown.exit.i

bb.f:                                             ; preds = %Vec_QuePrio.exit46.us.i.i
  %i.at = sext i32 %.03548.us.i.i to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.at
  store i32 %i.aq, ptr %i.au, align 4, !tbaa !42
  %i.av = sext i32 %i.aq to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.av
  store i32 %.03548.us.i.i, ptr %i.aw, align 4, !tbaa !42
  %.0.us.i.i = shl i32 %.1.us.i.i, 1              ; 2 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !81  ; 2 uses
  %i.ay = icmp slt i32 %.0.us.i.i, %i.ax
  br i1 %i.ay, label %.lr.ph.split.us.i.i, label %Vec_QueMoveDown.exit.i, !llvm.loop !4

.lr.ph.split.i.i:                                 ; preds = %Vec_QuePrio.exit.thread.i.i, %bb.g
  %i.az = phi i32 [ %i.bx, %bb.g ], [ %i.ab, %Vec_QuePrio.exit.thread.i.i ]
  %.049.i.i = phi i32 [ %.0.i.i, %bb.g ], [ 2, %Vec_QuePrio.exit.thread.i.i ] ; 4 uses
  %.03548.i.i = phi i32 [ %.1.i.i, %bb.g ], [ 1, %Vec_QuePrio.exit.thread.i.i ] ; 3 uses
  %i.ba = or disjoint i32 %.049.i.i, 1            ; 3 uses
  %i.bb = icmp slt i32 %i.ba, %i.az
  %i.bc = sext i32 %.049.i.i to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !42 ; 3 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %.val40.val.i.i, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !72 ; 3 uses
  br i1 %i.bb, label %Vec_QuePrio.exit44.i.i, label %Vec_QuePrio.exit46.i.i

Vec_QuePrio.exit44.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.bi = sext i32 %i.ba to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !42 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %.val40.val.i.i, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !72 ; 2 uses
  %i.bo = fcmp olt float %i.bh, %i.bn             ; 3 uses
  %spec.select.i.i = select i1 %i.bo, i32 %i.ba, i32 %.049.i.i
  %i.bp = select i1 %i.bo, i32 %i.bk, i32 %i.be   ; 2 uses
  %i.bq = select i1 %i.bo, float %i.bn, float %i.bh
  %.pre68.i.i = sext i32 %i.bp to i64
  br label %Vec_QuePrio.exit46.i.i

Vec_QuePrio.exit46.i.i:                           ; preds = %Vec_QuePrio.exit44.i.i, %.lr.ph.split.i.i
  %.pre-phi69.i.i = phi i64 [ %.pre68.i.i, %Vec_QuePrio.exit44.i.i ], [ %i.bf, %.lr.ph.split.i.i ]
  %i.br = phi float [ %i.bq, %Vec_QuePrio.exit44.i.i ], [ %i.bh, %.lr.ph.split.i.i ]
  %i.bs = phi i32 [ %i.bp, %Vec_QuePrio.exit44.i.i ], [ %i.be, %.lr.ph.split.i.i ]
  %.1.i.i = phi i32 [ %spec.select.i.i, %Vec_QuePrio.exit44.i.i ], [ %.049.i.i, %.lr.ph.split.i.i ] ; 3 uses
  %i.bt = fcmp ult float %i.aa, %i.br
  br i1 %i.bt, label %bb.g, label %Vec_QueMoveDown.exit.i

bb.g:                                             ; preds = %Vec_QuePrio.exit46.i.i
  %i.bu = sext i32 %.03548.i.i to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !42
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.pre-phi69.i.i
  store i32 %.03548.i.i, ptr %i.bw, align 4, !tbaa !42
  %.0.i.i = shl i32 %.1.i.i, 1                    ; 2 uses
  %i.bx = load i32, ptr %i.e, align 4, !tbaa !81  ; 2 uses
  %i.by = icmp slt i32 %.0.i.i, %i.bx
  br i1 %i.by, label %.lr.ph.split.i.i, label %Vec_QueMoveDown.exit.i, !llvm.loop !4

Vec_QueMoveDown.exit.i:                           ; preds = %bb.g, %Vec_QuePrio.exit46.i.i, %bb.f, %Vec_QuePrio.exit46.us.i.i, %Vec_QuePrio.exit.thread.i.i, %Vec_QuePrio.exit.i.i
  %.035.lcssa.i.i = phi i32 [ %.1.us.i.i, %bb.f ], [ 1, %Vec_QuePrio.exit.thread.i.i ], [ 1, %Vec_QuePrio.exit.i.i ], [ %.03548.us.i.i, %Vec_QuePrio.exit46.us.i.i ], [ %.1.i.i, %bb.g ], [ %.03548.i.i, %Vec_QuePrio.exit46.i.i ] ; 2 uses
  %i.bz = sext i32 %.035.lcssa.i.i to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bz
  store i32 %i.s, ptr %i.ca, align 4, !tbaa !42
  store i32 %.035.lcssa.i.i, ptr %i.u, align 4, !tbaa !42
  br label %Vec_QuePop.exit

Vec_QuePop.exit:                                  ; preds = %bb.d, %Vec_QueMoveDown.exit.i
  tail call void @Abc_BufPerformOne(ptr noundef %i.a, i32 noundef %i.i, i32 noundef %4, i32 noundef %5)
  %i.cb = add nuw nsw i32 %.019, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cb, 1000000000
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !161

.critedge:                                        ; preds = %Vec_QuePop.exit, %bb.b
  tail call void @Buf_ManStop(ptr noundef %i.a)
  %i.cc = tail call ptr @Abc_NtkDupDfs(ptr noundef %0) #19 ; 2 uses
  %i.cd = tail call i32 @Abc_SclCheckNtk(ptr noundef %i.cc, i32 noundef %5) ; 0 uses
  ret ptr %i.cc
}

declare i32 @Abc_NtkLevel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nofree nounwind
end_hunk_0
