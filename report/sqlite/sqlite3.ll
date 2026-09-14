Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@btreePrevious:bb.a
bb.m:                                             ; preds = %bb.k
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %moveToParent.exit

moveToParent.exit:                                ; preds = %bb.l, %bb.m
  %i.cv = load i16, ptr %i.c, align 2, !tbaa !1118 ; 2 uses
  %i.cw = icmp eq i16 %i.cv, 0
  br i1 %i.cw, label %.lr.ph, label %._crit_edge, !llvm.loop !4272

._crit_edge:                                      ; preds = %moveToParent.exit, %.preheader58
  %.lcssa62 = phi i16 [ %i.s, %.preheader58 ], [ %i.cv, %moveToParent.exit ]
  %i.cx = add i16 %.lcssa62, -1
  store i16 %i.cx, ptr %i.c, align 2, !tbaa !1118
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !1114 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !1497
  %.not47 = icmp eq i8 %i.da, 0
  br i1 %.not47, label %.critedge, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !1115
  %.not48 = icmp eq i8 %i.dc, 0
  br i1 %.not48, label %sqlite3BtreePrevious.exit, label %.critedge

sqlite3BtreePrevious.exit:                        ; preds = %bb.n
  %i.dd = load i8, ptr %i.f, align 1, !tbaa !1059
  %i.de = and i8 %i.dd, -15
  store i8 %i.de, ptr %i.f, align 1, !tbaa !1059
  store i16 0, ptr %i.e, align 2, !tbaa !1618
  br label %tailrecurse

.critedge:                                        ; preds = %bb.n, %._crit_edge, %bb.d, %.thread, %bb.c, %bb.h, %bb.i, %bb.g, %bb.j, %.loopexit
  %.137 = phi i32 [ 11, %.loopexit ], [ %i.ap, %bb.g ], [ %i.be, %bb.h ], [ 101, %bb.j ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.d ], [ 0, %._crit_edge ], [ 101, %.thread ], [ %i.j, %bb.c ]
  ret i32 %.137
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @btreeOverwriteCell(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1729
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1730
  %i.e = add nsw i32 %i.d, %i.b                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1114 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1123 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.k = load i16, ptr %i.j, align 4, !tbaa !1121 ; 2 uses
  %i.l = zext i16 %i.k to i32
  %i.m = zext i16 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1122
  %i.q = icmp ugt ptr %i.n, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !988
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.u = load i16, ptr %i.t, align 2, !tbaa !1498
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = icmp ult ptr %i.i, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82591, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.e, %i.l
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = tail call fastcc i32 @btreeOverwriteContent(ptr noundef nonnull %i.g, ptr noundef %i.i, ptr noundef %1, i32 noundef 0, i32 noundef %i.e)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aa = tail call fastcc i32 @btreeOverwriteOverflowCell(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ 11, %bb.c ], [ %i.z, %bb.e ], [ %i.aa, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @btreeComputeFreeSpace(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1065
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1060 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !1066  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !988  ; 2 uses
  %i.i = zext i8 %i.f to i32
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.q = load i8, ptr %i.p, align 1, !tbaa !733
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r
  %i.t = add nuw nsw i32 %i.s, 65535
  %i.u = and i32 %i.t, 65535                      ; 2 uses
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = add nuw nsw i32 %i.i, 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.y = load i8, ptr %i.x, align 2, !tbaa !1493
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.w, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !1501
  %i.ad = zext i16 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = add nuw nsw i32 %i.aa, %i.ae            ; 2 uses
  %i.ag = add nsw i32 %i.d, -4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733
  %i.an = zext i8 %i.am to i32
  %i.ao = or disjoint i32 %i.ak, %i.an            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !733
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.v, %i.ar             ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not59 = icmp samesign ugt i32 %i.ao, %i.u
  br i1 %.not59, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75357, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

.preheader:                                       ; preds = %bb.b, %bb.g
  %.051 = phi i32 [ %i.bl, %bb.g ], [ %i.ao, %bb.b ] ; 3 uses
  %.050 = phi i32 [ %i.bm, %bb.g ], [ %i.as, %bb.b ]
  %i.at = icmp sgt i32 %.051, %i.ag
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75362, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.e:                                             ; preds = %.preheader
  %i.au = zext nneg i32 %.051 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.au ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !733
  %i.ay = zext i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !733
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.az, %i.bc            ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 4
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75368, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.bf = load i8, ptr %i.av, align 1, !tbaa !733
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !733
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bh, %i.bk            ; 3 uses
  %i.bm = add i32 %i.bd, %.050                    ; 2 uses
  %i.bn = add nuw nsw i32 %i.bd, %.051            ; 2 uses
  %i.bo = add nuw nsw i32 %i.bn, 4
  %i.bp = icmp samesign ult i32 %i.bl, %i.bo
  br i1 %i.bp, label %bb.h, label %.preheader

bb.h:                                             ; preds = %bb.g
  %.not60 = icmp eq i32 %i.bl, 0
  br i1 %.not60, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75376, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.bq = icmp ugt i32 %i.bn, %i.d
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75380, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.l:                                             ; preds = %bb.j, %bb.a
  %.2 = phi i32 [ %i.as, %bb.a ], [ %i.bm, %bb.j ] ; 3 uses
  %i.br = icmp sgt i32 %.2, %i.d
  %i.bs = icmp slt i32 %.2, %i.af
  %or.cond = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75392, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bt = sub nsw i32 %.2, %i.af
  %i.bu = and i32 %i.bt, 65535
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !1491
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.i, %bb.f, %bb.d, %bb.c, %bb.n, %bb.m
  %.153 = phi i32 [ 11, %bb.m ], [ 0, %bb.n ], [ 11, %bb.c ], [ 11, %bb.d ], [ 11, %bb.f ], [ 11, %bb.i ], [ 11, %bb.k ]
  ret i32 %.153
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dropCell(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !570
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !988  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1117
  %i.f = shl nsw i32 %1, 1
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !733
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1066
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = add i32 %i.o, %2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1065
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1060
  %i.x = icmp ugt i32 %i.s, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80514, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  store i32 11, ptr %3, align 4, !tbaa !570
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.y = tail call fastcc i32 @freeSpace(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %2) ; 2 uses
  %.not44 = icmp eq i32 %i.y, 0
  br i1 %.not44, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.y, ptr %3, align 4, !tbaa !570
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !1501
  %i.ab = add i16 %i.aa, -1                       ; 3 uses
  store i16 %i.ab, ptr %i.z, align 8, !tbaa !1501
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i32 0, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 7
  store i8 0, ptr %i.af, align 1, !tbaa !733
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !1065
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !1060
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = trunc i32 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !733
  %i.am = load ptr, ptr %i.t, align 8, !tbaa !1065
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !1060
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !733
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !1065
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1060
  %i.au = load i8, ptr %i.p, align 1, !tbaa !1066
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !1493
  %i.ay = zext i8 %i.ax to i32
  %.neg46 = add i32 %i.at, -8
  %i.az = add nuw nsw i32 %i.av, %i.ay
  %i.ba = sub i32 %.neg46, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !1491
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bc = zext i16 %i.ab to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.be = sub nsw i32 %i.bc, %1
  %i.bf = shl nsw i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.bd, i64 %i.bg, i1 false)
  %i.bh = load i16, ptr %i.z, align 8, !tbaa !1501
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !733
  %i.bm = load i16, ptr %i.z, align 8, !tbaa !1501
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !733
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !1491
  %i.br = add nsw i32 %i.bq, 2
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !1491
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @balance(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.CellInfo, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 21 uses
  %i.b = alloca [3 x ptr], align 16               ; 13 uses
  %i.c = alloca [5 x ptr], align 16               ; 24 uses
  %i.d = alloca [2 x ptr], align 16               ; 5 uses
  %i.e = alloca [5 x i32], align 16               ; 14 uses
  %i.f = alloca [5 x i32], align 16               ; 7 uses
  %i.g = alloca [5 x i32], align 16               ; 11 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca [5 x i8], align 1                 ; 4 uses
  %i.j = alloca [5 x i32], align 16               ; 8 uses
  %2 = alloca %struct.CellArray, align 8          ; 24 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.CellInfo, align 8           ; 4 uses
  %4 = alloca %struct.CellInfo, align 8           ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 8 uses
  %i.p = alloca i16, align 2                      ; 7 uses
  %5 = alloca %struct.CellArray, align 8          ; 11 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = alloca ptr, align 8                      ; 6 uses
  %i.s = alloca i32, align 4                      ; 7 uses
  %i.t = alloca [13 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #58
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 100
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.al = ptrtoint ptr %i.t to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
end_hunk_0
begin_hunk_1_@btreeOverwriteOverflowCell:bb.a
  %i.at = load i8, ptr %.val13.i.i, align 8, !tbaa !1502
  %.not42 = icmp eq i8 %i.at, 0
  br i1 %.not42, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82563, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.au = add i32 %.0, %.034
  %i.av = icmp ult i32 %i.au, %i.f
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !988 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = call i32 @llvm.bswap.i32(i32 %i.ay)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ba = sub nsw i32 %i.f, %.034
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 80
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !988
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bb = phi ptr [ %i.ax, %bb.j ], [ %.pre58, %bb.k ]
  %.131 = phi i32 [ %i.az, %bb.j ], [ %.030, %bb.k ]
  %.1 = phi i32 [ %.0, %bb.j ], [ %i.ba, %bb.k ]  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = call fastcc i32 @btreeOverwriteContent(ptr noundef nonnull %.val13.i.i, ptr noundef nonnull %i.bc, ptr noundef %1, i32 noundef %.034, i32 noundef %.1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.033 = phi i32 [ 11, %bb.h ], [ %i.bd, %bb.l ] ; 2 uses
  %.232 = phi i32 [ %.030, %bb.h ], [ %.131, %bb.l ]
  %.2 = phi i32 [ %.0, %bb.h ], [ %.1, %bb.l ]    ; 2 uses
  %i.be = load ptr, ptr %i.aq, align 8, !tbaa !1009 ; 8 uses
  %.not.i44 = icmp eq ptr %i.be, null
  br i1 %.not.i44, label %sqlite3PagerUnref.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !895
  %i.bh = and i16 %i.bg, 32
  %.not.i.i45 = icmp eq i16 %i.bh, 0
  br i1 %.not.i.i45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !896 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 152 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !897
  %i.bm = add nsw i32 %i.bl, -1
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !897
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 168 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !898
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !899
  store ptr %i.be, ptr %i.bn, align 8, !tbaa !898
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !900 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !901
  %i.bu = add i32 %i.bt, -1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !630
  %i.by = mul nsw i64 %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !894
  %i.cb = load ptr, ptr %i.br, align 8, !tbaa !863
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 144
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !903
  %i.ce = call i32 %i.cd(ptr noundef nonnull %i.br, i64 noundef %i.by, ptr noundef %i.ca) #58, !inline_history !34 ; 0 uses
  br label %sqlite3PagerUnref.exit

bb.p:                                             ; preds = %bb.n
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %i.be)
  br label %sqlite3PagerUnref.exit

sqlite3PagerUnref.exit:                           ; preds = %bb.m, %bb.o, %bb.p
  %.not43 = icmp eq i32 %.033, 0
  br i1 %.not43, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %sqlite3PagerUnref.exit
  %i.cf = add i32 %.2, %.034                      ; 2 uses
  %i.cg = icmp slt i32 %i.cf, %i.f
  br i1 %i.cg, label %bb.c, label %.loopexit, !llvm.loop !4331

.loopexit:                                        ; preds = %bb.q, %sqlite3PagerUnref.exit, %btreeGetPage.exit, %bb.a
  %.035 = phi i32 [ %i.ad, %btreeGetPage.exit ], [ %i.n, %bb.a ], [ 0, %bb.q ], [ %.033, %sqlite3PagerUnref.exit ]
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @freeSpace(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %2, %1                       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !988  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1, !tbaa !1066  ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = add nuw nsw i32 %i.f, 1                  ; 6 uses
  %i.h = zext i8 %i.e to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !733
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %i.g to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !733
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.0116 = phi i32 [ %i.y, %bb.d ], [ %i.g, %.preheader ] ; 7 uses
  %i.q = zext nneg i32 %.0116 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !733
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.u, %i.x               ; 12 uses
  %i.z = icmp slt i32 %i.y, %1
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not = icmp samesign ugt i32 %i.y, %.0116
  br i1 %.not, label %bb.c, label %bb.e, !llvm.loop !4332

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75173, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.af

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1065
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1060 ; 2 uses
  %i.af = add nsw i32 %i.ae, -4
  %i.ag = icmp sgt i32 %i.y, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

.thread:                                          ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1065
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1060
  %i.al = icmp slt i32 %i.ak, 4
  br i1 %i.al, label %bb.h, label %.thread143

bb.h:                                             ; preds = %.thread, %bb.g
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75178, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.af

bb.i:                                             ; preds = %bb.g
  %.not137 = icmp eq i32 %i.y, 0
  br i1 %.not137, label %.thread143, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = add nsw i32 %i.a, 3
  %.not138 = icmp slt i32 %i.am, %i.y
  br i1 %.not138, label %.thread143, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = sub nsw i32 %i.y, %i.a
  %i.ao = icmp sgt i32 %i.a, %i.y
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75190, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.af

bb.m:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.y to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ap ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !733
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !733
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  %i.az = add nuw nsw i32 %i.ay, %i.y             ; 3 uses
  %3 = icmp sgt i32 %i.az, %i.ae
  br i1 %3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75193, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.af

bb.o:                                             ; preds = %bb.m
  %i.ba = sub nsw i32 %i.az, %1
  %i.bb = load i8, ptr %i.aq, align 1, !tbaa !733
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !733
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg
  br label %.thread143

.thread143:                                       ; preds = %.thread, %bb.o, %bb.j, %bb.i
  %.0118 = phi i32 [ %i.ba, %bb.o ], [ %2, %bb.j ], [ %2, %bb.i ], [ %2, %.thread ] ; 2 uses
  %.0114 = phi i32 [ %i.bh, %bb.o ], [ %i.y, %bb.j ], [ 0, %bb.i ], [ 0, %.thread ]
  %.0112 = phi i32 [ %i.an, %bb.o ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %.thread ] ; 3 uses
  %.0111 = phi i32 [ %i.az, %bb.o ], [ %i.a, %bb.j ], [ %i.a, %bb.i ], [ %i.a, %.thread ] ; 2 uses
  %i.bi = icmp sgt i32 %.0116, %i.g
  br i1 %i.bi, label %bb.p, label %.thread145

bb.p:                                             ; preds = %.thread143
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !733
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !733
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bm, %i.bp
  %i.br = add nuw nsw i32 %i.bq, %.0116           ; 3 uses
  %i.bs = add nuw nsw i32 %i.br, 3
  %.not139 = icmp slt i32 %i.bs, %1
  br i1 %.not139, label %.thread145, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp sgt i32 %i.br, %1
  br i1 %i.bt, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = add nsw i32 %.0112, %1
  %i.bv = sub i32 %i.bu, %i.br
  %i.bw = sub nsw i32 %.0111, %.0116
  br label %.thread145

bb.s:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75206, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.af

.thread145:                                       ; preds = %bb.p, %bb.r, %.thread143
  %.2124 = phi i32 [ %1, %.thread143 ], [ %1, %bb.p ], [ %.0116, %bb.r ]
  %.3121 = phi i32 [ %.0118, %.thread143 ], [ %.0118, %bb.p ], [ %i.bw, %bb.r ]
  %.3 = phi i32 [ %.0112, %.thread143 ], [ %.0112, %bb.p ], [ %i.bv, %bb.r ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 7 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !733 ; 2 uses
  %i.bz = zext i8 %i.by to i32
  %i.ca = icmp sgt i32 %.3, %i.bz
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread145
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75212, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.af

bb.u:                                             ; preds = %.thread145
  %i.cb = trunc i32 %.3 to i8
  %i.cc = sub i8 %i.by, %i.cb
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !733
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %bb.u
  %.3125 = phi i32 [ %.2124, %bb.u ], [ %1, %bb.b ] ; 6 uses
  %.4 = phi i32 [ %.3121, %bb.u ], [ %2, %bb.b ]  ; 3 uses
  %.1117 = phi i32 [ %.0116, %bb.u ], [ %i.g, %bb.b ] ; 2 uses
  %.1115 = phi i32 [ %.0114, %bb.u ], [ 0, %bb.b ] ; 4 uses
  %.1 = phi i32 [ %.0111, %bb.u ], [ %i.a, %bb.b ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 5 ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !733
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 6 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !733
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1065
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !1035
  %i.cp = and i16 %i.co, 12
  %.not140 = icmp eq i16 %i.cp, 0
  br i1 %.not140, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = sext i32 %.3125 to i64
  %i.cr = getelementptr inbounds i8, ptr %i.c, i64 %i.cq
  %i.cs = sext i32 %.4 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cr, i8 0, i64 %i.cs, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not141 = icmp sgt i32 %.3125, %i.ck
  br i1 %.not141, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ct = icmp slt i32 %.3125, %i.ck
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75226, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  %.not142 = icmp eq i32 %.1117, %i.g
  br i1 %.not142, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75227, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.cu = lshr i32 %.1115, 8
  %i.cv = trunc nuw i32 %i.cu to i8
  %i.cw = zext nneg i32 %i.g to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cw ; 2 uses
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !733
  %i.cy = trunc i32 %.1115 to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !733
  %i.da = lshr i32 %.1, 8
  %i.db = trunc i32 %i.da to i8
  store i8 %i.db, ptr %i.cd, align 1, !tbaa !733
  %i.dc = trunc i32 %.1 to i8
  store i8 %i.dc, ptr %i.ch, align 1, !tbaa !733
  br label %bb.ae

bb.ad:                                            ; preds = %bb.x
  %i.dd = lshr i32 %.3125, 8
  %i.de = trunc i32 %i.dd to i8
  %i.df = zext nneg i32 %.1117 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.df ; 2 uses
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !733
  %i.dh = trunc i32 %.3125 to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !733
  %i.dj = lshr i32 %.1115, 8
  %i.dk = trunc nuw i32 %i.dj to i8
  %i.dl = zext nneg i32 %.3125 to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dl ; 4 uses
  store i8 %i.dk, ptr %i.dm, align 1, !tbaa !733
  %i.dn = trunc i32 %.1115 to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !733
  %i.dp = lshr i32 %.4, 8
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !733
  %i.ds = trunc i32 %.4 to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !733
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !1491
  %i.dw = add nsw i32 %i.dv, %2
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !1491
  br label %bb.af

bb.af:                                            ; preds = %bb.s, %bb.ae, %bb.ab, %bb.z, %bb.t, %bb.n, %bb.l, %bb.h, %bb.f
  %.1127 = phi i32 [ 11, %bb.z ], [ 11, %bb.ab ], [ 0, %bb.ae ], [ 11, %bb.h ], [ 11, %bb.l ], [ 11, %bb.n ], [ 11, %bb.t ], [ 11, %bb.s ], [ 11, %bb.f ]
  ret i32 %.1127
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pageFindSlot(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1066  ; 2 uses
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !988  ; 5 uses
  %i.f = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !733
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1065
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !1060 ; 2 uses
  %i.t = sub i32 %i.s, %1                         ; 2 uses
  br label %bb.b
end_hunk_1
begin_hunk_2_@pageFindSlot:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ao
  %i.aq = load i16, ptr %i.v, align 1
  store i16 %i.aq, ptr %i.ap, align 1
  %i.ar = load i8, ptr %i.al, align 1, !tbaa !733
  %i.as = trunc nuw nsw i32 %i.ae to i8
  %i.at = add i8 %i.ar, %i.as
  store i8 %i.at, ptr %i.al, align 1, !tbaa !733
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.au = add nuw nsw i32 %i.ae, %.0              ; 2 uses
  %i.av = icmp samesign ugt i32 %i.au, %i.t
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75004, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  store i32 11, ptr %2, align 4, !tbaa !570
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.aw = lshr i32 %i.ae, 8
  %i.ax = trunc i32 %i.aw to i8
  store i8 %i.ax, ptr %i.ag, align 1, !tbaa !733
  %i.ay = trunc i32 %i.ae to i8
  store i8 %i.ay, ptr %i.ah, align 1, !tbaa !733
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.az
  br label %bb.o

bb.j:                                             ; preds = %bb.c
  %i.bb = load i8, ptr %i.v, align 1, !tbaa !733
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !733
  %i.bg = zext i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.bd, %i.bg            ; 3 uses
  %.not61 = icmp samesign ugt i32 %i.bh, %.0
  br i1 %.not61, label %bb.b, label %bb.k, !llvm.loop !4333

bb.k:                                             ; preds = %bb.j
  %.not62 = icmp eq i32 %i.bh, 0
  br i1 %.not62, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75019, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  store i32 11, ptr %2, align 4, !tbaa !570
  br label %bb.o

bb.m:                                             ; preds = %bb.b
  %i.bi = add nsw i32 %i.s, -4
  %i.bj = icmp sgt i32 %.0, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 75026, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  store i32 11, ptr %2, align 4, !tbaa !570
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.l, %bb.e, %bb.i, %bb.h, %bb.f
  %.056 = phi ptr [ null, %bb.k ], [ %i.v, %bb.f ], [ null, %bb.h ], [ %i.ba, %bb.i ], [ null, %bb.e ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.m ]
  ret ptr %.056
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @defragmentPage(ptr noundef %0, i32 noundef range(i32 -2147483648, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !988  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1066
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.g = load i16, ptr %i.f, align 2, !tbaa !1498 ; 3 uses
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i16, ptr %i.i, align 8, !tbaa !1501 ; 3 uses
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 1
  %i.m = add nuw nsw i32 %i.l, %i.h               ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1065 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1060 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 7 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i32
  %.not = icmp slt i32 %1, %i.u
  br i1 %.not, label %..thread200_crit_edge, label %bb.b

..thread200_crit_edge:                            ; preds = %bb.a
  %.pre = add nsw i32 %i.q, -4
  br label %.thread200

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !733
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab             ; 7 uses
  %i.ad = add nsw i32 %i.q, -4                    ; 5 uses
  %i.ae = icmp sgt i32 %i.ac, %i.ad
  br i1 %i.ae, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74874, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.c:                                             ; preds = %bb.b
  %.not191 = icmp eq i32 %i.ac, 0
  br i1 %.not191, label %.thread200, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = zext nneg i32 %i.ac to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.af ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !733
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !733
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am            ; 8 uses
  %i.ao = icmp samesign ugt i32 %i.an, %i.ad
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74877, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.f:                                             ; preds = %bb.d
  %i.ap = icmp eq i32 %i.an, 0                    ; 2 uses
  br i1 %i.ap, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = zext nneg i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !733
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.h, label %.thread200

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !733
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.i, label %.thread200

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ax = zext nneg i32 %i.m to i64               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !733
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !733
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bc, %i.bf            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !733
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !733
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bk, %i.bn            ; 4 uses
  %.not192 = icmp samesign ult i32 %i.bo, %i.ac
  br i1 %.not192, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74885, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.k:                                             ; preds = %bb.i
  %i.bp = add nuw nsw i32 %i.bg, %i.ac            ; 5 uses
  br i1 %i.ap, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = icmp samesign ugt i32 %i.bp, %i.an
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74888, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.n:                                             ; preds = %bb.l
  %i.br = zext nneg i32 %i.an to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !733
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !733
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 4 uses
  %i.cb = add nuw nsw i32 %i.ca, %i.an
  %2 = icmp sgt i32 %i.cb, %i.q
  br i1 %2, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74890, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.p:                                             ; preds = %bb.n
  %i.cc = add nuw nsw i32 %i.ca, %i.bp
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cd
  %i.cf = zext nneg i32 %i.bp to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cf
  %i.ch = sub nuw nsw i32 %i.an, %i.bp
  %i.ci = zext nneg i32 %i.ch to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 1 %i.cg, i64 %i.ci, i1 false)
  %i.cj = add nuw nsw i32 %i.ca, %i.bg
  br label %bb.s

bb.q:                                             ; preds = %bb.k
  %3 = icmp sgt i32 %i.bp, %i.q
  br i1 %3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74894, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.s:                                             ; preds = %bb.q, %bb.p
  %.0165 = phi i32 [ %i.ca, %bb.p ], [ 0, %bb.q ]
  %.0 = phi i32 [ %i.cj, %bb.p ], [ %i.bg, %bb.q ] ; 2 uses
  %i.ck = add nuw nsw i32 %.0, %i.bo              ; 3 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cl
  %i.cn = zext nneg i32 %i.bo to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cn
  %i.cp = sub nuw nsw i32 %i.ac, %i.bo
  %i.cq = zext nneg i32 %i.cp to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.co, i64 %i.cq, i1 false)
  %i.cr = zext i16 %i.g to i64                    ; 2 uses
  %i.cs = icmp samesign ult i64 %i.cr, %i.ax
  br i1 %i.cs, label %.lr.ph.preheader, label %.loopexit218

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %.0166221 = phi ptr [ %i.dh, %bb.u ], [ %i.ct, %.lr.ph.preheader ] ; 4 uses
  %i.cu = load i8, ptr %.0166221, align 1, !tbaa !733
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0166221, i64 1 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !733
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz            ; 3 uses
  %i.db = icmp samesign ult i32 %i.da, %i.ac
  br i1 %i.db, label %.sink.split, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.dc = icmp samesign ult i32 %i.da, %i.an
  br i1 %i.dc, label %.sink.split, label %bb.u

.sink.split:                                      ; preds = %bb.t, %.lr.ph
  %.0.sink = phi i32 [ %.0, %.lr.ph ], [ %.0165, %bb.t ]
  %i.dd = add nuw nsw i32 %i.da, %.0.sink         ; 2 uses
  %i.de = lshr i32 %i.dd, 8
  %i.df = trunc i32 %i.de to i8
  store i8 %i.df, ptr %.0166221, align 1, !tbaa !733
  %i.dg = trunc i32 %i.dd to i8
  store i8 %i.dg, ptr %i.cx, align 1, !tbaa !733
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.0166221, i64 2 ; 2 uses
  %i.di = icmp ult ptr %i.dh, %i.ay
  br i1 %i.di, label %.lr.ph, label %.loopexit218, !llvm.loop !4334

.thread200:                                       ; preds = %..thread200_crit_edge, %bb.h, %bb.g, %bb.c
  %.pre-phi = phi i32 [ %.pre, %..thread200_crit_edge ], [ %i.ad, %bb.h ], [ %i.ad, %bb.g ], [ %i.ad, %bb.c ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !733
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !733
  %i.dp = zext i8 %i.do to i32
  %i.dq = or disjoint i32 %i.dm, %i.dp
  %.not194 = icmp eq i16 %i.j, 0
  br i1 %.not194, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.thread200
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !622
  %i.ds = getelementptr i8, ptr %i.dr, i64 280
  %.val = load ptr, ptr %i.ds, align 8, !tbaa !1520 ; 2 uses
  %i.dt = sext i32 %i.q to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val, ptr nonnull align 1 %i.b, i64 %i.dt, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dv = zext i16 %i.g to i64
  %wide.trip.count = zext i16 %i.j to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dv
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.aa
  %indvars.iv = phi i64 [ 0, %bb.v ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %.4223 = phi i32 [ %i.q, %bb.v ], [ %i.ek, %bb.aa ]
  %i.dw = shl nuw nsw i64 %indvars.iv, 1
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %i.dw ; 3 uses
  %i.dx = load i8, ptr %gep, align 1, !tbaa !733
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %gep, i64 1 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !733
  %i.ec = zext i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.dz, %i.ec            ; 3 uses
  %i.ee = icmp sgt i32 %i.ed, %.pre-phi
  br i1 %i.ee, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74927, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.y:                                             ; preds = %bb.w
  %i.ef = load ptr, ptr %i.du, align 8, !tbaa !1495
  %i.eg = zext nneg i32 %i.ed to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %.val, i64 %i.eg ; 2 uses
  %i.ei = tail call zeroext i16 %i.ef(ptr noundef nonnull %0, ptr noundef %i.eh) #58 ; 2 uses
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %i.ek = sub nsw i32 %.4223, %i.ej               ; 6 uses
  %i.el = icmp slt i32 %i.ek, %i.dq
  %i.em = add nuw nsw i32 %i.ed, %i.ej
  %4 = icmp sgt i32 %i.em, %i.q
  %or.cond = select i1 %i.el, i1 true, i1 %4
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74933, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.aa:                                            ; preds = %bb.y
  %i.en = lshr i32 %i.ek, 8
  %i.eo = trunc i32 %i.en to i8
  store i8 %i.eo, ptr %gep, align 1, !tbaa !733
  %i.ep = trunc i32 %i.ek to i8
  store i8 %i.ep, ptr %i.ea, align 1, !tbaa !733
  %i.eq = zext nneg i32 %i.ek to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eq
  %i.es = zext i16 %i.ei to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.eh, i64 %i.es, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !4335

.loopexit:                                        ; preds = %bb.aa, %.thread200
  %.6 = phi i32 [ %i.q, %.thread200 ], [ %i.ek, %bb.aa ]
  store i8 0, ptr %i.s, align 1, !tbaa !733
  br label %.loopexit218

.loopexit218:                                     ; preds = %bb.u, %bb.s, %.loopexit
  %.7 = phi i32 [ %.6, %.loopexit ], [ %i.ck, %bb.s ], [ %i.ck, %bb.u ] ; 3 uses
  %i.et = load i8, ptr %i.s, align 1, !tbaa !733
  %i.eu = zext i8 %i.et to i32
  %i.ev = sub i32 %.7, %i.m                       ; 2 uses
  %i.ew = add i32 %i.ev, %i.eu
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !1491
  %.not195 = icmp eq i32 %i.ew, %i.ey
  br i1 %.not195, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit218
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74947, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.ac:                                            ; preds = %.loopexit218
  %i.ez = lshr i32 %.7, 8
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !733
  %i.fc = trunc i32 %.7 to i8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !733
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 0, ptr %i.fe, align 1, !tbaa !733
  %i.ff = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 0, ptr %i.ff, align 1, !tbaa !733
  %i.fg = zext nneg i32 %i.m to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fg
  %i.fi = sext i32 %i.ev to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fh, i8 0, i64 %i.fi, i1 false)
  br label %.thread204

.thread204:                                       ; preds = %bb.z, %bb.x, %bb.r, %bb.o, %bb.m, %bb.j, %bb.e, %.thread, %bb.ac, %bb.ab
  %.7180 = phi i32 [ 11, %.thread ], [ 11, %bb.r ], [ 11, %bb.ab ], [ 0, %bb.ac ], [ 11, %bb.e ], [ 11, %bb.j ], [ 11, %bb.m ], [ 11, %bb.o ], [ 11, %bb.x ], [ 11, %bb.z ]
  ret i32 %.7180
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copyNodeContent(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !570
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1065 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !988  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !988  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1066
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1064
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.m, i64 100, i64 0
  %i.o = zext i8 %i.j to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !733
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w               ; 2 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1060
  %i.ad = sub i32 %i.ac, %i.x
  %i.ae = zext i32 %i.ad to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !1498
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !1501
  %i.al = zext i16 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = add nuw nsw i64 %i.am, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.p, i64 %i.an, i1 false)
  store i8 0, ptr %1, align 8, !tbaa !1502
  %i.ao = tail call fastcc i32 @btreeInitPage(ptr noundef nonnull %1) ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.aq = tail call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %1) ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1054
  %.not32 = icmp eq i8 %i.as, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = tail call fastcc i32 @setChildPtrmaps(ptr noundef nonnull %1)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.e
  %.035.sink = phi i32 [ %i.at, %bb.e ], [ %i.aq, %bb.c ], [ %i.ao, %bb.b ]
  store i32 %.035.sink, ptr %2, align 4, !tbaa !570
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @rebuildPage(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, -2147483648) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1066
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !988  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1065 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1060 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1117
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !622
  %i.m = getelementptr i8, ptr %i.l, i64 280
  %.val = load ptr, ptr %i.m, align 8, !tbaa !1520 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 6 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u               ; 2 uses
  %i.w = icmp ugt i32 %i.v, %i.i
  %spec.store.select = select i1 %i.w, i32 0, i32 %i.v ; 2 uses
  %i.x = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.x ; 2 uses
  %i.aa = sub i32 %i.i, %spec.store.select
  %i.ab = zext i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.z, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !570
  %.not = icmp sgt i32 %i.ae, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !4336

bb.c:                                             ; preds = %bb.b
  %i.af = sext i32 %i.i to i64
  %i.ag = getelementptr inbounds i8, ptr %i.e, i64 %i.af ; 3 uses
  %i.ah = add nsw i32 %2, %1
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.an = sext i32 %1 to i64
  %i.ao = sext i32 %i.ah to i64
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.c
end_hunk_2
begin_hunk_3_@jsonReturnString:bb.a
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 400
  store atomic volatile i32 1, ptr %i.bn monotonic, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 408 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !921
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8, !tbaa !921
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 412
  store i16 0, ptr %i.br, align 4, !tbaa !922
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 344 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !768 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.bt, null
  br i1 %.not.i3.i, label %sqlite3_result_error_nomem.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.125), !inline_history !75
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !768 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i32 7, ptr %i.bv, align 8, !tbaa !779
  %.0.in17.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %.018.i.i = load ptr, ptr %.0.in17.i.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i.i = icmp eq ptr %.018.i.i, null
  br i1 %.not1619.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %.lr.ph.i.i
  %.020.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.018.i.i, %bb.u ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 52 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !780
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !780
  %i.bz = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 24
  store i32 7, ptr %i.bz, align 8, !tbaa !779
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 224
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not16.i.i, label %sqlite3_result_error_nomem.exit, label %.lr.ph.i.i, !llvm.loop !36

bb.v:                                             ; preds = %bb.m
  %i.ca = and i32 %i.at, 6
  %or.cond.not = icmp eq i32 %i.ca, 2
  br i1 %or.cond.not, label %bb.w, label %sqlite3_result_error_nomem.exit

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %0, align 8, !tbaa !1970  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 1, ptr %i.cc, align 4, !tbaa !570
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !761
  %i.ce = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.cd, ptr noundef nonnull @.str.619, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1104 ; 0 uses
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.e, %.critedge, %bb.g, %bb.u, %bb.t, %bb.q, %sqlite3VdbeMemSetNull.exit.i, %bb.w, %bb.v
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !1927
  %.not.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i, label %bb.x, label %jsonStringReset.exit

bb.x:                                             ; preds = %sqlite3_result_error_nomem.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1925
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 5 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1666 ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cm = add i64 %i.ck, -1
  store i64 %i.cm, ptr %i.cj, align 8, !tbaa !1666
  br label %jsonStringReset.exit

bb.z:                                             ; preds = %bb.x
  %i.cn = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.cp(ptr noundef nonnull %i.co) #58, !inline_history !1953
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.ab, %bb.aa
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.cr = tail call i32 %i.cq(ptr noundef nonnull %i.cj) #58, !inline_history !276
  %i.cs = sext i32 %i.cr to i64
  %i.ct = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cu = sub nsw i64 %i.ct, %i.cs
  store i64 %i.cu, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cv = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.cw = add nsw i64 %i.cv, -1
  store i64 %i.cw, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.cx(ptr noundef nonnull %i.cj) #58, !inline_history !1954
  %i.cy = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i4.i.i.i, label %jsonStringReset.exit, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.cz(ptr noundef nonnull %i.cy) #58, !inline_history !1955
  br label %jsonStringReset.exit

bb.ad:                                            ; preds = %bb.z
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.da(ptr noundef nonnull %i.cj) #58, !inline_history !1954
  br label %jsonStringReset.exit

jsonStringReset.exit:                             ; preds = %sqlite3_result_error_nomem.exit, %bb.y, %sqlite3_mutex_enter.exit.i.i.i, %bb.ac, %bb.ad
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !1925
  store i64 100, ptr %i.c, align 8, !tbaa !1926
  store i64 0, ptr %i.a, align 8, !tbaa !1936
  store i8 1, ptr %i.cf, align 8, !tbaa !1927
  br label %bb.ae

bb.ae:                                            ; preds = %bb.l, %jsonStringReset.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonAppendRawNZ(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1936 ; 2 uses
  %i.d = add i64 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1926
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @jsonStringExpandAndAppend(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1925
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %i.a, i1 false)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !1936
  %i.k = add i64 %i.j, %i.a
  store i64 %i.k, ptr %i.b, align 8, !tbaa !1936
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonAppendString(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 29 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  %i.e = add nuw nsw i64 %i.b, 2
  %i.f = add i64 %i.e, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1926
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %2, 2
  %i.j = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.i)
  %.not84 = icmp eq i32 %i.j, 0
  br i1 %.not84, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.c, align 8, !tbaa !1936
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.k = phi i64 [ %.pre, %._crit_edge ], [ %i.d, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.n = add i64 %i.k, 1
  store i64 %i.n, ptr %i.c, align 8, !tbaa !1936
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 34, ptr %i.o, align 1, !tbaa !733
  br label %bb.e

bb.e:                                             ; preds = %jsonAppendControlChar.exit, %bb.d
  %.079 = phi i32 [ %2, %bb.d ], [ %i.ef, %jsonAppendControlChar.exit ] ; 8 uses
  %.0 = phi ptr [ %1, %bb.d ], [ %i.ee, %jsonAppendControlChar.exit ] ; 9 uses
  %.not85100 = icmp ugt i32 %.079, 3
  br i1 %.not85100, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.e
  %.077.lcssa = phi i32 [ 0, %bb.e ], [ %10, %bb.j ] ; 3 uses
  %i.p = icmp ult i32 %.077.lcssa, %.079
  br i1 %i.p, label %.lr.ph103.preheader, label %.critedge

.lr.ph103.preheader:                              ; preds = %.preheader
  %i.q = zext i32 %.077.lcssa to i64
  %i.r = zext i32 %.079 to i64
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.f
  %indvars.iv.a = phi i64 [ %i.q, %.lr.ph103.preheader ], [ %indvars.iv.next.a, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.a
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %.not90 = icmp eq i8 %i.w, 0
  br i1 %.not90, label %.critedge.loopexit.a, label %bb.f

bb.f:                                             ; preds = %.lr.ph103
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %i.r
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph103, !llvm.loop !4508

.lr.ph:                                           ; preds = %bb.e, %bb.j
  %.077101 = phi i32 [ %10, %bb.j ], [ 0, %bb.e ] ; 6 uses
  %3 = or disjoint i32 %.077101, 3                ; 2 uses
  %4 = zext i32 %.077101 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 %4
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !733
  %.not86 = icmp eq i8 %i.ab, 0
  br i1 %.not86, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %5 = or disjoint i32 %.077101, 1                ; 2 uses
  %6 = zext i32 %5 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 %6
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !733
  %.not87 = icmp eq i8 %i.ag, 0
  br i1 %.not87, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %7 = or disjoint i32 %.077101, 2                ; 2 uses
  %8 = zext i32 %7 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 %8
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !733
  %.not88 = icmp eq i8 %i.al, 0
  br i1 %.not88, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %9 = zext i32 %3 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 %9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !733
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @jsonIsOk, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !733
  %.not89 = icmp eq i8 %i.aq, 0
  br i1 %.not89, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %10 = add i32 %.077101, 4                       ; 3 uses
  %11 = or disjoint i32 %10, 3
  %.not85 = icmp ult i32 %11, %.079
  br i1 %.not85, label %.lr.ph, label %.preheader

.critedge.loopexit.a:                             ; preds = %.lr.ph103
  %i.ar = trunc nuw i64 %indvars.iv.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph, %.critedge.loopexit.a, %.preheader
  %.2 = phi i32 [ %i.ar, %.critedge.loopexit.a ], [ %.077.lcssa, %.preheader ], [ %5, %bb.g ], [ %7, %bb.h ], [ %3, %bb.i ], [ %.077101, %.lr.ph ] ; 5 uses
  %.not91 = icmp ult i32 %.2, %.079
  br i1 %.not91, label %bb.l, label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge, %bb.f
  %.2118 = phi i32 [ %.079, %bb.f ], [ %.2, %.critedge ] ; 2 uses
  %.not95 = icmp eq i32 %.2118, 0
  %.pre112 = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  br i1 %.not95, label %bb.x, label %bb.k

bb.k:                                             ; preds = %.critedge.thread
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.pre112
  %i.au = zext i32 %.2118 to i64                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.0, i64 %i.au, i1 false)
  %i.av = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.aw = add i64 %i.av, %i.au
  br label %bb.x

bb.l:                                             ; preds = %.critedge
  %.not92 = icmp eq i32 %.2, 0
  br i1 %.not92, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  %i.ba = zext i32 %.2 to i64                     ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr nonnull align 1 %.0, i64 %i.ba, i1 false)
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.bc = add i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.c, align 8, !tbaa !1936
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ba
  %i.be = sub nuw i32 %.079, %.2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.180 = phi i32 [ %i.be, %bb.m ], [ %.079, %bb.l ] ; 5 uses
  %.1 = phi ptr [ %i.bd, %bb.m ], [ %.0, %bb.l ]  ; 2 uses
  %i.bf = load i8, ptr %.1, align 1, !tbaa !733   ; 4 uses
  switch i8 %i.bf, label %bb.s [
    i8 92, label %bb.o
    i8 34, label %bb.o
    i8 39, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  %i.bh = zext i32 %.180 to i64
  %i.bi = add nuw nsw i64 %i.bh, 3
  %i.bj = add i64 %i.bi, %i.bg
  %i.bk = load i64, ptr %i.g, align 8, !tbaa !1926
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = add i32 %.180, 3
  %i.bn = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.bm)
  %.not94 = icmp eq i32 %i.bn, 0
  br i1 %.not94, label %._crit_edge113, label %.loopexit

._crit_edge113:                                   ; preds = %bb.p
  %.pre114 = load i64, ptr %i.c, align 8, !tbaa !1936
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge113, %bb.o
  %i.bo = phi i64 [ %.pre114, %._crit_edge113 ], [ %i.bg, %bb.o ] ; 2 uses
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.bq = add i64 %i.bo, 1
  store i64 %i.bq, ptr %i.c, align 8, !tbaa !1936
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 92, ptr %i.br, align 1, !tbaa !733
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.bt = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !1936
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 %i.bf, ptr %i.bv, align 1, !tbaa !733
  br label %jsonAppendControlChar.exit

bb.r:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !1936 ; 2 uses
  %i.by = add i64 %i.bx, 1
  store i64 %i.by, ptr %i.c, align 8, !tbaa !1936
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  store i8 39, ptr %i.bz, align 1, !tbaa !733
  br label %jsonAppendControlChar.exit

bb.s:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.cb = zext i32 %.180 to i64
  %i.cc = add nuw nsw i64 %i.cb, 7
  %i.cd = add i64 %i.cc, %i.ca
  %i.ce = load i64, ptr %i.g, align 8, !tbaa !1926
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = add i32 %.180, 7
  %i.ch = tail call fastcc i32 @jsonStringGrow(ptr noundef nonnull %0, i32 noundef %i.cg)
  %.not93 = icmp eq i32 %i.ch, 0
  br i1 %.not93, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ci = zext i8 %i.bf to i64                    ; 2 uses
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, 4294953215
  %.not.not.i = icmp eq i64 %i.ck, 0
  br i1 %.not.not.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr @jsonAppendControlChar.aSpecial, i64 %i.ci
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  store i8 92, ptr %i.co, align 1, !tbaa !733
  %i.cp = load i8, ptr %i.cl, align 1, !tbaa !733
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.cr = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.cs = getelementptr i8, ptr %i.cq, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 1
  store i8 %i.cp, ptr %i.ct, align 1, !tbaa !733
  %i.cu = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.cv = add i64 %i.cu, 2
  store i64 %i.cv, ptr %i.c, align 8, !tbaa !1936
  br label %jsonAppendControlChar.exit

bb.w:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.cx = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  store i8 92, ptr %i.cy, align 1, !tbaa !733
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.da = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.db = getelementptr i8, ptr %i.cz, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 1
  store i8 117, ptr %i.dc, align 1, !tbaa !733
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.de = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.df = getelementptr i8, ptr %i.dd, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  store i8 48, ptr %i.dg, align 1, !tbaa !733
  %i.dh = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.di = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.dj = getelementptr i8, ptr %i.dh, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 3
  store i8 48, ptr %i.dk, align 1, !tbaa !733
  %i.dl = zext i8 %i.bf to i32                    ; 2 uses
  %i.dm = lshr i32 %i.dl, 4
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !733
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  store i8 %i.dp, ptr %i.dt, align 1, !tbaa !733
  %i.du = and i32 %i.dl, 15
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !733
  %i.dy = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.dz = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 5
  store i8 %i.dx, ptr %i.eb, align 1, !tbaa !733
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !1936
  %i.ed = add i64 %i.ec, 6
  store i64 %i.ed, ptr %i.c, align 8, !tbaa !1936
  br label %jsonAppendControlChar.exit

jsonAppendControlChar.exit:                       ; preds = %bb.w, %bb.v, %bb.r, %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ef = add i32 %.180, -1
  br label %bb.e

bb.x:                                             ; preds = %.critedge.thread, %bb.k
  %i.eg = phi i64 [ %.pre112, %.critedge.thread ], [ %i.aw, %bb.k ] ; 2 uses
  %i.eh = load ptr, ptr %i.l, align 8, !tbaa !1925
  %i.ei = add i64 %i.eg, 1
  store i64 %i.ei, ptr %i.c, align 8, !tbaa !1936
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 34, ptr %i.ej, align 1, !tbaa !733
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.p, %bb.c, %bb.a, %bb.x
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jsonStringTooDeep(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1969
  %i.c = or i8 %i.b, 4
  store i8 %i.c, ptr %i.a, align 1, !tbaa !1969
  %i.d = load ptr, ptr %0, align 8, !tbaa !1970   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 1, ptr %i.e, align 4, !tbaa !570
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !761
end_hunk_3
