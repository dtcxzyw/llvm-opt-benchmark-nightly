Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/movenc?download=true
inline.NumInlined: 471
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 28
begin_hunk_0_@mov_init:bb.a
  %switch.select17.i.i.i = select i1 %switch.selectcmp16.i.i.i, i32 1882551908, i32 %switch.select.i.i.i
  br label %.thread735

bb.dv:                                            ; preds = %bb.dr
  switch i32 %i.og, label %bb.dy [
    i32 720, label %bb.dw
    i32 1080, label %bb.dx
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.ol = load ptr, ptr %i.mx, align 8, !tbaa !115
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 36
  %i.on = load i32, ptr %i.om, align 4, !tbaa !200
  %i.oo = icmp eq i32 %i.on, 50
  %.14.i.i.i = select i1 %i.oo, i32 1902671460, i32 1885894244
  br label %.thread735

bb.dx:                                            ; preds = %bb.dv
  %i.op = load ptr, ptr %i.mx, align 8, !tbaa !115
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 36
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !200
  %i.os = icmp eq i32 %i.or, 25
  %.15.i.i.i = select i1 %i.os, i32 896038500, i32 912815716
  br label %.thread735

bb.dy:                                            ; preds = %bb.dv
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.642) #18
  br label %.thread739

bb.dz:                                            ; preds = %bb.dq
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !195 ; 17 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nz, i64 44
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !209
  %i.ox = getelementptr inbounds nuw i8, ptr %i.nz, i64 56 ; 16 uses
  switch i32 %i.ow, label %.thread88.i.i.i [
    i32 1, label %bb.ea
    i32 15, label %bb.eb
    i32 230, label %bb.ec
    i32 229, label %bb.ed
    i32 232, label %bb.ee
    i32 38, label %.sink.split.i.i.i
    i32 39, label %bb.ef
    i32 37, label %bb.eg
    i32 36, label %bb.eh
    i32 29, label %bb.ei
    i32 2, label %bb.ej
    i32 3, label %bb.ek
    i32 25, label %bb.el
    i32 28, label %bb.em
    i32 26, label %bb.en
    i32 27, label %bb.eo
    i32 34, label %bb.ep
  ]

bb.ea:                                            ; preds = %bb.dz
  store i32 0, ptr %i.ox, align 8, !tbaa !208
  switch i32 %i.ou, label %.thread88.thread133.i.i.i [
    i32 846624121, label %.thread74.i.i.i
    i32 1937143161, label %.thread74.i.i.i
  ]

bb.eb:                                            ; preds = %bb.dz
  store i32 0, ptr %i.ox, align 8, !tbaa !208
  %i.oy = icmp eq i32 %i.ou, 2037741106
  br i1 %i.oy, label %.thread74.i.i.i, label %.thread88.thread133.i.i.i

bb.ec:                                            ; preds = %bb.dz
  store i32 0, ptr %i.ox, align 8, !tbaa !208
  %i.oz = icmp eq i32 %i.ou, 942682998
  br i1 %i.oz, label %.thread74.i.i.i, label %.thread88.thread133.i.i.i

bb.ed:                                            ; preds = %bb.dz
  store i32 0, ptr %i.ox, align 8, !tbaa !208
  %i.pa = icmp eq i32 %i.ou, 942683254
  br i1 %i.pa, label %.thread74.i.i.i, label %.thread88.thread133.i.i.i

bb.ee:                                            ; preds = %bb.dz
  store i32 0, ptr %i.ox, align 8, !tbaa !208
  %i.pb = icmp eq i32 %i.ou, 808531062
  br i1 %i.pb, label %.thread74.i.i.i, label %.thread88.thread109.i.i.i

bb.ef:                                            ; preds = %bb.dz
  store i32 16, ptr %i.ox, align 8, !tbaa !208
  %i.pc = icmp eq i32 %i.ou, 892679500
  br i1 %i.pc, label %.thread74.i.i.i, label %.thread88.thread109.i.i.i

bb.eg:                                            ; preds = %bb.dz
  store i32 16, ptr %i.ox, align 8, !tbaa !208
  %i.pd = icmp eq i32 %i.ou, 892745036
  br i1 %i.pd, label %.thread74.i.i.i, label %.thread88.thread109.i.i.i

bb.eh:                                            ; preds = %bb.dz
  store i32 16, ptr %i.ox, align 8, !tbaa !208
  %i.pe = icmp eq i32 %i.ou, 892745026
  br i1 %i.pe, label %.thread74.i.i.i, label %.thread88.thread109.i.i.i

bb.ei:                                            ; preds = %bb.dz
  store i32 16, ptr %i.ox, align 8, !tbaa !208
  %i.pf = icmp eq i32 %i.ou, 1731604834
  br i1 %i.pf, label %.thread74.i.i.i, label %.thread88.thread109.i.i.i

bb.ej:                                            ; preds = %bb.dz
  br label %.sink.split.i.i.i

bb.ek:                                            ; preds = %bb.dz
  store i32 24, ptr %i.ox, align 8, !tbaa !208
  %i.pg = icmp eq i32 %i.ou, 1195521074
  br i1 %i.pg, label %.thread74.i.i.i, label %.thread88.thread.i.i.i

bb.el:                                            ; preds = %bb.dz
  br label %.sink.split.i.i.i

bb.em:                                            ; preds = %bb.dz
  store i32 32, ptr %i.ox, align 8, !tbaa !208
  %i.ph = icmp eq i32 %i.ou, 1095911234
  br i1 %i.ph, label %.thread74.i.i.i, label %.thread88.thread.i.i.i

bb.en:                                            ; preds = %bb.dz
  store i32 32, ptr %i.ox, align 8, !tbaa !208
  %i.pi = icmp eq i32 %i.ou, 1094862674
  br i1 %i.pi, label %.thread74.i.i.i, label %.thread82.i.i.i

bb.eo:                                            ; preds = %bb.dz
  store i32 32, ptr %i.ox, align 8, !tbaa !208
  %i.pj = icmp eq i32 %i.ou, 1380401729
  br i1 %i.pj, label %.thread74.i.i.i, label %.thread82.i.i.i

.thread82.i.i.i:                                  ; preds = %bb.eo, %bb.en
  %.1.16.ph.i.i.i = phi i32 [ 1380401729, %bb.eo ], [ 1094862674, %bb.en ]
  %i.pk = call i32 @avpriv_pix_fmt_find(i32 noundef 2, i32 noundef 32) #18 ; 0 uses
  br label %.thread735

.thread88.thread133.i.i.i:                        ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %.1.16.ph130.i.i.i = phi i32 [ 942683254, %bb.ed ], [ 942682998, %bb.ec ], [ 2037741106, %bb.eb ], [ 1937143161, %bb.ea ]
  %i.pl = call i32 @avpriv_pix_fmt_find(i32 noundef 2, i32 noundef 0) #18 ; 0 uses
  br label %.thread735

bb.ep:                                            ; preds = %bb.dz
  store i32 48, ptr %i.ox, align 8, !tbaa !208
  br label %.thread74.i.i.i

.thread74.i.i.i:                                  ; preds = %bb.ea, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.ek, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea
  %.ph.i.i.i = phi i32 [ 0, %bb.ea ], [ 16, %bb.eg ], [ 32, %bb.em ], [ 16, %bb.ef ], [ 24, %bb.ek ], [ 32, %bb.en ], [ 0, %bb.ee ], [ 16, %bb.ei ], [ 0, %bb.ed ], [ 32, %bb.eo ], [ 0, %bb.ec ], [ 0, %bb.eb ], [ 48, %bb.ep ], [ 16, %bb.eh ], [ 0, %bb.ea ]
  %.2.ph.i.i.i = phi i32 [ %i.ou, %bb.ea ], [ 892745036, %bb.eg ], [ 1095911234, %bb.em ], [ 892679500, %bb.ef ], [ 1195521074, %bb.ek ], [ 1094862674, %bb.en ], [ 808531062, %bb.ee ], [ 1731604834, %bb.ei ], [ 942683254, %bb.ed ], [ 1380401729, %bb.eo ], [ 942682998, %bb.ec ], [ 2037741106, %bb.eb ], [ 1916286050, %bb.ep ], [ 892745026, %bb.eh ], [ %i.ou, %bb.ea ]
  %i.pm = call i32 @avpriv_pix_fmt_find(i32 noundef 2, i32 noundef %.ph.i.i.i) #18 ; 0 uses
  br label %.thread735

.thread88.thread.i.i.i:                           ; preds = %bb.em, %bb.ek
  %.pre.pre93.i.i.i = phi i32 [ 32, %bb.em ], [ 24, %bb.ek ]
  %.1.1672.ph.i.i.i = phi i32 [ 1095911234, %bb.em ], [ 1195521074, %bb.ek ]
  %i.pn = call i32 @avpriv_pix_fmt_find(i32 noundef 2, i32 noundef %.pre.pre93.i.i.i) #18 ; 0 uses
  br label %.thread735

.thread88.thread109.i.i.i:                        ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee
  %.pre.pre111.i.i.i = phi i32 [ 16, %bb.ei ], [ 16, %bb.eh ], [ 16, %bb.eg ], [ 16, %bb.ef ], [ 0, %bb.ee ]
  %.1.1672.ph108.i.i.i = phi i32 [ 1731604834, %bb.ei ], [ 892745026, %bb.eh ], [ 892745036, %bb.eg ], [ 892679500, %bb.ef ], [ 808531062, %bb.ee ]
  %i.po = call i32 @avpriv_pix_fmt_find(i32 noundef 2, i32 noundef %.pre.pre111.i.i.i) #18 ; 0 uses
  br label %.thread735

.thread88.i.i.i:                                  ; preds = %bb.dz
  %.pre.pre.i.i.i = load i32, ptr %i.ox, align 8, !tbaa !208
  %i.pp = call i32 @avpriv_pix_fmt_find(i32 noundef 2, i32 noundef %.pre.pre.i.i.i) #18
  %i.pq = icmp eq i32 %i.ou, 544694642
  br i1 %i.pq, label %bb.eq, label %bb.hi

.sink.split.i.i.i:                                ; preds = %bb.el, %bb.ej, %bb.dz
  %.sink.i.i = phi i32 [ 32, %bb.el ], [ 24, %bb.ej ], [ 16, %bb.dz ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.ox, align 8, !tbaa !208
  %i.pr = call i32 @avpriv_pix_fmt_find(i32 noundef 2, i32 noundef %.sink.i.i) #18
  br label %bb.eq

bb.eq:                                            ; preds = %.sink.split.i.i.i, %.thread88.i.i.i
  %i.ps = phi i32 [ %i.pp, %.thread88.i.i.i ], [ %i.pr, %.sink.split.i.i.i ]
  %i.pt = load ptr, ptr %i.np, align 8, !tbaa !75
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 44
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !209 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.pv, %i.ps
  %i.pw = freeze i1 %.not.i.i.i
  br i1 %i.pw, label %.thread735, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.eq
  switch i32 %i.pv, label %bb.er [
    i32 -1, label %.thread735
    i32 8, label %.thread735
  ]

bb.er:                                            ; preds = %switch.early.test.i.i.i
  %i.px = call ptr @av_get_pix_fmt_name(i32 noundef %i.pv) #18
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.643, ptr noundef %i.px) #18
  br label %.thread735

bb.es:                                            ; preds = %bb.dq
  %.val.i.i = load ptr, ptr %i.mx, align 8, !tbaa !115 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !195 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nz, i64 96
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !234
  %i.qc = icmp ugt i32 %i.qb, 1                   ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 92
  %.sroa.4.0.copyload.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !tbaa !39 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.4.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %defined_frame_rate.exit.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 88
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.qd, align 8, !tbaa !39
  %2 = sitofp nsz i32 %.sroa.0.0.copyload.i.i.i.i to double
  %3 = sitofp nsz i32 %.sroa.4.0.copyload.i.i.i.i to double
  %i.qe = fdiv nsz double %2, %3
  %i.qf = fptosi double %i.qe to i32
  br label %defined_frame_rate.exit.i.i.i

defined_frame_rate.exit.i.i.i:                    ; preds = %bb.et, %bb.es
  %.0.i.i.i.i = phi i32 [ %i.qf, %bb.et ], [ 0, %bb.es ] ; 8 uses
  %.not.i68.i.i = icmp eq i32 %i.pz, 0
  %spec.store.select.i.i.i = select i1 %.not.i68.i.i, i32 829829741, i32 %i.pz ; 9 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.nz, i64 44
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !209
  switch i32 %i.qh, label %.thread735 [
    i32 0, label %bb.eu
    i32 4, label %bb.fl
  ]

bb.eu:                                            ; preds = %defined_frame_rate.exit.i.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.nz, i64 72
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !171
  switch i32 %i.qj, label %.thread735 [
    i32 1280, label %bb.ev
    i32 1440, label %bb.ex
    i32 1920, label %bb.fe
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.qk = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !173
  %i.qm = icmp ne i32 %i.ql, 720
  %brmerge.i.i.i = select i1 %i.qm, i1 true, i1 %i.qc
  br i1 %brmerge.i.i.i, label %.thread735, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %switch.tableidx = add i32 %.0.i.i.i.i, -24     ; 3 uses
  %i.qn = icmp ult i32 %switch.tableidx, 37
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 68786585667, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond1374 = select i1 %i.qn, i1 %switch.lobit, i1 false
  br i1 %or.cond1374, label %switch.lookup, label %.fold.split56.i.i.i

bb.ex:                                            ; preds = %bb.eu
  %i.qo = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !173
  %i.qq = icmp eq i32 %i.qp, 1080
  br i1 %i.qq, label %bb.ey, label %.thread735

bb.ey:                                            ; preds = %bb.ex
  br i1 %i.qc, label %bb.fc, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  switch i32 %.0.i.i.i.i, label %.fold.split56.i.i.i [
    i32 24, label %.thread735
    i32 25, label %bb.fa
    i32 30, label %bb.fb
  ]

bb.fa:                                            ; preds = %bb.ez
  br label %.thread735

bb.fb:                                            ; preds = %bb.ez
  br label %.thread735

bb.fc:                                            ; preds = %bb.ey
  switch i32 %.0.i.i.i.i, label %.fold.split56.i.i.i [
    i32 25, label %.thread735
    i32 30, label %bb.fd
  ]

bb.fd:                                            ; preds = %bb.fc
  br label %.thread735

bb.fe:                                            ; preds = %bb.eu
  %i.qr = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !173
  %i.qt = icmp eq i32 %i.qs, 1080
  br i1 %i.qt, label %bb.ff, label %.thread735

bb.ff:                                            ; preds = %bb.fe
  br i1 %i.qc, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  switch i32 %.0.i.i.i.i, label %.fold.split56.i.i.i [
    i32 24, label %.thread735
    i32 25, label %bb.fh
    i32 30, label %bb.fi
  ]

bb.fh:                                            ; preds = %bb.fg
  br label %.thread735

bb.fi:                                            ; preds = %bb.fg
  br label %.thread735

bb.fj:                                            ; preds = %bb.ff
  switch i32 %.0.i.i.i.i, label %.fold.split56.i.i.i [
    i32 25, label %.thread735
    i32 30, label %bb.fk
  ]

bb.fk:                                            ; preds = %bb.fj
  br label %.thread735

bb.fl:                                            ; preds = %defined_frame_rate.exit.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.nz, i64 72
  %i.qv = load i32, ptr %i.qu, align 8, !tbaa !171
  switch i32 %i.qv, label %.thread735 [
    i32 1280, label %bb.fm
    i32 1920, label %bb.fo
  ]

bb.fm:                                            ; preds = %bb.fl
  %i.qw = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !173
  %i.qy = icmp ne i32 %i.qx, 720
  %brmerge5.i.i.i = select i1 %i.qy, i1 true, i1 %i.qc
  br i1 %brmerge5.i.i.i, label %.thread735, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %switch.tableidx1347 = add i32 %.0.i.i.i.i, -24 ; 3 uses
  %i.qz = icmp ult i32 %switch.tableidx1347, 37
  %switch.maskindex1351 = zext nneg i32 %switch.tableidx1347 to i64
  %switch.shifted1352 = lshr i64 68786585667, %switch.maskindex1351
  %switch.lobit1353 = trunc i64 %switch.shifted1352 to i1
  %or.cond1375 = select i1 %i.qz, i1 %switch.lobit1353, i1 false
  br i1 %or.cond1375, label %switch.lookup1350, label %.fold.split56.i.i.i

bb.fo:                                            ; preds = %bb.fl
  %i.ra = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !173
  %i.rc = icmp eq i32 %i.rb, 1080
  br i1 %i.rc, label %bb.fp, label %.thread735

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.qc, label %bb.ft, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  switch i32 %.0.i.i.i.i, label %.fold.split56.i.i.i [
    i32 24, label %.thread735
    i32 25, label %bb.fr
    i32 30, label %bb.fs
  ]

bb.fr:                                            ; preds = %bb.fq
  br label %.thread735

bb.fs:                                            ; preds = %bb.fq
  br label %.thread735

bb.ft:                                            ; preds = %bb.fp
  switch i32 %.0.i.i.i.i, label %.fold.split56.i.i.i [
    i32 25, label %.thread735
    i32 30, label %bb.fu
  ]

bb.fu:                                            ; preds = %bb.ft
  br label %.thread735

.fold.split56.i.i.i:                              ; preds = %bb.fn, %bb.ew, %bb.ft, %bb.fq, %bb.fj, %bb.fg, %bb.fc, %bb.ez
  br label %.thread735

bb.fv:                                            ; preds = %bb.dq
  %.val63.i.i = load ptr, ptr %i.mx, align 8, !tbaa !115 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !195 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.nz, i64 96
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !234
  %i.rh = icmp ugt i32 %i.rg, 1                   ; 4 uses
  %.sroa.4.0..sroa_idx.i.i69.i.i = getelementptr inbounds nuw i8, ptr %.val63.i.i, i64 92
  %.sroa.4.0.copyload.i.i70.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i69.i.i, align 4, !tbaa !39 ; 2 uses
  %.not.i.i71.i.i = icmp eq i32 %.sroa.4.0.copyload.i.i70.i.i, 0
  br i1 %.not.i.i71.i.i, label %defined_frame_rate.exit.i73.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.ri = getelementptr inbounds nuw i8, ptr %.val63.i.i, i64 88
  %.sroa.0.0.copyload.i.i72.i.i = load i32, ptr %i.ri, align 8, !tbaa !39
  %4 = sitofp nsz i32 %.sroa.0.0.copyload.i.i72.i.i to double
  %5 = sitofp nsz i32 %.sroa.4.0.copyload.i.i70.i.i to double
  %i.rj = fdiv nsz double %4, %5
  %i.rk = fptosi double %i.rj to i32
  br label %defined_frame_rate.exit.i73.i.i

defined_frame_rate.exit.i73.i.i:                  ; preds = %bb.fw, %bb.fv
  %.0.i.i74.i.i = phi i32 [ %i.rk, %bb.fw ], [ 0, %bb.fv ] ; 6 uses
  %.not.i75.i.i = icmp eq i32 %i.re, 0
  %spec.store.select.i76.i.i = select i1 %.not.i75.i.i, i32 1768126049, i32 %i.re ; 12 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.nz, i64 64
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !198 ; 2 uses
  %i.rn = icmp eq i32 %i.rm, -99
  %i.ro = and i32 %i.rm, 2048
  %.not55.i.i.i = icmp eq i32 %i.ro, 0
  %or.cond.i.i.i = or i1 %i.rn, %.not55.i.i.i
  br i1 %or.cond.i.i.i, label %.thread735, label %bb.fx

bb.fx:                                            ; preds = %defined_frame_rate.exit.i73.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.nz, i64 44
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !209
  switch i32 %i.rq, label %.thread735 [
    i32 62, label %bb.fy
    i32 64, label %bb.gh
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.rr = getelementptr inbounds nuw i8, ptr %i.nz, i64 72
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !171
  switch i32 %i.rs, label %.thread735 [
    i32 960, label %bb.fz
    i32 1440, label %bb.gb
  ]

bb.fz:                                            ; preds = %bb.fy
  %i.rt = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !173
  %i.rv = icmp ne i32 %i.ru, 720
  %brmerge.i77.i.i = select i1 %i.rv, i1 true, i1 %i.rh
  br i1 %brmerge.i77.i.i, label %.thread735, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %switch.tableidx1356 = add i32 %.0.i.i74.i.i, -24 ; 3 uses
  %i.rw = icmp ult i32 %switch.tableidx1356, 37
  %switch.maskindex1360 = zext nneg i32 %switch.tableidx1356 to i64
  %switch.shifted1361 = lshr i64 68786585667, %switch.maskindex1360
  %switch.lobit1362 = trunc i64 %switch.shifted1361 to i1
  %or.cond1376 = select i1 %i.rw, i1 %switch.lobit1362, i1 false
  br i1 %or.cond1376, label %switch.lookup1359, label %.fold.split.i.i.i

bb.gb:                                            ; preds = %bb.fy
  %i.rx = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !173
  %i.rz = icmp eq i32 %i.ry, 1080
  br i1 %i.rz, label %bb.gc, label %.thread735

bb.gc:                                            ; preds = %bb.gb
  br i1 %i.rh, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  switch i32 %.0.i.i74.i.i, label %.fold.split.i.i.i [
    i32 24, label %.thread735
    i32 25, label %bb.ge
    i32 30, label %.thread735
  ]

bb.ge:                                            ; preds = %bb.gd
  br label %.thread735

bb.gf:                                            ; preds = %bb.gc
  switch i32 %.0.i.i74.i.i, label %.fold.split.i.i.i [
    i32 50, label %.thread735
    i32 60, label %bb.gg
  ]

bb.gg:                                            ; preds = %bb.gf
  br label %.thread735

bb.gh:                                            ; preds = %bb.fx
  %i.sa = getelementptr inbounds nuw i8, ptr %i.nz, i64 72
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !171
  %i.sc = add i32 %i.sb, -1280                    ; 2 uses
  %i.sd = call i32 @llvm.fshl.i32(i32 %i.sc, i32 %i.sc, i32 25)
  switch i32 %i.sd, label %.thread735 [
    i32 0, label %bb.gi
    i32 5, label %bb.gk
    i32 22, label %bb.gq
    i32 20, label %bb.gr
    i32 6, label %bb.gs
  ]

bb.gi:                                            ; preds = %bb.gh
  %i.se = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !173
  %i.sg = icmp ne i32 %i.sf, 720
  %brmerge8.i.i.i = select i1 %i.sg, i1 true, i1 %i.rh
  br i1 %brmerge8.i.i.i, label %.thread735, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %switch.tableidx1365 = add i32 %.0.i.i74.i.i, -24 ; 3 uses
  %i.sh = icmp ult i32 %switch.tableidx1365, 37
  %switch.maskindex1369 = zext nneg i32 %switch.tableidx1365 to i64
  %switch.shifted1370 = lshr i64 68786585667, %switch.maskindex1369
  %switch.lobit1371 = trunc i64 %switch.shifted1370 to i1
  %or.cond1377 = select i1 %i.sh, i1 %switch.lobit1371, i1 false
  br i1 %or.cond1377, label %switch.lookup1368, label %.fold.split.i.i.i

bb.gk:                                            ; preds = %bb.gh
  %i.si = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !173
  %i.sk = icmp eq i32 %i.sj, 1080
  br i1 %i.sk, label %bb.gl, label %.thread735

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.rh, label %bb.go, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  switch i32 %.0.i.i74.i.i, label %.fold.split.i.i.i [
    i32 24, label %.thread735
    i32 25, label %bb.gn
    i32 30, label %.thread735
  ]

bb.gn:                                            ; preds = %bb.gm
  br label %.thread735

bb.go:                                            ; preds = %bb.gl
  switch i32 %.0.i.i74.i.i, label %.fold.split.i.i.i [
    i32 25, label %.thread735
    i32 50, label %.thread735
    i32 60, label %bb.gp
  ]

bb.gp:                                            ; preds = %bb.go
  br label %.thread735

bb.gq:                                            ; preds = %bb.gh
  %i.sl = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !173
  %i.sn = icmp eq i32 %i.sm, 2160
  br i1 %i.sn, label %bb.gt, label %.thread735

bb.gr:                                            ; preds = %bb.gh
  %i.so = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !173
  %i.sq = icmp eq i32 %i.sp, 2160
  br i1 %i.sq, label %bb.gt, label %.thread735

bb.gs:                                            ; preds = %bb.gh
  %i.sr = getelementptr inbounds nuw i8, ptr %i.nz, i64 76
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !173
  %i.st = icmp eq i32 %i.ss, 1080
  br i1 %i.st, label %bb.gt, label %.thread735

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %bb.gq
  br label %.thread735

.fold.split.i.i.i:                                ; preds = %bb.gj, %bb.ga, %bb.go, %bb.gm, %bb.gf, %bb.gd
  br label %.thread735

bb.gu:                                            ; preds = %bb.dq
  %i.su = getelementptr i8, ptr %i.nz, i64 8
  %.val65.val.i.i = load i32, ptr %i.su, align 8, !tbaa !195 ; 2 uses
  %.not.i78.i.i = icmp eq i32 %.val65.val.i.i, 0
  %spec.select804 = select i1 %.not.i78.i.i, i32 828601957, i32 %.val65.val.i.i
  br label %.thread735

bb.gv:                                            ; preds = %bb.dq
  %i.sv = getelementptr i8, ptr %i.nz, i64 8
  %.val66.val.i.i = load i32, ptr %i.sv, align 8, !tbaa !195 ; 2 uses
  %.not.i80.i.i = icmp eq i32 %.val66.val.i.i, 0
  %spec.select805 = select i1 %.not.i80.i.i, i32 829845601, i32 %.val66.val.i.i
  br label %.thread735

bb.gw:                                            ; preds = %bb.dq
  %i.sw = getelementptr i8, ptr %i.nz, i64 64
  %.val67.val.i.i = load i32, ptr %i.sw, align 8, !tbaa !198 ; 2 uses
  %switch.selectcmp.case1.i.i.i = icmp eq i32 %.val67.val.i.i, -99
  %switch.selectcmp.case2.i.i.i = icmp eq i32 %.val67.val.i.i, 0
  %switch.selectcmp.i82.i.i = or i1 %switch.selectcmp.case1.i.i.i, %switch.selectcmp.case2.i.i.i
  %i.sx = select i1 %switch.selectcmp.i82.i.i, i32 1852069441, i32 1751406145
  br label %.thread735

bb.gx:                                            ; preds = %bb.dq
  %i.sy = load i32, ptr %i.nz, align 8, !tbaa !170
  switch i32 %i.sy, label %bb.hi [
    i32 0, label %bb.gy
    i32 1, label %bb.hb
    i32 3, label %bb.he
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.sz = call i32 @ff_codec_get_tag(ptr noundef nonnull @ff_codec_movvideo_tags, i32 noundef %i.ob) #18 ; 2 uses
  %.not60.i.i = icmp eq i32 %i.sz, 0
  br i1 %.not60.i.i, label %bb.gz, label %.thread735

bb.gz:                                            ; preds = %bb.gy
  %i.ta = load ptr, ptr %i.np, align 8, !tbaa !75
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !98
  %i.td = call i32 @ff_codec_get_tag(ptr noundef nonnull @ff_codec_bmp_tags, i32 noundef %i.tc) #18 ; 2 uses
  %.not61.i.i = icmp eq i32 %i.td, 0
  br i1 %.not61.i.i, label %.thread739, label %bb.ha
end_hunk_0
