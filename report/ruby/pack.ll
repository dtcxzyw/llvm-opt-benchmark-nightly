Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pack?download=true
inline.NumInlined: 148
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pack_unpack_internal:bb.a
  %.not50.i = icmp eq i32 %i.qg, 128
  br i1 %.not50.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %i.qh = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qh, ptr noundef nonnull @.str.28) #13
  unreachable

bb.ep:                                            ; preds = %.lr.ph.preheader.i
  %i.qi = and i32 %i.qf, 63
  %i.qj = shl nuw nsw i64 %i.qd, 6                ; 2 uses
  %i.qk = zext nneg i32 %i.qi to i64
  %i.ql = or disjoint i64 %i.qj, %i.qk            ; 2 uses
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.ep
  %.04057.i.1 = getelementptr i8, ptr %.199191588, i64 2
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
  %.04057.i.2 = getelementptr i8, ptr %.199191588, i64 3
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
  %.04057.i.3 = getelementptr i8, ptr %.199191588, i64 4
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
  %.04057.i.4 = getelementptr i8, ptr %.199191588, i64 5
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
  %.lcssa2442 = phi i64 [ %i.qj, %bb.ep ], [ %i.qq, %bb.eq ], [ %i.qx, %bb.er ], [ %i.re, %bb.es ], [ %i.rl, %bb.et ]
  %.lcssa2441 = phi i64 [ %i.ql, %bb.ep ], [ %i.qs, %bb.eq ], [ %i.qz, %bb.er ], [ %i.rg, %bb.es ], [ %i.rn, %bb.et ] ; 3 uses
  %i.ro = getelementptr [8 x i8], ptr @utf8_limits, i64 %.0.i1135
  %i.rp = getelementptr i8, ptr %i.ro, i64 -8
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !12
  %i.rr = icmp ult i64 %.lcssa2441, %i.rq
  br i1 %i.rr, label %bb.eu, label %utf8_to_uv.exit

bb.eu:                                            ; preds = %._crit_edge.i
  %i.rs = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.rs, ptr noundef nonnull @.str.30) #13
  unreachable

utf8_to_uv.exit:                                  ; preds = %._crit_edge.i
  %i.rt = getelementptr i8, ptr %.199191588, i64 %.0.i1135 ; 2 uses
  %i.ru = add nsw i64 %.248851589, -1             ; 2 uses
  %i.rv = icmp ult i64 %.lcssa2442, 4611686018427387904
  br i1 %i.rv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %utf8_to_uv.exit.thread, %utf8_to_uv.exit
  %i.rw = phi i64 [ %i.ps, %utf8_to_uv.exit.thread ], [ %i.ru, %utf8_to_uv.exit ]
  %i.rx = phi ptr [ %i.pr, %utf8_to_uv.exit.thread ], [ %i.rt, %utf8_to_uv.exit ]
  %.039.i1245 = phi i64 [ %i.pq, %utf8_to_uv.exit.thread ], [ %.lcssa2441, %utf8_to_uv.exit ]
  %i.ry = shl nuw nsw i64 %.039.i1245, 1
  %i.rz = or disjoint i64 %i.ry, 1
  br label %rb_ulong2num_inline.exit

bb.ew:                                            ; preds = %utf8_to_uv.exit
  %i.sa = call i64 @rb_uint2big(i64 noundef %.lcssa2441) #12
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
  %i.si = ptrtoint ptr %.09001674 to i64
  %i.sj = sub i64 %i.an, %i.si
  %i.sk = mul i64 %i.sj, 3
  %i.sl = sdiv i64 %i.sk, 4
  %i.sm = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.sl) #12, !callees !22 ; 5 uses
  %i.sn = inttoptr i64 %i.sm to ptr               ; 3 uses
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !14
  %i.sp = and i64 %i.so, 8192
  %.not.i1137 = icmp eq i64 %i.sp, 0
  %i.sq = getelementptr i8, ptr %i.sn, i64 24     ; 2 uses
  br i1 %.not.i1137, label %RSTRING_PTR.exit1138, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1138

RSTRING_PTR.exit1138:                             ; preds = %bb.fb, %bb.fc
  %i.ss = phi ptr [ %i.sr, %bb.fc ], [ %i.sq, %bb.fb ]
  %i.st = icmp ult ptr %.09001674, %i.w
  br i1 %i.st, label %.lr.ph1582, label %.critedge55

.lr.ph1582:                                       ; preds = %RSTRING_PTR.exit1138
  %i.su = getelementptr i8, ptr %i.sn, i64 16
  br label %bb.fd

bb.fd:                                            ; preds = %.lr.ph1582, %bb.fx
  %.08141581 = phi i64 [ 0, %.lr.ph1582 ], [ %.1815, %bb.fx ] ; 2 uses
  %.08161580 = phi ptr [ %i.ss, %.lr.ph1582 ], [ %.1817.lcssa, %bb.fx ] ; 2 uses
  %.209201579 = phi ptr [ %.09001674, %.lr.ph1582 ], [ %.28928, %bb.fx ] ; 4 uses
  %i.sv = load i8, ptr %.209201579, align 1, !tbaa !15
  %i.sw = add i8 %i.sv, -33
  %or.cond1086 = icmp ult i8 %i.sw, 64
  br i1 %or.cond1086, label %bb.fe, label %.critedge55

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.sx = getelementptr i8, ptr %.209201579, i64 1 ; 2 uses
  %i.sy = load i8, ptr %.209201579, align 1, !tbaa !15
  %i.sz = and i8 %i.sy, 63
  %i.ta = xor i8 %i.sz, 32
  %i.tb = zext nneg i8 %i.ta to i64               ; 2 uses
  %i.tc = add i64 %.08141581, %i.tb               ; 3 uses
  %i.td = load i64, ptr %i.su, align 8, !tbaa !20 ; 3 uses
  %i.te = icmp sgt i64 %i.tc, %i.td
  %.neg = sub i64 %i.td, %i.tc
  %i.tf = select i1 %i.te, i64 %.neg, i64 0
  %.25886 = add i64 %i.tf, %i.tb                  ; 2 uses
  %.1815 = call i64 @llvm.smin.i64(i64 %i.tc, i64 %i.td) ; 2 uses
  %i.tg = icmp sgt i64 %.25886, 0
  br i1 %i.tg, label %.lr.ph1575, label %._crit_edge1576

.lr.ph1575:                                       ; preds = %bb.fe, %bb.fq
  %.18171573 = phi ptr [ %i.un, %bb.fq ], [ %.08161580, %bb.fe ] ; 2 uses
  %.268871572 = phi i64 [ %i.uo, %bb.fq ], [ %.25886, %bb.fe ] ; 2 uses
  %.219211571 = phi ptr [ %.25925, %bb.fq ], [ %i.sx, %bb.fe ] ; 5 uses
  %i.th = call i64 @llvm.umin.i64(i64 %.268871572, i64 3) ; 3 uses
  %i.ti = icmp ult ptr %.219211571, %i.w
  br i1 %i.ti, label %bb.ff, label %bb.fh

bb.ff:                                            ; preds = %.lr.ph1575
  %i.tj = load i8, ptr %.219211571, align 1, !tbaa !15 ; 2 uses
  %i.tk = add i8 %i.tj, -32
  %or.cond1087 = icmp ult i8 %i.tk, 65
  br i1 %or.cond1087, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.tl = getelementptr i8, ptr %.219211571, i64 1
  %i.tm = shl i8 %i.tj, 2
  %i.tn = xor i8 %i.tm, -128
  %4 = zext i8 %i.tn to i64
  br label %bb.fh

bb.fh:                                            ; preds = %.lr.ph1575, %bb.ff, %bb.fg
  %.22922 = phi ptr [ %i.tl, %bb.fg ], [ %.219211571, %bb.ff ], [ %.219211571, %.lr.ph1575 ] ; 5 uses
  %.0813 = phi i64 [ %4, %bb.fg ], [ 0, %bb.ff ], [ 0, %.lr.ph1575 ]
  %i.to = icmp ult ptr %.22922, %i.w
  br i1 %i.to, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  %i.tp = load i8, ptr %.22922, align 1, !tbaa !15 ; 2 uses
  %i.tq = add i8 %i.tp, -32
  %or.cond1088 = icmp ult i8 %i.tq, 65
  br i1 %or.cond1088, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.tr = getelementptr i8, ptr %.22922, i64 1
  %i.ts = and i8 %i.tp, 63
  %i.tt = xor i8 %i.ts, 32
  %i.tu = zext nneg i8 %i.tt to i64
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fh, %bb.fi, %bb.fj
  %.23923 = phi ptr [ %i.tr, %bb.fj ], [ %.22922, %bb.fi ], [ %.22922, %bb.fh ] ; 5 uses
  %.0812 = phi i64 [ %i.tu, %bb.fj ], [ 0, %bb.fi ], [ 0, %bb.fh ] ; 2 uses
  %i.tv = icmp ult ptr %.23923, %i.w
  br i1 %i.tv, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  %i.tw = load i8, ptr %.23923, align 1, !tbaa !15 ; 2 uses
  %i.tx = add i8 %i.tw, -32
  %or.cond1089 = icmp ult i8 %i.tx, 65
  br i1 %or.cond1089, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.ty = getelementptr i8, ptr %.23923, i64 1
  %i.tz = and i8 %i.tw, 63
  %i.ua = xor i8 %i.tz, 32
  %i.ub = zext nneg i8 %i.ua to i64
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fk, %bb.fl, %bb.fm
  %.24924 = phi ptr [ %i.ty, %bb.fm ], [ %.23923, %bb.fl ], [ %.23923, %bb.fk ] ; 5 uses
  %.0811 = phi i64 [ %i.ub, %bb.fm ], [ 0, %bb.fl ], [ 0, %bb.fk ] ; 2 uses
  %i.uc = icmp ult ptr %.24924, %i.w
  br i1 %i.uc, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  %i.ud = load i8, ptr %.24924, align 1, !tbaa !15 ; 2 uses
  %i.ue = add i8 %i.ud, -32
  %or.cond1090 = icmp ult i8 %i.ue, 65
  br i1 %or.cond1090, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.uf = getelementptr i8, ptr %.24924, i64 1
  %i.ug = and i8 %i.ud, 63
  %i.uh = xor i8 %i.ug, 32
  %5 = zext nneg i8 %i.uh to i64
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fn, %bb.fo, %bb.fp
  %.25925 = phi ptr [ %i.uf, %bb.fp ], [ %.24924, %bb.fo ], [ %.24924, %bb.fn ] ; 2 uses
  %.0810 = phi i64 [ %5, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ]
  %i.ui = lshr i64 %.0812, 4
  %6 = or i64 %i.ui, %.0813
  %7 = trunc nuw i64 %6 to i8
  store i8 %7, ptr %i.f, align 1, !tbaa !15
  %i.uj = shl nuw nsw i64 %.0812, 4
  %i.uk = lshr i64 %.0811, 2
  %i.ul = or i64 %i.uk, %i.uj
  %i.um = trunc i64 %i.ul to i8
  store i8 %i.um, ptr %.1..sroa_idx, align 1, !tbaa !15
  %8 = shl nuw nsw i64 %.0811, 6
  %9 = or i64 %.0810, %8
  %10 = trunc i64 %9 to i8
  store i8 %10, ptr %.2..sroa_idx, align 1, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.18171573, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.th, i1 noundef false) #12
  %i.un = getelementptr i8, ptr %.18171573, i64 %i.th ; 2 uses
  %i.uo = sub nuw nsw i64 %.268871572, %i.th      ; 2 uses
  %.not = icmp eq i64 %i.uo, 0
  br i1 %.not, label %._crit_edge1576, label %.lr.ph1575, !llvm.loop !68

._crit_edge1576:                                  ; preds = %bb.fq, %bb.fe
  %.21921.lcssa = phi ptr [ %i.sx, %bb.fe ], [ %.25925, %bb.fq ] ; 6 uses
  %.1817.lcssa = phi ptr [ %.08161580, %bb.fe ], [ %i.un, %bb.fq ]
  %i.up = icmp ult ptr %.21921.lcssa, %i.w
  br i1 %i.up, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %._crit_edge1576
  %i.uq = load i8, ptr %.21921.lcssa, align 1, !tbaa !15
  switch i8 %i.uq, label %bb.fs [
    i8 13, label %bb.ft
    i8 10, label %bb.ft
  ]

bb.fs:                                            ; preds = %bb.fr
  %i.ur = getelementptr i8, ptr %.21921.lcssa, i64 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fr, %bb.fs, %._crit_edge1576
  %.26926 = phi ptr [ %i.ur, %bb.fs ], [ %.21921.lcssa, %bb.fr ], [ %.21921.lcssa, %bb.fr ], [ %.21921.lcssa, %._crit_edge1576 ] ; 4 uses
  %i.us = icmp ult ptr %.26926, %i.w
  br i1 %i.us, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ut = load i8, ptr %.26926, align 1, !tbaa !15
  %i.uu = icmp eq i8 %i.ut, 13
  %spec.select1091.idx = zext i1 %i.uu to i64
  %spec.select1091 = getelementptr i8, ptr %.26926, i64 %spec.select1091.idx
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.27927 = phi ptr [ %.26926, %bb.ft ], [ %spec.select1091, %bb.fu ] ; 4 uses
  %i.uv = icmp ult ptr %.27927, %i.w
  br i1 %i.uv, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.uw = load i8, ptr %.27927, align 1, !tbaa !15
  %i.ux = icmp eq i8 %i.uw, 10
  %spec.select1092.idx = zext i1 %i.ux to i64
  %spec.select1092 = getelementptr i8, ptr %.27927, i64 %spec.select1092.idx
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %.28928 = phi ptr [ %.27927, %bb.fv ], [ %spec.select1092, %bb.fw ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.uy = icmp ult ptr %.28928, %i.w
  br i1 %i.uy, label %bb.fd, label %.critedge55, !llvm.loop !69

.critedge55:                                      ; preds = %bb.fx, %bb.fd, %RSTRING_PTR.exit1138
  %.20920.lcssa = phi ptr [ %.09001674, %RSTRING_PTR.exit1138 ], [ %.209201579, %bb.fd ], [ %.28928, %bb.fx ] ; 2 uses
  %.0814.lcssa = phi i64 [ 0, %RSTRING_PTR.exit1138 ], [ %.08141581, %bb.fd ], [ %.1815, %bb.fx ]
  call void @rb_str_set_len(i64 noundef %i.sm, i64 noundef %.0814.lcssa) #12
  br i1 %i.ao, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.critedge55
  %i.uz = call i64 @rb_yield(i64 noundef %i.sm) #12 ; 0 uses
  br label %.thread1178

bb.fz:                                            ; preds = %.critedge55
  br i1 %i.ai, label %bb.ga, label %.thread1320

bb.ga:                                            ; preds = %bb.fz
  %i.va = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.sm) #12 ; 0 uses
  br label %.thread1178

bb.gb:                                            ; preds = %bb.u
  %i.vb = ptrtoint ptr %.09001674 to i64
  %i.vc = sub i64 %i.an, %i.vb
  %i.vd = mul i64 %i.vc, 3
  %i.ve = add i64 %i.vd, 9
  %i.vf = sdiv i64 %i.ve, 4
  %i.vg = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.vf) #12, !callees !22 ; 5 uses
  %i.vh = inttoptr i64 %i.vg to ptr               ; 3 uses
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !14
  %i.vj = and i64 %i.vi, 8192
  %.not.i1139 = icmp eq i64 %i.vj, 0
  %i.vk = getelementptr i8, ptr %i.vh, i64 24     ; 4 uses
  br i1 %.not.i1139, label %RSTRING_PTR.exit1140, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1140

RSTRING_PTR.exit1140:                             ; preds = %bb.gb, %bb.gc
  %i.vm = phi ptr [ %i.vl, %bb.gc ], [ %i.vk, %bb.gb ] ; 4 uses
  %i.vn = load i8, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 47), align 1, !tbaa !15
  %i.vo = icmp slt i8 %i.vn, 1
  br i1 %i.vo, label %.preheader1345.preheader, label %.loopexit

.preheader1345.preheader:                         ; preds = %RSTRING_PTR.exit1140
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @pack_unpack_internal.b64_xtable, i8 -1, i64 256, i1 false), !tbaa !15
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 65), align 1, !tbaa !15
  store <8 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 81), align 1, !tbaa !15
  store i8 24, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 89), align 1, !tbaa !15
  store i8 25, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 90), align 2, !tbaa !15
  store <16 x i8> <i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 97), align 1, !tbaa !15
  store <8 x i8> <i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 113), align 1, !tbaa !15
  store i8 50, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 121), align 1, !tbaa !15
  store i8 51, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 122), align 2, !tbaa !15
  store i8 59, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 55), align 1, !tbaa !15
  store i8 60, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 56), align 8, !tbaa !15
  store i8 61, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 57), align 1, !tbaa !15
  store i8 62, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 43), align 1, !tbaa !15
  store <8 x i8> <i8 63, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58>, ptr getelementptr inbounds nuw (i8, ptr @pack_unpack_internal.b64_xtable, i64 47), align 1, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1345.preheader, %RSTRING_PTR.exit1140
  %i.vp = icmp eq i64 %.0861, 0
  %i.vq = icmp ult ptr %.09001674, %i.w           ; 2 uses
  br i1 %i.vp, label %.preheader1342, label %.preheader1343

.preheader1343:                                   ; preds = %.loopexit
  br i1 %i.vq, label %.preheader1334, label %.thread1270

.preheader1342:                                   ; preds = %.loopexit
  br i1 %i.vq, label %.lr.ph1565, label %.thread1270

.lr.ph1565:                                       ; preds = %.preheader1342, %bb.gp
  %.08071564 = phi ptr [ %i.xi, %bb.gp ], [ %i.vm, %.preheader1342 ] ; 9 uses
  %.299291563 = phi ptr [ %i.ww, %bb.gp ], [ %.09001674, %.preheader1342 ] ; 7 uses
  %i.vr = getelementptr i8, ptr %.299291563, i64 1 ; 2 uses
  %i.vs = load i8, ptr %.299291563, align 1, !tbaa !15
  %i.vt = zext i8 %i.vs to i64
  %i.vu = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !15  ; 2 uses
  %11 = sext i8 %i.vv to i32                      ; 3 uses
  %i.vw = icmp uge ptr %i.vr, %i.w
  %i.vx = icmp eq i8 %i.vv, -1
  %or.cond57 = select i1 %i.vw, i1 true, i1 %i.vx
  br i1 %or.cond57, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.lr.ph1565
  %i.vy = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.vy, ptr noundef nonnull @.str.24) #13
  unreachable

bb.ge:                                            ; preds = %.lr.ph1565
  %i.vz = getelementptr i8, ptr %.299291563, i64 2 ; 3 uses
  %i.wa = load i8, ptr %i.vr, align 1, !tbaa !15
  %i.wb = zext i8 %i.wa to i64
  %i.wc = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !15  ; 3 uses
  %12 = sext i8 %i.wd to i32                      ; 5 uses
  %i.we = icmp uge ptr %i.vz, %i.w
  %i.wf = icmp eq i8 %i.wd, -1
  %or.cond59 = select i1 %i.we, i1 true, i1 %i.wf
  br i1 %or.cond59, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.wg = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.wg, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gg:                                            ; preds = %bb.ge
  %i.wh = load i8, ptr %i.vz, align 1, !tbaa !15  ; 2 uses
  %i.wi = icmp eq i8 %i.wh, 61
  br i1 %i.wi, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.wj = getelementptr i8, ptr %.299291563, i64 4
  %i.wk = icmp eq ptr %i.wj, %i.w
  br i1 %i.wk, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.wl = getelementptr i8, ptr %.299291563, i64 3
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !15
  %i.wn = icmp eq i8 %i.wm, 61
  br i1 %i.wn, label %.thread1253, label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.wo = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.wo, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gk:                                            ; preds = %bb.gg
  %i.wp = getelementptr i8, ptr %.299291563, i64 3 ; 3 uses
  %i.wq = zext i8 %i.wh to i64
  %i.wr = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.wq
  %i.ws = load i8, ptr %i.wr, align 1, !tbaa !15  ; 4 uses
  %13 = sext i8 %i.ws to i32                      ; 2 uses
  %i.wt = icmp uge ptr %i.wp, %i.w
  %i.wu = icmp eq i8 %i.ws, -1
  %or.cond61 = select i1 %i.wt, i1 true, i1 %i.wu
  br i1 %or.cond61, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.wv = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.wv, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gm:                                            ; preds = %bb.gk
  %i.ww = getelementptr i8, ptr %.299291563, i64 4 ; 4 uses
  %i.wx = icmp eq ptr %i.ww, %i.w
  %.pre1867 = load i8, ptr %i.wp, align 1, !tbaa !15 ; 2 uses
  %i.wy = icmp eq i8 %.pre1867, 61
  %or.cond2147 = select i1 %i.wx, i1 %i.wy, i1 false
  br i1 %or.cond2147, label %bb.gr, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.wz = zext i8 %.pre1867 to i64
  %i.xa = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !15  ; 2 uses
  %i.xc = icmp eq i8 %i.xb, -1
  br i1 %i.xc, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.xd = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.xd, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gp:                                            ; preds = %bb.gn
  %14 = shl nsw i32 %11, 2
  %15 = lshr i32 %12, 4
  %16 = or i32 %15, %14
  %17 = trunc i32 %16 to i8
  %i.xe = getelementptr i8, ptr %.08071564, i64 1
  store i8 %17, ptr %.08071564, align 1, !tbaa !15
  %18 = shl nsw i32 %12, 4
  %19 = lshr i32 %13, 2
  %20 = or i32 %19, %18
  %21 = trunc i32 %20 to i8
  %i.xf = getelementptr i8, ptr %.08071564, i64 2
  store i8 %21, ptr %i.xe, align 1, !tbaa !15
  %i.xg = shl i8 %i.ws, 6
  %i.xh = or i8 %i.xb, %i.xg
  %i.xi = getelementptr i8, ptr %.08071564, i64 3 ; 2 uses
  store i8 %i.xh, ptr %i.xf, align 1, !tbaa !15
  %i.xj = icmp ult ptr %i.ww, %i.w
  br i1 %i.xj, label %.lr.ph1565, label %.thread1270, !llvm.loop !70

.thread1253:                                      ; preds = %bb.gi
  %22 = shl nsw i32 %11, 2
  %23 = lshr i32 %12, 4
  %24 = or i32 %22, %23
  %25 = trunc i32 %24 to i8
  %i.xk = getelementptr i8, ptr %.08071564, i64 1
  store i8 %25, ptr %.08071564, align 1, !tbaa !15
  %i.xl = and i8 %i.wd, 15
  %.not1045 = icmp eq i8 %i.xl, 0
  br i1 %.not1045, label %.thread1270, label %bb.gq

bb.gq:                                            ; preds = %.thread1253
  %i.xm = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.xm, ptr noundef nonnull @.str.24) #13
  unreachable

bb.gr:                                            ; preds = %bb.gm
  %26 = shl nsw i32 %11, 2
  %27 = lshr i32 %12, 4
  %28 = or i32 %27, %26
  %29 = trunc i32 %28 to i8
  %i.xn = getelementptr i8, ptr %.08071564, i64 1
  store i8 %29, ptr %.08071564, align 1, !tbaa !15
  %30 = shl nsw i32 %12, 4
  %31 = lshr i32 %13, 2
  %32 = or i32 %31, %30
  %33 = trunc i32 %32 to i8
  %i.xo = getelementptr i8, ptr %.08071564, i64 2
  store i8 %33, ptr %i.xn, align 1, !tbaa !15
  %i.xp = and i8 %i.ws, 3
  %.not1044 = icmp eq i8 %i.xp, 0
  br i1 %.not1044, label %.thread1270, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.xq = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.xq, ptr noundef nonnull @.str.24) #13
  unreachable

.preheader1334:                                   ; preds = %.preheader1343, %bb.ha
  %.18081557 = phi ptr [ %i.za, %bb.ha ], [ %i.vm, %.preheader1343 ] ; 12 uses
  %.319311556 = phi ptr [ %i.yx, %bb.ha ], [ %.09001674, %.preheader1343 ]
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gt, %.preheader1334
  %.32932 = phi ptr [ %i.xy, %bb.gt ], [ %.319311556, %.preheader1334 ] ; 5 uses
  %i.xr = load i8, ptr %.32932, align 1, !tbaa !15
  %i.xs = zext i8 %i.xr to i64
  %i.xt = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !15  ; 4 uses
  %i.xv = icmp eq i8 %i.xu, -1
  %i.xw = icmp ult ptr %.32932, %i.w              ; 2 uses
  %i.xx = select i1 %i.xv, i1 %i.xw, i1 false
  %i.xy = getelementptr i8, ptr %.32932, i64 1
  br i1 %i.xx, label %bb.gt, label %bb.gu, !llvm.loop !71

bb.gu:                                            ; preds = %bb.gt
  %34 = sext i8 %i.xu to i32                      ; 3 uses
  br i1 %i.xw, label %.preheader1333, label %.thread1270

.preheader1333:                                   ; preds = %bb.gu, %.preheader1333
  %.32932.pn = phi ptr [ %.33933, %.preheader1333 ], [ %.32932, %bb.gu ]
  %.33933 = getelementptr i8, ptr %.32932.pn, i64 1 ; 6 uses
  %i.xz = load i8, ptr %.33933, align 1, !tbaa !15
  %i.ya = zext i8 %i.xz to i64
  %i.yb = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !15  ; 4 uses
  %i.yd = icmp eq i8 %i.yc, -1
  %i.ye = icmp ult ptr %.33933, %i.w              ; 2 uses
  %i.yf = select i1 %i.yd, i1 %i.ye, i1 false
  br i1 %i.yf, label %.preheader1333, label %bb.gv, !llvm.loop !72

bb.gv:                                            ; preds = %.preheader1333
  %35 = sext i8 %i.yc to i32                      ; 5 uses
  br i1 %i.ye, label %.preheader, label %.thread1282

.preheader:                                       ; preds = %bb.gv, %.preheader
  %.33933.pn = phi ptr [ %.34934, %.preheader ], [ %.33933, %bb.gv ] ; 2 uses
  %.34934 = getelementptr i8, ptr %.33933.pn, i64 1 ; 4 uses
  %i.yg = load i8, ptr %.34934, align 1, !tbaa !15 ; 2 uses
  %i.yh = zext i8 %i.yg to i64
  %i.yi = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !15  ; 3 uses
  %i.yk = icmp eq i8 %i.yj, -1                    ; 2 uses
  %i.yl = icmp ult ptr %.34934, %i.w              ; 2 uses
  %i.ym = select i1 %i.yk, i1 %i.yl, i1 false
  %i.yn = icmp ne i8 %i.yg, 61                    ; 2 uses
  %or.cond1094.not = and i1 %i.yn, %i.ym
  br i1 %or.cond1094.not, label %.preheader, label %bb.gw, !llvm.loop !73

bb.gw:                                            ; preds = %.preheader
  %36 = sext i8 %i.yj to i32                      ; 2 uses
  %or.cond1095 = select i1 %i.yn, i1 %i.yl, i1 false
  br i1 %or.cond1095, label %bb.gx, label %bb.hb

bb.gx:                                            ; preds = %bb.gw
  %i.yo = getelementptr i8, ptr %.33933.pn, i64 2
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gy, %bb.gx
  %.35935 = phi ptr [ %i.yo, %bb.gx ], [ %i.yx, %bb.gy ] ; 4 uses
  %i.yp = load i8, ptr %.35935, align 1, !tbaa !15 ; 2 uses
  %i.yq = zext i8 %i.yp to i64
  %i.yr = getelementptr i8, ptr @pack_unpack_internal.b64_xtable, i64 %i.yq
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !15  ; 2 uses
  %i.yt = icmp eq i8 %i.ys, -1
  %i.yu = icmp ult ptr %.35935, %i.w              ; 2 uses
  %i.yv = select i1 %i.yt, i1 %i.yu, i1 false
  %i.yw = icmp ne i8 %i.yp, 61                    ; 2 uses
  %or.cond1097.not = and i1 %i.yw, %i.yv
  %i.yx = getelementptr i8, ptr %.35935, i64 1    ; 4 uses
  br i1 %or.cond1097.not, label %bb.gy, label %bb.gz, !llvm.loop !74

bb.gz:                                            ; preds = %bb.gy
  %or.cond1098 = select i1 %i.yw, i1 %i.yu, i1 false
  br i1 %or.cond1098, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %37 = shl nsw i32 %34, 2
  %38 = lshr i32 %35, 4
  %39 = or i32 %38, %37
  %40 = trunc i32 %39 to i8
  %i.yy = getelementptr i8, ptr %.18081557, i64 1
  store i8 %40, ptr %.18081557, align 1, !tbaa !15
  %41 = shl nsw i32 %35, 4
  %42 = lshr i32 %36, 2
  %43 = or i32 %42, %41
  %44 = trunc i32 %43 to i8
  %i.yz = getelementptr i8, ptr %.18081557, i64 2
  store i8 %44, ptr %i.yy, align 1, !tbaa !15
  %.tr = shl i8 %i.yj, 6
  %.narrow = or i8 %i.ys, %.tr
  %i.za = getelementptr i8, ptr %.18081557, i64 3 ; 2 uses
  store i8 %.narrow, ptr %i.yz, align 1, !tbaa !15
  %i.zb = icmp ult ptr %i.yx, %i.w
  br i1 %i.zb, label %.preheader1334, label %.thread1270, !llvm.loop !75

bb.hb:                                            ; preds = %bb.gz, %bb.gw
  %.36936 = phi ptr [ %.35935, %bb.gz ], [ %.34934, %bb.gw ] ; 3 uses
  %i.zc = icmp ne i8 %i.xu, -1
  %i.zd = icmp ne i8 %i.yc, -1
  %or.cond63 = and i1 %i.zc, %i.zd
  br i1 %or.cond63, label %bb.hc, label %.thread1270

.thread1282:                                      ; preds = %bb.gv
  %i.ze = icmp ne i8 %i.xu, -1
  %i.zf = icmp ne i8 %i.yc, -1
  %or.cond631287 = and i1 %i.ze, %i.zf
  br i1 %or.cond631287, label %.thread1292, label %.thread1270

bb.hc:                                            ; preds = %bb.hb
  br i1 %i.yk, label %.thread1292, label %bb.hd

.thread1292:                                      ; preds = %.thread1282, %bb.hc
  %.3693612881295 = phi ptr [ %.36936, %bb.hc ], [ %.33933, %.thread1282 ]
  %45 = shl nsw i32 %34, 2
  %46 = lshr i32 %35, 4
  %47 = or i32 %46, %45
  %48 = trunc i32 %47 to i8
  %i.zg = getelementptr i8, ptr %.18081557, i64 1
  store i8 %48, ptr %.18081557, align 1, !tbaa !15
  br label %.thread1270

bb.hd:                                            ; preds = %bb.hc
  %49 = shl nsw i32 %34, 2
  %50 = lshr i32 %35, 4
  %51 = or i32 %50, %49
  %52 = trunc i32 %51 to i8
  %i.zh = getelementptr i8, ptr %.18081557, i64 1
  store i8 %52, ptr %.18081557, align 1, !tbaa !15
  %53 = shl nsw i32 %35, 4
  %54 = lshr i32 %36, 2
  %55 = or i32 %54, %53
  %56 = trunc i32 %55 to i8
  %i.zi = getelementptr i8, ptr %.18081557, i64 2
  store i8 %56, ptr %i.zh, align 1, !tbaa !15
  br label %.thread1270

.thread1270:                                      ; preds = %bb.ha, %bb.gu, %bb.gp, %.preheader1342, %.preheader1343, %.thread1282, %bb.hb, %bb.hd, %.thread1292, %.thread1253, %bb.gr
  %.37937 = phi ptr [ %i.vz, %.thread1253 ], [ %i.wp, %bb.gr ], [ %i.ww, %bb.gp ], [ %.3693612881295, %.thread1292 ], [ %.36936, %bb.hd ], [ %.36936, %bb.hb ], [ %.33933, %.thread1282 ], [ %.09001674, %.preheader1343 ], [ %.09001674, %.preheader1342 ], [ %.32932, %bb.gu ], [ %i.yx, %bb.ha ] ; 2 uses
  %.2809 = phi ptr [ %i.xk, %.thread1253 ], [ %i.xo, %bb.gr ], [ %i.xi, %bb.gp ], [ %i.zg, %.thread1292 ], [ %i.zi, %bb.hd ], [ %.18081557, %bb.hb ], [ %.18081557, %.thread1282 ], [ %i.vm, %.preheader1343 ], [ %i.vm, %.preheader1342 ], [ %.18081557, %bb.gu ], [ %i.za, %bb.ha ]
  %i.zj = load i64, ptr %i.vh, align 8, !tbaa !14
  %i.zk = and i64 %i.zj, 8192
  %.not.i1141 = icmp eq i64 %i.zk, 0
  br i1 %.not.i1141, label %RSTRING_PTR.exit1142, label %bb.he

bb.he:                                            ; preds = %.thread1270
  %i.zl = load ptr, ptr %i.vk, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1142

RSTRING_PTR.exit1142:                             ; preds = %.thread1270, %bb.he
  %i.zm = phi ptr [ %i.zl, %bb.he ], [ %i.vk, %.thread1270 ]
  %i.zn = ptrtoint ptr %.2809 to i64
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = sub i64 %i.zn, %i.zo
  call void @rb_str_set_len(i64 noundef %i.vg, i64 noundef %i.zp) #12
  br i1 %i.ao, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %RSTRING_PTR.exit1142
  %i.zq = call i64 @rb_yield(i64 noundef %i.vg) #12 ; 0 uses
  br label %.thread1178

bb.hg:                                            ; preds = %RSTRING_PTR.exit1142
  br i1 %i.ai, label %bb.hh, label %.thread1320

bb.hh:                                            ; preds = %bb.hg
  %i.zr = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.vg) #12 ; 0 uses
  br label %.thread1178

bb.hi:                                            ; preds = %bb.u
  %i.zs = ptrtoint ptr %.09001674 to i64
  %i.zt = sub i64 %i.an, %i.zs
  %i.zu = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.zt) #12, !callees !22 ; 7 uses
  %i.zv = inttoptr i64 %i.zu to ptr               ; 5 uses
  %i.zw = load i64, ptr %i.zv, align 8, !tbaa !14
  %i.zx = and i64 %i.zw, 8192                     ; 2 uses
  %.not.i1143 = icmp eq i64 %i.zx, 0
  %i.zy = getelementptr i8, ptr %i.zv, i64 24     ; 4 uses
  br i1 %.not.i1143, label %RSTRING_PTR.exit1144, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1144

RSTRING_PTR.exit1144:                             ; preds = %bb.hi, %bb.hj
  %i.aaa = phi ptr [ %i.zz, %bb.hj ], [ %i.zy, %bb.hi ] ; 2 uses
  %i.aab = icmp ult ptr %.09001674, %i.w
  br i1 %i.aab, label %.lr.ph1526, label %._crit_edge

.lr.ph1526:                                       ; preds = %RSTRING_PTR.exit1144, %thread-pre-split.thread
  %.07881525 = phi i32 [ %.1789, %thread-pre-split.thread ], [ 0, %RSTRING_PTR.exit1144 ] ; 8 uses
  %.07901524 = phi ptr [ %i.abk, %thread-pre-split.thread ], [ %.09001674, %RSTRING_PTR.exit1144 ] ; 9 uses
  %.07911523 = phi ptr [ %.1792, %thread-pre-split.thread ], [ %i.aaa, %RSTRING_PTR.exit1144 ] ; 10 uses
  %i.aac = load i8, ptr %.07901524, align 1, !tbaa !15 ; 3 uses
  %i.aad = icmp eq i8 %i.aac, 61
  br i1 %i.aad, label %bb.hk, label %bb.hq

bb.hk:                                            ; preds = %.lr.ph1526
  %i.aae = getelementptr i8, ptr %.07901524, i64 1 ; 5 uses
  %i.aaf = icmp eq ptr %i.aae, %i.w
  br i1 %i.aaf, label %._crit_edge.loopexit, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.aag = getelementptr i8, ptr %.07901524, i64 2 ; 3 uses
  %i.aah = icmp ult ptr %i.aag, %i.w
  %i.aai = load i8, ptr %i.aae, align 1, !tbaa !15 ; 3 uses
  %i.aaj = icmp eq i8 %i.aai, 13
  %or.cond2148 = select i1 %i.aah, i1 %i.aaj, i1 false
  br i1 %or.cond2148, label %bb.hm, label %thread-pre-split

bb.hm:                                            ; preds = %bb.hl
  %i.aak = load i8, ptr %i.aag, align 1, !tbaa !15
  %i.aal = icmp eq i8 %i.aak, 10
  br i1 %i.aal, label %thread-pre-split.thread, label %thread-pre-split.thread1957

thread-pre-split:                                 ; preds = %bb.hl
  %.not1038 = icmp eq i8 %i.aai, 10
  br i1 %.not1038, label %thread-pre-split.thread, label %thread-pre-split.thread1957

thread-pre-split.thread1957:                      ; preds = %bb.hm, %thread-pre-split
  %i.aam = phi i8 [ %i.aai, %thread-pre-split ], [ 13, %bb.hm ]
  %i.aan = zext i8 %i.aam to i64
  %i.aao = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.aan
  %i.aap = load i8, ptr %i.aao, align 1, !tbaa !15 ; 2 uses
  %i.aaq = icmp sgt i8 %i.aap, 15
  %narrow.i1145 = select i1 %i.aaq, i8 -1, i8 %i.aap ; 2 uses
  %spec.store.select.i = sext i8 %narrow.i1145 to i32
  %i.aar = icmp eq i8 %narrow.i1145, -1
  br i1 %i.aar, label %._crit_edge.loopexit, label %bb.hn

bb.hn:                                            ; preds = %thread-pre-split.thread1957
  %i.aas = getelementptr i8, ptr %.07901524, i64 2 ; 5 uses
  %i.aat = icmp eq ptr %i.aas, %i.w
  br i1 %i.aat, label %._crit_edge.loopexit, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.aau = load i8, ptr %i.aas, align 1, !tbaa !15
  %i.aav = zext i8 %i.aau to i64
  %i.aaw = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !15 ; 3 uses
  %i.aay = icmp sgt i8 %i.aax, 15
  %i.aaz = icmp eq i8 %i.aax, -1
  %i.aba = or i1 %i.aay, %i.aaz
  br i1 %i.aba, label %._crit_edge.loopexit, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %spec.store.select.i11471954 = zext i8 %i.aax to i32
  %i.abb = shl nsw i32 %spec.store.select.i, 4
  %i.abc = or i32 %i.abb, %spec.store.select.i11471954 ; 2 uses
  %i.abd = trunc i32 %i.abc to i8
  %i.abe = getelementptr i8, ptr %.07911523, i64 1
  store i8 %i.abd, ptr %.07911523, align 1, !tbaa !15
  %sext = shl i32 %i.abc, 24
  %i.abf = ashr exact i32 %sext, 24
  %i.abg = or i32 %i.abf, %.07881525
  br label %thread-pre-split.thread

bb.hq:                                            ; preds = %.lr.ph1526
  %i.abh = sext i8 %i.aac to i32
  %i.abi = getelementptr i8, ptr %.07911523, i64 1
  store i8 %i.aac, ptr %.07911523, align 1, !tbaa !15
  %i.abj = or i32 %.07881525, %i.abh
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.hm, %thread-pre-split, %bb.hp, %bb.hq
  %.40940 = phi ptr [ %i.aas, %bb.hp ], [ %i.aae, %thread-pre-split ], [ %.07901524, %bb.hq ], [ %i.aag, %bb.hm ]
  %.1792 = phi ptr [ %i.abe, %bb.hp ], [ %.07911523, %thread-pre-split ], [ %i.abi, %bb.hq ], [ %.07911523, %bb.hm ] ; 2 uses
  %.1789 = phi i32 [ %i.abg, %bb.hp ], [ %.07881525, %thread-pre-split ], [ %i.abj, %bb.hq ], [ %.07881525, %bb.hm ] ; 2 uses
  %i.abk = getelementptr i8, ptr %.40940, i64 1   ; 4 uses
  %i.abl = icmp ult ptr %i.abk, %i.w
  br i1 %i.abl, label %.lr.ph1526, label %._crit_edge.loopexit, !llvm.loop !76

._crit_edge.loopexit:                             ; preds = %bb.ho, %bb.hn, %thread-pre-split.thread1957, %bb.hk, %thread-pre-split.thread
  %.0791.lcssa.ph = phi ptr [ %.1792, %thread-pre-split.thread ], [ %.07911523, %bb.hk ], [ %.07911523, %thread-pre-split.thread1957 ], [ %.07911523, %bb.hn ], [ %.07911523, %bb.ho ]
  %.0790.lcssa.ph = phi ptr [ %i.abk, %thread-pre-split.thread ], [ %.07901524, %bb.hk ], [ %.07901524, %thread-pre-split.thread1957 ], [ %.07901524, %bb.hn ], [ %.07901524, %bb.ho ]
  %.0788.lcssa.ph = phi i32 [ %.1789, %thread-pre-split.thread ], [ %.07881525, %bb.hk ], [ %.07881525, %thread-pre-split.thread1957 ], [ %.07881525, %bb.hn ], [ %.07881525, %bb.ho ]
  %.41941.ph = phi ptr [ %i.abk, %thread-pre-split.thread ], [ %i.aae, %bb.hk ], [ %i.aae, %thread-pre-split.thread1957 ], [ %i.aas, %bb.hn ], [ %i.aas, %bb.ho ]
  %.pre1866 = load i64, ptr %i.zv, align 8, !tbaa !14
  %.pre1869 = and i64 %.pre1866, 8192
  %i.abm = icmp ugt i32 %.0788.lcssa.ph, 127
  %i.abn = select i1 %i.abm, i64 2097152, i64 1048576
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %RSTRING_PTR.exit1144
  %.pre-phi1870 = phi i64 [ %.pre1869, %._crit_edge.loopexit ], [ %i.zx, %RSTRING_PTR.exit1144 ]
  %.0791.lcssa = phi ptr [ %.0791.lcssa.ph, %._crit_edge.loopexit ], [ %i.aaa, %RSTRING_PTR.exit1144 ]
  %.0790.lcssa = phi ptr [ %.0790.lcssa.ph, %._crit_edge.loopexit ], [ %.09001674, %RSTRING_PTR.exit1144 ] ; 2 uses
  %.0788.lcssa = phi i64 [ %i.abn, %._crit_edge.loopexit ], [ 1048576, %RSTRING_PTR.exit1144 ]
  %.41941 = phi ptr [ %.41941.ph, %._crit_edge.loopexit ], [ %.09001674, %RSTRING_PTR.exit1144 ] ; 2 uses
  %.not.i1148 = icmp eq i64 %.pre-phi1870, 0
  br i1 %.not.i1148, label %RSTRING_PTR.exit1149, label %bb.hr

bb.hr:                                            ; preds = %._crit_edge
  %i.abo = load ptr, ptr %i.zy, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1149

RSTRING_PTR.exit1149:                             ; preds = %._crit_edge, %bb.hr
  %i.abp = phi ptr [ %i.abo, %bb.hr ], [ %i.zy, %._crit_edge ]
  %i.abq = ptrtoint ptr %.0791.lcssa to i64
  %i.abr = ptrtoint ptr %i.abp to i64
  %i.abs = sub i64 %i.abq, %i.abr
  call void @rb_str_set_len(i64 noundef %i.zu, i64 noundef %i.abs) #12
  %i.abt = ptrtoint ptr %.0790.lcssa to i64
  %i.abu = sub i64 %i.an, %i.abt
  %i.abv = call i64 @rb_str_cat(i64 noundef %i.zu, ptr noundef %.0790.lcssa, i64 noundef %i.abu) #12 ; 0 uses
  %i.abw = tail call i32 @rb_ascii8bit_encindex() #17
  call void @rb_enc_set_index(i64 noundef %i.zu, i32 noundef %i.abw) #12
  %i.abx = load i64, ptr %i.zv, align 8, !tbaa !14
  %i.aby = and i64 %i.abx, -3145729
  %i.abz = or disjoint i64 %i.aby, %.0788.lcssa
  store i64 %i.abz, ptr %i.zv, align 8, !tbaa !14
  br i1 %i.ao, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %RSTRING_PTR.exit1149
  %i.aca = call i64 @rb_yield(i64 noundef %i.zu) #12 ; 0 uses
  br label %.thread1178

bb.ht:                                            ; preds = %RSTRING_PTR.exit1149
  br i1 %i.ai, label %bb.hu, label %.thread1320

bb.hu:                                            ; preds = %bb.ht
  %i.acb = call i64 @rb_ary_push(i64 noundef %i.al, i64 noundef %i.zu) #12 ; 0 uses
  br label %.thread1178

bb.hv:                                            ; preds = %bb.u
  %i.acc = load i64, ptr %i.a, align 8, !tbaa !12
  %i.acd = inttoptr i64 %i.acc to ptr             ; 3 uses
  %i.ace = getelementptr i8, ptr %i.acd, i64 16
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !20
  %i.acg = icmp sgt i64 %.0861, %i.acf
  br i1 %i.acg, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.ach = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ach, ptr noundef nonnull @.str.25) #13
  unreachable
end_hunk_0
