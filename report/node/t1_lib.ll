Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/t1_lib?download=true
inline.NumInlined: 100
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@gid_cb:bb.a
  %i.al = icmp eq i32 %i.ak, 1
  %spec.select = select i1 %i.al, i32 1, i32 %.0168272 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !172 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !161
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.critedge.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !165
  %i.at = shl i64 %i.an, 1
  %i.au = add i64 %i.at, 64
  %i.av = tail call ptr @CRYPTO_realloc(ptr noundef %i.as, i64 noundef %i.au, ptr noundef nonnull @.str.2, i32 noundef 1387) #14 ; 2 uses
  %.not206 = icmp eq ptr %i.av, null
  br i1 %.not206, label %.critedge228, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !161
  %i.ax = add i64 %i.aw, 32
  store i64 %i.ax, ptr %i.ao, align 8, !tbaa !161
  store ptr %i.av, ptr %i.ar, align 8, !tbaa !165
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.critedge.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 5 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !171 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !163
  %i.bc = icmp eq i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !167
  %i.bf = shl i64 %i.az, 1
  %i.bg = add i64 %i.bf, 64
  %i.bh = tail call ptr @CRYPTO_realloc(ptr noundef %i.be, i64 noundef %i.bg, ptr noundef nonnull @.str.2, i32 noundef 1398) #14 ; 2 uses
  %.not207 = icmp eq ptr %i.bh, null
  br i1 %.not207, label %.critedge228, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = load i64, ptr %i.ba, align 8, !tbaa !163
  %i.bj = add i64 %i.bi, 32
  store i64 %i.bj, ptr %i.ba, align 8, !tbaa !163
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !167
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.bk = icmp sgt i32 %.0190276, 63
  br i1 %i.bk, label %.critedge228, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = zext nneg i32 %.0190276 to i64          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.0192280, i64 %i.bl, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  store i8 0, ptr %i.bm, align 1, !tbaa !138
  %i.bn = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1656 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !111
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %.preheader239.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1648 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %.lr.ph.i
  %.013.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cc, %bb.x ] ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !112
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.br, i64 %.013.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !116
  %i.bu = call i32 @OPENSSL_strcasecmp(ptr noundef %i.bt, ptr noundef nonnull %i.a) #14
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %tls1_group_name2id.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !112
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %.013.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !317
  %i.ca = call i32 @OPENSSL_strcasecmp(ptr noundef %i.bz, ptr noundef nonnull %i.a) #14
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %tls1_group_name2id.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = add nuw i64 %.013.i, 1                  ; 2 uses
  %i.cd = load i64, ptr %i.bo, align 8, !tbaa !111
  %i.ce = icmp ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.v, label %.preheader239.preheader, !llvm.loop !335

tls1_group_name2id.exit:                          ; preds = %bb.v, %bb.w
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !112
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.cf, i64 %.013.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !114 ; 2 uses
  %i.cj = icmp eq i16 %i.ci, 0
  br i1 %i.cj, label %.preheader239.preheader, label %bb.y

.preheader239.preheader:                          ; preds = %bb.x, %bb.u, %tls1_group_name2id.exit
  %i.ck = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.48) #14
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.loopexit, label %.preheader239.1

.preheader239.1:                                  ; preds = %.preheader239.preheader
  %i.cm = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.49) #14
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.loopexit, label %.preheader239.2

.preheader239.2:                                  ; preds = %.preheader239.1
  %i.co = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.50) #14
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.loopexit, label %.preheader239.3

.preheader239.3:                                  ; preds = %.preheader239.2
  %i.cq = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.51) #14
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %.loopexit, label %.preheader239.4

.preheader239.4:                                  ; preds = %.preheader239.3
  %i.cs = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.52) #14
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.loopexit, label %.preheader239.5

.preheader239.5:                                  ; preds = %.preheader239.4
  %i.cu = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.53) #14
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.loopexit, label %.preheader239.6

.preheader239.6:                                  ; preds = %.preheader239.5
  %i.cw = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.54) #14
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.loopexit, label %.critedge228

.loopexit:                                        ; preds = %.preheader239.preheader, %.preheader239.1, %.preheader239.2, %.preheader239.3, %.preheader239.4, %.preheader239.5, %.preheader239.6
  %.lcssa325 = phi ptr [ @name2id_arr, %.preheader239.preheader ], [ getelementptr inbounds nuw (i8, ptr @name2id_arr, i64 16), %.preheader239.1 ], [ getelementptr inbounds nuw (i8, ptr @name2id_arr, i64 32), %.preheader239.2 ], [ getelementptr inbounds nuw (i8, ptr @name2id_arr, i64 48), %.preheader239.3 ], [ getelementptr inbounds nuw (i8, ptr @name2id_arr, i64 64), %.preheader239.4 ], [ getelementptr inbounds nuw (i8, ptr @name2id_arr, i64 80), %.preheader239.5 ], [ getelementptr inbounds nuw (i8, ptr @name2id_arr, i64 96), %.preheader239.6 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.lcssa325, i64 8
  %i.cz = load i16, ptr %i.cy, align 8, !tbaa !336 ; 2 uses
  %i.da = icmp eq i16 %i.cz, 0
  br i1 %i.da, label %.critedge228, label %bb.y

bb.y:                                             ; preds = %.loopexit, %tls1_group_name2id.exit
  %.1176 = phi i16 [ %i.cz, %.loopexit ], [ %i.ci, %tls1_group_name2id.exit ] ; 6 uses
  %i.db = load ptr, ptr %2, align 8, !tbaa !164   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1656
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !111 ; 2 uses
  %.not208288.not = icmp eq i64 %i.dd, 0
  br i1 %.not208288.not, label %.critedge228, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 1648
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !112
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.dg = add nuw i64 %.0179289, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %i.dd
  br i1 %exitcond.not, label %.critedge228, label %bb.aa, !llvm.loop !338

bb.aa:                                            ; preds = %.lr.ph, %bb.z
  %.0179289 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %bb.z ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [56 x i8], ptr %i.df, i64 %.0179289
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i16, ptr %i.di, align 4, !tbaa !114
  %i.dk = icmp eq i16 %i.dj, %.1176
  br i1 %i.dk, label %bb.ab, label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %.not209 = icmp eq i32 %.0164264, 0
  %i.dl = load i64, ptr %i.am, align 8, !tbaa !172 ; 7 uses
  %.not315 = icmp eq i64 %i.dl, 0                 ; 2 uses
  br i1 %.not209, label %.preheader, label %.preheader236

.preheader236:                                    ; preds = %bb.ab
  br i1 %.not315, label %.critedge228, label %.lr.ph292

.lr.ph292:                                        ; preds = %.preheader236
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !165 ; 3 uses
  br label %bb.ac

.preheader:                                       ; preds = %bb.ab
  %.phi.trans.insert356 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre357 = load ptr, ptr %.phi.trans.insert356, align 8, !tbaa !165 ; 2 uses
  br i1 %.not315, label %._crit_edge312, label %.lr.ph311

bb.ac:                                            ; preds = %.lr.ph292, %bb.ad
  %.2184291 = phi i64 [ 0, %.lr.ph292 ], [ %i.dz, %bb.ad ] ; 6 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %.2184291
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !155
  %i.dq = icmp eq i16 %i.dp, %.1176
  br i1 %i.dq, label %.preheader235, label %bb.ad

.preheader235:                                    ; preds = %bb.ac
  %i.dr = add i64 %i.dl, -1                       ; 2 uses
  %i.ds = icmp ult i64 %.2184291, %i.dr
  br i1 %i.ds, label %.lr.ph294.preheader, label %._crit_edge

.lr.ph294.preheader:                              ; preds = %.preheader235
  %i.dt = shl i64 %.2184291, 1                    ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.dn, i64 %i.dt
  %i.du = getelementptr i8, ptr %i.dn, i64 %i.dt
  %scevgep348 = getelementptr i8, ptr %i.du, i64 2
  %i.dv = shl i64 %i.dl, 1
  %i.dw = add i64 %i.dv, -2
  %i.dx = shl i64 %.2184291, 1
  %i.dy = sub i64 %i.dw, %i.dx
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %scevgep, ptr align 2 %scevgep348, i64 %i.dy, i1 false), !tbaa !155
  br label %._crit_edge

bb.ad:                                            ; preds = %bb.ac
  %i.dz = add nuw i64 %.2184291, 1                ; 2 uses
  %exitcond345.not = icmp eq i64 %i.dz, %i.dl
  br i1 %exitcond345.not, label %.critedge228, label %bb.ac, !llvm.loop !339

._crit_edge:                                      ; preds = %.lr.ph294.preheader, %.preheader235
  store i64 %i.dr, ptr %i.am, align 8, !tbaa !172
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !169 ; 3 uses
  %.not314 = icmp eq i64 %i.eb, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !166 ; 3 uses
  br i1 %.not314, label %.critedge230, label %.lr.ph300

.lr.ph300:                                        ; preds = %._crit_edge, %bb.af
  %.0177298 = phi i64 [ %i.ee, %bb.af ], [ 0, %._crit_edge ]
  %.2181297 = phi i64 [ %i.ei, %bb.af ], [ 0, %._crit_edge ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.2181297
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !130 ; 2 uses
  %i.ee = add i64 %i.ed, %.0177298                ; 2 uses
  %i.ef = icmp ugt i64 %i.ee, %.2184291
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph300
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.2181297
  %i.eh = add i64 %i.ed, -1
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !130
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph300
  %i.ei = add nuw i64 %.2181297, 1                ; 2 uses
  %exitcond349.not = icmp eq i64 %i.ei, %i.eb
  br i1 %exitcond349.not, label %.critedge230, label %.lr.ph300, !llvm.loop !340

.critedge230:                                     ; preds = %bb.af, %._crit_edge
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.eb ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !130
  %i.el = add i64 %i.ek, -1
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !130
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %.critedge230
  %i.em = load i64, ptr %i.ay, align 8, !tbaa !171 ; 4 uses
  %.not215302.not = icmp eq i64 %i.em, 0
  br i1 %.not215302.not, label %.critedge228, label %.lr.ph305

.lr.ph305:                                        ; preds = %bb.ag
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !167 ; 3 uses
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph305, %bb.ai
  %.3185303 = phi i64 [ 0, %.lr.ph305 ], [ %i.fa, %bb.ai ] ; 5 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.eo, i64 %.3185303
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !155
  %i.er = icmp eq i16 %i.eq, %.1176
  br i1 %i.er, label %.preheader233, label %bb.ai

.preheader233:                                    ; preds = %bb.ah
  %i.es = add i64 %i.em, -1                       ; 2 uses
  %i.et = icmp ult i64 %.3185303, %i.es
  br i1 %i.et, label %.lr.ph307.preheader, label %._crit_edge308

.lr.ph307.preheader:                              ; preds = %.preheader233
  %i.eu = shl i64 %.3185303, 1                    ; 2 uses
  %scevgep353 = getelementptr nuw i8, ptr %i.eo, i64 %i.eu
  %i.ev = getelementptr i8, ptr %i.eo, i64 %i.eu
  %scevgep354 = getelementptr i8, ptr %i.ev, i64 2
  %i.ew = shl i64 %i.em, 1
  %i.ex = add i64 %i.ew, -2
  %i.ey = shl i64 %.3185303, 1
  %i.ez = sub i64 %i.ex, %i.ey
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %scevgep353, ptr align 2 %scevgep354, i64 %i.ez, i1 false), !tbaa !155
  br label %._crit_edge308

bb.ai:                                            ; preds = %bb.ah
  %i.fa = add nuw i64 %.3185303, 1                ; 2 uses
  %exitcond350.not = icmp eq i64 %i.fa, %i.em
  br i1 %exitcond350.not, label %.critedge228, label %bb.ah, !llvm.loop !341

._crit_edge308:                                   ; preds = %.lr.ph307.preheader, %.preheader233
  store i64 %i.es, ptr %i.ay, align 8, !tbaa !171
  br label %.critedge228

bb.aj:                                            ; preds = %.lr.ph311
  %i.fb = add nuw i64 %.4310, 1                   ; 2 uses
  %exitcond355.not = icmp eq i64 %i.fb, %i.dl
  br i1 %exitcond355.not, label %._crit_edge312, label %.lr.ph311, !llvm.loop !342

.lr.ph311:                                        ; preds = %.preheader, %bb.aj
  %.4310 = phi i64 [ %i.fb, %bb.aj ], [ 0, %.preheader ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.pre357, i64 %.4310
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !155
  %i.fe = icmp eq i16 %i.fd, %.1176
  br i1 %i.fe, label %.critedge228, label %bb.aj

._crit_edge312:                                   ; preds = %bb.aj, %.preheader
  %i.ff = add i64 %i.dl, 1
  store i64 %i.ff, ptr %i.am, align 8, !tbaa !172
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %.pre357, i64 %i.dl
  store i16 %.1176, ptr %i.fg, align 2, !tbaa !155
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !166
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !169
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fk ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !130
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !130
  %.not210 = icmp eq i32 %.0166268, 0
  br i1 %.not210, label %.critedge228, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge312
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !167
  %i.fq = load i64, ptr %i.ay, align 8, !tbaa !171 ; 2 uses
  %i.fr = add i64 %i.fq, 1
  store i64 %i.fr, ptr %i.ay, align 8, !tbaa !171
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %i.fq
  store i16 %.1176, ptr %i.fs, align 2, !tbaa !155
  br label %.critedge228

.critedge228:                                     ; preds = %bb.f, %bb.e, %bb.d, %.critedge8, %.critedge8, %bb.z, %bb.ad, %bb.ai, %.lr.ph311, %.preheader239.6, %bb.y, %.preheader236, %bb.ag, %bb.r, %bb.o, %._crit_edge312, %bb.ak, %._crit_edge308, %.loopexit, %bb.t, %.critedge, %bb.i, %bb.h, %bb.m, %bb.b
  %.3189 = phi i32 [ 0, %bb.b ], [ %spec.select, %.loopexit ], [ -1, %bb.h ], [ %i.ac, %bb.m ], [ 0, %bb.r ], [ 1, %._crit_edge308 ], [ 1, %bb.ak ], [ 1, %bb.ag ], [ 1, %.preheader236 ], [ 0, %bb.i ], [ 0, %bb.o ], [ -1, %bb.t ], [ 1, %.lr.ph311 ], [ -1, %.critedge ], [ %spec.select, %bb.y ], [ 1, %._crit_edge312 ], [ 1, %bb.ad ], [ %spec.select, %.preheader239.6 ], [ %spec.select, %bb.z ], [ 1, %bb.ai ], [ -1, %.critedge8 ], [ -1, %.critedge8 ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.3189
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @OPENSSL_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_get_ec_point_conv_form(ptr noundef) local_unnamed_addr #0

declare i32 @EVP_PKEY_get_field_type(ptr noundef) local_unnamed_addr #0

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #0

declare ptr @SSL_get_ciphers(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc void @get_sigorhash(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.13) #14
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 6, ptr %0, align 4, !tbaa !132
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.106) #14
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.107) #14
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 912, ptr %0, align 4, !tbaa !132
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.g = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.14) #14
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 116, ptr %0, align 4, !tbaa !132
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.i = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %2, ptr noundef nonnull @.str.108) #14
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 408, ptr %0, align 4, !tbaa !132
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.k = tail call i32 @OBJ_sn2nid(ptr noundef nonnull %2) #14 ; 2 uses
  store i32 %i.k, ptr %1, align 4, !tbaa !132
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.m = tail call i32 @OBJ_ln2nid(ptr noundef nonnull %2) #14
  store i32 %i.m, ptr %1, align 4, !tbaa !132
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.i, %bb.k, %bb.j, %bb.g, %bb.b
  ret void
}

declare i32 @OBJ_sn2nid(ptr noundef) local_unnamed_addr #0

declare i32 @OBJ_ln2nid(ptr noundef) local_unnamed_addr #0

declare i32 @X509_self_signed(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @X509_get_signature_nid(ptr noundef) local_unnamed_addr #0

declare i32 @OBJ_find_sigid_algs(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @X509_get0_pubkey(ptr noundef) local_unnamed_addr #0

declare ptr @X509_get_issuer_name(ptr noundef) local_unnamed_addr #0

declare i32 @X509_NAME_cmp(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @ssl_ctx_security(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @X509_get_extension_flags(ptr noundef) local_unnamed_addr #0

declare i32 @X509_get_signature_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @check_cert_usable(ptr nofree noundef readonly captures(none) %0, i32 %.20.val, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120  ; 2 uses
  %.not = icmp eq i32 %.20.val, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @OBJ_nid2sn(i32 noundef %.20.val) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = tail call i32 @EVP_PKEY_digestsign_supports_digest(ptr noundef %2, ptr noundef %i.f, ptr noundef %.0, ptr noundef %i.h) #14
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !238
  %.not23 = icmp eq ptr %i.l, null
  br i1 %.not23, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call i32 @X509_get_signature_info(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null) #14
  %.not24 = icmp eq i32 %i.m, 0
  br i1 %.not24, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.o = load i64, ptr %i.n, align 8, !tbaa !343  ; 2 uses
  %.not6 = icmp eq i64 %i.o, 0
  br i1 %.not6, label %.loopexit, label %.lr.ph

end_hunk_0
