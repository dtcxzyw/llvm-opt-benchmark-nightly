inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@ucs1lib__two_way:bb.a
  %i.n = add i64 %i.m, %.fr239
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr291, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !814
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr291
  %i.t = sub i64 %.fr291, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1127 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1127.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i8, ptr %.1127, align 1, !tbaa !205
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !205  ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr %.1127, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0137 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0137, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1127.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0126.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.1144 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %.2128 = phi ptr [ %.4130, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %i.ae = getelementptr i8, ptr %.2128, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 1      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1144) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr291
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1144, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0135199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr i8, ptr %i.g, i64 %.0135199
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !205
  %i.al = getelementptr i8, ptr %i.af, i64 %.0135199
  %i.am = load i8, ptr %i.al, align 1, !tbaa !205
  %.not158 = icmp eq i8 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0135199, %i.o
  %i.ao = getelementptr i8, ptr %.2128, i64 %i.m
  %i.ap = sub i64 %.0135199, %.fr239
  %i.aq = getelementptr i8, ptr %.2128, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  %.3129 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0126.be = phi ptr [ %.3129, %bb.b ], [ %.4130, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0126.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0135199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr291
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !819

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1136200, 1                    ; 2 uses
  %exitcond277.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond277.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !820

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1136200 = phi i64 [ %i.au, %bb.d ], [ %.1144, %.preheader179 ] ; 3 uses
  %i.av = getelementptr i8, ptr %i.g, i64 %.1136200
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !205
  %i.ax = getelementptr i8, ptr %i.af, i64 %.1136200
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !205
  %.not155 = icmp eq i8 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr i8, ptr %.2128, i64 %i.f  ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !205
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !205 ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4130.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4130 = getelementptr i8, ptr %i.az, i64 %.4130.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bk = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bl = icmp ult ptr %i.i, %i.j
  br i1 %i.bl, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bm = sub i64 0, %.fr291                      ; 3 uses
  %i.bn = icmp slt i64 %.fr239, %.fr291
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bn, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6132.us = phi ptr [ %.6132.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bo = load i8, ptr %.6132.us, align 1, !tbaa !205
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.k, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !205 ; 2 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr i8, ptr %.6132.us, i64 %i.bt ; 6 uses
  %.not294 = icmp eq i8 %i.bs, 0
  %.not150.us = icmp uge ptr %i.bu, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3140.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3140.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.k
  %.6132.us.be = phi ptr [ %i.bu, %.preheader177.us ], [ %.9.us, %bb.k ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = getelementptr i8, ptr %i.bv, i64 1      ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph210.us
  %i.bx = add nuw nsw i64 %.0209.us, 1            ; 2 uses
  %exitcond279.not.a = icmp eq i64 %i.bx, %.fr239
  br i1 %exitcond279.not.a, label %.thread170, label %.lr.ph210.us, !llvm.loop !821

.lr.ph210.us:                                     ; preds = %..preheader_crit_edge.us, %bb.h
  %.0209.us = phi i64 [ %i.bx, %bb.h ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.by = getelementptr i8, ptr %i.g, i64 %.0209.us
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !205
  %i.ca = getelementptr i8, ptr %i.bw, i64 %.0209.us
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !205
  %.not151.us = icmp eq i8 %i.bz, %i.cb
  br i1 %.not151.us, label %bb.h, label %.thread167.us

.thread167.us:                                    ; preds = %.lr.ph210.us
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.bk
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph207.us, %bb.l
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.cn, %bb.l ] ; 5 uses
  %i.cd = getelementptr i8, ptr %i.g, i64 %.0124205.us
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !205
  %i.cf = getelementptr i8, ptr %i.bw, i64 %.0124205.us
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !205
  %.not153.us = icmp eq i8 %i.ce, %i.cg
  br i1 %.not153.us, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp slt i64 %.0124205.us, %i.o
  %i.ci = getelementptr i8, ptr %i.bu, i64 %i.m
  %i.cj = sub i64 %.0124205.us, %.fr239
  %i.ck = getelementptr i8, ptr %i.bu, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  %.7133.us = select i1 %i.ch, ptr %i.ci, ptr %i.cl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread167.us
  %.9.us = phi ptr [ %.7133.us, %bb.j ], [ %i.cc, %.thread167.us ] ; 2 uses
  %i.cm = icmp ult ptr %.9.us, %i.j
  br i1 %i.cm, label %.preheader177.us.backedge, label %.thread

bb.l:                                             ; preds = %bb.i
  %i.cn = add nsw i64 %.0124205.us, 1             ; 2 uses
  %3 = icmp slt i64 %i.cn, %.fr291
  br i1 %3, label %bb.i, label %..preheader_crit_edge.us, !llvm.loop !822

..preheader_crit_edge.us:                         ; preds = %bb.l
  br i1 %.not152208, label %.lr.ph210.us, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6132.us220 = phi ptr [ %.6132.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.co = load i8, ptr %.6132.us220, align 1, !tbaa !205
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.k, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !205 ; 2 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr i8, ptr %.6132.us220, i64 %i.ct ; 4 uses
  %.not293 = icmp eq i8 %i.cs, 0
  %.not150.us222 = icmp uge ptr %i.cu, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3140.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3140.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6132.us220.be = phi ptr [ %i.cu, %.preheader177.us217 ], [ %i.dc, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.bm
  %i.cw = getelementptr i8, ptr %i.cv, i64 1      ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cx = add nuw nsw i64 %.0209.us231, 1         ; 2 uses
  %exitcond278.not = icmp eq i64 %i.cx, %.fr239
  br i1 %exitcond278.not, label %.thread170, label %bb.n, !llvm.loop !821

bb.n:                                             ; preds = %.preheader.us227, %bb.m
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %i.cx, %bb.m ] ; 3 uses
  %i.cy = getelementptr i8, ptr %i.g, i64 %.0209.us231
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !205
  %i.da = getelementptr i8, ptr %i.cw, i64 %.0209.us231
  %i.db = load i8, ptr %i.da, align 1, !tbaa !205
  %.not151.us232 = icmp eq i8 %i.cz, %i.db
  br i1 %.not151.us232, label %bb.m, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.n
  %i.dc = getelementptr i8, ptr %i.cu, i64 %i.bk  ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %i.j
  br i1 %i.dd, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6132 = phi ptr [ %i.dk, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.de = load i8, ptr %.6132, align 1, !tbaa !205
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = getelementptr i8, ptr %i.k, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !205 ; 2 uses
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr i8, ptr %.6132, i64 %i.dj ; 3 uses
  %.not292 = icmp eq i8 %i.di, 0
  %.not150 = icmp uge ptr %i.dk, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3140 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3140, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.bm
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  br label %.thread170

.thread170:                                       ; preds = %bb.m, %..preheader_crit_edge.us, %bb.h, %.preheader
  %.lcssa = phi ptr [ %i.bw, %..preheader_crit_edge.us ], [ %i.dm, %.preheader ], [ %i.bw, %bb.h ], [ %i.cw, %bb.m ]
  %i.dn = ptrtoint ptr %.lcssa to i64
  %i.do = ptrtoint ptr %0 to i64
  %i.dp = sub i64 %i.dn, %i.do
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.k, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.dp, %.thread170 ], [ %i.bj, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.k ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
  ret i64 %.8
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib_fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #15 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %ucs2lib_rfind_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %5, 0                        ; 3 uses
  %i.c = icmp eq i64 %4, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %ucs2lib_rfind_char.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i64 %3, 2
  br i1 %i.d, label %bb.d, label %bb.y

bb.d:                                             ; preds = %bb.c
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.e, label %ucs2lib_rfind_char.exit

bb.e:                                             ; preds = %bb.d
  switch i32 %5, label %bb.v [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.e = load i16, ptr %2, align 2, !tbaa !208
  %i.f = tail call fastcc i64 @ucs2lib_find_char(ptr noundef %0, i64 noundef %1, i16 noundef zeroext %i.e)
  br label %ucs2lib_rfind_char.exit

bb.g:                                             ; preds = %bb.e
  %i.g = load i16, ptr %2, align 2, !tbaa !208    ; 4 uses
  %i.h = icmp sgt i64 %1, 40
  br i1 %i.h, label %bb.h, label %.thread67.i

bb.h:                                             ; preds = %bb.g
  %i.i = and i16 %i.g, 255                        ; 2 uses
  %i.j = zext nneg i16 %i.i to i32
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %.thread67.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.k = ptrtoint ptr %0 to i64                   ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.r, %.preheader.i
  %.041.i = phi i64 [ %.142.ph59.i, %bb.r ], [ %1, %.preheader.i ] ; 2 uses
  %i.l = shl nuw i64 %.041.i, 1
  %i.m = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.j, i64 noundef %i.l) #34 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ucs2lib_rfind_char.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = and i64 %i.o, -2                         ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = sub i64 %i.p, %i.k
  %i.s = ashr exact i64 %i.r, 1                   ; 5 uses
  %i.t = load i16, ptr %i.q, align 2, !tbaa !208
  %i.u = icmp eq i16 %i.t, %i.g
  br i1 %i.u, label %ucs2lib_rfind_char.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = sub i64 %.041.i, %i.s
  %i.w = icmp sgt i64 %i.v, 40
  br i1 %i.w, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = icmp slt i64 %i.s, 41
  br i1 %i.x, label %.thread67.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.q, i64 -80
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.046.i = phi ptr [ %i.q, %bb.m ], [ %i.aa, %bb.o ] ; 3 uses
  %i.z = icmp ugt ptr %.046.i, %i.y
  br i1 %i.z, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr i8, ptr %.046.i, i64 -2   ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !208
  %i.ac = icmp eq i16 %i.ab, %i.g
  br i1 %i.ac, label %bb.p, label %bb.n, !llvm.loop !487

bb.p:                                             ; preds = %bb.o
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ad, %i.k
  %i.af = ashr exact i64 %i.ae, 1
  br label %ucs2lib_rfind_char.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = ptrtoint ptr %.046.i to i64
  %i.ah = sub i64 %i.ag, %i.k
  %i.ai = ashr exact i64 %i.ah, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.k
  %.142.ph59.i = phi i64 [ %i.s, %bb.k ], [ %i.ai, %bb.q ] ; 3 uses
  %i.aj = icmp sgt i64 %.142.ph59.i, 40
  br i1 %i.aj, label %bb.i, label %.thread67.i, !llvm.loop !488

.thread67.i:                                      ; preds = %bb.r, %bb.l, %bb.h, %bb.g
  %.445.i = phi i64 [ %1, %bb.g ], [ %1, %bb.h ], [ %i.s, %bb.l ], [ %.142.ph59.i, %bb.r ]
  %i.ak = getelementptr [2 x i8], ptr %0, i64 %.445.i
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.thread67.i
  %.147.i = phi ptr [ %i.ak, %.thread67.i ], [ %i.am, %bb.t ] ; 2 uses
  %i.al = icmp ugt ptr %.147.i, %0
end_hunk_0
begin_hunk_1_@ucs2lib__two_way:bb.a
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr291, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !844
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr291
  %i.t = sub i64 %.fr291, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1127 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1127.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i16, ptr %.1127, align 2, !tbaa !208
  %i.x = and i16 %i.w, 63
  %i.y = zext nneg i16 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !205  ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [2 x i8], ptr %.1127, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0137 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0137, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1127.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0126.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.1144 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %.2128 = phi ptr [ %.4130, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %i.ae = getelementptr [2 x i8], ptr %.2128, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 2      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1144) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr291
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1144, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0135199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr [2 x i8], ptr %i.g, i64 %.0135199
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !208
  %i.al = getelementptr [2 x i8], ptr %i.af, i64 %.0135199
  %i.am = load i16, ptr %i.al, align 2, !tbaa !208
  %.not158 = icmp eq i16 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0135199, %i.o
  %i.ao = getelementptr [2 x i8], ptr %.2128, i64 %i.m
  %i.ap = sub i64 %.0135199, %.fr239
  %i.aq = getelementptr [2 x i8], ptr %.2128, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 2
  %.3129 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0126.be = phi ptr [ %.3129, %bb.b ], [ %.4130, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0126.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0135199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr291
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !849

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1136200, 1                    ; 2 uses
  %exitcond277.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond277.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !850

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1136200 = phi i64 [ %i.au, %bb.d ], [ %.1144, %.preheader179 ] ; 3 uses
  %i.av = getelementptr [2 x i8], ptr %i.g, i64 %.1136200
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !208
  %i.ax = getelementptr [2 x i8], ptr %i.af, i64 %.1136200
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !208
  %.not155 = icmp eq i16 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr [2 x i8], ptr %.2128, i64 %i.f ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !208
  %i.bb = and i16 %i.ba, 63
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !205 ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4130.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4130 = getelementptr [2 x i8], ptr %i.az, i64 %.4130.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 1
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bl = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bm = icmp ult ptr %i.i, %i.j
  br i1 %i.bm, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bn = sub i64 0, %.fr291                      ; 3 uses
  %i.bo = icmp slt i64 %.fr239, %.fr291
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bo, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6132.us = phi ptr [ %.6132.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bp = load i16, ptr %.6132.us, align 2, !tbaa !208
  %i.bq = and i16 %i.bp, 63
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !205 ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr [2 x i8], ptr %.6132.us, i64 %i.bu ; 6 uses
  %.not294 = icmp eq i8 %i.bt, 0
  %.not150.us = icmp uge ptr %i.bv, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3140.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3140.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.k
  %.6132.us.be = phi ptr [ %i.bv, %.preheader177.us ], [ %.9.us, %bb.k ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bw = getelementptr [2 x i8], ptr %i.bv, i64 %i.bn
  %i.bx = getelementptr i8, ptr %i.bw, i64 2      ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph210.us
  %i.by = add nuw nsw i64 %.0209.us, 1            ; 2 uses
  %exitcond279.not.a = icmp eq i64 %i.by, %.fr239
  br i1 %exitcond279.not.a, label %.thread170, label %.lr.ph210.us, !llvm.loop !851

.lr.ph210.us:                                     ; preds = %..preheader_crit_edge.us, %bb.h
  %.0209.us = phi i64 [ %i.by, %bb.h ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.bz = getelementptr [2 x i8], ptr %i.g, i64 %.0209.us
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !208
  %i.cb = getelementptr [2 x i8], ptr %i.bx, i64 %.0209.us
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !208
  %.not151.us = icmp eq i16 %i.ca, %i.cc
  br i1 %.not151.us, label %bb.h, label %.thread167.us

.thread167.us:                                    ; preds = %.lr.ph210.us
  %i.cd = getelementptr [2 x i8], ptr %i.bv, i64 %i.bl
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph207.us, %bb.l
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.co, %bb.l ] ; 5 uses
  %i.ce = getelementptr [2 x i8], ptr %i.g, i64 %.0124205.us
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !208
  %i.cg = getelementptr [2 x i8], ptr %i.bx, i64 %.0124205.us
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !208
  %.not153.us = icmp eq i16 %i.cf, %i.ch
  br i1 %.not153.us, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = icmp slt i64 %.0124205.us, %i.o
  %i.cj = getelementptr [2 x i8], ptr %i.bv, i64 %i.m
  %i.ck = sub i64 %.0124205.us, %.fr239
  %i.cl = getelementptr [2 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 2
  %.7133.us = select i1 %i.ci, ptr %i.cj, ptr %i.cm
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread167.us
  %.9.us = phi ptr [ %.7133.us, %bb.j ], [ %i.cd, %.thread167.us ] ; 2 uses
  %i.cn = icmp ult ptr %.9.us, %i.j
  br i1 %i.cn, label %.preheader177.us.backedge, label %.thread

bb.l:                                             ; preds = %bb.i
  %i.co = add nsw i64 %.0124205.us, 1             ; 2 uses
  %3 = icmp slt i64 %i.co, %.fr291
  br i1 %3, label %bb.i, label %..preheader_crit_edge.us, !llvm.loop !852

..preheader_crit_edge.us:                         ; preds = %bb.l
  br i1 %.not152208, label %.lr.ph210.us, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6132.us220 = phi ptr [ %.6132.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.cp = load i16, ptr %.6132.us220, align 2, !tbaa !208
  %i.cq = and i16 %i.cp, 63
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = getelementptr i8, ptr %i.k, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !205 ; 2 uses
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr [2 x i8], ptr %.6132.us220, i64 %i.cu ; 4 uses
  %.not293 = icmp eq i8 %i.ct, 0
  %.not150.us222 = icmp uge ptr %i.cv, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3140.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3140.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6132.us220.be = phi ptr [ %i.cv, %.preheader177.us217 ], [ %i.dd, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cw = getelementptr [2 x i8], ptr %i.cv, i64 %i.bn
  %i.cx = getelementptr i8, ptr %i.cw, i64 2      ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cy = add nuw nsw i64 %.0209.us231, 1         ; 2 uses
  %exitcond278.not = icmp eq i64 %i.cy, %.fr239
  br i1 %exitcond278.not, label %.thread170, label %bb.n, !llvm.loop !851

bb.n:                                             ; preds = %.preheader.us227, %bb.m
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %i.cy, %bb.m ] ; 3 uses
  %i.cz = getelementptr [2 x i8], ptr %i.g, i64 %.0209.us231
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !208
  %i.db = getelementptr [2 x i8], ptr %i.cx, i64 %.0209.us231
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !208
  %.not151.us232 = icmp eq i16 %i.da, %i.dc
  br i1 %.not151.us232, label %bb.m, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.n
  %i.dd = getelementptr [2 x i8], ptr %i.cv, i64 %i.bl ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.j
  br i1 %i.de, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6132 = phi ptr [ %i.dl, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.df = load i16, ptr %.6132, align 2, !tbaa !208
  %i.dg = and i16 %i.df, 63
  %i.dh = zext nneg i16 %i.dg to i64
  %i.di = getelementptr i8, ptr %i.k, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !205 ; 2 uses
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr [2 x i8], ptr %.6132, i64 %i.dk ; 3 uses
  %.not292 = icmp eq i8 %i.dj, 0
  %.not150 = icmp uge ptr %i.dl, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3140 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3140, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.dm = getelementptr [2 x i8], ptr %i.dl, i64 %i.bn
  %i.dn = getelementptr i8, ptr %i.dm, i64 2
  br label %.thread170

.thread170:                                       ; preds = %bb.m, %..preheader_crit_edge.us, %bb.h, %.preheader
  %.lcssa = phi ptr [ %i.bx, %..preheader_crit_edge.us ], [ %i.dn, %.preheader ], [ %i.bx, %bb.h ], [ %i.cx, %bb.m ]
  %i.do = ptrtoint ptr %.lcssa to i64
  %i.dp = ptrtoint ptr %0 to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 1
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.k, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.dr, %.thread170 ], [ %i.bk, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.k ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
  ret i64 %.8
}

; Function Attrs: inlinehint nofree nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc i64 @ucs4lib_fastsearch(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 3) %5) unnamed_addr #27 {
bb.a:
  %i.a = icmp slt i64 %1, %3
  br i1 %i.a, label %ucs4lib_find_char.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %3, 2
  br i1 %i.b, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %.not66 = icmp eq i64 %3, 1
  br i1 %.not66, label %bb.d, label %ucs4lib_find_char.exit

bb.d:                                             ; preds = %bb.c
  switch i32 %5, label %bb.y [
    i32 1, label %bb.e
    i32 2, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.c = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  %i.d = getelementptr [4 x i8], ptr %0, i64 %1   ; 2 uses
  %i.e = icmp sgt i64 %1, 15
  br i1 %i.e, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.f = icmp ult ptr %0, %i.d
  br i1 %i.f, label %.lr.ph.i, label %ucs4lib_find_char.exit

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @wmemchr(ptr noundef %0, i32 noundef %i.c, i64 noundef %1) #34 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %ucs4lib_find_char.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %0 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2
  br label %ucs4lib_find_char.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.01721.i = phi ptr [ %i.r, %bb.i ], [ %0, %.preheader.i ] ; 3 uses
  %i.l = load i32, ptr %.01721.i, align 4, !tbaa !7
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.n = ptrtoint ptr %.01721.i to i64
  %i.o = ptrtoint ptr %0 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  br label %ucs4lib_find_char.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr i8, ptr %.01721.i, i64 4   ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.d
  br i1 %i.s, label %.lr.ph.i, label %ucs4lib_find_char.exit, !llvm.loop !485

bb.j:                                             ; preds = %bb.d
  %i.t = load i32, ptr %2, align 4, !tbaa !7      ; 4 uses
  %i.u = icmp sgt i64 %1, 40
  br i1 %i.u, label %bb.k, label %.thread67.i

bb.k:                                             ; preds = %bb.j
  %i.v = and i32 %i.t, 255                        ; 2 uses
  %.not.i67 = icmp eq i32 %i.v, 0
  br i1 %.not.i67, label %.thread67.i, label %.preheader.i68

.preheader.i68:                                   ; preds = %bb.k
  %i.w = ptrtoint ptr %0 to i64                   ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.u, %.preheader.i68
  %.041.i = phi i64 [ %.142.ph59.i, %bb.u ], [ %1, %.preheader.i68 ] ; 2 uses
  %i.x = shl i64 %.041.i, 2
  %i.y = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.v, i64 noundef %i.x) #34 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ucs4lib_find_char.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = and i64 %i.aa, -4                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.w
  %i.ae = ashr exact i64 %i.ad, 2                 ; 5 uses
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ag = icmp eq i32 %i.af, %i.t
  br i1 %i.ag, label %ucs4lib_find_char.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = sub i64 %.041.i, %i.ae
  %i.ai = icmp sgt i64 %i.ah, 40
  br i1 %i.ai, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = icmp slt i64 %i.ae, 41
  br i1 %i.aj, label %.thread67.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr i8, ptr %i.ac, i64 -160
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.046.i = phi ptr [ %i.ac, %bb.p ], [ %i.am, %bb.r ] ; 3 uses
  %i.al = icmp ugt ptr %.046.i, %i.ak
  br i1 %i.al, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr i8, ptr %.046.i, i64 -4   ; 3 uses
end_hunk_1
begin_hunk_2_@ucs4lib__two_way:bb.a
  %i.o = tail call i64 @llvm.smin.i64(i64 %.fr291, i64 %i.n) ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !873
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %.preheader184

.preheader184:                                    ; preds = %bb.a
  %i.r = icmp ult ptr %i.i, %i.j
  br i1 %i.r, label %.preheader182.lr.ph, label %.thread

.preheader182.lr.ph:                              ; preds = %.preheader184
  %i.s = sub i64 0, %.fr291
  %i.t = sub i64 %.fr291, %i.f                    ; 2 uses
  %i.u = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %i.t)
  %reass.sub = sub i64 %i.u, %.fr239
  %i.v = add i64 %reass.sub, 1
  br label %.preheader182

.preheader182:                                    ; preds = %.preheader182.backedge, %.preheader182.lr.ph
  %.1127 = phi ptr [ %i.i, %.preheader182.lr.ph ], [ %.1127.be, %.preheader182.backedge ] ; 2 uses
  %i.w = load i32, ptr %.1127, align 4, !tbaa !7
  %i.x = and i32 %i.w, 63
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %i.k, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !205  ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %.1127, i64 %i.ab ; 3 uses
  %i.ad = icmp eq i8 %i.aa, 0
  %.not154 = icmp uge ptr %i.ac, %i.j
  %. = zext i1 %.not154 to i32
  %.0137 = select i1 %i.ad, i32 5, i32 %.
  switch i32 %.0137, label %.thread [
    i32 0, label %.preheader182.backedge
    i32 5, label %.preheader180
  ]

.preheader182.backedge:                           ; preds = %.preheader182, %.backedge
  %.1127.be = phi ptr [ %i.ac, %.preheader182 ], [ %.0126.be, %.backedge ]
  br label %.preheader182

.preheader180:                                    ; preds = %.preheader182, %bb.f
  %.1144 = phi i64 [ %i.t, %bb.f ], [ 0, %.preheader182 ] ; 3 uses
  %.2128 = phi ptr [ %.4130, %bb.f ], [ %i.ac, %.preheader182 ] ; 4 uses
  %i.ae = getelementptr [4 x i8], ptr %.2128, i64 %i.s
  %i.af = getelementptr i8, ptr %i.ae, i64 4      ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %.fr239, i64 %.1144) ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %.fr291
  br i1 %i.ah, label %.lr.ph, label %.preheader179

.preheader179:                                    ; preds = %bb.c, %.preheader180
  %i.ai = icmp slt i64 %.1144, %.fr239
  br i1 %i.ai, label %.lr.ph201, label %.preheader179._crit_edge

.lr.ph:                                           ; preds = %.preheader180, %bb.c
  %.0135199 = phi i64 [ %i.at, %bb.c ], [ %i.ag, %.preheader180 ] ; 5 uses
  %i.aj = getelementptr [4 x i8], ptr %i.g, i64 %.0135199
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = getelementptr [4 x i8], ptr %i.af, i64 %.0135199
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %.not158 = icmp eq i32 %i.ak, %i.am
  br i1 %.not158, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.an = icmp slt i64 %.0135199, %i.o
  %i.ao = getelementptr [4 x i8], ptr %.2128, i64 %i.m
  %i.ap = sub i64 %.0135199, %.fr239
  %i.aq = getelementptr [4 x i8], ptr %.2128, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %.3129 = select i1 %i.an, ptr %i.ao, ptr %i.ar
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.b
  %.0126.be = phi ptr [ %.3129, %bb.b ], [ %.4130, %bb.f ] ; 2 uses
  %i.as = icmp ult ptr %.0126.be, %i.j
  br i1 %i.as, label %.preheader182.backedge, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.at = add i64 %.0135199, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %.fr291
  br i1 %exitcond.not, label %.preheader179, label %.lr.ph, !llvm.loop !878

bb.d:                                             ; preds = %.lr.ph201
  %i.au = add i64 %.1136200, 1                    ; 2 uses
  %exitcond277.not = icmp eq i64 %i.au, %.fr239
  br i1 %exitcond277.not, label %.preheader179._crit_edge, label %.lr.ph201, !llvm.loop !879

.lr.ph201:                                        ; preds = %.preheader179, %bb.d
  %.1136200 = phi i64 [ %i.au, %bb.d ], [ %.1144, %.preheader179 ] ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %i.g, i64 %.1136200
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = getelementptr [4 x i8], ptr %i.af, i64 %.1136200
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7
  %.not155 = icmp eq i32 %i.aw, %i.ay
  br i1 %.not155, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph201
  %i.az = getelementptr [4 x i8], ptr %.2128, i64 %i.f ; 3 uses
  %.not156 = icmp ult ptr %i.az, %i.j
  br i1 %.not156, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = and i32 %i.ba, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr i8, ptr %i.k, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !205 ; 2 uses
  %.not157.not = icmp eq i8 %i.be, 0              ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.v, i64 %i.bf)
  %.4130.idx = select i1 %.not157.not, i64 0, i64 %i.bg
  %.4130 = getelementptr [4 x i8], ptr %i.az, i64 %.4130.idx ; 2 uses
  br i1 %.not157.not, label %.preheader180, label %.backedge

.preheader179._crit_edge:                         ; preds = %.preheader179, %bb.d
  %i.bh = ptrtoint ptr %i.af to i64
  %i.bi = ptrtoint ptr %0 to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  br label %.thread

bb.g:                                             ; preds = %bb.a
  %i.bl = tail call i64 @llvm.smax.i64(i64 %i.m, i64 %i.f) ; 2 uses
  %i.bm = icmp ult ptr %i.i, %i.j
  br i1 %i.bm, label %.preheader177.lr.ph, label %.thread

.preheader177.lr.ph:                              ; preds = %bb.g
  %i.bn = sub i64 0, %.fr291                      ; 3 uses
  %i.bo = icmp slt i64 %.fr239, %.fr291
  %.not152208 = icmp sgt i64 %.fr239, 0           ; 2 uses
  br i1 %i.bo, label %.preheader177.us, label %.preheader177.lr.ph.split

.preheader177.us:                                 ; preds = %.preheader177.lr.ph, %.preheader177.us.backedge
  %.6132.us = phi ptr [ %.6132.us.be, %.preheader177.us.backedge ], [ %i.i, %.preheader177.lr.ph ] ; 2 uses
  %i.bp = load i32, ptr %.6132.us, align 4, !tbaa !7
  %i.bq = and i32 %i.bp, 63
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %i.k, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !205 ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr [4 x i8], ptr %.6132.us, i64 %i.bu ; 6 uses
  %.not294 = icmp eq i8 %i.bt, 0
  %.not150.us = icmp uge ptr %i.bv, %i.j
  %.159.us = zext i1 %.not150.us to i32
  %.3140.us = select i1 %.not294, i32 17, i32 %.159.us
  switch i32 %.3140.us, label %.thread [
    i32 0, label %.preheader177.us.backedge
    i32 17, label %.lr.ph207.us
  ]

.preheader177.us.backedge:                        ; preds = %.preheader177.us, %bb.k
  %.6132.us.be = phi ptr [ %i.bv, %.preheader177.us ], [ %.9.us, %bb.k ]
  br label %.preheader177.us

.lr.ph207.us:                                     ; preds = %.preheader177.us
  %i.bw = getelementptr [4 x i8], ptr %i.bv, i64 %i.bn
  %i.bx = getelementptr i8, ptr %i.bw, i64 4      ; 4 uses
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph210.us
  %i.by = add nuw nsw i64 %.0209.us, 1            ; 2 uses
  %exitcond279.not.a = icmp eq i64 %i.by, %.fr239
  br i1 %exitcond279.not.a, label %.thread170, label %.lr.ph210.us, !llvm.loop !880

.lr.ph210.us:                                     ; preds = %..preheader_crit_edge.us, %bb.h
  %.0209.us = phi i64 [ %i.by, %bb.h ], [ 0, %..preheader_crit_edge.us ] ; 3 uses
  %i.bz = getelementptr [4 x i8], ptr %i.g, i64 %.0209.us
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = getelementptr [4 x i8], ptr %i.bx, i64 %.0209.us
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %.not151.us = icmp eq i32 %i.ca, %i.cc
  br i1 %.not151.us, label %bb.h, label %.thread167.us

.thread167.us:                                    ; preds = %.lr.ph210.us
  %i.cd = getelementptr [4 x i8], ptr %i.bv, i64 %i.bl
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph207.us, %bb.l
  %.0124205.us = phi i64 [ %.fr239, %.lr.ph207.us ], [ %i.co, %bb.l ] ; 5 uses
  %i.ce = getelementptr [4 x i8], ptr %i.g, i64 %.0124205.us
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = getelementptr [4 x i8], ptr %i.bx, i64 %.0124205.us
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %.not153.us = icmp eq i32 %i.cf, %i.ch
  br i1 %.not153.us, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ci = icmp slt i64 %.0124205.us, %i.o
  %i.cj = getelementptr [4 x i8], ptr %i.bv, i64 %i.m
  %i.ck = sub i64 %.0124205.us, %.fr239
  %i.cl = getelementptr [4 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %.7133.us = select i1 %i.ci, ptr %i.cj, ptr %i.cm
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread167.us
  %.9.us = phi ptr [ %.7133.us, %bb.j ], [ %i.cd, %.thread167.us ] ; 2 uses
  %i.cn = icmp ult ptr %.9.us, %i.j
  br i1 %i.cn, label %.preheader177.us.backedge, label %.thread

bb.l:                                             ; preds = %bb.i
  %i.co = add nsw i64 %.0124205.us, 1             ; 2 uses
  %3 = icmp slt i64 %i.co, %.fr291
  br i1 %3, label %bb.i, label %..preheader_crit_edge.us, !llvm.loop !881

..preheader_crit_edge.us:                         ; preds = %bb.l
  br i1 %.not152208, label %.lr.ph210.us, label %.thread170

.preheader177.lr.ph.split:                        ; preds = %.preheader177.lr.ph
  br i1 %.not152208, label %.preheader177.us217, label %.preheader177

.preheader177.us217:                              ; preds = %.preheader177.lr.ph.split, %.preheader177.us217.backedge
  %.6132.us220 = phi ptr [ %.6132.us220.be, %.preheader177.us217.backedge ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.cp = load i32, ptr %.6132.us220, align 4, !tbaa !7
  %i.cq = and i32 %i.cp, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr i8, ptr %i.k, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !205 ; 2 uses
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr %.6132.us220, i64 %i.cu ; 4 uses
  %.not293 = icmp eq i8 %i.ct, 0
  %.not150.us222 = icmp uge ptr %i.cv, %i.j
  %.159.us223 = zext i1 %.not150.us222 to i32
  %.3140.us224 = select i1 %.not293, i32 17, i32 %.159.us223
  switch i32 %.3140.us224, label %.thread [
    i32 0, label %.preheader177.us217.backedge
    i32 17, label %.preheader.us227
  ]

.preheader177.us217.backedge:                     ; preds = %.preheader177.us217, %.thread167.us233
  %.6132.us220.be = phi ptr [ %i.cv, %.preheader177.us217 ], [ %i.dd, %.thread167.us233 ]
  br label %.preheader177.us217

.preheader.us227:                                 ; preds = %.preheader177.us217
  %i.cw = getelementptr [4 x i8], ptr %i.cv, i64 %i.bn
  %i.cx = getelementptr i8, ptr %i.cw, i64 4      ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.cy = add nuw nsw i64 %.0209.us231, 1         ; 2 uses
  %exitcond278.not = icmp eq i64 %i.cy, %.fr239
  br i1 %exitcond278.not, label %.thread170, label %bb.n, !llvm.loop !880

bb.n:                                             ; preds = %.preheader.us227, %bb.m
  %.0209.us231 = phi i64 [ 0, %.preheader.us227 ], [ %i.cy, %bb.m ] ; 3 uses
  %i.cz = getelementptr [4 x i8], ptr %i.g, i64 %.0209.us231
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = getelementptr [4 x i8], ptr %i.cx, i64 %.0209.us231
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7
  %.not151.us232 = icmp eq i32 %i.da, %i.dc
  br i1 %.not151.us232, label %bb.m, label %.thread167.us233

.thread167.us233:                                 ; preds = %bb.n
  %i.dd = getelementptr [4 x i8], ptr %i.cv, i64 %i.bl ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.j
  br i1 %i.de, label %.preheader177.us217.backedge, label %.thread

.preheader177:                                    ; preds = %.preheader177.lr.ph.split, %.preheader177
  %.6132 = phi ptr [ %i.dl, %.preheader177 ], [ %i.i, %.preheader177.lr.ph.split ] ; 2 uses
  %i.df = load i32, ptr %.6132, align 4, !tbaa !7
  %i.dg = and i32 %i.df, 63
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr i8, ptr %i.k, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !205 ; 2 uses
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr [4 x i8], ptr %.6132, i64 %i.dk ; 3 uses
  %.not292 = icmp eq i8 %i.dj, 0
  %.not150 = icmp uge ptr %i.dl, %i.j
  %.159 = zext i1 %.not150 to i32
  %.3140 = select i1 %.not292, i32 17, i32 %.159
  switch i32 %.3140, label %.thread [
    i32 0, label %.preheader177
    i32 17, label %.preheader
  ]

.preheader:                                       ; preds = %.preheader177
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.bn
  %i.dn = getelementptr i8, ptr %i.dm, i64 4
  br label %.thread170

.thread170:                                       ; preds = %bb.m, %..preheader_crit_edge.us, %bb.h, %.preheader
  %.lcssa = phi ptr [ %i.bx, %..preheader_crit_edge.us ], [ %i.dn, %.preheader ], [ %i.bx, %bb.h ], [ %i.cx, %bb.m ]
  %i.do = ptrtoint ptr %.lcssa to i64
  %i.dp = ptrtoint ptr %0 to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 2
  br label %.thread

.thread:                                          ; preds = %.backedge, %.preheader182, %bb.e, %.preheader177, %.thread167.us233, %.preheader177.us217, %bb.k, %.preheader177.us, %.preheader184, %bb.g, %.preheader179._crit_edge, %.thread170
  %.8 = phi i64 [ -1, %.thread167.us233 ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.dr, %.thread170 ], [ %i.bk, %.preheader179._crit_edge ], [ -1, %.preheader177 ], [ -1, %.preheader184 ], [ -1, %bb.k ], [ -1, %.preheader177.us ], [ -1, %.preheader177.us217 ], [ -1, %.preheader182 ], [ -1, %.backedge ]
  ret i64 %.8
}

declare ptr @PyList_New(i64 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsLinebreak(i32 noundef) local_unnamed_addr #3

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @wmemcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable
define internal fastcc void @replace_1char_inplace(ptr noundef %0, i64 noundef range(i64 0, -9223372036854775808) %1, i32 noundef %2, i32 noundef %3, i64 noundef range(i64 1, -9223372036854775808) %4) unnamed_addr #28 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 7
  %i.e = and i32 %i.b, 32
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 6 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.h, align 8, !tbaa !207 ; 3 uses
  switch i32 %i.d, label %bb.af [
    i32 1, label %bb.d
    i32 2, label %bb.r
  ]

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.i = getelementptr i8, ptr %.0.i, i64 %1      ; 2 uses
  %i.j = getelementptr i8, ptr %.0.i, i64 %.val   ; 12 uses
  %i.k = trunc i32 %3 to i8                       ; 2 uses
  store i8 %i.k, ptr %i.i, align 1, !tbaa !205
  %i.l = add nsw i64 %4, -1                       ; 2 uses
  %.not47.i = icmp eq i64 %i.l, 0
  br i1 %.not47.i, label %ucs1lib_replace_1char_inplace.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.m = ptrtoint ptr %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %.lr.ph.i
  %i.n = phi i64 [ %i.l, %.lr.ph.i ], [ %i.bt, %.thread.i ]
  %.02248.i = phi ptr [ %i.i, %.lr.ph.i ], [ %.4.i, %.thread.i ] ; 12 uses
  %i.o = getelementptr i8, ptr %.02248.i, i64 1   ; 3 uses
  %.not32.i = icmp eq ptr %i.o, %i.j
  br i1 %.not32.i, label %ucs1lib_replace_1char_inplace.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %i.o, align 1, !tbaa !205
  %i.q = zext i8 %i.p to i32
  %.not33.i = icmp eq i32 %2, %i.q
  br i1 %.not33.i, label %.thread.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.f
  %i.r = getelementptr i8, ptr %.02248.i, i64 2   ; 3 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %ucs1lib_replace_1char_inplace.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.preheader.i
  %i.t = load i8, ptr %i.r, align 1, !tbaa !205
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i32 %2, %i.u
  br i1 %i.v, label %.thread.i, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.g
  %i.w = getelementptr i8, ptr %.02248.i, i64 3   ; 3 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %ucs1lib_replace_1char_inplace.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.1.i
  %i.y = load i8, ptr %i.w, align 1, !tbaa !205
  %i.z = zext i8 %i.y to i32
  %i.aa = icmp eq i32 %2, %i.z
  br i1 %i.aa, label %.thread.i, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.02248.i, i64 4  ; 3 uses
  %i.ac = icmp eq ptr %i.ab, %i.j
  br i1 %i.ac, label %ucs1lib_replace_1char_inplace.exit, label %bb.i

bb.i:                                             ; preds = %.preheader.2.i
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ae = zext i8 %i.ad to i32
  %i.af = icmp eq i32 %2, %i.ae
  br i1 %i.af, label %.thread.i, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %.02248.i, i64 5  ; 3 uses
  %i.ah = icmp eq ptr %i.ag, %i.j
  br i1 %i.ah, label %ucs1lib_replace_1char_inplace.exit, label %bb.j

bb.j:                                             ; preds = %.preheader.3.i
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !205
  %i.aj = zext i8 %i.ai to i32
  %i.ak = icmp eq i32 %2, %i.aj
  br i1 %i.ak, label %.thread.i, label %.preheader.4.i

end_hunk_2
