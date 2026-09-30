Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/matroskadec?download=true
inline.NumInlined: 77
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@matroska_read_header:bb.a

bb.ee:                                            ; preds = %bb.ed
  store i32 826365012, ptr %i.p, align 16, !tbaa !98
  store i16 1, ptr %.4..4..4..4..4..4..4..4..4..sroa_idx, align 4, !tbaa !98
  %i.rn = trunc nuw i64 %i.rb to i16
  store i16 %i.rn, ptr %.6..6..6..6..6..6..6..6..6..sroa_idx, align 2, !tbaa !98
  %i.ro = trunc nuw i64 %.pre228.i.i.i to i16
  store i16 %i.ro, ptr %.8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !tbaa !98
  %i.rp = fptoui double %i.rk to i32
  store i32 %i.rp, ptr %.10..10..10..10..10..10..10..10..10..sroa_idx, align 2, !tbaa !98
  %i.rq = load double, ptr %i.er, align 8, !tbaa !43
  %i.rr = load i64, ptr %i.ep, align 8, !tbaa !88
  %i.rs = uitofp nsz i64 %i.rr to double
  %i.rt = fmul nsz double %i.rq, %i.rs
  %i.ru = fptosi double %i.rt to i64
  %i.rv = fptosi double %i.rk to i64
  %i.rw = call i64 @av_rescale(i64 noundef %i.ru, i64 noundef %i.rv, i64 noundef 1000000000) #16
  %i.rx = trunc i64 %i.rw to i32
  store i32 %i.rx, ptr %.14..14..14..14..14..14..14..14..14..sroa_idx, align 2, !tbaa !98
  br label %matroska_parse_flac.exit.i.i.i

bb.ef:                                            ; preds = %bb.dl
  %i.ry = getelementptr inbounds nuw i8, ptr %i.et, i64 416
  store double 8.000000e+03, ptr %i.ry, align 8, !tbaa !235
  %i.rz = getelementptr inbounds nuw i8, ptr %i.et, i64 432
  store i64 1, ptr %i.rz, align 8, !tbaa !258
  br label %mka_parse_audio_codec.exit.thread55.i.i

bb.eg:                                            ; preds = %bb.dl, %bb.dl, %bb.dl, %bb.dl
  %i.sa = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !242 ; 5 uses
  %i.sd = load i32, ptr %i.sa, align 8, !tbaa !241 ; 2 uses
  %.not164.i.i.i = icmp eq i32 %i.sd, 0
  br i1 %.not164.i.i.i, label %mka_parse_audio_codec.exit.thread55.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.se = icmp slt i32 %i.sd, 46
  br i1 %i.se, label %mka_parse_audio.exit.thread303.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 22
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  %i.sh = load i16, ptr %i.sf, align 1, !tbaa !98
  %i.si = call i16 @llvm.bswap.i16(i16 %i.sh)     ; 2 uses
  %i.sj = load i32, ptr %i.sg, align 1, !tbaa !98
  %i.sk = call i32 @llvm.bswap.i32(i32 %i.sj)     ; 5 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.et, i64 440
  store i32 %i.sk, ptr %i.sl, align 8, !tbaa !126
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sc, i64 40
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 42
  %i.so = load i16, ptr %i.sm, align 1, !tbaa !98 ; 2 uses
  %i.sp = call i16 @llvm.bswap.i16(i16 %i.so)     ; 3 uses
  %i.sq = zext i16 %i.sp to i32                   ; 3 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.et, i64 444
  store i32 %i.sq, ptr %i.sr, align 4, !tbaa !127
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sc, i64 44
  %i.st = load i16, ptr %i.sn, align 1, !tbaa !98 ; 2 uses
  %i.su = call i16 @llvm.bswap.i16(i16 %i.st)     ; 3 uses
  %i.sv = zext i16 %i.su to i32                   ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.et, i64 448
  store i32 %i.sv, ptr %i.sw, align 8, !tbaa !128
  %i.sx = load i16, ptr %i.ss, align 1, !tbaa !98 ; 2 uses
  %i.sy = call i16 @llvm.bswap.i16(i16 %i.sx)     ; 2 uses
  %i.sz = zext i16 %i.sy to i32                   ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.et, i64 452 ; 2 uses
  store i32 %i.sz, ptr %i.ta, align 4, !tbaa !129
  %i.tb = icmp slt i32 %i.sk, 1
  %i.tc = icmp eq i16 %i.so, 0
  %or.cond224.i.i.i = select i1 %i.tb, i1 true, i1 %i.tc
  %i.td = icmp eq i16 %i.st, 0
  %or.cond225.i.i.i = select i1 %or.cond224.i.i.i, i1 true, i1 %i.td
  br i1 %or.cond225.i.i.i, label %mka_parse_audio.exit.thread303.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  switch i32 %i.mx, label %bb.eo [
    i32 77825, label %bb.ek
    i32 86057, label %bb.em
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.te = and i32 %i.sq, 1
  %.not166.i.i.i = icmp eq i32 %i.te, 0
  br i1 %.not166.i.i.i, label %bb.el, label %mka_parse_audio.exit.thread303.i

bb.el:                                            ; preds = %bb.ek
  %i.tf = shl nuw nsw i32 %i.sv, 1
  %i.tg = zext nneg i32 %i.tf to i64
  %i.th = zext i16 %i.sp to i64
  %i.ti = zext nneg i32 %i.sk to i64
  %i.tj = mul nuw nsw i64 %i.th, %i.ti
  %.not167.i.i.i = icmp eq i64 %i.tj, %i.tg
  br i1 %.not167.i.i.i, label %.thread249.i.i.i, label %mka_parse_audio.exit.thread303.i

.thread249.i.i.i:                                 ; preds = %bb.el
  %i.tk = getelementptr inbounds nuw i8, ptr %i.kl, i64 156
  store i32 %i.sk, ptr %i.tk, align 4, !tbaa !130
  store i32 0, ptr %i.sa, align 8, !tbaa !241
  br label %._crit_edge.i.i

bb.em:                                            ; preds = %bb.ej
  %i.tl = icmp ugt i16 %i.si, 3
  br i1 %i.tl, label %mka_parse_audio.exit.thread303.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tm = zext nneg i16 %i.si to i64              ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr @ff_sipr_subpk_size, i64 %i.tm
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !98
  %i.tp = zext i8 %i.to to i32                    ; 2 uses
  store i32 %i.tp, ptr %i.ta, align 4, !tbaa !129
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr @mka_parse_audio_codec.sipr_bit_rate, i64 %i.tm
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !131
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.kl, i64 48
  store i64 %i.ts, ptr %i.tt, align 8, !tbaa !260
  br label %bb.eq

bb.eo:                                            ; preds = %bb.ej
  %i.tu = icmp eq i16 %i.sx, 0
  br i1 %i.tu, label %mka_parse_audio.exit.thread303.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.tv = urem i16 %i.su, %i.sy
  %.not165.i.i.i = icmp eq i16 %i.tv, 0
  br i1 %.not165.i.i.i, label %bb.eq, label %mka_parse_audio.exit.thread303.i

bb.eq:                                            ; preds = %bb.ep, %bb.en
  %i.tw = phi i32 [ %i.sz, %bb.ep ], [ %i.tp, %bb.en ] ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.kl, i64 156
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !130
  %i.ty = icmp eq i32 %i.tw, 0
  br i1 %i.ty, label %mka_parse_audio.exit.thread303.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.eq, %.thread249.i.i.i
  %.3279.i = phi i32 [ 0, %.thread249.i.i.i ], [ 78, %bb.eq ]
  %i.tz = phi i32 [ %i.sk, %.thread249.i.i.i ], [ %i.tw, %bb.eq ]
  %i.ua = mul nuw i32 %i.sv, %i.sq
  %i.ub = icmp slt i32 %i.ua, %i.tz
  br i1 %i.ub, label %mka_parse_audio.exit.thread303.i, label %bb.er

bb.er:                                            ; preds = %._crit_edge.i.i
  %i.uc = zext i16 %i.sp to i64
  %i.ud = zext i16 %i.su to i64
  %i.ue = call ptr @av_malloc_array(i64 noundef %i.uc, i64 noundef %i.ud) #14 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.et, i64 472
  store ptr %i.ue, ptr %i.uf, align 8, !tbaa !132
  %.not168.not.i.i.i = icmp eq ptr %i.ue, null
  br i1 %.not168.not.i.i.i, label %mka_parse_audio.exit.thread303.i, label %mka_parse_audio_codec.exit.thread55.i.i

bb.es:                                            ; preds = %bb.dl
  %i.ug = getelementptr inbounds nuw i8, ptr %i.et, i64 432
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !258 ; 2 uses
  %i.ui = icmp ugt i64 %i.uh, 8
  br i1 %i.ui, label %mka_parse_audio.exit.thread303.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.uj = trunc nuw nsw i64 %i.uh to i32
  %i.uk = mul nuw nsw i32 %i.uj, 212
  %i.ul = getelementptr inbounds nuw i8, ptr %i.kl, i64 156
  store i32 %i.uk, ptr %i.ul, align 4, !tbaa !130
  br label %mka_parse_audio_codec.exit.thread55.i.i

bb.eu:                                            ; preds = %bb.dl
  %i.um = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 3 uses
  %i.un = load i32, ptr %i.um, align 8, !tbaa !241 ; 4 uses
  %.not163.i.i.i = icmp eq i32 %i.un, 0
  br i1 %.not163.i.i.i, label %mka_parse_audio_codec.exit.thread55.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.uo = load ptr, ptr %i.kj, align 8, !tbaa !115
  %i.up = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !242 ; 2 uses
  %i.ur = icmp slt i32 %i.un, 42
  br i1 %i.ur, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !98
  %i.uu = and i8 %i.ut, 127
  %.not.i178.i.i.i = icmp eq i8 %i.uu, 0
  br i1 %.not.i178.i.i.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.145) #14
  store i32 0, ptr %i.um, align 8, !tbaa !241
  br label %mka_parse_audio_codec.exit.thread55.i.i

bb.ey:                                            ; preds = %bb.ew
  store i32 42, ptr %i.um, align 8, !tbaa !241
  %i.uv = icmp samesign ugt i32 %i.un, 45
  br i1 %i.uv, label %.lr.ph.i.i.i.i, label %mka_parse_audio_codec.exit.thread55.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ey
  %i.uw = add nsw i32 %i.un, -42
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uq, i64 42
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  br label %bb.ez

bb.ez:                                            ; preds = %bb.fg, %.lr.ph.i.i.i.i
  %.03047.i.i.i.i = phi i32 [ %i.uw, %.lr.ph.i.i.i.i ], [ %i.vx, %bb.fg ]
  %.03146.i.i.i.i = phi ptr [ %i.ux, %.lr.ph.i.i.i.i ], [ %i.vw, %bb.fg ] ; 5 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.03146.i.i.i.i, i64 1
  %4 = load i8, ptr %i.uz, align 1, !tbaa !98
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = getelementptr inbounds nuw i8, ptr %.03146.i.i.i.i, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !98
  %i.va = zext i8 %8 to i32
  %i.vb = shl nuw nsw i32 %i.va, 8
  %9 = or disjoint i32 %i.vb, %6
  %i.vc = getelementptr inbounds nuw i8, ptr %.03146.i.i.i.i, i64 3
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !98
  %i.ve = zext i8 %i.vd to i32
  %i.vf = or disjoint i32 %9, %i.ve               ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.03146.i.i.i.i, i64 4 ; 2 uses
  %i.vh = add nsw i32 %.03047.i.i.i.i, -4         ; 2 uses
  %.not42.i.i.i.i = icmp samesign ugt i32 %i.vf, %i.vh
  br i1 %.not42.i.i.i.i, label %mka_parse_audio_codec.exit.thread55.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vi = load i8, ptr %.03146.i.i.i.i, align 1, !tbaa !98
  %i.vj = and i8 %i.vi, 127
  %i.vk = icmp eq i8 %i.vj, 4
  br i1 %i.vk, label %bb.fb, label %bb.fg

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  store ptr null, ptr %i.o, align 8, !tbaa !261
  %i.vl = call i32 @ff_vorbis_comment(ptr noundef %0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.vg, i32 noundef %i.vf, i32 noundef 0) #14 ; 0 uses
  %i.vm = load ptr, ptr %i.o, align 8, !tbaa !261
  %i.vn = call ptr @av_dict_get(ptr noundef %i.vm, ptr noundef nonnull @.str.146, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %.not40.i.i.i.i = icmp eq ptr %i.vn, null
  br i1 %.not40.i.i.i.i, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !263
  %i.vq = call i64 @strtol(ptr noundef captures(none) %i.vp, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %i.vr = add i64 %i.vq, -262144
  %or.cond.i.i.i.i = icmp ult i64 %i.vr, -262143
  br i1 %or.cond.i.i.i.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.147) #14
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %i.vs = load ptr, ptr %i.uy, align 8, !tbaa !116
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 128
  %i.vu = call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.vt, i64 noundef %i.vq) #14 ; 0 uses
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fb
  call void @av_dict_free(ptr noundef nonnull %i.o) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fa
  %i.vv = zext nneg i32 %i.vf to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vg, i64 %i.vv
  %i.vx = sub nuw nsw i32 %i.vh, %i.vf            ; 2 uses
  %i.vy = icmp samesign ugt i32 %i.vx, 3
  br i1 %i.vy, label %bb.ez, label %mka_parse_audio_codec.exit.thread55.i.i, !llvm.loop !198

bb.fh:                                            ; preds = %bb.dl
  %i.vz = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.wa = load i32, ptr %i.vz, align 8, !tbaa !241
  %i.wb = icmp slt i32 %i.wa, 2
  br i1 %i.wb, label %bb.fi, label %mka_parse_audio_codec.exit.thread55.i.i

bb.fi:                                            ; preds = %bb.fh
  %i.wc = load ptr, ptr %i.eo, align 8, !tbaa !60
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.wc, i32 noundef 32, ptr noundef nonnull @.str.141) #14
  store i16 1040, ptr %i.p, align 16, !tbaa !98
  br label %matroska_parse_flac.exit.i.i.i

matroska_parse_flac.exit.i.i.i:                   ; preds = %bb.fi, %bb.ee, %bb.dy, %bb.dx
  %.2.i.i.i = phi i32 [ 22, %bb.ee ], [ 5, %bb.dy ], [ 2, %bb.dx ], [ 2, %bb.fi ] ; 2 uses
  %i.wd = call i32 @ff_alloc_extradata(ptr noundef nonnull %i.kl, i32 noundef %.2.i.i.i) #14 ; 2 uses
  %i.we = icmp slt i32 %i.wd, 0
  br i1 %i.we, label %mka_parse_audio.exit.thread303.i, label %bb.fj

bb.fj:                                            ; preds = %matroska_parse_flac.exit.i.i.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !125
  %i.wh = zext nneg i32 %.2.i.i.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wg, ptr noundef nonnull align 16 dereferenceable(1) %i.p, i64 %i.wh, i1 false)
  br label %mka_parse_audio_codec.exit.thread55.i.i

mka_parse_audio_codec.exit.i.i:                   ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %matroska_parse_dovi_streams.exit

mka_parse_audio_codec.exit.thread55.i.i:          ; preds = %bb.fg, %bb.ez, %bb.fj, %bb.fh, %bb.ey, %bb.ex, %bb.eu, %bb.et, %bb.er, %bb.eg, %bb.ef, %bb.eb, %bb.dz, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %mka_parse_audio_codec.exit.thread58.i.i
  %.1277.i = phi i32 [ %spec.select.i.i.i, %mka_parse_audio_codec.exit.thread58.i.i ], [ 0, %bb.dk ], [ 0, %bb.dl ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %bb.do ], [ 0, %bb.dp ], [ 0, %bb.dq ], [ 0, %bb.dr ], [ 0, %bb.ds ], [ 0, %bb.dt ], [ 0, %bb.dv ], [ 0, %bb.du ], [ 0, %bb.fj ], [ 0, %bb.dw ], [ 0, %bb.eb ], [ 0, %bb.dz ], [ 0, %bb.ef ], [ 0, %bb.eg ], [ %.3279.i, %bb.er ], [ 0, %bb.et ], [ 0, %bb.eu ], [ 0, %bb.ex ], [ 8, %bb.ey ], [ 0, %bb.fh ], [ 8, %bb.ez ], [ 8, %bb.fg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 1, ptr %i.kl, align 8, !tbaa !264
  %i.wi = getelementptr inbounds nuw i8, ptr %i.et, i64 416
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !235
  %i.wk = fptosi double %i.wj to i32
  %i.wl = getelementptr inbounds nuw i8, ptr %i.kl, i64 152 ; 3 uses
  store i32 %i.wk, ptr %i.wl, align 8, !tbaa !133
  %i.wm = getelementptr inbounds nuw i8, ptr %i.kl, i64 128 ; 2 uses
  %i.wn = call i32 @av_channel_layout_check(ptr noundef nonnull %i.wm) #14
  %.not46.i.i = icmp eq i32 %i.wn, 0
  br i1 %.not46.i.i, label %bb.fk, label %bb.fm

bb.fk:                                            ; preds = %mka_parse_audio_codec.exit.thread55.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.et, i64 432
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !258 ; 2 uses
  %i.wq = icmp ugt i64 %i.wp, 2147483647
  br i1 %i.wq, label %matroska_parse_dovi_streams.exit, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.wm, align 8, !tbaa !265
  %i.wr = trunc nuw nsw i64 %i.wp to i32
  %i.ws = getelementptr inbounds nuw i8, ptr %i.kl, i64 132
  store i32 %i.wr, ptr %i.ws, align 4, !tbaa !266
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %mka_parse_audio_codec.exit.thread55.i.i
  %i.wt = getelementptr inbounds nuw i8, ptr %i.kl, i64 56 ; 2 uses
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !267
  %.not47.i.i = icmp eq i32 %i.wu, 0
  br i1 %.not47.i.i, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.wv = getelementptr inbounds nuw i8, ptr %i.et, i64 424
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !257
  %i.wx = trunc i64 %i.ww to i32
  store i32 %i.wx, ptr %i.wt, align 8, !tbaa !267
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.wy = load i32, ptr %i.km, align 4, !tbaa !119 ; 2 uses
  switch i32 %i.wy, label %bb.fp [
    i32 86017, label %bb.fq
    i32 86045, label %bb.fq
    i32 86060, label %bb.fq
    i32 86018, label %.thread.i244.i
  ]

bb.fp:                                            ; preds = %bb.fo
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %bb.fo, %bb.fo
  %.sink.i.i = phi i32 [ 2, %bb.fp ], [ 1, %bb.fo ], [ 1, %bb.fo ], [ 1, %bb.fo ]
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ki, i64 808
  store i32 %.sink.i.i, ptr %i.wz, align 8, !tbaa !268
  %i.xa = load i64, ptr %i.mp, align 8, !tbaa !255 ; 3 uses
  %.not49.i.i = icmp eq i64 %i.xa, 0
  br i1 %.not49.i.i, label %bb.ft, label %bb.fr

.thread.i244.i:                                   ; preds = %bb.fo
  %i.xb = load i64, ptr %i.mp, align 8, !tbaa !255 ; 2 uses
  %.not4961.i.i = icmp eq i64 %i.xb, 0
  br i1 %.not4961.i.i, label %bb.ft, label %.thread62.i.i

bb.fr:                                            ; preds = %bb.fq
  %i.xc = icmp eq i32 %i.wy, 86076
  br i1 %i.xc, label %bb.fs, label %.thread62.i.i

.thread62.i.i:                                    ; preds = %bb.fr, %.thread.i244.i
  %i.xd = phi i64 [ %i.xa, %bb.fr ], [ %i.xb, %.thread.i244.i ]
  %i.xe = load i32, ptr %i.wl, align 8, !tbaa !133
  %i.xf = zext i32 %i.xe to i64
  %i.xg = shl nuw i64 %i.xf, 32
  %i.xh = or disjoint i64 %i.xg, 1
  br label %bb.fs

bb.fs:                                            ; preds = %.thread62.i.i, %bb.fr
  %i.xi = phi i64 [ %i.xd, %.thread62.i.i ], [ %i.xa, %bb.fr ]
  %.sroa.24.0.insert.ext.i.i = phi i64 [ %i.xh, %.thread62.i.i ], [ 206158430208001, %bb.fr ]
  %i.xj = call i64 @av_rescale_q(i64 noundef %i.xi, i64 4294967296000000001, i64 %.sroa.24.0.insert.ext.i.i) #16
  %i.xk = trunc i64 %i.xj to i32                  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.kl, i64 164
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !269
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ki, i64 360
  store i32 %i.xk, ptr %i.xm, align 8, !tbaa !270
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.thread.i244.i, %bb.fq
  %i.xn = getelementptr inbounds nuw i8, ptr %i.et, i64 160
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !271 ; 2 uses
  %.not50.i.i = icmp eq i64 %i.xo, 0
  br i1 %.not50.i.i, label %thread-pre-split.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.xp = load i32, ptr %i.wl, align 8, !tbaa !133
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.xp to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, 1
  %i.xq = call i64 @av_rescale_q(i64 noundef %i.xo, i64 4294967296000000001, i64 %.sroa.0.0.insert.insert.i.i) #16
  %i.xr = trunc i64 %i.xq to i32
  %i.xs = getelementptr inbounds nuw i8, ptr %i.kl, i64 172
  store i32 %i.xr, ptr %i.xs, align 4, !tbaa !272
  br label %thread-pre-split.i

mka_parse_audio.exit.thread303.i:                 ; preds = %matroska_parse_flac.exit.i.i.i, %bb.es, %bb.er, %._crit_edge.i.i, %bb.eq, %bb.ep, %bb.eo, %bb.em, %bb.el, %bb.ek, %bb.ei, %bb.eh, %bb.ed, %._crit_edge.i.i.i, %bb.ea, %bb.de
  %.4.i.ph.i.ph.i = phi i32 [ -1094995529, %bb.es ], [ %i.wd, %matroska_parse_flac.exit.i.i.i ], [ %i.ny, %bb.de ], [ -12, %bb.er ], [ %i.qj, %bb.ea ], [ -1094995529, %._crit_edge.i.i.i ], [ -1094995529, %bb.ed ], [ -1094995529, %bb.eh ], [ -1094995529, %bb.ei ], [ -1094995529, %bb.eo ], [ -1094995529, %bb.eq ], [ -1094995529, %bb.ek ], [ -1094995529, %bb.em ], [ -1094995529, %bb.ep ], [ -1094995529, %._crit_edge.i.i ], [ -1094995529, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %matroska_parse_dovi_streams.exit

.thread306.i:                                     ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %mkv_parse_block_addition_mappings.exit.i

bb.fv:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 1, ptr %i.l, align 4, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 1, ptr %i.m, align 4, !tbaa !131
  %i.xt = getelementptr inbounds nuw i8, ptr %i.et, i64 224
end_hunk_0
