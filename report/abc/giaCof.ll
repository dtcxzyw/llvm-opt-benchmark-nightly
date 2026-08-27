Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCof?download=true
inline.NumInlined: 312
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Cof_ManCountRemoved:bb.a
  %i.et = shl nsw i64 %i.es, 2
  %scevgep.i.i.i.i.i114 = getelementptr i8, ptr %i.er, i64 %i.et
  %i.eu = sub i32 %.val95, %i.ep
  %i.ev = zext i32 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 2
  %i.ex = add nuw nsw i64 %i.ew, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i114, i8 0, i64 %i.ex, i1 false), !tbaa !45
  br label %._crit_edge.i.i.i.i.i115

._crit_edge.i.i.i.i.i115:                         ; preds = %.lr.ph.i.i.i.i.i113, %Vec_IntGrow.exit.i.i.i.i.i111
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !32
  br label %Cof_ObjLevel.exit121

Cof_ObjLevel.exit121:                             ; preds = %bb.w, %._crit_edge.i.i.i.i.i115
  %i.ey = zext i32 %.val95 to i64
  %i.ez = getelementptr i8, ptr %.val94.val99, i64 8
  %.val.i.i.i.i116 = load ptr, ptr %i.ez, align 8, !tbaa !34
  %sext.i.i117 = shl nuw i64 %i.ey, 32
  %i.fa = ashr exact i64 %sext.i.i117, 30
  %i.fb = getelementptr inbounds i8, ptr %.val.i.i.i.i116, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !45
  %i.fd = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.fe = sext i32 %i.fc to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !45
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !76
  %.val100 = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.fi = ptrtoint ptr %i.bs to i64
  %i.fj = ptrtoint ptr %.val100 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = trunc i64 %i.fl to i32
  store i32 %i.fm, ptr %i.ff, align 4, !tbaa !45
  %i.fn = add nsw i32 %.2125, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.v, %bb.o, %bb.n, %Cof_ObjLevel.exit121
  %.3 = phi i32 [ %.2125, %bb.n ], [ %.2125, %bb.o ], [ %.2125, %bb.v ], [ %i.fn, %Cof_ObjLevel.exit121 ] ; 2 uses
  %i.fo = add nuw nsw i32 %.070126, 1             ; 2 uses
  %i.fp = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.fq = lshr i32 %i.fp, 8
  %i.fr = icmp samesign ult i32 %i.fo, %i.fq
  br i1 %i.fr, label %bb.n, label %.critedge2, !llvm.loop !79

.critedge2:                                       ; preds = %bb.aj, %.lr.ph131
  %.2.lcssa = phi i32 [ %.1129, %.lr.ph131 ], [ %.3, %bb.aj ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.069 = load i32, ptr %i.fs, align 4, !tbaa !45 ; 2 uses
  %.not = icmp eq i32 %.069, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph131, !llvm.loop !80

.critedge.loopexit:                               ; preds = %.critedge2
  %.pre = load ptr, ptr %i.av, align 8, !tbaa !57
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph135
  %i.ft = phi ptr [ %i.bd, %.lr.ph135 ], [ %.pre, %.critedge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.072133, %.lr.ph135 ], [ %.2.lcssa, %.critedge.loopexit ] ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %indvars.iv
  store i32 0, ptr %i.fu, align 4, !tbaa !45
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fv = load i32, ptr %i.ba, align 8, !tbaa !78
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next, %i.fw
  br i1 %i.fx, label %.lr.ph135, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %.critedge, %Cof_ObjLevel.exit
  %.072.lcssa = phi i32 [ 0, %Cof_ObjLevel.exit ], [ %.1.lcssa, %.critedge ]
  ret i32 %.072.lcssa
}

declare i32 @Gia_ManHashAndTry(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Cof_ManPrintHighFanoutOne(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.b) ; 0 uses
  %.val9 = load i32, ptr %1, align 4              ; 2 uses
  %i.d = lshr i32 %.val9, 4
  %i.e = and i32 %i.d, 15
  %i.f = lshr i32 %.val9, 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !53
  %i.i = shl i32 %i.h, 1
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.e, i32 noundef %i.f, i32 noundef %i.i) ; 0 uses
  %.val6 = load ptr, ptr %0, align 8, !tbaa !8
  %.val7 = load i32, ptr %i.a, align 4, !tbaa !46 ; 7 uses
  %i.k = getelementptr i8, ptr %.val6, i64 160
  %.val6.val8 = load ptr, ptr %i.k, align 8, !tbaa !75 ; 7 uses
  %i.l = add nsw i32 %.val7, 1                    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val6.val8, i64 4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !32   ; 4 uses
  %.not.i.not.i.i.i.i = icmp sgt i32 %i.n, %.val7
  br i1 %.not.i.not.i.i.i.i, label %Cof_ObjLevel.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %.val6.val8, align 8, !tbaa !33 ; 4 uses
  %i.p = shl nsw i32 %i.o, 1                      ; 2 uses
  %.not.i.i.i.i = icmp sgt i32 %i.p, %.val7
  %.not.i.i.not.i.i.i.i = icmp sgt i32 %i.o, %.val7 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val6.val8, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %i.s = sext i32 %i.l to i64
  %i.t = shl nsw i64 %i.s, 2                      ; 2 uses
  br i1 %.not9.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi ptr [ %i.u, %bb.e ], [ %i.v, %bb.f ]
  store ptr %i.w, ptr %i.q, align 8, !tbaa !34
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp slt i32 %i.o, 1073741823
  %spec.select.i.i.i.i.i = select i1 %i.x, i32 %i.p, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i = icmp slt i32 %i.o, %spec.select.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val6.val8, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 2 uses
  %.not9.i23.i.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = sext i32 %spec.select.i.i.i.i.i to i64
  %i.ab = shl nsw i64 %i.aa, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #29
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = phi ptr [ %i.ac, %bb.k ], [ %i.ad, %bb.l ]
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !34
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i:            ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %bb.m ], [ %i.l, %bb.g ]
  store i32 %spec.select.sink.i.i.i.i.i, ptr %.val6.val8, align 8, !tbaa !33
  %.pre.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !32
  br label %Vec_IntGrow.exit.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i:                       ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i, %bb.i, %bb.h, %bb.c
  %i.af = phi i32 [ %.pre.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %i.n, %bb.i ], [ %i.n, %bb.h ], [ %i.n, %bb.c ] ; 3 uses
  %.not3.i.i.i.i = icmp sgt i32 %i.af, %.val7
  br i1 %.not3.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.val6.val8, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.ai = sext i32 %i.af to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ah, i64 %i.aj
  %i.ak = sub i32 %.val7, %i.af
  %i.al = zext i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i, i8 0, i64 %i.an, i1 false), !tbaa !45
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i
  store i32 %i.l, ptr %i.m, align 4, !tbaa !32
  br label %Cof_ObjLevel.exit

Cof_ObjLevel.exit:                                ; preds = %bb.a, %._crit_edge.i.i.i.i.i
  %i.ao = zext i32 %.val7 to i64
  %i.ap = getelementptr i8, ptr %.val6.val8, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !34
  %sext.i.i = shl nuw i64 %i.ao, 32
  %i.aq = ashr exact i64 %sext.i.i, 30
  %i.ar = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !45
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !58
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !58
  %.val.i = load i32, ptr %1, align 4
  %i.ax = and i32 %.val.i, 241
  %narrow.i.not.i = icmp eq i32 %i.ax, 17
  br i1 %narrow.i.not.i, label %bb.n, label %Cof_ManSuppSize.exit

bb.n:                                             ; preds = %Cof_ObjLevel.exit
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i32, ptr %2, align 4
  %i.az = and i32 %i.ay, 2147483647
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bb
  br label %Cof_ManSuppSize.exit

Cof_ManSuppSize.exit:                             ; preds = %bb.n, %Cof_ObjLevel.exit
  %.sink.i = phi ptr [ %i.bc, %bb.n ], [ %1, %Cof_ObjLevel.exit ]
  %i.bd = tail call i32 @Cof_ManSuppSize_rec(ptr noundef nonnull %0, ptr noundef nonnull %.sink.i)
  %i.be = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bd) ; 0 uses
  %i.bf = load i32, ptr %i.au, align 8, !tbaa !58
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !58
  %.val.i13 = load i32, ptr %1, align 4
  %i.bh = and i32 %.val.i13, 241
  %narrow.i.not.i14 = icmp eq i32 %i.bh, 17
  br i1 %narrow.i.not.i14, label %bb.o, label %Cof_ManTfiSize.exit

bb.o:                                             ; preds = %Cof_ManSuppSize.exit
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load i32, ptr %3, align 4
  %i.bj = and i32 %i.bi, 2147483647
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bl
  br label %Cof_ManTfiSize.exit

Cof_ManTfiSize.exit:                              ; preds = %bb.o, %Cof_ManSuppSize.exit
  %.sink.i15 = phi ptr [ %i.bm, %bb.o ], [ %1, %Cof_ManSuppSize.exit ]
  %i.bn = tail call i32 @Cof_ManTfiSize_rec(ptr noundef nonnull %0, ptr noundef nonnull %.sink.i15)
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.bn) ; 0 uses
  %i.bp = load i32, ptr %i.au, align 8, !tbaa !58
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.au, align 8, !tbaa !58
  %i.br = tail call i32 @Cof_ManTfoSize_rec(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.bs = add i32 %i.br, -1
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.bs) ; 0 uses
  %i.bu = tail call i32 @Cof_ManCountRemoved(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.bu) ; 0 uses
  %i.bw = tail call i32 @Cof_ManCountRemoved(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bw) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define void @Cof_ManPrintHighFanout(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 5 uses
  %i.b = add i32 %1, -1
  %or.cond.i.i = icmp ult i32 %i.b, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !68
  store i32 %spec.store.select.i.i, ptr %i.a, align 8, !tbaa !71
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrAlloc.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %spec.store.select.i.i to i64
  %i.e = shl nsw i64 %i.d, 3
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #27
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !72
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %.critedge

.lr.ph.i:                                         ; preds = %Vec_PtrAlloc.exit.i, %bb.f
  %i.m = phi i32 [ %i.s, %bb.f ], [ %i.k, %Vec_PtrAlloc.exit.i ]
  %.022.i = phi i32 [ %i.w, %bb.f ], [ 0, %Vec_PtrAlloc.exit.i ] ; 2 uses
  %.val.i = load ptr, ptr %i.i, align 8, !tbaa !40 ; 2 uses
  %i.n = zext nneg i32 %.022.i to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.n ; 3 uses
  %.not.i = icmp eq ptr %.val.i, null
  br i1 %.not.i, label %Cof_ManCollectHighFanout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.val16.i = load i32, ptr %i.o, align 4         ; 4 uses
  %i.p = and i32 %.val16.i, 241
  %narrow.i.not.i = icmp eq i32 %i.p, 1
  br i1 %narrow.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i18.i = trunc i32 %.val16.i to i1
  %i.q = and i32 %.val16.i, 240
  %i.r = icmp eq i32 %i.q, 0
  %narrow.i19.not.i = or i1 %i.r, %.not.i18.i
  br i1 %narrow.i19.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @Cof_ManInsertEntry_rec(ptr noundef nonnull %i.a, ptr noundef nonnull %i.o, i32 noundef %1)
  %.val15.pre.i = load i32, ptr %i.o, align 4
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi i32 [ %i.m, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %.val15.i = phi i32 [ %.val16.i, %bb.d ], [ %.val15.pre.i, %bb.e ] ; 2 uses
  %i.t = lshr i32 %.val15.i, 4
  %i.u = and i32 %i.t, 15
  %i.v = lshr i32 %.val15.i, 8
  %narrow.i20.i = add nuw nsw i32 %.022.i, 6
  %narrow2.i.i = add nuw nsw i32 %narrow.i20.i, %i.v
  %i.w = add nuw nsw i32 %narrow2.i.i, %i.u       ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.s
  br i1 %i.x, label %.lr.ph.i, label %Cof_ManCollectHighFanout.exit, !llvm.loop !74

Cof_ManCollectHighFanout.exit:                    ; preds = %.lr.ph.i, %bb.f
  %.val.pre = load i32, ptr %i.c, align 4, !tbaa !68 ; 2 uses
  %.pre.pre = load ptr, ptr %i.h, align 8, !tbaa !72 ; 3 uses
  %i.y = icmp sgt i32 %.val.pre, 0
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Cof_ManCollectHighFanout.exit
  %wide.trip.count = zext nneg i32 %.val.pre to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre.pre, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  tail call void @Cof_ManPrintHighFanoutOne(ptr noundef %0, ptr noundef %i.aa)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.g, !llvm.loop !82

.critedge:                                        ; preds = %Vec_PtrAlloc.exit.i, %Cof_ManCollectHighFanout.exit
  %.pre19 = phi ptr [ %.pre.pre, %Cof_ManCollectHighFanout.exit ], [ %i.g, %Vec_PtrAlloc.exit.i ] ; 2 uses
  %.not.i10 = icmp eq ptr %.pre19, null
  br i1 %.not.i10, label %Vec_PtrFree.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.g, %.critedge
  %.pre1922 = phi ptr [ %.pre19, %.critedge ], [ %.pre.pre, %bb.g ]
  tail call void @free(ptr noundef nonnull %.pre1922) #28
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.a) #28
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Cof_NodeDeref_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = and i32 %i.a, 240
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i32 [ %i.z, %tailrecurse ], [ %i.a, %bb.a ] ; 2 uses
  %.tr5 = phi ptr [ %i.w, %tailrecurse ], [ %0, %bb.a ] ; 5 uses
  %accumulator.tr4 = phi i32 [ %i.y, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  %i.e = lshr i32 %i.d, 8
  %i.f = add nuw nsw i32 %i.e, 16777215
  %i.g = and i32 %i.f, 16777215                   ; 2 uses
  %i.h = shl nuw i32 %i.g, 8
  %i.i = and i32 %i.d, 255
  %i.j = or disjoint i32 %i.h, %i.i
  store i32 %i.j, ptr %.tr5, align 4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.tr5, i64 24
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 2147483647
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [4 x i8], ptr %.tr5, i64 %i.o
  %i.q = tail call i32 @Cof_NodeDeref_rec(ptr noundef nonnull %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %.tr5, i64 28
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 2147483647
  %i.u = zext nneg i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.tr5, i64 %i.v ; 2 uses
  %i.x = add i32 %accumulator.tr4, 1
  %i.y = add i32 %i.x, %i.q                       ; 2 uses
  %i.z = load i32, ptr %i.w, align 4              ; 2 uses
  %i.aa = and i32 %i.z, 240
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.a
  %accumulator.tr.lcssa = phi i32 [ 0, %bb.a ], [ %accumulator.tr4, %.lr.ph ], [ %i.y, %tailrecurse ]
  ret i32 %accumulator.tr.lcssa
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Cof_NodeRef_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %i.b = and i32 %i.a, 240
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i32 [ %i.x, %tailrecurse ], [ %i.a, %bb.a ] ; 3 uses
  %.tr5 = phi ptr [ %i.u, %tailrecurse ], [ %0, %bb.a ] ; 5 uses
  %accumulator.tr4 = phi i32 [ %i.w, %tailrecurse ], [ 0, %bb.a ] ; 2 uses
  %i.e = and i32 %i.d, -256
  %i.f = add i32 %i.e, 256
  %i.g = and i32 %i.d, 255
  %i.h = or disjoint i32 %i.f, %i.g
  store i32 %i.h, ptr %.tr5, align 4
  %.not = icmp ult i32 %i.d, 256
  br i1 %.not, label %tailrecurse, label %._crit_edge

tailrecurse:                                      ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.tr5, i64 24
end_hunk_0
