Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ffmpeg_demux?download=true
inline.NumInlined: 83
inline.NumDeleted: 35
begin_hunk_0_@ifile_open:bb.a
  %.not382510.not = icmp eq i32 %i.qi, 0
  br i1 %.not382510.not, label %._crit_edge513, label %.lr.ph512

bb.db:                                            ; preds = %.lr.ph509, %bb.hp
  %indvars.iv582 = phi i64 [ 0, %.lr.ph509 ], [ %indvars.iv.next583, %bb.hp ] ; 2 uses
  %i.qj = phi ptr [ %i.oz, %.lr.ph509 ], [ %i.adh, %bb.hp ]
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 48
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !109
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %indvars.iv582
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !110 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.qo = load ptr, ptr %i.ig, align 8, !tbaa !79 ; 23 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 16 ; 4 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !78 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  store ptr null, ptr %i.k, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  store ptr null, ptr %i.l, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  store ptr null, ptr %i.m, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  store ptr null, ptr %i.n, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  store ptr null, ptr %i.o, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  store ptr null, ptr %i.p, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  store ptr null, ptr %i.q, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #13
  store ptr null, ptr %i.s, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !26
  %i.qs = call ptr @av_get_media_type_string(i32 noundef %i.qr) #13 ; 2 uses
  %i.qt = call ptr @allocate_array_elem(ptr noundef nonnull %i.pc, i64 noundef 368, ptr noundef nonnull %i.pd) #13 ; 88 uses
  %.not.i.i = icmp eq ptr %i.qt, null
  br i1 %.not.i.i, label %.thread427, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 128
  store i32 -1, ptr %i.qu, align 8, !tbaa !68
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 132
  store i32 -1, ptr %i.qv, align 4, !tbaa !77
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 24 ; 14 uses
  store ptr %i.qn, ptr %i.qw, align 8, !tbaa !259
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  store ptr %i.ar, ptr %i.qx, align 8, !tbaa !260
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !261 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  store i32 %i.qz, ptr %i.ra, align 8, !tbaa !262
  store ptr @input_stream_class, ptr %i.qt, align 8, !tbaa !263
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qt, i64 96
  %.not24.i.i = icmp eq ptr %i.qs, null
  br i1 %.not24.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rc = load i8, ptr %i.qs, align 1, !tbaa !95
  %i.rd = sext i8 %i.rc to i32
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.re = phi i32 [ %i.rd, %bb.dd ], [ 63, %bb.dc ]
  %i.rf = load i32, ptr %i.au, align 8, !tbaa !70
  %i.rg = load ptr, ptr %i.qp, align 8, !tbaa !78
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !67
  %i.rj = call ptr @avcodec_get_name(i32 noundef %i.ri) #13
  %i.rk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.rb, i64 noundef 32, ptr noundef nonnull @.str.114, i32 noundef %i.re, i32 noundef %i.rf, i32 noundef %i.qz, ptr noundef %i.rj) #13 ; 0 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qt, i64 148
  store i32 1, ptr %i.rl, align 4, !tbaa !34
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qn, i64 68
  store i32 48, ptr %i.rm, align 4, !tbaa !76
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qt, i64 200
  store i64 -9223372036854775808, ptr %i.rn, align 8, !tbaa !121
  %i.ro = getelementptr inbounds nuw i8, ptr %i.qt, i64 208
  store i64 -9223372036854775808, ptr %i.ro, align 8, !tbaa !122
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qt, i64 240 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qt, i64 300
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !87
  store i64 %i.rs, ptr %i.rq, align 4, !tbaa !87
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qt, i64 136 ; 2 uses
  store double 1.000000e+00, ptr %i.rt, align 8, !tbaa !123
  call void @opt_match_per_stream_dbl(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.pe, ptr noundef %i.qo, ptr noundef nonnull %i.qn, ptr noundef nonnull %i.rt) #13
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qt, i64 168 ; 2 uses
  store i32 1, ptr %i.ru, align 8, !tbaa !104
  call void @opt_match_per_stream_int(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.pf, ptr noundef %i.qo, ptr noundef nonnull %i.qn, ptr noundef nonnull %i.ru) #13
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qt, i64 172 ; 3 uses
  store i32 1, ptr %i.rv, align 4, !tbaa !96
  call void @opt_match_per_stream_str(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.pg, ptr noundef %i.qo, ptr noundef nonnull %i.qn, ptr noundef nonnull %i.n) #13
  %i.rw = load ptr, ptr %i.n, align 8, !tbaa !111 ; 2 uses
  %.not295.i = icmp eq ptr %i.rw, null
  br i1 %.not295.i, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(384) %4, ptr noundef nonnull align 16 dereferenceable(384) @__const.ist_add.opts, i64 384, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store <2 x ptr> <ptr @.str.78, ptr @av_default_item_name>, ptr %5, align 16, !tbaa !107
  store ptr %4, ptr %i.ph, align 16, !tbaa !266
  store i32 3998052, ptr %i.pi, align 8, !tbaa !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.pj, i8 0, i64 52, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #13
  store ptr %5, ptr %i.t, align 8, !tbaa !216
  %i.rx = call i32 @av_opt_eval_int(ptr noundef nonnull %i.t, ptr noundef nonnull %4, ptr noundef nonnull %i.rw, ptr noundef nonnull %i.rv) #13 ; 2 uses
  %i.ry = icmp sgt i32 %i.rx, -1
  br i1 %i.ry, label %.critedge.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.rz = load ptr, ptr %i.n, align 8, !tbaa !111
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.qt, i32 noundef 16, ptr noundef nonnull @.str.83, ptr noundef %i.rz) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread427

.critedge.i:                                      ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.dh

bb.dh:                                            ; preds = %.critedge.i, %bb.de
  call void @opt_match_per_stream_str(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.pk, ptr noundef %i.qo, ptr noundef nonnull %i.qn, ptr noundef nonnull %i.p) #13
  %i.sa = load ptr, ptr %i.p, align 8, !tbaa !111 ; 2 uses
  %.not296.i = icmp eq ptr %i.sa, null
  br i1 %.not296.i, label %._crit_edge366.i, label %bb.di

._crit_edge366.i:                                 ; preds = %bb.dh
  %.pre.i = load ptr, ptr %i.qp, align 8, !tbaa !78
  br label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.sb = call i64 @strtol(ptr noundef nonnull %i.sa, ptr noundef nonnull %i.r, i32 noundef 0) #13
  %i.sc = trunc i64 %i.sb to i32
  %i.sd = load ptr, ptr %i.r, align 8, !tbaa !111
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !95
  %.not297.i = icmp eq i8 %i.se, 0
  br i1 %.not297.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4
  %i.sf = load ptr, ptr %i.p, align 8, !tbaa !111 ; 2 uses
  %i.sg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sf) #14
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.sg, i64 4)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i, ptr nonnull align 1 %i.sf, i64 %spec.select.i, i1 false)
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..i = load i32, ptr %.sroa.0.i, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.0253.i = phi i32 [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..i, %bb.dj ], [ %i.sc, %bb.di ]
  %i.sh = load ptr, ptr %i.qp, align 8, !tbaa !78 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store i32 %.0253.i, ptr %i.si, align 8, !tbaa !268
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %._crit_edge366.i
  %i.sj = phi ptr [ %.pre.i, %._crit_edge366.i ], [ %i.sh, %bb.dk ]
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !26
  %i.sl = icmp eq i32 %i.sk, 0
  br i1 %i.sl, label %bb.dm, label %bb.fc

bb.dm:                                            ; preds = %bb.dl
  %i.sm = load ptr, ptr %i.qw, align 8, !tbaa !72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.h, align 8, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store i32 -1, ptr %i.i, align 4, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store i32 -1, ptr %i.j, align 4, !tbaa !87
  call void @opt_match_per_stream_dbl(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.pl, ptr noundef %i.qo, ptr noundef %i.sm, ptr noundef nonnull %i.h) #13
  call void @opt_match_per_stream_int(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.pm, ptr noundef %i.qo, ptr noundef %i.sm, ptr noundef nonnull %i.i) #13
  call void @opt_match_per_stream_int(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.pn, ptr noundef %i.qo, ptr noundef %i.sm, ptr noundef nonnull %i.j) #13
  %i.sn = load double, ptr %i.h, align 8, !tbaa !269
  %i.so = fcmp nsz une double %i.sn, f0x7FEFFFFFFFFFFFFF ; 2 uses
  %i.sp = load i32, ptr %i.i, align 4, !tbaa !87
  %i.sq = icmp ne i32 %i.sp, -1                   ; 2 uses
  %i.sr = load i32, ptr %i.j, align 4, !tbaa !87
  %i.ss = icmp ne i32 %i.sr, -1                   ; 2 uses
  %or.cond.i.i = select i1 %i.so, i1 true, i1 %i.sq
  %or.cond3.i.i = select i1 %or.cond.i.i, i1 true, i1 %i.ss
  br i1 %or.cond3.i.i, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !78 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  %i.sx = call ptr @av_packet_side_data_new(ptr noundef nonnull %i.sv, ptr noundef nonnull %i.sw, i32 noundef 5, i64 noundef 36, i32 noundef 0) #13 ; 2 uses
  %.not.i339.i = icmp eq ptr %i.sx, null
  br i1 %.not.i339.i, label %add_display_matrix_to_stream.exit.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !94 ; 2 uses
  %i.sz = load double, ptr %i.h, align 8
  %i.ta = fneg nsz double %i.sz
  %i.tb = select nsz i1 %i.so, double %i.ta, double 0.000000e+00
  call void @av_display_rotation_set(ptr noundef %i.sy, double noundef %i.tb) #13
  %i.tc = load i32, ptr %i.i, align 4
  %i.td = select i1 %i.sq, i32 %i.tc, i32 0
  %i.te = load i32, ptr %i.j, align 4
  %i.tf = select i1 %i.ss, i32 %i.te, i32 0
  call void @av_display_matrix_flip(ptr noundef %i.sy, i32 noundef %i.td, i32 noundef %i.tf) #13
  %i.tg = getelementptr inbounds nuw i8, ptr %i.qt, i64 176
  store i32 1, ptr %i.tg, align 8, !tbaa !270
  br label %bb.dp

add_display_matrix_to_stream.exit.i:              ; preds = %bb.dn
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.qt, i32 noundef 8, ptr noundef nonnull @.str.117) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %.thread427

bb.dp:                                            ; preds = %bb.do, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  %i.th = load ptr, ptr %i.qw, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store ptr null, ptr %i.f, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @opt_match_per_stream_str(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.po, ptr noundef %i.qo, ptr noundef %i.th, ptr noundef nonnull %i.f) #13
  %i.ti = load ptr, ptr %i.f, align 8, !tbaa !111
  %.not.i340.i = icmp eq ptr %i.ti, null
  br i1 %.not.i340.i, label %bb.dy, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.tj = call ptr @av_mastering_display_metadata_alloc_size(ptr noundef nonnull %i.g) #13 ; 26 uses
  store ptr %i.tj, ptr %i.e, align 8, !tbaa !272
  %.not13.i.i = icmp eq ptr %i.tj, null
  br i1 %.not13.i.i, label %add_mastering_display_to_stream.exit.thread.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.tk = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 16 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 24 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 32 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tj, i64 40 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tj, i64 8 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tj, i64 48 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tj, i64 56 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tj, i64 72 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tj, i64 64 ; 2 uses
  %i.tu = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.tk, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.tl, ptr noundef nonnull %i.tm, ptr noundef nonnull %i.tn, ptr noundef nonnull %i.to, ptr noundef nonnull %i.tj, ptr noundef nonnull %i.tp, ptr noundef nonnull %i.tq, ptr noundef nonnull %i.tr, ptr noundef nonnull %i.ts, ptr noundef nonnull %i.tt) #13
  %.not14.i.i = icmp eq i32 %i.tu, 10
  br i1 %.not14.i.i, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.tv = load i32, ptr %i.tl, align 4, !tbaa !273
  %i.tw = load i32, ptr %i.tm, align 4, !tbaa !273
  %i.tx = or i32 %i.tw, %i.tv
  %i.ty = load i32, ptr %i.tn, align 4, !tbaa !273
  %i.tz = or i32 %i.tx, %i.ty
  %i.ua = load i32, ptr %i.to, align 4, !tbaa !273
  %i.ub = or i32 %i.tz, %i.ua
  %i.uc = load i32, ptr %i.tj, align 4, !tbaa !273
  %i.ud = or i32 %i.ub, %i.uc
  %i.ue = load i32, ptr %i.tp, align 4, !tbaa !273
  %i.uf = or i32 %i.ud, %i.ue
  %i.ug = load i32, ptr %i.tq, align 4, !tbaa !273
  %i.uh = or i32 %i.uf, %i.ug
  %i.ui = load i32, ptr %i.tr, align 4, !tbaa !273
  %i.uj = or i32 %i.uh, %i.ui
  %i.uk = icmp ugt i32 %i.uj, 65535
  br i1 %i.uk, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ul = load i32, ptr %i.ts, align 4, !tbaa !275 ; 2 uses
  %i.um = load i32, ptr %i.tt, align 4, !tbaa !276 ; 2 uses
  %i.un = or i32 %i.um, %i.ul
  %i.uo = icmp slt i32 %i.un, 0
  %i.up = icmp sgt i32 %i.um, %i.ul
  %or.cond.i342.i = or i1 %i.up, %i.uo
  br i1 %or.cond.i342.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  call void @av_freep(ptr noundef nonnull %i.e) #13
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.qt, i32 noundef 16, ptr noundef nonnull @.str.119) #13
  br label %add_mastering_display_to_stream.exit.thread.i

bb.dv:                                            ; preds = %bb.dt
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tj, i64 20
  store i32 50000, ptr %i.uq, align 4, !tbaa !277
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tj, i64 28
  store i32 50000, ptr %i.ur, align 4, !tbaa !277
  %i.us = getelementptr inbounds nuw i8, ptr %i.tj, i64 36
  store i32 50000, ptr %i.us, align 4, !tbaa !277
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tj, i64 44
  store i32 50000, ptr %i.ut, align 4, !tbaa !277
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  store i32 50000, ptr %i.uu, align 4, !tbaa !277
  %i.uv = getelementptr inbounds nuw i8, ptr %i.tj, i64 12
  store i32 50000, ptr %i.uv, align 4, !tbaa !277
  %i.uw = getelementptr inbounds nuw i8, ptr %i.tj, i64 52
  store i32 50000, ptr %i.uw, align 4, !tbaa !277
  %i.ux = getelementptr inbounds nuw i8, ptr %i.tj, i64 60
  store i32 50000, ptr %i.ux, align 4, !tbaa !277
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tj, i64 76
  store i32 10000, ptr %i.uy, align 4, !tbaa !278
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tj, i64 68
  store i32 10000, ptr %i.uz, align 4, !tbaa !279
  %i.va = getelementptr inbounds nuw i8, ptr %i.tj, i64 80
  store i32 1, ptr %i.va, align 4, !tbaa !280
  %i.vb = getelementptr inbounds nuw i8, ptr %i.tj, i64 84
  store i32 1, ptr %i.vb, align 4, !tbaa !281
  %i.vc = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !78 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vg = load i64, ptr %i.g, align 8, !tbaa !62
  %i.vh = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.ve, ptr noundef nonnull %i.vf, i32 noundef 20, ptr noundef nonnull %i.tj, i64 noundef %i.vg, i32 noundef 0) #13
  %.not15.i.i = icmp eq ptr %i.vh, null
  br i1 %.not15.i.i, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  call void @av_freep(ptr noundef nonnull %i.e) #13
  br label %add_mastering_display_to_stream.exit.thread.i

bb.dx:                                            ; preds = %bb.dv
  %i.vi = getelementptr inbounds nuw i8, ptr %i.qt, i64 180
  store i32 1, ptr %i.vi, align 4, !tbaa !282
  br label %bb.dy

add_mastering_display_to_stream.exit.thread.i:    ; preds = %bb.dq, %bb.dw, %bb.du
  %.0.i341.ph.i = phi i32 [ -22, %bb.du ], [ -12, %bb.dw ], [ -12, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %.thread427

bb.dy:                                            ; preds = %bb.dx, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.vj = load ptr, ptr %i.qw, align 8, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @opt_match_per_stream_str(ptr noundef nonnull %i.qt, ptr noundef nonnull %i.pp, ptr noundef %i.qo, ptr noundef %i.vj, ptr noundef nonnull %i.c) #13
  %i.vk = load ptr, ptr %i.c, align 8, !tbaa !111
  %.not.i343.i = icmp eq ptr %i.vk, null
  br i1 %.not.i343.i, label %bb.eg, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vl = call ptr @av_content_light_metadata_alloc(ptr noundef nonnull %i.d) #13 ; 6 uses
  store ptr %i.vl, ptr %i.b, align 8, !tbaa !284
  %.not13.i344.i = icmp eq ptr %i.vl, null
  br i1 %.not13.i344.i, label %add_content_light_to_stream.exit.thread.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vm = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 4 ; 2 uses
  %i.vo = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.vm, ptr noundef nonnull @.str.120, ptr noundef nonnull %i.vl, ptr noundef nonnull %i.vn) #13
  %.not14.i345.i = icmp eq i32 %i.vo, 2
  br i1 %.not14.i345.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.vp = load i32, ptr %i.vl, align 4, !tbaa !286
  %i.vq = load i32, ptr %i.vn, align 4, !tbaa !287
  %i.vr = or i32 %i.vq, %i.vp
  %i.vs = icmp ugt i32 %i.vr, 65535
  br i1 %i.vs, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  call void @av_freep(ptr noundef nonnull %i.b) #13
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.qt, i32 noundef 16, ptr noundef nonnull @.str.121) #13
  br label %add_content_light_to_stream.exit.thread.i

bb.ed:                                            ; preds = %bb.eb
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !78 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 32
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 40
  %i.vx = load i64, ptr %i.d, align 8, !tbaa !62
  %i.vy = call ptr @av_packet_side_data_add(ptr noundef nonnull %i.vv, ptr noundef nonnull %i.vw, i32 noundef 22, ptr noundef nonnull %i.vl, i64 noundef %i.vx, i32 noundef 0) #13
  %.not15.i347.i = icmp eq ptr %i.vy, null
  br i1 %.not15.i347.i, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @av_freep(ptr noundef nonnull %i.b) #13
  br label %add_content_light_to_stream.exit.thread.i

bb.ef:                                            ; preds = %bb.ed
  %i.vz = getelementptr inbounds nuw i8, ptr %i.qt, i64 184
  store i32 1, ptr %i.vz, align 8, !tbaa !288
  br label %bb.eg

add_content_light_to_stream.exit.thread.i:        ; preds = %bb.dz, %bb.ee, %bb.ec
  %.0.i346.ph.i = phi i32 [ -22, %bb.ec ], [ -12, %bb.ee ], [ -12, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %.thread427

end_hunk_0
