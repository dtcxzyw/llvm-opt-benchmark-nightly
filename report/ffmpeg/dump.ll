Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dump?download=true
inline.NumInlined: 56
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dump_sidedata:bb.a
bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.92) #9
  br label %dump_paramchange.exit

bb.ab:                                            ; preds = %bb.z
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !199 ; 9 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !207
  %i.bj = call ptr @av_stereo3d_type_name(i32 noundef %i.bi) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !208
  %i.bm = call ptr @av_stereo3d_view_name(i32 noundef %i.bl) #9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !209
  %i.bp = call ptr @av_stereo3d_primary_eye_name(i32 noundef %i.bo) #9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.101, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bp) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !210 ; 2 uses
  %.not.i88 = icmp eq i32 %i.br, 0
  br i1 %.not.i88, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.102, i32 noundef %i.br) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !211
  %.not24.i = icmp eq i32 %i.bt, 0
  br i1 %.not24.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !212
  %.not25.i = icmp eq i32 %i.bv, 0
  br i1 %.not25.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bw = load i64, ptr %i.bs, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bw to i32
  %.sroa.2.0.extract.shift.i.i = lshr i64 %i.bw, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32
  %i.bx = sitofp nsz i32 %.sroa.0.0.extract.trunc.i.i to double
  %i.by = sitofp nsz i32 %.sroa.2.0.extract.trunc.i.i to double
  %i.bz = fdiv nsz double %i.bx, %i.by
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.103, double noundef %i.bz) #9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 28 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !213
  %.not26.i = icmp eq i32 %i.cb, 0
  br i1 %.not26.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !214
  %.not27.i = icmp eq i32 %i.cd, 0
  br i1 %.not27.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ce = load i64, ptr %i.ca, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i29.i = trunc i64 %i.ce to i32
  %.sroa.2.0.extract.shift.i30.i = lshr i64 %i.ce, 32
  %.sroa.2.0.extract.trunc.i31.i = trunc nuw i64 %.sroa.2.0.extract.shift.i30.i to i32
  %i.cf = sitofp nsz i32 %.sroa.0.0.extract.trunc.i29.i to double
  %i.cg = sitofp nsz i32 %.sroa.2.0.extract.trunc.i31.i to double
  %i.ch = fdiv nsz double %i.cf, %i.cg
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.104, double noundef %i.ch) #9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !215
  %i.ck = and i32 %i.cj, 1
  %.not28.i = icmp eq i32 %i.ck, 0
  br i1 %.not28.i, label %dump_paramchange.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.105) #9
  br label %dump_paramchange.exit

bb.al:                                            ; preds = %bb.e
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !200
  %i.cn = icmp ult i64 %i.cm, 4
  br i1 %i.cn, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.92) #9
  br label %dump_paramchange.exit

bb.an:                                            ; preds = %bb.al
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !199
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !35
  switch i32 %i.cp, label %bb.ax [
    i32 0, label %bb.ao
    i32 1, label %bb.ap
    i32 2, label %bb.aq
    i32 3, label %bb.ar
    i32 4, label %bb.as
    i32 5, label %bb.at
    i32 6, label %bb.au
    i32 7, label %bb.av
    i32 8, label %bb.aw
  ]

bb.ao:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.106) #9
  br label %dump_paramchange.exit

bb.ap:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.107) #9
  br label %dump_paramchange.exit

bb.aq:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.108) #9
  br label %dump_paramchange.exit

bb.ar:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.109) #9
  br label %dump_paramchange.exit

bb.as:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.110) #9
  br label %dump_paramchange.exit

bb.at:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.111) #9
  br label %dump_paramchange.exit

bb.au:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.112) #9
  br label %dump_paramchange.exit

bb.av:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.113) #9
  br label %dump_paramchange.exit

bb.aw:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.114) #9
  br label %dump_paramchange.exit

bb.ax:                                            ; preds = %bb.an
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 24, ptr noundef nonnull @.str.98) #9
  br label %dump_paramchange.exit

bb.ay:                                            ; preds = %bb.e
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !199 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cu = zext i8 %i.ct to i32
  %i.cv = call signext i8 @av_get_picture_type_char(i32 noundef %i.cu) #9
  %i.cw = sext i8 %i.cv to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef %6, ptr noundef nonnull @.str.86, i32 noundef %i.cr, i32 noundef %i.cw) #9
  br label %dump_paramchange.exit

bb.az:                                            ; preds = %bb.e
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !200
  %i.cz = icmp ult i64 %i.cy, 40
  br i1 %i.cz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.92) #9
  br label %dump_paramchange.exit

bb.bb:                                            ; preds = %bb.az
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !199 ; 5 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !217
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !218
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !219
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !220
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.115, i64 noundef %i.db, i64 noundef %i.dd, i64 noundef %i.df, i64 noundef %i.dh) #9
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !221 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, -1
  br i1 %i.dk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.116) #9
  br label %dump_paramchange.exit

bb.bd:                                            ; preds = %bb.bb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.117, i64 noundef %i.dj) #9
  br label %dump_paramchange.exit

bb.be:                                            ; preds = %bb.e
  %.val78 = load ptr, ptr %i.i, align 8, !tbaa !199 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val78, i64 80
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !223
  %i.dn = getelementptr inbounds nuw i8, ptr %.val78, i64 84
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !224
  %i.dp = load <2 x i64>, ptr %.val78, align 4    ; 2 uses
  %i.dq = trunc <2 x i64> %i.dp to <2 x i32>
  %i.dr = lshr <2 x i64> %i.dp, splat (i64 32)
  %i.ds = trunc nuw <2 x i64> %i.dr to <2 x i32>
  %i.dt = sitofp nsz <2 x i32> %i.dq to <2 x double>
  %i.du = sitofp nsz <2 x i32> %i.ds to <2 x double>
  %i.dv = fdiv nsz <2 x double> %i.dt, %i.du      ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val78, i64 16
  %i.dx = load <2 x i64>, ptr %i.dw, align 4      ; 2 uses
  %i.dy = trunc <2 x i64> %i.dx to <2 x i32>
  %i.dz = lshr <2 x i64> %i.dx, splat (i64 32)
  %i.ea = trunc nuw <2 x i64> %i.dz to <2 x i32>
  %i.eb = sitofp nsz <2 x i32> %i.dy to <2 x double>
  %i.ec = sitofp nsz <2 x i32> %i.ea to <2 x double>
  %i.ed = fdiv nsz <2 x double> %i.eb, %i.ec      ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val78, i64 32
  %i.ef = load <2 x i64>, ptr %i.ee, align 4      ; 2 uses
  %i.eg = trunc <2 x i64> %i.ef to <2 x i32>
  %i.eh = lshr <2 x i64> %i.ef, splat (i64 32)
  %i.ei = trunc nuw <2 x i64> %i.eh to <2 x i32>
  %i.ej = sitofp nsz <2 x i32> %i.eg to <2 x double>
  %i.ek = sitofp nsz <2 x i32> %i.ei to <2 x double>
  %i.el = fdiv nsz <2 x double> %i.ej, %i.ek      ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val78, i64 48
  %i.en = load <2 x i64>, ptr %i.em, align 4      ; 2 uses
  %i.eo = trunc <2 x i64> %i.en to <2 x i32>
  %i.ep = lshr <2 x i64> %i.en, splat (i64 32)
  %i.eq = trunc nuw <2 x i64> %i.ep to <2 x i32>
  %i.er = sitofp nsz <2 x i32> %i.eo to <2 x double>
  %i.es = sitofp nsz <2 x i32> %i.eq to <2 x double>
  %i.et = fdiv nsz <2 x double> %i.er, %i.es      ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val78, i64 64
  %i.ev = load <2 x i64>, ptr %i.eu, align 4      ; 2 uses
  %i.ew = trunc <2 x i64> %i.ev to <2 x i32>
  %i.ex = lshr <2 x i64> %i.ev, splat (i64 32)
  %i.ey = trunc nuw <2 x i64> %i.ex to <2 x i32>
  %i.ez = sitofp nsz <2 x i32> %i.ew to <2 x double>
  %i.fa = sitofp nsz <2 x i32> %i.ey to <2 x double>
  %i.fb = fdiv nsz <2 x double> %i.ez, %i.fa      ; 2 uses
  %i.fc = extractelement <2 x double> %i.dv, i64 0
  %i.fd = extractelement <2 x double> %i.dv, i64 1
  %i.fe = extractelement <2 x double> %i.ed, i64 0
  %i.ff = extractelement <2 x double> %i.ed, i64 1
  %i.fg = extractelement <2 x double> %i.el, i64 0
  %i.fh = extractelement <2 x double> %i.el, i64 1
  %i.fi = extractelement <2 x double> %i.et, i64 0
  %i.fj = extractelement <2 x double> %i.et, i64 1
  %i.fk = extractelement <2 x double> %i.fb, i64 0
  %i.fl = extractelement <2 x double> %i.fb, i64 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.118, i32 noundef %i.dm, i32 noundef %i.do, double noundef %i.fc, double noundef %i.fd, double noundef %i.fe, double noundef %i.ff, double noundef %i.fg, double noundef %i.fh, double noundef %i.fi, double noundef %i.fj, double noundef %i.fk, double noundef %i.fl) #9
  br label %dump_paramchange.exit

bb.bf:                                            ; preds = %bb.e
  %.val79 = load ptr, ptr %i.i, align 8, !tbaa !199 ; 7 uses
  %i.fm = getelementptr i8, ptr %i.i, i64 8
  %.val80 = load i64, ptr %i.fm, align 8, !tbaa !200
  %i.fn = icmp ult i64 %.val80, 36
  br i1 %i.fn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.92) #9
  br label %dump_paramchange.exit

bb.bh:                                            ; preds = %bb.bf
  %i.fo = load i32, ptr %.val79, align 4, !tbaa !226
  %i.fp = call ptr @av_spherical_projection_name(i32 noundef %i.fo) #9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.119, ptr noundef %i.fp) #9
  %i.fq = getelementptr inbounds nuw i8, ptr %.val79, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !227 ; 2 uses
  %.not.i95 = icmp eq i32 %i.fr, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %.val79, i64 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !228 ; 2 uses
  %.not26.i96 = icmp eq i32 %i.ft, 0
  %or.cond.i97 = select i1 %.not.i95, i1 %.not26.i96, i1 false
  %i.fu = getelementptr inbounds nuw i8, ptr %.val79, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !229 ; 2 uses
  br i1 %or.cond.i97, label %bb.bi, label %.._crit_edge.i_crit_edge

.._crit_edge.i_crit_edge:                         ; preds = %bb.bh
  %i.fw = sitofp nsz i32 %i.ft to double
  %i.fx = fmul nnan nsz double %i.fw, f0x3EF0000000000000
  br label %._crit_edge.i

bb.bi:                                            ; preds = %bb.bh
  %.not27.i98 = icmp eq i32 %i.fv, 0
  br i1 %.not27.i98, label %bb.bj, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.._crit_edge.i_crit_edge, %bb.bi
  %i.fy = phi double [ %i.fx, %.._crit_edge.i_crit_edge ], [ 0.000000e+00, %bb.bi ]
  %i.fz = sitofp nsz i32 %i.fr to double
  %i.ga = fmul nnan nsz double %i.fz, f0x3EF0000000000000
  %i.gb = sitofp nsz i32 %i.fv to double
  %i.gc = fmul nnan nsz double %i.gb, f0x3EF0000000000000
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.120, double noundef %i.ga, double noundef %i.fy, double noundef %i.gc) #9
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i, %bb.bi
  %i.gd = load i32, ptr %.val79, align 4, !tbaa !226
  switch i32 %i.gd, label %dump_paramchange.exit [
    i32 2, label %bb.bk
    i32 1, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @av_spherical_tile_bounds(ptr noundef nonnull %.val79, i64 noundef %i.g, i64 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #9
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !230
  %i.gf = load i64, ptr %i.c, align 8, !tbaa !230
  %i.gg = load i64, ptr %i.d, align 8, !tbaa !230
  %i.gh = load i64, ptr %i.e, align 8, !tbaa !230
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.121, i64 noundef %i.ge, i64 noundef %i.gf, i64 noundef %i.gg, i64 noundef %i.gh) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %dump_paramchange.exit

bb.bl:                                            ; preds = %bb.bj
  %i.gi = getelementptr inbounds nuw i8, ptr %.val79, i64 32
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !231
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.122, i32 noundef %i.gj) #9
  br label %dump_paramchange.exit

bb.bm:                                            ; preds = %bb.e
  %.val81 = load ptr, ptr %i.i, align 8, !tbaa !199 ; 2 uses
  %.val81.val = load i32, ptr %.val81, align 4, !tbaa !233
  %i.gk = getelementptr i8, ptr %.val81, i64 4
  %.val81.val82 = load i32, ptr %i.gk, align 4, !tbaa !234
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.123, i32 noundef %.val81.val, i32 noundef %.val81.val82) #9
  br label %dump_paramchange.exit

bb.bn:                                            ; preds = %bb.e
  %.val83 = load ptr, ptr %i.i, align 8, !tbaa !199 ; 9 uses
  %i.gl = load i8, ptr %.val83, align 1, !tbaa !236
  %i.gm = zext i8 %i.gl to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %.val83, i64 1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !237
  %i.gp = zext i8 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %.val83, i64 2
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !238
  %i.gs = zext i8 %i.gr to i32
  %i.gt = getelementptr inbounds nuw i8, ptr %.val83, i64 3
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !239
  %i.gv = zext i8 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %.val83, i64 4
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !240
  %i.gy = zext i8 %i.gx to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %.val83, i64 5
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !241
  %i.hb = zext i8 %i.ha to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %.val83, i64 6
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !242
  %i.he = zext i8 %i.hd to i32
  %i.hf = getelementptr inbounds nuw i8, ptr %.val83, i64 7
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !243
  %i.hh = zext i8 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %.val83, i64 8
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !244
  %i.hk = zext i8 %i.hj to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.124, i32 noundef %i.gm, i32 noundef %i.gp, i32 noundef %i.gs, i32 noundef %i.gv, i32 noundef %i.gy, i32 noundef %i.hb, i32 noundef %i.he, i32 noundef %i.hh, i32 noundef %i.hk) #9
  br label %dump_paramchange.exit

bb.bo:                                            ; preds = %bb.e
  %.val84 = load ptr, ptr %i.i, align 8, !tbaa !199 ; 4 uses
  %i.hl = getelementptr i8, ptr %i.i, i64 8
  %.val85 = load i64, ptr %i.hl, align 8, !tbaa !200
  %.not.i99 = icmp eq i64 %.val85, 16
  br i1 %.not.i99, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hm = load i32, ptr %.val84, align 4, !tbaa !35 ; 2 uses
  %i.hn = icmp ugt i32 %i.hm, 3
  br i1 %i.hn, label %bb.bq, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bp
  %.not121.i = icmp eq i32 %i.hm, 0
  br i1 %.not121.i, label %dump_paramchange.exit, label %.lr.ph.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.92) #9
  br label %dump_paramchange.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 1, %.preheader.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val84, i64 %indvars.iv.i
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !35
  %i.hq = call ptr @av_timecode_make_smpte_tc_string2(ptr noundef nonnull %i.a, i64 %4, i32 noundef %i.hp, i32 noundef 0, i32 noundef 0) #9 ; 0 uses
  %i.hr = load i32, ptr %.val84, align 4, !tbaa !35
  %i.hs = zext i32 %i.hr to i64
  %.not13.i = icmp eq i64 %indvars.iv.i, %i.hs
  %i.ht = select i1 %.not13.i, ptr @.str.11, ptr @.str.100
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.125, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ht) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hu = load i32, ptr %.val84, align 4, !tbaa !35
  %i.hv = zext i32 %i.hu to i64
  %.not12.not.i = icmp samesign ult i64 %indvars.iv.i, %i.hv
  br i1 %.not12.not.i, label %.lr.ph.i, label %dump_paramchange.exit, !llvm.loop !195

bb.br:                                            ; preds = %bb.e
  %.val86 = load ptr, ptr %i.i, align 8, !tbaa !199 ; 2 uses
  %i.hw = load <2 x i64>, ptr %.val86, align 4    ; 2 uses
  %i.hx = trunc <2 x i64> %i.hw to <2 x i32>
  %i.hy = lshr <2 x i64> %i.hw, splat (i64 32)
  %i.hz = trunc nuw <2 x i64> %i.hy to <2 x i32>
  %i.ia = sitofp nsz <2 x i32> %i.hx to <2 x double>
  %i.ib = sitofp nsz <2 x i32> %i.hz to <2 x double>
  %i.ic = fdiv nsz <2 x double> %i.ia, %i.ib      ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.val86, i64 16
  %i.ie = load i64, ptr %i.id, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i8.i = trunc i64 %i.ie to i32
  %.sroa.2.0.extract.shift.i9.i = lshr i64 %i.ie, 32
  %.sroa.2.0.extract.trunc.i10.i = trunc nuw i64 %.sroa.2.0.extract.shift.i9.i to i32
  %i.if = sitofp nsz i32 %.sroa.0.0.extract.trunc.i8.i to double
  %i.ig = sitofp nsz i32 %.sroa.2.0.extract.trunc.i10.i to double
  %i.ih = fdiv nsz double %i.if, %i.ig
  %i.ii = extractelement <2 x double> %i.ic, i64 0
  %i.ij = extractelement <2 x double> %i.ic, i64 1
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.126, double noundef %i.ii, double noundef %i.ij, double noundef %i.ih) #9
  br label %dump_paramchange.exit

bb.bs:                                            ; preds = %bb.e
  %i.ik = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !200
  %i.im = icmp ult i64 %i.il, 16
  br i1 %i.im, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.92) #9
  br label %dump_paramchange.exit

bb.bu:                                            ; preds = %bb.bs
  %i.in = load ptr, ptr %i.i, align 8, !tbaa !199 ; 4 uses
  %i.io = load i32, ptr %i.in, align 1, !tbaa !9
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.iq = load i32, ptr %i.ip, align 1, !tbaa !9
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.is = load i32, ptr %i.ir, align 1, !tbaa !9
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  %i.iu = load i32, ptr %i.it, align 1, !tbaa !9
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.127, i32 noundef %i.is, i32 noundef %i.iu, i32 noundef %i.io, i32 noundef %i.iq) #9
  br label %dump_paramchange.exit

bb.bv:                                            ; preds = %bb.e
  %.val87 = load ptr, ptr %i.i, align 8, !tbaa !199
  %i.iv = getelementptr i8, ptr %.val87, i64 3
  %.val87.val = load i8, ptr %i.iv, align 1, !tbaa !246
  %i.iw = zext i8 %.val87.val to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef range(i32 32, 41) %6, ptr noundef nonnull @.str.128, i32 noundef %i.iw) #9
  br label %dump_paramchange.exit

bb.bw:                                            ; preds = %bb.e
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !200 ; 2 uses
  br i1 %.not76, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef %6, ptr noundef nonnull @.str.87, i64 noundef %i.iy) #9
  br label %dump_paramchange.exit

bb.by:                                            ; preds = %bb.bw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef %6, ptr noundef nonnull @.str.88, i32 noundef %i.m, i64 noundef %i.iy) #9
  br label %dump_paramchange.exit

dump_paramchange.exit:                            ; preds = %.lr.ph.i, %bb.bu, %bb.bt, %bb.bq, %.preheader.i, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %bb.bd, %bb.bc, %bb.ba, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.aj, %bb.aa, %print_peak.exit16.i, %bb.o, %bb.m, %bb.l, %bb.j, %bb.bx, %bb.by, %bb.bv, %bb.br, %bb.bn, %bb.bm, %bb.be, %bb.ay, %bb.y
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef %6, ptr noundef nonnull @.str.15) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !196

._crit_edge:                                      ; preds = %dump_paramchange.exit, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #7

declare ptr @av_packet_side_data_name(i32 noundef) local_unnamed_addr #2

declare double @av_display_rotation_get(ptr noundef) local_unnamed_addr #2

declare signext i8 @av_get_picture_type_char(i32 noundef) local_unnamed_addr #2

declare ptr @av_stereo3d_type_name(i32 noundef) local_unnamed_addr #2

declare ptr @av_stereo3d_view_name(i32 noundef) local_unnamed_addr #2

declare ptr @av_stereo3d_primary_eye_name(i32 noundef) local_unnamed_addr #2

declare ptr @av_spherical_projection_name(i32 noundef) local_unnamed_addr #2

declare void @av_spherical_tile_bounds(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_timecode_make_smpte_tc_string2(ptr noundef, i64, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_channel_layout_describe(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_stristr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS11AVBufferRef", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS16AVPacketSideData", !11, i64 0}
!16 = !{!"AVRational", !6, i64 0, !6, i64 4}
!17 = !{!"AVPacket", !12, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !15, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !11, i64 80, !12, i64 88, !16, i64 96}
!18 = !{!"p1 _ZTS7AVClass", !11, i64 0}
!19 = !{!"p1 _ZTS13AVInputFormat", !11, i64 0}
!20 = !{!"p1 _ZTS14AVOutputFormat", !11, i64 0}
!21 = !{!"p1 _ZTS11AVIOContext", !11, i64 0}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"p2 _ZTS8AVStream", !22, i64 0}
!24 = !{!"p2 _ZTS13AVStreamGroup", !22, i64 0}
!25 = !{!"p2 _ZTS9AVChapter", !22, i64 0}
!26 = !{!"p2 _ZTS9AVProgram", !22, i64 0}
!27 = !{!"p1 _ZTS12AVDictionary", !11, i64 0}
!28 = !{!"AVIOInterruptCB", !11, i64 0, !11, i64 8}
!29 = !{!"p1 _ZTS7AVCodec", !11, i64 0}
!30 = !{!"AVFormatContext", !18, i64 0, !19, i64 8, !20, i64 16, !11, i64 24, !21, i64 32, !6, i64 40, !6, i64 44, !23, i64 48, !6, i64 56, !24, i64 64, !6, i64 72, !25, i64 80, !14, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !13, i64 136, !13, i64 144, !14, i64 152, !6, i64 160, !6, i64 164, !26, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !27, i64 192, !13, i64 200, !6, i64 208, !6, i64 212, !28, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !13, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !13, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !6, i64 368, !29, i64 376, !29, i64 384, !29, i64 392, !29, i64 400, !6, i64 408, !11, i64 416, !11, i64 424, !13, i64 432, !14, i64 440, !11, i64 448, !11, i64 456, !13, i64 464, !14, i64 472}
!31 = !{!11, !11, i64 0}
!32 = !{!"p1 int", !11, i64 0}
!33 = !{!"AVDictionaryEntry", !14, i64 0, !14, i64 8}
!34 = !{!33, !14, i64 8}
!35 = !{!6, !6, i64 0}
!36 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !11, i64 16}
!37 = !{!"p1 _ZTS8AVStream", !11, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTS17AVCodecParameters", !11, i64 0}
!40 = !{!"AVStream", !18, i64 0, !6, i64 8, !6, i64 12, !39, i64 16, !11, i64 24, !16, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !27, i64 80, !16, i64 88, !17, i64 96, !6, i64 200, !16, i64 204, !6, i64 212}
!41 = !{!40, !39, i64 16}
!42 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !14, i64 16, !6, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !13, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !16, i64 80, !16, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !36, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!43 = !{!"p1 _ZTS14AVCodecContext", !11, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!30, !14, i64 440}
!46 = distinct !{!46, !10}
!47 = distinct !{!47, !10}
!48 = !{!17, !6, i64 36}
!49 = !{!17, !6, i64 40}
!50 = !{!17, !13, i64 64}
!51 = !{!17, !13, i64 16}
!52 = !{!17, !13, i64 8}
!53 = !{!17, !6, i64 32}
!54 = !{!17, !14, i64 24}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10, !135}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = !{!30, !6, i64 44}
!71 = !{!14, !14, i64 0}
!72 = !{!30, !27, i64 192}
!73 = !{!30, !13, i64 104}
!74 = !{!30, !13, i64 96}
!75 = !{!30, !13, i64 112}
!76 = !{!30, !6, i64 72}
!77 = !{!30, !25, i64 80}
!78 = !{!"p1 _ZTS9AVChapter", !11, i64 0}
end_hunk_0
