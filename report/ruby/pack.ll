inline.NumInlined: 148
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pack_unpack_internal:bb.a
  %.not45.i = icmp eq i64 %i.pw, 0
  br i1 %.not45.i, label %bb.em, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.px = and i64 %i.pq, 8
  %.not46.i = icmp eq i64 %i.px, 0
  br i1 %.not46.i, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.py = and i64 %i.pq, 4
  %.not47.i = icmp eq i64 %i.py, 0
  br i1 %.not47.i, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.pz = and i64 %i.pq, 2
  %.not48.i = icmp eq i64 %i.pz, 0
  br i1 %.not48.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.qa = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qa, ptr noundef nonnull @.str.28) #13
  unreachable

bb.em:                                            ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %.sink.i = phi i64 [ 31, %bb.eg ], [ 7, %bb.ei ], [ 3, %bb.ej ], [ 15, %bb.eh ], [ 1, %bb.ek ]
  %.not49.i.1 = phi i1 [ false, %bb.eg ], [ false, %bb.ei ], [ false, %bb.ej ], [ true, %bb.eh ], [ false, %bb.ek ]
  %.not49.i.2 = phi i1 [ false, %bb.eg ], [ true, %bb.ei ], [ false, %bb.ej ], [ false, %bb.eh ], [ false, %bb.ek ]
  %.not49.i.3 = phi i1 [ false, %bb.eg ], [ false, %bb.ei ], [ true, %bb.ej ], [ false, %bb.eh ], [ false, %bb.ek ]
  %.0.i1135 = phi i64 [ 2, %bb.eg ], [ 4, %bb.ei ], [ 5, %bb.ej ], [ 3, %bb.eh ], [ 6, %bb.ek ] ; 4 uses
  %i.qb = icmp sgt i64 %.0.i1135, %i.po
  br i1 %i.qb, label %bb.en, label %.lr.ph.preheader.i

bb.en:                                            ; preds = %bb.em
  %i.qc = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qc, ptr noundef nonnull @.str.29, i64 noundef %.0.i1135, i64 noundef %i.po) #13
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.em
  %i.qd = and i64 %.sink.i, %i.pq
  %.04057.i = getelementptr i8, ptr %.198071589, i64 1
  %i.qe = load i8, ptr %.04057.i, align 1, !tbaa !15
  %i.qf = zext i8 %i.qe to i32                    ; 2 uses
  %i.qg = and i32 %i.qf, 192
  %.not50.i = icmp eq i32 %i.qg, 128
  br i1 %.not50.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %i.qh = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qh, ptr noundef nonnull @.str.28) #13
  unreachable

bb.ep:                                            ; preds = %.lr.ph.preheader.i
  %i.qi = and i32 %i.qf, 63
  %i.qj = shl nuw nsw i64 %i.qd, 6                ; 2 uses
  %i.qk = zext nneg i32 %i.qi to i64
  %i.ql = or disjoint i64 %i.qj, %i.qk            ; 2 uses
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ep
  %.04057.i.1 = getelementptr i8, ptr %.198071589, i64 2
  %i.qm = load i8, ptr %.04057.i.1, align 1, !tbaa !15
  %i.qn = zext i8 %i.qm to i32                    ; 2 uses
  %i.qo = and i32 %i.qn, 192
  %.not50.i.1 = icmp eq i32 %i.qo, 128
  br i1 %.not50.i.1, label %bb.eq, label %bb.eo

bb.eq:                                            ; preds = %.lr.ph.i.1
  %i.qp = and i32 %i.qn, 63
  %i.qq = shl nuw nsw i64 %i.ql, 6                ; 2 uses
  %i.qr = zext nneg i32 %i.qp to i64
  %i.qs = or disjoint i64 %i.qq, %i.qr            ; 2 uses
  br i1 %.not49.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.eq
  %.04057.i.2 = getelementptr i8, ptr %.198071589, i64 3
  %i.qt = load i8, ptr %.04057.i.2, align 1, !tbaa !15
  %i.qu = zext i8 %i.qt to i32                    ; 2 uses
  %i.qv = and i32 %i.qu, 192
  %.not50.i.2 = icmp eq i32 %i.qv, 128
  br i1 %.not50.i.2, label %bb.er, label %bb.eo

bb.er:                                            ; preds = %.lr.ph.i.2
  %i.qw = and i32 %i.qu, 63
  %i.qx = shl nuw nsw i64 %i.qs, 6                ; 2 uses
  %i.qy = zext nneg i32 %i.qw to i64
  %i.qz = or disjoint i64 %i.qx, %i.qy            ; 2 uses
  br i1 %.not49.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.er
  %.04057.i.3 = getelementptr i8, ptr %.198071589, i64 4
  %i.ra = load i8, ptr %.04057.i.3, align 1, !tbaa !15
  %i.rb = zext i8 %i.ra to i32                    ; 2 uses
  %i.rc = and i32 %i.rb, 192
  %.not50.i.3 = icmp eq i32 %i.rc, 128
  br i1 %.not50.i.3, label %bb.es, label %bb.eo

bb.es:                                            ; preds = %.lr.ph.i.3
  %i.rd = and i32 %i.rb, 63
  %i.re = shl i64 %i.qz, 6                        ; 2 uses
  %i.rf = zext nneg i32 %i.rd to i64
  %i.rg = or disjoint i64 %i.re, %i.rf            ; 2 uses
  br i1 %.not49.i.3, label %._crit_edge.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.es
  %.04057.i.4 = getelementptr i8, ptr %.198071589, i64 5
  %i.rh = load i8, ptr %.04057.i.4, align 1, !tbaa !15
  %i.ri = zext i8 %i.rh to i32                    ; 2 uses
  %i.rj = and i32 %i.ri, 192
  %.not50.i.4 = icmp eq i32 %i.rj, 128
  br i1 %.not50.i.4, label %bb.et, label %bb.eo

bb.et:                                            ; preds = %.lr.ph.i.4
  %i.rk = and i32 %i.ri, 63
  %i.rl = shl i64 %i.rg, 6                        ; 2 uses
  %i.rm = zext nneg i32 %i.rk to i64
  %i.rn = or disjoint i64 %i.rl, %i.rm
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep
  %.lcssa2441 = phi i64 [ %i.qj, %bb.ep ], [ %i.qq, %bb.eq ], [ %i.qx, %bb.er ], [ %i.re, %bb.es ], [ %i.rl, %bb.et ]
  %.lcssa2440 = phi i64 [ %i.ql, %bb.ep ], [ %i.qs, %bb.eq ], [ %i.qz, %bb.er ], [ %i.rg, %bb.es ], [ %i.rn, %bb.et ] ; 3 uses
  %i.ro = getelementptr [8 x i8], ptr @utf8_limits, i64 %.0.i1135
  %i.rp = getelementptr i8, ptr %i.ro, i64 -8
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !11
  %i.rr = icmp ult i64 %.lcssa2440, %i.rq
  br i1 %i.rr, label %bb.eu, label %utf8_to_uv.exit

bb.eu:                                            ; preds = %._crit_edge.i
  %i.rs = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.rs, ptr noundef nonnull @.str.30) #13
  unreachable

utf8_to_uv.exit:                                  ; preds = %._crit_edge.i
  %i.rt = getelementptr i8, ptr %.198071589, i64 %.0.i1135 ; 2 uses
  %i.ru = add nsw i64 %.248591588, -1             ; 2 uses
  %i.rv = icmp ult i64 %.lcssa2441, 4611686018427387904
  br i1 %i.rv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %utf8_to_uv.exit.thread, %utf8_to_uv.exit
  %i.rw = phi i64 [ %i.ps, %utf8_to_uv.exit.thread ], [ %i.ru, %utf8_to_uv.exit ]
  %i.rx = phi ptr [ %i.pr, %utf8_to_uv.exit.thread ], [ %i.rt, %utf8_to_uv.exit ]
  %.039.i1245 = phi i64 [ %i.pq, %utf8_to_uv.exit.thread ], [ %.lcssa2440, %utf8_to_uv.exit ]
  %i.ry = shl nuw nsw i64 %.039.i1245, 1
  %i.rz = or disjoint i64 %i.ry, 1
  br label %rb_ulong2num_inline.exit

bb.ew:                                            ; preds = %utf8_to_uv.exit
  %i.sa = call i64 @rb_uint2big(i64 noundef %.lcssa2440) #12
  br label %rb_ulong2num_inline.exit

rb_ulong2num_inline.exit:                         ; preds = %bb.ev, %bb.ew
  %i.sb = phi i64 [ %i.rw, %bb.ev ], [ %i.ru, %bb.ew ] ; 2 uses
  %i.sc = phi ptr [ %i.rx, %bb.ev ], [ %i.rt, %bb.ew ] ; 3 uses
  %.0.i1136 = phi i64 [ %i.rz, %bb.ev ], [ %i.sa, %bb.ew ] ; 3 uses
  br i1 %i.ao, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %rb_ulong2num_inline.exit
  %i.sd = call i64 @rb_yield(i64 noundef %.0.i1136) #12 ; 0 uses
  br label %bb.fa

bb.ey:                                            ; preds = %rb_ulong2num_inline.exit
  br i1 %i.ai, label %bb.ez, label %.thread1320

bb.ez:                                            ; preds = %bb.ey
  %i.se = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %.0.i1136) #12 ; 0 uses
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ex, %bb.ez
  %i.sf = icmp sgt i64 %i.sb, 0
  %i.sg = icmp ult ptr %i.sc, %i.w
  %i.sh = select i1 %i.sf, i1 %i.sg, i1 false
  br i1 %i.sh, label %.lr.ph1591, label %.thread1178, !llvm.loop !67

bb.fb:                                            ; preds = %bb.u
  %i.si = ptrtoint ptr %.07881675 to i64
  %i.sj = sub i64 %i.an, %i.si
  %i.sk = mul i64 %i.sj, 3
  %i.sl = sdiv i64 %i.sk, 4
  %i.sm = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.sl) #12, !callees !42 ; 5 uses
  %i.sn = inttoptr i64 %i.sm to ptr               ; 3 uses
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !13
  %i.sp = and i64 %i.so, 8192
  %.not.i1137 = icmp eq i64 %i.sp, 0
  %i.sq = getelementptr i8, ptr %i.sn, i64 24     ; 2 uses
  br i1 %.not.i1137, label %RSTRING_PTR.exit1138, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1138

RSTRING_PTR.exit1138:                             ; preds = %bb.fb, %bb.fc
  %i.ss = phi ptr [ %i.sr, %bb.fc ], [ %i.sq, %bb.fb ]
  %i.st = icmp ult ptr %.07881675, %i.w
  br i1 %i.st, label %.lr.ph1582, label %.critedge55

.lr.ph1582:                                       ; preds = %RSTRING_PTR.exit1138
  %i.su = getelementptr i8, ptr %i.sn, i64 16
  br label %bb.fd

bb.fd:                                            ; preds = %.lr.ph1582, %bb.fx
  %.208081581 = phi ptr [ %.07881675, %.lr.ph1582 ], [ %.28816, %bb.fx ] ; 4 uses
  %.09561580 = phi i64 [ 0, %.lr.ph1582 ], [ %.1957, %bb.fx ] ; 2 uses
  %.09581579 = phi ptr [ %i.ss, %.lr.ph1582 ], [ %.1959.lcssa, %bb.fx ] ; 2 uses
  %i.sv = load i8, ptr %.208081581, align 1, !tbaa !15
  %i.sw = add i8 %i.sv, -33
  %or.cond1086 = icmp ult i8 %i.sw, 64
  br i1 %or.cond1086, label %bb.fe, label %.critedge55

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.sx = getelementptr i8, ptr %.208081581, i64 1 ; 2 uses
  %4 = load i8, ptr %.208081581, align 1, !tbaa !15
  %i.sy = and i8 %4, 63
  %i.sz = xor i8 %i.sy, 32
  %i.ta = zext nneg i8 %i.sz to i64               ; 2 uses
  %i.tb = add i64 %.09561580, %i.ta               ; 3 uses
  %i.tc = load i64, ptr %i.su, align 8, !tbaa !19 ; 3 uses
  %i.td = icmp sgt i64 %i.tb, %i.tc
  %.neg = sub i64 %i.tc, %i.tb
  %.1957 = call i64 @llvm.smin.i64(i64 %i.tb, i64 %i.tc) ; 2 uses
  %i.te = select i1 %i.td, i64 %.neg, i64 0
  %.25860 = add i64 %i.te, %i.ta                  ; 2 uses
  %i.tf = icmp sgt i64 %.25860, 0
  br i1 %i.tf, label %.lr.ph1575, label %._crit_edge1576

.lr.ph1575:                                       ; preds = %bb.fe, %bb.fq
  %.218091573 = phi ptr [ %.25813, %bb.fq ], [ %i.sx, %bb.fe ] ; 5 uses
  %.268611572 = phi i64 [ %i.uu, %bb.fq ], [ %.25860, %bb.fe ] ; 2 uses
  %.19591571 = phi ptr [ %i.ut, %bb.fq ], [ %.09581579, %bb.fe ] ; 2 uses
  %i.tg = call i64 @llvm.umin.i64(i64 %.268611572, i64 3) ; 3 uses
  %i.th = icmp ult ptr %.218091573, %i.w
  br i1 %i.th, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %.lr.ph1575
  %i.ti = load i8, ptr %.218091573, align 1, !tbaa !15 ; 2 uses
  %i.tj = add i8 %i.ti, -32
  %or.cond1087 = icmp ult i8 %i.tj, 65
  br i1 %or.cond1087, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.tk = getelementptr i8, ptr %.218091573, i64 1
  %i.tl = shl i8 %i.ti, 2
  %i.tm = xor i8 %i.tl, -128
  %i.tn = zext i8 %i.tm to i64
  br label %bb.fh

bb.fh:                                            ; preds = %.lr.ph1575, %bb.ff, %bb.fg
  %.0955 = phi i64 [ %i.tn, %bb.fg ], [ 0, %bb.ff ], [ 0, %.lr.ph1575 ]
  %.22810 = phi ptr [ %i.tk, %bb.fg ], [ %.218091573, %bb.ff ], [ %.218091573, %.lr.ph1575 ] ; 5 uses
  %i.to = icmp ult ptr %.22810, %i.w
  br i1 %i.to, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.tp = load i8, ptr %.22810, align 1, !tbaa !15 ; 2 uses
  %i.tq = add i8 %i.tp, -32
  %or.cond1088 = icmp ult i8 %i.tq, 65
  br i1 %or.cond1088, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.tr = getelementptr i8, ptr %.22810, i64 1
  %i.ts = and i8 %i.tp, 63
  %i.tt = xor i8 %i.ts, 32
  %i.tu = zext nneg i8 %i.tt to i64
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fh, %bb.fi, %bb.fj
  %.0954 = phi i64 [ %i.tu, %bb.fj ], [ 0, %bb.fi ], [ 0, %bb.fh ] ; 2 uses
  %.23811 = phi ptr [ %i.tr, %bb.fj ], [ %.22810, %bb.fi ], [ %.22810, %bb.fh ] ; 5 uses
  %i.tv = icmp ult ptr %.23811, %i.w
  br i1 %i.tv, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.tw = load i8, ptr %.23811, align 1, !tbaa !15 ; 2 uses
  %i.tx = add i8 %i.tw, -32
  %or.cond1089 = icmp ult i8 %i.tx, 65
  br i1 %or.cond1089, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ty = getelementptr i8, ptr %.23811, i64 1
  %i.tz = and i8 %i.tw, 63
  %i.ua = xor i8 %i.tz, 32
  %i.ub = zext nneg i8 %i.ua to i64
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fk, %bb.fl, %bb.fm
  %.0953 = phi i64 [ %i.ub, %bb.fm ], [ 0, %bb.fl ], [ 0, %bb.fk ] ; 2 uses
  %.24812 = phi ptr [ %i.ty, %bb.fm ], [ %.23811, %bb.fl ], [ %.23811, %bb.fk ] ; 5 uses
  %i.uc = icmp ult ptr %.24812, %i.w
  br i1 %i.uc, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.ud = load i8, ptr %.24812, align 1, !tbaa !15 ; 2 uses
  %i.ue = add i8 %i.ud, -32
  %or.cond1090 = icmp ult i8 %i.ue, 65
  br i1 %or.cond1090, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.uf = getelementptr i8, ptr %.24812, i64 1
  %i.ug = and i8 %i.ud, 63
  %i.uh = xor i8 %i.ug, 32
  %i.ui = zext nneg i8 %i.uh to i64
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fn, %bb.fo, %bb.fp
  %.0952 = phi i64 [ %i.ui, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ]
  %.25813 = phi ptr [ %i.uf, %bb.fp ], [ %.24812, %bb.fo ], [ %.24812, %bb.fn ] ; 2 uses
  %i.uj = lshr i64 %.0954, 4
  %i.uk = or i64 %i.uj, %.0955
  %i.ul = trunc nuw i64 %i.uk to i8
  store i8 %i.ul, ptr %i.f, align 1, !tbaa !15
  %i.um = shl nuw nsw i64 %.0954, 4
  %i.un = lshr i64 %.0953, 2
  %i.uo = or i64 %i.un, %i.um
  %i.up = trunc i64 %i.uo to i8
  store i8 %i.up, ptr %.1..sroa_idx, align 1, !tbaa !15
  %i.uq = shl nuw nsw i64 %.0953, 6
  %i.ur = or i64 %.0952, %i.uq
  %i.us = trunc i64 %i.ur to i8
  store i8 %i.us, ptr %.2..sroa_idx, align 1, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.19591571, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.tg, i1 noundef false) #12
  %i.ut = getelementptr i8, ptr %.19591571, i64 %i.tg ; 2 uses
  %i.uu = sub nsw i64 %.268611572, %i.tg          ; 2 uses
  %i.uv = icmp sgt i64 %i.uu, 0
  br i1 %i.uv, label %.lr.ph1575, label %._crit_edge1576, !llvm.loop !68

._crit_edge1576:                                  ; preds = %bb.fq, %bb.fe
  %.1959.lcssa = phi ptr [ %.09581579, %bb.fe ], [ %i.ut, %bb.fq ]
  %.21809.lcssa = phi ptr [ %i.sx, %bb.fe ], [ %.25813, %bb.fq ] ; 6 uses
  %i.uw = icmp ult ptr %.21809.lcssa, %i.w
  br i1 %i.uw, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %._crit_edge1576
  %i.ux = load i8, ptr %.21809.lcssa, align 1, !tbaa !15
  switch i8 %i.ux, label %bb.fs [
    i8 13, label %bb.ft
    i8 10, label %bb.ft
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.uy = getelementptr i8, ptr %.21809.lcssa, i64 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fr, %bb.fs, %._crit_edge1576
  %.26814 = phi ptr [ %i.uy, %bb.fs ], [ %.21809.lcssa, %bb.fr ], [ %.21809.lcssa, %bb.fr ], [ %.21809.lcssa, %._crit_edge1576 ] ; 4 uses
  %i.uz = icmp ult ptr %.26814, %i.w
  br i1 %i.uz, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.va = load i8, ptr %.26814, align 1, !tbaa !15
  %i.vb = icmp eq i8 %i.va, 13
  %spec.select1091.idx = zext i1 %i.vb to i64
  %spec.select1091 = getelementptr i8, ptr %.26814, i64 %spec.select1091.idx
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.27815 = phi ptr [ %.26814, %bb.ft ], [ %spec.select1091, %bb.fu ] ; 4 uses
  %i.vc = icmp ult ptr %.27815, %i.w
  br i1 %i.vc, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.vd = load i8, ptr %.27815, align 1, !tbaa !15
  %i.ve = icmp eq i8 %i.vd, 10
  %spec.select1092.idx = zext i1 %i.ve to i64
  %spec.select1092 = getelementptr i8, ptr %.27815, i64 %spec.select1092.idx
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.28816 = phi ptr [ %.27815, %bb.fv ], [ %spec.select1092, %bb.fw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.vf = icmp ult ptr %.28816, %i.w
  br i1 %i.vf, label %bb.fd, label %.critedge55, !llvm.loop !69

.critedge55:                                      ; preds = %bb.fx, %bb.fd, %RSTRING_PTR.exit1138
  %.0956.lcssa = phi i64 [ 0, %RSTRING_PTR.exit1138 ], [ %.09561580, %bb.fd ], [ %.1957, %bb.fx ]
  %.20808.lcssa = phi ptr [ %.07881675, %RSTRING_PTR.exit1138 ], [ %.208081581, %bb.fd ], [ %.28816, %bb.fx ] ; 2 uses
  call void @rb_str_set_len(i64 noundef %i.sm, i64 noundef %.0956.lcssa) #12
  br i1 %i.ao, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.critedge55
  %i.vg = call i64 @rb_yield(i64 noundef %i.sm) #12 ; 0 uses
  br label %.thread1178

bb.fz:                                            ; preds = %.critedge55
  br i1 %i.ai, label %bb.ga, label %.thread1320

bb.ga:                                            ; preds = %bb.fz
  %i.vh = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.sm) #12 ; 0 uses
  br label %.thread1178

bb.gb:                                            ; preds = %bb.u
  %i.vi = ptrtoint ptr %.07881675 to i64
  %i.vj = sub i64 %i.an, %i.vi
  %i.vk = mul i64 %i.vj, 3
  %i.vl = add i64 %i.vk, 9
  %i.vm = sdiv i64 %i.vl, 4
  %i.vn = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.vm) #12, !callees !42 ; 5 uses
  %i.vo = inttoptr i64 %i.vn to ptr               ; 3 uses
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !13
  %i.vq = and i64 %i.vp, 8192
  %.not.i1139 = icmp eq i64 %i.vq, 0
  %i.vr = getelementptr i8, ptr %i.vo, i64 24     ; 4 uses
  br i1 %.not.i1139, label %RSTRING_PTR.exit1140, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1140

RSTRING_PTR.exit1140:                             ; preds = %bb.gb, %bb.gc
  %i.vt = phi ptr [ %i.vs, %bb.gc ], [ %i.vr, %bb.gb ] ; 4 uses
  %i.vu = load i8, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 47), align 1, !tbaa !15
  %i.vv = icmp slt i8 %i.vu, 1
  br i1 %i.vv, label %.preheader1345.preheader, label %.loopexit

end_hunk_0
