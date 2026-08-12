inline.NumInlined: 337
inline.NumDeleted: 72
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Gia_ManSpeedupObj_rec:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.d = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %.val.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12
  %sext.i = shl i64 %i.g, 32
  %i.h = ashr exact i64 %sext.i, 30
  %i.i = getelementptr inbounds i8, ptr %i.b, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load i32, ptr %i.k, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq i32 %i.j, %i.l
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.l, ptr %i.i, align 4, !tbaa !8
  %.val = load i64, ptr %1, align 4               ; 2 uses
  %i.m = and i64 %.val, 2684354559
  %narrow.i.not = icmp eq i64 %i.m, 2684354559
  br i1 %narrow.i.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i64 %.val, 536870911
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [12 x i8], ptr %1, i64 %i.o
  %i.q = tail call i32 @Gia_ManSpeedupObj_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef %2)
  %.not15 = icmp eq i32 %i.q, 0
  br i1 %.not15, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i64, ptr %1, align 4
  %i.s = lshr i64 %i.r, 32
  %i.t = and i64 %i.s, 536870911
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [12 x i8], ptr %1, i64 %i.u
  %i.w = tail call i32 @Gia_ManSpeedupObj_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.v, ptr noundef %2)
  %.not16 = icmp eq i32 %i.w, 0
  br i1 %.not16, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val17 = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.x = ptrtoint ptr %.val17 to i64
  %i.y = sub i64 %i.d, %i.x
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !88 ; 7 uses
  %i.ad = load i32, ptr %2, align 8, !tbaa !89
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 64) #17
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !37
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.al = icmp samesign ult i32 %i.ac, 1073741823
  %i.am = shl nuw nsw i32 %i.ac, 1
  %spec.select.i = select i1 %i.al, i32 %i.am, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ac, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ao, null
  %i.ap = zext nneg i32 %spec.select.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.aq) #17
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.aq) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = phi ptr [ %i.ar, %bb.l ], [ %i.as, %bb.m ]
  store ptr %i.at, ptr %i.an, align 8, !tbaa !37
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !89
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !88
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.au = phi i32 [ %i.ac, %bb.e ], [ %i.ac, %bb.j ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !37
  %i.ax = add nsw i32 %i.au, 1
  store i32 %i.ax, ptr %i.ab, align 4, !tbaa !88
  %i.ay = sext i32 %i.au to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  store i32 %i.aa, ptr %i.az, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %Vec_IntPush.exit
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %Vec_IntPush.exit ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Gia_ManSpeedupObj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  tail call void @Gia_ManIncrementTravId(ptr noundef %1) #16
  %i.b = getelementptr i8, ptr %1, i64 32         ; 7 uses
  %.val131 = load ptr, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i32, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107  ; 2 uses
  store i32 %i.d, ptr %i.f, align 4, !tbaa !8
  %i.g = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %.val130141 = load i32, ptr %i.g, align 4, !tbaa !88
  %i.h = icmp slt i32 %.val130141, 1
  %.not = icmp eq ptr %.val131, null
  %or.cond = select i1 %i.h, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 8
  %.val117 = load ptr, ptr %i.i, align 8, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val117, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = shl nsw i64 %i.l, 2
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %i.m
  store i32 %i.d, ptr %i.n, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val130 = load i32, ptr %i.g, align 4, !tbaa !88
  %i.o = sext i32 %.val130 to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %bb.b, label %..critedge_crit_edge, !llvm.loop !109

..critedge_crit_edge:                             ; preds = %bb.b
  %i.q = getelementptr inbounds [12 x i8], ptr %.val131, i64 %i.l
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.q, %..critedge_crit_edge ]
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  store i32 0, ptr %i.s, align 4, !tbaa !88
  store i32 100, ptr %i.r, align 8, !tbaa !89
  %i.t = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #18
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !37
  %i.v = tail call i32 @Gia_ManSpeedupObj_rec(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.r)
  %.not108 = icmp eq i32 %i.v, 0
  br i1 %.not108, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.critedge
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.w) #16
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.c, %bb.d
  tail call void @free(ptr noundef nonnull %i.r) #16
  br label %bb.m

bb.e:                                             ; preds = %.critedge
  %i.x = getelementptr i8, ptr %4, i64 4          ; 4 uses
  %.val129 = load i32, ptr %i.x, align 4, !tbaa !88
  %.val129.fr = freeze i32 %.val129               ; 2 uses
  %i.y = shl nuw i32 1, %.val129.fr               ; 2 uses
  %.not168 = icmp eq i32 %.val129.fr, 31          ; 2 uses
  br i1 %.not168, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.z = getelementptr i8, ptr %3, i64 8
  %i.aa = getelementptr i8, ptr %4, i64 8
  %smax = tail call i32 @llvm.smax.i32(i32 %i.y, i32 1)
  %wide.trip.count189 = zext nneg i32 %smax to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge6
  %indvars.iv186 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next187, %.critedge6 ] ; 3 uses
  %.2159 = phi ptr [ %.1, %.preheader.lr.ph ], [ %.7.lcssa, %.critedge6 ]
  %.val128 = load i32, ptr %i.g, align 4, !tbaa !88 ; 3 uses
  %i.ab = icmp sgt i32 %.val128, 0
  br i1 %i.ab, label %.lr.ph146, label %.critedge2

.lr.ph146:                                        ; preds = %.preheader
  %.val121 = load ptr, ptr %i.b, align 8, !tbaa !57 ; 6 uses
  %.not111 = icmp eq ptr %.val121, null
  br i1 %.not111, label %.critedge2, label %.lr.ph146.split

.lr.ph146.split:                                  ; preds = %.lr.ph146
  %.val116 = load ptr, ptr %i.z, align 8, !tbaa !37 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val128 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ac = icmp ult i32 %.val128, 4
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph146.split.new

.lr.ph146.split.new:                              ; preds = %.lr.ph146.split
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph146.split.new
  %indvars.iv175 = phi i64 [ 0, %.lr.ph146.split.new ], [ %indvars.iv.next176.3, %bb.f ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph146.split.new ], [ %niter.next.3, %bb.f ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv175
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [12 x i8], ptr %.val121, i64 %i.af
  %i.ah = shl nsw i32 %i.ae, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !110
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv175
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8  ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [12 x i8], ptr %.val121, i64 %i.am
  %i.ao = shl nsw i32 %i.al, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !110
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv175
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8  ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [12 x i8], ptr %.val121, i64 %i.at
  %i.av = shl nsw i32 %i.as, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !110
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv175
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8  ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %.val121, i64 %i.ba ; 2 uses
  %i.bc = shl nsw i32 %i.az, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !110
  %indvars.iv.next176.3 = add nuw nsw i64 %indvars.iv175, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge2.loopexit.unr-lcssa, label %bb.f, !llvm.loop !112

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph146.split
  %indvars.iv175.epil.init = phi i64 [ 0, %.lr.ph146.split ], [ %indvars.iv.next176.3, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod214 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod214)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv175.epil = phi i64 [ %indvars.iv175.epil.init, %.epil.preheader ], [ %indvars.iv.next176.epil, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val116, i64 %indvars.iv175.epil
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8  ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [12 x i8], ptr %.val121, i64 %i.bg ; 2 uses
  %i.bi = shl nsw i32 %i.bf, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !110
  %indvars.iv.next176.epil = add nuw nsw i64 %indvars.iv175.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2, label %bb.g, !llvm.loop !113

.critedge2:                                       ; preds = %.critedge2.loopexit.unr-lcssa, %bb.g, %.lr.ph146, %.preheader
  %.4 = phi ptr [ null, %.lr.ph146 ], [ %.2159, %.preheader ], [ %i.bb, %.critedge2.loopexit.unr-lcssa ], [ %i.bh, %bb.g ]
  %.val127 = load i32, ptr %i.x, align 4, !tbaa !88 ; 3 uses
  %i.bk = icmp sgt i32 %.val127, 0
  br i1 %i.bk, label %.lr.ph150, label %.critedge4

.lr.ph150:                                        ; preds = %.critedge2
  %.val120 = load ptr, ptr %i.b, align 8, !tbaa !57 ; 6 uses
  %.not112 = icmp eq ptr %.val120, null
  br i1 %.not112, label %.critedge4, label %.lr.ph150.split

.lr.ph150.split:                                  ; preds = %.lr.ph150
  %.val115 = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 5 uses
  %wide.trip.count181 = zext nneg i32 %.val127 to i64 ; 2 uses
  %i.bl = trunc nuw nsw i64 %indvars.iv186 to i32 ; 5 uses
  %xtraiter216 = and i64 %wide.trip.count181, 3   ; 3 uses
  %i.bm = icmp ult i32 %.val127, 4
  br i1 %i.bm, label %.epil.preheader215, label %.lr.ph150.split.new

.lr.ph150.split.new:                              ; preds = %.lr.ph150.split
  %unroll_iter221 = and i64 %wide.trip.count181, 2147483644
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph150.split.new
  %indvars.iv178 = phi i64 [ 0, %.lr.ph150.split.new ], [ %indvars.iv.next179.3, %bb.h ] ; 6 uses
  %niter222 = phi i64 [ 0, %.lr.ph150.split.new ], [ %niter222.next.3, %bb.h ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %indvars.iv178
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [12 x i8], ptr %.val120, i64 %i.bp
  %i.br = trunc nuw nsw i64 %indvars.iv178 to i32
  %i.bs = lshr i32 %i.bl, %i.br
  %i.bt = and i32 %i.bs, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !110
  %indvars.iv.next179 = or disjoint i64 %indvars.iv178, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %indvars.iv.next179
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [12 x i8], ptr %.val120, i64 %i.bx
  %i.bz = trunc nuw nsw i64 %indvars.iv.next179 to i32
  %i.ca = lshr i32 %i.bl, %i.bz
  %i.cb = and i32 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !110
  %indvars.iv.next179.1 = or disjoint i64 %indvars.iv178, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %indvars.iv.next179.1
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [12 x i8], ptr %.val120, i64 %i.cf
  %i.ch = trunc nuw nsw i64 %indvars.iv.next179.1 to i32
  %i.ci = lshr i32 %i.bl, %i.ch
  %i.cj = and i32 %i.ci, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !110
  %indvars.iv.next179.2 = or disjoint i64 %indvars.iv178, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %indvars.iv.next179.2
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [12 x i8], ptr %.val120, i64 %i.cn ; 2 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv.next179.2 to i32
  %i.cq = lshr i32 %i.bl, %i.cp
  %i.cr = and i32 %i.cq, 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !110
  %indvars.iv.next179.3 = add nuw nsw i64 %indvars.iv178, 4 ; 2 uses
  %niter222.next.3 = add i64 %niter222, 4         ; 2 uses
  %niter222.ncmp.3 = icmp eq i64 %niter222.next.3, %unroll_iter221
  br i1 %niter222.ncmp.3, label %.critedge4.loopexit.unr-lcssa, label %bb.h, !llvm.loop !114

.critedge4.loopexit.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod218.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod218.not, label %.critedge4, label %.epil.preheader215

.epil.preheader215:                               ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph150.split
  %indvars.iv178.epil.init = phi i64 [ 0, %.lr.ph150.split ], [ %indvars.iv.next179.3, %.critedge4.loopexit.unr-lcssa ]
  %lcmp.mod220 = icmp ne i64 %xtraiter216, 0
  tail call void @llvm.assume(i1 %lcmp.mod220)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader215
  %indvars.iv178.epil = phi i64 [ %indvars.iv178.epil.init, %.epil.preheader215 ], [ %indvars.iv.next179.epil, %bb.i ] ; 3 uses
  %epil.iter217 = phi i64 [ 0, %.epil.preheader215 ], [ %epil.iter217.next, %bb.i ]
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %indvars.iv178.epil
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [12 x i8], ptr %.val120, i64 %i.cv ; 2 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv178.epil to i32
  %i.cy = lshr i32 %i.bl, %i.cx
  %i.cz = and i32 %i.cy, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !110
  %indvars.iv.next179.epil = add nuw nsw i64 %indvars.iv178.epil, 1
  %epil.iter217.next = add i64 %epil.iter217, 1   ; 2 uses
  %epil.iter217.cmp.not = icmp eq i64 %epil.iter217.next, %xtraiter216
  br i1 %epil.iter217.cmp.not, label %.critedge4, label %bb.i, !llvm.loop !115

.critedge4:                                       ; preds = %.critedge4.loopexit.unr-lcssa, %bb.i, %.lr.ph150, %.critedge2
  %.6 = phi ptr [ null, %.lr.ph150 ], [ %.4, %.critedge2 ], [ %i.co, %.critedge4.loopexit.unr-lcssa ], [ %i.cw, %bb.i ] ; 2 uses
  %.val126154 = load i32, ptr %i.s, align 4, !tbaa !88
  %i.db = icmp sgt i32 %.val126154, 0
  br i1 %i.db, label %.lr.ph156, label %.critedge4..critedge6_crit_edge

.critedge4..critedge6_crit_edge:                  ; preds = %.critedge4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.6, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !110
  br label %.critedge6

.lr.ph156:                                        ; preds = %.critedge4, %.lr.ph156
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %.lr.ph156 ], [ 0, %.critedge4 ] ; 2 uses
  %.val114 = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val114, i64 %indvars.iv183
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %.val119 = load ptr, ptr %i.b, align 8, !tbaa !57, !nonnull !116, !noundef !116
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [12 x i8], ptr %.val119, i64 %i.de ; 5 uses
  %i.dg = load i64, ptr %i.df, align 4            ; 4 uses
  %i.dh = and i64 %i.dg, 536870911
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [12 x i8], ptr %i.df, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !110
  %i.dm = trunc i64 %i.dg to i32
  %i.dn = lshr i32 %i.dm, 29
  %i.do = and i32 %i.dn, 1
  %i.dp = xor i32 %i.do, %i.dl
  %i.dq = lshr i64 %i.dg, 32
  %i.dr = and i64 %i.dq, 536870911
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds [12 x i8], ptr %i.df, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !110
  %i.dw = lshr i64 %i.dg, 61
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = and i32 %i.dx, 1
  %i.dz = xor i32 %i.dy, %i.dv
  %i.ea = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.dp, i32 noundef %i.dz) #16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !110
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %.val126 = load i32, ptr %i.s, align 4, !tbaa !88
  %i.ec = sext i32 %.val126 to i64
  %i.ed = icmp slt i64 %indvars.iv.next184, %i.ec
  br i1 %i.ed, label %.lr.ph156, label %.critedge6, !llvm.loop !117

.critedge6:                                       ; preds = %.lr.ph156, %.critedge4..critedge6_crit_edge
  %i.ee = phi i32 [ %.pre, %.critedge4..critedge6_crit_edge ], [ %i.ea, %.lr.ph156 ]
  %.7.lcssa = phi ptr [ %.6, %.critedge4..critedge6_crit_edge ], [ %i.df, %.lr.ph156 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv186
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !8
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %._crit_edge, label %.preheader, !llvm.loop !118

._crit_edge:                                      ; preds = %.critedge6, %bb.e
  %i.eg = load ptr, ptr %i.u, align 8, !tbaa !37  ; 2 uses
  %.not.i139 = icmp eq ptr %i.eg, null
  br i1 %.not.i139, label %Vec_IntFree.exit140, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.eg) #16
  br label %Vec_IntFree.exit140

Vec_IntFree.exit140:                              ; preds = %._crit_edge, %bb.j
  tail call void @free(ptr noundef nonnull %i.r) #16
  %i.eh = getelementptr i8, ptr %4, i64 8
  %.val125164 = load i32, ptr %i.x, align 4, !tbaa !88
  %i.ei = icmp slt i32 %.val125164, 1
  %brmerge = or i1 %i.ei, %.not168
  br i1 %brmerge, label %.critedge8, label %.lr.ph166.split.us.preheader

.lr.ph166.split.us.preheader:                     ; preds = %Vec_IntFree.exit140
  %5 = sext i32 %i.y to i64
  br label %.lr.ph166.split.us

.lr.ph166.split.us:                               ; preds = %.lr.ph166.split.us.preheader, %._crit_edge163.us
  %indvars.iv194 = phi i64 [ 0, %.lr.ph166.split.us.preheader ], [ %indvars.iv.next195, %._crit_edge163.us ] ; 3 uses
  %.val118.us = load ptr, ptr %i.b, align 8, !tbaa !57 ; 2 uses
  %.not109.us = icmp eq ptr %.val118.us, null
  br i1 %.not109.us, label %.critedge8, label %.lr.ph162.us

.lr.ph162.us:                                     ; preds = %.lr.ph166.split.us
  %.val.us = load ptr, ptr %i.eh, align 8, !tbaa !37
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val.us, i64 %indvars.iv194
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [12 x i8], ptr %.val118.us, i64 %i.el
  %i.en = trunc nuw nsw i64 %indvars.iv194 to i32 ; 2 uses
  %i.eo = shl nuw i32 1, %i.en
  %i.ep = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eq = and i64 %i.ep, -2
  %i.er = trunc i64 %i.ep to i32
  %i.es = and i32 %i.er, 1
  %i.et = shl i32 2, %i.en
  %i.eu = sext i32 %i.et to i64
  %i.ev = sext i32 %i.eo to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.a, i64 %i.ev
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph162.us, %bb.k
  %indvars.iv191 = phi i64 [ 0, %.lr.ph162.us ], [ %indvars.iv.next192, %bb.k ] ; 3 uses
  %.val132.us = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.ew = ptrtoint ptr %.val132.us to i64
  %i.ex = sub i64 %i.eq, %i.ew
  %i.ey = sdiv exact i64 %i.ex, 12
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = shl nsw i32 %i.ez, 1
  %i.fb = or disjoint i32 %i.fa, %i.es
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv191
  %i.fc = load i32, ptr %gep, align 4, !tbaa !8
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv191 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !8
  %i.ff = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.fb, i32 noundef %i.fc, i32 noundef %i.fe) #16
  store i32 %i.ff, ptr %i.fd, align 8, !tbaa !8
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, %i.eu ; 2 uses
  %i.fg = icmp slt i64 %indvars.iv.next192, %5
  br i1 %i.fg, label %bb.k, label %._crit_edge163.us, !llvm.loop !119

._crit_edge163.us:                                ; preds = %bb.k
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %.val125.us = load i32, ptr %i.x, align 4, !tbaa !88
  %i.fh = sext i32 %.val125.us to i64
  %i.fi = icmp slt i64 %indvars.iv.next195, %i.fh
  br i1 %i.fi, label %.lr.ph166.split.us, label %.critedge8, !llvm.loop !120

.critedge8:                                       ; preds = %.lr.ph166.split.us, %._crit_edge163.us, %Vec_IntFree.exit140
  %.val123 = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.fj = ptrtoint ptr %2 to i64
  %i.fk = ptrtoint ptr %.val123 to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 12                ; 2 uses
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  %i.fo = load i32, ptr %i.a, align 16, !tbaa !8
  %i.fp = ashr i32 %i.fo, 1                       ; 3 uses
  %.not110 = icmp sgt i32 %i.fp, %i.fn
  br i1 %.not110, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge8
  %i.fq = getelementptr i8, ptr %0, i64 192
  %.val133 = load ptr, ptr %i.fq, align 8, !tbaa !121
  %i.fr = sext i32 %i.fp to i64                   ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val133, i64 %i.fr ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = and i32 %i.fn, 268435455
  %i.fv = and i32 %i.ft, -268435456
  %i.fw = or disjoint i32 %i.fv, %i.fu
  store i32 %i.fw, ptr %i.fs, align 4
  %i.fx = getelementptr i8, ptr %0, i64 200
  %.val134 = load ptr, ptr %i.fx, align 8, !tbaa !122 ; 2 uses
  %sext = shl i64 %i.fm, 32
  %i.fy = ashr exact i64 %sext, 30
  %i.fz = getelementptr inbounds i8, ptr %.val134, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !8
  %i.gb = getelementptr inbounds [4 x i8], ptr %.val134, i64 %i.fr
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !8
  store i32 %i.fp, ptr %i.fz, align 4, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %.critedge8, %bb.l, %Vec_IntFree.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #5

declare i32 @Gia_ManHashAnd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Gia_ManHashMux(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @Gia_ManSpeedup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not = icmp eq ptr %i.b, null                  ; 4 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 3 uses
  %.not262 = icmp eq ptr %i.d, null
  br i1 %.not262, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @Tim_ManDup(ptr noundef nonnull %i.d, i32 noundef 1) #16
  store ptr %i.e, ptr %i.c, align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.f = tail call float @Gia_ManDelayTraceLut(ptr noundef nonnull %0) ; 2 uses
  %i.g = sitofp i32 %1 to float
  %i.h = fmul float %i.f, %i.g
  %i.i = fdiv float %i.h, 1.000000e+02
  %i.j = select i1 %.not, float 1.000000e+00, float %i.i ; 5 uses
  %.not263 = icmp eq i32 %3, 0                    ; 3 uses
  br i1 %.not263, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fpext float %i.f to double
  %i.l = fpext float %i.j to double
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %i.k, double noundef %i.l) ; 0 uses
  %i.n = select i1 %.not, ptr @.str.3, ptr @.str.2
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %i.n) ; 0 uses
  br i1 %.not, label %.thread584, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %1) ; 0 uses
  br label %.thread584

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val286 = load i32, ptr %i.q, align 8, !tbaa !35 ; 3 uses
  %i.r = sext i32 %.val286 to i64
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 4) #19 ; 2 uses
  %i.t = icmp sgt i32 %.val286, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

.thread584:                                       ; preds = %bb.e, %bb.f
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.u = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val286585 = load i32, ptr %i.u, align 8, !tbaa !35 ; 3 uses
  %i.v = sext i32 %.val286585 to i64
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 4) #19 ; 2 uses
  %i.x = icmp sgt i32 %.val286585, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge408

.lr.ph:                                           ; preds = %.thread584, %bb.g
  %i.y = phi ptr [ %i.w, %.thread584 ], [ %i.s, %bb.g ] ; 4 uses
  %.val286586 = phi i32 [ %.val286585, %.thread584 ], [ %.val286, %bb.g ] ; 2 uses
  %i.z = phi ptr [ %i.u, %.thread584 ], [ %i.q, %bb.g ] ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 264
  %.val295 = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ab = getelementptr i8, ptr %.val295, i64 8
  %.val295.val = load ptr, ptr %i.ab, align 8, !tbaa !37
  %i.ac = getelementptr i8, ptr %0, i64 744
  %wide.trip.count = zext nneg i32 %.val286586 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val295.val, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %.not390 = icmp eq i32 %i.ae, 0
  br i1 %.not390, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val342 = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.af = getelementptr i8, ptr %.val342, i64 8
  %.val342.val = load ptr, ptr %i.af, align 8, !tbaa !47
  %.idx = mul i64 %indvars.iv, 12
  %i.ag = getelementptr i8, ptr %.val342.val, i64 %.idx
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !50
  %i.aj = fcmp ult float %i.ai, %i.j
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = trunc nuw nsw i64 %indvars.iv to i32
  %i.al = tail call i32 @Gia_LutDelayTraceTCEdges(ptr noundef nonnull %0, i32 noundef %i.ak, float noundef %i.j)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.al, ptr %i.am, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.k
  br i1 %.not263, label %._crit_edge.thread, label %.lr.ph407

.lr.ph407:                                        ; preds = %._crit_edge
end_hunk_0
