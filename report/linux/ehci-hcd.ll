inline.NumInlined: 739
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@iso_stream_schedule:bb.a
  br label %bb.q

bb.q:                                             ; preds = %ehci_read_frame_index.exit._crit_edge, %bb.p
  %i.eb = phi i32 [ %.pre, %ehci_read_frame_index.exit._crit_edge ], [ %i.dz, %bb.p ]
  %i.ec = shl i32 %i.eb, 3                        ; 4 uses
  %i.ed = sub i32 %.0144, %i.ec
  %i.ee = and i32 %i.ed, %i.dp                    ; 3 uses
  %i.ef = getelementptr i8, ptr %2, i64 96        ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8
  %i.eh = sub i32 %i.eg, %i.ec
  %i.ei = and i32 %i.eh, %i.dp                    ; 10 uses
  br i1 %i.dc, label %bb.ab, label %bb.r, !prof !68

bb.r:                                             ; preds = %bb.q
  %i.ej = sub i32 %i.dq, %i.ec
  %i.ek = and i32 %i.ej, %i.dp                    ; 4 uses
  %i.el = icmp ult i32 %i.ei, %i.k
  %i.em = select i1 %i.h, i1 %i.el, i1 false
  br i1 %i.em, label %.thread178, label %bb.s, !prof !68

bb.s:                                             ; preds = %bb.r
  %i.en = add i32 %i.ek, %i.k
  %i.eo = icmp ule i32 %i.ei, %i.en
  %i.ep = select i1 %i.h, i1 true, i1 %i.eo
  br i1 %i.ep, label %bb.t, label %bb.v, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.eq = icmp ult i32 %i.ei, %i.ee
  br i1 %i.eq, label %bb.u, label %.critedge167

bb.u:                                             ; preds = %bb.t
  %i.er = getelementptr i8, ptr %1, i64 92
  %i.es = load i32, ptr %i.er, align 4
  %i.et = and i32 %i.es, 2
  %.not187 = icmp eq i32 %i.et, 0
  br i1 %.not187, label %.critedge167, label %bb.ab, !prof !22

.critedge167:                                     ; preds = %bb.t, %bb.u
  %.not159 = icmp ult i32 %i.ei, %i.ek
  br i1 %.not159, label %bb.x, label %bb.ac, !prof !68

bb.v:                                             ; preds = %bb.s
  %i.eu = getelementptr i8, ptr %1, i64 92
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = and i32 %i.ev, 2
  %.not158 = icmp eq i32 %i.ew, 0
  br i1 %.not158, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.ex = add i32 %i.ek, %i.c
  br label %bb.x

bb.x:                                             ; preds = %.critedge167, %bb.w
  %.0138 = phi i32 [ %i.ek, %.critedge167 ], [ %i.ex, %bb.w ]
  %.0136 = phi i32 [ 0, %.critedge167 ], [ %i.c, %bb.w ] ; 3 uses
  %i.ey = xor i32 %i.ei, -1
  %i.ez = add i32 %i.ey, %i.k
  %i.fa = add i32 %i.ez, %.0138
  %i.fb = and i32 %i.fa, %i.l                     ; 2 uses
  %.not160 = icmp ult i32 %i.fb, %spec.select
  br i1 %.not160, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fc = sub i32 %spec.select, %i.k
  br i1 %i.h, label %bb.z, label %.thread182

.thread182:                                       ; preds = %bb.y
  tail call fastcc void @iso_sched_free(ptr noundef %2, ptr noundef %i.e) #21, !srcloc !213
  store ptr null, ptr %i.d, align 8
  %i.fd = udiv i32 %spec.select, %i.k
  %i.fe = getelementptr i8, ptr %1, i64 172
  store i32 %i.fd, ptr %i.fe, align 4
  br label %bb.ac

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0134 = phi i32 [ %i.fb, %bb.x ], [ %i.fc, %bb.y ] ; 3 uses
  %i.ff = udiv i32 %.0134, %i.k                   ; 2 uses
  %i.fg = getelementptr i8, ptr %1, i64 172
  store i32 %i.ff, ptr %i.fg, align 4
  %.not161 = icmp eq ptr %i.e, null
  br i1 %.not161, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = getelementptr i8, ptr %i.e, i64 20
  store i32 %i.ff, ptr %i.fh, align 4
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.q
  %i.fi = sub i32 %i.ei, %i.ee
  %i.fj = add nsw i32 %i.k, -1
  %i.fk = and i32 %i.fi, %i.fj
  %i.fl = add i32 %i.fk, %i.ee
  br label %bb.ac

bb.ac:                                            ; preds = %.thread182, %bb.z, %bb.aa, %.critedge167, %bb.ab
  %.3143 = phi i32 [ %i.fl, %bb.ab ], [ %i.ei, %.critedge167 ], [ %i.ei, %bb.aa ], [ %i.ei, %bb.z ], [ %i.ei, %.thread182 ] ; 2 uses
  %.1137 = phi i32 [ 0, %bb.ab ], [ 0, %.critedge167 ], [ %.0136, %bb.aa ], [ %.0136, %bb.z ], [ %.0136, %.thread182 ]
  %.1135 = phi i32 [ 0, %bb.ab ], [ 0, %.critedge167 ], [ %.0134, %bb.aa ], [ %.0134, %bb.z ], [ %spec.select, %.thread182 ]
  %.4 = phi i32 [ 0, %bb.ab ], [ 0, %.critedge167 ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %.thread182 ] ; 2 uses
  %i.fm = sub i32 %spec.select, %i.k
  %i.fn = add i32 %i.fm, %.3143
  %i.fo = add i32 %.1137, %i.c
  %.not162 = icmp ult i32 %i.fn, %i.fo
  br i1 %.not162, label %bb.ad, label %.thread178, !prof !22

bb.ad:                                            ; preds = %bb.ac
  %i.fp = add i32 %.3143, %i.ec                   ; 2 uses
  %i.fq = add i32 %.1135, %i.fp
  %i.fr = and i32 %i.fq, %i.dp
  store i32 %i.fr, ptr %i.ef, align 8
  %i.fs = and i32 %i.fp, %i.dp                    ; 2 uses
  %i.ft = getelementptr i8, ptr %1, i64 160       ; 2 uses
  store i32 %i.fs, ptr %i.ft, align 8
  %i.fu = load i8, ptr %i.o, align 1
  %.not163 = icmp eq i8 %i.fu, 0
  br i1 %.not163, label %bb.ae, label %.thread178

bb.ae:                                            ; preds = %bb.ad
  %i.fv = ashr i32 %i.fs, 3
  store i32 %i.fv, ptr %i.ft, align 8
  br label %.thread178

.thread178:                                       ; preds = %itd_slot_ok.exit.loopexit.us, %.critedge, %bb.e, %bb.r, %bb.ac, %bb.ad, %bb.ae
  %.0128 = phi i32 [ %.4, %bb.ad ], [ %.4, %bb.ae ], [ -27, %bb.r ], [ -27, %bb.ac ], [ -28, %.critedge ], [ %i.ac, %bb.e ], [ -28, %itd_slot_ok.exit.loopexit.us ]
  ret i32 %.0128
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @iso_sched_free(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load volatile ptr, ptr %1, align 8       ; 3 uses
  %.not.i = icmp eq ptr %i.a, %1
  br i1 %.not.i, label %list_splice.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val4.i = load ptr, ptr %i.d, align 8          ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  store ptr %i.a, ptr %i.b, align 8
  store ptr %i.c, ptr %.val4.i, align 8
  %i.f = getelementptr i8, ptr %i.c, i64 8
  store ptr %.val4.i, ptr %i.f, align 8
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %bb.b, %bb.c
  tail call void @kfree(ptr noundef nonnull %1) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %list_splice.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef ptr @iso_stream_alloc() unnamed_addr #0 align 16 {
_kzalloc_noprof.exit:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(128) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef range(i32 256, 0) 2336, i64 noundef range(i64 -9223372034707292160, 9223372030412324890) 128) #25 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.a, !prof !68

bb.a:                                             ; preds = %_kzalloc_noprof.exit
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 3 uses
  store volatile ptr %i.c, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.b, i64 24
  store volatile ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  store volatile ptr %i.e, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 40
  store volatile ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.b, i64 96
  store i32 29999, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 86
  store i16 29999, ptr %i.h, align 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_kzalloc_noprof.exit
  ret ptr %i.b
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @iso_stream_init(ptr nofree noundef nonnull captures(none) initializes((8, 9), (48, 64), (84, 86), (90, 91), (92, 93), (104, 112)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr i8, ptr %1, i64 80
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = lshr i32 %i.d, 15
  %i.f = and i32 %i.e, 15                         ; 3 uses
  %i.g = and i32 %i.d, 128                        ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 72         ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val = load i16, ptr %i.j, align 1             ; 2 uses
  %i.k = and i16 %.val, 2047                      ; 5 uses
  %i.l = zext nneg i16 %i.k to i32                ; 3 uses
  %i.m = getelementptr i8, ptr %i.b, i64 28       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = shl nuw nsw i32 %i.g, 4
  %i.q = lshr i16 %.val, 11
  %i.r = and i16 %i.q, 3
  %narrow.i = add nuw nsw i16 %i.r, 1
  %i.s = zext nneg i16 %narrow.i to i32           ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 9
  store i8 1, ptr %i.t, align 1
  %i.u = or disjoint i32 %i.p, %i.l
  %i.v = mul nuw nsw i32 %i.s, %i.l               ; 2 uses
  %i.w = shl nuw nsw i32 %i.f, 8
  %i.x = load i32, ptr %i.b, align 8
  %i.y = or i32 %i.x, %i.w
  %i.z = getelementptr i8, ptr %0, i64 112
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 116
  store i32 %i.u, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %0, i64 120
  store i32 %i.s, ptr %i.ab, align 8
  %i.ac = mul nuw nsw i32 %i.v, 28
  %i.ad = udiv i32 %i.ac, 3
  %i.ae = mul nuw nsw i32 %i.ad, 2083
  %narrow117 = add nuw nsw i32 %i.ae, 639481
  %i.af = udiv i32 %narrow117, 1000
  %i.ag = add nuw nsw i32 %i.af, 1004
  %i.ah = udiv i32 %i.ag, 1000                    ; 2 uses
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = getelementptr i8, ptr %0, i64 90
  store i8 %i.ai, ptr %i.aj, align 2
  %i.ak = load ptr, ptr %i.h, align 8
  %i.al = getelementptr i8, ptr %i.ak, i64 6
  %i.am = load i8, ptr %i.al, align 2
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = getelementptr i8, ptr %1, i64 168       ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.ar)
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.as, i32 64) ; 2 uses
  %i.au = trunc nuw nsw i32 %i.at to i8
  %i.av = getelementptr i8, ptr %0, i64 92
  store i8 %i.au, ptr %i.av, align 4
  %i.aw = load i32, ptr %i.aq, align 8
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = getelementptr i8, ptr %0, i64 104
  store i16 %i.ax, ptr %i.ay, align 8
  %i.az = load i32, ptr %i.aq, align 8
  %i.ba = lshr i32 %i.az, 3
  %i.bb = trunc i32 %i.ba to i16
  %i.bc = getelementptr i8, ptr %0, i64 84
  store i16 %i.bb, ptr %i.bc, align 4
  %.tr = trunc nuw nsw i32 %i.ah to i16
  %.lhs.trunc = shl nuw nsw i16 %.tr, 3
  %.rhs.trunc = trunc nuw nsw i32 %i.at to i16
  %i.bd = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.bd to i32
  %i.be = getelementptr i8, ptr %0, i64 108
  store i32 %.zext, ptr %i.be, align 4
  %i.bf = trunc nuw nsw i32 %i.v to i16
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.g, 0
  %i.bg = getelementptr i8, ptr %i.b, i64 56
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = shl i32 %i.bh, 24
  %i.bj = getelementptr i8, ptr %i.b, i64 48      ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = shl i32 %i.bm, 16
  %i.bo = or i32 %i.bi, %i.bn
  %i.bp = shl nuw nsw i32 %i.f, 8
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = load i32, ptr %i.b, align 8
  %i.bs = or i32 %i.bq, %i.br                     ; 2 uses
  %.lhs.trunc1 = mul nuw i16 %i.k, 28
  %2 = udiv i16 %.lhs.trunc1, 3
  %.zext2 = zext nneg i16 %2 to i32
  %i.bt = mul nuw nsw i32 %.zext2, 2083
  %narrow = add nuw nsw i32 %i.bt, 639481
  %i.bu = udiv i32 %narrow, 1000
  %i.bv = trunc nuw i32 %i.bu to i16
  %.lhs.trunc1.a = add nuw i16 %i.bv, 1004
  %i.bw = udiv i16 %.lhs.trunc1.a, 1000
  %i.bx = trunc nuw nsw i16 %i.bw to i8
  %i.by = getelementptr i8, ptr %0, i64 90        ; 4 uses
  store i8 %i.bx, ptr %i.by, align 2
  %i.bz = load ptr, ptr %i.bj, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = sext i32 %i.cb to i64
  %i.cd = load i32, ptr %i.m, align 4
  %i.ce = tail call i64 @usb_calc_bus_time(i32 noundef %i.cd, i32 noundef %i.g, i32 noundef 1, i32 noundef %i.l) #20
  %i.cf = add nsw i64 %i.cc, 999
  %i.cg = add i64 %i.cf, %i.ce
  %i.ch = sdiv i64 %i.cg, 1000
  %i.ci = trunc i64 %i.ch to i16
  %i.cj = getelementptr i8, ptr %0, i64 80
  store i16 %i.ci, ptr %i.cj, align 8
  %.lhs.trunc3 = add nuw nsw i16 %i.k, 187
  %i.ck = udiv i16 %.lhs.trunc3, 188
  %i.cl = icmp eq i16 %i.k, 0
  %narrow8 = select i1 %i.cl, i16 1, i16 %i.ck    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = zext nneg i16 %narrow8 to i32
  %i.cn = or i32 %i.bs, -2147483648
  %i.co = load i8, ptr %i.by, align 2             ; 2 uses
  %i.cp = getelementptr i8, ptr %0, i64 91
  store i8 %i.co, ptr %i.cp, align 1
  store i8 1, ptr %i.by, align 2
  %i.cq = shl nuw nsw i32 4096, %i.cm
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = add i16 %i.cr, -1023
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ct = zext nneg i16 %narrow8 to i64
  %i.cu = getelementptr i8, ptr @iso_stream_init.smask_out, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 -1
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = zext i8 %i.cw to i16
  %.pre = load i8, ptr %i.by, align 2
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 91
  %.pre9 = load i8, ptr %.phi.trans.insert, align 1
  %i.cy = zext i8 %.pre to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cz = phi i8 [ %.pre9, %bb.e ], [ %i.co, %bb.d ]
  %i.da = phi i16 [ %i.cy, %bb.e ], [ 1, %bb.d ]
  %.sink = phi i16 [ %i.cx, %bb.e ], [ %i.cs, %bb.d ]
  %.0112 = phi i32 [ %i.bs, %bb.e ], [ %i.cn, %bb.d ]
  %i.db = getelementptr i8, ptr %0, i64 82
  store i16 %.sink, ptr %i.db, align 2
  %i.dc = load ptr, ptr %i.h, align 8
  %i.dd = getelementptr i8, ptr %i.dc, i64 6
  %i.de = load i8, ptr %i.dd, align 2
  %i.df = zext i8 %i.de to i32
  %i.dg = add nsw i32 %i.df, -1
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = getelementptr i8, ptr %1, i64 168       ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = tail call i32 @llvm.umin.i32(i32 %i.dh, i32 %i.dj)
  %i.dl = tail call i32 @llvm.umin.i32(i32 %i.dk, i32 8) ; 2 uses
  %i.dm = trunc nuw nsw i32 %i.dl to i8           ; 2 uses
  %i.dn = getelementptr i8, ptr %0, i64 93
  store i8 %i.dm, ptr %i.dn, align 1
  %i.do = shl nuw nsw i8 %i.dm, 3
  %i.dp = getelementptr i8, ptr %0, i64 92
  store i8 %i.do, ptr %i.dp, align 4
  %i.dq = load i32, ptr %i.di, align 8
  %i.dr = trunc i32 %i.dq to i16
  %i.ds = getelementptr i8, ptr %0, i64 84
  store i16 %i.dr, ptr %i.ds, align 4
  %i.dt = load i32, ptr %i.di, align 8
  %.tr115 = trunc i32 %i.dt to i16
  %i.du = shl i16 %.tr115, 3
  %i.dv = getelementptr i8, ptr %0, i64 104
  store i16 %i.du, ptr %i.dv, align 8
  %i.dw = zext i8 %i.cz to i16
  %.lhs.trunc5 = add nuw nsw i16 %i.da, %i.dw
  %.rhs.trunc6 = trunc nuw nsw i32 %i.dl to i16
  %i.dx = udiv i16 %.lhs.trunc5, %.rhs.trunc6
  %.zext7 = zext nneg i16 %i.dx to i32
  %i.dy = getelementptr i8, ptr %0, i64 108
  store i32 %.zext7, ptr %i.dy, align 4
  %i.dz = getelementptr i8, ptr %0, i64 124
  store i32 %.0112, ptr %i.dz, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.0 = phi i16 [ %i.bf, %bb.b ], [ %i.k, %bb.f ]
  %i.ea = getelementptr i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.ea, align 8
  %i.eb = load ptr, ptr %i.h, align 8
  %i.ec = getelementptr i8, ptr %0, i64 56
  store ptr %i.eb, ptr %i.ec, align 8
  %i.ed = or disjoint i32 %i.f, %i.g
  %i.ee = trunc nuw i32 %i.ed to i8
  %i.ef = getelementptr i8, ptr %0, i64 8
  store i8 %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %0, i64 106
  store i16 %.0, ptr %i.eg, align 2
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite)
define internal fastcc range(i32 0, 2) i32 @sitd_slot_ok(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #15 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 82         ; 2 uses
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 5 uses
  %i.d = and i32 %2, 7                            ; 2 uses
  %i.e = and i32 %i.c, 255
  %i.f = shl nuw nsw i32 %i.e, %i.d
  %i.g = icmp samesign ugt i32 %i.f, 127
  %i.h = shl nuw nsw i32 %i.c, %i.d
  %i.i = icmp samesign ugt i32 %i.h, 65535
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 92
  %i.k = load i8, ptr %i.j, align 4
  %i.l = zext i8 %i.k to i32                      ; 4 uses
  %i.m = add nsw i32 %i.l, -1
  %i.n = and i32 %i.m, %2                         ; 5 uses
  %i.o = lshr i32 %i.n, 3
  %i.p = and i32 %i.n, 7
  %i.q = getelementptr i8, ptr %1, i64 80
  %.val = load i16, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %1, i64 93
  %.val58 = load i8, ptr %i.r, align 1
  %i.s = tail call fastcc i32 @tt_available(ptr noundef %0, i16 %.val, i8 %.val58, ptr noundef %3, i32 noundef %i.o, i32 noundef %i.p) #21
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.t = getelementptr i8, ptr %0, i64 428
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = getelementptr i8, ptr %1, i64 90
  %i.w = load i8, ptr %i.v, align 2
  %i.x = zext i8 %i.w to i32
  %i.y = sub i32 %i.u, %i.x
  %i.z = and i16 %i.b, 255                        ; 2 uses
  %i.aa = zext nneg i16 %i.z to i32
  %.not552 = icmp eq i16 %i.z, 0
  %i.ab = getelementptr i8, ptr %0, i64 722       ; 3 uses
  %i.ac = getelementptr i8, ptr %1, i64 91        ; 2 uses
  br i1 %.not552, label %.preheader.split.us, label %.lr.ph

.preheader.split.us:                              ; preds = %.preheader
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %.not56.us = icmp eq i8 %i.ad, 0
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub i32 %i.u, %i.ae
  br i1 %.not56.us, label %.preheader.split.us.split.us, label %.preheader.split.us.split

.preheader.split.us.split.us:                     ; preds = %.preheader.split.us, %.preheader.split.us.split.us
  %.052.us.us = phi i32 [ %i.ag, %.preheader.split.us.split.us ], [ %i.n, %.preheader.split.us ]
  %i.ag = add i32 %.052.us.us, %i.l               ; 3 uses
  %i.ah = icmp ult i32 %i.ag, 64
  br i1 %i.ah, label %.preheader.split.us.split.us, label %.split.us, !llvm.loop !214

.preheader.split.us.split:                        ; preds = %.preheader.split.us, %.loopexit.us
  %.052.us = phi i32 [ %i.at, %.loopexit.us ], [ %i.n, %.preheader.split.us ] ; 4 uses
  %i.ai = and i32 %.052.us, 6
  %.not32 = icmp eq i32 %i.ai, 6
  br i1 %.not32, label %.loopexit.us, label %.lr.ph8.us.preheader

.lr.ph8.us.preheader:                             ; preds = %.preheader.split.us.split
  %i.aj = and i32 %.052.us, -8
  %i.ak = and i32 %.052.us, 7
  %narrow31 = add nuw nsw i32 %i.ak, 2
  %i.al = zext nneg i32 %narrow31 to i64
  %i.am = zext i32 %i.aj to i64
  %invariant.gep39 = getelementptr i8, ptr %i.ab, i64 %i.am
  br label %.lr.ph8.us

.lr.ph8.us:                                       ; preds = %.lr.ph8.us.preheader, %bb.d
  %indvars.iv20 = phi i64 [ %i.al, %.lr.ph8.us.preheader ], [ %indvars.iv.next21, %bb.d ] ; 2 uses
  %.15.us = phi i32 [ 1024, %.lr.ph8.us.preheader ], [ %i.as, %bb.d ] ; 2 uses
  %i.an = and i32 %.15.us, %i.c
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph8.us
  %gep40 = getelementptr i8, ptr %invariant.gep39, i64 %indvars.iv20
  %i.ap = load i8, ptr %gep40, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = icmp ult i32 %i.af, %i.aq
  br i1 %i.ar, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph8.us
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %i.as = shl nuw nsw i32 %.15.us, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 8
end_hunk_0
