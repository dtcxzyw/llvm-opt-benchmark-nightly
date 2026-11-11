Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/identify?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6LibRaw21identify_finetune_dcrEPcxx:bb.a
  store i32 4095, ptr %i.oj, align 8, !tbaa !86
  br label %.loopexit473

bb.eb:                                            ; preds = %.loopexit475
  %i.ok = add i16 %i.mw, -30
  store i16 %i.ok, ptr %i.mt, align 2, !tbaa !125
  br i1 %i.na, label %bb.ec, label %.loopexit473

bb.ec:                                            ; preds = %bb.eb
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 3961, ptr %i.ol, align 8, !tbaa !86
  br label %.loopexit473

bb.ed:                                            ; preds = %.loopexit475
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 381632
  store i64 10721280, ptr %i.om, align 8, !tbaa !93
  %i.on = trunc i64 %3 to i32
  %i.oo = add i32 %i.on, -10721280
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 193496
  store i32 %i.oo, ptr %i.op, align 8, !tbaa !120
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 193494
  store i16 480, ptr %i.oq, align 2, !tbaa !135
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 193492
  store i16 640, ptr %i.or, align 4, !tbaa !136
  br label %.loopexit473

bb.ee:                                            ; preds = %.loopexit475
  %i.os = add i16 %i.mw, -16
  store i16 %i.os, ptr %i.mt, align 2, !tbaa !125
  br label %.loopexit473

bb.ef:                                            ; preds = %.loopexit475, %.loopexit475, %.loopexit475
  %i.ot = add i16 %i.mw, -26
  store i16 %i.ot, ptr %i.mt, align 2, !tbaa !125
  br label %.loopexit473

bb.eg:                                            ; preds = %bb.s
  %i.ou = icmp eq i32 %i.b, 58
  %i.ov = icmp eq i64 %2, 6291456
  %or.cond = and i1 %i.ov, %i.ou
  br i1 %or.cond, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !103 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !105
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = tail call noundef i32 %i.pa(ptr noundef nonnull align 8 dereferenceable(8) %i.ox, i64 noundef 3145728, i32 noundef 0), !call_target !114 ; 0 uses
  %i.pc = tail call noundef signext i16 @_ZN6LibRaw16guess_byte_orderEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 65536) ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 %i.pc, ptr %i.pd, align 8, !tbaa !102
  %i.pe = icmp eq i16 %i.pc, 19789
  br i1 %i.pe, label %bb.ei, label %.loopexit473

bb.ei:                                            ; preds = %bb.eh
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 16, ptr %i.pf, align 8, !tbaa !128
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 28, ptr %i.ph, align 2, !tbaa !129
  %i.pi = load <2 x i16>, ptr %i.pg, align 4, !tbaa !85
  %i.pj = add <2 x i16> %i.pi, <i16 -16, i16 -28>
  store <2 x i16> %i.pj, ptr %i.pg, align 4, !tbaa !85
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 62912, ptr %i.pk, align 8, !tbaa !86
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 4674377, ptr %i.pl, align 4
  store i32 73, ptr %i.a, align 4, !tbaa !79
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i8 0, ptr %i.pm, align 4, !tbaa !80
  br label %.loopexit473

bb.ej:                                            ; preds = %bb.eg
  switch i32 %i.b, label %bb.ii [
    i32 18, label %bb.ek
    i32 30, label %bb.gj
    i32 40, label %bb.gm
    i32 59, label %bb.he
    i32 64, label %bb.ig
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2948
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !238 ; 3 uses
  %.not179 = icmp eq i32 %i.po, 0                 ; 2 uses
  br i1 %.not179, label %bb.el, label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !123
  %i.pr = icmp eq i16 %i.pq, 2944
  br i1 %i.pr, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2144, ptr %i.ps, align 4, !tbaa !126
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2880, ptr %i.pt, align 2, !tbaa !125
  br label %.sink.split582

bb.en:                                            ; preds = %bb.el, %bb.ek
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 768416
  %.unpack180 = load i64, ptr %i.pu, align 8, !tbaa !119
  %.elt181 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  %.unpack182 = load i64, ptr %.elt181, align 8, !tbaa !119
  %i.pv = icmp ne i64 %.unpack180, ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64)
  %i.pw = icmp ne i64 %.unpack182, 0
  %i.px = or i1 %i.pv, %i.pw
  br i1 %i.px, label %sub_0464, label %bb.eq

sub_0464:                                         ; preds = %bb.en
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.pz = load i8, ptr %i.py, align 4
  %.not505 = icmp eq i8 %i.pz, 88
  br i1 %.not505, label %.tail463, label %.tail463.thread

.tail463:                                         ; preds = %sub_0464
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.qb = load i8, ptr %i.qa, align 1
  %i.qc = icmp eq i8 %i.qb, 45
  br i1 %i.qc, label %bb.eq, label %.tail463.thread

.tail463.thread:                                  ; preds = %sub_0464, %.tail463
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !82
  %i.qf = icmp ugt i32 %i.qe, 999
  br i1 %i.qf, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %.tail463.thread
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !121
  %i.qi = icmp eq i32 %i.qh, 2
  br i1 %i.qi, label %bb.ep, label %.sink.split582

bb.ep:                                            ; preds = %bb.eo
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !122
  %.not184 = icmp eq i32 %i.qk, 0
  %i.ql = select i1 %.not184, i32 15872, i32 12032
  br label %.sink.split582

.sink.split582:                                   ; preds = %bb.eo, %bb.ep, %bb.em
  %.sink585 = phi i64 [ 48, %bb.em ], [ 153096, %bb.ep ], [ 153096, %bb.eo ]
  %.sink583 = phi i32 [ 6, %bb.em ], [ %i.ql, %bb.ep ], [ 15872, %bb.eo ]
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 %.sink585
  store i32 %.sink583, ptr %i.qm, align 8, !tbaa !81
  br label %bb.eq

bb.eq:                                            ; preds = %.sink.split582, %bb.en, %.tail463, %.tail463.thread
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2920
  %i.qo = load i16, ptr %i.qn, align 8, !tbaa !89 ; 4 uses
  %.not185 = icmp eq i16 %i.qo, 0                 ; 2 uses
  br i1 %.not185, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  switch i32 %i.po, label %bb.es [
    i32 0, label %.thread375
    i32 4096, label %.thread375
  ]

bb.es:                                            ; preds = %bb.er
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2980
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !81
  %i.qr = trunc i32 %i.qq to i16
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.qr, ptr %i.qs, align 2, !tbaa !125
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !81
  %i.qv = trunc i32 %i.qu to i16
  br label %.thread375.sink.split

bb.et:                                            ; preds = %bb.eq
  switch i16 %i.qo, label %.thread375 [
    i16 1, label %bb.eu
    i16 4, label %bb.ev
  ]

bb.eu:                                            ; preds = %bb.et
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !123
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.qy, ptr %i.qz, align 2, !tbaa !125
  %i.ra = load i16, ptr %i.qw, align 8, !tbaa !124
  br label %.thread375.sink.split

bb.ev:                                            ; preds = %bb.et
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rc = load i16, ptr %i.rb, align 8, !tbaa !124
  br label %.thread375.sink.split

.thread375.sink.split:                            ; preds = %bb.es, %bb.ev, %bb.eu
  %.sink586 = phi i16 [ %i.ra, %bb.eu ], [ %i.rc, %bb.ev ], [ %i.qv, %bb.es ]
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %.sink586, ptr %i.rd, align 4, !tbaa !126
  br label %.thread375

.thread375:                                       ; preds = %.thread375.sink.split, %bb.er, %bb.er, %bb.et
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 13 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 11 uses
  %8 = load i16, ptr %6, align 2, !tbaa !123      ; 5 uses
  %9 = load <2 x i16>, ptr %i.re, align 8, !tbaa !85
  %10 = freeze <2 x i16> %9                       ; 8 uses
  %11 = load <2 x i16>, ptr %i.rf, align 4, !tbaa !85 ; 2 uses
  %i.rg = load i16, ptr %i.rf, align 4, !tbaa !126
  %12 = icmp ult <2 x i16> %10, %11
  %13 = sub nuw <2 x i16> %10, %11
  %14 = lshr <2 x i16> %13, splat (i16 1)
  %15 = and <2 x i16> %14, splat (i16 32766)
  %16 = select <2 x i1> %12, <2 x i16> zeroinitializer, <2 x i16> %15 ; 2 uses
  %17 = extractelement <2 x i16> %16, i64 0       ; 17 uses
  store i16 %17, ptr %5, align 8, !tbaa !128
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 15 uses
  %18 = extractelement <2 x i16> %16, i64 1       ; 15 uses
  store i16 %18, ptr %i.rh, align 2, !tbaa !129
  switch i32 %i.po, label %bb.ew [
    i32 0, label %bb.ft
    i32 4096, label %bb.ft
  ]

bb.ew:                                            ; preds = %.thread375
  switch i16 %8, label %bb.gf [
    i16 2944, label %bb.ex
    i16 4096, label %bb.ey
    i16 5120, label %bb.ey
    i16 6048, label %bb.ey
    i16 6160, label %bb.ey
    i16 4992, label %bb.ez
    i16 7872, label %bb.fa
    i16 6336, label %bb.ff
    i16 6384, label %bb.fl
    i16 6912, label %bb.fp
    i16 9216, label %bb.fp
    i16 8472, label %bb.fq
    i16 9696, label %bb.fr
    i16 11808, label %bb.fr
  ]

bb.ex:                                            ; preds = %bb.ew
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.ri, align 8, !tbaa !82
  br label %bb.gf

bb.ey:                                            ; preds = %bb.ew, %bb.ew, %bb.ew, %bb.ew
  store i16 0, ptr %i.rh, align 2, !tbaa !129
  br label %bb.gf

bb.ez:                                            ; preds = %bb.ew
  store i16 4, ptr %i.rh, align 2, !tbaa !129
  br label %bb.gf

bb.fa:                                            ; preds = %bb.ew
  br i1 %.not185, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store <4 x i16> <i16 5178, i16 7752, i16 6, i16 0>, ptr %i.rf, align 4, !tbaa !85
  br label %bb.gf

bb.fc:                                            ; preds = %bb.fa
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.rl = load i16, ptr %i.rk, align 2, !tbaa !144 ; 2 uses
  %i.rm = add i16 %i.rl, -1
  %or.cond360 = icmp ult i16 %i.rm, 7872
  br i1 %or.cond360, label %bb.fd, label %bb.gf

bb.fd:                                            ; preds = %bb.fc
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ro = load i16, ptr %i.rn, align 4, !tbaa !145 ; 2 uses
  %i.rp = add i16 %i.ro, -1
  %19 = extractelement <2 x i16> %10, i64 0
  %or.cond414.not = icmp ult i16 %i.rp, %19
  br i1 %or.cond414.not, label %bb.fe, label %bb.gf

bb.fe:                                            ; preds = %bb.fd
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.rr = load i16, ptr %i.rq, align 8, !tbaa !146 ; 2 uses
  store i16 %i.rr, ptr %5, align 8, !tbaa !128
  %i.rs = load i16, ptr %i.rj, align 2, !tbaa !147 ; 2 uses
  store i16 %i.rs, ptr %i.rh, align 2, !tbaa !129
  store i16 %i.rl, ptr %7, align 2, !tbaa !125
  store i16 %i.ro, ptr %i.rf, align 4, !tbaa !126
  br label %bb.gf

bb.ff:                                            ; preds = %bb.ew
  switch i16 %i.qo, label %bb.fi [
    i16 0, label %bb.fg
    i16 2, label %bb.fh
    i16 4, label %bb.fh
  ]

bb.fg:                                            ; preds = %bb.ff
  store i16 6, ptr %5, align 8, !tbaa !128
  store i16 0, ptr %i.rh, align 2, !tbaa !129
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ru = tail call i32 @strcasecmp(ptr noundef nonnull %i.rt, ptr noundef nonnull @.str.122) #20
  %.not201 = icmp eq i32 %i.ru, 0
  %. = select i1 %.not201, i16 6252, i16 6264
  store i16 %., ptr %7, align 2, !tbaa !125
  store i16 4176, ptr %i.rf, align 4, !tbaa !126
  br label %bb.gf

bb.fh:                                            ; preds = %bb.ff, %bb.ff
  store <4 x i16> <i16 3348, i16 5004, i16 0, i16 630>, ptr %i.rf, align 4, !tbaa !85
  br label %bb.gf

bb.fi:                                            ; preds = %bb.ff
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.rx = load i16, ptr %i.rw, align 2, !tbaa !144 ; 2 uses
  %i.ry = add i16 %i.rx, -1
  %or.cond361 = icmp ult i16 %i.ry, 6336
  br i1 %or.cond361, label %bb.fj, label %bb.gf

bb.fj:                                            ; preds = %bb.fi
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.sa = load i16, ptr %i.rz, align 4, !tbaa !145 ; 2 uses
  %i.sb = add i16 %i.sa, -1
  %20 = extractelement <2 x i16> %10, i64 0
  %or.cond415.not = icmp ult i16 %i.sb, %20
  br i1 %or.cond415.not, label %bb.fk, label %bb.gf

bb.fk:                                            ; preds = %bb.fj
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.sd = load i16, ptr %i.sc, align 8, !tbaa !146 ; 2 uses
  store i16 %i.sd, ptr %5, align 8, !tbaa !128
  %i.se = load i16, ptr %i.rv, align 2, !tbaa !147 ; 2 uses
  store i16 %i.se, ptr %i.rh, align 2, !tbaa !129
  store i16 %i.rx, ptr %7, align 2, !tbaa !125
  store i16 %i.sa, ptr %i.rf, align 4, !tbaa !126
  br label %bb.gf

bb.fl:                                            ; preds = %bb.ew
  store i16 0, ptr %5, align 8, !tbaa !128
  switch i16 %i.qo, label %bb.gf [
    i16 0, label %bb.fm
    i16 2, label %bb.fn
    i16 4, label %bb.fo
  ]

bb.fm:                                            ; preds = %bb.fl
  store <4 x i16> <i16 4170, i16 6246, i16 6, i16 0>, ptr %i.rf, align 4, !tbaa !85
  br label %bb.gf

bb.fn:                                            ; preds = %bb.fl
  store i16 624, ptr %i.rh, align 2, !tbaa !129
  store i16 5004, ptr %7, align 2, !tbaa !125
  %21 = extractelement <2 x i16> %10, i64 0
  store i16 %21, ptr %i.rf, align 4, !tbaa !126
  br label %bb.gf

bb.fo:                                            ; preds = %bb.fl
  store i16 624, ptr %i.rh, align 2, !tbaa !129
  store i16 5004, ptr %7, align 2, !tbaa !125
  br label %bb.gf

bb.fp:                                            ; preds = %bb.ew, %bb.ew
  store i16 0, ptr %i.rh, align 2, !tbaa !129
  store i16 0, ptr %5, align 8, !tbaa !128
  br label %bb.gf

bb.fq:                                            ; preds = %bb.ew
  store i16 0, ptr %i.rh, align 2, !tbaa !129
  store i16 0, ptr %5, align 8, !tbaa !128
  store i16 8280, ptr %7, align 2, !tbaa !125
  br label %bb.gf

bb.fr:                                            ; preds = %bb.ew, %bb.ew
  store i16 0, ptr %i.rh, align 2, !tbaa !129
  %i.sf = add nsw i16 %8, -146
  store i16 %i.sf, ptr %7, align 2, !tbaa !125
  %22 = extractelement <2 x i16> %10, i64 0
  %i.sg = add i16 %22, -8
  store i16 %i.sg, ptr %i.rf, align 4, !tbaa !126
  store i16 2, ptr %5, align 8, !tbaa !128
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !127
  %i.sj = icmp eq i32 %i.si, 16
  br i1 %i.sj, label %bb.fs, label %bb.gf

bb.fs:                                            ; preds = %bb.fr
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 65535, ptr %i.sk, align 8, !tbaa !86
  br label %bb.gf

bb.ft:                                            ; preds = %.thread375, %.thread375
  br i1 %.not179, label %bb.fu, label %bb.gf

bb.fu:                                            ; preds = %bb.ft
  switch i16 %8, label %bb.ga [
    i16 2304, label %bb.fv
    i16 3328, label %bb.fw
    i16 3664, label %bb.fy
    i16 5504, label %bb.fz
  ]

bb.fv:                                            ; preds = %bb.fu
  store i16 6, ptr %5, align 8, !tbaa !128
  %i.sl = add i16 %i.rg, -6
  store i16 %i.sl, ptr %i.rf, align 4, !tbaa !126
  br label %bb.gf

bb.fw:                                            ; preds = %bb.fu
  store i16 3262, ptr %7, align 2, !tbaa !125
  store i16 34, ptr %i.rh, align 2, !tbaa !129
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.sn = load i16, ptr %i.sm, align 2, !tbaa !147
  %i.so = icmp eq i16 %i.sn, 8
  br i1 %i.so, label %bb.fx, label %bb.gf

bb.fx:                                            ; preds = %bb.fw
  store i16 0, ptr %i.rh, align 2, !tbaa !129
  store i16 3264, ptr %7, align 2, !tbaa !125
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.sp, align 8, !tbaa !82
  br label %bb.gf

bb.fy:                                            ; preds = %bb.fu
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.sq, align 8, !tbaa !82
  br label %bb.gf

bb.fz:                                            ; preds = %bb.fu
  store i16 32, ptr %i.rh, align 2, !tbaa !129
  store i16 8, ptr %5, align 8, !tbaa !128
  store i16 5440, ptr %7, align 2, !tbaa !125
  %23 = extractelement <2 x i16> %10, i64 0
  %i.sr = add i16 %23, -16
  store i16 %i.sr, ptr %i.rf, align 4, !tbaa !126
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 768416
  store i64 ptrtoint (ptr @_ZN6LibRaw25unpacked_load_raw_FujiDBPEv to i64), ptr %i.ss, align 8, !tbaa !119
  %.repack194 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %.repack194, align 8, !tbaa !119
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 370546198, ptr %i.st, align 8, !tbaa !82
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 0, ptr %i.su, align 4, !tbaa !130
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 6, ptr %i.sv, align 8, !tbaa !83
  br label %bb.gf

bb.ga:                                            ; preds = %bb.fu
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.sx = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.sw, ptr noundef nonnull dereferenceable(6) @.str.123, i64 noundef 5) #20
  %.not195 = icmp eq i32 %i.sx, 0
  br i1 %.not195, label %bb.gf, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.sy = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.sw, ptr noundef nonnull dereferenceable(6) @.str.124, i64 noundef 5) #20
  %.not196 = icmp eq i32 %i.sy, 0
  br i1 %.not196, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 186
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !144 ; 2 uses
  %i.tc = add i16 %i.tb, -1
  %or.cond362.not = icmp ult i16 %i.tc, %8
  br i1 %or.cond362.not, label %bb.gd, label %bb.gf

bb.gd:                                            ; preds = %bb.gc
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.te = load i16, ptr %i.td, align 4, !tbaa !145 ; 2 uses
  %i.tf = add i16 %i.te, -1
  %24 = extractelement <2 x i16> %10, i64 0
  %or.cond416.not = icmp ult i16 %i.tf, %24
  br i1 %or.cond416.not, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.th = load i16, ptr %i.tg, align 8, !tbaa !146 ; 2 uses
  store i16 %i.th, ptr %5, align 8, !tbaa !128
  %i.ti = load i16, ptr %i.sz, align 2, !tbaa !147 ; 2 uses
  store i16 %i.ti, ptr %i.rh, align 2, !tbaa !129
  store i16 %i.tb, ptr %7, align 2, !tbaa !125
  store i16 %i.te, ptr %i.rf, align 4, !tbaa !126
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ft, %bb.ga, %bb.gb, %bb.ge, %bb.gd, %bb.gc, %bb.fw, %bb.fx, %bb.fz, %bb.fy, %bb.fv, %bb.ex, %bb.ey, %bb.ez, %bb.fp, %bb.fq, %bb.fc, %bb.fd, %bb.fe, %bb.fb, %bb.fi, %bb.fj, %bb.fk, %bb.fh, %bb.fg, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fr, %bb.fs, %bb.ew
  %i.tj = phi i16 [ %18, %bb.ft ], [ %18, %bb.ga ], [ %18, %bb.gb ], [ %i.ti, %bb.ge ], [ %18, %bb.gd ], [ %18, %bb.gc ], [ 34, %bb.fw ], [ 0, %bb.fx ], [ 32, %bb.fz ], [ %18, %bb.fy ], [ %18, %bb.fv ], [ %18, %bb.ex ], [ 0, %bb.ey ], [ 4, %bb.ez ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ %18, %bb.fc ], [ %18, %bb.fd ], [ %i.rs, %bb.fe ], [ 0, %bb.fb ], [ %18, %bb.fi ], [ %18, %bb.fj ], [ %i.se, %bb.fk ], [ 630, %bb.fh ], [ 0, %bb.fg ], [ 624, %bb.fo ], [ 624, %bb.fn ], [ 0, %bb.fm ], [ %18, %bb.fl ], [ 0, %bb.fr ], [ 0, %bb.fs ], [ %18, %bb.ew ]
  %i.tk = phi i16 [ %17, %bb.ft ], [ %17, %bb.ga ], [ %17, %bb.gb ], [ %i.th, %bb.ge ], [ %17, %bb.gd ], [ %17, %bb.gc ], [ %17, %bb.fw ], [ %17, %bb.fx ], [ 8, %bb.fz ], [ %17, %bb.fy ], [ 6, %bb.fv ], [ %17, %bb.ex ], [ %17, %bb.ey ], [ %17, %bb.ez ], [ 0, %bb.fp ], [ 0, %bb.fq ], [ %17, %bb.fc ], [ %17, %bb.fd ], [ %i.rr, %bb.fe ], [ 6, %bb.fb ], [ %17, %bb.fi ], [ %17, %bb.fj ], [ %i.sd, %bb.fk ], [ 0, %bb.fh ], [ 6, %bb.fg ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 6, %bb.fm ], [ 0, %bb.fl ], [ 2, %bb.fr ], [ 2, %bb.fs ], [ %17, %bb.ew ]
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 381828
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !139
  %.not208 = icmp eq i32 %i.tm, 0
  br i1 %.not208, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !121
  %i.tp = trunc i32 %i.to to i16
  %i.tq = mul i16 %8, %i.tp
  store i16 %i.tq, ptr %6, align 2, !tbaa !123
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !82
  %i.tt = icmp eq i32 %i.ts, 9
  br i1 %i.tt, label %.preheader, label %.loopexit473

.preheader:                                       ; preds = %bb.gh
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.tv = zext i16 %i.tk to i32                   ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 2 uses
  %i.tx = zext i16 %i.tj to i64                   ; 2 uses
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gi, %.preheader
  %indvars.iv512 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next513.1, %bb.gi ] ; 6 uses
  %.lhs.trunc = trunc i64 %indvars.iv512 to i8
  %i.ty = udiv i8 %.lhs.trunc, 6
  %.zext = zext nneg i8 %i.ty to i32
  %i.tz = add nuw nsw i32 %i.tv, %.zext
  %i.ua = add nuw nsw i64 %indvars.iv512, %i.tx
  %i.ub = trunc nsw i64 %i.ua to i32
  %i.uc = insertelement <2 x i32> poison, i32 %i.tz, i64 0
  %i.ud = insertelement <2 x i32> %i.uc, i32 %i.ub, i64 1
  %i.ue = urem <2 x i32> %i.ud, splat (i32 6)     ; 2 uses
  %i.uf = extractelement <2 x i32> %i.ue, i64 0
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [6 x i8], ptr %i.tu, i64 %i.ug
  %i.ui = extractelement <2 x i32> %i.ue, i64 1
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !80
  %i.um = getelementptr inbounds nuw i8, ptr %i.tw, i64 %indvars.iv512
  store i8 %i.ul, ptr %i.um, align 2, !tbaa !80
  %indvars.iv.next513 = or disjoint i64 %indvars.iv512, 1 ; 2 uses
  %.lhs.trunc.1 = trunc i64 %indvars.iv512 to i8
  %i.un = udiv i8 %.lhs.trunc.1, 6
  %.zext.1 = zext nneg i8 %i.un to i32
  %i.uo = add nuw nsw i32 %i.tv, %.zext.1
  %i.up = add nuw nsw i64 %indvars.iv.next513, %i.tx
  %i.uq = trunc nsw i64 %i.up to i32
  %i.ur = insertelement <2 x i32> poison, i32 %i.uo, i64 0
  %i.us = insertelement <2 x i32> %i.ur, i32 %i.uq, i64 1
  %i.ut = urem <2 x i32> %i.us, splat (i32 6)     ; 2 uses
  %i.uu = extractelement <2 x i32> %i.ut, i64 0
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = getelementptr inbounds nuw [6 x i8], ptr %i.tu, i64 %i.uv
  %i.ux = extractelement <2 x i32> %i.ut, i64 1
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.uy
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !80
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tw, i64 %indvars.iv.next513
  store i8 %i.va, ptr %i.vb, align 1, !tbaa !80
  %indvars.iv.next513.1 = add nuw nsw i64 %indvars.iv512, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next513.1, 36
  br i1 %exitcond.not.1, label %.loopexit473, label %bb.gi, !llvm.loop !232

bb.gj:                                            ; preds = %bb.ej
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.vd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vc, ptr noundef nonnull dereferenceable(8) @.str.125) #20
  %.not176 = icmp eq i32 %i.vd, 0
  br i1 %.not176, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 1711, ptr %i.ve, align 4, !tbaa !126
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2312, ptr %i.vf, align 2, !tbaa !125
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 2336, ptr %i.vg, align 2, !tbaa !123
  br label %bb.hd

bb.gl:                                            ; preds = %bb.gj
  %i.vh = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vc, ptr noundef nonnull dereferenceable(8) @.str.126) #20
  %.not177 = icmp eq i32 %i.vh, 0
  br i1 %.not177, label %bb.ha, label %.loopexit473

bb.gm:                                            ; preds = %bb.ej
  %i.vi = icmp eq i64 %2, 5869568
  br i1 %i.vi, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 381860
  store i32 30, ptr %i.vj, align 4, !tbaa !130
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 3746
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !239
  %i.vm = getelementptr inbounds nuw i8, ptr %0, i64 768416 ; 2 uses
  switch i16 %i.vl, label %bb.gq [
    i16 82, label %.sink.split588
    i16 89, label %bb.gp
  ]

bb.gp:                                            ; preds = %bb.go
  br label %.sink.split588

bb.gq:                                            ; preds = %bb.go
  %.unpack166 = load i64, ptr %i.vm, align 8, !tbaa !119
  %.not169 = icmp eq i64 %.unpack166, 0
  br i1 %.not169, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.vn = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 4095, ptr %i.vn, align 8, !tbaa !86
  br label %.sink.split588

.sink.split588:                                   ; preds = %bb.go, %bb.gr, %bb.gp
  %.sink589 = phi i64 [ ptrtoint (ptr @_ZN6LibRaw15packed_load_rawEv to i64), %bb.gp ], [ ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), %bb.gr ], [ ptrtoint (ptr @_ZN6LibRaw17unpacked_load_rawEv to i64), %bb.go ]
  store i64 %.sink589, ptr %i.vm, align 8, !tbaa !119
  %.repack171 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %.repack171, align 8, !tbaa !119
  br label %bb.gs

bb.gs:                                            ; preds = %.sink.split588, %bb.gq
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 3748
  %i.vp = load i16, ptr %i.vo, align 4, !tbaa !240
  switch i16 %i.vp, label %bb.gu [
    i16 4, label %.sink.split590
    i16 1, label %bb.gt
  ]

bb.gt:                                            ; preds = %bb.gs
  br label %.sink.split590

.sink.split590:                                   ; preds = %bb.gs, %bb.gt
  %.sink591 = phi i32 [ -1802201964, %bb.gt ], [ 1229539657, %bb.gs ]
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %.sink591, ptr %i.vq, align 8, !tbaa !82
  br label %bb.gu

bb.gu:                                            ; preds = %.sink.split590, %bb.gs
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 3744
  %i.vs = load i16, ptr %i.vr, align 8, !tbaa !241 ; 2 uses
  %.not173 = icmp eq i16 %i.vs, 0
  br i1 %.not173, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 3742
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !242
  %.not174 = icmp eq i16 %i.vu, 0
  br i1 %.not174, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.vv = zext i16 %i.vs to i32
  %i.vw = getelementptr inbounds nuw i8, ptr %0, i64 381836
  store i32 %i.vv, ptr %i.vw, align 4, !tbaa !127
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv, %bb.gu
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.vy = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.vx, ptr noundef nonnull dereferenceable(9) @.str.127, i64 noundef 8) #20
  %.not175 = icmp eq i32 %i.vy, 0
  br i1 %.not175, label %bb.gy, label %.loopexit473

bb.gy:                                            ; preds = %bb.gx
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.wa = load i8, ptr %i.vz, align 4, !tbaa !80
  switch i8 %i.wa, label %bb.hc [
    i8 52, label %bb.gz
    i8 53, label %bb.ha
    i8 54, label %bb.hb
  ]

bb.gz:                                            ; preds = %bb.gy
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 1716, ptr %i.wb, align 4, !tbaa !126
  br label %.sink.split593

bb.ha:                                            ; preds = %bb.gy, %bb.gl
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 1956, ptr %i.wc, align 4, !tbaa !126
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 2607, ptr %i.wd, align 2, !tbaa !125
  br label %.sink.split593

bb.hb:                                            ; preds = %bb.gy
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 2136, ptr %i.we, align 4, !tbaa !126
  br label %.sink.split593

.sink.split593:                                   ; preds = %bb.gz, %bb.hb, %bb.ha
  %.sink596 = phi i64 [ 18, %bb.ha ], [ 22, %bb.hb ], [ 22, %bb.gz ]
  %.sink594 = phi i16 [ 2624, %bb.ha ], [ 2848, %bb.hb ], [ 2304, %bb.gz ]
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink596
  store i16 %.sink594, ptr %i.wf, align 2, !tbaa !85
  br label %bb.hc

bb.hc:                                            ; preds = %.sink.split593, %bb.gy
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 2 uses
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !118
  %i.wi = add nsw i64 %i.wh, 14
  store i64 %i.wi, ptr %i.wg, align 8, !tbaa !118
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 1633771873, ptr %i.wj, align 8, !tbaa !82
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gk
end_hunk_0
