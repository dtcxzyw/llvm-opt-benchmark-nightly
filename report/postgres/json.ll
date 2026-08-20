inline.NumInlined: 101
inline.NumDeleted: 48
begin_hunk_0_@json_build_array:bb.a

; Function Attrs: nounwind uwtable
define dso_local i64 @json_build_array_noargs(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @cstring_to_text_with_len(ptr noundef nonnull @.str.17, i32 noundef 2) #10
  %i.b = ptrtoint ptr %i.a to i64
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i64 @json_object(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 17 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @pg_detoast_datum(ptr noundef %i.f) #10 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  switch i32 %i.i, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @cstring_to_text(ptr noundef nonnull @.str.16) #10
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 1
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.o = tail call i32 @errcode(i32 noundef 352845954) #10 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1398, ptr noundef nonnull @__func__.json_object) #10
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.r = load i32, ptr %i.q, align 4
  %.not = icmp eq i32 %i.r, 2
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.t = tail call i32 @errcode(i32 noundef 352845954) #10 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1405, ptr noundef nonnull @__func__.json_object) #10
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.v = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.w = tail call i32 @errcode(i32 noundef 352845954) #10 ; 0 uses
  %i.x = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1411, ptr noundef nonnull @__func__.json_object) #10
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.c
  call void @deconstruct_array_builtin(ptr noundef nonnull %i.g, i32 noundef 25, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #10
  %i.y = load i32, ptr %i.c, align 4              ; 3 uses
  call void @initStringInfo(ptr noundef nonnull %1) #10
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 123) #10
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.aa = lshr i32 %i.y, 1
  %wide.trip.count = zext nneg i32 %i.aa to i64
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = load i8, ptr %i.ab, align 1, !range !4, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.loopexit, label %._crit_edge30

._crit_edge30:                                    ; preds = %.lr.ph.preheader
  %.pre = load ptr, ptr %i.a, align 8
  %.pre31 = load i64, ptr %.pre, align 8
  %i.ae = inttoptr i64 %.pre31 to ptr             ; 2 uses
  %i.af = call ptr @pg_detoast_datum_packed(ptr noundef %i.ae) #10 ; 6 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 3 uses
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  %i.ai = icmp eq i8 %i.ag, 1
  br i1 %i.ai, label %bb.l, label %bb.i

bb.i:                                             ; preds = %._crit_edge30
  %i.aj = and i32 %i.ah, 1
  %.not.i.i.peel = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.peel, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = lshr i32 %i.ah, 1
  %i.al = add nsw i32 %i.ak, -1
  br label %VARSIZE_ANY_EXHDR.exit.i.peel

bb.k:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.af, align 4
  %i.an = lshr i32 %i.am, 2
  %i.ao = add nsw i32 %i.an, -4
  br label %VARSIZE_ANY_EXHDR.exit.i.peel

bb.l:                                             ; preds = %._crit_edge30
  %i.ap = getelementptr i8, ptr %i.af, i64 1
  %.val.i.i.peel = load i8, ptr %i.ap, align 1    ; 2 uses
  %i.aq = add i8 %.val.i.i.peel, -1
  %or.cond.i.i.i.i.peel = icmp ult i8 %i.aq, 3
  %i.ar = icmp eq i8 %.val.i.i.peel, 18
  %i.as = select i1 %i.ar, i32 16, i32 0
  %i.at = select i1 %or.cond.i.i.i.i.peel, i32 8, i32 %i.as
  br label %VARSIZE_ANY_EXHDR.exit.i.peel

VARSIZE_ANY_EXHDR.exit.i.peel:                    ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.i.peel = phi i32 [ %i.at, %bb.l ], [ %i.al, %bb.j ], [ %i.ao, %bb.k ]
  %i.au = and i8 %i.ag, 1
  %.not.i8.i.peel = icmp eq i8 %i.au, 0
  %.v.i.i.peel = select i1 %.not.i8.i.peel, i64 4, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %.v.i.i.peel
  call void @escape_json_with_len(ptr noundef nonnull %1, ptr noundef nonnull %i.av, i32 noundef %.0.i.i.peel)
  %.not.i.peel = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.peel, label %escape_json_text.exit.peel, label %bb.m

bb.m:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i.peel
  call void @pfree(ptr noundef nonnull %i.af) #10
  br label %escape_json_text.exit.peel

escape_json_text.exit.peel:                       ; preds = %bb.m, %VARSIZE_ANY_EXHDR.exit.i.peel
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.15) #10
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !range !4, !noundef !5
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.t, label %bb.n

bb.n:                                             ; preds = %escape_json_text.exit.peel
  %i.ba = load ptr, ptr %i.a, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %i.be = call ptr @pg_detoast_datum_packed(ptr noundef %i.bd) #10 ; 6 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 3 uses
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = icmp eq i8 %i.bf, 1
  br i1 %i.bh, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = and i32 %i.bg, 1
  %.not.i.i18.peel = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i18.peel, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = lshr i32 %i.bg, 1
  %i.bk = add nsw i32 %i.bj, -1
  br label %VARSIZE_ANY_EXHDR.exit.i19.peel

bb.q:                                             ; preds = %bb.o
  %i.bl = load i32, ptr %i.be, align 4
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = add nsw i32 %i.bm, -4
  br label %VARSIZE_ANY_EXHDR.exit.i19.peel

bb.r:                                             ; preds = %bb.n
  %i.bo = getelementptr i8, ptr %i.be, i64 1
  %.val.i.i24.peel = load i8, ptr %i.bo, align 1  ; 2 uses
  %i.bp = add i8 %.val.i.i24.peel, -1
  %or.cond.i.i.i.i25.peel = icmp ult i8 %i.bp, 3
  %i.bq = icmp eq i8 %.val.i.i24.peel, 18
  %i.br = select i1 %i.bq, i32 16, i32 0
  %i.bs = select i1 %or.cond.i.i.i.i25.peel, i32 8, i32 %i.br
  br label %VARSIZE_ANY_EXHDR.exit.i19.peel

VARSIZE_ANY_EXHDR.exit.i19.peel:                  ; preds = %bb.r, %bb.q, %bb.p
  %.0.i.i20.peel = phi i32 [ %i.bs, %bb.r ], [ %i.bk, %bb.p ], [ %i.bn, %bb.q ]
  %i.bt = and i8 %i.bf, 1
  %.not.i8.i21.peel = icmp eq i8 %i.bt, 0
  %.v.i.i22.peel = select i1 %.not.i8.i21.peel, i64 4, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 %.v.i.i22.peel
  call void @escape_json_with_len(ptr noundef nonnull %1, ptr noundef nonnull %i.bu, i32 noundef %.0.i.i20.peel)
  %.not.i23.peel = icmp eq ptr %i.be, %i.bd
  br i1 %.not.i23.peel, label %escape_json_text.exit26.peel, label %bb.s

bb.s:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i19.peel
  call void @pfree(ptr noundef nonnull %i.be) #10
  br label %escape_json_text.exit26.peel

bb.t:                                             ; preds = %escape_json_text.exit.peel
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.21) #10
  br label %escape_json_text.exit26.peel

escape_json_text.exit26.peel:                     ; preds = %bb.t, %bb.s, %VARSIZE_ANY_EXHDR.exit.i19.peel
  %2 = and i32 %i.y, 2147483646
  %exitcond.peel.not = icmp eq i32 %2, 2
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %escape_json_text.exit26.peel, %escape_json_text.exit26
  %indvars.iv = phi i64 [ %indvars.iv.next, %escape_json_text.exit26 ], [ 1, %escape_json_text.exit26.peel ] ; 2 uses
  %i.bv = load ptr, ptr %i.b, align 8
  %i.bw = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !range !4, !noundef !5
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.loopexit, label %bb.u

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.preheader
  %i.ca = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.cb = call i32 @errcode(i32 noundef 67108994) #10 ; 0 uses
  %i.cc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1427, ptr noundef nonnull @__func__.json_object) #10
  unreachable

bb.u:                                             ; preds = %.lr.ph
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #10
  %i.cd = load ptr, ptr %i.a, align 8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bw
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = call ptr @pg_detoast_datum_packed(ptr noundef %i.cg) #10 ; 6 uses
  %i.ci = load i8, ptr %i.ch, align 1             ; 3 uses
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = icmp eq i8 %i.ci, 1
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr i8, ptr %i.ch, i64 1
  %.val.i.i = load i8, ptr %i.cl, align 1         ; 2 uses
  %i.cm = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.cm, 3
  %i.cn = icmp eq i8 %.val.i.i, 18
  %i.co = select i1 %i.cn, i32 16, i32 0
  %i.cp = select i1 %or.cond.i.i.i.i, i32 8, i32 %i.co
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cq = and i32 %i.cj, 1
  %.not.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = lshr i32 %i.cj, 1
  %i.cs = add nsw i32 %i.cr, -1
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.y:                                             ; preds = %bb.w
  %i.ct = load i32, ptr %i.ch, align 4
  %i.cu = lshr i32 %i.ct, 2
  %i.cv = add nsw i32 %i.cu, -4
  br label %VARSIZE_ANY_EXHDR.exit.i

VARSIZE_ANY_EXHDR.exit.i:                         ; preds = %bb.y, %bb.x, %bb.v
  %.0.i.i = phi i32 [ %i.cp, %bb.v ], [ %i.cs, %bb.x ], [ %i.cv, %bb.y ]
  %i.cw = and i8 %i.ci, 1
  %.not.i8.i = icmp eq i8 %i.cw, 0
  %.v.i.i = select i1 %.not.i8.i, i64 4, i64 1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.v.i.i
  call void @escape_json_with_len(ptr noundef nonnull %1, ptr noundef nonnull %i.cx, i32 noundef %.0.i.i)
  %.not.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i, label %escape_json_text.exit, label %bb.z

bb.z:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  call void @pfree(ptr noundef nonnull %i.ch) #10
  br label %escape_json_text.exit

escape_json_text.exit:                            ; preds = %VARSIZE_ANY_EXHDR.exit.i, %bb.z
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.15) #10
  %i.cy = load ptr, ptr %i.b, align 8
  %i.cz = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !range !4, !noundef !5
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %escape_json_text.exit
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef nonnull @.str.21) #10
  br label %escape_json_text.exit26

bb.ab:                                            ; preds = %escape_json_text.exit
  %i.dd = load ptr, ptr %i.a, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.cz
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = call ptr @pg_detoast_datum_packed(ptr noundef %i.dg) #10 ; 6 uses
  %i.di = load i8, ptr %i.dh, align 1             ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = icmp eq i8 %i.di, 1
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr i8, ptr %i.dh, i64 1
  %.val.i.i24 = load i8, ptr %i.dl, align 1       ; 2 uses
  %i.dm = add i8 %.val.i.i24, -1
  %or.cond.i.i.i.i25 = icmp ult i8 %i.dm, 3
  %i.dn = icmp eq i8 %.val.i.i24, 18
  %i.do = select i1 %i.dn, i32 16, i32 0
  %i.dp = select i1 %or.cond.i.i.i.i25, i32 8, i32 %i.do
  br label %VARSIZE_ANY_EXHDR.exit.i19

bb.ad:                                            ; preds = %bb.ab
  %i.dq = and i32 %i.dj, 1
  %.not.i.i18 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i18, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dr = lshr i32 %i.dj, 1
  %i.ds = add nsw i32 %i.dr, -1
  br label %VARSIZE_ANY_EXHDR.exit.i19

bb.af:                                            ; preds = %bb.ad
  %i.dt = load i32, ptr %i.dh, align 4
  %i.du = lshr i32 %i.dt, 2
  %i.dv = add nsw i32 %i.du, -4
  br label %VARSIZE_ANY_EXHDR.exit.i19

VARSIZE_ANY_EXHDR.exit.i19:                       ; preds = %bb.af, %bb.ae, %bb.ac
  %.0.i.i20 = phi i32 [ %i.dp, %bb.ac ], [ %i.ds, %bb.ae ], [ %i.dv, %bb.af ]
  %i.dw = and i8 %i.di, 1
  %.not.i8.i21 = icmp eq i8 %i.dw, 0
  %.v.i.i22 = select i1 %.not.i8.i21, i64 4, i64 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.v.i.i22
  call void @escape_json_with_len(ptr noundef nonnull %1, ptr noundef nonnull %i.dx, i32 noundef %.0.i.i20)
  %.not.i23 = icmp eq ptr %i.dh, %i.dg
  br i1 %.not.i23, label %escape_json_text.exit26, label %bb.ag

bb.ag:                                            ; preds = %VARSIZE_ANY_EXHDR.exit.i19
  call void @pfree(ptr noundef nonnull %i.dh) #10
  br label %escape_json_text.exit26

escape_json_text.exit26:                          ; preds = %bb.ag, %VARSIZE_ANY_EXHDR.exit.i19, %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %escape_json_text.exit26, %escape_json_text.exit26.peel, %bb.h
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 125) #10
  %i.dy = load ptr, ptr %i.a, align 8
  call void @pfree(ptr noundef %i.dy) #10
  %i.dz = load ptr, ptr %i.b, align 8
  call void @pfree(ptr noundef %i.dz) #10
  %i.ea = load ptr, ptr %1, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = call ptr @cstring_to_text_with_len(ptr noundef %i.ea, i32 noundef %i.ec) #10
  %i.ee = load ptr, ptr %1, align 8
  call void @pfree(ptr noundef %i.ee) #10
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %bb.b
  %.015.in = phi ptr [ %i.j, %bb.b ], [ %i.ed, %._crit_edge ]
  %.015 = ptrtoint ptr %.015.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %.015
}

declare void @deconstruct_array_builtin(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @escape_json_text(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pg_detoast_datum_packed(ptr noundef %1) #10 ; 6 uses
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp eq i8 %i.b, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 1
  %.val.i = load i8, ptr %i.e, align 1            ; 2 uses
  %i.f = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.f, 3
  %i.g = icmp eq i8 %.val.i, 18
  %i.h = select i1 %i.g, i32 16, i32 0
  %i.i = select i1 %or.cond.i.i.i, i32 8, i32 %i.h
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i32 %i.c, 1
  %i.l = add nsw i32 %i.k, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.a, align 4
  %i.n = lshr i32 %i.m, 2
  %i.o = add nsw i32 %i.n, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.i, %bb.b ], [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.p = and i8 %i.b, 1
  %.not.i8 = icmp eq i8 %i.p, 0
  %.v.i = select i1 %.not.i8, i64 4, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 %.v.i
  tail call void @escape_json_with_len(ptr noundef %0, ptr noundef nonnull %i.q, i32 noundef %.0.i)
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  tail call void @pfree(ptr noundef nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %VARSIZE_ANY_EXHDR.exit
  ret void
}

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @json_object_two_arg(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 17 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call ptr @pg_detoast_datum(ptr noundef %i.i) #10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call ptr @pg_detoast_datum(ptr noundef %i.m) #10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.p = load i32, ptr %i.o, align 4              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.r = load i32, ptr %i.q, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.s = icmp slt i32 %i.p, 2
  %.not = icmp eq i32 %i.p, %i.r
  %or.cond = select i1 %i.s, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.u = tail call i32 @errcode(i32 noundef 352845954) #10 ; 0 uses
  %i.v = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1479, ptr noundef nonnull @__func__.json_object_two_arg) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = icmp eq i32 %i.p, 0
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = tail call ptr @cstring_to_text(ptr noundef nonnull @.str.16) #10
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  call void @deconstruct_array_builtin(ptr noundef nonnull %i.j, i32 noundef 25, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #10
  call void @deconstruct_array_builtin(ptr noundef nonnull %i.n, i32 noundef 25, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #10
  %i.y = load i32, ptr %i.e, align 4
  %i.z = load i32, ptr %i.f, align 4
  %.not20 = icmp eq i32 %i.y, %i.z
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ab = call i32 @errcode(i32 noundef 352845954) #10 ; 0 uses
  %i.ac = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1490, ptr noundef nonnull @__func__.json_object_two_arg) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @initStringInfo(ptr noundef nonnull %1) #10
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 123) #10
  %i.ad = load i32, ptr %i.e, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.af = load ptr, ptr %i.c, align 8
  %i.ag = load i8, ptr %i.af, align 1, !range !4, !noundef !5
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.loopexit, label %._crit_edge33

._crit_edge33:                                    ; preds = %.lr.ph.preheader
  %.pre = load ptr, ptr %i.a, align 8
  %.pre34 = load i64, ptr %.pre, align 8
  %i.ai = inttoptr i64 %.pre34 to ptr             ; 2 uses
  %i.aj = call ptr @pg_detoast_datum_packed(ptr noundef %i.ai) #10 ; 6 uses
  %i.ak = load i8, ptr %i.aj, align 1             ; 3 uses
  %i.al = zext i8 %i.ak to i32                    ; 2 uses
  %i.am = icmp eq i8 %i.ak, 1
  br i1 %i.am, label %bb.k, label %bb.h

bb.h:                                             ; preds = %._crit_edge33
  %i.an = and i32 %i.al, 1
  %.not.i.i.peel = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = lshr i32 %i.al, 1
  %i.ap = add nsw i32 %i.ao, -1
  br label %VARSIZE_ANY_EXHDR.exit.i.peel

bb.j:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.aj, align 4
  %i.ar = lshr i32 %i.aq, 2
  %i.as = add nsw i32 %i.ar, -4
  br label %VARSIZE_ANY_EXHDR.exit.i.peel

bb.k:                                             ; preds = %._crit_edge33
  %i.at = getelementptr i8, ptr %i.aj, i64 1
  %.val.i.i.peel = load i8, ptr %i.at, align 1    ; 2 uses
  %i.au = add i8 %.val.i.i.peel, -1
  %or.cond.i.i.i.i.peel = icmp ult i8 %i.au, 3
  %i.av = icmp eq i8 %.val.i.i.peel, 18
  %i.aw = select i1 %i.av, i32 16, i32 0
  %i.ax = select i1 %or.cond.i.i.i.i.peel, i32 8, i32 %i.aw
  br label %VARSIZE_ANY_EXHDR.exit.i.peel

VARSIZE_ANY_EXHDR.exit.i.peel:                    ; preds = %bb.k, %bb.j, %bb.i
  %.0.i.i.peel = phi i32 [ %i.ax, %bb.k ], [ %i.ap, %bb.i ], [ %i.as, %bb.j ]
  %i.ay = and i8 %i.ak, 1
  %.not.i8.i.peel = icmp eq i8 %i.ay, 0
  %.v.i.i.peel = select i1 %.not.i8.i.peel, i64 4, i64 1
end_hunk_0
