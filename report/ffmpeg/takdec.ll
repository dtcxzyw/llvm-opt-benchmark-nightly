Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/takdec?download=true
inline.NumInlined: 72
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@decorrelate:bb.a
  %i.cb = icmp sgt i32 %i.s, 255
  br i1 %i.cb, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !42 ; 3 uses
  %.not.i.i195 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i195, label %bb.m, label %bits_read_bit_le.exit.i196

bb.m:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 16, !tbaa !41 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !43
  %.not.i.i.i204 = icmp ult ptr %i.cf, %i.ch
  br i1 %.not.i.i.i204, label %bits_read_bit_le.exit.thread11.i205, label %get_bits_esc4.exit207.thread

bits_read_bit_le.exit.i196:                       ; preds = %bb.l
  %.val.i.pre.i.i197 = load i64, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %i.ci = add i32 %i.cd, -1                       ; 5 uses
  %i.cj = lshr i64 %.val.i.pre.i.i197, 1          ; 4 uses
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !45
  store i32 %i.ci, ptr %i.cc, align 8, !tbaa !42
  %i.ck = and i64 %.val.i.pre.i.i197, 1
  %.not.i198 = icmp eq i64 %i.ck, 0
  br i1 %.not.i198, label %get_bits_esc4.exit207, label %bb.n

bits_read_bit_le.exit.thread11.i205:              ; preds = %bb.m
  %i.cl = load i64, ptr %i.cf, align 1, !tbaa !46 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cm, ptr %i.ce, align 16, !tbaa !41
  %i.cn = lshr i64 %i.cl, 1                       ; 2 uses
  %i.co = and i64 %i.cl, 1
  %.not13.i206 = icmp eq i64 %i.co, 0
  br i1 %.not13.i206, label %bits_read_bit_le.exit.thread358, label %bits_read_nz_le.exit.i199

bb.n:                                             ; preds = %bits_read_bit_le.exit.i196
  %i.cp = icmp ult i32 %i.cd, 5
  br i1 %i.cp, label %bb.o, label %bits_read_nz_le.exit.i199

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !41 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !43
  %.not.i.i3.i202 = icmp ult ptr %i.cr, %i.ct
  br i1 %.not.i.i3.i202, label %bits_priv_refill_32_le.exit.i.i203, label %bits_read_nz_le.exit.i199

bits_priv_refill_32_le.exit.i.i203:               ; preds = %bb.o
  %i.cu = load i32, ptr %i.cr, align 1, !tbaa !46
  %i.cv = zext i32 %i.cu to i64
  %i.cw = zext nneg i32 %i.ci to i64
  %i.cx = shl nuw nsw i64 %i.cv, %i.cw
  %i.cy = or i64 %i.cx, %i.cj
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store ptr %i.cz, ptr %i.cq, align 16, !tbaa !41
  %i.da = or disjoint i32 %i.ci, 32
  br label %bits_read_nz_le.exit.i199

bits_read_nz_le.exit.i199:                        ; preds = %bits_priv_refill_32_le.exit.i.i203, %bb.o, %bb.n, %bits_read_bit_le.exit.thread11.i205
  %.val.i.i2.i200 = phi i64 [ %i.cy, %bits_priv_refill_32_le.exit.i.i203 ], [ %i.cj, %bb.n ], [ %i.cj, %bb.o ], [ %i.cn, %bits_read_bit_le.exit.thread11.i205 ] ; 2 uses
  %i.db = phi i32 [ %i.da, %bits_priv_refill_32_le.exit.i.i203 ], [ %i.ci, %bb.n ], [ 4, %bb.o ], [ 63, %bits_read_bit_le.exit.thread11.i205 ]
  %i.dc = lshr i64 %.val.i.i2.i200, 4
  store i64 %i.dc, ptr %i.a, align 8, !tbaa !45
  %i.dd = add i32 %i.db, -4                       ; 2 uses
  store i32 %i.dd, ptr %i.cc, align 8, !tbaa !42
  %i.de = trunc i64 %.val.i.i2.i200 to i32
  %i.df = and i32 %i.de, 15
  %i.dg = add nuw nsw i32 %i.df, 1
  br label %get_bits_esc4.exit207

get_bits_esc4.exit207:                            ; preds = %bits_read_bit_le.exit.i196, %bits_read_nz_le.exit.i199
  %.pr242 = phi i32 [ %i.dd, %bits_read_nz_le.exit.i199 ], [ %i.ci, %bits_read_bit_le.exit.i196 ] ; 2 uses
  %.0.i201 = phi i32 [ %i.dg, %bits_read_nz_le.exit.i199 ], [ 0, %bits_read_bit_le.exit.i196 ] ; 3 uses
  %.not.i208 = icmp eq i32 %.pr242, 0
  br i1 %.not.i208, label %get_bits_esc4.exit207.thread, label %bits_read_bit_le.exit

get_bits_esc4.exit207.thread:                     ; preds = %bb.m, %get_bits_esc4.exit207
  %.0.i201347 = phi i32 [ %.0.i201, %get_bits_esc4.exit207 ], [ 0, %bb.m ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 16, !tbaa !41 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !43
  %.not.i.i210 = icmp ult ptr %i.di, %i.dk
  br i1 %.not.i.i210, label %bits_priv_refill_64_le.exit.i, label %bits_read_bit_le.exit.thread

bits_priv_refill_64_le.exit.i:                    ; preds = %get_bits_esc4.exit207.thread
  %i.dl = load i64, ptr %i.di, align 1, !tbaa !46
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dm, ptr %i.dh, align 16, !tbaa !41
  br label %bits_read_bit_le.exit.thread358

bits_read_bit_le.exit.thread358:                  ; preds = %bits_priv_refill_64_le.exit.i, %bits_read_bit_le.exit.thread11.i205
  %.0.i201240.ph = phi i32 [ 0, %bits_read_bit_le.exit.thread11.i205 ], [ %.0.i201347, %bits_priv_refill_64_le.exit.i ]
  %.ph = phi i32 [ 62, %bits_read_bit_le.exit.thread11.i205 ], [ 63, %bits_priv_refill_64_le.exit.i ]
  %.val.i.i.ph = phi i64 [ %i.cn, %bits_read_bit_le.exit.thread11.i205 ], [ %i.dl, %bits_priv_refill_64_le.exit.i ] ; 2 uses
  %i.dn = lshr i64 %.val.i.i.ph, 1
  store i64 %i.dn, ptr %i.a, align 8, !tbaa !45
  %i.do = trunc i64 %.val.i.i.ph to i32
  %i.dp = and i32 %i.do, 1                        ; 2 uses
  %i.dq = shl nuw nsw i32 8, %i.dp
  br label %bits_read_bit_le.exit218

bits_read_bit_le.exit:                            ; preds = %get_bits_esc4.exit207
  %.val.i.pre.i.pre = load i64, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %i.dr = add i32 %.pr242, -1                     ; 3 uses
  %i.ds = lshr i64 %.val.i.pre.i.pre, 1
  store i64 %i.ds, ptr %i.a, align 8, !tbaa !45
  store i32 %i.dr, ptr %i.cc, align 8, !tbaa !42
  %i.dt = trunc i64 %.val.i.pre.i.pre to i32
  %i.du = and i32 %i.dt, 1                        ; 3 uses
  %i.dv = shl nuw nsw i32 8, %i.du                ; 2 uses
  %.not.i211 = icmp eq i32 %i.dr, 0
  br i1 %.not.i211, label %bits_read_bit_le.exit.thread, label %bits_read_bit_le.exit218

bits_read_bit_le.exit.thread:                     ; preds = %get_bits_esc4.exit207.thread, %bits_read_bit_le.exit
  %i.dw = phi i32 [ %i.dv, %bits_read_bit_le.exit ], [ 8, %get_bits_esc4.exit207.thread ] ; 2 uses
  %.0.i209357 = phi i32 [ %i.du, %bits_read_bit_le.exit ], [ 0, %get_bits_esc4.exit207.thread ] ; 2 uses
  %.0.i201239354 = phi i32 [ %.0.i201, %bits_read_bit_le.exit ], [ %.0.i201347, %get_bits_esc4.exit207.thread ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 16, !tbaa !41 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !43
  %.not.i.i216 = icmp ult ptr %i.dy, %i.ea
  br i1 %.not.i.i216, label %bits_read_bit_le.exit218.thread376, label %bits_read_bit_le.exit218.thread

bits_read_bit_le.exit218.thread376:               ; preds = %bits_read_bit_le.exit.thread
  %i.eb = load i64, ptr %i.dy, align 1, !tbaa !46 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.ec, ptr %i.dx, align 16, !tbaa !41
  %i.ed = lshr i64 %i.eb, 1
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !45
  %i.ee = and i64 %i.eb, 1
  %i.ef = icmp eq i64 %i.ee, 0
  br label %._crit_edge.i220

bits_read_bit_le.exit218:                         ; preds = %bits_read_bit_le.exit, %bits_read_bit_le.exit.thread358
  %i.eg = phi i32 [ %i.dq, %bits_read_bit_le.exit.thread358 ], [ %i.dv, %bits_read_bit_le.exit ] ; 2 uses
  %i.eh = phi i32 [ %i.dp, %bits_read_bit_le.exit.thread358 ], [ %i.du, %bits_read_bit_le.exit ] ; 2 uses
  %i.ei = phi i32 [ %.ph, %bits_read_bit_le.exit.thread358 ], [ %i.dr, %bits_read_bit_le.exit ]
  %.0.i201240362 = phi i32 [ %.0.i201240.ph, %bits_read_bit_le.exit.thread358 ], [ %.0.i201, %bits_read_bit_le.exit ] ; 2 uses
  %.val.i.pre.i213 = load i64, ptr %i.a, align 8, !tbaa !45 ; 2 uses
  %i.ej = add i32 %i.ei, -1                       ; 3 uses
  %i.ek = lshr i64 %.val.i.pre.i213, 1
  store i64 %i.ek, ptr %i.a, align 8, !tbaa !45
  store i32 %i.ej, ptr %i.cc, align 8, !tbaa !42
  %i.el = and i64 %.val.i.pre.i213, 1
  %i.em = icmp eq i64 %i.el, 0                    ; 2 uses
  %.not.i219 = icmp eq i32 %i.ej, 0
  br i1 %.not.i219, label %bits_read_bit_le.exit218.thread, label %._crit_edge.i220

._crit_edge.i220:                                 ; preds = %bits_read_bit_le.exit218.thread376, %bits_read_bit_le.exit218
  %i.en = phi i1 [ %i.ef, %bits_read_bit_le.exit218.thread376 ], [ %i.em, %bits_read_bit_le.exit218 ]
  %i.eo = phi i32 [ 63, %bits_read_bit_le.exit218.thread376 ], [ %i.ej, %bits_read_bit_le.exit218 ]
  %.0.i201239353382 = phi i32 [ %.0.i201239354, %bits_read_bit_le.exit218.thread376 ], [ %.0.i201240362, %bits_read_bit_le.exit218 ]
  %.0.i209356381 = phi i32 [ %.0.i209357, %bits_read_bit_le.exit218.thread376 ], [ %i.eh, %bits_read_bit_le.exit218 ]
  %i.ep = phi i32 [ %i.dw, %bits_read_bit_le.exit218.thread376 ], [ %i.eg, %bits_read_bit_le.exit218 ]
  %.val.i.pre.i221 = load i64, ptr %i.a, align 8, !tbaa !45
  %i.eq = add i32 %i.eo, -1
  br label %bb.p

bits_read_bit_le.exit218.thread:                  ; preds = %bits_read_bit_le.exit.thread, %bits_read_bit_le.exit218
  %.0.i215375 = phi i1 [ %i.em, %bits_read_bit_le.exit218 ], [ true, %bits_read_bit_le.exit.thread ] ; 2 uses
  %.0.i201239352372 = phi i32 [ %.0.i201240362, %bits_read_bit_le.exit218 ], [ %.0.i201239354, %bits_read_bit_le.exit.thread ] ; 2 uses
  %.0.i209355369 = phi i32 [ %i.eh, %bits_read_bit_le.exit218 ], [ %.0.i209357, %bits_read_bit_le.exit.thread ] ; 2 uses
  %i.er = phi i32 [ %i.eg, %bits_read_bit_le.exit218 ], [ %i.dw, %bits_read_bit_le.exit.thread ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 16, !tbaa !41 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !43
  %.not.i.i224 = icmp ult ptr %i.et, %i.ev
  br i1 %.not.i.i224, label %bits_priv_refill_64_le.exit.i225, label %.bits_read_bit_le.exit226_crit_edge

.bits_read_bit_le.exit226_crit_edge:              ; preds = %bits_read_bit_le.exit218.thread
  %.promoted249.pre = load i64, ptr %i.a, align 8
  br label %bits_read_bit_le.exit226

bits_priv_refill_64_le.exit.i225:                 ; preds = %bits_read_bit_le.exit218.thread
  %i.ew = load i64, ptr %i.et, align 1, !tbaa !46
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.ex, ptr %i.es, align 16, !tbaa !41
  br label %bb.p

bb.p:                                             ; preds = %bits_priv_refill_64_le.exit.i225, %._crit_edge.i220
  %.0.i215374 = phi i1 [ %i.en, %._crit_edge.i220 ], [ %.0.i215375, %bits_priv_refill_64_le.exit.i225 ]
  %.0.i201239352371 = phi i32 [ %.0.i201239353382, %._crit_edge.i220 ], [ %.0.i201239352372, %bits_priv_refill_64_le.exit.i225 ]
  %.0.i209355368 = phi i32 [ %.0.i209356381, %._crit_edge.i220 ], [ %.0.i209355369, %bits_priv_refill_64_le.exit.i225 ]
  %i.ey = phi i32 [ %i.ep, %._crit_edge.i220 ], [ %i.er, %bits_priv_refill_64_le.exit.i225 ]
  %i.ez = phi i32 [ %i.eq, %._crit_edge.i220 ], [ 63, %bits_priv_refill_64_le.exit.i225 ] ; 2 uses
  %.val.i.i222 = phi i64 [ %.val.i.pre.i221, %._crit_edge.i220 ], [ %i.ew, %bits_priv_refill_64_le.exit.i225 ] ; 2 uses
  %i.fa = lshr i64 %.val.i.i222, 1                ; 2 uses
  store i64 %i.fa, ptr %i.a, align 8, !tbaa !45
  store i32 %i.ez, ptr %i.cc, align 8, !tbaa !42
  %i.fb = trunc i64 %.val.i.i222 to i1
  br label %bits_read_bit_le.exit226

bits_read_bit_le.exit226:                         ; preds = %.bits_read_bit_le.exit226_crit_edge, %bb.p
  %.0.i215373 = phi i1 [ %.0.i215374, %bb.p ], [ %.0.i215375, %.bits_read_bit_le.exit226_crit_edge ]
  %.0.i201239352370 = phi i32 [ %.0.i201239352371, %bb.p ], [ %.0.i201239352372, %.bits_read_bit_le.exit226_crit_edge ] ; 7 uses
  %.0.i209355367 = phi i32 [ %.0.i209355368, %bb.p ], [ %.0.i209355369, %.bits_read_bit_le.exit226_crit_edge ] ; 2 uses
  %i.fc = phi i32 [ %i.ey, %bb.p ], [ %i.er, %.bits_read_bit_le.exit226_crit_edge ] ; 7 uses
  %.promoted249 = phi i64 [ %i.fa, %bb.p ], [ %.promoted249.pre, %.bits_read_bit_le.exit226_crit_edge ]
  %.promoted = phi i32 [ %i.ez, %bb.p ], [ 0, %.bits_read_bit_le.exit226_crit_edge ]
  %.0.i223 = phi i1 [ %i.fb, %bb.p ], [ false, %.bits_read_bit_le.exit226_crit_edge ]
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %wide.trip.count = zext i32 %i.fc to i64        ; 5 uses
  br label %bb.q

bb.q:                                             ; preds = %bits_read_bit_le.exit226, %bits_read_signed_nz_le.exit236
  %indvars.iv = phi i64 [ 0, %bits_read_bit_le.exit226 ], [ %indvars.iv.next, %bits_read_signed_nz_le.exit236 ] ; 3 uses
  %.0166255 = phi i32 [ undef, %bits_read_bit_le.exit226 ], [ %.1167, %bits_read_signed_nz_le.exit236 ]
  %i.fg = phi i32 [ %.promoted, %bits_read_bit_le.exit226 ], [ %i.gq, %bits_read_signed_nz_le.exit236 ] ; 5 uses
  %.val.i.i.pre2.i234251253 = phi i64 [ %.promoted249, %bits_read_bit_le.exit226 ], [ %i.gp, %bits_read_signed_nz_le.exit236 ] ; 4 uses
  %i.fh = and i64 %indvars.iv, 3
  %.not190 = icmp eq i64 %i.fh, 0
  br i1 %.not190, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.fi = icmp ult i32 %i.fg, 3
  br i1 %i.fi, label %bb.s, label %bits_read_nz_le.exit

bb.s:                                             ; preds = %bb.r
  %i.fj = load ptr, ptr %i.fe, align 16, !tbaa !41 ; 3 uses
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !43
  %.not.i.i228 = icmp ult ptr %i.fj, %i.fk
  br i1 %.not.i.i228, label %bits_priv_refill_32_le.exit.i, label %bits_read_nz_le.exit

bits_priv_refill_32_le.exit.i:                    ; preds = %bb.s
  %i.fl = load i32, ptr %i.fj, align 1, !tbaa !46
  %i.fm = zext i32 %i.fl to i64
  %i.fn = zext nneg i32 %i.fg to i64
  %i.fo = shl nuw nsw i64 %i.fm, %i.fn
  %i.fp = or i64 %i.fo, %.val.i.i.pre2.i234251253
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store ptr %i.fq, ptr %i.fe, align 16, !tbaa !41
  %i.fr = or disjoint i32 %i.fg, 32
  br label %bits_read_nz_le.exit

bits_read_nz_le.exit:                             ; preds = %bb.r, %bb.s, %bits_priv_refill_32_le.exit.i
  %.val.i.i.pre2.i234252 = phi i64 [ %i.fp, %bits_priv_refill_32_le.exit.i ], [ %.val.i.i.pre2.i234251253, %bb.r ], [ %.val.i.i.pre2.i234251253, %bb.s ] ; 2 uses
  %i.fs = phi i32 [ %i.fr, %bits_priv_refill_32_le.exit.i ], [ %i.fg, %bb.r ], [ 3, %bb.s ]
  %i.ft = lshr i64 %.val.i.i.pre2.i234252, 3      ; 2 uses
  store i64 %i.ft, ptr %i.a, align 8, !tbaa !45
  %i.fu = add i32 %i.fs, -3                       ; 2 uses
  store i32 %i.fu, ptr %i.cc, align 8, !tbaa !42
  %i.fv = trunc i64 %.val.i.i.pre2.i234252 to i32
  %i.fw = and i32 %i.fv, 7
  %i.fx = sub nuw nsw i32 14, %i.fw
  br label %bb.t

bb.t:                                             ; preds = %bits_read_nz_le.exit, %bb.q
  %.val.i.i.pre2.i234250 = phi i64 [ %.val.i.i.pre2.i234251253, %bb.q ], [ %i.ft, %bits_read_nz_le.exit ] ; 3 uses
  %i.fy = phi i32 [ %i.fg, %bb.q ], [ %i.fu, %bits_read_nz_le.exit ] ; 4 uses
  %.1167 = phi i32 [ %.0166255, %bb.q ], [ %i.fx, %bits_read_nz_le.exit ] ; 7 uses
  %i.fz = icmp ugt i32 %.1167, %i.fy
  br i1 %i.fz, label %bb.u, label %bits_read_signed_nz_le.exit236

bb.u:                                             ; preds = %bb.t
  %i.ga = load ptr, ptr %i.fe, align 16, !tbaa !41 ; 3 uses
  %i.gb = load ptr, ptr %i.ff, align 8, !tbaa !43
  %.not.i.i.i233 = icmp ult ptr %i.ga, %i.gb
  br i1 %.not.i.i.i233, label %bits_priv_refill_32_le.exit.i.i235, label %bits_read_signed_nz_le.exit236

bits_priv_refill_32_le.exit.i.i235:               ; preds = %bb.u
  %i.gc = load i32, ptr %i.ga, align 1, !tbaa !46
  %i.gd = zext i32 %i.gc to i64
  %i.ge = zext nneg i32 %i.fy to i64
  %i.gf = shl nuw nsw i64 %i.gd, %i.ge
  %i.gg = or i64 %i.gf, %.val.i.i.pre2.i234250
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store ptr %i.gh, ptr %i.fe, align 16, !tbaa !41
  %i.gi = add nuw nsw i32 %i.fy, 32
  br label %bits_read_signed_nz_le.exit236

bits_read_signed_nz_le.exit236:                   ; preds = %bb.t, %bb.u, %bits_priv_refill_32_le.exit.i.i235
  %.val.i.i.i232 = phi i64 [ %i.gg, %bits_priv_refill_32_le.exit.i.i235 ], [ %.val.i.i.pre2.i234250, %bb.u ], [ %.val.i.i.pre2.i234250, %bb.t ] ; 2 uses
  %i.gj = phi i32 [ %i.gi, %bits_priv_refill_32_le.exit.i.i235 ], [ %.1167, %bb.u ], [ %i.fy, %bb.t ]
  %i.gk = sub i32 64, %.1167
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = lshr i64 -1, %i.gl
  %i.gn = and i64 %.val.i.i.i232, %i.gm
  %i.go = zext nneg i32 %.1167 to i64
  %i.gp = lshr i64 %.val.i.i.i232, %i.go          ; 2 uses
  store i64 %i.gp, ptr %i.a, align 8, !tbaa !45
  %i.gq = sub i32 %i.gj, %.1167                   ; 2 uses
  store i32 %i.gq, ptr %i.cc, align 8, !tbaa !42
  %i.gr = trunc i64 %i.gn to i32
  %i.gs = sub i32 32, %.1167                      ; 2 uses
  %i.gt = shl i32 %i.gr, %i.gs
  %i.gu = ashr exact i32 %i.gt, %i.gs
  %i.gv = trunc i32 %i.gu to i16
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %indvars.iv
  store i16 %i.gv, ptr %i.gw, align 2, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.v, label %bb.q, !llvm.loop !120

bb.v:                                             ; preds = %bits_read_signed_nz_le.exit236
  %i.gx = lshr i32 %i.fc, 1                       ; 4 uses
  %.neg245 = add nuw i32 %i.s, 1
  %i.gy = sub i32 %.neg245, %i.fc                 ; 2 uses
  br i1 %.0.i215373, label %.loopexit248, label %.preheader247.preheader

.preheader247.preheader:                          ; preds = %bb.v
  %wide.trip.count284 = zext nneg i32 %i.gx to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.fc, 16
  br i1 %min.iters.check, label %.preheader247.preheader491, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader247.preheader
  %i.gz = shl nuw nsw i64 %wide.trip.count284, 2  ; 2 uses
  %scevgep = getelementptr i8, ptr %.1164, i64 %i.gz
  %scevgep391 = getelementptr i8, ptr %.1170, i64 %i.gz
  %bound0 = icmp ult ptr %.1164, %scevgep391
  %bound1 = icmp ult ptr %.1170, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader247.preheader491, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count284, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.1164, i64 %index ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ha, align 4, !tbaa !52, !alias.scope !145, !noalias !146
  %wide.load392 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !52, !alias.scope !145, !noalias !146
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.1170, i64 %index ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load393 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !52, !alias.scope !146
  %wide.load394 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !52, !alias.scope !146
  %i.he = add nsw <4 x i32> %wide.load393, %wide.load
  %i.hf = add nsw <4 x i32> %wide.load394, %wide.load392
  store <4 x i32> %i.he, ptr %i.ha, align 4, !tbaa !52, !alias.scope !145, !noalias !146
  store <4 x i32> %i.hf, ptr %i.hb, align 4, !tbaa !52, !alias.scope !145, !noalias !146
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count284
  br i1 %cmp.n, label %.loopexit248, label %.preheader247.preheader491

.preheader247.preheader491:                       ; preds = %vector.memcheck, %.preheader247.preheader, %middle.block
  %indvars.iv281.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader247.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count284, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader247.prol.loopexit, label %.preheader247.prol

.preheader247.prol:                               ; preds = %.preheader247.preheader491, %.preheader247.prol
  %indvars.iv281.prol = phi i64 [ %indvars.iv.next282.prol, %.preheader247.prol ], [ %indvars.iv281.ph, %.preheader247.preheader491 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader247.prol ], [ 0, %.preheader247.preheader491 ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.1164, i64 %indvars.iv281.prol ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !52
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.1170, i64 %indvars.iv281.prol
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !52
  %i.hl = add nsw i32 %i.hk, %i.hi
  store i32 %i.hl, ptr %i.hh, align 4, !tbaa !52
  %indvars.iv.next282.prol = add nuw nsw i64 %indvars.iv281.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader247.prol.loopexit, label %.preheader247.prol, !llvm.loop !125

.preheader247.prol.loopexit:                      ; preds = %.preheader247.prol, %.preheader247.preheader491
  %indvars.iv281.unr = phi i64 [ %indvars.iv281.ph, %.preheader247.preheader491 ], [ %indvars.iv.next282.prol, %.preheader247.prol ]
  %i.hm = sub nsw i64 %indvars.iv281.ph, %wide.trip.count284
  %i.hn = icmp ugt i64 %i.hm, -4
  br i1 %i.hn, label %.loopexit248, label %.preheader247

.preheader247:                                    ; preds = %.preheader247.prol.loopexit, %.preheader247
  %indvars.iv281 = phi i64 [ %indvars.iv.next282.3, %.preheader247 ], [ %indvars.iv281.unr, %.preheader247.prol.loopexit ] ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.1164, i64 %indvars.iv281 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !52
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.1170, i64 %indvars.iv281
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !52
  %i.hs = add nsw i32 %i.hr, %i.hp
  store i32 %i.hs, ptr %i.ho, align 4, !tbaa !52
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.1164, i64 %indvars.iv.next282 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !52
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.1170, i64 %indvars.iv.next282
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !52
  %i.hx = add nsw i32 %i.hw, %i.hu
  store i32 %i.hx, ptr %i.ht, align 4, !tbaa !52
  %indvars.iv.next282.1 = add nuw nsw i64 %indvars.iv281, 2 ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.1164, i64 %indvars.iv.next282.1 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !52
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.1170, i64 %indvars.iv.next282.1
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !52
  %i.ic = add nsw i32 %i.ib, %i.hz
  store i32 %i.ic, ptr %i.hy, align 4, !tbaa !52
  %indvars.iv.next282.2 = add nuw nsw i64 %indvars.iv281, 3 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.1164, i64 %indvars.iv.next282.2 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !52
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.1170, i64 %indvars.iv.next282.2
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !52
  %i.ih = add nsw i32 %i.ig, %i.ie
  store i32 %i.ih, ptr %i.id, align 4, !tbaa !52
  %indvars.iv.next282.3 = add nuw nsw i64 %indvars.iv281, 4 ; 2 uses
  %exitcond285.not.3 = icmp eq i64 %indvars.iv.next282.3, %wide.trip.count284
  br i1 %exitcond285.not.3, label %.loopexit248, label %.preheader247, !llvm.loop !126

.loopexit248:                                     ; preds = %.preheader247.prol.loopexit, %.preheader247, %middle.block, %bb.v
  %i.ii = add i32 %i.gy, %i.gx                    ; 2 uses
  %i.ij = icmp slt i32 %i.ii, %i.s
  %or.cond275 = select i1 %.0.i223, i1 %i.ij, i1 false
  br i1 %or.cond275, label %.lr.ph.preheader, label %.loopexit246

.lr.ph.preheader:                                 ; preds = %.loopexit248
  %i.ik = sext i32 %i.ii to i64                   ; 6 uses
  %i.il = add nsw i32 %i.fc, -2
  %i.im = sub i32 %i.il, %i.gx                    ; 2 uses
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = add nuw nsw i64 %i.in, 1                ; 2 uses
  %min.iters.check404 = icmp ult i32 %i.im, 15
  br i1 %min.iters.check404, label %.lr.ph.preheader490, label %vector.memcheck395

vector.memcheck395:                               ; preds = %.lr.ph.preheader
  %i.ip = shl nsw i64 %i.ik, 2                    ; 2 uses
  %scevgep396 = getelementptr i8, ptr %.1164, i64 %i.ip
  %i.iq = add nsw i64 %i.ik, %i.in
  %i.ir = shl nsw i64 %i.iq, 2
  %i.is = add nsw i64 %i.ir, 4                    ; 2 uses
  %scevgep397 = getelementptr i8, ptr %.1164, i64 %i.is
  %scevgep398 = getelementptr i8, ptr %.1170, i64 %i.ip
  %scevgep399 = getelementptr i8, ptr %.1170, i64 %i.is
  %bound0400 = icmp ult ptr %scevgep396, %scevgep399
  %bound1401 = icmp ult ptr %scevgep398, %scevgep397
  %found.conflict402 = and i1 %bound0400, %bound1401
  br i1 %found.conflict402, label %.lr.ph.preheader490, label %vector.ph405

vector.ph405:                                     ; preds = %vector.memcheck395
  %n.vec406 = and i64 %i.io, 8589934584           ; 3 uses
  %i.it = add nsw i64 %n.vec406, %i.ik
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next413, %vector.body407 ] ; 2 uses
  %i.iu = add i64 %index408, %i.ik                ; 2 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %.1164, i64 %i.iu ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %wide.load409 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !52, !alias.scope !147, !noalias !148
  %wide.load410 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !52, !alias.scope !147, !noalias !148
  %i.ix = getelementptr inbounds [4 x i8], ptr %.1170, i64 %i.iu ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load411 = load <4 x i32>, ptr %i.ix, align 4, !tbaa !52, !alias.scope !148
  %wide.load412 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !52, !alias.scope !148
  %i.iz = add nsw <4 x i32> %wide.load411, %wide.load409
  %i.ja = add nsw <4 x i32> %wide.load412, %wide.load410
  store <4 x i32> %i.iz, ptr %i.iv, align 4, !tbaa !52, !alias.scope !147, !noalias !148
  store <4 x i32> %i.ja, ptr %i.iw, align 4, !tbaa !52, !alias.scope !147, !noalias !148
  %index.next413 = add nuw i64 %index408, 8       ; 2 uses
  %i.jb = icmp eq i64 %index.next413, %n.vec406
  br i1 %i.jb, label %middle.block414, label %vector.body407, !llvm.loop !130

middle.block414:                                  ; preds = %vector.body407
  %cmp.n415 = icmp eq i64 %i.io, %n.vec406
  br i1 %cmp.n415, label %.loopexit246, label %.lr.ph.preheader490

.lr.ph.preheader490:                              ; preds = %vector.memcheck395, %.lr.ph.preheader, %middle.block414
  %indvars.iv286.ph = phi i64 [ %i.ik, %vector.memcheck395 ], [ %i.ik, %.lr.ph.preheader ], [ %i.it, %middle.block414 ] ; 3 uses
  %i.jc = add nsw i32 %3, %i.r                    ; 2 uses
  %i.jd = trunc i64 %indvars.iv286.ph to i32      ; 2 uses
  %i.je = sub i32 %i.jc, %i.jd
  %xtraiter492 = and i32 %i.je, 3                 ; 2 uses
  %lcmp.mod493.not = icmp eq i32 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader490, %.lr.ph.prol
  %indvars.iv286.prol = phi i64 [ %indvars.iv.next287.prol, %.lr.ph.prol ], [ %indvars.iv286.ph, %.lr.ph.preheader490 ] ; 3 uses
  %prol.iter494 = phi i32 [ %prol.iter494.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader490 ]
  %i.jf = getelementptr inbounds [4 x i8], ptr %.1164, i64 %indvars.iv286.prol ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !52
  %i.jh = getelementptr inbounds [4 x i8], ptr %.1170, i64 %indvars.iv286.prol
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !52
  %i.jj = add nsw i32 %i.ji, %i.jg
  store i32 %i.jj, ptr %i.jf, align 4, !tbaa !52
  %indvars.iv.next287.prol = add nsw i64 %indvars.iv286.prol, 1 ; 2 uses
  %prol.iter494.next = add i32 %prol.iter494, 1   ; 2 uses
  %prol.iter494.cmp.not = icmp eq i32 %prol.iter494.next, %xtraiter492
  br i1 %prol.iter494.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !131

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader490
  %indvars.iv286.unr = phi i64 [ %indvars.iv286.ph, %.lr.ph.preheader490 ], [ %indvars.iv.next287.prol, %.lr.ph.prol ]
  %i.jk = sub i32 %i.jd, %i.jc
  %i.jl = icmp ugt i32 %i.jk, -4
  br i1 %i.jl, label %.loopexit246, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv286 = phi i64 [ %indvars.iv.next287.3, %.lr.ph ], [ %indvars.iv286.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %.1164, i64 %indvars.iv286 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !52
  %i.jo = getelementptr inbounds [4 x i8], ptr %.1170, i64 %indvars.iv286
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !52
  %i.jq = add nsw i32 %i.jp, %i.jn
  store i32 %i.jq, ptr %i.jm, align 4, !tbaa !52
  %indvars.iv.next287 = add nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %.1164, i64 %indvars.iv.next287 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !52
  %i.jt = getelementptr inbounds [4 x i8], ptr %.1170, i64 %indvars.iv.next287
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !52
  %i.jv = add nsw i32 %i.ju, %i.js
  store i32 %i.jv, ptr %i.jr, align 4, !tbaa !52
  %indvars.iv.next287.1 = add nsw i64 %indvars.iv286, 2 ; 2 uses
  %i.jw = getelementptr inbounds [4 x i8], ptr %.1164, i64 %indvars.iv.next287.1 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !52
  %i.jy = getelementptr inbounds [4 x i8], ptr %.1170, i64 %indvars.iv.next287.1
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !52
  %i.ka = add nsw i32 %i.jz, %i.jx
  store i32 %i.ka, ptr %i.jw, align 4, !tbaa !52
  %indvars.iv.next287.2 = add nsw i64 %indvars.iv286, 3 ; 2 uses
  %i.kb = getelementptr inbounds [4 x i8], ptr %.1164, i64 %indvars.iv.next287.2 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !52
  %i.kd = getelementptr inbounds [4 x i8], ptr %.1170, i64 %indvars.iv.next287.2
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !52
  %i.kf = add nsw i32 %i.ke, %i.kc
  store i32 %i.kf, ptr %i.kb, align 4, !tbaa !52
  %indvars.iv.next287.3 = add nsw i64 %indvars.iv286, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next287.3 to i32
  %exitcond289.not.3 = icmp eq i32 %i.s, %lftr.wideiv.3
  br i1 %exitcond289.not.3, label %.loopexit246, label %.lr.ph, !llvm.loop !132

.loopexit246:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block414, %.loopexit248
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 1600 ; 8 uses
  %min.iters.check418 = icmp ult i32 %i.fc, 8
  br i1 %min.iters.check418, label %scalar.ph417.preheader, label %vector.ph419

vector.ph419:                                     ; preds = %.loopexit246
  %n.vec420 = and i64 %wide.trip.count, 4294967288 ; 4 uses
  %i.kh = shl nuw nsw i64 %n.vec420, 2
  %i.ki = getelementptr i8, ptr %.1170, i64 %i.kh ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.i201239352370, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph419
  %index422 = phi i64 [ 0, %vector.ph419 ], [ %index.next425, %vector.body421 ] ; 3 uses
  %i.kj = shl i64 %index422, 2
  %next.gep = getelementptr i8, ptr %.1170, i64 %i.kj ; 2 uses
  %i.kk = getelementptr i8, ptr %next.gep, i64 16
  %wide.load423 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !52
  %wide.load424 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !52
  %i.kl = ashr <4 x i32> %wide.load423, %broadcast.splat
  %i.km = ashr <4 x i32> %wide.load424, %broadcast.splat
  %i.kn = trunc <4 x i32> %i.kl to <4 x i16>
  %i.ko = trunc <4 x i32> %i.km to <4 x i16>
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %index422 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store <4 x i16> %i.kn, ptr %i.kp, align 2, !tbaa !55
  store <4 x i16> %i.ko, ptr %i.kq, align 2, !tbaa !55
  %index.next425 = add nuw i64 %index422, 8       ; 2 uses
  %i.kr = icmp eq i64 %index.next425, %n.vec420
  br i1 %i.kr, label %middle.block426, label %vector.body421, !llvm.loop !133

middle.block426:                                  ; preds = %vector.body421
  %cmp.n427 = icmp eq i64 %n.vec420, %wide.trip.count
  br i1 %cmp.n427, label %.lr.ph271, label %scalar.ph417.preheader

scalar.ph417.preheader:                           ; preds = %.loopexit246, %middle.block426
  %indvars.iv290.ph = phi i64 [ 0, %.loopexit246 ], [ %n.vec420, %middle.block426 ]
  %.2171259.ph = phi ptr [ %.1170, %.loopexit246 ], [ %i.ki, %middle.block426 ]
  br label %scalar.ph417

scalar.ph417:                                     ; preds = %scalar.ph417.preheader, %scalar.ph417
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %scalar.ph417 ], [ %indvars.iv290.ph, %scalar.ph417.preheader ] ; 2 uses
  %.2171259 = phi ptr [ %i.ks, %scalar.ph417 ], [ %.2171259.ph, %scalar.ph417.preheader ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.2171259, i64 4 ; 2 uses
  %i.kt = load i32, ptr %.2171259, align 4, !tbaa !52
  %i.ku = ashr i32 %i.kt, %.0.i201239352370
  %i.kv = trunc i32 %i.ku to i16
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %indvars.iv290
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !55
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count
  br i1 %exitcond294.not, label %.lr.ph271, label %scalar.ph417, !llvm.loop !134

.lr.ph271:                                        ; preds = %scalar.ph417, %middle.block426
  %.lcssa390 = phi ptr [ %i.ki, %middle.block426 ], [ %i.ks, %scalar.ph417 ]
  %i.kx = sub nuw nsw i32 544, %i.fc              ; 2 uses
  %i.ky = zext nneg i32 %i.gx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.1164, i64 %i.ky
  %.not = icmp eq i32 %.0.i209355367, 0
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lb = shl nuw nsw i32 16, %.0.i209355367
  %i.lc = zext nneg i32 %i.lb to i64
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.kg, i64 %wide.trip.count ; 2 uses
  %broadcast.splatinsert473 = insertelement <4 x i32> poison, i32 %.0.i201239352370, i64 0
  %broadcast.splat474 = shufflevector <4 x i32> %broadcast.splatinsert473, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert450 = insertelement <4 x i32> poison, i32 %.0.i201239352370, i64 0
  %broadcast.splat451 = shufflevector <4 x i32> %broadcast.splatinsert450, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph271, %._crit_edge
  %.2269 = phi ptr [ %i.kz, %.lr.ph271 ], [ %.3.lcssa, %._crit_edge ] ; 4 uses
  %.0168268 = phi i32 [ %i.gy, %.lr.ph271 ], [ %i.oj, %._crit_edge ] ; 3 uses
  %.3172267 = phi ptr [ %.lcssa390, %.lr.ph271 ], [ %.4173.lcssa, %._crit_edge ] ; 4 uses
  %i.ld = tail call i32 @llvm.smin.i32(i32 %.0168268, i32 %i.kx) ; 6 uses
  %i.le = icmp sle i32 %.0168268, %i.kx
  %.neg = sext i1 %i.le to i32
  %i.lf = add nsw i32 %i.ld, %.neg                ; 3 uses
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph262.preheader, label %.lr.ph265

.lr.ph262.preheader:                              ; preds = %bb.w
  %wide.trip.count298 = zext nneg i32 %i.lf to i64 ; 3 uses
  %min.iters.check470 = icmp ult i32 %i.lf, 8
  br i1 %min.iters.check470, label %.lr.ph262.preheader486, label %vector.ph471

vector.ph471:                                     ; preds = %.lr.ph262.preheader
  %n.vec472 = and i64 %wide.trip.count298, 2147483640 ; 4 uses
  %i.lh = shl nuw nsw i64 %n.vec472, 2
  %i.li = getelementptr i8, ptr %.3172267, i64 %i.lh ; 2 uses
  br label %vector.body475

vector.body475:                                   ; preds = %vector.body475, %vector.ph471
  %index476 = phi i64 [ 0, %vector.ph471 ], [ %index.next480, %vector.body475 ] ; 3 uses
  %i.lj = shl i64 %index476, 2
  %next.gep477 = getelementptr i8, ptr %.3172267, i64 %i.lj ; 2 uses
  %i.lk = getelementptr i8, ptr %next.gep477, i64 16
  %wide.load478 = load <4 x i32>, ptr %next.gep477, align 4, !tbaa !52
  %wide.load479 = load <4 x i32>, ptr %i.lk, align 4, !tbaa !52
end_hunk_0
