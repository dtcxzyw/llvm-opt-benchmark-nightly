inline.NumInlined: 80
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@json_to_tsvector:bb.a
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #7 ; 3 uses
  %i.i = tail call i32 @parse_jsonb_index_flags(ptr noundef %i.h) #7
  %i.j = tail call i32 @getTSCurrentConfig(i1 noundef zeroext true) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store ptr null, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.k, align 4
  store ptr %2, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.l, align 8
  call void @iterate_json_values(ptr noundef %i.d, i32 noundef %i.i, ptr noundef nonnull %1, ptr noundef nonnull @add_to_tsvector) #7
  %i.m = call noundef ptr @make_tsvector(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.n = load i64, ptr %i.a, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %.not = icmp eq ptr %i.d, %i.o
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @pfree(ptr noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = load i64, ptr %i.e, align 8
  %i.q = inttoptr i64 %i.p to ptr
  %.not13 = icmp eq ptr %i.h, %i.q
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @pfree(ptr noundef %i.h) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = ptrtoint ptr %i.m to i64
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i64 @to_tsquery_byid(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.MorphOpaque, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.f = load i64, ptr %i.a, align 8
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %1, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 4, ptr %i.h, align 4
  %i.i = tail call ptr @text_to_cstring(ptr noundef %i.e) #7
  %i.j = call ptr @parse_tsquery(ptr noundef %i.i, ptr noundef nonnull @pushval_morph, ptr noundef nonnull %1, i32 noundef 0, ptr noundef null) #7
  %i.k = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %i.k
}

declare ptr @parse_tsquery(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @text_to_cstring(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @pushval_morph(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4, i1 noundef zeroext %5) #0 {
bb.a:
  %6 = alloca %struct.ParsedText, align 8         ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 7 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.c, align 8
  %i.d = tail call ptr @palloc_mul(i64 noundef 24, i64 noundef 4) #7
  store ptr %i.d, ptr %6, align 8
  %i.e = load i32, ptr %0, align 4
  call void @parsetext(i32 noundef %i.e, ptr noundef nonnull %6, ptr noundef %2, i32 noundef %3) #7
  %i.f = load i32, ptr %i.b, align 4              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph78, label %bb.m

.lr.ph78:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph78, %bb.l
  %i.i = phi i32 [ %i.f, %.lr.ph78 ], [ %i.cw, %bb.l ] ; 2 uses
  %.04677 = phi i32 [ 0, %.lr.ph78 ], [ %i.cx, %bb.l ] ; 3 uses
  %.04876 = phi i32 [ 0, %.lr.ph78 ], [ %i.ag, %bb.l ] ; 2 uses
  %.05075 = phi i32 [ 0, %.lr.ph78 ], [ %.151.lcssa, %bb.l ] ; 5 uses
  %.not = icmp eq i32 %.04876, 0
  %.pre = load ptr, ptr %6, align 8               ; 3 uses
  br i1 %.not, label %..loopexit_crit_edge, label %bb.c

..loopexit_crit_edge:                             ; preds = %bb.b
  %.pre85.a = sext i32 %.05075 to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw nsw i32 %.04876, 1               ; 2 uses
  %i.k = sext i32 %.05075 to i64                  ; 4 uses
  %i.l = getelementptr inbounds [24 x i8], ptr %.pre, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i16, ptr %i.m, align 8
  %i.o = zext i16 %i.n to i32
  %i.p = icmp samesign ult i32 %i.j, %i.o
  br i1 %i.p, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.q = phi i32 [ %i.u, %bb.e ], [ %i.j, %bb.c ]
  %.160 = phi i32 [ %i.t, %bb.e ], [ %.04677, %bb.c ] ; 2 uses
  call void @pushStop(ptr noundef %1) #7
  %.not58 = icmp eq i32 %.160, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = load i32, ptr %i.h, align 4
  %i.s = trunc i32 %i.r to i8
  call void @pushOperator(ptr noundef %1, i8 noundef signext %i.s, i16 noundef signext 1) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = add i32 %.160, 1                         ; 2 uses
  %i.u = add nuw nsw i32 %i.q, 1                  ; 2 uses
  %i.v = load ptr, ptr %6, align 8                ; 2 uses
  %i.w = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i16, ptr %i.x, align 8
  %i.z = zext i16 %i.y to i32
  %i.aa = icmp samesign ult i32 %i.u, %i.z
  br i1 %i.aa, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !9

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre80 = load i32, ptr %i.b, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.loopexit.loopexit, %bb.c
  %.pre-phi = phi i64 [ %.pre85.a, %..loopexit_crit_edge ], [ %i.k, %bb.c ], [ %i.k, %.loopexit.loopexit ]
  %i.ab = phi i32 [ %i.i, %..loopexit_crit_edge ], [ %i.i, %bb.c ], [ %.pre80, %.loopexit.loopexit ] ; 4 uses
  %i.ac = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %.pre, %bb.c ], [ %i.v, %.loopexit.loopexit ]
  %.2 = phi i32 [ %.04677, %..loopexit_crit_edge ], [ %.04677, %bb.c ], [ %i.t, %.loopexit.loopexit ] ; 2 uses
  %i.ad = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %.pre-phi
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i16, ptr %i.ae, align 8            ; 4 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = icmp slt i32 %.05075, %i.ab
  br i1 %i.ah, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %.loopexit, %bb.j
  %i.ai = phi i32 [ %i.cp, %bb.j ], [ %i.ab, %.loopexit ] ; 2 uses
  %i.aj = phi i32 [ %i.cq, %bb.j ], [ %i.ab, %.loopexit ] ; 2 uses
  %.04770 = phi i32 [ %i.cr, %bb.j ], [ 0, %.loopexit ] ; 2 uses
  %.15169 = phi i32 [ %.252.lcssa, %bb.j ], [ %.05075, %.loopexit ] ; 5 uses
  %i.ak = load ptr, ptr %6, align 8
  %i.al = sext i32 %.15169 to i64                 ; 2 uses
  %i.am = getelementptr inbounds [24 x i8], ptr %i.ak, i64 %i.al ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = icmp eq i16 %i.af, %i.ao
  br i1 %i.ap, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ar = load i16, ptr %i.aq, align 4
  %i.as = icmp slt i32 %.15169, %i.aj
  br i1 %i.as, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = zext i16 %i.aw to i32
  %i.ay = load i16, ptr %i.am, align 8
  %i.az = and i16 %i.ay, 2
  %i.ba = icmp ne i16 %i.az, 0
  %i.bb = or i1 %5, %i.ba
  call void @pushValue(ptr noundef %1, ptr noundef %i.au, i32 noundef %i.ax, i16 noundef signext %4, i1 noundef zeroext %i.bb) #7
  %i.bc = load ptr, ptr %6, align 8
  %i.bd = getelementptr inbounds [24 x i8], ptr %i.bc, i64 %i.al
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void @pfree(ptr noundef %i.bf) #7
  %.pre82 = load i32, ptr %i.b, align 4           ; 6 uses
  %i.bg = add nsw i32 %.15169, 1                  ; 5 uses
  %i.bh = icmp slt i32 %i.bg, %.pre82
  br i1 %i.bh, label %.lr.ph63.preheader, label %.critedge2

.lr.ph63.preheader:                               ; preds = %bb.g
  %i.bi = load ptr, ptr %6, align 8
  %i.bj = sext i32 %i.bg to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = icmp eq i16 %i.af, %i.bm
  br i1 %i.bn, label %.lr.ph110, label %.critedge2

.lr.ph63:                                         ; preds = %bb.h
  %i.bo = load ptr, ptr %6, align 8
  %i.bp = sext i32 %7 to i64                      ; 2 uses
  %i.bq = getelementptr inbounds [24 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i16, ptr %i.br, align 8
  %i.bt = icmp eq i16 %i.af, %i.bs
  br i1 %i.bt, label %.lr.ph110, label %.critedge2, !llvm.loop !10

.lr.ph110:                                        ; preds = %.lr.ph63.preheader, %.lr.ph63
  %i.bu = phi ptr [ %i.bq, %.lr.ph63 ], [ %i.bk, %.lr.ph63.preheader ] ; 4 uses
  %i.bv = phi i64 [ %i.bp, %.lr.ph63 ], [ %i.bj, %.lr.ph63.preheader ]
  %.062108 = phi i32 [ %7, %.lr.ph63 ], [ %i.bg, %.lr.ph63.preheader ] ; 2 uses
  %i.bw = phi i32 [ %8, %.lr.ph63 ], [ %.pre82, %.lr.ph63.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.by = load i16, ptr %i.bx, align 4
  %i.bz = icmp eq i16 %i.ar, %i.by
  br i1 %i.bz, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %.lr.ph110
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cd = load i16, ptr %i.cc, align 2
  %i.ce = zext i16 %i.cd to i32
  %i.cf = load i16, ptr %i.bu, align 8
  %i.cg = and i16 %i.cf, 2
  %i.ch = icmp ne i16 %i.cg, 0
  %i.ci = or i1 %5, %i.ch
  call void @pushValue(ptr noundef %1, ptr noundef %i.cb, i32 noundef %i.ce, i16 noundef signext %4, i1 noundef zeroext %i.ci) #7
  %i.cj = load ptr, ptr %6, align 8
  %i.ck = getelementptr inbounds [24 x i8], ptr %i.cj, i64 %i.bv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void @pfree(ptr noundef %i.cm) #7
  call void @pushOperator(ptr noundef %1, i8 noundef signext 2, i16 noundef signext 0) #7
  %7 = add nsw i32 %.062108, 1                    ; 5 uses
  %8 = load i32, ptr %i.b, align 4                ; 6 uses
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %.lr.ph63, label %..critedge2.loopexit_crit_edge, !llvm.loop !10

..critedge2.loopexit_crit_edge:                   ; preds = %bb.h
  br label %.critedge2, !llvm.loop !10

.critedge2:                                       ; preds = %.lr.ph63, %.lr.ph110, %.lr.ph63.preheader, %..critedge2.loopexit_crit_edge, %bb.g, %bb.f
  %i.cn = phi i32 [ %i.ai, %bb.f ], [ %.pre82, %bb.g ], [ %.pre82, %.lr.ph63.preheader ], [ %8, %..critedge2.loopexit_crit_edge ], [ %i.bw, %.lr.ph110 ], [ %8, %.lr.ph63 ]
  %i.co = phi i32 [ %i.aj, %bb.f ], [ %.pre82, %bb.g ], [ %.pre82, %.lr.ph63.preheader ], [ %8, %..critedge2.loopexit_crit_edge ], [ %i.bw, %.lr.ph110 ], [ %8, %.lr.ph63 ]
  %.252.lcssa = phi i32 [ %.15169, %bb.f ], [ %i.bg, %bb.g ], [ %i.bg, %.lr.ph63.preheader ], [ %7, %..critedge2.loopexit_crit_edge ], [ %.062108, %.lr.ph110 ], [ %7, %.lr.ph63 ] ; 3 uses
  %.not56 = icmp eq i32 %.04770, 0
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge2
  call void @pushOperator(ptr noundef %1, i8 noundef signext 3, i16 noundef signext 0) #7
  %.pre83 = load i32, ptr %i.b, align 4           ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge2
  %i.cp = phi i32 [ %.pre83, %bb.i ], [ %i.cn, %.critedge2 ] ; 2 uses
  %i.cq = phi i32 [ %.pre83, %bb.i ], [ %i.co, %.critedge2 ] ; 2 uses
  %i.cr = add i32 %.04770, 1
  %i.cs = icmp slt i32 %.252.lcssa, %i.cq
  br i1 %i.cs, label %.lr.ph71, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %.lr.ph71, %bb.j, %.loopexit
  %i.ct = phi i32 [ %i.ab, %.loopexit ], [ %i.cp, %bb.j ], [ %i.ai, %.lr.ph71 ]
  %.151.lcssa = phi i32 [ %.05075, %.loopexit ], [ %.252.lcssa, %bb.j ], [ %.15169, %.lr.ph71 ] ; 2 uses
  %.not55 = icmp eq i32 %.2, 0
  br i1 %.not55, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.cu = load i32, ptr %i.h, align 4
  %i.cv = trunc i32 %i.cu to i8
  call void @pushOperator(ptr noundef %1, i8 noundef signext %i.cv, i16 noundef signext 1) #7
  %.pre84 = load i32, ptr %i.b, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  %i.cw = phi i32 [ %.pre84, %bb.k ], [ %i.ct, %.critedge ] ; 2 uses
  %i.cx = add i32 %.2, 1
  %i.cy = icmp slt i32 %.151.lcssa, %i.cw
  br i1 %i.cy, label %bb.b, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.l
  %i.cz = load ptr, ptr %6, align 8
  call void @pfree(ptr noundef %i.cz) #7
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @pushStop(ptr noundef %1) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @to_tsquery(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #7
  %i.e = tail call i32 @getTSCurrentConfig(i1 noundef zeroext true) #7
  %i.f = zext i32 %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @to_tsquery_byid, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.g) #7
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @plainto_tsquery_byid(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.MorphOpaque, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.f = load i64, ptr %i.a, align 8
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %1, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 2, ptr %i.h, align 4
  %i.i = tail call ptr @text_to_cstring(ptr noundef %i.e) #7
  %i.j = call ptr @parse_tsquery(ptr noundef %i.i, ptr noundef nonnull @pushval_morph, ptr noundef nonnull %1, i32 noundef 1, ptr noundef null) #7
  %i.k = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local i64 @plainto_tsquery(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #7
  %i.e = tail call i32 @getTSCurrentConfig(i1 noundef zeroext true) #7
  %i.f = zext i32 %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @plainto_tsquery_byid, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.g) #7
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @phraseto_tsquery_byid(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.MorphOpaque, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.f = load i64, ptr %i.a, align 8
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %1, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 4, ptr %i.h, align 4
  %i.i = tail call ptr @text_to_cstring(ptr noundef %i.e) #7
  %i.j = call ptr @parse_tsquery(ptr noundef %i.i, ptr noundef nonnull @pushval_morph, ptr noundef nonnull %1, i32 noundef 1, ptr noundef null) #7
  %i.k = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local i64 @phraseto_tsquery(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #7
  %i.e = tail call i32 @getTSCurrentConfig(i1 noundef zeroext true) #7
  %i.f = zext i32 %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @phraseto_tsquery_byid, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.g) #7
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @websearch_to_tsquery_byid(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.MorphOpaque, align 4        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.f = load i64, ptr %i.a, align 8
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %1, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 4, ptr %i.h, align 4
  %i.i = tail call ptr @text_to_cstring(ptr noundef %i.e) #7
  %i.j = call ptr @parse_tsquery(ptr noundef %i.i, ptr noundef nonnull @pushval_morph, ptr noundef nonnull %1, i32 noundef 2, ptr noundef null) #7
  %i.k = ptrtoint ptr %i.j to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define dso_local i64 @websearch_to_tsquery(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #7
  %i.e = tail call i32 @getTSCurrentConfig(i1 noundef zeroext true) #7
  %i.f = zext i32 %i.e to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @websearch_to_tsquery_byid, i32 noundef 0, i64 noundef %i.f, i64 noundef %i.g) #7
  ret i64 %i.h
}

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @compareWORD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  %i.k = tail call i32 @tsCompareString(ptr noundef %i.b, i32 noundef %i.e, ptr noundef %i.g, i32 noundef %i.j, i1 noundef zeroext false) #7 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i16, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i16, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq i16 %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ugt i16 %i.n, %i.p
  %i.s = select i1 %i.r, i32 1, i32 -1
end_hunk_0
