Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_lha?download=true
inline.NumInlined: 100
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@lha_read_file_extended_header:bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.val251 = load i16, ptr %i.ag, align 1
  %i.ah = zext i16 %.val251 to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = load i32, ptr %i.ag, align 1
  %i.aj = zext i32 %i.ai to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0205 = phi i64 [ %i.ah, %bb.c ], [ %i.aj, %bb.d ] ; 14 uses
  %i.ak = icmp eq i64 %.0205, 0
  br i1 %i.ak, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load i16, ptr %2, align 2, !tbaa !41
  %i.am = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %i.al, ptr noundef nonnull %i.ag, i64 noundef %i.a)
  store i16 %i.am, ptr %2, align 2, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.a) #16 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %5, align 8, !tbaa !13
  %i.ap = add i64 %i.ao, %.0205
  %i.aq = icmp ule i64 %i.ap, %4
  %.not = icmp samesign ugt i64 %.0205, %i.a
  %or.cond229 = select i1 %i.aq, i1 %.not, i1 false
  br i1 %or.cond229, label %bb.j, label %bb.bm

bb.j:                                             ; preds = %bb.i
  %i.ar = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %.0205, ptr noundef null) #16 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.14) #16
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.at = load i64, ptr %5, align 8, !tbaa !13
  %i.au = add i64 %i.at, %.0205
  store i64 %i.au, ptr %5, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.a
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10  ; 2 uses
  %i.ax = sub nuw nsw i64 %.0205, %i.f            ; 19 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f ; 36 uses
  %i.az = icmp ne i8 %i.aw, 0
  %or.cond = select i1 %i.g, i1 %i.az, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = load i16, ptr %2, align 2, !tbaa !41
  %i.bb = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %i.ba, ptr noundef nonnull %i.ar, i64 noundef %.0205)
  store i16 %i.bb, ptr %2, align 2, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  switch i8 %i.aw, label %bb.bl [
    i8 0, label %bb.o
    i8 1, label %bb.s
    i8 68, label %bb.w
    i8 2, label %bb.ab
    i8 69, label %bb.ag
    i8 64, label %bb.am
    i8 65, label %bb.ao
    i8 66, label %bb.aq
    i8 70, label %bb.as
    i8 80, label %bb.ax
    i8 81, label %bb.az
    i8 82, label %bb.bb
    i8 83, label %bb.bd
    i8 84, label %bb.bf
    i8 127, label %bb.bh
    i8 -1, label %bb.bj
  ]

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp samesign ugt i64 %i.ax, 1
  br i1 %i.bc, label %bb.p, label %bb.bl

bb.p:                                             ; preds = %bb.o
  %.val249 = load i16, ptr %i.ay, align 1
  store i16 %.val249, ptr %i.ae, align 8, !tbaa !64
  br i1 %i.g, label %bb.q, label %bb.bl

bb.q:                                             ; preds = %bb.p
  %i.bd = load i16, ptr %2, align 2, !tbaa !41
  %i.be = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %i.bd, ptr noundef nonnull %i.ar, i64 noundef %i.f) ; 3 uses
  br i1 %.not.i.not, label %.lr.ph73.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = lshr i16 %i.be, 8
  %i.bg = and i16 %i.be, 255
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !41
  %i.bk = xor i16 %i.bj, %i.bf
  br label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %bb.q, %bb.r
  %.15072.i.ph = phi ptr [ @lha_read_file_extended_header.zeros, %bb.q ], [ getelementptr inbounds nuw (i8, ptr @lha_read_file_extended_header.zeros, i64 1), %bb.r ] ; 2 uses
  %.670.i.ph = phi i16 [ %i.be, %bb.q ], [ %i.bk, %bb.r ] ; 2 uses
  %i.bl = lshr i16 %.670.i.ph, 8
  %i.bm = load i8, ptr %.15072.i.ph, align 1, !tbaa !10
  %.tr62.i = trunc i16 %.670.i.ph to i8
  %.narrow63.i = xor i8 %i.bm, %.tr62.i
  %i.bn = zext i8 %.narrow63.i to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !41 ; 2 uses
  %i.bq = xor i16 %i.bp, %i.bl                    ; 2 uses
  br i1 %.not.i.not, label %.lr.ph73.i.1, label %lha_crc16.exit

.lr.ph73.i.1:                                     ; preds = %.lr.ph73.i
  %i.br = getelementptr inbounds nuw i8, ptr %.15072.i.ph, i64 1
  %i.bs = lshr i16 %i.bp, 8
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !10
  %.tr62.i.1 = trunc i16 %i.bq to i8
  %.narrow63.i.1 = xor i8 %i.bt, %.tr62.i.1
  %i.bu = zext i8 %.narrow63.i.1 to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !41
  %i.bx = xor i16 %i.bw, %i.bs
  br label %lha_crc16.exit

lha_crc16.exit:                                   ; preds = %.lr.ph73.i.1, %.lr.ph73.i
  %.lcssa365 = phi i16 [ %i.bq, %.lr.ph73.i ], [ %i.bx, %.lr.ph73.i.1 ] ; 2 uses
  store i16 %.lcssa365, ptr %2, align 2, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bz = add nsw i64 %i.ax, -2
  %i.ca = call fastcc zeroext i16 @lha_crc16(i16 noundef zeroext %.lcssa365, ptr noundef nonnull %i.by, i64 noundef %i.bz)
  store i16 %i.ca, ptr %2, align 2, !tbaa !41
  br label %bb.bl

bb.s:                                             ; preds = %bb.n
  %i.cb = icmp eq i64 %.0205, %i.f
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  br label %bb.bl

bb.u:                                             ; preds = %bb.s
  %i.cc = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.bm, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  %i.ce = call ptr @archive_strncat(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ay, i64 noundef %i.ax) #16 ; 0 uses
  br label %bb.bl

bb.w:                                             ; preds = %bb.n
  %i.cf = icmp eq i64 %.0205, %i.f
  br i1 %i.cf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  br label %bb.bl

bb.y:                                             ; preds = %bb.w
  %i.cg = and i64 %i.ax, 1
  %.not227 = icmp eq i64 %i.cg, 0
  br i1 %.not227, label %bb.z, label %bb.bm

bb.z:                                             ; preds = %bb.y
  %i.ch = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.bm, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  %i.cj = call ptr @archive_array_append(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ay, i64 noundef %i.ax) #16 ; 0 uses
  %i.ck = call ptr @archive_string_conversion_from_charset(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef 1) #16 ; 2 uses
  store ptr %i.ck, ptr %i.u, align 8, !tbaa !57
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.loopexit, label %bb.bl

bb.ab:                                            ; preds = %bb.n
  %i.cm = icmp eq i64 %.0205, %i.f
  br i1 %i.cm, label %bb.bm, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.bm, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i64 0, ptr %i.ab, align 8, !tbaa !53
  %i.cp = call ptr @archive_strncat(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ay, i64 noundef %i.ax) #16 ; 0 uses
  %i.cq = load i64, ptr %i.ab, align 8, !tbaa !53 ; 2 uses
  %.not284 = icmp eq i64 %i.cq, 0
  br i1 %.not284, label %._crit_edge278, label %.lr.ph277

.lr.ph277:                                        ; preds = %bb.ad, %bb.af
  %i.cr = phi i64 [ %i.cv, %bb.af ], [ %i.cq, %bb.ad ]
  %7 = phi i64 [ %i.cx, %bb.af ], [ 0, %bb.ad ]
  %.0203275 = phi i32 [ %i.cw, %bb.af ], [ 0, %bb.ad ]
  %8 = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 %7 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !10
  %i.cu = icmp eq i8 %i.ct, -1
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph277
  store i8 47, ptr %i.cs, align 1, !tbaa !10
  %.pre.a = load i64, ptr %i.ab, align 8, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph277, %bb.ae
  %i.cv = phi i64 [ %i.cr, %.lr.ph277 ], [ %.pre.a, %bb.ae ] ; 3 uses
  %i.cw = add i32 %.0203275, 1                    ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = icmp ugt i64 %i.cv, %i.cx
  br i1 %i.cy, label %.lr.ph277, label %._crit_edge278, !llvm.loop !171

._crit_edge278:                                   ; preds = %bb.af, %bb.ad
  %.lcssa266 = phi i64 [ 0, %bb.ad ], [ %i.cv, %bb.af ]
  %9 = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.cz = getelementptr i8, ptr %9, i64 %.lcssa266
  %i.da = getelementptr i8, ptr %i.cz, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %.not226 = icmp eq i8 %i.db, 47
  br i1 %.not226, label %bb.bl, label %bb.bm

bb.ag:                                            ; preds = %bb.n
  %i.dc = icmp ne i64 %.0205, %i.f
  %i.dd = and i64 %i.ax, 1
  %.not224 = icmp eq i64 %i.dd, 0
  %or.cond230 = select i1 %i.dc, i1 %.not224, i1 false
  br i1 %or.cond230, label %bb.ah, label %bb.bm

bb.ah:                                            ; preds = %bb.ag
  %i.de = load i8, ptr %i.ay, align 1, !tbaa !10
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.bm, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i64 0, ptr %i.ab, align 8, !tbaa !53
  %i.dg = call ptr @archive_array_append(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ay, i64 noundef %i.ax) #16 ; 0 uses
  %i.dh = call ptr @archive_string_conversion_from_charset(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef 1) #16 ; 2 uses
  store ptr %i.dh, ptr %i.t, align 8, !tbaa !56
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = load ptr, ptr %i.aa, align 8, !tbaa !65 ; 22 uses
  %i.dk = load i64, ptr %i.ab, align 8, !tbaa !53 ; 4 uses
  %i.dl = lshr i64 %i.dk, 1                       ; 8 uses
  %.not283 = icmp eq i64 %i.dl, 0
  br i1 %.not283, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.aj
  %min.iters.check = icmp ult i64 %i.dk, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dm = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.dn = and i64 %i.dm, 4294967295
  %i.do = icmp eq i64 %i.dn, 4294967295
  %i.dp = icmp ugt i64 %i.dm, 4294967295
  %i.dq = or i1 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check320 = icmp ult i64 %i.dk, 32
  br i1 %min.iters.check320, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.dl, 8589934576              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue351
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue351 ] ; 17 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load = load <8 x i16>, ptr %i.dr, align 2, !tbaa !41
  %wide.load321 = load <8 x i16>, ptr %i.ds, align 2, !tbaa !41
  %i.dt = icmp eq <8 x i16> %wide.load, splat (i16 -1) ; 8 uses
  %i.du = icmp eq <8 x i16> %wide.load321, splat (i16 -1) ; 8 uses
  %i.dv = extractelement <8 x i1> %i.dt, i64 0
  br i1 %i.dv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 47, ptr %i.dr, align 2, !tbaa !41
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.dw = extractelement <8 x i1> %i.dt, i64 1
  br i1 %i.dw, label %pred.store.if322, label %pred.store.continue323

pred.store.if322:                                 ; preds = %pred.store.continue
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store i16 47, ptr %i.dy, align 2, !tbaa !41
  br label %pred.store.continue323

pred.store.continue323:                           ; preds = %pred.store.if322, %pred.store.continue
  %i.dz = extractelement <8 x i1> %i.dt, i64 2
  br i1 %i.dz, label %pred.store.if324, label %pred.store.continue325

pred.store.if324:                                 ; preds = %pred.store.continue323
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i16 47, ptr %i.eb, align 2, !tbaa !41
  br label %pred.store.continue325

pred.store.continue325:                           ; preds = %pred.store.if324, %pred.store.continue323
  %i.ec = extractelement <8 x i1> %i.dt, i64 3
  br i1 %i.ec, label %pred.store.if326, label %pred.store.continue327

pred.store.if326:                                 ; preds = %pred.store.continue325
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  store i16 47, ptr %i.ee, align 2, !tbaa !41
  br label %pred.store.continue327

pred.store.continue327:                           ; preds = %pred.store.if326, %pred.store.continue325
  %i.ef = extractelement <8 x i1> %i.dt, i64 4
  br i1 %i.ef, label %pred.store.if328, label %pred.store.continue329

pred.store.if328:                                 ; preds = %pred.store.continue327
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i16 47, ptr %i.eh, align 2, !tbaa !41
  br label %pred.store.continue329

pred.store.continue329:                           ; preds = %pred.store.if328, %pred.store.continue327
  %i.ei = extractelement <8 x i1> %i.dt, i64 5
  br i1 %i.ei, label %pred.store.if330, label %pred.store.continue331

pred.store.if330:                                 ; preds = %pred.store.continue329
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 10
  store i16 47, ptr %i.ek, align 2, !tbaa !41
  br label %pred.store.continue331

pred.store.continue331:                           ; preds = %pred.store.if330, %pred.store.continue329
  %i.el = extractelement <8 x i1> %i.dt, i64 6
  br i1 %i.el, label %pred.store.if332, label %pred.store.continue333

pred.store.if332:                                 ; preds = %pred.store.continue331
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i16 47, ptr %i.en, align 2, !tbaa !41
  br label %pred.store.continue333

pred.store.continue333:                           ; preds = %pred.store.if332, %pred.store.continue331
  %i.eo = extractelement <8 x i1> %i.dt, i64 7
  br i1 %i.eo, label %pred.store.if334, label %pred.store.continue335

pred.store.if334:                                 ; preds = %pred.store.continue333
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 14
  store i16 47, ptr %i.eq, align 2, !tbaa !41
  br label %pred.store.continue335

pred.store.continue335:                           ; preds = %pred.store.if334, %pred.store.continue333
  %i.er = extractelement <8 x i1> %i.du, i64 0
  br i1 %i.er, label %pred.store.if336, label %pred.store.continue337

pred.store.if336:                                 ; preds = %pred.store.continue335
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i16 47, ptr %i.et, align 2, !tbaa !41
  br label %pred.store.continue337

pred.store.continue337:                           ; preds = %pred.store.if336, %pred.store.continue335
  %i.eu = extractelement <8 x i1> %i.du, i64 1
  br i1 %i.eu, label %pred.store.if338, label %pred.store.continue339

pred.store.if338:                                 ; preds = %pred.store.continue337
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 18
  store i16 47, ptr %i.ew, align 2, !tbaa !41
  br label %pred.store.continue339

pred.store.continue339:                           ; preds = %pred.store.if338, %pred.store.continue337
  %i.ex = extractelement <8 x i1> %i.du, i64 2
  br i1 %i.ex, label %pred.store.if340, label %pred.store.continue341

pred.store.if340:                                 ; preds = %pred.store.continue339
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  store i16 47, ptr %i.ez, align 2, !tbaa !41
  br label %pred.store.continue341

pred.store.continue341:                           ; preds = %pred.store.if340, %pred.store.continue339
  %i.fa = extractelement <8 x i1> %i.du, i64 3
  br i1 %i.fa, label %pred.store.if342, label %pred.store.continue343

pred.store.if342:                                 ; preds = %pred.store.continue341
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 22
  store i16 47, ptr %i.fc, align 2, !tbaa !41
  br label %pred.store.continue343

pred.store.continue343:                           ; preds = %pred.store.if342, %pred.store.continue341
  %i.fd = extractelement <8 x i1> %i.du, i64 4
  br i1 %i.fd, label %pred.store.if344, label %pred.store.continue345

pred.store.if344:                                 ; preds = %pred.store.continue343
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i16 47, ptr %i.ff, align 2, !tbaa !41
  br label %pred.store.continue345

pred.store.continue345:                           ; preds = %pred.store.if344, %pred.store.continue343
  %i.fg = extractelement <8 x i1> %i.du, i64 5
  br i1 %i.fg, label %pred.store.if346, label %pred.store.continue347

pred.store.if346:                                 ; preds = %pred.store.continue345
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %index
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 26
  store i16 47, ptr %i.fi, align 2, !tbaa !41
  br label %pred.store.continue347

pred.store.continue347:                           ; preds = %pred.store.if346, %pred.store.continue345
  %i.fj = extractelement <8 x i1> %i.du, i64 6
  br i1 %i.fj, label %pred.store.if348, label %pred.store.continue349
end_hunk_0
