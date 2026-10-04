Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/oracle_compat?download=true
inline.NumInlined: 111
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@translate:bb.a
  %i.cl = icmp sgt i32 %i.ay, 0
  br i1 %i.cl, label %.lr.ph118.split.us, label %.critedge

.lr.ph118.split.us:                               ; preds = %.lr.ph118
  %.not107 = icmp sgt i64 %i.bv, 0
  br i1 %.not107, label %.lr.ph.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph118.split.us, %.preheader.us.us
  %.074116.us.us = phi i32 [ %.2.us.us, %.preheader.us.us ], [ 0, %.lr.ph118.split.us ] ; 2 uses
  %.076115.us.us = phi i32 [ %i.cz, %.preheader.us.us ], [ %i.ac, %.lr.ph118.split.us ]
  %.077114.us.us = phi ptr [ %.279.us.us, %.preheader.us.us ], [ %i.ck, %.lr.ph118.split.us ] ; 3 uses
  %.080113.us.us = phi ptr [ %i.cy, %.preheader.us.us ], [ %i.af, %.lr.ph118.split.us ] ; 4 uses
  %i.cm = tail call i32 @pg_mblen_range(ptr noundef %.080113.us.us, ptr noundef nonnull %i.ah) #6 ; 5 uses
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.us.us
  %.073105.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.ct, %bb.s ] ; 2 uses
  %i.co = sext i32 %.073105.us.us to i64
  %i.cp = getelementptr inbounds i8, ptr %i.ba, i64 %i.co ; 2 uses
  %i.cq = tail call i32 @pg_mblen_range(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.bc) #6 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %i.cm
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %bcmp.us.us = tail call i32 @bcmp(ptr %.080113.us.us, ptr nonnull %i.cp, i64 %i.cn)
  %i.cs = icmp eq i32 %bcmp.us.us, 0
  br i1 %i.cs, label %.preheader.us.us, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ct = add i32 %i.cq, %.073105.us.us           ; 2 uses
  %i.cu = icmp slt i32 %i.ct, %i.ay
  br i1 %i.cu, label %bb.q, label %..critedge_crit_edge.us.us, !llvm.loop !19

..critedge_crit_edge.us.us:                       ; preds = %bb.s
  %i.cv = sext i32 %i.cm to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.077114.us.us, ptr align 1 %.080113.us.us, i64 %i.cv, i1 false)
  %i.cw = getelementptr inbounds i8, ptr %.077114.us.us, i64 %i.cv
  %i.cx = add i32 %i.cm, %.074116.us.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.r, %..critedge_crit_edge.us.us
  %.pre-phi127 = phi i64 [ %i.cv, %..critedge_crit_edge.us.us ], [ %i.cn, %bb.r ]
  %.279.us.us = phi ptr [ %i.cw, %..critedge_crit_edge.us.us ], [ %.077114.us.us, %bb.r ]
  %.2.us.us = phi i32 [ %i.cx, %..critedge_crit_edge.us.us ], [ %.074116.us.us, %bb.r ] ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.080113.us.us, i64 %.pre-phi127
  %i.cz = sub i32 %.076115.us.us, %i.cm           ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph.us.us, label %._crit_edge119, !llvm.loop !20

.lr.ph.us:                                        ; preds = %.lr.ph118.split.us, %bb.w
  %.074116.us = phi i32 [ %.2.us, %bb.w ], [ 0, %.lr.ph118.split.us ] ; 3 uses
  %.076115.us = phi i32 [ %i.dv, %bb.w ], [ %i.ac, %.lr.ph118.split.us ]
  %.077114.us = phi ptr [ %.279.us, %bb.w ], [ %i.ck, %.lr.ph118.split.us ] ; 5 uses
  %.080113.us = phi ptr [ %i.du, %bb.w ], [ %i.af, %.lr.ph118.split.us ] ; 4 uses
  %i.db = tail call i32 @pg_mblen_range(ptr noundef %.080113.us, ptr noundef nonnull %i.ah) #6 ; 5 uses
  %i.dc = sext i32 %i.db to i64                   ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.us, %bb.v
  %.072106.us = phi i32 [ 0, %.lr.ph.us ], [ %i.di, %bb.v ] ; 3 uses
  %.073105.us = phi i32 [ 0, %.lr.ph.us ], [ %i.dj, %bb.v ] ; 2 uses
  %i.dd = sext i32 %.073105.us to i64
  %i.de = getelementptr inbounds i8, ptr %i.ba, i64 %i.dd ; 2 uses
  %i.df = tail call i32 @pg_mblen_range(ptr noundef nonnull %i.de, ptr noundef nonnull %i.bc) #6 ; 2 uses
  %i.dg = icmp eq i32 %i.df, %i.db
  br i1 %i.dg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %bcmp.us = tail call i32 @bcmp(ptr %.080113.us, ptr nonnull %i.de, i64 %i.dc)
  %i.dh = icmp eq i32 %bcmp.us, 0
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
  %1 = zext i8 %i.y to i32
  %i.aa = icmp samesign ugt i8 %i.y, -17          ; 2 uses
  %2 = icmp samesign ugt i8 %i.y, -33             ; 2 uses
  %..a = select i1 %2, i32 15, i32 31
  %.sink = select i1 %i.aa, i32 7, i32 %..a
  %i.ab = and i32 %.sink, %1
  %3 = select i1 %2, i64 2, i64 1
  %4 = select i1 %i.aa, i64 3, i64 %3
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ 1, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %.126.epil = phi i32 [ %i.ab, %.epil.preheader ], [ %i.ah, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ac = shl i32 %.126.epil, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.epil
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ac, %i.ag            ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %4
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !22

.epilog-lcssa:                                    ; preds = %bb.g
  %i.ai = sext i32 %i.ah to i64
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %VARSIZE_ANY_EXHDR.exit.thread
  %i.aj = tail call i32 @pg_encoding_max_length(i32 noundef %i.e) #6
  %i.ak = icmp sgt i32 %i.aj, 1
  %.pre = load i8, ptr %i.w, align 1              ; 2 uses
  %i.al = icmp slt i8 %.pre, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.an = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.ao = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1001, ptr noundef nonnull @__func__.ascii) #6
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ap = zext i8 %.pre to i64
  br label %bb.k

bb.k:                                             ; preds = %VARSIZE_ANY_EXHDR.exit, %bb.j, %.epilog-lcssa
  %.022 = phi i64 [ %i.ap, %bb.j ], [ %i.ai, %.epilog-lcssa ], [ 0, %VARSIZE_ANY_EXHDR.exit ]
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
  %i.s = icmp samesign ugt i32 %i.c, 65535
  %i.t = icmp samesign ugt i32 %i.c, 2047
  %.55 = select i1 %i.t, i32 3, i32 2
  %.0 = select i1 %i.s, i32 4, i32 %.55           ; 2 uses
  %i.u = add nuw nsw i32 %.0, 4                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = tail call ptr @palloc(i64 noundef %i.v) #6 ; 6 uses
  %i.x = shl nuw nsw i32 %i.u, 2
  store i32 %i.x, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 4 uses
  %i.z = and i64 %i.b, 2095104
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = lshr i64 %i.b, 6
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -64
  store i8 %i.ac, ptr %i.y, align 4
  %i.ad = trunc i64 %i.b to i8
  %i.ae = and i8 %i.ad, 63
  %i.af = or disjoint i8 %i.ae, -128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  store i8 %i.af, ptr %i.ag, align 1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.c, -2048
  %i.ai = icmp ult i32 %i.ah, 63488
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.ak = lshr i64 %i.b, 12
  %i.al = trunc i64 %i.ak to i8
  %i.am = and i8 %i.al, 15
  %i.an = or disjoint i8 %i.am, -32
  store i8 %i.an, ptr %i.y, align 4
  %i.ao = lshr i64 %i.b, 6
  %i.ap = trunc i64 %i.ao to i8
  %i.aq = and i8 %i.ap, 63
  %i.ar = or disjoint i8 %i.aq, -128
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  store i8 %i.ar, ptr %i.as, align 1
  %i.at = trunc i64 %i.b to i8
  %i.au = and i8 %i.at, 63
  %i.av = or disjoint i8 %i.au, -128
  store i8 %i.av, ptr %i.aj, align 2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aw = lshr i64 %i.b, 18
  %i.ax = trunc i64 %i.aw to i8
  %i.ay = lshr i64 %i.b, 12
  %i.az = trunc i64 %i.ay to i8
  %i.ba = lshr i64 %i.b, 6
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = trunc i64 %i.b to i8
  %i.bd = insertelement <4 x i8> poison, i8 %i.ax, i64 0
  %i.be = insertelement <4 x i8> %i.bd, i8 %i.az, i64 1
  %i.bf = insertelement <4 x i8> %i.be, i8 %i.bb, i64 2
  %i.bg = insertelement <4 x i8> %i.bf, i8 %i.bc, i64 3
  %i.bh = and <4 x i8> %i.bg, <i8 -1, i8 63, i8 63, i8 63>
  %i.bi = or disjoint <4 x i8> %i.bh, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bi, ptr %i.y, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.bj = tail call zeroext i1 @pg_utf8_islegal(ptr noundef nonnull %i.y, i32 noundef %.0) #6
  br i1 %i.bj, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.bl = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.bm = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7, i32 noundef %i.c) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1109, ptr noundef nonnull @__func__.chr) #6
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.bn = tail call i32 @pg_encoding_max_length(i32 noundef %i.d) #6
  %i.bo = icmp sgt i32 %i.bn, 1
  %i.bp = icmp samesign ult i32 %i.c, 256
  %not. = xor i1 %i.n, true
  %or.cond56 = select i1 %i.bo, i1 %not., i1 %i.bp
  br i1 %or.cond56, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #7 ; 0 uses
  %i.br = tail call i32 @errcode(i32 noundef 261) #6 ; 0 uses
  %i.bs = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6, i32 noundef %i.c) #6 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1121, ptr noundef nonnull @__func__.chr) #6
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bt = tail call ptr @palloc(i64 noundef 5) #6 ; 3 uses
  store i32 20, ptr %i.bt, align 4
  %i.bu = trunc i64 %i.b to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i8 %i.bu, ptr %i.bv, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q
  %.051 = phi ptr [ %i.bt, %bb.q ], [ %i.w, %bb.m ]
  %i.bw = ptrtoint ptr %.051 to i64
  ret i64 %i.bw
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!5 = !{!"branch_weights", i32 4001, i32 4000000}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !6}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
