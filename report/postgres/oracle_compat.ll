Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/oracle_compat?download=true
inline.NumInlined: 111
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@translate:bb.a
  br i1 %i.dh, label %.preheader.us, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.di = add i32 %.072106.us, 1
  %i.dj = add i32 %i.df, %.073105.us              ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.ay
  br i1 %i.dk, label %bb.t, label %..critedge_crit_edge.us, !llvm.loop !19

.lr.ph111.us:                                     ; preds = %.preheader.us, %.lr.ph111.us
  %.0110.us = phi ptr [ %i.dn, %.lr.ph111.us ], [ %i.bu, %.preheader.us ] ; 2 uses
  %.1109.us = phi i32 [ %i.do, %.lr.ph111.us ], [ 0, %.preheader.us ]
  %i.dl = tail call i32 @pg_mblen_range(ptr noundef %.0110.us, ptr noundef nonnull %i.bw) #6
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %.0110.us, i64 %i.dm ; 3 uses
  %i.do = add nuw nsw i32 %.1109.us, 1            ; 2 uses
  %i.dp = icmp slt i32 %i.do, %.072106.us
  %.not.us = icmp ult ptr %i.dn, %i.bw            ; 2 uses
  %or.cond.us = select i1 %i.dp, i1 %.not.us, i1 false
  br i1 %or.cond.us, label %.lr.ph111.us, label %._crit_edge.us, !llvm.loop !21

._crit_edge.us:                                   ; preds = %.lr.ph111.us
  br i1 %.not.us, label %._crit_edge.us.thread, label %bb.w

._crit_edge.us.thread:                            ; preds = %.preheader.us, %._crit_edge.us
  %.0.lcssa.us138 = phi ptr [ %i.dn, %._crit_edge.us ], [ %i.bu, %.preheader.us ] ; 2 uses
  %i.dq = tail call i32 @pg_mblen_range(ptr noundef %.0.lcssa.us138, ptr noundef nonnull %i.bw) #6 ; 2 uses
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.077114.us, ptr align 1 %.0.lcssa.us138, i64 %i.dr, i1 false)
  %i.ds = getelementptr inbounds i8, ptr %.077114.us, i64 %i.dr
  %i.dt = add i32 %i.dq, %.074116.us
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.us.thread, %._crit_edge.us, %..critedge_crit_edge.us
  %.pre-phi = phi i64 [ %i.dc, %._crit_edge.us.thread ], [ %i.dc, %._crit_edge.us ], [ %i.dy, %..critedge_crit_edge.us ]
  %.279.us = phi ptr [ %i.ds, %._crit_edge.us.thread ], [ %.077114.us, %._crit_edge.us ], [ %i.dz, %..critedge_crit_edge.us ]
  %.2.us = phi i32 [ %i.dt, %._crit_edge.us.thread ], [ %.074116.us, %._crit_edge.us ], [ %i.ea, %..critedge_crit_edge.us ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.080113.us, i64 %.pre-phi
  %i.dv = sub i32 %.076115.us, %i.db              ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.us, label %._crit_edge119, !llvm.loop !20

.preheader.us:                                    ; preds = %bb.u
  %i.dx = icmp sgt i32 %.072106.us, 0
  br i1 %i.dx, label %.lr.ph111.us, label %._crit_edge.us.thread

..critedge_crit_edge.us:                          ; preds = %bb.v
  %i.dy = sext i32 %i.db to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.077114.us, ptr align 1 %.080113.us, i64 %i.dy, i1 false)
  %i.dz = getelementptr inbounds i8, ptr %.077114.us, i64 %i.dy
  %i.ea = add i32 %i.db, %.074116.us
  br label %bb.w

.critedge:                                        ; preds = %.lr.ph118, %.critedge
  %.074116 = phi i32 [ %i.ee, %.critedge ], [ 0, %.lr.ph118 ]
  %.076115 = phi i32 [ %i.eg, %.critedge ], [ %i.ac, %.lr.ph118 ]
  %.077114 = phi ptr [ %i.ed, %.critedge ], [ %i.ck, %.lr.ph118 ] ; 2 uses
  %.080113 = phi ptr [ %i.ef, %.critedge ], [ %i.af, %.lr.ph118 ] ; 3 uses
  %i.eb = tail call i32 @pg_mblen_range(ptr noundef %.080113, ptr noundef nonnull %i.ah) #6 ; 3 uses
  %i.ec = sext i32 %i.eb to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.077114, ptr align 1 %.080113, i64 %i.ec, i1 false)
  %i.ed = getelementptr inbounds i8, ptr %.077114, i64 %i.ec
  %i.ee = add i32 %i.eb, %.074116                 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.080113, i64 %i.ec
  %i.eg = sub i32 %.076115, %i.eb                 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.critedge, label %._crit_edge119, !llvm.loop !20

._crit_edge119:                                   ; preds = %.critedge, %.preheader.us.us, %bb.w
  %.074.lcssa = phi i32 [ %.2.us.us, %.preheader.us.us ], [ %.2.us, %bb.w ], [ %i.ee, %.critedge ]
  %i.ei = shl i32 %.074.lcssa, 2
  %i.ej = add i32 %i.ei, 16
  store i32 %i.ej, ptr %i.cj, align 4
  br label %bb.x

bb.x:                                             ; preds = %VARSIZE_ANY_EXHDR.exit, %._crit_edge119
  %.081.in = phi ptr [ %i.cj, %._crit_edge119 ], [ %i.d, %VARSIZE_ANY_EXHDR.exit ]
  %.081 = ptrtoint ptr %.081.in to i64
  ret i64 %.081
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @ascii(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #6 ; 4 uses
  %i.e = tail call i32 @GetDatabaseEncoding() #6  ; 2 uses
  %i.f = load i8, ptr %i.d, align 1               ; 3 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp eq i8 %i.f, 1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.i, align 1            ; 2 uses
  %i.j = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.j, 3
  %i.k = icmp eq i8 %.val.i, 18
  %i.l = select i1 %i.k, i64 16, i64 0
  br i1 %or.cond.i.i.i, label %VARSIZE_ANY_EXHDR.exit.thread, label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.m = and i32 %i.g, 1
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %i.g, 1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = add nsw i64 %i.o, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i32, ptr %i.d, align 4
  %i.r = lshr i32 %i.q, 2
  %i.s = add nsw i32 %i.r, -4
  %i.t = zext i32 %i.s to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.l, %bb.b ], [ %i.p, %bb.d ], [ %i.t, %bb.e ]
  %i.u = icmp eq i64 %.0.i, 0
  br i1 %i.u, label %bb.k, label %VARSIZE_ANY_EXHDR.exit.thread

VARSIZE_ANY_EXHDR.exit.thread:                    ; preds = %bb.b, %VARSIZE_ANY_EXHDR.exit
  %i.v = and i8 %i.f, 1
  %.not.i24 = icmp eq i8 %i.v, 0
  %.v.i = select i1 %.not.i24, i64 4, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 3 uses
  %i.x = icmp eq i32 %i.e, 6
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.thread
  %i.y = load i8, ptr %i.w, align 1               ; 4 uses
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %.epil.preheader, label %bb.h

.epil.preheader:                                  ; preds = %bb.f
  %i.aa = zext i8 %i.y to i32
  %i.ab = icmp samesign ugt i8 %i.y, -17          ; 2 uses
  %i.ac = icmp samesign ugt i8 %i.y, -33          ; 2 uses
  %. = select i1 %i.ac, i32 15, i32 31
  %.sink = select i1 %i.ab, i32 7, i32 %.
  %i.ad = and i32 %.sink, %i.aa
  %i.ae = select i1 %i.ac, i64 2, i64 1
  %i.af = select i1 %i.ab, i64 3, i64 %i.ae
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ 1, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %.126.epil = phi i32 [ %i.ad, %.epil.preheader ], [ %i.al, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ag = shl i32 %.126.epil, 6
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.epil
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.af
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !22

.epilog-lcssa:                                    ; preds = %bb.g
  %i.am = sext i32 %i.al to i64
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %VARSIZE_ANY_EXHDR.exit.thread
  %i.an = tail call i32 @pg_encoding_max_length(i32 noundef %i.e) #6
  %i.ao = icmp sgt i32 %i.an, 1
  %.pre = load i8, ptr %i.w, align 1              ; 2 uses
  %i.ap = icmp slt i8 %.pre, 0
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ar = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.as = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1001, ptr noundef nonnull @__func__.ascii) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.at = zext i8 %.pre to i64
  br label %bb.k

bb.k:                                             ; preds = %VARSIZE_ANY_EXHDR.exit, %bb.j, %.epilog-lcssa
  %.022 = phi i64 [ %i.at, %bb.j ], [ %i.am, %.epilog-lcssa ], [ 0, %VARSIZE_ANY_EXHDR.exit ]
  ret i64 %.022
}

declare i32 @GetDatabaseEncoding() local_unnamed_addr #1

declare i32 @pg_encoding_max_length(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @chr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 12 uses
  %i.c = trunc i64 %i.b to i32                    ; 11 uses
  %i.d = tail call i32 @GetDatabaseEncoding() #6  ; 2 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.g = tail call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1045, ptr noundef nonnull @__func__.chr) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.c, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.k = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1049, ptr noundef nonnull @__func__.chr) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %i.d, 6
  %i.n = icmp samesign ugt i32 %i.c, 127          ; 2 uses
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.o = icmp samesign ugt i32 %i.c, 1114111
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.q = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.r = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, i32 noundef %i.c) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1068, ptr noundef nonnull @__func__.chr) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %1 = icmp samesign ugt i32 %i.c, 65535
  %i.s = icmp samesign ugt i32 %i.c, 2047
  %.55 = select i1 %i.s, i32 3, i32 2
  %.0 = select i1 %1, i32 4, i32 %.55             ; 2 uses
  %i.t = add nuw nsw i32 %.0, 4                   ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = tail call ptr @palloc(i64 noundef %i.u) #6 ; 6 uses
  %i.w = shl nuw nsw i32 %i.t, 2
  store i32 %i.w, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 4 uses
  %2 = and i64 %i.b, 2095104
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = lshr i64 %i.b, 6
  %i.z = trunc i64 %i.y to i8
  %i.aa = or disjoint i8 %i.z, -64
  store i8 %i.aa, ptr %i.x, align 4
  %i.ab = trunc i64 %i.b to i8
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  store i8 %i.ad, ptr %i.ae, align 1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %3 = add nsw i32 %i.c, -2048
  %4 = icmp ult i32 %3, 63488
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.ag = lshr i64 %i.b, 12
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 15
  %i.aj = or disjoint i8 %i.ai, -32
  store i8 %i.aj, ptr %i.x, align 4
  %i.ak = lshr i64 %i.b, 6
  %i.al = trunc i64 %i.ak to i8
  %i.am = and i8 %i.al, 63
  %i.an = or disjoint i8 %i.am, -128
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  store i8 %i.an, ptr %i.ao, align 1
  %i.ap = trunc i64 %i.b to i8
  %i.aq = and i8 %i.ap, 63
  %i.ar = or disjoint i8 %i.aq, -128
  store i8 %i.ar, ptr %i.af, align 2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.as = lshr i64 %i.b, 18
  %i.at = trunc i64 %i.as to i8
  %i.au = lshr i64 %i.b, 12
  %i.av = trunc i64 %i.au to i8
  %i.aw = lshr i64 %i.b, 6
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = trunc i64 %i.b to i8
  %i.az = insertelement <4 x i8> poison, i8 %i.at, i64 0
  %i.ba = insertelement <4 x i8> %i.az, i8 %i.av, i64 1
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.ax, i64 2
  %i.bc = insertelement <4 x i8> %i.bb, i8 %i.ay, i64 3
  %i.bd = and <4 x i8> %i.bc, <i8 -1, i8 63, i8 63, i8 63>
  %i.be = or disjoint <4 x i8> %i.bd, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.be, ptr %i.x, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.bf = tail call zeroext i1 @pg_utf8_islegal(ptr noundef nonnull %i.x, i32 noundef %.0) #6
  br i1 %i.bf, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bh = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.bi = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i32 noundef %i.c) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1109, ptr noundef nonnull @__func__.chr) #6
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.bj = tail call i32 @pg_encoding_max_length(i32 noundef %i.d) #6
  %i.bk = icmp sgt i32 %i.bj, 1
  %i.bl = icmp samesign ult i32 %i.c, 256
  %not. = xor i1 %i.n, true
  %or.cond56 = select i1 %i.bk, i1 %not., i1 %i.bl
  br i1 %or.cond56, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bn = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.bo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, i32 noundef %i.c) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1121, ptr noundef nonnull @__func__.chr) #6
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bp = tail call ptr @palloc(i64 noundef 5) #6 ; 3 uses
  store i32 20, ptr %i.bp, align 4
  %i.bq = trunc i64 %i.b to i8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i8 %i.bq, ptr %i.br, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q
  %.051 = phi ptr [ %i.bp, %bb.q ], [ %i.v, %bb.m ]
  %i.bs = ptrtoint ptr %.051 to i64
  ret i64 %i.bs
}

declare zeroext i1 @pg_utf8_islegal(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @repeat(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #6 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %i.h = load i8, ptr %i.d, align 1               ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = icmp eq i8 %i.h, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.k, align 1            ; 2 uses
  %i.l = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.l, 3
  %i.m = icmp eq i8 %.val.i, 18
  %i.n = select i1 %i.m, i64 16, i64 0
  %i.o = select i1 %or.cond.i.i.i, i64 8, i64 %i.n
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.p = and i32 %i.i, 1
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i32 %i.i, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = add nsw i64 %i.r, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 4
  %i.u = lshr i32 %i.t, 2
  %i.v = add nsw i32 %i.u, -4
  %i.w = zext i32 %i.v to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.b ], [ %i.s, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  %i.x = trunc i64 %.0.i to i32
  %i.y = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %spec.store.select, i32 %i.x) ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  br i1 %i.z, label %bb.g, label %bb.f, !prof !4

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  %i.ab = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.aa, i32 4) ; 2 uses
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  %i.ad = extractvalue { i32, i1 } %i.ab, 0       ; 3 uses
  %i.ae = icmp ugt i32 %i.ad, 1073741823
  %or.cond = or i1 %i.ac, %i.ae
  br i1 %or.cond, label %bb.g, label %bb.h, !prof !5

bb.g:                                             ; preds = %bb.f, %VARSIZE_ANY_EXHDR.exit
  %i.af = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.ag = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1167, ptr noundef nonnull @__func__.repeat) #6
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ai = zext nneg i32 %i.ad to i64
  %i.aj = tail call ptr @palloc(i64 noundef %i.ai) #6 ; 3 uses
  %i.ak = shl nuw i32 %i.ad, 2
  store i32 %i.ak, ptr %i.aj, align 4
  %i.al = load i8, ptr %i.d, align 1
  %i.am = and i8 %i.al, 1
  %.not.i18 = icmp eq i8 %i.am, 0
  %.v.i = select i1 %.not.i18, i64 4, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i
  %i.ao = icmp sgt i32 %i.g, 0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %sext = shl i64 %.0.i, 32
  %i.aq = ashr exact i64 %sext, 32                ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.022 = phi ptr [ %i.ap, %.lr.ph ], [ %i.ar, %bb.k ] ; 2 uses
  %.01721 = phi i32 [ 0, %.lr.ph ], [ %i.at, %bb.k ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.022, ptr nonnull align 1 %i.an, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %.022, i64 %i.aq
  %i.as = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.k, label %bb.j, !prof !25

bb.j:                                             ; preds = %bb.i
  tail call void @ProcessInterrupts() #6
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.at = add nuw nsw i32 %.01721, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %i.au = ptrtoint ptr %i.aj to i64
  ret i64 %i.au
}

declare void @ProcessInterrupts() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #4

declare ptr @cstring_to_text_with_len(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4
end_hunk_0
