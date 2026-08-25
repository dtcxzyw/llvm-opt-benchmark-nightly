Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_lzcompress?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@pglz_compress:bb.a
  store i8 0, ptr %i.a, align 1
  %i.d = icmp eq ptr %3, null
  %spec.store.select = select i1 %i.d, ptr @strategy_default_data, ptr %3 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 16
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.loopexit227, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %spec.store.select, align 4
  %i.i = icmp slt i32 %1, %i.h
  br i1 %i.i, label %.loopexit227, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp sgt i32 %1, %i.k
  br i1 %i.l, label %.loopexit227, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @llvm.umax.i32(i32 %i.f, i32 17)
  %.0143 = tail call i32 @llvm.umin.i32(i32 %i.m, i32 273)
  %i.n = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 20
  %i.o = load i32, ptr %i.n, align 4
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 100)
  %i.r = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 8
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %spec.store.select3 = tail call i32 @llvm.smin.i32(i32 %i.s, i32 99)
  %i.u = sub nuw nsw i32 100, %spec.store.select3
  %.0140 = select i1 %i.t, i32 100, i32 %i.u      ; 2 uses
  %i.v = icmp sgt i32 %1, 21474836
  br i1 %i.v, label %.thread215, label %bb.e

.thread215:                                       ; preds = %bb.d
  %i.w = udiv i32 %1, 100
  %i.x = mul nuw nsw i32 %.0140, %i.w
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = mul i32 %.0140, %1
  %i.z = sdiv i32 %i.y, 100                       ; 5 uses
  %i.aa = icmp slt i32 %1, 128
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp samesign ult i32 %1, 256
  br i1 %i.ab, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp samesign ult i32 %1, 512
  br i1 %i.ac, label %.thread, label %bb.h

bb.h:                                             ; preds = %.thread215, %bb.g
  %.0141210214217 = phi i32 [ %i.x, %.thread215 ], [ %i.z, %bb.g ]
  %i.ad = icmp samesign ult i32 %1, 1024
  %. = select i1 %i.ad, i32 4096, i32 8192
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.f
  %.0141211.ph = phi i32 [ %.0141210214217, %bb.h ], [ %i.z, %bb.f ], [ %i.z, %bb.g ]
  %.0.ph = phi i32 [ %., %bb.h ], [ 1024, %bb.f ], [ 2048, %bb.g ] ; 2 uses
  %i.ae = add nsw i32 %.0.ph, -1
  %i.af = shl nuw nsw i32 %.0.ph, 1
  %i.ag = zext nneg i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) @hist_start, i8 0, i64 %i.ag, i1 false)
  br label %.lr.ph249

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @hist_start, i8 0, i64 1024, i1 false)
  %i.ah = icmp sgt i32 %1, 0
  br i1 %i.ah, label %.lr.ph249, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.i
  %.pre = ptrtoint ptr %2 to i64                  ; 2 uses
  br label %._crit_edge

.lr.ph249:                                        ; preds = %.thread, %bb.i
  %i.ai = phi i32 [ %i.ae, %.thread ], [ 511, %bb.i ] ; 3 uses
  %.0141211276 = phi i32 [ %.0141211.ph, %.thread ], [ %i.z, %bb.i ] ; 2 uses
  %i.aj = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ak = sext i32 %.0141211276 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 12
  %i.am = ptrtoint ptr %i.c to i64                ; 3 uses
  %i.an = trunc i64 %i.am to i32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph249, %.loopexit
  %.0144248 = phi i1 [ false, %.lr.ph249 ], [ %.1, %.loopexit ] ; 2 uses
  %.0145247 = phi i8 [ 0, %.lr.ph249 ], [ %.3, %.loopexit ] ; 4 uses
  %.0147246 = phi i8 [ 0, %.lr.ph249 ], [ %.3150, %.loopexit ] ; 4 uses
  %.0151245 = phi ptr [ %i.a, %.lr.ph249 ], [ %.3154, %.loopexit ] ; 4 uses
  %.0155244 = phi ptr [ %0, %.lr.ph249 ], [ %.2157, %.loopexit ] ; 15 uses
  %.0158243 = phi i8 [ 0, %.lr.ph249 ], [ %.4, %.loopexit ] ; 3 uses
  %.0162242 = phi i32 [ 1, %.lr.ph249 ], [ %.4166, %.loopexit ] ; 4 uses
  %.0167241 = phi ptr [ %2, %.lr.ph249 ], [ %.4171, %.loopexit ] ; 7 uses
  %i.ao = ptrtoint ptr %.0167241 to i64
  %i.ap = sub i64 %i.ao, %i.aj                    ; 2 uses
  %.not187 = icmp slt i64 %i.ap, %i.ak
  br i1 %.not187, label %bb.k, label %.loopexit227

bb.k:                                             ; preds = %bb.j
  br i1 %.0144248, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.al, align 4
  %i.ar = sext i32 %i.aq to i64
  %.not188 = icmp slt i64 %i.ap, %i.ar
  br i1 %.not188, label %bb.m, label %.loopexit227

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = ptrtoint ptr %.0155244 to i64           ; 4 uses
  %i.at = sub i64 %i.am, %i.as
  %i.au = icmp slt i64 %i.at, 4                   ; 2 uses
  %i.av = load i8, ptr %.0155244, align 1
  %i.aw = sext i8 %i.av to i32                    ; 2 uses
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = shl nsw i32 %i.aw, 6
  %i.ay = getelementptr inbounds nuw i8, ptr %.0155244, i64 1
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i32
  %i.bb = shl nsw i32 %i.ba, 4
  %i.bc = xor i32 %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %.0155244, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i32
  %i.bg = shl nsw i32 %i.bf, 2
  %i.bh = xor i32 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.0155244, i64 3
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = sext i8 %i.bj to i32
  %i.bl = xor i32 %i.bh, %i.bk
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bm = phi i32 [ %i.bl, %bb.n ], [ %i.aw, %bb.m ]
  %i.bn = and i32 %i.bm, %i.ai
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr @hist_start, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2            ; 2 uses
  %.not19.i = icmp eq i16 %i.bq, 0
  br i1 %.not19.i, label %.thread.i.thread, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %bb.o
  %i.br = sext i16 %i.bq to i64
  %.idx.i = shl nsw i64 %i.br, 5
  %i.bs = getelementptr inbounds i8, ptr @hist_entries, i64 %.idx.i ; 2 uses
  %i.bt = trunc i64 %i.as to i32
  %i.bu = sub i32 %i.an, %i.bt                    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = sub i64 %i.as, %i.bx
  %i.bz = trunc i64 %i.by to i32                  ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 4094
  br i1 %i.ca, label %.thread.i.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25.i, %bb.t
  %i.cb = phi i32 [ %i.df, %bb.t ], [ %i.bz, %.lr.ph25.i ]
  %i.cc = phi ptr [ %i.dc, %bb.t ], [ %i.bw, %.lr.ph25.i ] ; 3 uses
  %.07820.i234 = phi i32 [ %i.da, %bb.t ], [ %.0143, %.lr.ph25.i ] ; 3 uses
  %.07521.i233 = phi ptr [ %i.cy, %bb.t ], [ %i.bs, %.lr.ph25.i ]
  %.07122.i232 = phi i32 [ %spec.select.i, %bb.t ], [ 0, %.lr.ph25.i ] ; 6 uses
  %.06824.i231 = phi i32 [ %spec.select85.i, %bb.t ], [ 0, %.lr.ph25.i ]
  %i.cd = icmp sgt i32 %.07122.i232, 15
  br i1 %i.cd, label %bb.p, label %.lr.ph.i

bb.p:                                             ; preds = %.lr.ph
  %i.ce = zext nneg i32 %.07122.i232 to i64       ; 3 uses
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.0155244, ptr %i.cc, i64 %i.ce)
  %i.cf = icmp eq i32 %bcmp.i, 0
  br i1 %i.cf, label %bb.q, label %.critedge.i

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %.0155244, i64 %i.ce ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.c
  br i1 %i.ch, label %.lr.ph15.preheader.i, label %.critedge.i

.lr.ph15.preheader.i:                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ce
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %bb.r, %.lr.ph15.preheader.i
  %.06314.i = phi i32 [ %i.cn, %bb.r ], [ %.07122.i232, %.lr.ph15.preheader.i ] ; 3 uses
  %.06413.i = phi ptr [ %i.cp, %bb.r ], [ %i.ci, %.lr.ph15.preheader.i ] ; 2 uses
  %.06612.i = phi ptr [ %i.co, %bb.r ], [ %i.cg, %.lr.ph15.preheader.i ] ; 2 uses
  %i.cj = load i8, ptr %.06612.i, align 1
  %i.ck = load i8, ptr %.06413.i, align 1
  %i.cl = icmp eq i8 %i.cj, %i.ck
  %i.cm = icmp slt i32 %.06314.i, 273
  %or.cond.i = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %.lr.ph15.i
  %i.cn = add nuw nsw i32 %.06314.i, 1
  %i.co = getelementptr inbounds nuw i8, ptr %.06612.i, i64 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.06413.i, i64 1
  %4 = icmp ult ptr %i.co, %i.c
  br i1 %4, label %.lr.ph15.i, label %.critedge.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.s
  %.19.i = phi i32 [ %i.cu, %bb.s ], [ 0, %.lr.ph ] ; 3 uses
  %.1658.i = phi ptr [ %i.cw, %bb.s ], [ %i.cc, %.lr.ph ] ; 2 uses
  %.1677.i = phi ptr [ %i.cv, %bb.s ], [ %.0155244, %.lr.ph ] ; 2 uses
  %i.cq = load i8, ptr %.1677.i, align 1
  %i.cr = load i8, ptr %.1658.i, align 1
  %i.cs = icmp eq i8 %i.cq, %i.cr
  %i.ct = icmp samesign ult i32 %.19.i, 273
  %or.cond5.i = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond5.i, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %.lr.ph.i
  %i.cu = add nuw nsw i32 %.19.i, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.1677.i, i64 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.1658.i, i64 1
  %exitcond.not.i = icmp eq ptr %i.cv, %i.c
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.s, %.lr.ph.i, %bb.r, %.lr.ph15.i, %bb.q, %bb.p
  %.2.i = phi i32 [ 0, %bb.p ], [ %.06314.i, %.lr.ph15.i ], [ %.07122.i232, %bb.q ], [ %i.bu, %bb.r ], [ %.19.i, %.lr.ph.i ], [ %i.bu, %bb.s ] ; 2 uses
  %i.cx = icmp sgt i32 %.2.i, %.07122.i232
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.2.i, i32 %.07122.i232) ; 7 uses
  %spec.select85.i = select i1 %i.cx, i32 %i.cb, i32 %.06824.i231 ; 3 uses
  %i.cy = load ptr, ptr %.07521.i233, align 8     ; 3 uses
  %.not83.i = icmp ne ptr %i.cy, @hist_entries
  %.not84.i = icmp slt i32 %spec.select.i, %.07820.i234
  %or.cond51.i = select i1 %.not83.i, i1 %.not84.i, i1 false
  br i1 %or.cond51.i, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %.critedge.i
  %i.cz = mul nuw nsw i32 %.07820.i234, %i.q
  %.neg.i = sdiv i32 %i.cz, -100
  %i.da = add nsw i32 %.neg.i, %.07820.i234
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.as, %i.dd
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 4094
  br i1 %i.dg, label %.thread.i, label %.lr.ph

.thread.i:                                        ; preds = %bb.t, %.critedge.i
  %i.dh = icmp sgt i32 %spec.select.i, 2
  br i1 %i.dh, label %pglz_find_match.exit, label %.thread.i.thread

pglz_find_match.exit:                             ; preds = %.thread.i
  %i.di = icmp eq i8 %.0145247, 0
  br i1 %i.di, label %bb.u, label %bb.v

bb.u:                                             ; preds = %pglz_find_match.exit
  store i8 %.0147246, ptr %.0151245, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.0167241, i64 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %pglz_find_match.exit
  %.1168 = phi ptr [ %i.dj, %bb.u ], [ %.0167241, %pglz_find_match.exit ] ; 4 uses
  %.1152 = phi ptr [ %.0167241, %bb.u ], [ %.0151245, %pglz_find_match.exit ]
  %.1148 = phi i8 [ 0, %bb.u ], [ %.0147246, %pglz_find_match.exit ]
  %.1146 = phi i8 [ 1, %bb.u ], [ %.0145247, %pglz_find_match.exit ] ; 2 uses
  %i.dk = or i8 %.1146, %.1148
  %i.dl = icmp samesign ugt i32 %spec.select.i, 17
  %i.dm = lshr i32 %spec.select85.i, 4            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.1168, i64 2 ; 2 uses
  br i1 %i.dl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.do = trunc i32 %i.dm to i8
  %i.dp = or i8 %i.do, 15
  %i.dq = trunc i32 %spec.select.i to i8
  %i.dr = add i8 %i.dq, -18
  store i8 %i.dr, ptr %i.dn, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.1168, i64 3
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dt = and i32 %i.dm, 240
  %i.du = add nuw nsw i32 %spec.select.i, 253
  %i.dv = or i32 %i.dt, %i.du
  %i.dw = trunc i32 %i.dv to i8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink255 = phi i8 [ %i.dp, %bb.w ], [ %i.dw, %bb.x ]
  %.2169 = phi ptr [ %i.ds, %bb.w ], [ %i.dn, %bb.x ]
  %.sink = trunc i32 %spec.select85.i to i8
  store i8 %.sink255, ptr %.1168, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.1168, i64 1
  store i8 %.sink, ptr %i.dx, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ah
  %.in = phi i32 [ %spec.select.i, %bb.y ], [ %i.dy, %bb.ah ]
  %.1156240 = phi ptr [ %.0155244, %bb.y ], [ %i.fy, %bb.ah ] ; 7 uses
  %.1159239 = phi i8 [ %.0158243, %bb.y ], [ %spec.select193, %bb.ah ] ; 2 uses
  %.1163238 = phi i32 [ %.0162242, %bb.y ], [ %spec.select, %bb.ah ] ; 3 uses
  %i.dy = add nsw i32 %.in, -1                    ; 2 uses
  %i.dz = ptrtoint ptr %.1156240 to i64
  %i.ea = sub i64 %i.am, %i.dz
  %i.eb = icmp slt i64 %i.ea, 4
  %i.ec = load i8, ptr %.1156240, align 1
  %i.ed = sext i8 %i.ec to i32                    ; 2 uses
  br i1 %i.eb, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ee = shl nsw i32 %i.ed, 6
  %i.ef = getelementptr inbounds nuw i8, ptr %.1156240, i64 1
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = sext i8 %i.eg to i32
  %i.ei = shl nsw i32 %i.eh, 4
  %i.ej = xor i32 %i.ei, %i.ee
  %i.ek = getelementptr inbounds nuw i8, ptr %.1156240, i64 2
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = sext i8 %i.el to i32
  %i.en = shl nsw i32 %i.em, 2
  %i.eo = xor i32 %i.ej, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.1156240, i64 3
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = sext i8 %i.eq to i32
  %i.es = xor i32 %i.eo, %i.er
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.et = phi i32 [ %i.es, %bb.aa ], [ %i.ed, %bb.z ]
  %i.eu = and i32 %i.et, %i.ai                    ; 2 uses
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr @hist_start, i64 %i.ev ; 2 uses
  %i.ex = sext i32 %.1163238 to i64
  %i.ey = getelementptr inbounds [32 x i8], ptr @hist_entries, i64 %i.ex ; 8 uses
  %i.ez = trunc nuw i8 %.1159239 to i1
  br i1 %i.ez, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  %i.fd = load ptr, ptr %i.ey, align 16           ; 4 uses
  br i1 %i.fc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, ptrtoint (ptr @hist_entries to i64)
  %i.fg = lshr exact i64 %i.ff, 5
  %i.fh = trunc i64 %i.fg to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fj = load i32, ptr %i.fi, align 16
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [2 x i8], ptr @hist_start, i64 %i.fk
  store i16 %i.fh, ptr %i.fl, align 2
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  store ptr %i.fd, ptr %i.fb, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not192 = icmp eq ptr %i.fd, null
  br i1 %.not192, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fm = load ptr, ptr %i.fa, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.fm, ptr %i.fn, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ab
  %i.fo = load i16, ptr %i.ew, align 2
  %i.fp = sext i16 %i.fo to i64
  %i.fq = getelementptr inbounds [32 x i8], ptr @hist_entries, i64 %i.fp ; 2 uses
  store ptr %i.fq, ptr %i.ey, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr null, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i32 %i.eu, ptr %i.fs, align 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store ptr %.1156240, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.ey, ptr %i.fu, align 8
  %i.fv = trunc i32 %.1163238 to i16
  store i16 %i.fv, ptr %i.ew, align 2
  %i.fw = add i32 %.1163238, 1                    ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 4096                ; 2 uses
  %spec.select = select i1 %i.fx, i32 1, i32 %i.fw ; 2 uses
  %spec.select193 = select i1 %i.fx, i8 1, i8 %.1159239 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.1156240, i64 1 ; 2 uses
  %.not191 = icmp eq i32 %i.dy, 0
  br i1 %.not191, label %.loopexit, label %bb.z, !llvm.loop !7

.thread.i.thread:                                 ; preds = %.lr.ph25.i, %.thread.i, %bb.o
  %i.fz = icmp eq i8 %.0145247, 0
  br i1 %i.fz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread.i.thread
  store i8 %.0147246, ptr %.0151245, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.0167241, i64 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.thread.i.thread
  %.3170 = phi ptr [ %i.ga, %bb.ai ], [ %.0167241, %.thread.i.thread ] ; 2 uses
  %.2153 = phi ptr [ %.0167241, %bb.ai ], [ %.0151245, %.thread.i.thread ]
end_hunk_0
