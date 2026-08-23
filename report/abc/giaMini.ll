Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaMini?download=true
inline.NumInlined: 625
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Gia_ManMapEquivAfterScorr:bb.a

Vec_IntStartFull.exit70:                          ; preds = %Vec_IntStartFull.exit, %Vec_IntAlloc.exit.i67, %bb.c
  %i.s = phi ptr [ %i.p, %bb.c ], [ null, %Vec_IntAlloc.exit.i67 ], [ null, %Vec_IntStartFull.exit ] ; 3 uses
  %i.t = icmp sgt i32 %.val56, 0                  ; 2 uses
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStartFull.exit70
  %i.u = getelementptr i8, ptr %1, i64 8
  %.val53 = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %0, i64 192
  %i.w = zext nneg i32 %.val56 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val53, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12   ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = ashr i32 %i.y, 1                        ; 2 uses
  %.val63 = load ptr, ptr %i.v, align 8, !tbaa !129
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val63, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 268435455                ; 2 uses
  %.not1.i = icmp eq i32 %i.ae, 268435455
  %spec.select.i = select i1 %.not1.i, i32 %i.aa, i32 %i.ae
  %i.af = sext i32 %spec.select.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12 ; 3 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !12
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ak = zext i32 %i.ah to i64
  %i.al = icmp eq i64 %indvars.iv, %i.ak
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.d, %bb.h, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.an, label %bb.d, label %.critedge, !llvm.loop !144

.critedge:                                        ; preds = %bb.i, %Vec_IntStartFull.exit70
  %.not.i71 = icmp eq ptr %i.s, null
  br i1 %.not.i71, label %Vec_IntFree.exit, label %bb.j

bb.j:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.s) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.j
  tail call void @Gia_ManSetPhase(ptr noundef %0) #27
  br i1 %i.t, label %.lr.ph75, label %.critedge2

.lr.ph75:                                         ; preds = %Vec_IntFree.exit
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = getelementptr i8, ptr %0, i64 32
  %wide.trip.count = zext nneg i32 %.val56 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph75, %bb.m
  %indvars.iv77 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next78, %bb.m ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv77 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12 ; 3 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val50 = load ptr, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %indvars.iv77
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12 ; 2 uses
  %i.av = sext i32 %i.ar to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %.val50, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12 ; 2 uses
  %i.ay = ashr i32 %i.au, 1
  %.val58 = load ptr, ptr %i.ap, align 8, !tbaa !43 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [12 x i8], ptr %.val58, i64 %i.az
  %i.bb = ashr i32 %i.ax, 1
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [12 x i8], ptr %.val58, i64 %i.bc
  %i.be = xor i32 %i.ax, %i.au
  %i.bf = and i32 %i.be, 1
  %i.bg = load i64, ptr %i.ba, align 4
  %i.bh = lshr i64 %i.bg, 63
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = xor i32 %i.bf, %i.bi
  %i.bk = load i64, ptr %i.bd, align 4
  %i.bl = lshr i64 %i.bk, 63
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = xor i32 %i.bj, %i.bm
  %i.bo = shl nsw i32 %i.ar, 1
  %i.bp = or disjoint i32 %i.bn, %i.bo
  store i32 %i.bp, ptr %i.aq, align 4, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.k, !llvm.loop !145

.critedge2:                                       ; preds = %bb.m, %Vec_IntFree.exit
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define ptr @Abc_FrameReadMiniAigEquivClasses(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %puts12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !146  ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %puts13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18) ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !146
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = phi ptr [ %.pre, %bb.f ], [ %i.h, %bb.e ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %puts15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20) ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %i.j, i64 24
  %.val16 = load i32, ptr %i.n, align 8, !tbaa !50
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.p = getelementptr i8, ptr %i.o, i64 24
  %.val = load i32, ptr %i.p, align 8, !tbaa !50
  %.not = icmp eq i32 %.val16, %.val
  br i1 %.not, label %Vec_IntFree.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19) ; 0 uses
  %.pre17 = load ptr, ptr %i.g, align 8, !tbaa !146
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.j, %bb.i
  %i.q = phi ptr [ %.pre17, %bb.j ], [ %i.j, %bb.i ]
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.s = tail call ptr @Gia_ManMapEquivAfterScorr(ptr noundef %i.q, ptr noundef %i.r) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  tail call void @free(ptr noundef nonnull %i.s) #27
  br label %bb.k

bb.k:                                             ; preds = %Vec_IntFree.exit, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ %i.u, %Vec_IntFree.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @Gia_MiniAigReduce(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val50 = load i32, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %i.b = sdiv i32 %.val50, 2                      ; 4 uses
  %i.c = tail call ptr @Gia_ManStart(i32 noundef %i.b) #27 ; 9 uses
  %i.d = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #28 ; 2 uses
  store i64 29107652263831885, ptr %i.d, align 1
  store ptr %i.d, ptr %i.c, align 8, !tbaa !16
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %i.f = add nsw i32 %i.b, -1
  %or.cond.i = icmp ult i32 %i.f, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.b ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !36
  store i32 %spec.store.select.i, ptr %i.e, align 8, !tbaa !35
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntGrow.exit11.sink.split.i, label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #28 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !13
  br label %Vec_IntPush.exit

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.m = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !13
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntAlloc.exit, %Vec_IntGrow.exit11.sink.split.i
  %i.n = phi i32 [ %spec.store.select.i, %Vec_IntAlloc.exit ], [ 16, %Vec_IntGrow.exit11.sink.split.i ]
  %i.o = phi ptr [ %i.j, %Vec_IntAlloc.exit ], [ %i.m, %Vec_IntGrow.exit11.sink.split.i ]
  %i.p = phi ptr [ %i.k, %Vec_IntAlloc.exit ], [ %i.l, %Vec_IntGrow.exit11.sink.split.i ] ; 7 uses
  store i32 0, ptr %i.o, align 4, !tbaa !12
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.c) #27
  %i.q = icmp sgt i32 %.val50, 3
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_IntPush.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntPush.exit68
  %i.s = phi i32 [ %i.n, %.lr.ph ], [ %i.bh, %Vec_IntPush.exit68 ] ; 7 uses
  %i.t = phi i32 [ 1, %.lr.ph ], [ %i.bi, %Vec_IntPush.exit68 ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit68 ] ; 3 uses
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !8
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12   ; 3 uses
  %.not = icmp eq i32 %i.v, 2147483647
  br i1 %.not, label %bb.c, label %Mini_AigNodeIsPo.exit

bb.c:                                             ; preds = %bb.b
  %i.w = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.c)
  br label %Mini_AigNodeIsAnd.exit.thread

Mini_AigNodeIsPo.exit:                            ; preds = %bb.b
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12   ; 3 uses
  %.not72 = icmp eq i32 %i.y, 2147483647
  %i.z = ashr i32 %i.v, 1
  %.val4.i = load ptr, ptr %i.p, align 8, !tbaa !13 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %.val4.i, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = and i32 %i.v, 1
  %i.ae = xor i32 %i.ac, %i.ad                    ; 2 uses
  br i1 %.not72, label %bb.d, label %Mini_AigNodeIsAnd.exit

bb.d:                                             ; preds = %Mini_AigNodeIsPo.exit
  %i.af = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.c, i32 noundef %i.ae)
  br label %Mini_AigNodeIsAnd.exit.thread

Mini_AigNodeIsAnd.exit:                           ; preds = %Mini_AigNodeIsPo.exit
  %i.ag = ashr i32 %i.y, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %.val4.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !12
  %i.ak = and i32 %i.y, 1
  %i.al = xor i32 %i.aj, %i.ak
  %i.am = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.c, i32 noundef %i.ae, i32 noundef %i.al) #27
  br label %Mini_AigNodeIsAnd.exit.thread

Mini_AigNodeIsAnd.exit.thread:                    ; preds = %bb.d, %Mini_AigNodeIsAnd.exit, %bb.c
  %.1 = phi i32 [ %i.w, %bb.c ], [ %i.af, %bb.d ], [ %i.am, %Mini_AigNodeIsAnd.exit ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !12 ; 3 uses
  %.not49 = icmp eq i32 %i.ao, -1
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Mini_AigNodeIsAnd.exit.thread
  %i.ap = ashr i32 %i.ao, 1
  %.val = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !12
  %i.at = and i32 %i.ao, 1
  %i.au = xor i32 %i.as, %i.at
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %Mini_AigNodeIsAnd.exit.thread
  %.2 = phi i32 [ %i.au, %bb.e ], [ %.1, %Mini_AigNodeIsAnd.exit.thread ]
  %i.av = icmp eq i32 %i.t, %i.s
  br i1 %i.av, label %bb.g, label %.Vec_IntPush.exit68_crit_edge

.Vec_IntPush.exit68_crit_edge:                    ; preds = %bb.f
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !13
  br label %Vec_IntPush.exit68

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp slt i32 %i.s, 16
  br i1 %i.aw, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !13  ; 2 uses
  %.not9.i.i66 = icmp eq ptr %i.ax, null
  br i1 %.not9.i.i66, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i64

bb.j:                                             ; preds = %bb.h
  %i.az = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i64

bb.k:                                             ; preds = %bb.g
  %i.ba = icmp samesign ult i32 %i.s, 1073741823
  %i.bb = shl nuw nsw i32 %i.s, 1
  %spec.select.i61 = select i1 %i.ba, i32 %i.bb, i32 2147483647 ; 4 uses
  %.not.i9.i62 = icmp samesign ult i32 %i.s, %spec.select.i61
  %.pre77 = load ptr, ptr %i.p, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i9.i62, label %bb.l, label %Vec_IntPush.exit68

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i63 = icmp eq ptr %.pre77, null
  %i.bc = zext nneg i32 %spec.select.i61 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2                ; 2 uses
  br i1 %.not9.i10.i63, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = tail call ptr @realloc(ptr noundef nonnull %.pre77, i64 noundef %i.bd) #29
  br label %Vec_IntGrow.exit11.sink.split.i64

bb.n:                                             ; preds = %bb.l
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.bd) #28
  br label %Vec_IntGrow.exit11.sink.split.i64

Vec_IntGrow.exit11.sink.split.i64:                ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.az, %bb.j ], [ %i.ay, %bb.i ], [ %i.be, %bb.m ], [ %i.bf, %bb.n ] ; 2 uses
  %spec.select.sink.i65 = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i61, %bb.m ], [ %spec.select.i61, %bb.n ]
  store ptr %storemerge, ptr %i.p, align 8, !tbaa !13
  br label %Vec_IntPush.exit68

Vec_IntPush.exit68:                               ; preds = %.Vec_IntPush.exit68_crit_edge, %bb.k, %Vec_IntGrow.exit11.sink.split.i64
  %i.bg = phi ptr [ %.pre, %.Vec_IntPush.exit68_crit_edge ], [ %.pre77, %bb.k ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i64 ]
  %i.bh = phi i32 [ %i.s, %.Vec_IntPush.exit68_crit_edge ], [ %i.s, %bb.k ], [ %spec.select.sink.i65, %Vec_IntGrow.exit11.sink.split.i64 ]
  %i.bi = add nuw nsw i32 %i.t, 1
  %i.bj = zext nneg i32 %i.t to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bj
  store i32 %.2, ptr %i.bk, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !147

._crit_edge:                                      ; preds = %Vec_IntPush.exit68, %Vec_IntPush.exit
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.c) #27
  %i.bl = load ptr, ptr %i.p, align 8, !tbaa !13  ; 2 uses
  %.not.i69 = icmp eq ptr %i.bl, null
  br i1 %.not.i69, label %Vec_IntFree.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.bl) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %._crit_edge, %bb.o
  tail call void @free(ptr noundef nonnull %i.e) #27
  %i.bm = getelementptr i8, ptr %0, i64 8
  %.val51 = load i32, ptr %i.bm, align 8, !tbaa !41
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.c, i32 noundef %.val51) #27
  %i.bn = tail call ptr @Gia_ManSeqCleanup(ptr noundef nonnull %i.c) #27
  tail call void @Gia_ManStop(ptr noundef nonnull %i.c) #27
  ret ptr %i.bn
}

declare ptr @Gia_ManSeqCleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Gia_MiniAigMiter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val78 = load i32, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %i.b = sdiv i32 %.val78, 2                      ; 6 uses
  %i.c = shl nsw i32 %i.b, 1
  %i.d = tail call ptr @Gia_ManStart(i32 noundef %i.c) #27 ; 11 uses
  %i.e = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #28 ; 2 uses
  store i64 29107652263831885, ptr %i.e, align 1
  store ptr %i.e, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.g = add nsw i32 %i.b, -1
  %or.cond.i = icmp ult i32 %i.g, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.b ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store i32 0, ptr %i.h, align 4, !tbaa !36
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntGrow.exit11.sink.split.i, label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #28 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !13
  br label %Vec_IntPush.exit

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.n = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !13
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntAlloc.exit, %Vec_IntGrow.exit11.sink.split.i
  %i.o = phi i32 [ %spec.store.select.i, %Vec_IntAlloc.exit ], [ 16, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.p = phi ptr [ %i.k, %Vec_IntAlloc.exit ], [ %i.n, %Vec_IntGrow.exit11.sink.split.i ]
  %i.q = phi ptr [ %i.l, %Vec_IntAlloc.exit ], [ %i.m, %Vec_IntGrow.exit11.sink.split.i ] ; 12 uses
  store i32 0, ptr %i.p, align 4, !tbaa !12
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.d) #27
  %i.r = icmp sgt i32 %.val78, 3
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_IntPush.exit
  %i.s = getelementptr i8, ptr %0, i64 16
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.b

.lr.ph123.preheader:                              ; preds = %bb.u
  %smax131 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %wide.trip.count132 = zext nneg i32 %smax131 to i64
  br label %.lr.ph123

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %i.t = phi i32 [ %i.o, %.lr.ph ], [ %i.bs, %bb.u ] ; 9 uses
  %i.u = phi i32 [ %i.o, %.lr.ph ], [ %i.bt, %bb.u ] ; 7 uses
  %i.v = phi i32 [ 1, %.lr.ph ], [ %i.bu, %bb.u ] ; 5 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %.0121 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.u ] ; 2 uses
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !8
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 3 uses
  %.not114 = icmp eq i32 %i.x, 2147483647
  br i1 %.not114, label %bb.c, label %Mini_AigNodeIsPo.exit

bb.c:                                             ; preds = %bb.b
  %i.y = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.d)
  br label %Mini_AigNodeIsAnd.exit.thread

Mini_AigNodeIsPo.exit:                            ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12  ; 3 uses
  %.not115 = icmp eq i32 %i.aa, 2147483647
  br i1 %.not115, label %bb.d, label %Mini_AigNodeIsAnd.exit

bb.d:                                             ; preds = %Mini_AigNodeIsPo.exit
  %i.ab = add nsw i32 %.0121, 1
  %i.ac = icmp eq i32 %i.v, %i.u
  br i1 %i.ac, label %bb.e, label %.Vec_IntPush.exit91_crit_edge

.Vec_IntPush.exit91_crit_edge:                    ; preds = %bb.d
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !13
  br label %Vec_IntPush.exit91

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp slt i32 %i.u, 16
  br i1 %i.ad, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !13  ; 2 uses
  %.not9.i.i89 = icmp eq ptr %i.ae, null
  br i1 %.not9.i.i89, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ae, i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i87

bb.h:                                             ; preds = %bb.f
  %i.ag = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i87

bb.i:                                             ; preds = %bb.e
  %i.ah = icmp samesign ult i32 %i.u, 1073741823
  %i.ai = shl nuw nsw i32 %i.u, 1
  %spec.select.i84 = select i1 %i.ah, i32 %i.ai, i32 2147483647 ; 4 uses
  %.not.i9.i85 = icmp samesign ult i32 %i.u, %spec.select.i84
  %.pre140 = load ptr, ptr %i.q, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i9.i85, label %bb.j, label %Vec_IntPush.exit91

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i86 = icmp eq ptr %.pre140, null
  %i.aj = zext nneg i32 %spec.select.i84 to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  br i1 %.not9.i10.i86, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call ptr @realloc(ptr noundef nonnull %.pre140, i64 noundef %i.ak) #29
  br label %Vec_IntGrow.exit11.sink.split.i87

bb.l:                                             ; preds = %bb.j
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.ak) #28
  br label %Vec_IntGrow.exit11.sink.split.i87

Vec_IntGrow.exit11.sink.split.i87:                ; preds = %bb.k, %bb.l, %bb.g, %bb.h
  %storemerge = phi ptr [ %i.ag, %bb.h ], [ %i.af, %bb.g ], [ %i.al, %bb.k ], [ %i.am, %bb.l ] ; 2 uses
  %spec.select.sink.i88 = phi i32 [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i84, %bb.k ], [ %spec.select.i84, %bb.l ] ; 3 uses
  store ptr %storemerge, ptr %i.q, align 8, !tbaa !13
  store i32 %spec.select.sink.i88, ptr %i.f, align 8, !tbaa !35
  br label %Vec_IntPush.exit91

Vec_IntPush.exit91:                               ; preds = %.Vec_IntPush.exit91_crit_edge, %bb.i, %Vec_IntGrow.exit11.sink.split.i87
  %i.an = phi i32 [ %i.t, %.Vec_IntPush.exit91_crit_edge ], [ %i.t, %bb.i ], [ %spec.select.sink.i88, %Vec_IntGrow.exit11.sink.split.i87 ]
  %i.ao = phi ptr [ %.pre, %.Vec_IntPush.exit91_crit_edge ], [ %.pre140, %bb.i ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i87 ]
  %i.ap = phi i32 [ %i.u, %.Vec_IntPush.exit91_crit_edge ], [ %i.u, %bb.i ], [ %spec.select.sink.i88, %Vec_IntGrow.exit11.sink.split.i87 ]
  %i.aq = add nsw i32 %i.v, 1
  br label %bb.u

Mini_AigNodeIsAnd.exit:                           ; preds = %Mini_AigNodeIsPo.exit
  %i.ar = ashr i32 %i.x, 1
  %.val4.i = load ptr, ptr %i.q, align 8, !tbaa !13 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.val4.i, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %i.av = and i32 %i.x, 1
  %i.aw = xor i32 %i.au, %i.av
  %i.ax = ashr i32 %i.aa, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %.val4.i, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bb = and i32 %i.aa, 1
  %i.bc = xor i32 %i.ba, %i.bb
  %i.bd = tail call i32 @Gia_ManHashAnd(ptr noundef nonnull %i.d, i32 noundef %i.aw, i32 noundef %i.bc) #27
  br label %Mini_AigNodeIsAnd.exit.thread

Mini_AigNodeIsAnd.exit.thread:                    ; preds = %Mini_AigNodeIsAnd.exit, %bb.c
  %.168 = phi i32 [ %i.y, %bb.c ], [ %i.bd, %Mini_AigNodeIsAnd.exit ]
  %i.be = icmp eq i32 %i.v, %i.t
  br i1 %i.be, label %bb.m, label %Mini_AigNodeIsAnd.exit.thread.Vec_IntPush.exit104_crit_edge

Mini_AigNodeIsAnd.exit.thread.Vec_IntPush.exit104_crit_edge: ; preds = %Mini_AigNodeIsAnd.exit.thread
  %.pre141 = load ptr, ptr %i.q, align 8, !tbaa !13
  br label %Vec_IntPush.exit104

end_hunk_0
