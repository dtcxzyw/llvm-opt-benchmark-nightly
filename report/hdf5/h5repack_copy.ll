Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5repack_copy?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@do_copy_objects:bb.a

bb.eu:                                            ; preds = %bb.et
  %i.qz = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %bb.ev, label %.thread1254

bb.ev:                                            ; preds = %bb.eu
  %i.rb = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.rc = icmp sgt i64 %i.rb, -1
  %i.rd = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.re = icmp sgt i64 %i.rd, -1
  %or.cond58 = select i1 %i.rc, i1 %i.re, i1 false
  br i1 %or.cond58, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.rf = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.rg = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.rh = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.rb, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 877, i64 noundef %i.rd, i64 noundef %i.rf, i64 noundef %i.rg, ptr noundef nonnull @.str.55) #15 ; 0 uses
  br label %.thread1254

bb.ex:                                            ; preds = %bb.ev
  %i.ri = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1029 = call i64 @fwrite(ptr nonnull @.str.55, i64 16, i64 1, ptr %i.ri) #17 ; 0 uses
  %i.rj = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1031 = call i32 @fputc(i32 10, ptr %i.rj) ; 0 uses
  br label %.thread1254

bb.ey:                                            ; preds = %._crit_edge4561, %bb.es
  %i.rk = phi i64 [ %.pre4562.a, %._crit_edge4561 ], [ %i.qv, %bb.es ]
  %i.rl = call i32 @H5VLclose(i64 noundef %i.rk) #15
  %i.rm = icmp slt i32 %i.rl, 0
  br i1 %i.rm, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  %i.rn = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.ro = icmp sgt i32 %i.rn, 0
  br i1 %i.ro, label %bb.fa, label %.thread1254

bb.fa:                                            ; preds = %bb.ez
  %i.rp = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.rq = icmp sgt i64 %i.rp, -1
  %i.rr = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.rs = icmp sgt i64 %i.rr, -1
  %or.cond60 = select i1 %i.rq, i1 %i.rs, i1 false
  br i1 %or.cond60, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.rt = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.ru = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.rv = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.rp, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 879, i64 noundef %i.rr, i64 noundef %i.rt, i64 noundef %i.ru, ptr noundef nonnull @.str.55) #15 ; 0 uses
  br label %.thread1254

bb.fc:                                            ; preds = %bb.fa
  %i.rw = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1026 = call i64 @fwrite(ptr nonnull @.str.55, i64 16, i64 1, ptr %i.rw) #17 ; 0 uses
  %i.rx = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1028 = call i32 @fputc(i32 10, ptr %i.rx) ; 0 uses
  br label %.thread1254

.thread1254:                                      ; preds = %bb.dw, %bb.ek, %bb.eq, %bb.ew, %bb.fb, %bb.ed, %bb.du, %bb.dx, %bb.eb, %bb.ee, %bb.ei, %bb.el, %bb.eo, %bb.er, %bb.eu, %bb.ex, %bb.ez, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %.thread1325

bb.fd:                                            ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br i1 %.not1023, label %.thread1264, label %.thread1260

.thread1260:                                      ; preds = %bb.dn, %bb.dm, %bb.do, %bb.fd
  %i.ry = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.rz = getelementptr inbounds nuw [72 x i8], ptr %i.ry, i64 %i.at
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !68
  %i.sc = call i64 @H5Dopen2(i64 noundef %0, ptr noundef %i.sb, i64 noundef 0) #15 ; 81 uses
  %i.sd = icmp slt i64 %i.sc, 0
  br i1 %i.sd, label %bb.fe, label %bb.fi

bb.fe:                                            ; preds = %.thread1260
  %i.se = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.sf = icmp sgt i32 %i.se, 0
  br i1 %i.sf, label %bb.ff, label %.thread1325

bb.ff:                                            ; preds = %bb.fe
  %i.sg = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.sh = icmp sgt i64 %i.sg, -1
  %i.si = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.sj = icmp sgt i64 %i.si, -1
  %or.cond62 = select i1 %i.sh, i1 %i.sj, i1 false
  br i1 %or.cond62, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.sk = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.sl = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.sm = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.sg, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 886, i64 noundef %i.si, i64 noundef %i.sk, i64 noundef %i.sl, ptr noundef nonnull @.str.46) #15 ; 0 uses
  br label %.thread1325

bb.fh:                                            ; preds = %bb.ff
  %i.sn = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1137 = call i64 @fwrite(ptr nonnull @.str.46, i64 15, i64 1, ptr %i.sn) #17 ; 0 uses
  %i.so = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1139 = call i32 @fputc(i32 10, ptr %i.so) ; 0 uses
  br label %.thread1325

bb.fi:                                            ; preds = %.thread1260
  %i.sp = call i64 @H5Dget_space(i64 noundef %i.sc) #15 ; 80 uses
  %i.sq = icmp slt i64 %i.sp, 0
  br i1 %i.sq, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  %i.sr = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %bb.fk, label %.thread1325

bb.fk:                                            ; preds = %bb.fj
  %i.st = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.su = icmp sgt i64 %i.st, -1
  %i.sv = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.sw = icmp sgt i64 %i.sv, -1
  %or.cond64 = select i1 %i.su, i1 %i.sw, i1 false
  br i1 %or.cond64, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.sx = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.sy = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.sz = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.st, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 888, i64 noundef %i.sv, i64 noundef %i.sx, i64 noundef %i.sy, ptr noundef nonnull @.str.56) #15 ; 0 uses
  br label %.thread1325

bb.fm:                                            ; preds = %bb.fk
  %i.ta = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1134 = call i64 @fwrite(ptr nonnull @.str.56, i64 19, i64 1, ptr %i.ta) #17 ; 0 uses
  %i.tb = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1136 = call i32 @fputc(i32 10, ptr %i.tb) ; 0 uses
  br label %.thread1325

bb.fn:                                            ; preds = %bb.fi
  %i.tc = call i64 @H5Dget_type(i64 noundef %i.sc) #15 ; 69 uses
  %i.td = icmp slt i64 %i.tc, 0
  br i1 %i.td, label %bb.fo, label %bb.fs

bb.fo:                                            ; preds = %bb.fn
  %i.te = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.tf = icmp sgt i32 %i.te, 0
  br i1 %i.tf, label %bb.fp, label %.thread1325

bb.fp:                                            ; preds = %bb.fo
  %i.tg = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.th = icmp sgt i64 %i.tg, -1
  %i.ti = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.tj = icmp sgt i64 %i.ti, -1
  %or.cond66 = select i1 %i.th, i1 %i.tj, i1 false
  br i1 %or.cond66, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.tk = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.tl = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.tm = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.tg, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 890, i64 noundef %i.ti, i64 noundef %i.tk, i64 noundef %i.tl, ptr noundef nonnull @.str.47) #15 ; 0 uses
  br label %.thread1325

bb.fr:                                            ; preds = %bb.fp
  %i.tn = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1131 = call i64 @fwrite(ptr nonnull @.str.47, i64 18, i64 1, ptr %i.tn) #17 ; 0 uses
  %i.to = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1133 = call i32 @fputc(i32 10, ptr %i.to) ; 0 uses
  br label %.thread1325

bb.fs:                                            ; preds = %bb.fn
  %i.tp = call i64 @H5Dget_create_plist(i64 noundef %i.sc) #15 ; 71 uses
  %i.tq = icmp slt i64 %i.tp, 0
  br i1 %i.tq, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.tr = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.ts = icmp sgt i32 %i.tr, 0
  br i1 %i.ts, label %bb.fu, label %.thread1325

bb.fu:                                            ; preds = %bb.ft
  %i.tt = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.tu = icmp sgt i64 %i.tt, -1
  %i.tv = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.tw = icmp sgt i64 %i.tv, -1
  %or.cond68 = select i1 %i.tu, i1 %i.tw, i1 false
  br i1 %or.cond68, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.tx = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.ty = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.tz = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.tt, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 892, i64 noundef %i.tv, i64 noundef %i.tx, i64 noundef %i.ty, ptr noundef nonnull @.str.57) #15 ; 0 uses
  br label %.thread1325

bb.fw:                                            ; preds = %bb.fu
  %i.ua = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1128 = call i64 @fwrite(ptr nonnull @.str.57, i64 26, i64 1, ptr %i.ua) #17 ; 0 uses
  %i.ub = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1130 = call i32 @fputc(i32 10, ptr %i.ub) ; 0 uses
  br label %.thread1325

bb.fx:                                            ; preds = %bb.fs
  %i.uc = call i32 @H5Sget_simple_extent_ndims(i64 noundef %i.sp) #15 ; 9 uses
  %i.ud = icmp slt i32 %i.uc, 0
  br i1 %i.ud, label %bb.fy, label %bb.gc

bb.fy:                                            ; preds = %bb.fx
  %i.ue = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.uf = icmp sgt i32 %i.ue, 0
  br i1 %i.uf, label %bb.fz, label %.thread1325

bb.fz:                                            ; preds = %bb.fy
  %i.ug = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.uh = icmp sgt i64 %i.ug, -1
  %i.ui = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.uj = icmp sgt i64 %i.ui, -1
  %or.cond70 = select i1 %i.uh, i1 %i.uj, i1 false
  br i1 %or.cond70, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.uk = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.ul = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.um = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ug, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 894, i64 noundef %i.ui, i64 noundef %i.uk, i64 noundef %i.ul, ptr noundef nonnull @.str.58) #15 ; 0 uses
  br label %.thread1325

bb.gb:                                            ; preds = %bb.fz
  %i.un = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1125 = call i64 @fwrite(ptr nonnull @.str.58, i64 33, i64 1, ptr %i.un) #17 ; 0 uses
  %i.uo = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1127 = call i32 @fputc(i32 10, ptr %i.uo) ; 0 uses
  br label %.thread1325

bb.gc:                                            ; preds = %bb.fx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.up = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.sp, ptr noundef nonnull %i.c, ptr noundef null) #15
  %i.uq = icmp slt i32 %i.up, 0
  br i1 %i.uq, label %bb.gd, label %bb.gh

bb.gd:                                            ; preds = %bb.gc
  %i.ur = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.us = icmp sgt i32 %i.ur, 0
  br i1 %i.us, label %bb.ge, label %.thread1325

bb.ge:                                            ; preds = %bb.gd
  %i.ut = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.uu = icmp sgt i64 %i.ut, -1
  %i.uv = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.uw = icmp sgt i64 %i.uv, -1
  %or.cond72 = select i1 %i.uu, i1 %i.uw, i1 false
  br i1 %or.cond72, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.ux = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.uy = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.uz = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ut, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 897, i64 noundef %i.uv, i64 noundef %i.ux, i64 noundef %i.uy, ptr noundef nonnull @.str.59) #15 ; 0 uses
  br label %.thread1325

bb.gg:                                            ; preds = %bb.ge
  %i.va = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1122 = call i64 @fwrite(ptr nonnull @.str.59, i64 32, i64 1, ptr %i.va) #17 ; 0 uses
  %i.vb = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1124 = call i32 @fputc(i32 10, ptr %i.vb) ; 0 uses
  br label %.thread1325

bb.gh:                                            ; preds = %bb.gc
  %i.vc = call i32 @H5Dget_space_status(i64 noundef %i.sc, ptr noundef nonnull %i.b) #15
  %i.vd = icmp slt i32 %i.vc, 0
  br i1 %i.vd, label %bb.gi, label %bb.gm

bb.gi:                                            ; preds = %bb.gh
  %i.ve = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.vf = icmp sgt i32 %i.ve, 0
  br i1 %i.vf, label %bb.gj, label %.thread1325

bb.gj:                                            ; preds = %bb.gi
  %i.vg = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.vh = icmp sgt i64 %i.vg, -1
  %i.vi = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.vj = icmp sgt i64 %i.vi, -1
  %or.cond74 = select i1 %i.vh, i1 %i.vj, i1 false
  br i1 %or.cond74, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.vk = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.vl = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.vm = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.vg, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 899, i64 noundef %i.vi, i64 noundef %i.vk, i64 noundef %i.vl, ptr noundef nonnull @.str.60) #15 ; 0 uses
  br label %.thread1325

bb.gl:                                            ; preds = %bb.gj
  %i.vn = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1119 = call i64 @fwrite(ptr nonnull @.str.60, i64 26, i64 1, ptr %i.vn) #17 ; 0 uses
  %i.vo = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1121 = call i32 @fputc(i32 10, ptr %i.vo) ; 0 uses
  br label %.thread1325

bb.gm:                                            ; preds = %bb.gh
  %i.vp = call i32 @H5Pget_external_count(i64 noundef %i.tp) #15
  %.not1038 = icmp eq i32 %i.vp, 0
  br i1 %.not1038, label %bb.gs, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.vq = load i64, ptr @H5P_CLS_DATASET_CREATE_ID_g, align 8, !tbaa !11
  %i.vr = call i64 @H5Pcreate(i64 noundef %i.vq) #15 ; 2 uses
  %i.vs = icmp slt i64 %i.vr, 0
  br i1 %i.vs, label %bb.go, label %bb.gx

bb.go:                                            ; preds = %bb.gn
  %i.vt = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.vu = icmp sgt i32 %i.vt, 0
  br i1 %i.vu, label %bb.gp, label %.thread1325

bb.gp:                                            ; preds = %bb.go
  %i.vv = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.vw = icmp sgt i64 %i.vv, -1
  %i.vx = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.vy = icmp sgt i64 %i.vx, -1
  %or.cond76 = select i1 %i.vw, i1 %i.vy, i1 false
  br i1 %or.cond76, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.vz = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.wa = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.wb = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.vv, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 908, i64 noundef %i.vx, i64 noundef %i.vz, i64 noundef %i.wa, ptr noundef nonnull @.str.40) #15 ; 0 uses
  br label %.thread1325

bb.gr:                                            ; preds = %bb.gp
  %i.wc = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1116 = call i64 @fwrite(ptr nonnull @.str.40, i64 16, i64 1, ptr %i.wc) #17 ; 0 uses
  %i.wd = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1118 = call i32 @fputc(i32 10, ptr %i.wd) ; 0 uses
  br label %.thread1325

bb.gs:                                            ; preds = %bb.gm
  %i.we = call i64 @H5Pcopy(i64 noundef %i.tp) #15 ; 2 uses
  %i.wf = icmp slt i64 %i.we, 0
  br i1 %i.wf, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %bb.gs
  %i.wg = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.wh = icmp sgt i32 %i.wg, 0
  br i1 %i.wh, label %bb.gu, label %.thread1325

bb.gu:                                            ; preds = %bb.gt
  %i.wi = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.wj = icmp sgt i64 %i.wi, -1
  %i.wk = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.wl = icmp sgt i64 %i.wk, -1
  %or.cond78 = select i1 %i.wj, i1 %i.wl, i1 false
  br i1 %or.cond78, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.wm = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.wn = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.wo = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.wi, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 911, i64 noundef %i.wk, i64 noundef %i.wm, i64 noundef %i.wn, ptr noundef nonnull @.str.61) #15 ; 0 uses
  br label %.thread1325

bb.gw:                                            ; preds = %bb.gu
  %i.wp = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1039 = call i64 @fwrite(ptr nonnull @.str.61, i64 14, i64 1, ptr %i.wp) #17 ; 0 uses
  %i.wq = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1041 = call i32 @fputc(i32 10, ptr %i.wq) ; 0 uses
  br label %.thread1325

bb.gx:                                            ; preds = %bb.gs, %bb.gn
  %.0687 = phi i64 [ %i.vr, %bb.gn ], [ %i.we, %bb.gs ] ; 6 uses
  %.not2987 = icmp eq i32 %i.uc, 0                ; 3 uses
  br i1 %.not2987, label %._crit_edge, label %.lr.ph2941.preheader

.lr.ph2941.preheader:                             ; preds = %bb.gx
  %wide.trip.count4544 = zext nneg i32 %i.uc to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count4544, 7     ; 3 uses
  %i.wr = icmp ult i32 %i.uc, 8
  br i1 %i.wr, label %.lr.ph2941.epil.preheader, label %.lr.ph2941.preheader.new

.lr.ph2941.preheader.new:                         ; preds = %.lr.ph2941.preheader
  %unroll_iter = and i64 %wide.trip.count4544, 2147483640
  br label %.lr.ph2941

.lr.ph2941:                                       ; preds = %.lr.ph2941, %.lr.ph2941.preheader.new
  %indvars.iv4541 = phi i64 [ 0, %.lr.ph2941.preheader.new ], [ %indvars.iv.next4542.7, %.lr.ph2941 ] ; 9 uses
  %.06482939 = phi i64 [ 1, %.lr.ph2941.preheader.new ], [ %i.xw, %.lr.ph2941 ]
  %niter = phi i64 [ 0, %.lr.ph2941.preheader.new ], [ %niter.next.7, %.lr.ph2941 ]
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv4541
  %i.wt = load i64, ptr %i.ws, align 16, !tbaa !11
  %i.wu = mul i64 %i.wt, %.06482939
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv4541
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !11
  %i.wy = mul i64 %i.wx, %i.wu
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv4541
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xb = load i64, ptr %i.xa, align 16, !tbaa !11
  %i.xc = mul i64 %i.xb, %i.wy
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv4541
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !11
  %i.xg = mul i64 %i.xf, %i.xc
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv4541
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 32
  %i.xj = load i64, ptr %i.xi, align 16, !tbaa !11
  %i.xk = mul i64 %i.xj, %i.xg
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv4541
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 40
end_hunk_0
begin_hunk_1_@do_copy_objects:bb.a
  br label %.thread1325

bb.ip:                                            ; preds = %bb.in
  %i.acw = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1078 = call i64 @fwrite(ptr nonnull @.str.66, i64 14, i64 1, ptr %i.acw) #17 ; 0 uses
  %i.acx = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1080 = call i32 @fputc(i32 10, ptr %i.acx) ; 0 uses
  br label %.thread1325

bb.iq:                                            ; preds = %bb.il
  %i.acy = load i32, ptr %i.t, align 4, !tbaa !29
  %i.acz = icmp eq i32 %i.acy, 2
  br i1 %i.acz, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.ada = call i32 @H5_timer_stop(ptr noundef nonnull %4) #15 ; 0 uses
  %i.adb = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 %4, ptr noundef nonnull %5) #15 ; 0 uses
  %i.adc = load double, ptr %i.ao, align 8, !tbaa !88
  %i.add = load double, ptr @do_copy_objects.read_time, align 8, !tbaa !70
  %i.ade = fadd double %i.adc, %i.add
  store double %i.ade, ptr @do_copy_objects.read_time, align 8, !tbaa !70
  %i.adf = call i32 @H5_timer_init(ptr noundef nonnull %4) #15 ; 0 uses
  %i.adg = call i32 @H5_timer_start(ptr noundef nonnull %4) #15 ; 0 uses
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %i.adh = call i32 @H5Dwrite(i64 noundef %.1707, i64 noundef %.2669, i64 noundef 0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.acg) #15
  %i.adi = icmp slt i32 %i.adh, 0
  br i1 %i.adi, label %bb.it, label %bb.ix

bb.it:                                            ; preds = %bb.is
  %i.adj = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.adk = icmp sgt i32 %i.adj, 0
  br i1 %i.adk, label %bb.iu, label %.thread1325

bb.iu:                                            ; preds = %bb.it
  %i.adl = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.adm = icmp sgt i64 %i.adl, -1
  %i.adn = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ado = icmp sgt i64 %i.adn, -1
  %or.cond94 = select i1 %i.adm, i1 %i.ado, i1 false
  br i1 %or.cond94, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.adp = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.adq = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.adr = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.adl, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1064, i64 noundef %i.adn, i64 noundef %i.adp, i64 noundef %i.adq, ptr noundef nonnull @.str.67) #15 ; 0 uses
  br label %.thread1325

bb.iw:                                            ; preds = %bb.iu
  %i.ads = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1075 = call i64 @fwrite(ptr nonnull @.str.67, i64 15, i64 1, ptr %i.ads) #17 ; 0 uses
  %i.adt = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1077 = call i32 @fputc(i32 10, ptr %i.adt) ; 0 uses
  br label %.thread1325

bb.ix:                                            ; preds = %bb.is
  %i.adu = load i32, ptr %i.t, align 4, !tbaa !29
  %i.adv = icmp eq i32 %i.adu, 2
  br i1 %i.adv, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.adw = call i32 @H5_timer_stop(ptr noundef nonnull %4) #15 ; 0 uses
  %i.adx = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 %4, ptr noundef nonnull %5) #15 ; 0 uses
  %i.ady = load double, ptr %i.ao, align 8, !tbaa !88
  %i.adz = load double, ptr @do_copy_objects.write_time, align 8, !tbaa !70
  %i.aea = fadd double %i.ady, %i.adz
  store double %i.aea, ptr @do_copy_objects.write_time, align 8, !tbaa !70
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.aeb = call i32 @H5Tdetect_class(i64 noundef %.2669, i32 noundef 9) #15
  %i.aec = icmp eq i32 %i.aeb, 1
  br i1 %i.aec, label %bb.ja, label %bb.jf

bb.ja:                                            ; preds = %bb.iz
  %i.aed = call i32 @H5Treclaim(i64 noundef %.2669, i64 noundef %i.sp, i64 noundef 0, ptr noundef nonnull %i.acg) #15
  %i.aee = icmp slt i32 %i.aed, 0
  br i1 %i.aee, label %bb.jb, label %bb.jf

bb.jb:                                            ; preds = %bb.ja
  %i.aef = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.aeg = icmp sgt i32 %i.aef, 0
  br i1 %i.aeg, label %bb.jc, label %.thread1325

bb.jc:                                            ; preds = %bb.jb
  %i.aeh = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.aei = icmp sgt i64 %i.aeh, -1
  %i.aej = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.aek = icmp sgt i64 %i.aej, -1
  %or.cond96 = select i1 %i.aei, i1 %i.aek, i1 false
  br i1 %or.cond96, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.ael = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.aem = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.aen = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.aeh, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1075, i64 noundef %i.aej, i64 noundef %i.ael, i64 noundef %i.aem, ptr noundef nonnull @.str.68) #15 ; 0 uses
  br label %.thread1325

bb.je:                                            ; preds = %bb.jc
  %i.aeo = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1072 = call i64 @fwrite(ptr nonnull @.str.68, i64 17, i64 1, ptr %i.aeo) #17 ; 0 uses
  %i.aep = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1074 = call i32 @fputc(i32 10, ptr %i.aep) ; 0 uses
  br label %.thread1325

bb.jf:                                            ; preds = %bb.iz, %bb.ja
  call void @free(ptr noundef nonnull %i.acg) #15
  br label %bb.kx

.thread1269:                                      ; preds = %bb.ih, %bb.ii
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  %i.aeq = call i32 @H5Tdetect_class(i64 noundef %.2669, i32 noundef 9) #15
  %.not1053 = icmp eq i32 %i.aeq, 1
  %i.aer = call i32 @H5Pget_layout(i64 noundef %.0687) #15
  %i.aes = icmp eq i32 %i.aer, 2
  br i1 %i.aes, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %.thread1269
  %i.aet = call i32 @H5Pget_layout(i64 noundef %i.tp) #15
  %i.aeu = icmp eq i32 %i.aet, 2
  %spec.select1248 = select i1 %i.aeu, i64 %i.tp, i64 -1
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %.thread1269
  %.0587 = phi i64 [ %spec.select1248, %bb.jg ], [ %.0687, %.thread1269 ]
  %i.aev = call fastcc i32 @get_hyperslab(i64 noundef %.0587, i32 noundef %i.uc, ptr noundef %i.c, i64 noundef %i.ye, ptr noundef %i.i, ptr noundef %i.j)
  %i.aew = icmp slt i32 %i.aev, 0
  br i1 %i.aew, label %bb.ji, label %bb.jm

bb.ji:                                            ; preds = %bb.jh
  %i.aex = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.aey = icmp sgt i32 %i.aex, 0
  br i1 %i.aey, label %bb.jj, label %.thread1273

bb.jj:                                            ; preds = %bb.ji
  %i.aez = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.afa = icmp sgt i64 %i.aez, -1
  %i.afb = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.afc = icmp sgt i64 %i.afb, -1
  %or.cond98 = select i1 %i.afa, i1 %i.afc, i1 false
  br i1 %or.cond98, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.afd = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.afe = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.aff = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.aez, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1124, i64 noundef %i.afb, i64 noundef %i.afd, i64 noundef %i.afe, ptr noundef nonnull @.str.69) #15 ; 0 uses
  br label %.thread1273

bb.jl:                                            ; preds = %bb.jj
  %i.afg = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1069 = call i64 @fwrite(ptr nonnull @.str.69, i64 20, i64 1, ptr %i.afg) #17 ; 0 uses
  %i.afh = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1071 = call i32 @fputc(i32 10, ptr %i.afh) ; 0 uses
  br label %.thread1273

bb.jm:                                            ; preds = %bb.jh
  %i.afi = load i64, ptr %i.j, align 8, !tbaa !11 ; 2 uses
  %i.afj = call noalias ptr @malloc(i64 noundef %i.afi) #19 ; 17 uses
  %i.afk = icmp eq ptr %i.afj, null
  br i1 %i.afk, label %bb.jn, label %bb.jr

bb.jn:                                            ; preds = %bb.jm
  %i.afl = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.afm = icmp sgt i32 %i.afl, 0
  br i1 %i.afm, label %bb.jo, label %.thread1273

bb.jo:                                            ; preds = %bb.jn
  %i.afn = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.afo = icmp sgt i64 %i.afn, -1
  %i.afp = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.afq = icmp sgt i64 %i.afp, -1
  %or.cond100 = select i1 %i.afo, i1 %i.afq, i1 false
  br i1 %or.cond100, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.afr = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.afs = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.aft = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.afn, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1128, i64 noundef %i.afp, i64 noundef %i.afr, i64 noundef %i.afs, ptr noundef nonnull @.str.70) #15 ; 0 uses
  br label %.thread1273

bb.jq:                                            ; preds = %bb.jo
  %i.afu = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1066 = call i64 @fwrite(ptr nonnull @.str.70, i64 34, i64 1, ptr %i.afu) #17 ; 0 uses
  %i.afv = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1068 = call i32 @fputc(i32 10, ptr %i.afv) ; 0 uses
  br label %.thread1273

bb.jr:                                            ; preds = %bb.jm
  %i.afw = udiv i64 %i.afi, %i.ye
  store i64 %i.afw, ptr %i.k, align 8, !tbaa !11
  %i.afx = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef nonnull %i.k, ptr noundef null) #15 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.l, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.o, i8 0, i64 64, i1 false)
  %wide.trip.count4550 = zext nneg i32 %i.uc to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.uc, 4
  %n.vec = and i64 %wide.trip.count4550, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count4550
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %._crit_edge2951
  %.05922952 = phi i64 [ 0, %bb.jr ], [ %i.aki, %._crit_edge2951 ]
  br i1 %.not2987, label %bb.kc, label %.lr.ph2945.preheader

.lr.ph2945.preheader:                             ; preds = %bb.js
  br i1 %min.iters.check, label %.lr.ph2945.preheader7928, label %vector.body

vector.body:                                      ; preds = %.lr.ph2945.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph2945.preheader ] ; 5 uses
  %vec.phi = phi <2 x i64> [ %i.agk, %vector.body ], [ splat (i64 1), %.lr.ph2945.preheader ]
  %vec.phi7921 = phi <2 x i64> [ %i.agl, %vector.body ], [ splat (i64 1), %.lr.ph2945.preheader ]
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 16
  %wide.load = load <2 x i64>, ptr %i.afy, align 16, !tbaa !11
  %wide.load7922.a = load <2 x i64>, ptr %i.afz, align 16, !tbaa !11
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %wide.load7923.a = load <2 x i64>, ptr %i.aga, align 16, !tbaa !11
  %wide.load7924.a = load <2 x i64>, ptr %i.agb, align 16, !tbaa !11
  %i.agc = sub <2 x i64> %wide.load, %wide.load7923.a
  %i.agd = sub <2 x i64> %wide.load7922.a, %wide.load7924.a
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %wide.load7925.a = load <2 x i64>, ptr %i.age, align 16, !tbaa !11
  %wide.load7926 = load <2 x i64>, ptr %i.agf, align 16, !tbaa !11
  %i.agg = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.agc, <2 x i64> %wide.load7925.a) ; 2 uses
  %i.agh = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.agd, <2 x i64> %wide.load7926) ; 2 uses
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 16
  store <2 x i64> %i.agg, ptr %i.agi, align 16, !tbaa !11
  store <2 x i64> %i.agh, ptr %i.agj, align 16, !tbaa !11
  %i.agk = mul <2 x i64> %vec.phi, %i.agg         ; 2 uses
  %i.agl = mul <2 x i64> %vec.phi7921, %i.agh     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agm = icmp eq i64 %index.next, %n.vec
  br i1 %i.agm, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <2 x i64> %i.agl, %i.agk
  %i.agn = call i64 @llvm.vector.reduce.mul.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit7927, label %.lr.ph2945.preheader7928

.lr.ph2945.preheader7928:                         ; preds = %.lr.ph2945.preheader, %middle.block
  %indvars.iv4546.ph = phi i64 [ 0, %.lr.ph2945.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi i64 [ 1, %.lr.ph2945.preheader ], [ %i.agn, %middle.block ]
  br label %.lr.ph2945

.lr.ph2945:                                       ; preds = %.lr.ph2945.preheader7928, %.lr.ph2945
  %indvars.iv4546 = phi i64 [ %indvars.iv.next4547, %.lr.ph2945 ], [ %indvars.iv4546.ph, %.lr.ph2945.preheader7928 ] ; 5 uses
  %i.ago = phi i64 [ %i.agx, %.lr.ph2945 ], [ %.ph, %.lr.ph2945.preheader7928 ]
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv4546
  %i.agq = load i64, ptr %i.agp, align 8, !tbaa !11
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv4546
  %i.ags = load i64, ptr %i.agr, align 8, !tbaa !11
  %i.agt = sub i64 %i.agq, %i.ags
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv4546
  %i.agv = load i64, ptr %i.agu, align 8, !tbaa !11
  %. = call i64 @llvm.umin.i64(i64 %i.agt, i64 %i.agv) ; 2 uses
  %i.agw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv4546
  store i64 %., ptr %i.agw, align 8, !tbaa !11
  %i.agx = mul i64 %i.ago, %.                     ; 2 uses
  %indvars.iv.next4547 = add nuw nsw i64 %indvars.iv4546, 1 ; 2 uses
  %exitcond4551.not = icmp eq i64 %indvars.iv.next4547, %wide.trip.count4550
  br i1 %exitcond4551.not, label %.loopexit7927, label %.lr.ph2945, !llvm.loop !54

.loopexit7927:                                    ; preds = %.lr.ph2945, %middle.block
  %.lcssa6375 = phi i64 [ %i.agn, %middle.block ], [ %i.agx, %.lr.ph2945 ]
  store i64 %.lcssa6375, ptr %i.n, align 8, !tbaa !11
  %i.agy = call i32 @H5Sselect_hyperslab(i64 noundef %i.sp, i32 noundef 0, ptr noundef nonnull %i.l, ptr noundef null, ptr noundef nonnull %i.m, ptr noundef null) #15
  %i.agz = icmp slt i32 %i.agy, 0
  br i1 %i.agz, label %bb.jt, label %bb.jx

bb.jt:                                            ; preds = %.loopexit7927
  %i.aha = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.ahb = icmp sgt i32 %i.aha, 0
  br i1 %i.ahb, label %bb.ju, label %.thread1273

bb.ju:                                            ; preds = %bb.jt
  %i.ahc = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.ahd = icmp sgt i64 %i.ahc, -1
  %i.ahe = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ahf = icmp sgt i64 %i.ahe, -1
  %or.cond102 = select i1 %i.ahd, i1 %i.ahf, i1 false
  br i1 %or.cond102, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.ahg = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.ahh = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.ahi = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ahc, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1156, i64 noundef %i.ahe, i64 noundef %i.ahg, i64 noundef %i.ahh, ptr noundef nonnull @.str.71) #15 ; 0 uses
  br label %.thread1273

bb.jw:                                            ; preds = %bb.ju
  %i.ahj = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1063 = call i64 @fwrite(ptr nonnull @.str.71, i64 26, i64 1, ptr %i.ahj) #17 ; 0 uses
  %i.ahk = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1065 = call i32 @fputc(i32 10, ptr %i.ahk) ; 0 uses
  br label %.thread1273

bb.jx:                                            ; preds = %.loopexit7927
  %i.ahl = call i32 @H5Sselect_hyperslab(i64 noundef %i.afx, i32 noundef 0, ptr noundef nonnull %i.o, ptr noundef null, ptr noundef nonnull %i.n, ptr noundef null) #15
  %i.ahm = icmp slt i32 %i.ahl, 0
  br i1 %i.ahm, label %bb.jy, label %bb.kd

bb.jy:                                            ; preds = %bb.jx
  %i.ahn = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.aho = icmp sgt i32 %i.ahn, 0
  br i1 %i.aho, label %bb.jz, label %.thread1273

bb.jz:                                            ; preds = %bb.jy
  %i.ahp = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.ahq = icmp sgt i64 %i.ahp, -1
  %i.ahr = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ahs = icmp sgt i64 %i.ahr, -1
  %or.cond104 = select i1 %i.ahq, i1 %i.ahs, i1 false
  br i1 %or.cond104, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.aht = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.ahu = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.ahv = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ahp, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1159, i64 noundef %i.ahr, i64 noundef %i.aht, i64 noundef %i.ahu, ptr noundef nonnull @.str.71) #15 ; 0 uses
  br label %.thread1273

bb.kb:                                            ; preds = %bb.jz
  %i.ahw = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1060 = call i64 @fwrite(ptr nonnull @.str.71, i64 26, i64 1, ptr %i.ahw) #17 ; 0 uses
  %i.ahx = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1062 = call i32 @fputc(i32 10, ptr %i.ahx) ; 0 uses
  br label %.thread1273

bb.kc:                                            ; preds = %bb.js
  %i.ahy = call i32 @H5Sselect_all(i64 noundef %i.sp) #15 ; 0 uses
  %i.ahz = call i32 @H5Sselect_all(i64 noundef %i.afx) #15 ; 0 uses
  store i64 1, ptr %i.n, align 8, !tbaa !11
  br label %bb.kd

bb.kd:                                            ; preds = %bb.jx, %bb.kc
  %i.aia = load i32, ptr %i.t, align 4, !tbaa !29
  %i.aib = icmp eq i32 %i.aia, 2
  br i1 %i.aib, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  %i.aic = call i32 @H5_timer_init(ptr noundef nonnull %4) #15 ; 0 uses
  %i.aid = call i32 @H5_timer_start(ptr noundef nonnull %4) #15 ; 0 uses
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %i.aie = call i32 @H5Dread(i64 noundef %i.sc, i64 noundef %.2669, i64 noundef %i.afx, i64 noundef %i.sp, i64 noundef 0, ptr noundef nonnull %i.afj) #15
  %i.aif = icmp slt i32 %i.aie, 0
  br i1 %i.aif, label %bb.kg, label %bb.kk

bb.kg:                                            ; preds = %bb.kf
  %i.aig = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.aih = icmp sgt i32 %i.aig, 0
  br i1 %i.aih, label %bb.kh, label %.thread1273

bb.kh:                                            ; preds = %bb.kg
  %i.aii = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.aij = icmp sgt i64 %i.aii, -1
  %i.aik = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ail = icmp sgt i64 %i.aik, -1
  %or.cond106 = select i1 %i.aij, i1 %i.ail, i1 false
  br i1 %or.cond106, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %bb.kh
  %i.aim = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.ain = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.aio = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.aii, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1173, i64 noundef %i.aik, i64 noundef %i.aim, i64 noundef %i.ain, ptr noundef nonnull @.str.66) #15 ; 0 uses
  br label %.thread1273

bb.kj:                                            ; preds = %bb.kh
  %i.aip = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1057 = call i64 @fwrite(ptr nonnull @.str.66, i64 14, i64 1, ptr %i.aip) #17 ; 0 uses
  %i.aiq = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1059 = call i32 @fputc(i32 10, ptr %i.aiq) ; 0 uses
  br label %.thread1273

bb.kk:                                            ; preds = %bb.kf
  %i.air = load i32, ptr %i.t, align 4, !tbaa !29
  %i.ais = icmp eq i32 %i.air, 2
  br i1 %i.ais, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.ait = call i32 @H5_timer_stop(ptr noundef nonnull %4) #15 ; 0 uses
  %i.aiu = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 %4, ptr noundef nonnull %5) #15 ; 0 uses
  %i.aiv = load double, ptr %i.ao, align 8, !tbaa !88
  %i.aiw = load double, ptr @do_copy_objects.read_time, align 8, !tbaa !70
  %i.aix = fadd double %i.aiv, %i.aiw
  store double %i.aix, ptr @do_copy_objects.read_time, align 8, !tbaa !70
  %i.aiy = call i32 @H5_timer_init(ptr noundef nonnull %4) #15 ; 0 uses
  %i.aiz = call i32 @H5_timer_start(ptr noundef nonnull %4) #15 ; 0 uses
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.aja = call i32 @H5Dwrite(i64 noundef %.1707, i64 noundef %.2669, i64 noundef %i.afx, i64 noundef %i.sp, i64 noundef 0, ptr noundef nonnull %i.afj) #15
  %i.ajb = icmp slt i32 %i.aja, 0
  br i1 %i.ajb, label %bb.kn, label %bb.kr

bb.kn:                                            ; preds = %bb.km
  %i.ajc = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.ajd = icmp sgt i32 %i.ajc, 0
  br i1 %i.ajd, label %bb.ko, label %.thread1273

bb.ko:                                            ; preds = %bb.kn
  %i.aje = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.ajf = icmp sgt i64 %i.aje, -1
  %i.ajg = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ajh = icmp sgt i64 %i.ajg, -1
  %or.cond108 = select i1 %i.ajf, i1 %i.ajh, i1 false
  br i1 %or.cond108, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %bb.ko
  %i.aji = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.ajj = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.ajk = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.aje, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1183, i64 noundef %i.ajg, i64 noundef %i.aji, i64 noundef %i.ajj, ptr noundef nonnull @.str.67) #15 ; 0 uses
  br label %.thread1273

bb.kq:                                            ; preds = %bb.ko
  %i.ajl = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1054 = call i64 @fwrite(ptr nonnull @.str.67, i64 15, i64 1, ptr %i.ajl) #17 ; 0 uses
  %i.ajm = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1056 = call i32 @fputc(i32 10, ptr %i.ajm) ; 0 uses
  br label %.thread1273

bb.kr:                                            ; preds = %bb.km
  %i.ajn = load i32, ptr %i.t, align 4, !tbaa !29
  %i.ajo = icmp eq i32 %i.ajn, 2
  br i1 %i.ajo, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.ajp = call i32 @H5_timer_stop(ptr noundef nonnull %4) #15 ; 0 uses
  %i.ajq = call i32 @H5_timer_get_times(ptr noundef nonnull byval(%struct.H5_timer_t) align 8 %4, ptr noundef nonnull %5) #15 ; 0 uses
  %i.ajr = load double, ptr %i.ao, align 8, !tbaa !88
  %i.ajs = load double, ptr @do_copy_objects.write_time, align 8, !tbaa !70
  %i.ajt = fadd double %i.ajr, %i.ajs
  store double %i.ajt, ptr @do_copy_objects.write_time, align 8, !tbaa !70
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.kr
  br i1 %.not1053, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.aju = call i32 @H5Treclaim(i64 noundef %.2669, i64 noundef %i.afx, i64 noundef 0, ptr noundef nonnull %i.afj) #15 ; 0 uses
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  br i1 %.not2987, label %._crit_edge2951, label %.lr.ph2950

.lr.ph2950:                                       ; preds = %bb.kv, %.lr.ph2950
  %indvars.iv4552 = phi i64 [ %i.ajv, %.lr.ph2950 ], [ %wide.trip.count4550, %bb.kv ] ; 2 uses
  %i.ajv = add nsw i64 %indvars.iv4552, -1        ; 4 uses
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ajv
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !11
  %i.ajy = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ajv ; 2 uses
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !11
  %i.aka = add i64 %i.ajz, %i.ajx                 ; 2 uses
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ajv
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !11
  %i.akd = icmp eq i64 %i.aka, %i.akc             ; 2 uses
  %spec.store.select1249 = select i1 %i.akd, i64 0, i64 %i.aka
  store i64 %spec.store.select1249, ptr %i.ajy, align 8, !tbaa !11
  %i.ake = trunc nuw i64 %indvars.iv4552 to i32
  %i.akf = icmp sgt i32 %i.ake, 1
  %i.akg = and i1 %i.akd, %i.akf
  br i1 %i.akg, label %.lr.ph2950, label %._crit_edge2951, !llvm.loop !55

._crit_edge2951:                                  ; preds = %.lr.ph2950, %bb.kv
  %i.akh = load i64, ptr %i.n, align 8, !tbaa !11
  %i.aki = add i64 %i.akh, %.05922952             ; 2 uses
  %i.akj = icmp ult i64 %i.aki, %.0648.lcssa
  br i1 %i.akj, label %bb.js, label %bb.kw, !llvm.loop !56

.thread1273:                                      ; preds = %bb.jk, %bb.jp, %bb.jv, %bb.ka, %bb.ki, %bb.ji, %bb.jl, %bb.jn, %bb.jq, %bb.jt, %bb.jw, %bb.jy, %bb.kb, %bb.kg, %bb.kj, %bb.kn, %bb.kq, %bb.kp
  %.2625.ph = phi ptr [ %i.afj, %bb.kp ], [ %i.afj, %bb.kq ], [ %i.afj, %bb.kn ], [ %i.afj, %bb.kj ], [ %i.afj, %bb.kg ], [ %i.afj, %bb.kb ], [ %i.afj, %bb.jy ], [ %i.afj, %bb.jw ], [ %i.afj, %bb.jt ], [ null, %bb.jq ], [ null, %bb.jn ], [ null, %bb.jl ], [ null, %bb.ji ], [ %i.afj, %bb.ki ], [ %i.afj, %bb.ka ], [ %i.afj, %bb.jv ], [ null, %bb.jp ], [ null, %bb.jk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  br label %.thread1325

bb.kw:                                            ; preds = %._crit_edge2951
  %i.akk = call i32 @H5Sclose(i64 noundef %i.afx) #15 ; 0 uses
  call void @free(ptr noundef %i.afj) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  br label %bb.kx

bb.kx:                                            ; preds = %bb.jf, %bb.kw, %bb.ig
  %.1650 = phi i64 [ %.06492966, %bb.ig ], [ 0, %bb.kw ], [ 0, %bb.jf ] ; 7 uses
  %i.akl = load i32, ptr %i.t, align 4, !tbaa !29
  %i.akm = icmp sgt i32 %i.akl, 0
  br i1 %i.akm, label %bb.ky, label %bb.lf

bb.ky:                                            ; preds = %bb.kx
  %or.cond110 = and i1 %i.zv, %i.aar
  %or.cond112 = select i1 %or.cond110, i1 %.4622, i1 false
  br i1 %or.cond112, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.akn = call i64 @H5Dget_storage_size(i64 noundef %.1707) #15 ; 2 uses
  %.not1081 = icmp eq i64 %i.akn, 0
  %i.ako = uitofp i64 %i.yz to double
  %i.akp = uitofp i64 %i.akn to double
  %i.akq = fdiv double %i.ako, %i.akp
  %.0 = select i1 %.not1081, double 0.000000e+00, double %i.akq
  %i.akr = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.aks = getelementptr inbounds nuw [72 x i8], ptr %i.akr, i64 %i.at
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 32
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !68
  %i.akv = load double, ptr @do_copy_objects.read_time, align 8, !tbaa !70
  %i.akw = load double, ptr @do_copy_objects.write_time, align 8, !tbaa !70
  call fastcc void @print_dataset_info(i64 noundef %.0687, ptr noundef %i.aku, double noundef %.0, i32 noundef 1, ptr noundef nonnull %3, double noundef %i.akv, double noundef %i.akw)
  br label %bb.lb

bb.la:                                            ; preds = %bb.ky
  %i.akx = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.aky = getelementptr inbounds nuw [72 x i8], ptr %i.akx, i64 %i.at
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 32
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !68
  %i.alb = load double, ptr @do_copy_objects.read_time, align 8, !tbaa !70
  %i.alc = load double, ptr @do_copy_objects.write_time, align 8, !tbaa !70
  call fastcc void @print_dataset_info(i64 noundef %i.tp, ptr noundef %i.ala, double noundef 0.000000e+00, i32 noundef 0, ptr noundef nonnull %3, double noundef %i.alb, double noundef %i.alc)
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz
  %i.ald = load i32, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %i.ale = icmp ne i32 %i.ald, 0
  %or.cond114 = and i1 %i.zu, %i.ale
  br i1 %or.cond114, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.alf = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.alg = getelementptr inbounds nuw [72 x i8], ptr %i.alf, i64 %i.at
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 32
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !68
  %i.alj = load i64, ptr %i.aq, align 8, !tbaa !86
  %i.alk = trunc i64 %i.alj to i32
  %i.all = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, ptr noundef %i.ali, i32 noundef %i.alk) ; 0 uses
  %.pre4565 = load i32, ptr %i.d, align 4, !tbaa !22
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %i.alm = phi i32 [ %.pre4565, %bb.lc ], [ %i.ald, %bb.lb ]
  %i.aln = icmp eq i32 %i.alm, 0
  %or.cond116.not = or i1 %i.aar, %i.aln
  br i1 %or.cond116.not, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.alo = load ptr, ptr %i.x, align 8, !tbaa !62
  %i.alp = getelementptr inbounds nuw [72 x i8], ptr %i.alo, i64 %i.at
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 32
  %i.alr = load ptr, ptr %i.alq, align 8, !tbaa !68
  %i.als = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, ptr noundef %i.alr) ; 0 uses
  br label %bb.lf

bb.lf:                                            ; preds = %bb.ld, %bb.le, %bb.kx
  %i.alt = call i32 @copy_attr(i64 noundef %i.sc, i64 noundef %.1707, ptr noundef nonnull %i.a, ptr noundef %2, ptr noundef nonnull %3) #15
  %i.alu = icmp slt i32 %i.alt, 0
  br i1 %i.alu, label %bb.lg, label %bb.lk

bb.lg:                                            ; preds = %bb.lf
  %i.alv = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.alw = icmp sgt i32 %i.alv, 0
  br i1 %i.alw, label %bb.lh, label %.thread1325

bb.lh:                                            ; preds = %bb.lg
  %i.alx = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.aly = icmp sgt i64 %i.alx, -1
  %i.alz = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ama = icmp sgt i64 %i.alz, -1
  %or.cond118 = select i1 %i.aly, i1 %i.ama, i1 false
  br i1 %or.cond118, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.amb = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.amc = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.amd = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.alx, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1253, i64 noundef %i.alz, i64 noundef %i.amb, i64 noundef %i.amc, ptr noundef nonnull @.str.43) #15 ; 0 uses
  br label %.thread1325

bb.lj:                                            ; preds = %bb.lh
  %i.ame = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1104 = call i64 @fwrite(ptr nonnull @.str.43, i64 16, i64 1, ptr %i.ame) #17 ; 0 uses
  %i.amf = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1106 = call i32 @fputc(i32 10, ptr %i.amf) ; 0 uses
  br label %.thread1325

bb.lk:                                            ; preds = %bb.lf
  %i.amg = call i32 @H5Dclose(i64 noundef %.1707) #15
  %i.amh = icmp slt i32 %i.amg, 0
  br i1 %i.amh, label %bb.ll, label %bb.lp

bb.ll:                                            ; preds = %bb.lk
  %i.ami = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.amj = icmp sgt i32 %i.ami, 0
  br i1 %i.amj, label %bb.lm, label %.thread1325

bb.lm:                                            ; preds = %bb.ll
  %i.amk = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.aml = icmp sgt i64 %i.amk, -1
  %i.amm = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.amn = icmp sgt i64 %i.amm, -1
  %or.cond120 = select i1 %i.aml, i1 %i.amn, i1 false
  br i1 %or.cond120, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.amo = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.amp = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.amq = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.amk, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1256, i64 noundef %i.amm, i64 noundef %i.amo, i64 noundef %i.amp, ptr noundef nonnull @.str.53) #15 ; 0 uses
  br label %.thread1325

bb.lo:                                            ; preds = %bb.lm
  %i.amr = load ptr, ptr @stderr, align 8, !tbaa !24
  %fwrite1101 = call i64 @fwrite(ptr nonnull @.str.53, i64 15, i64 1, ptr %i.amr) #17 ; 0 uses
  %i.ams = load ptr, ptr @stderr, align 8, !tbaa !24
  %fputc1103 = call i32 @fputc(i32 10, ptr %i.ams) ; 0 uses
  br label %.thread1325

bb.lp:                                            ; preds = %bb.hh, %bb.lk, %bb.hg
  %.2708 = phi i64 [ %.1707, %bb.lk ], [ %.07062956, %bb.hh ], [ %.07062956, %bb.hg ] ; 19 uses
  %.2651 = phi i64 [ %.1650, %bb.lk ], [ %.06492966, %bb.hh ], [ %.06492966, %bb.hg ] ; 19 uses
  %i.amt = call i32 @H5Tclose(i64 noundef %i.tc) #15
  %i.amu = icmp slt i32 %i.amt, 0
  br i1 %i.amu, label %bb.lq, label %bb.lu

bb.lq:                                            ; preds = %bb.lp
  %i.amv = load i32, ptr @enable_error_stack, align 4, !tbaa !22
  %i.amw = icmp sgt i32 %i.amv, 0
  br i1 %i.amw, label %bb.lr, label %.thread1325

bb.lr:                                            ; preds = %bb.lq
  %i.amx = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !11 ; 2 uses
  %i.amy = icmp sgt i64 %i.amx, -1
  %i.amz = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ana = icmp sgt i64 %i.amz, -1
  %or.cond122 = select i1 %i.amy, i1 %i.ana, i1 false
  br i1 %or.cond122, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.anb = load i64, ptr @H5E_tools_g, align 8, !tbaa !11
  %i.anc = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !11
  %i.and = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.amx, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_copy_objects, i32 noundef 1265, i64 noundef %i.amz, i64 noundef %i.anb, i64 noundef %i.anc, ptr noundef nonnull @.str.52) #15 ; 0 uses
  br label %.thread1325
end_hunk_1
