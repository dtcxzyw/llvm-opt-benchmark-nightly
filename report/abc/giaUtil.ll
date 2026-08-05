inline.NumInlined: 1687
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 42
begin_hunk_0_@Gia_ManGetDangling:bb.a
  %i.f = phi ptr [ %i.e, %.lr.ph ], [ %.val3062, %.lr.ph.preheader ] ; 5 uses
  %indvars.iv64 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = load i64, ptr %i.f, align 4              ; 3 uses
  %i.h = and i64 %i.g, -1073741825
  store i64 %i.h, ptr %i.f, align 4
  %i.i = and i64 %i.g, 2147483648                 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = and i64 %i.g, 536870911                  ; 3 uses
  %i.k = icmp ne i64 %i.j, 536870911              ; 2 uses
  %narrow.i = and i1 %.not.i, %i.k
  br i1 %narrow.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph65
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [12 x i8], ptr %i.f, i64 %i.l ; 2 uses
  %i.n = load i64, ptr %i.m, align 4
  %i.o = or i64 %i.n, 1073741824
  store i64 %i.o, ptr %i.m, align 4
  %i.p = load i64, ptr %i.f, align 4
  %i.q = lshr i64 %i.p, 32
  %i.r = and i64 %i.q, 536870911
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph65
  %.not.i34 = icmp ne i64 %i.i, 0
  %narrow.i35 = and i1 %.not.i34, %i.k
  br i1 %narrow.i35, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.r, %bb.b ], [ %i.j, %bb.c ]
  %i.s = sub nsw i64 0, %.sink
  %i.t = getelementptr inbounds [12 x i8], ptr %i.f, i64 %i.s ; 2 uses
  %i.u = load i64, ptr %i.t, align 4
  %i.v = or i64 %i.u, 1073741824
  store i64 %i.v, ptr %i.t, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv64, 1 ; 3 uses
  %i.w = load i32, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !114

..critedge.loopexit_crit_edge:                    ; preds = %bb.d
  br label %.critedge, !llvm.loop !114

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.a
  %i.z = phi i32 [ %i.c, %bb.a ], [ %i.w, %..critedge.loopexit_crit_edge ], [ %i.c, %.lr.ph.preheader ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #40 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  store i32 0, ptr %i.ab, align 4, !tbaa !64
  store i32 100, ptr %i.aa, align 8, !tbaa !72
  %i.ac = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #40 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !61
  %i.ae = icmp sgt i32 %i.z, 0
  br i1 %i.ae, label %.lr.ph43, label %Gia_ManCleanMark0.exit

.lr.ph43:                                         ; preds = %.critedge, %bb.o
  %i.af = phi i32 [ %i.bf, %bb.o ], [ %i.z, %.critedge ] ; 2 uses
  %i.ag = phi ptr [ %i.bg, %bb.o ], [ %i.ac, %.critedge ] ; 3 uses
  %i.ah = phi ptr [ %i.bh, %bb.o ], [ %i.ac, %.critedge ] ; 5 uses
  %i.ai = phi i32 [ %i.bi, %bb.o ], [ 100, %.critedge ] ; 8 uses
  %i.aj = phi i32 [ %i.bj, %bb.o ], [ 0, %.critedge ] ; 4 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.o ], [ 0, %.critedge ] ; 3 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %.not25 = icmp eq ptr %.val, null
  br i1 %.not25, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %.lr.ph43
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv47
  %.val31 = load i64, ptr %i.ak, align 4          ; 2 uses
  %i.al = and i64 %.val31, 536870911
  %i.am = icmp ne i64 %i.al, 536870911
  %i.an = and i64 %.val31, 3221225472
  %i.ao = icmp eq i64 %i.an, 0
  %or.cond = and i1 %i.ao, %i.am
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp eq i32 %i.aj, %i.ai
  br i1 %i.ap, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp slt i32 %i.ai, 16
  br i1 %i.aq, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.not9.i.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 64) #41
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.as = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #40
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.g
  %i.at = icmp samesign ult i32 %i.ai, 1073741823
  %i.au = shl nuw nsw i32 %i.ai, 1
  %spec.select.i = select i1 %i.at, i32 %i.au, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ai, %spec.select.i
  br i1 %.not.i9.i, label %bb.l, label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.k
  %.not9.i10.i = icmp eq ptr %i.ah, null
  %i.av = zext nneg i32 %spec.select.i to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef %i.aw) #41
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.l
  %i.ay = tail call noalias ptr @malloc(i64 noundef %i.aw) #40
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %storemerge = phi ptr [ %i.as, %bb.j ], [ %i.ar, %bb.i ], [ %i.ax, %bb.m ], [ %i.ay, %bb.n ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.j ], [ 16, %bb.i ], [ %spec.select.i, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  store ptr %storemerge, ptr %i.ad, align 8, !tbaa !61
  store i32 %spec.select.sink.i, ptr %i.aa, align 8, !tbaa !72
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.k, %Vec_IntGrow.exit11.sink.split.i
  %i.az = phi ptr [ %i.ag, %bb.f ], [ %i.ag, %bb.k ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.ba = phi i32 [ %i.ai, %bb.f ], [ %i.ai, %bb.k ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bb = add nsw i32 %i.aj, 1                    ; 2 uses
  store i32 %i.bb, ptr %i.ab, align 4, !tbaa !64
  %i.bc = sext i32 %i.aj to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bc
  %i.be = trunc nuw nsw i64 %indvars.iv47 to i32
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !8
  %.pre = load i32, ptr %i.b, align 8, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %Vec_IntPush.exit
  %i.bf = phi i32 [ %i.af, %bb.e ], [ %.pre, %Vec_IntPush.exit ] ; 3 uses
  %i.bg = phi ptr [ %i.ag, %bb.e ], [ %i.az, %Vec_IntPush.exit ]
  %i.bh = phi ptr [ %i.ah, %bb.e ], [ %i.az, %Vec_IntPush.exit ]
  %i.bi = phi i32 [ %i.ai, %bb.e ], [ %i.ba, %Vec_IntPush.exit ]
  %i.bj = phi i32 [ %i.aj, %bb.e ], [ %i.bb, %Vec_IntPush.exit ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.bk = sext i32 %i.bf to i64
  %i.bl = icmp slt i64 %indvars.iv.next48, %i.bk
  br i1 %i.bl, label %.lr.ph43, label %.critedge2, !llvm.loop !115

.critedge2:                                       ; preds = %.lr.ph43, %bb.o
  %.lcssa.ph = phi i32 [ %i.af, %.lr.ph43 ], [ %i.bf, %bb.o ]
  %i.bm = icmp sgt i32 %.lcssa.ph, 0
  br i1 %i.bm, label %.lr.ph.i, label %Gia_ManCleanMark0.exit

.lr.ph.i:                                         ; preds = %.critedge2, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 0, %.critedge2 ] ; 2 uses
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !46 ; 2 uses
  %.not.i38 = icmp eq ptr %.val.i, null
  br i1 %.not.i38, label %Gia_ManCleanMark0.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %.val.i, i64 %indvars.iv.i ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 4
  %i.bp = and i64 %i.bo, -1073741825
  store i64 %i.bp, ptr %i.bn, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bq = load i32, ptr %i.b, align 8, !tbaa !42
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next.i, %i.br
  br i1 %i.bs, label %.lr.ph.i, label %Gia_ManCleanMark0.exit, !llvm.loop !49

Gia_ManCleanMark0.exit:                           ; preds = %.lr.ph.i, %bb.p, %.critedge, %.critedge2
  ret ptr %i.aa
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ObjPrint(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #25 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  %i.f = and i64 %i.c, -2                         ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre-phi = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 11 uses
  %.0 = phi ptr [ %i.g, %bb.d ], [ %1, %bb.c ]    ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 32         ; 12 uses
  %.val126 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.i = ptrtoint ptr %.val126 to i64
  %i.j = sub i64 %.pre-phi, %i.i
  %i.k = sdiv exact i64 %i.j, 12
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.l) ; 0 uses
  %.0.val131 = load i64, ptr %.0, align 4         ; 18 uses
  %i.n = and i64 %.0.val131, 2305843005455597567
  %narrow.i.not = icmp eq i64 %i.n, 2305843005455597567
  br i1 %narrow.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) ; 0 uses
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.p = and i64 %.0.val131, 2684354559
  %narrow.i.not.i.not = icmp eq i64 %i.p, 2684354559 ; 2 uses
  br i1 %narrow.i.not.i.not, label %Gia_ObjIsPi.exit, label %Gia_ObjIsPi.exit.thread

Gia_ObjIsPi.exit:                                 ; preds = %bb.g
  %i.q = lshr i64 %.0.val131, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = and i32 %i.r, 536870911
  %i.t = getelementptr i8, ptr %0, i64 16
  %.val4.i = load i32, ptr %i.t, align 8, !tbaa !103
  %i.u = getelementptr i8, ptr %0, i64 64
  %.val5.i = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.v = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.v, align 4, !tbaa !64
  %i.w = sub nsw i32 %.val5.val.i, %.val4.i
  %.not191 = icmp slt i32 %i.s, %i.w
  br i1 %.not191, label %bb.h, label %Gia_ObjIsPi.exit.thread

bb.h:                                             ; preds = %Gia_ObjIsPi.exit
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  br label %bb.o

Gia_ObjIsPi.exit.thread:                          ; preds = %bb.g, %Gia_ObjIsPi.exit
  %i.y = and i64 %.0.val131, 2147483648           ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, 0
  %i.z = and i64 %.0.val131, 536870911            ; 2 uses
  %i.aa = icmp eq i64 %i.z, 536870911             ; 2 uses
  %narrow.i.not.i155 = or i1 %.not.i.i, %i.aa
  br i1 %narrow.i.not.i155, label %Gia_ObjIsPo.exit.thread, label %Gia_ObjIsPo.exit

Gia_ObjIsPo.exit:                                 ; preds = %Gia_ObjIsPi.exit.thread
  %i.ab = lshr i64 %.0.val131, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 536870911
  %i.ae = getelementptr i8, ptr %0, i64 16
  %.val4.i156 = load i32, ptr %i.ae, align 8, !tbaa !103
  %i.af = getelementptr i8, ptr %0, i64 72
  %.val5.i157 = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.ag = getelementptr i8, ptr %.val5.i157, i64 4
  %.val5.val.i158 = load i32, ptr %i.ag, align 4, !tbaa !64
  %i.ah = sub nsw i32 %.val5.val.i158, %.val4.i156
  %.not192 = icmp slt i32 %i.ad, %i.ah
  br i1 %.not192, label %bb.i, label %Gia_ObjIsPo.exit.thread

bb.i:                                             ; preds = %Gia_ObjIsPo.exit
  %.val139 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.ai = ptrtoint ptr %.val139 to i64
  %i.aj = sub i64 %.pre-phi, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 12
  %i.al = trunc i64 %i.ak to i32
  %i.am = trunc i64 %.0.val131 to i32             ; 2 uses
  %i.an = and i32 %i.am, 536870911
  %i.ao = sub nsw i32 %i.al, %i.an
  %i.ap = and i32 %i.am, 536870912
  %.not102 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not102, ptr @.str.7, ptr @.str.6
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ao, ptr noundef nonnull %i.aq) ; 0 uses
  br label %bb.o

Gia_ObjIsPo.exit.thread:                          ; preds = %Gia_ObjIsPi.exit.thread, %Gia_ObjIsPo.exit
  br i1 %narrow.i.not.i.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %Gia_ObjIsPo.exit.thread
  %i.as = getelementptr i8, ptr %0, i64 72
  %.val6.i = load ptr, ptr %i.as, align 8, !tbaa !68 ; 2 uses
  %i.at = getelementptr i8, ptr %.val6.i, i64 4
  %.val6.val.i = load i32, ptr %i.at, align 4, !tbaa !64
  %i.au = getelementptr i8, ptr %0, i64 64
  %.val7.i = load ptr, ptr %i.au, align 8, !tbaa !63
  %i.av = getelementptr i8, ptr %.val7.i, i64 4
  %.val7.val.i = load i32, ptr %i.av, align 4, !tbaa !64
  %i.aw = lshr i64 %.0.val131, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 536870911
  %i.az = add i32 %.val6.val.i, %i.ay
  %i.ba = sub i32 %i.az, %.val7.val.i
  %.val4.i160 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.bb = getelementptr i8, ptr %.val6.i, i64 8
  %.val5.val.i161 = load ptr, ptr %i.bb, align 8, !tbaa !61
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val5.val.i161, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8  ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [12 x i8], ptr %.val4.i160, i64 %i.bf
  %.val3.i162 = load i64, ptr %i.bg, align 4
  %i.bh = trunc i64 %.val3.i162 to i32            ; 2 uses
  %i.bi = and i32 %i.bh, 536870911
  %i.bj = sub nsw i32 %i.be, %i.bi
  %i.bk = and i32 %i.bh, 536870912
  %.not101 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not101, ptr @.str.7, ptr @.str.6
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.bj, ptr noundef nonnull %i.bl) ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %Gia_ObjIsPo.exit.thread
  %.not.i = icmp ne i64 %i.y, 0                   ; 2 uses
  %i.bn = icmp ne i64 %i.z, 536870911
  %narrow.i169 = and i1 %.not.i, %i.bn
  br i1 %narrow.i169, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val137 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.bo = ptrtoint ptr %.val137 to i64
  %i.bp = sub i64 %.pre-phi, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 12
  %i.br = trunc i64 %i.bq to i32
  %i.bs = trunc i64 %.0.val131 to i32             ; 2 uses
  %i.bt = and i32 %i.bs, 536870911
  %i.bu = sub nsw i32 %i.br, %i.bt
  %i.bv = and i32 %i.bs, 536870912
  %.not100 = icmp eq i32 %i.bv, 0
  %i.bw = select i1 %.not100, ptr @.str.7, ptr @.str.6
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.bu, ptr noundef nonnull %i.bw) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %narrow.i.not.i172 = or i1 %.not.i, %i.aa
  br i1 %narrow.i.not.i172, label %Gia_ObjIsXor.exit.thread, label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %bb.m
  %i.by = trunc i64 %.0.val131 to i32             ; 2 uses
  %i.bz = and i32 %i.by, 536870911                ; 2 uses
  %i.ca = lshr i64 %.0.val131, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = and i32 %i.cb, 536870911                ; 2 uses
  %.not193 = icmp samesign ult i32 %i.bz, %i.cc
  br i1 %.not193, label %bb.n, label %Gia_ObjIsXor.exit.thread

bb.n:                                             ; preds = %Gia_ObjIsXor.exit
  %.val136 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.cd = ptrtoint ptr %.val136 to i64
  %i.ce = sub i64 %.pre-phi, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 12
  %i.cg = trunc i64 %i.cf to i32                  ; 2 uses
  %i.ch = sub nsw i32 %i.cg, %i.bz
  %i.ci = and i32 %i.by, 536870912
  %.not98 = icmp eq i32 %i.ci, 0
  %i.cj = select i1 %.not98, ptr @.str.7, ptr @.str.6
  %i.ck = sub nsw i32 %i.cg, %i.cc
  %i.cl = and i64 %.0.val131, 2305843009213693952
  %.not99 = icmp eq i64 %i.cl, 0
  %i.cm = select i1 %.not99, ptr @.str.7, ptr @.str.6
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.ch, ptr noundef nonnull %i.cj, i32 noundef %i.ck, ptr noundef nonnull %i.cm) ; 0 uses
  br label %bb.o

Gia_ObjIsXor.exit.thread:                         ; preds = %bb.m, %Gia_ObjIsXor.exit
  %.val125 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.co = ptrtoint ptr %.val125 to i64
  %i.cp = sub i64 %.pre-phi, %i.co
  %i.cq = sdiv exact i64 %i.cp, 12                ; 2 uses
  %i.cr = trunc i64 %i.cq to i32                  ; 4 uses
  %i.cs = getelementptr i8, ptr %0, i64 40
  %.val127 = load ptr, ptr %i.cs, align 8, !tbaa !59 ; 2 uses
  %.not.i175 = icmp eq ptr %.val127, null
  br i1 %.not.i175, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjIsMuxId.exit

Gia_ObjIsMuxId.exit:                              ; preds = %Gia_ObjIsXor.exit.thread
  %sext = shl i64 %i.cq, 32
  %i.ct = ashr exact i64 %sext, 30
  %i.cu = getelementptr inbounds i8, ptr %.val127, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8  ; 3 uses
  %.not194 = icmp eq i32 %i.cv, 0
  br i1 %.not194, label %Gia_ObjIsMuxId.exit.thread, label %Gia_ObjFaninC2.exit

Gia_ObjFaninC2.exit:                              ; preds = %Gia_ObjIsMuxId.exit
  %i.cw = ashr i32 %i.cv, 1
  %i.cx = and i32 %i.cv, 1
  %.not95 = icmp eq i32 %i.cx, 0
  %i.cy = select i1 %.not95, ptr @.str.7, ptr @.str.6
  %i.cz = lshr i64 %.0.val131, 32
  %i.da = trunc nuw i64 %i.cz to i32
  %i.db = and i32 %i.da, 536870911
  %i.dc = sub nsw i32 %i.cr, %i.db
  %i.dd = and i64 %.0.val131, 2305843009213693952
  %.not96 = icmp eq i64 %i.dd, 0
  %i.de = select i1 %.not96, ptr @.str.7, ptr @.str.6
  %i.df = trunc i64 %.0.val131 to i32             ; 2 uses
  %i.dg = and i32 %i.df, 536870911
  %i.dh = sub nsw i32 %i.cr, %i.dg
  %i.di = and i32 %i.df, 536870912
  %.not97 = icmp eq i32 %i.di, 0
  %i.dj = select i1 %.not97, ptr @.str.7, ptr @.str.6
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.cw, ptr noundef nonnull %i.cy, i32 noundef %i.dc, ptr noundef nonnull %i.de, i32 noundef %i.dh, ptr noundef nonnull %i.dj) ; 0 uses
  br label %bb.o

Gia_ObjIsMuxId.exit.thread:                       ; preds = %Gia_ObjIsXor.exit.thread, %Gia_ObjIsMuxId.exit
  %i.dl = trunc i64 %.0.val131 to i32             ; 2 uses
  %i.dm = and i32 %i.dl, 536870911
  %i.dn = sub nsw i32 %i.cr, %i.dm
  %i.do = and i32 %i.dl, 536870912
  %.not93 = icmp eq i32 %i.do, 0
  %i.dp = select i1 %.not93, ptr @.str.7, ptr @.str.6
  %i.dq = lshr i64 %.0.val131, 32
  %i.dr = trunc nuw i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 536870911
  %i.dt = sub nsw i32 %i.cr, %i.ds
  %i.du = and i64 %.0.val131, 2305843009213693952
  %.not94 = icmp eq i64 %i.du, 0
  %i.dv = select i1 %.not94, ptr @.str.7, ptr @.str.6
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.dn, ptr noundef nonnull %i.dp, i32 noundef %i.dt, ptr noundef nonnull %i.dv) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.j, %bb.n, %Gia_ObjIsMuxId.exit.thread, %Gia_ObjFaninC2.exit, %bb.l, %bb.i, %bb.f
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !88 ; 2 uses
  %.not103 = icmp eq ptr %i.dy, null
  br i1 %.not103, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val132 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.dz = ptrtoint ptr %.val132 to i64
  %i.ea = sub i64 %.pre-phi, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 12
  %sext.i183 = shl i64 %i.eb, 32
  %i.ec = ashr exact i64 %sext.i183, 30
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8
  %i.ef = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ee) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.eg = load i64, ptr %.0, align 4              ; 2 uses
  %i.eh = and i64 %i.eg, 1073741824
  %.not104 = icmp eq i64 %i.eh, 0
  br i1 %.not104, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) ; 0 uses
  %.pre = load i64, ptr %.0, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ej = phi i64 [ %.pre, %bb.r ], [ %i.eg, %bb.q ]
  %i.ek = and i64 %i.ej, 4611686018427387904
  %.not105 = icmp eq i64 %i.ek, 0
  br i1 %.not105, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.em = getelementptr i8, ptr %0, i64 264       ; 2 uses
  %.val147 = load ptr, ptr %i.em, align 8, !tbaa !108 ; 2 uses
  %.not195 = icmp eq ptr %.val147, null
  br i1 %.not195, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val124 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.en = ptrtoint ptr %.val124 to i64
  %i.eo = sub i64 %.pre-phi, %i.en
  %i.ep = sdiv exact i64 %i.eo, 12
  %i.eq = getelementptr i8, ptr %.val147, i64 8
  %.val148.val = load ptr, ptr %i.eq, align 8, !tbaa !61
  %sext196 = shl i64 %i.ep, 32
  %i.er = ashr exact i64 %sext196, 30
  %i.es = getelementptr inbounds i8, ptr %.val148.val, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %.not197 = icmp eq i32 %i.et, 0
  br i1 %.not197, label %bb.x, label %2

2:                                                ; preds = %bb.v
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph.a, %2
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.a ], [ 0, %2 ] ; 3 uses
  %.val123203 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.eu = ptrtoint ptr %.val123203 to i64
  %i.ev = sub i64 %.pre-phi, %i.eu
  %i.ew = sdiv exact i64 %i.ev, 12
  %.val149204 = load ptr, ptr %i.em, align 8, !tbaa !108
  %i.ex = getelementptr i8, ptr %.val149204, i64 8
  %.val149.val205 = load ptr, ptr %i.ex, align 8, !tbaa !61 ; 2 uses
  %sext198206 = shl i64 %i.ew, 32
  %i.ey = ashr exact i64 %sext198206, 30
  %i.ez = getelementptr inbounds i8, ptr %.val149.val205, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !8
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %.val149.val205, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !8
  %4 = sext i32 %i.fd to i64
  %5 = icmp slt i64 %indvars.iv, %4
  br i1 %5, label %.lr.ph.a, label %.critedge

.lr.ph.a:                                         ; preds = %bb.w
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !8
  %i.fh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.fg) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.w, !llvm.loop !116

.critedge:                                        ; preds = %bb.w
  %putchar = tail call i32 @putchar(i32 125)      ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.critedge, %bb.v, %bb.u
  %i.fi = getelementptr i8, ptr %0, i64 272       ; 3 uses
  %.val151 = load ptr, ptr %i.fi, align 8, !tbaa !117 ; 2 uses
  %.not199 = icmp eq ptr %.val151, null
  br i1 %.not199, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val121 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.fj = ptrtoint ptr %.val121 to i64
  %i.fk = sub i64 %.pre-phi, %i.fj
  %i.fl = sdiv exact i64 %i.fk, 12
  %i.fm = getelementptr i8, ptr %.val151, i64 8
  %.val152.val = load ptr, ptr %i.fm, align 8, !tbaa !118
  %sext200 = shl i64 %i.fl, 32
  %i.fn = ashr exact i64 %sext200, 28
  %i.fo = getelementptr inbounds i8, ptr %.val152.val, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 4
  %.val.i184 = load i32, ptr %i.fp, align 4, !tbaa !64
  %.not201 = icmp eq i32 %.val.i184, 0
  br i1 %.not201, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  %.val120208 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.fr = ptrtoint ptr %.val120208 to i64
  %i.fs = sub i64 %.pre-phi, %i.fr
  %i.ft = sdiv exact i64 %i.fs, 12
  %.val153209 = load ptr, ptr %i.fi, align 8, !tbaa !117
  %i.fu = getelementptr i8, ptr %.val153209, i64 8
  %.val153.val210 = load ptr, ptr %i.fu, align 8, !tbaa !118
  %sext202211 = shl i64 %i.ft, 32
  %i.fv = ashr exact i64 %sext202211, 28
  %i.fw = getelementptr inbounds i8, ptr %.val153.val210, i64 %i.fv ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 4
  %.val.i185212 = load i32, ptr %i.fx, align 4, !tbaa !64
  %i.fy = icmp sgt i32 %.val.i185212, 0
  br i1 %i.fy, label %.lr.ph214, label %.critedge2

.lr.ph214:                                        ; preds = %bb.z, %.lr.ph214
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %.lr.ph214 ], [ 0, %bb.z ] ; 2 uses
  %i.fz = phi ptr [ %i.gj, %.lr.ph214 ], [ %i.fw, %bb.z ]
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %.val.i186 = load ptr, ptr %i.ga, align 8, !tbaa !61
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val.i186, i64 %indvars.iv216
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8
  %i.gd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.gc) ; 0 uses
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %.val120 = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.ge = ptrtoint ptr %.val120 to i64
  %i.gf = sub i64 %.pre-phi, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 12
  %.val153 = load ptr, ptr %i.fi, align 8, !tbaa !117
  %i.gh = getelementptr i8, ptr %.val153, i64 8
  %.val153.val = load ptr, ptr %i.gh, align 8, !tbaa !118
  %sext202 = shl i64 %i.gg, 32
  %i.gi = ashr exact i64 %sext202, 28
  %i.gj = getelementptr inbounds i8, ptr %.val153.val, i64 %i.gi ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 4
  %.val.i185 = load i32, ptr %i.gk, align 4, !tbaa !64
  %i.gl = sext i32 %.val.i185 to i64
  %i.gm = icmp slt i64 %indvars.iv.next217, %i.gl
  br i1 %i.gm, label %.lr.ph214, label %.critedge2, !llvm.loop !120

.critedge2:                                       ; preds = %.lr.ph214, %bb.z
  %putchar110 = tail call i32 @putchar(i32 125)   ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge2, %bb.y, %bb.x
  %putchar111 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #26

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManPrint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val3.i = load i32, ptr %i.e, align 4, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val.i = load i32, ptr %i.h, align 4, !tbaa !64
  %i.i = add i32 %.val.i, %.val3.i
  %i.j = xor i32 %i.i, -1
  %i.k = getelementptr i8, ptr %0, i64 48
  %.val13 = load i32, ptr %i.k, align 8, !tbaa !121 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 52
  %.val15 = load i32, ptr %i.l, align 4, !tbaa !122 ; 2 uses
  %.neg = add i32 %i.b, %i.j
  %i.m = add i32 %.val13, %.val15
  %i.n = sub i32 %.neg, %i.m
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.n, i32 noundef %.val13, i32 noundef %.val15) ; 0 uses
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.a, align 8, !tbaa !42
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.val = load ptr, ptr %i.p, align 8, !tbaa !46  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv
  tail call void @Gia_ObjPrint(ptr noundef nonnull %0, ptr noundef nonnull %i.s)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.a, align 8, !tbaa !42
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %.critedge, !llvm.loop !123

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManPrintCo_rec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #25 {
bb.a:
  %.val = load i64, ptr %1, align 4               ; 2 uses
  %i.a = and i64 %.val, 2147483648
  %.not.i = icmp ne i64 %i.a, 0
  %i.b = and i64 %.val, 536870911                 ; 2 uses
  %i.c = icmp eq i64 %i.b, 536870911
  %narrow.i.not = or i1 %.not.i, %i.c
  br i1 %narrow.i.not, label %Gia_ObjIsMux.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i64 0, %i.b
  %i.e = getelementptr inbounds [12 x i8], ptr %1, i64 %i.d
  tail call void @Gia_ManPrintCo_rec(ptr noundef %0, ptr noundef nonnull %i.e)
  %i.f = load i64, ptr %1, align 4
  %i.g = lshr i64 %i.f, 32
  %i.h = and i64 %i.g, 536870911
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [12 x i8], ptr %1, i64 %i.i
  tail call void @Gia_ManPrintCo_rec(ptr noundef %0, ptr noundef nonnull %i.j)
  %i.k = getelementptr i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.k, align 8, !tbaa !46 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.l, align 8, !tbaa !59 ; 2 uses
  %.not.i.i = icmp eq ptr %.val14, null
  br i1 %.not.i.i, label %Gia_ObjIsMux.exit.thread, label %Gia_ObjIsMux.exit

Gia_ObjIsMux.exit:                                ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64
  %i.n = ptrtoint ptr %.val13 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 12
  %sext.i = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext.i, 30
  %i.r = getelementptr inbounds i8, ptr %.val14, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %Gia_ObjIsMux.exit.thread, label %Gia_ObjFanin2.exit

Gia_ObjFanin2.exit:                               ; preds = %Gia_ObjIsMux.exit
  %i.t = ashr i32 %i.s, 1
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %.val13, i64 %i.u
  tail call void @Gia_ManPrintCo_rec(ptr noundef nonnull %0, ptr noundef %i.v)
  br label %Gia_ObjIsMux.exit.thread

Gia_ObjIsMux.exit.thread:                         ; preds = %bb.b, %Gia_ObjIsMux.exit, %Gia_ObjFanin2.exit, %bb.a
  tail call void @Gia_ObjPrint(ptr noundef %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManPrintCo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #25 {
bb.a:
  %.val = load i64, ptr %1, align 4
  %i.a = lshr i64 %.val, 32
  %i.b = trunc nuw i64 %i.a to i32
  %i.c = and i32 %i.b, 536870911
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.c) ; 0 uses
  %i.e = load i64, ptr %1, align 4
  %i.f = and i64 %i.e, 536870911
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [12 x i8], ptr %1, i64 %i.g
  tail call void @Gia_ManPrintCo_rec(ptr noundef %0, ptr noundef nonnull %i.h)
  tail call void @Gia_ObjPrint(ptr noundef %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManPrintCollect_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 {
bb.a:
end_hunk_0
