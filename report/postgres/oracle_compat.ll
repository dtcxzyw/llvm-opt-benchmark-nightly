Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/oracle_compat?download=true
inline.NumInlined: 111
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rpad:bb.a
.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bg = load i8, ptr %i.d, align 1
  %i.bh = and i8 %i.bg, 1
  %.not.i67 = icmp eq i8 %i.bh, 0
  %.v.i68 = select i1 %.not.i67, i64 4, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i68
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.175 = phi i32 [ %i.bj, %.lr.ph ], [ %spec.select, %.lr.ph.preheader ]
  %.05174 = phi ptr [ %i.bm, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ] ; 2 uses
  %.05573 = phi ptr [ %i.bn, %.lr.ph ], [ %i.bi, %.lr.ph.preheader ] ; 3 uses
  %i.bj = add i32 %.175, -1                       ; 2 uses
  %i.bk = tail call i32 @pg_mblen_unbounded(ptr noundef %.05573) #6
  %i.bl = sext i32 %i.bk to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05174, ptr align 1 %.05573, i64 %i.bl, i1 false)
  %i.bm = getelementptr inbounds i8, ptr %.05174, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.05573, i64 %i.bl
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.051.lcssa = phi ptr [ %i.bf, %bb.l ], [ %i.bm, %.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %i.k, align 1
  %i.bp = and i8 %i.bo, 1
  %.not.i69 = icmp eq i8 %i.bp, 0
  %.v.i70 = select i1 %.not.i69, i64 4, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 %.v.i70 ; 3 uses
  %i.br = zext nneg i32 %spec.store.select1 to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 2 uses
  %.not5976 = icmp eq i32 %i.be, 0
  br i1 %.not5976, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %._crit_edge, %.lr.ph81
  %.05079 = phi i32 [ %i.bt, %.lr.ph81 ], [ %i.be, %._crit_edge ]
  %.15278 = phi ptr [ %i.bw, %.lr.ph81 ], [ %.051.lcssa, %._crit_edge ] ; 2 uses
  %.05377 = phi ptr [ %spec.select60, %.lr.ph81 ], [ %i.bq, %._crit_edge ] ; 3 uses
  %i.bt = add i32 %.05079, -1                     ; 2 uses
  %i.bu = tail call i32 @pg_mblen_range(ptr noundef %.05377, ptr noundef nonnull %i.bs) #6
  %i.bv = sext i32 %i.bu to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.15278, ptr align 1 %.05377, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds i8, ptr %.15278, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.05377, i64 %i.bv ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bs
  %spec.select60 = select i1 %i.by, ptr %i.bq, ptr %i.bx
  %.not59 = icmp eq i32 %i.bt, 0
  br i1 %.not59, label %._crit_edge82, label %.lr.ph81, !llvm.loop !10

._crit_edge82:                                    ; preds = %.lr.ph81, %._crit_edge
  %.152.lcssa = phi ptr [ %.051.lcssa, %._crit_edge ], [ %i.bw, %.lr.ph81 ]
  %i.bz = ptrtoint ptr %.152.lcssa to i64
  %i.ca = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = shl i32 %i.cc, 2
  store i32 %i.cd, ptr %i.bd, align 4
  ret i64 %i.ca
}

; Function Attrs: nounwind uwtable
define dso_local i64 @btrim(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #6 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #6 ; 4 uses
  %i.i = load i8, ptr %i.d, align 1               ; 3 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp eq i8 %i.i, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.l, align 1            ; 2 uses
  %i.m = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.m, 3
  %i.n = icmp eq i8 %.val.i, 18
  %i.o = select i1 %i.n, i32 16, i32 0
  %i.p = select i1 %or.cond.i.i.i, i32 8, i32 %i.o
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.q = and i32 %i.j, 1
  %.not.i7 = icmp eq i32 %i.q, 0
  br i1 %.not.i7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i32 %i.j, 1
  %i.s = add nsw i32 %i.r, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 4
  %i.u = lshr i32 %i.t, 2
  %i.v = add nsw i32 %i.u, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.p, %bb.b ], [ %i.s, %bb.d ], [ %i.v, %bb.e ]
  %i.w = load i8, ptr %i.h, align 1               ; 3 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = icmp eq i8 %i.w, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.z = getelementptr i8, ptr %i.h, i64 1
  %.val.i12 = load i8, ptr %i.z, align 1          ; 2 uses
  %i.aa = add i8 %.val.i12, -1
  %or.cond.i.i.i13 = icmp ult i8 %i.aa, 3
  %i.ab = icmp eq i8 %.val.i12, 18
  %i.ac = select i1 %i.ab, i32 16, i32 0
  %i.ad = select i1 %or.cond.i.i.i13, i32 8, i32 %i.ac
  br label %VARSIZE_ANY_EXHDR.exit14

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.ae = and i32 %i.x, 1
  %.not.i10 = icmp eq i32 %i.ae, 0
  br i1 %.not.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = lshr i32 %i.x, 1
  %i.ag = add nsw i32 %i.af, -1
  br label %VARSIZE_ANY_EXHDR.exit14

bb.i:                                             ; preds = %bb.g
  %i.ah = load i32, ptr %i.h, align 4
  %i.ai = lshr i32 %i.ah, 2
  %i.aj = add nsw i32 %i.ai, -4
  br label %VARSIZE_ANY_EXHDR.exit14

VARSIZE_ANY_EXHDR.exit14:                         ; preds = %bb.f, %bb.h, %bb.i
  %.0.i11 = phi i32 [ %i.ad, %bb.f ], [ %i.ag, %bb.h ], [ %i.aj, %bb.i ]
  %i.ak = and i8 %i.w, 1
  %.not.i8 = icmp eq i8 %i.ak, 0
  %.v.i9 = select i1 %.not.i8, i64 4, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i9
  %i.am = and i8 %i.i, 1
  %.not.i = icmp eq i8 %i.am, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i
  %i.ao = tail call fastcc ptr @dotrim(ptr noundef nonnull %i.an, i32 noundef %.0.i, ptr noundef nonnull %i.al, i32 noundef %.0.i11, i1 noundef zeroext true, i1 noundef zeroext true)
  %i.ap = ptrtoint ptr %i.ao to i64
  ret i64 %i.ap
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @dotrim(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  %i.b = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.thread184

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @pg_database_encoding_max_length() #6
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph.preheader.a, label %bb.k

.lr.ph.preheader.a:                               ; preds = %bb.b
  %i.e = zext nneg i32 %1 to i64                  ; 3 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = tail call ptr @palloc(i64 noundef %i.f) #6 ; 4 uses
  %i.h = shl nuw nsw i64 %i.e, 2
  %i.i = tail call ptr @palloc(i64 noundef %i.h) #6 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.preheader.a, %.lr.ph.a
  %.0137224 = phi i32 [ %i.r, %.lr.ph.a ], [ %1, %.lr.ph.preheader.a ]
  %.0139223 = phi ptr [ %i.q, %.lr.ph.a ], [ %0, %.lr.ph.preheader.a ] ; 3 uses
  %.0146222 = phi i32 [ %i.o, %.lr.ph.a ], [ 0, %.lr.ph.preheader.a ] ; 3 uses
  %i.k = sext i32 %.0146222 to i64                ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.k
  store ptr %.0139223, ptr %i.l, align 8
  %i.m = tail call i32 @pg_mblen_range(ptr noundef %.0139223, ptr noundef nonnull %i.j) #6 ; 3 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.k
  store i32 %i.m, ptr %i.n, align 4
  %i.o = add i32 %.0146222, 1                     ; 4 uses
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr %.0139223, i64 %i.p
  %i.r = sub i32 %.0137224, %i.m                  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.a, label %.lr.ph230.preheader, !llvm.loop !11

.lr.ph230.preheader:                              ; preds = %.lr.ph.a
  %i.t = zext nneg i32 %3 to i64                  ; 3 uses
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = tail call ptr @palloc(i64 noundef %i.u) #6 ; 4 uses
  %i.w = shl nuw nsw i64 %i.t, 2
  %i.x = tail call ptr @palloc(i64 noundef %i.w) #6 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %.lr.ph230
  %.1138228 = phi i32 [ %i.ag, %.lr.ph230 ], [ %3, %.lr.ph230.preheader ]
  %.1140227 = phi ptr [ %i.af, %.lr.ph230 ], [ %2, %.lr.ph230.preheader ] ; 3 uses
  %.0145226 = phi i32 [ %i.ad, %.lr.ph230 ], [ 0, %.lr.ph230.preheader ] ; 3 uses
  %i.z = sext i32 %.0145226 to i64                ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.z
  store ptr %.1140227, ptr %i.aa, align 8
  %i.ab = tail call i32 @pg_mblen_range(ptr noundef %.1140227, ptr noundef nonnull %i.y) #6 ; 3 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.z
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = add i32 %.0145226, 1                    ; 3 uses
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds i8, ptr %.1140227, i64 %i.ae
  %i.ag = sub i32 %.1138228, %i.ab                ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph230, label %._crit_edge231, !llvm.loop !12

._crit_edge231:                                   ; preds = %.lr.ph230
  %i.ai = icmp ult i32 %.0146222, 2147483647
  %or.cond3 = and i1 %4, %i.ai
  %6 = icmp ult i32 %.0145226, 2147483647         ; 2 uses
  %or.cond320 = and i1 %or.cond3, %6
  br i1 %or.cond320, label %.lr.ph235.us.preheader, label %.loopexit

.lr.ph235.us.preheader:                           ; preds = %._crit_edge231
  %wide.trip.count291 = zext nneg i32 %i.o to i64
  %wide.trip.count286 = zext nneg i32 %i.ad to i64
  br label %.lr.ph235.us

.lr.ph235.us:                                     ; preds = %.lr.ph235.us.preheader, %bb.f
  %indvars.iv288 = phi i64 [ 0, %.lr.ph235.us.preheader ], [ %indvars.iv.next289, %bb.f ] ; 4 uses
  %.0154.us = phi i32 [ %1, %.lr.ph235.us.preheader ], [ %i.av, %bb.f ] ; 2 uses
  %.0150.us = phi ptr [ %0, %.lr.ph235.us.preheader ], [ %i.au, %bb.f ] ; 2 uses
  %.0141.us = phi i32 [ %i.o, %.lr.ph235.us.preheader ], [ %i.aw, %bb.f ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv288
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv288
  %i.am = load i32, ptr %i.al, align 4            ; 3 uses
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph235.us, %bb.e
  %indvars.iv283 = phi i64 [ 0, %.lr.ph235.us ], [ %indvars.iv.next284, %bb.e ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv283
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.am, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv283
  %i.as = load ptr, ptr %i.ar, align 8
  %bcmp.us = tail call i32 @bcmp(ptr %i.ak, ptr %i.as, i64 %i.an)
  %i.at = icmp eq i32 %bcmp.us, 0
  br i1 %i.at, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !13

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds i8, ptr %.0150.us, i64 %i.an ; 2 uses
  %i.av = sub i32 %.0154.us, %i.am                ; 2 uses
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %i.aw = add nsw i32 %.0141.us, -1
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %.thread171, label %.lr.ph235.us

.loopexit.loopexit:                               ; preds = %bb.e
  %i.ax = add nsw i64 %indvars.iv288, -1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge231
  %.1155 = phi i32 [ %1, %._crit_edge231 ], [ %.0154.us, %.loopexit.loopexit ] ; 2 uses
  %.1151 = phi ptr [ %0, %._crit_edge231 ], [ %.0150.us, %.loopexit.loopexit ] ; 3 uses
  %.1144 = phi i64 [ -1, %._crit_edge231 ], [ %i.ax, %.loopexit.loopexit ]
  %.1142 = phi i32 [ %i.o, %._crit_edge231 ], [ %.0141.us, %.loopexit.loopexit ] ; 2 uses
  %i.ay = icmp sgt i32 %.1142, 0
  %or.cond6 = select i1 %5, i1 %i.ay, i1 false
  %or.cond321 = and i1 %or.cond6, %6
  br i1 %or.cond321, label %.lr.ph252.us.preheader, label %.thread171

.lr.ph252.us.preheader:                           ; preds = %.loopexit
  %i.az = zext nneg i32 %.1142 to i64
  %wide.trip.count296 = zext nneg i32 %i.ad to i64
  br label %.lr.ph252.us

.lr.ph252.us:                                     ; preds = %.lr.ph252.us.preheader, %bb.j
  %indvars.iv298 = phi i64 [ %i.az, %.lr.ph252.us.preheader ], [ %indvars.iv.next299, %bb.j ] ; 3 uses
  %.2156.us = phi i32 [ %.1155, %.lr.ph252.us.preheader ], [ %i.bn, %bb.j ] ; 2 uses
  %i.ba = add i64 %.1144, %indvars.iv298
  %sext = shl i64 %i.ba, 32
  %i.bb = ashr exact i64 %sext, 32                ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bb
  %i.bf = load i32, ptr %i.be, align 4            ; 3 uses
  %i.bg = sext i32 %i.bf to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph252.us, %bb.i
  %indvars.iv293 = phi i64 [ 0, %.lr.ph252.us ], [ %indvars.iv.next294, %bb.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv293
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = icmp eq i32 %i.bf, %i.bi
  br i1 %i.bj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv293
  %i.bl = load ptr, ptr %i.bk, align 8
  %bcmp169.us = tail call i32 @bcmp(ptr %i.bd, ptr %i.bl, i64 %i.bg)
  %i.bm = icmp eq i32 %bcmp169.us, 0
  br i1 %i.bm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not, label %.thread171, label %bb.g, !llvm.loop !14

bb.j:                                             ; preds = %bb.h
  %i.bn = sub i32 %.2156.us, %i.bf                ; 2 uses
  %indvars.iv.next299 = add nsw i64 %indvars.iv298, -1
  %.old5.us = icmp sgt i64 %indvars.iv298, 1
  br i1 %.old5.us, label %.lr.ph252.us, label %.thread171

.thread171:                                       ; preds = %bb.f, %bb.j, %bb.i, %.loopexit
  %.1151177 = phi ptr [ %.1151, %bb.j ], [ %.1151, %bb.i ], [ %.1151, %.loopexit ], [ %i.au, %bb.f ]
  %.3157 = phi i32 [ %i.bn, %bb.j ], [ %.2156.us, %bb.i ], [ %.1155, %.loopexit ], [ %i.av, %bb.f ]
  tail call void @pfree(ptr noundef %i.g) #6
  tail call void @pfree(ptr noundef %i.i) #6
  tail call void @pfree(ptr noundef %i.v) #6
  tail call void @pfree(ptr noundef nonnull %i.x) #6
  br label %.thread184

bb.k:                                             ; preds = %bb.b
  br i1 %4, label %.lr.ph.us.preheader, label %bb.n

.lr.ph.us.preheader:                              ; preds = %bb.k
  %i.bo = zext nneg i32 %1 to i64
  %scevgep = getelementptr i8, ptr %0, i64 %i.bo
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph.us

7:                                                ; preds = %bb.m
  %8 = getelementptr inbounds nuw i8, ptr %.2152.us, i64 1
  %9 = add nsw i32 %.4158.us, -1
  %.old8 = icmp sgt i32 %.4158.us, 1
  br i1 %.old8, label %.lr.ph.us, label %.thread184

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %7
  %.4158.us = phi i32 [ %9, %7 ], [ %1, %.lr.ph.us.preheader ] ; 3 uses
  %.2152.us = phi ptr [ %8, %7 ], [ %0, %.lr.ph.us.preheader ] ; 3 uses
  %i.bp = load i8, ptr %.2152.us, align 1
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.n, label %bb.m, !llvm.loop !15

bb.m:                                             ; preds = %.lr.ph.us, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = icmp eq i8 %i.bp, %i.br
  br i1 %i.bs, label %7, label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.k
  %.6 = phi i32 [ %1, %bb.k ], [ %.4158.us, %bb.l ] ; 2 uses
  %.4 = phi ptr [ %0, %bb.k ], [ %.2152.us, %bb.l ] ; 4 uses
  br i1 %5, label %.loopexit196, label %.thread184

.loopexit196:                                     ; preds = %bb.n
  %10 = sext i32 %.6 to i64
  %wide.trip.count274 = zext nneg i32 %3 to i64
  br label %.lr.ph.us221

.lr.ph.us221.preheader:                           ; preds = %bb.p
  %indvars.iv.next277 = add nsw i64 %indvars.iv280, -1
  %.old11 = icmp sgt i64 %indvars.iv280, 1
  br i1 %.old11, label %.lr.ph.us221, label %.thread184

.lr.ph.us221:                                     ; preds = %.loopexit196, %.lr.ph.us221.preheader
  %indvars.iv280 = phi i64 [ %10, %.loopexit196 ], [ %indvars.iv.next277, %.lr.ph.us221.preheader ] ; 4 uses
  %i.bt = getelementptr i8, ptr %.4, i64 %indvars.iv280
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count274
  br i1 %exitcond279.not, label %.thread184.loopexit, label %bb.p, !llvm.loop !16

bb.p:                                             ; preds = %.lr.ph.us221, %bb.o
  %indvars.iv275 = phi i64 [ 0, %.lr.ph.us221 ], [ %indvars.iv.next276, %bb.o ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv275
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = icmp eq i8 %i.bv, %i.bx
  br i1 %i.by, label %.lr.ph.us221.preheader, label %bb.o

.thread184.loopexit:                              ; preds = %bb.o
  %i.bz = trunc nsw i64 %indvars.iv280 to i32
  br label %.thread184

.thread184:                                       ; preds = %7, %.lr.ph.us221.preheader, %.thread184.loopexit, %.thread171, %bb.n, %bb.a
  %.9 = phi i32 [ %.3157, %.thread171 ], [ %i.bz, %.thread184.loopexit ], [ 0, %.lr.ph.us221.preheader ], [ %.6, %bb.n ], [ %1, %bb.a ], [ 0, %7 ]
  %.5 = phi ptr [ %.1151177, %.thread171 ], [ %.4, %.thread184.loopexit ], [ %.4, %.lr.ph.us221.preheader ], [ %.4, %bb.n ], [ %0, %bb.a ], [ %scevgep, %7 ]
  %i.ca = tail call ptr @cstring_to_text_with_len(ptr noundef %.5, i32 noundef %.9) #6
  ret ptr %i.ca
}

; Function Attrs: nounwind uwtable
define dso_local i64 @btrim1(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #6 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp eq i8 %i.e, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.h, align 1            ; 2 uses
  %i.i = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.i, 3
  %i.j = icmp eq i8 %.val.i, 18
  %i.k = select i1 %i.j, i32 16, i32 0
  %i.l = select i1 %or.cond.i.i.i, i32 8, i32 %i.k
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.m = and i32 %i.f, 1
  %.not.i4 = icmp eq i32 %i.m, 0
  br i1 %.not.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %i.f, 1
  %i.o = add nsw i32 %i.n, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.d, align 4
  %i.q = lshr i32 %i.p, 2
  %i.r = add nsw i32 %i.q, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.l, %bb.b ], [ %i.o, %bb.d ], [ %i.r, %bb.e ]
  %i.s = and i8 %i.e, 1
  %.not.i = icmp eq i8 %i.s, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i
  %i.u = tail call fastcc ptr @dotrim(ptr noundef nonnull %i.t, i32 noundef %.0.i, ptr noundef nonnull @.str.2, i32 noundef 1, i1 noundef zeroext true, i1 noundef zeroext true)
  %i.v = ptrtoint ptr %i.u to i64
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @byteatrim(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #6
  %i.i = tail call fastcc ptr @dobyteatrim(ptr noundef %i.d, ptr noundef %i.h, i1 noundef zeroext true, i1 noundef zeroext true)
  %i.j = ptrtoint ptr %i.i to i64
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @dobyteatrim(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(address) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 3 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp eq i8 %i.a, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %.val.i = load i8, ptr %i.d, align 1            ; 2 uses
  %i.e = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.e, 3
  %i.f = icmp eq i8 %.val.i, 18
  %i.g = select i1 %i.f, i64 16, i64 0
  %i.h = select i1 %or.cond.i.i.i, i64 8, i64 %i.g
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i32 %i.b, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = add nsw i64 %i.k, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %0, align 4
  %i.n = lshr i32 %i.m, 2
  %i.o = add nsw i32 %i.n, -4
  %i.p = zext i32 %i.o to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ %i.p, %bb.e ] ; 3 uses
  %i.q = trunc i64 %.0.i to i32                   ; 3 uses
  %i.r = load i8, ptr %1, align 1                 ; 3 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = icmp eq i8 %i.r, 1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.u = getelementptr i8, ptr %1, i64 1
  %.val.i66 = load i8, ptr %i.u, align 1          ; 2 uses
  %i.v = add i8 %.val.i66, -1
  %or.cond.i.i.i67 = icmp ult i8 %i.v, 3
  %i.w = icmp eq i8 %.val.i66, 18
  %i.x = select i1 %i.w, i64 16, i64 0
  %i.y = select i1 %or.cond.i.i.i67, i64 8, i64 %i.x
  br label %VARSIZE_ANY_EXHDR.exit68

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.z = and i32 %i.s, 1
  %.not.i64 = icmp eq i32 %i.z, 0
  br i1 %.not.i64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = lshr i32 %i.s, 1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, -1
  br label %VARSIZE_ANY_EXHDR.exit68

bb.i:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %1, align 4
  %i.ae = lshr i32 %i.ad, 2
  %i.af = add nsw i32 %i.ae, -4
  %i.ag = zext i32 %i.af to i64
  br label %VARSIZE_ANY_EXHDR.exit68

VARSIZE_ANY_EXHDR.exit68:                         ; preds = %bb.f, %bb.h, %bb.i
  %.0.i65 = phi i64 [ %i.y, %bb.f ], [ %i.ac, %bb.h ], [ %i.ag, %bb.i ] ; 2 uses
  %i.ah = trunc i64 %.0.i65 to i32
  %i.ai = icmp slt i32 %i.q, 1
  %i.aj = icmp slt i32 %i.ah, 1
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.q, label %bb.j

bb.j:                                             ; preds = %VARSIZE_ANY_EXHDR.exit68
  %i.ak = and i8 %i.a, 1
  %.not.i69 = icmp eq i8 %i.ak, 0
  %.v.i = select i1 %.not.i69, i64 4, i64 1       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i ; 3 uses
  %i.am = and i64 %.0.i, 2147483647
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am
  %i.ao = and i8 %i.r, 1
  %.not.i70 = icmp eq i8 %i.ao, 0
  %.v.i71 = select i1 %.not.i70, i64 4, i64 1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.v.i71 ; 4 uses
  %i.aq = and i64 %.0.i65, 2147483647             ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -1     ; 3 uses
  %.not84 = icmp ne i64 %i.aq, 0
  %or.cond98.not = select i1 %2, i1 %.not84, i1 false
  br i1 %or.cond98.not, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.at = add nsw i64 %.0.i, 4294967295
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr i8, ptr %0, i64 %.v.i
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.au
  %scevgep = getelementptr i8, ptr %i.aw, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.054 = phi ptr [ %i.bb, %bb.m ], [ %i.al, %.lr.ph.preheader ] ; 3 uses
  %.0 = phi i32 [ %i.bc, %bb.m ], [ %i.q, %.lr.ph.preheader ] ; 3 uses
  %i.ax = load i8, ptr %.054, align 1
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.05185, i64 1 ; 2 uses
  %.not = icmp ugt ptr %i.ay, %i.as
  br i1 %.not, label %.thread, label %bb.l, !llvm.loop !17

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.05185 = phi ptr [ %i.ap, %.lr.ph ], [ %i.ay, %bb.k ] ; 2 uses
  %i.az = load i8, ptr %.05185, align 1
  %i.ba = icmp eq i8 %i.ax, %i.az
  br i1 %i.ba, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.054, i64 1
  %i.bc = add nsw i32 %.0, -1
  %.old2 = icmp sgt i32 %.0, 1
  br i1 %.old2, label %.lr.ph, label %.thread72

.thread:                                          ; preds = %bb.k, %bb.j
  %.155 = phi ptr [ %i.al, %bb.j ], [ %.054, %bb.k ] ; 3 uses
end_hunk_0
