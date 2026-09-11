Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/vwr?download=true
inline.NumInlined: 174
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@vwr_read_rec_header:bb.a
.split25.us:                                      ; preds = %bb.m, %bb.e
  %.us-phi26 = phi i32 [ %.0.i.us, %bb.e ], [ %.0.ph.i, %bb.m ]
  store i32 %.us-phi26, ptr %2, align 4
  br label %.loopexit

decode_msg.exit.thread:                           ; preds = %.sink.split.i.thread, %bb.n, %.sink.split.i
  %i.as = call zeroext i1 @wtap_read_bytes_or_eof(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef %5, ptr noundef %6)
  br i1 %i.as, label %.lr.ph.split, label %.loopexit

.loopexit:                                        ; preds = %decode_msg.exit.thread, %bb.n, %decode_msg.exit.thread.us, %bb.f, %bb.a, %.split25.us, %.split.us
  %.0 = phi i1 [ false, %.split.us ], [ true, %.split25.us ], [ false, %bb.a ], [ false, %decode_msg.exit.thread.us ], [ false, %bb.f ], [ false, %bb.n ], [ false, %decode_msg.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @vwr_process_rec_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noalias dereferenceable_or_null(32768) ptr @g_malloc(i64 noundef 32768) #8 ; 40 uses
  %i.d = tail call zeroext i1 @wtap_read_bytes(ptr noundef %1, ptr noundef %i.c, i32 noundef %2, ptr noundef %6, ptr noundef %7)
  br i1 %i.d, label %bb.b, label %vwr_read_s1_W_rec.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 176
  %i.f = load i32, ptr %i.e, align 4
  switch i32 %i.f, label %bb.iu [
    i32 2, label %bb.c
    i32 1, label %bb.ak
    i32 5, label %bb.ch
    i32 3, label %bb.hq
    i32 4, label %bb.hq
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.h = icmp slt i32 %2, 64
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %2, i32 noundef 64)
  store ptr %i.i, ptr %7, align 8
  store i32 -13, ptr %6, align 4
  br label %vwr_read_s1_W_rec.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %2, -64                      ; 3 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr i8, ptr %i.c, i64 %i.k     ; 33 uses
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = and i8 %i.n, 8
  %i.p = icmp ne i8 %i.o, 0                       ; 3 uses
  %i.q = getelementptr i8, ptr %i.l, i64 8
  %.val275.i = load i8, ptr %i.q, align 1
  %i.r = getelementptr i8, ptr %i.l, i64 9
  %.val276.i = load i8, ptr %i.r, align 1
  %i.s = zext i8 %.val275.i to i16
  %i.t = shl nuw i16 %i.s, 8
  %i.u = zext i8 %.val276.i to i16
  %i.v = or disjoint i16 %i.t, %i.u               ; 4 uses
  %i.w = getelementptr i8, ptr %i.l, i64 2
  %.val273.i = load i8, ptr %i.w, align 1
  %i.x = getelementptr i8, ptr %i.l, i64 3
  %.val274.i = load i8, ptr %i.x, align 1
  %i.y = zext i8 %.val273.i to i16
  %i.z = shl nuw i16 %i.y, 8
  %i.aa = zext i8 %.val274.i to i16
  %.masked.i = and i16 %i.z, 768
  %i.ab = or disjoint i16 %.masked.i, %i.aa
  %i.ac = getelementptr i8, ptr %i.l, i64 4
  %i.ad = load i8, ptr %i.ac, align 1             ; 3 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 40
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw i32 %i.ag, 24
  %i.ai = getelementptr i8, ptr %i.l, i64 41
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.al, %i.ah
  %i.an = getelementptr i8, ptr %i.l, i64 42
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = or disjoint i32 %i.am, %i.aq
  %i.as = getelementptr i8, ptr %i.l, i64 43
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ar, %i.au
  %i.aw = getelementptr i8, ptr %i.l, i64 6
  %.val271.i = load i8, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %i.l, i64 7
  %.val272.i = load i8, ptr %i.ax, align 1
  %i.ay = zext i8 %.val271.i to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val272.i to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 3 uses
  %i.bc = getelementptr i8, ptr %i.l, i64 10
  %.val269.i = load i8, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %i.l, i64 11
  %.val270.i = load i8, ptr %i.bd, align 1
  %i.be = zext i8 %.val269.i to i32
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = zext i8 %.val270.i to i32
  %i.bh = or disjoint i32 %i.bf, %i.bg            ; 4 uses
  %i.bi = getelementptr i8, ptr %i.l, i64 54
  %.val.i = load i8, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %i.l, i64 55
  %.val268.i = load i8, ptr %i.bj, align 1
  %i.bk = zext i8 %.val.i to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %i.bm = zext i8 %.val268.i to i16
  %i.bn = or disjoint i16 %i.bl, %i.bm            ; 2 uses
  %i.bo = zext i16 %i.bn to i32                   ; 3 uses
  %i.bp = getelementptr i8, ptr %i.l, i64 21
  %i.bq = load i8, ptr %i.bp, align 1             ; 3 uses
  %i.br = and i8 %i.bq, 127
  %i.bs = sub nsw i8 0, %i.br
  %.not289.i = icmp slt i8 %i.bq, 0
  %i.bt = select i1 %.not289.i, i8 %i.bs, i8 %i.bq
  %i.bu = zext i16 %i.v to i32                    ; 3 uses
  %i.bv = icmp samesign ult i32 %i.j, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bw = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef %i.bu)
  store ptr %i.bw, ptr %7, align 8
  store i32 -13, ptr %6, align 4
  br label %vwr_read_s1_W_rec.exit

bb.g:                                             ; preds = %bb.e
  %i.bx = and i8 %i.n, 7
  %i.by = zext nneg i8 %i.bx to i32               ; 5 uses
  %i.bz = getelementptr i8, ptr %i.g, i64 168     ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp eq i32 %i.ca, %i.by
  br i1 %i.cb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.val277.i = load i8, ptr %i.c, align 1
  %i.cc = and i8 %.val277.i, 15
  %switch.tableidx = add nsw i8 %i.cc, -8         ; 2 uses
  %i.cd = icmp ult i8 %switch.tableidx, 8
  br i1 %i.cd, label %switch.lookup, label %get_ofdm_rate.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ce = getelementptr i8, ptr %i.g, i64 160
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = icmp eq i32 %i.cf, %i.by
  br i1 %i.cg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr i8, ptr %i.g, i64 164
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = icmp eq i32 %i.ci, %i.by
  br i1 %i.cj, label %bb.k, label %get_ofdm_rate.exit.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.val278.i = load i8, ptr %i.c, align 1
  switch i8 %.val278.i, label %bb.n [
    i8 110, label %bb.m
    i8 20, label %get_ofdm_rate.exit.i
    i8 55, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %get_ofdm_rate.exit.i

bb.m:                                             ; preds = %bb.k
  br label %get_ofdm_rate.exit.i

bb.n:                                             ; preds = %bb.k
  br label %get_ofdm_rate.exit.i

switch.lookup:                                    ; preds = %bb.h
  %i.ck = shl nuw nsw i8 %switch.tableidx, 3
  %switch.shiftamt = zext nneg i8 %i.ck to i64
  %switch.downshift = lshr i64 362268237943408650, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i8
  br label %get_ofdm_rate.exit.i

get_ofdm_rate.exit.i:                             ; preds = %bb.h, %switch.lookup, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.cl = phi i16 [ 6, %bb.j ], [ 4, %switch.lookup ], [ 6, %bb.m ], [ 6, %bb.n ], [ 6, %bb.k ], [ 6, %bb.l ], [ 4, %bb.h ] ; 5 uses
  %.0244.i = phi i8 [ 1, %bb.j ], [ %switch.masked, %switch.lookup ], [ 3, %bb.m ], [ 0, %bb.n ], [ 1, %bb.k ], [ 2, %bb.l ], [ 0, %bb.h ] ; 2 uses
  %i.cm = getelementptr i8, ptr %i.g, i64 164
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp eq i32 %i.cn, %i.by
  %i.cp = select i1 %i.co, i16 2, i16 0
  %i.cq = zext nneg i16 %i.cl to i32              ; 2 uses
  %.not257.i = icmp ult i16 %i.v, %i.cl
  br i1 %.not257.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %get_ofdm_rate.exit.i
  %i.cr = sub nuw i16 %i.v, %i.cl                 ; 4 uses
  %i.cs = zext nneg i16 %i.cl to i64
  %i.ct = getelementptr i8, ptr %i.c, i64 %i.cs   ; 7 uses
  %i.cu = zext nneg i16 %i.cr to i32
  %i.cv = icmp ult i16 %i.cr, 4
  br i1 %i.cv, label %bb.q, label %bb.s

bb.p:                                             ; preds = %get_ofdm_rate.exit.i
  %i.cw = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef %i.bu, i32 noundef %i.cq)
  store ptr %i.cw, ptr %7, align 8
  store i32 -13, ptr %6, align 4
  br label %vwr_read_s1_W_rec.exit

bb.q:                                             ; preds = %bb.o
  %.not258.i = icmp eq i16 %i.v, %i.cl
  br i1 %.not258.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef %i.cu, i32 noundef %i.cq)
  store ptr %i.cx, ptr %7, align 8
  store i32 -13, ptr %6, align 4
  br label %vwr_read_s1_W_rec.exit

bb.s:                                             ; preds = %bb.o
  %i.cy = add i16 %i.cr, -4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.0245.i = phi i16 [ 0, %bb.q ], [ %i.cy, %bb.s ] ; 2 uses
  %i.cz = getelementptr i8, ptr %i.l, i64 24
  %i.da = getelementptr i8, ptr %i.l, i64 28
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw i64 %i.dc, 56
  %i.de = getelementptr i8, ptr %i.l, i64 29
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 48
  %i.di = or disjoint i64 %i.dh, %i.dd
  %i.dj = getelementptr i8, ptr %i.l, i64 30
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 40
  %i.dn = or disjoint i64 %i.di, %i.dm
  %i.do = getelementptr i8, ptr %i.l, i64 31
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 32
  %i.ds = or disjoint i64 %i.dn, %i.dr
  %i.dt = load i8, ptr %i.cz, align 1
  %i.du = zext i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 24
  %i.dw = or disjoint i64 %i.ds, %i.dv
  %i.dx = getelementptr i8, ptr %i.l, i64 25
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 16
  %i.eb = or disjoint i64 %i.dw, %i.ea
  %i.ec = getelementptr i8, ptr %i.l, i64 26
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 8
  %i.eg = or i64 %i.eb, %i.ef                     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.l, i64 27
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i64
  %i.ek = or i64 %i.eg, %i.ej                     ; 2 uses
  %i.el = getelementptr i8, ptr %i.l, i64 32
  %i.em = getelementptr i8, ptr %i.l, i64 36
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i64
  %i.ep = shl nuw i64 %i.eo, 56
  %i.eq = getelementptr i8, ptr %i.l, i64 37
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i64
  %i.et = shl nuw nsw i64 %i.es, 48
  %i.eu = or disjoint i64 %i.et, %i.ep
  %i.ev = getelementptr i8, ptr %i.l, i64 38
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i64
  %i.ey = shl nuw nsw i64 %i.ex, 40
  %i.ez = or disjoint i64 %i.eu, %i.ey
  %i.fa = getelementptr i8, ptr %i.l, i64 39
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i64
  %i.fd = shl nuw nsw i64 %i.fc, 32
  %i.fe = or disjoint i64 %i.ez, %i.fd
  %i.ff = load i8, ptr %i.el, align 1
  %i.fg = zext i8 %i.ff to i64
  %i.fh = shl nuw nsw i64 %i.fg, 24
  %i.fi = or disjoint i64 %i.fe, %i.fh
  %i.fj = getelementptr i8, ptr %i.l, i64 33
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = zext i8 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 16
  %i.fn = or disjoint i64 %i.fi, %i.fm
  %i.fo = getelementptr i8, ptr %i.l, i64 34
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = zext i8 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 8
  %i.fs = or i64 %i.fn, %i.fr
  %i.ft = getelementptr i8, ptr %i.l, i64 35
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = zext i8 %i.fu to i64
  %i.fw = or i64 %i.fs, %i.fv                     ; 2 uses
  %i.fx = sub i64 %i.fw, %i.ek
  %i.fy = udiv i64 %i.fx, 1000
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = udiv i64 %i.ek, 1000                    ; 8 uses
  %i.gb = udiv i64 %i.eg, 1000000000              ; 2 uses
  %.neg.i = mul i64 %i.gb, 4293967296
  %i.gc = add i64 %.neg.i, %i.ga
  %i.gd = udiv i64 %i.fw, 1000                    ; 7 uses
  %i.ge = add nsw i32 %2, -6                      ; 3 uses
  %i.gf = getelementptr i8, ptr %i.ct, i64 42
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = icmp eq i8 %i.gg, -35
  br i1 %i.gh, label %.loopexit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %wide.trip.count.i.i = zext nneg i32 %i.ge to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 42, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ab ] ; 3 uses
  %i.gi = getelementptr i8, ptr %i.ct, i64 %indvars.iv.i.i ; 6 uses
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = icmp eq i8 %i.gj, -35
  br i1 %i.gk, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.gl = trunc i64 %indvars.iv.i.i to i32        ; 4 uses
  %i.gm = add i32 %i.gl, 15                       ; 2 uses
  %i.gn = icmp slt i32 %i.gm, %i.ge
  br i1 %i.gn, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr i8, ptr %i.ct, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = icmp eq i8 %i.gq, -30
  br i1 %i.gr, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gs = getelementptr i8, ptr %i.gi, i64 4
  %i.gt = load i8, ptr %i.gs, align 1
  %.not43.i.i = icmp eq i8 %i.gt, %i.ad
  br i1 %.not43.i.i, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.gu = getelementptr i8, ptr %i.gi, i64 1
  %i.gv = getelementptr i8, ptr %i.gi, i64 2
  %i.gw = load i16, ptr %i.gv, align 1
  %i.gx = zext i16 %i.gw to i32
  %i.gy = shl nuw nsw i32 %i.gx, 8
  %i.gz = load i8, ptr %i.gu, align 1
  %i.ha = zext i8 %i.gz to i32
  %i.hb = or disjoint i32 %i.gy, %i.ha
  %.not44.i.i = icmp eq i32 %i.hb, %i.bb
  br i1 %.not44.i.i, label %.loopexit.i, label %bb.ab

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.hc = add i32 %i.gl, 7                        ; 2 uses
  %i.hd = icmp slt i32 %i.hc, %i.ge
  br i1 %i.hd, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr i8, ptr %i.ct, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1
  %.not41.i.i = icmp eq i8 %i.hg, %i.ad
  br i1 %.not41.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hh = getelementptr i8, ptr %i.gi, i64 4
  %i.hi = getelementptr i8, ptr %i.gi, i64 5
  %i.hj = load i16, ptr %i.hi, align 1
  %i.hk = zext i16 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 8
  %i.hm = load i8, ptr %i.hh, align 1
  %i.hn = zext i8 %i.hm to i32
  %i.ho = or disjoint i32 %i.hl, %i.hn
  %.not42.i.i = icmp eq i32 %i.ho, %i.bb
  br i1 %.not42.i.i, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %find_signature.exit.i, label %.lr.ph.i.i, !llvm.loop !12

.loopexit.i:                                      ; preds = %bb.aa, %bb.x, %bb.t
  %.0.ph.i = phi i32 [ 42, %bb.t ], [ %i.gl, %bb.x ], [ %i.gl, %bb.aa ] ; 2 uses
  %i.hp = add i32 %.0.ph.i, 15                    ; 2 uses
  %.not.i282.i = icmp slt i32 %i.hp, %i.j
  br i1 %.not.i282.i, label %bb.ac, label %find_signature.exit.i

bb.ac:                                            ; preds = %.loopexit.i
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr i8, ptr %i.ct, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = icmp eq i8 %i.hs, -30
  %..i.i = select i1 %i.ht, i32 5, i32 8
  %i.hu = add i32 %..i.i, %.0.ph.i
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr i8, ptr %i.ct, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 1
  %i.hy = zext i32 %i.hx to i64
  br label %find_signature.exit.i

find_signature.exit.i:                            ; preds = %bb.ab, %bb.ac, %.loopexit.i
  %.0243.i = phi i64 [ 0, %.loopexit.i ], [ %i.hy, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.hz = getelementptr i8, ptr %0, i64 168
  %i.ia = load i32, ptr %i.hz, align 8
  tail call void @wtap_setup_packet_rec(ptr noundef %3, i32 noundef %i.ia)
  %i.ib = tail call ptr @wtap_block_create(i32 noundef 5)
  %i.ic = getelementptr i8, ptr %3, i64 216
  store ptr %i.ib, ptr %i.ic, align 8
  %i.id = zext i16 %.0245.i to i32
  %i.ie = add nuw nsw i32 %i.id, 68               ; 3 uses
  %i.if = getelementptr i8, ptr %3, i64 48
  %i.ig = getelementptr i8, ptr %3, i64 52
  store i32 %i.ie, ptr %i.ig, align 4
  store i32 %i.ie, ptr %i.if, align 8
  %i.ih = getelementptr i8, ptr %3, i64 4
  store i32 1, ptr %i.ih, align 4
  %i.ii = getelementptr i8, ptr %3, i64 16
  store i64 %i.gb, ptr %i.ii, align 8
  %i.ij = trunc i64 %i.gc to i32
  %i.ik = mul i32 %i.ij, 1000
  %i.il = getelementptr i8, ptr %3, i64 24
  store i32 %i.ik, ptr %i.il, align 8
  %i.im = getelementptr i8, ptr %3, i64 264       ; 3 uses
  %i.in = zext nneg i32 %i.ie to i64
  tail call void @ws_buffer_assure_space(ptr noundef %i.im, i64 noundef %i.in)
  %.val279.i = load ptr, ptr %i.im, align 8
  %i.io = getelementptr i8, ptr %3, i64 280
  %.val280.i = load i64, ptr %i.io, align 8
  %i.ip = getelementptr i8, ptr %.val279.i, i64 %.val280.i ; 39 uses
  store i8 0, ptr %i.ip, align 1
  %i.iq = getelementptr i8, ptr %i.ip, i64 1
  store i8 0, ptr %i.iq, align 1
  %i.ir = getelementptr i8, ptr %i.ip, i64 2
  store i16 42, ptr %i.ir, align 1
  %i.is = getelementptr i8, ptr %i.ip, i64 4
  store i16 %i.cr, ptr %i.is, align 1
  %i.it = getelementptr i8, ptr %i.ip, i64 6
  store i32 %i.bb, ptr %i.it, align 1
  %i.iu = getelementptr i8, ptr %i.ip, i64 10
  store i16 %i.ab, ptr %i.iu, align 1
  %i.iv = getelementptr i8, ptr %i.ip, i64 12
  %i.iw = zext i8 %i.ad to i16
  store i16 %i.iw, ptr %i.iv, align 1
  %i.ix = icmp ne i64 %.0243.i, 0
  %or.cond.i = select i1 %i.p, i1 %i.ix, i1 false
  %spec.select302.i = select i1 %or.cond.i, i32 %i.av, i32 0
  %i.iy = getelementptr i8, ptr %i.ip, i64 14
  store i32 %spec.select302.i, ptr %i.iy, align 1
  %i.iz = getelementptr i8, ptr %i.ip, i64 18
  %i.ja = trunc nuw i64 %.0243.i to i32
  store i32 %i.ja, ptr %i.iz, align 1
  %i.jb = getelementptr i8, ptr %i.ip, i64 22
  %i.jc = trunc i64 %i.ga to i8
  store i8 %i.jc, ptr %i.jb, align 1
  %i.jd = lshr i64 %i.ga, 8
  %i.je = trunc i64 %i.jd to i8
  %i.jf = getelementptr i8, ptr %i.ip, i64 23
  store i8 %i.je, ptr %i.jf, align 1
  %i.jg = lshr i64 %i.ga, 16
  %i.jh = trunc i64 %i.jg to i8
  %i.ji = getelementptr i8, ptr %i.ip, i64 24
  store i8 %i.jh, ptr %i.ji, align 1
  %i.jj = lshr i64 %i.ga, 24
  %i.jk = trunc i64 %i.jj to i8
  %i.jl = getelementptr i8, ptr %i.ip, i64 25
  store i8 %i.jk, ptr %i.jl, align 1
  %i.jm = lshr i64 %i.ga, 32
  %i.jn = trunc i64 %i.jm to i8
  %i.jo = getelementptr i8, ptr %i.ip, i64 26
  store i8 %i.jn, ptr %i.jo, align 1
  %i.jp = lshr i64 %i.ga, 40
  %i.jq = trunc i64 %i.jp to i8
  %i.jr = getelementptr i8, ptr %i.ip, i64 27
  store i8 %i.jq, ptr %i.jr, align 1
  %i.js = lshr i64 %i.ga, 48
  %i.jt = trunc nuw nsw i64 %i.js to i8
  %i.ju = getelementptr i8, ptr %i.ip, i64 28
  store i8 %i.jt, ptr %i.ju, align 1
  %i.jv = getelementptr i8, ptr %i.ip, i64 29
  store i8 0, ptr %i.jv, align 1
  %i.jw = getelementptr i8, ptr %i.ip, i64 30
  %i.jx = trunc i64 %i.gd to i8
  store i8 %i.jx, ptr %i.jw, align 1
  %i.jy = lshr i64 %i.gd, 8
  %i.jz = trunc i64 %i.jy to i8
  %i.ka = getelementptr i8, ptr %i.ip, i64 31
  store i8 %i.jz, ptr %i.ka, align 1
  %i.kb = lshr i64 %i.gd, 16
  %i.kc = trunc i64 %i.kb to i8
  %i.kd = getelementptr i8, ptr %i.ip, i64 32
  store i8 %i.kc, ptr %i.kd, align 1
  %i.ke = lshr i64 %i.gd, 24
  %i.kf = trunc i64 %i.ke to i8
  %i.kg = getelementptr i8, ptr %i.ip, i64 33
  store i8 %i.kf, ptr %i.kg, align 1
  %i.kh = lshr i64 %i.gd, 32
  %i.ki = trunc i64 %i.kh to i8
  %i.kj = getelementptr i8, ptr %i.ip, i64 34
  store i8 %i.ki, ptr %i.kj, align 1
  %i.kk = lshr i64 %i.gd, 40
  %i.kl = trunc i64 %i.kk to i8
  %i.km = getelementptr i8, ptr %i.ip, i64 35
  store i8 %i.kl, ptr %i.km, align 1
  %i.kn = lshr i64 %i.gd, 48
  %i.ko = trunc nuw nsw i64 %i.kn to i8
  %i.kp = getelementptr i8, ptr %i.ip, i64 36
  store i8 %i.ko, ptr %i.kp, align 1
  %i.kq = getelementptr i8, ptr %i.ip, i64 37
  store i8 0, ptr %i.kq, align 1
  %i.kr = getelementptr i8, ptr %i.ip, i64 38
  store i32 %i.fz, ptr %i.kr, align 1
  %i.ks = getelementptr i8, ptr %i.ip, i64 42
  store i16 26, ptr %i.ks, align 1
  %i.kt = getelementptr i8, ptr %i.ip, i64 44
  store i16 %i.cp, ptr %i.kt, align 1
  %i.ku = load i32, ptr %i.bz, align 4
  %i.kv = icmp eq i32 %i.ku, %i.by
  %.sink290.i = select i1 %i.kv, i16 64, i16 32
  %i.kw = getelementptr i8, ptr %i.ip, i64 46
  store i16 %.sink290.i, ptr %i.kw, align 1
  %i.kx = zext nneg i8 %.0244.i to i64
  %i.ky = getelementptr [4 x i8], ptr @get_legacy_rate.canonical_rate_legacy, i64 %i.kx
  %i.kz = load float, ptr %i.ky, align 4
  %i.la = fmul float %i.kz, 1.000000e+01
  %i.lb = fptoui float %i.la to i16
  %i.lc = getelementptr i8, ptr %i.ip, i64 48
  store i16 %i.lb, ptr %i.lc, align 1
  %i.ld = getelementptr i8, ptr %i.ip, i64 50
  store i8 0, ptr %i.ld, align 1
  %i.le = getelementptr i8, ptr %i.ip, i64 51
  store i8 %.0244.i, ptr %i.le, align 1
  %i.lf = getelementptr i8, ptr %i.ip, i64 52
  store i8 1, ptr %i.lf, align 1
  %i.lg = getelementptr i8, ptr %i.ip, i64 53
  store i8 %i.bt, ptr %i.lg, align 1
  %i.lh = getelementptr i8, ptr %i.ip, i64 54
  store <4 x i8> <i8 100, i8 100, i8 100, i8 0>, ptr %i.lh, align 1
  %not..i = xor i1 %i.p, true
  %spec.select.i = zext i1 %not..i to i16         ; 2 uses
  %i.li = getelementptr i8, ptr %i.g, i64 120
  %i.lj = load i32, ptr %i.li, align 4
  %i.lk = and i32 %i.lj, %i.bh
  %.not259.i = icmp eq i32 %i.lk, 0
  %i.ll = or disjoint i16 %spec.select.i, 2
  %.1.i = select i1 %.not259.i, i16 %spec.select.i, i16 %i.ll ; 3 uses
  br i1 %i.p, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %find_signature.exit.i
  %i.lm = getelementptr i8, ptr %i.g, i64 124
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = and i32 %i.ln, %i.bh
  %.not260.i = icmp eq i32 %i.lo, 0
  %i.lp = or disjoint i16 %.1.i, 16
  %spec.select265.i = select i1 %.not260.i, i16 %.1.i, i16 %i.lp ; 2 uses
  %i.lq = getelementptr i8, ptr %i.g, i64 132
  %i.lr = load i32, ptr %i.lq, align 4
  %i.ls = and i32 %i.lr, %i.bh
  %.not261.i = icmp eq i32 %i.ls, 0
  %i.lt = or disjoint i16 %spec.select265.i, 4
  %spec.select266.i = select i1 %.not261.i, i16 %spec.select265.i, i16 %i.lt
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %find_signature.exit.i
  %.3.i = phi i16 [ %spec.select266.i, %bb.ad ], [ %.1.i, %find_signature.exit.i ] ; 4 uses
  %i.lu = getelementptr i8, ptr %i.g, i64 180
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = and i32 %i.lv, %i.bo
end_hunk_0
