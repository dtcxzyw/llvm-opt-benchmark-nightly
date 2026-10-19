Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/riscv?download=true
inline.NumInlined: 204
inline.NumDeleted: 84
begin_hunk_0_@format_inst:bb.a
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr @rv_vreg_name_sym, i64 %i.vp ; 7 uses
  br i1 %.not.i, label %bb.rl, label %bb.rm, !prof !19

bb.rl:                                            ; preds = %bb.rk
  %i.vr = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull %i.vq, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.rm:                                            ; preds = %bb.rk
  %i.vs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.vq) #11 ; 6 uses
  %i.vt = load i64, ptr %i.k, align 8             ; 2 uses
  %i.vu = add i64 %i.vt, %i.vs
  %i.vv = load i64, ptr %i.l, align 8
  %.not56.i283 = icmp ult i64 %i.vu, %i.vv
  br i1 %.not56.i283, label %bb.rn, label %bb.rr, !prof !20

bb.rn:                                            ; preds = %bb.rm
  %i.vw = load ptr, ptr %i.c, align 8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 %i.vt ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.vs
  %.not57.i285 = icmp ugt ptr %i.vy, %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vs
  %i.wa = icmp ule ptr %i.vq, %i.vz
  %or.cond.i286.not = select i1 %.not57.i285, i1 %i.wa, i1 false
  br i1 %or.cond.i286.not, label %bb.rp, label %bb.ro, !prof !19

bb.ro:                                            ; preds = %bb.rn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.vx, ptr noundef nonnull align 4 %i.vq, i64 noundef %i.vs, i1 noundef false) #10
  br label %bb.rq

bb.rp:                                            ; preds = %bb.rn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.vx, ptr noundef nonnull align 4 %i.vq, i64 noundef %i.vs, i1 noundef false) #10
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro
  %i.wb = load i64, ptr %i.k, align 8
  %i.wc = add i64 %i.wb, %i.vs                    ; 2 uses
  store i64 %i.wc, ptr %i.k, align 8
  %i.wd = load ptr, ptr %i.c, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %i.wc
  store i8 0, ptr %i.we, align 1
  br label %g_string_append_len_inline.exit468

bb.rr:                                            ; preds = %bb.rm
  %i.wf = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull %i.vq, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.rs:                                            ; preds = %bb.b
  %i.wg = load i8, ptr %i.q, align 4
  %i.wh = zext i8 %i.wg to i64
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr @rv_vreg_name_sym, i64 %i.wh ; 7 uses
  br i1 %.not.i, label %bb.rt, label %bb.ru, !prof !19

bb.rt:                                            ; preds = %bb.rs
  %i.wj = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull %i.wi, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.ru:                                            ; preds = %bb.rs
  %i.wk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.wi) #11 ; 6 uses
  %i.wl = load i64, ptr %i.k, align 8             ; 2 uses
  %i.wm = add i64 %i.wl, %i.wk
  %i.wn = load i64, ptr %i.l, align 8
  %.not56.i276 = icmp ult i64 %i.wm, %i.wn
  br i1 %.not56.i276, label %bb.rv, label %bb.rz, !prof !20

bb.rv:                                            ; preds = %bb.ru
  %i.wo = load ptr, ptr %i.c, align 8
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 %i.wl ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wk
  %.not57.i278 = icmp ugt ptr %i.wq, %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 %i.wk
  %i.ws = icmp ule ptr %i.wi, %i.wr
  %or.cond.i279.not = select i1 %.not57.i278, i1 %i.ws, i1 false
  br i1 %or.cond.i279.not, label %bb.rx, label %bb.rw, !prof !19

bb.rw:                                            ; preds = %bb.rv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.wp, ptr noundef nonnull align 4 %i.wi, i64 noundef %i.wk, i1 noundef false) #10
  br label %bb.ry

bb.rx:                                            ; preds = %bb.rv
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.wp, ptr noundef nonnull align 4 %i.wi, i64 noundef %i.wk, i1 noundef false) #10
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw
  %i.wt = load i64, ptr %i.k, align 8
  %i.wu = add i64 %i.wt, %i.wk                    ; 2 uses
  store i64 %i.wu, ptr %i.k, align 8
  %i.wv = load ptr, ptr %i.c, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 %i.wu
  store i8 0, ptr %i.ww, align 1
  br label %g_string_append_len_inline.exit468

bb.rz:                                            ; preds = %bb.ru
  %i.wx = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull %i.wi, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.sa:                                            ; preds = %bb.b
  %i.wy = load i8, ptr %i.p, align 1
  %i.wz = zext i8 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr @rv_vreg_name_sym, i64 %i.wz ; 7 uses
  br i1 %.not.i, label %bb.sb, label %bb.sc, !prof !19

bb.sb:                                            ; preds = %bb.sa
  %i.xb = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull %i.xa, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.sc:                                            ; preds = %bb.sa
  %i.xc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xa) #11 ; 6 uses
  %i.xd = load i64, ptr %i.k, align 8             ; 2 uses
  %i.xe = add i64 %i.xd, %i.xc
  %i.xf = load i64, ptr %i.l, align 8
  %.not56.i269 = icmp ult i64 %i.xe, %i.xf
  br i1 %.not56.i269, label %bb.sd, label %bb.sh, !prof !20

bb.sd:                                            ; preds = %bb.sc
  %i.xg = load ptr, ptr %i.c, align 8
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xd ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xc
  %.not57.i271 = icmp ugt ptr %i.xi, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.xc
  %i.xk = icmp ule ptr %i.xa, %i.xj
  %or.cond.i272.not = select i1 %.not57.i271, i1 %i.xk, i1 false
  br i1 %or.cond.i272.not, label %bb.sf, label %bb.se, !prof !19

bb.se:                                            ; preds = %bb.sd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.xh, ptr noundef nonnull align 4 %i.xa, i64 noundef %i.xc, i1 noundef false) #10
  br label %bb.sg

bb.sf:                                            ; preds = %bb.sd
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.xh, ptr noundef nonnull align 4 %i.xa, i64 noundef %i.xc, i1 noundef false) #10
  br label %bb.sg

bb.sg:                                            ; preds = %bb.sf, %bb.se
  %i.xl = load i64, ptr %i.k, align 8
  %i.xm = add i64 %i.xl, %i.xc                    ; 2 uses
  store i64 %i.xm, ptr %i.k, align 8
  %i.xn = load ptr, ptr %i.c, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xm
  store i8 0, ptr %i.xo, align 1
  br label %g_string_append_len_inline.exit468

bb.sh:                                            ; preds = %bb.sc
  %i.xp = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull %i.xa, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.si:                                            ; preds = %bb.b
  %i.xq = load i8, ptr %i.o, align 2
  %i.xr = zext i8 %i.xq to i64
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr @rv_vreg_name_sym, i64 %i.xr ; 7 uses
  br i1 %.not.i, label %bb.sj, label %bb.sk, !prof !19

bb.sj:                                            ; preds = %bb.si
  %i.xt = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull %i.xs, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.sk:                                            ; preds = %bb.si
  %i.xu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.xs) #11 ; 6 uses
  %i.xv = load i64, ptr %i.k, align 8             ; 2 uses
  %i.xw = add i64 %i.xv, %i.xu
  %i.xx = load i64, ptr %i.l, align 8
  %.not56.i262 = icmp ult i64 %i.xw, %i.xx
  br i1 %.not56.i262, label %bb.sl, label %bb.sp, !prof !20

bb.sl:                                            ; preds = %bb.sk
  %i.xy = load ptr, ptr %i.c, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.xv ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.xu
  %.not57.i264 = icmp ugt ptr %i.ya, %i.xz
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xz, i64 %i.xu
  %i.yc = icmp ule ptr %i.xs, %i.yb
  %or.cond.i265.not = select i1 %.not57.i264, i1 %i.yc, i1 false
  br i1 %or.cond.i265.not, label %bb.sn, label %bb.sm, !prof !19

bb.sm:                                            ; preds = %bb.sl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.xz, ptr noundef nonnull align 4 %i.xs, i64 noundef %i.xu, i1 noundef false) #10
  br label %bb.so

bb.sn:                                            ; preds = %bb.sl
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.xz, ptr noundef nonnull align 4 %i.xs, i64 noundef %i.xu, i1 noundef false) #10
  br label %bb.so

bb.so:                                            ; preds = %bb.sn, %bb.sm
  %i.yd = load i64, ptr %i.k, align 8
  %i.ye = add i64 %i.yd, %i.xu                    ; 2 uses
  store i64 %i.ye, ptr %i.k, align 8
  %i.yf = load ptr, ptr %i.c, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.ye
  store i8 0, ptr %i.yg, align 1
  br label %g_string_append_len_inline.exit468

bb.sp:                                            ; preds = %bb.sk
  %i.yh = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull %i.xs, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.sq:                                            ; preds = %bb.b
  %i.yi = load i32, ptr %i.n, align 8             ; 5 uses
  %i.yj = lshr i32 %i.yi, 3
  %i.yk = and i32 %i.yj, 7
  %i.yl = shl nuw nsw i32 8, %i.yk
  %i.ym = and i32 %i.yi, 3                        ; 2 uses
  %i.yn = and i32 %i.yi, 64
  %.not187 = icmp eq i32 %i.yn, 0
  %i.yo = select i1 %.not187, ptr @.str.1085, ptr @.str.1084 ; 3 uses
  %i.yp = and i32 %i.yi, 128
  %.not188 = icmp eq i32 %i.yp, 0
  %i.yq = select i1 %.not188, ptr @.str.1087, ptr @.str.1086 ; 3 uses
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.1088, i32 noundef %i.yl) #10
  %i.yr = and i32 %i.yi, 4
  %.not189 = icmp eq i32 %i.yr, 0
  br i1 %.not189, label %bb.te, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  switch i32 %i.ym, label %default.unreachable [
    i32 3, label %bb.ss
    i32 2, label %bb.sw
    i32 1, label %bb.ta
    i32 0, label %g_string_append_len_inline.exit260
  ]

bb.ss:                                            ; preds = %bb.sr
  br i1 %.not.i, label %g_string_append_len_inline.exit260.thread518, label %bb.st, !prof !19

bb.st:                                            ; preds = %bb.ss
  %i.ys = load i64, ptr %i.k, align 8             ; 2 uses
  %i.yt = add i64 %i.ys, 2
  %i.yu = load i64, ptr %i.l, align 8
  %.not56.i255 = icmp ult i64 %i.yt, %i.yu
  br i1 %.not56.i255, label %bb.su, label %bb.sv, !prof !20

bb.su:                                            ; preds = %bb.st
  %i.yv = load ptr, ptr %i.c, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.ys
  store i16 12902, ptr %i.yw, align 1
  %i.yx = load i64, ptr %i.k, align 8
  %i.yy = add i64 %i.yx, 2                        ; 2 uses
  store i64 %i.yy, ptr %i.k, align 8
  %i.yz = load ptr, ptr %i.c, align 8
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yy
  store i8 0, ptr %i.za, align 1
  br label %g_string_append_len_inline.exit260.thread

bb.sv:                                            ; preds = %bb.st
  %i.zb = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull @.str.1089, i64 noundef 2) #10 ; 0 uses
  br label %g_string_append_len_inline.exit260.thread

bb.sw:                                            ; preds = %bb.sr
  br i1 %.not.i, label %g_string_append_len_inline.exit260.thread518, label %bb.sx, !prof !19

bb.sx:                                            ; preds = %bb.sw
  %i.zc = load i64, ptr %i.k, align 8             ; 2 uses
  %i.zd = add i64 %i.zc, 2
  %i.ze = load i64, ptr %i.l, align 8
  %.not56.i248 = icmp ult i64 %i.zd, %i.ze
  br i1 %.not56.i248, label %bb.sy, label %bb.sz, !prof !20

bb.sy:                                            ; preds = %bb.sx
  %i.zf = load ptr, ptr %i.c, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zc
  store i16 13414, ptr %i.zg, align 1
  %i.zh = load i64, ptr %i.k, align 8
  %i.zi = add i64 %i.zh, 2                        ; 2 uses
  store i64 %i.zi, ptr %i.k, align 8
  %i.zj = load ptr, ptr %i.c, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.zi
  store i8 0, ptr %i.zk, align 1
  br label %g_string_append_len_inline.exit260.thread

bb.sz:                                            ; preds = %bb.sx
  %i.zl = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull @.str.1090, i64 noundef 2) #10 ; 0 uses
  br label %g_string_append_len_inline.exit260.thread

bb.ta:                                            ; preds = %bb.sr
  br i1 %.not.i, label %g_string_append_len_inline.exit260.thread518, label %bb.tb, !prof !19

bb.tb:                                            ; preds = %bb.ta
  %i.zm = load i64, ptr %i.k, align 8             ; 2 uses
  %i.zn = add i64 %i.zm, 2
  %i.zo = load i64, ptr %i.l, align 8
  %.not56.i241 = icmp ult i64 %i.zn, %i.zo
  br i1 %.not56.i241, label %bb.tc, label %bb.td, !prof !20

bb.tc:                                            ; preds = %bb.tb
  %i.zp = load ptr, ptr %i.c, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zm
  store i16 14438, ptr %i.zq, align 1
  %i.zr = load i64, ptr %i.k, align 8
  %i.zs = add i64 %i.zr, 2                        ; 2 uses
  store i64 %i.zs, ptr %i.k, align 8
  %i.zt = load ptr, ptr %i.c, align 8
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zs
  store i8 0, ptr %i.zu, align 1
  br label %g_string_append_len_inline.exit260.thread

bb.td:                                            ; preds = %bb.tb
  %i.zv = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull @.str.1091, i64 noundef 2) #10 ; 0 uses
  br label %g_string_append_len_inline.exit260.thread

bb.te:                                            ; preds = %bb.sq
  %i.zw = shl nuw nsw i32 1, %i.ym
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.1069, i32 noundef %i.zw) #10
  br label %g_string_append_len_inline.exit260

default.unreachable:                              ; preds = %bb.sr
  unreachable

g_string_append_len_inline.exit260.thread518:     ; preds = %bb.ta, %bb.sw, %bb.ss
  %.str.1091.sink = phi ptr [ @.str.1090, %bb.sw ], [ @.str.1089, %bb.ss ], [ @.str.1091, %bb.ta ]
  %i.zx = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull %.str.1091.sink, i64 noundef 2) #10 ; 0 uses
  br label %.critedge.i471.thread

g_string_append_len_inline.exit260:               ; preds = %bb.sr, %bb.te
  br i1 %.not.i, label %.critedge.i471.thread, label %g_string_append_len_inline.exit260.thread

g_string_append_len_inline.exit260.thread:        ; preds = %bb.su, %bb.sv, %bb.sy, %bb.sz, %bb.tc, %bb.td, %g_string_append_len_inline.exit260
  %i.zy = load i64, ptr %i.k, align 8             ; 2 uses
  %i.zz = add i64 %i.zy, 1                        ; 2 uses
  %i.aaa = load i64, ptr %i.l, align 8
  %i.aab = icmp ult i64 %i.zz, %i.aaa
  br i1 %i.aab, label %g_string_append_c_inline.exit472, label %.critedge.i471

.critedge.i471:                                   ; preds = %g_string_append_len_inline.exit260.thread
  %i.aac = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.c, i64 noundef -1, i8 noundef signext 44) #10 ; 0 uses
  br label %bb.tf

g_string_append_c_inline.exit472:                 ; preds = %g_string_append_len_inline.exit260.thread
  %i.aad = load ptr, ptr %i.c, align 8
  store i64 %i.zz, ptr %i.k, align 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.zy
  store i8 44, ptr %i.aae, align 1
  %i.aaf = load ptr, ptr %i.c, align 8
  %i.aag = load i64, ptr %i.k, align 8
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aag
  store i8 0, ptr %i.aah, align 1
  br label %bb.tf

bb.tf:                                            ; preds = %g_string_append_c_inline.exit472, %.critedge.i471
  %i.aai = load i64, ptr %i.k, align 8            ; 2 uses
  %i.aaj = add i64 %i.aai, 2
  %i.aak = load i64, ptr %i.l, align 8
  %.not56.i234 = icmp ult i64 %i.aaj, %i.aak
  br i1 %.not56.i234, label %bb.tg, label %bb.th, !prof !20

bb.tg:                                            ; preds = %bb.tf
  %i.aal = load ptr, ptr %i.c, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 %i.aai
  %storemerge = load i16, ptr %i.yo, align 1
  store i16 %storemerge, ptr %i.aam, align 1
  %i.aan = load i64, ptr %i.k, align 8
  %i.aao = add i64 %i.aan, 2                      ; 2 uses
  store i64 %i.aao, ptr %i.k, align 8
  %i.aap = load ptr, ptr %i.c, align 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aao
  store i8 0, ptr %i.aaq, align 1
  br label %bb.ti

bb.th:                                            ; preds = %bb.tf
  %i.aar = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull %i.yo, i64 noundef -1) #10 ; 0 uses
  br label %bb.ti

bb.ti:                                            ; preds = %bb.tg, %bb.th
  %i.aas = load i64, ptr %i.k, align 8            ; 2 uses
  %i.aat = add i64 %i.aas, 1                      ; 2 uses
  %i.aau = load i64, ptr %i.l, align 8
  %i.aav = icmp ult i64 %i.aat, %i.aau
  br i1 %i.aav, label %g_string_append_c_inline.exit.thread, label %g_string_append_c_inline.exit

g_string_append_c_inline.exit.thread:             ; preds = %bb.ti
  %i.aaw = load ptr, ptr %i.c, align 8
  store i64 %i.aat, ptr %i.k, align 8
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.aas
  store i8 44, ptr %i.aax, align 1
  %i.aay = load ptr, ptr %i.c, align 8
  %i.aaz = load i64, ptr %i.k, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aay, i64 %i.aaz
  store i8 0, ptr %i.aba, align 1
  br label %bb.tj

g_string_append_c_inline.exit:                    ; preds = %bb.ti
  %i.abb = tail call ptr @g_string_insert_c(ptr noundef nonnull %i.c, i64 noundef -1, i8 noundef signext 44) #10 ; 0 uses
  br label %bb.tj

.critedge.i471.thread:                            ; preds = %g_string_append_len_inline.exit260, %g_string_append_len_inline.exit260.thread518
  %.sink = phi ptr [ %i.c, %g_string_append_len_inline.exit260.thread518 ], [ null, %g_string_append_len_inline.exit260 ]
  %i.abc = tail call ptr @g_string_insert_c(ptr noundef %.sink, i64 noundef -1, i8 noundef signext 44) #10 ; 0 uses
  %i.abd = tail call ptr @g_string_append_len(ptr noundef %i.c, ptr noundef nonnull %i.yo, i64 noundef -1) #10 ; 0 uses
  %i.abe = tail call ptr @g_string_insert_c(ptr noundef %i.c, i64 noundef -1, i8 noundef signext 44) #10 ; 0 uses
  %i.abf = tail call ptr @g_string_append_len(ptr noundef %i.c, ptr noundef nonnull %i.yq, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.tj:                                            ; preds = %g_string_append_c_inline.exit, %g_string_append_c_inline.exit.thread
  %i.abg = load i64, ptr %i.k, align 8            ; 2 uses
  %i.abh = add i64 %i.abg, 2
  %i.abi = load i64, ptr %i.l, align 8
  %.not56.i227 = icmp ult i64 %i.abh, %i.abi
  br i1 %.not56.i227, label %bb.tk, label %bb.tl, !prof !20

bb.tk:                                            ; preds = %bb.tj
  %i.abj = load ptr, ptr %i.c, align 8
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.abg
  %storemerge1 = load i16, ptr %i.yq, align 1
  store i16 %storemerge1, ptr %i.abk, align 1
  %i.abl = load i64, ptr %i.k, align 8
  %i.abm = add i64 %i.abl, 2                      ; 2 uses
  store i64 %i.abm, ptr %i.k, align 8
  %i.abn = load ptr, ptr %i.c, align 8
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.abm
  store i8 0, ptr %i.abo, align 1
  br label %g_string_append_len_inline.exit468

bb.tl:                                            ; preds = %bb.tj
  %i.abp = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull %i.yq, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.tm:                                            ; preds = %bb.b
  %i.abq = load i8, ptr %i.m, align 4             ; 2 uses
  switch i8 %i.abq, label %bb.uc [
    i8 4, label %bb.tn
    i8 5, label %bb.ts
    i8 15, label %bb.tx
  ]

bb.tn:                                            ; preds = %bb.tm
  br i1 %.not.i, label %bb.to, label %bb.tp, !prof !19

bb.to:                                            ; preds = %bb.tn
  %i.abr = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull @.str.1092, i64 noundef 4) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.tp:                                            ; preds = %bb.tn
  %i.abs = load i64, ptr %i.k, align 8            ; 2 uses
  %i.abt = add i64 %i.abs, 4
  %i.abu = load i64, ptr %i.l, align 8
  %.not56.i220 = icmp ult i64 %i.abt, %i.abu
  br i1 %.not56.i220, label %bb.tq, label %bb.tr, !prof !20

bb.tq:                                            ; preds = %bb.tp
  %i.abv = load ptr, ptr %i.c, align 8
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 %i.abs
  store i32 2103538299, ptr %i.abw, align 1
  %i.abx = load i64, ptr %i.k, align 8
  %i.aby = add i64 %i.abx, 4                      ; 2 uses
  store i64 %i.aby, ptr %i.k, align 8
  %i.abz = load ptr, ptr %i.c, align 8
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.aby
  store i8 0, ptr %i.aca, align 1
  br label %g_string_append_len_inline.exit468

bb.tr:                                            ; preds = %bb.tp
  %i.acb = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull @.str.1092, i64 noundef 4) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.ts:                                            ; preds = %bb.tm
  br i1 %.not.i, label %bb.tt, label %bb.tu, !prof !19

bb.tt:                                            ; preds = %bb.ts
  %i.acc = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull @.str.1093, i64 noundef 8) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.tu:                                            ; preds = %bb.ts
  %i.acd = load i64, ptr %i.k, align 8            ; 2 uses
  %i.ace = add i64 %i.acd, 8
  %i.acf = load i64, ptr %i.l, align 8
  %.not56.i213 = icmp ult i64 %i.ace, %i.acf
  br i1 %.not56.i213, label %bb.tv, label %bb.tw, !prof !20

bb.tv:                                            ; preds = %bb.tu
  %i.acg = load ptr, ptr %i.c, align 8
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acd
  store i64 9020836635643835003, ptr %i.ach, align 1
  %i.aci = load i64, ptr %i.k, align 8
  %i.acj = add i64 %i.aci, 8                      ; 2 uses
  store i64 %i.acj, ptr %i.k, align 8
  %i.ack = load ptr, ptr %i.c, align 8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.acj
  store i8 0, ptr %i.acl, align 1
  br label %g_string_append_len_inline.exit468

bb.tw:                                            ; preds = %bb.tu
  %i.acm = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull @.str.1093, i64 noundef 8) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.tx:                                            ; preds = %bb.tm
  br i1 %.not.i, label %bb.ty, label %bb.tz, !prof !19

bb.ty:                                            ; preds = %bb.tx
  %i.acn = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull @.str.1094, i64 noundef 12) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.tz:                                            ; preds = %bb.tx
  %i.aco = load i64, ptr %i.k, align 8            ; 2 uses
  %i.acp = add i64 %i.aco, 12
  %i.acq = load i64, ptr %i.l, align 8
  %.not56.i206 = icmp ult i64 %i.acp, %i.acq
  br i1 %.not56.i206, label %bb.ua, label %bb.ub, !prof !20

bb.ua:                                            ; preds = %bb.tz
  %i.acr = load ptr, ptr %i.c, align 8
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 %i.aco
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.acs, ptr noundef nonnull align 1 dereferenceable(12) @.str.1094, i64 noundef 12, i1 noundef false) #10
  %i.act = load i64, ptr %i.k, align 8
  %i.acu = add i64 %i.act, 12                     ; 2 uses
  store i64 %i.acu, ptr %i.k, align 8
  %i.acv = load ptr, ptr %i.c, align 8
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acu
  store i8 0, ptr %i.acw, align 1
  br label %g_string_append_len_inline.exit468

bb.ub:                                            ; preds = %bb.tz
  %i.acx = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull @.str.1094, i64 noundef 12) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.uc:                                            ; preds = %bb.tm
  %i.acy = zext i8 %i.abq to i32
  %i.acz = add nsw i32 %i.acy, -5
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.c, ptr noundef nonnull @.str.1095, i32 noundef %i.acz) #10
  br label %g_string_append_len_inline.exit468

bb.ud:                                            ; preds = %bb.b
  %i.ada = load i32, ptr %i.j, align 8
  %i.adb = sext i32 %i.ada to i64
  %i.adc = getelementptr inbounds [9 x i8], ptr @rv_fli_name_const, i64 %i.adb ; 7 uses
  br i1 %.not.i, label %bb.ue, label %bb.uf, !prof !19

bb.ue:                                            ; preds = %bb.ud
  %i.add = tail call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull %i.adc, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

bb.uf:                                            ; preds = %bb.ud
  %i.ade = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.adc) #11 ; 6 uses
  %i.adf = load i64, ptr %i.k, align 8            ; 2 uses
  %i.adg = add i64 %i.adf, %i.ade
  %i.adh = load i64, ptr %i.l, align 8
  %.not56.i = icmp ult i64 %i.adg, %i.adh
  br i1 %.not56.i, label %bb.ug, label %bb.uk, !prof !20

bb.ug:                                            ; preds = %bb.uf
  %i.adi = load ptr, ptr %i.c, align 8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 %i.adf ; 4 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.ade
  %.not57.i = icmp ugt ptr %i.adk, %i.adj
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adj, i64 %i.ade
  %i.adm = icmp ule ptr %i.adc, %i.adl
  %or.cond.i.not = select i1 %.not57.i, i1 %i.adm, i1 false
  br i1 %or.cond.i.not, label %bb.ui, label %bb.uh, !prof !19

bb.uh:                                            ; preds = %bb.ug
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.adj, ptr noundef nonnull align 1 %i.adc, i64 noundef %i.ade, i1 noundef false) #10
  br label %bb.uj

bb.ui:                                            ; preds = %bb.ug
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.adj, ptr noundef nonnull align 1 %i.adc, i64 noundef %i.ade, i1 noundef false) #10
  br label %bb.uj

bb.uj:                                            ; preds = %bb.ui, %bb.uh
  %i.adn = load i64, ptr %i.k, align 8
  %i.ado = add i64 %i.adn, %i.ade                 ; 2 uses
  store i64 %i.ado, ptr %i.k, align 8
  %i.adp = load ptr, ptr %i.c, align 8
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.ado
  store i8 0, ptr %i.adq, align 1
  br label %g_string_append_len_inline.exit468

bb.uk:                                            ; preds = %bb.uf
  %i.adr = tail call ptr @g_string_insert_len(ptr noundef nonnull %i.c, i64 noundef -1, ptr noundef nonnull %i.adc, i64 noundef -1) #10 ; 0 uses
  br label %g_string_append_len_inline.exit468

g_string_append_len_inline.exit468:               ; preds = %g_string_append_c_inline.exit475, %g_string_append_c_inline.exit481.thread, %g_string_append_c_inline.exit493.thread, %.preheader531, %bb.uk, %bb.uj, %bb.ue, %bb.ub, %bb.ua, %bb.ty, %bb.tw, %bb.tv, %bb.tt, %bb.tr, %bb.tq, %bb.to, %bb.tl, %bb.tk, %.critedge.i471.thread, %bb.sp, %bb.so, %bb.sj, %bb.sh, %bb.sg, %bb.sb, %bb.rz, %bb.ry, %bb.rt, %bb.rr, %bb.rq, %bb.rl, %bb.rj, %bb.ri, %bb.rg, %bb.rd, %bb.rc, %bb.ra, %bb.qy, %bb.qx, %bb.qv, %bb.qs, %bb.qr, %bb.qp, %bb.ql, %.critedge.i477, %bb.qc, %.critedge.i489, %bb.pt, %bb.ps, %bb.pq, %bb.po, %bb.pn, %bb.pl, %bb.pj, %bb.pi, %bb.pg, %bb.pe, %bb.pd, %bb.pb, %bb.oz, %bb.oy, %bb.ow, %bb.ou, %bb.ot, %bb.or, %bb.op, %bb.oo, %bb.om, %bb.oj, %bb.oi, %bb.od, %bb.di, %bb.dh, %bb.dc, %bb.da, %bb.cz, %bb.cu, %bb.cq, %bb.cp, %bb.ck, %bb.ci, %bb.ch, %bb.cc, %bb.by, %bb.bx, %bb.bs, %bb.bq, %bb.bp, %bb.bk, %bb.bg, %bb.bf, %bb.ba, %bb.ay, %bb.ax, %bb.as, %bb.ao, %bb.an, %bb.ai, %bb.ag, %bb.af, %bb.aa, %bb.y, %bb.x, %bb.s, %bb.o, %.critedge.i507, %bb.l, %bb.k, %bb.f, %bb.d, %csr_name.exit, %bb.b, %bb.uc, %bb.re, %bb.qt, %bb.qn, %g_string_append_c_inline.exit481, %g_string_append_c_inline.exit493, %bb.dp, %._crit_edge, %._crit_edge535, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.q, %bb.p
  %.1 = phi ptr [ %.0, %bb.b ], [ %.0, %bb.di ], [ %.0, %bb.l ], [ %.0, %bb.p ], [ %.0, %bb.q ], [ %.0, %bb.o ], [ %.0, %bb.y ], [ %.0, %bb.ag ], [ %.0, %bb.ao ], [ %.0, %bb.ay ], [ %.0, %bb.bg ], [ %.0, %bb.bq ], [ %.0, %bb.by ], [ %.0, %bb.ci ], [ %.0, %bb.cq ], [ %.0, %bb.da ], [ %.0, %bb.dj ], [ %.0, %bb.dk ], [ %.0, %bb.dl ], [ %.0, %bb.dm ], [ %.0, %._crit_edge535 ], [ %i.ks, %._crit_edge ], [ %i.ks, %bb.dp ], [ %.0, %bb.ub ], [ %.0, %bb.po ], [ %.0, %bb.oj ], [ %.0, %bb.op ], [ %.0, %bb.ou ], [ %.0, %bb.oz ], [ %.0, %bb.pe ], [ %.0, %bb.pj ], [ %.0, %bb.pt ], [ %.0, %g_string_append_c_inline.exit493 ], [ %.0, %bb.qc ], [ %.0, %g_string_append_c_inline.exit481 ], [ %.0, %bb.uk ], [ %.0, %bb.ql ], [ %.0, %bb.qn ], [ %.0, %bb.qs ], [ %.0, %bb.qt ], [ %.0, %bb.qy ], [ %.0, %bb.rd ], [ %.0, %bb.re ], [ %.0, %bb.rj ], [ %.0, %bb.rr ], [ %.0, %bb.rz ], [ %.0, %bb.sh ], [ %.0, %bb.sp ], [ %.0, %bb.uc ], [ %.0, %bb.tl ], [ %.0, %bb.tr ], [ %.0, %bb.tw ], [ %.0, %csr_name.exit ], [ %.0, %bb.d ], [ %.0, %bb.f ], [ %.0, %bb.k ], [ %.0, %.critedge.i507 ], [ %.0, %bb.s ], [ %.0, %bb.x ], [ %.0, %bb.aa ], [ %.0, %bb.af ], [ %.0, %bb.ai ], [ %.0, %bb.an ], [ %.0, %bb.as ], [ %.0, %bb.ax ], [ %.0, %bb.ba ], [ %.0, %bb.bf ], [ %.0, %bb.bk ], [ %.0, %bb.bp ], [ %.0, %bb.bs ], [ %.0, %bb.bx ], [ %.0, %bb.cc ], [ %.0, %bb.ch ], [ %.0, %bb.ck ], [ %.0, %bb.cp ], [ %.0, %bb.cu ], [ %.0, %bb.cz ], [ %.0, %bb.dc ], [ %.0, %bb.dh ], [ %.0, %bb.od ], [ %.0, %bb.oi ], [ %.0, %bb.om ], [ %.0, %bb.oo ], [ %.0, %bb.or ], [ %.0, %bb.ot ], [ %.0, %bb.ow ], [ %.0, %bb.oy ], [ %.0, %bb.pb ], [ %.0, %bb.pd ], [ %.0, %bb.pg ], [ %.0, %bb.pi ], [ %.0, %bb.pl ], [ %.0, %bb.pn ], [ %.0, %bb.pq ], [ %.0, %bb.ps ], [ %.0, %.critedge.i489 ], [ %.0, %.critedge.i477 ], [ %.0, %bb.qp ], [ %.0, %bb.qr ], [ %.0, %bb.qv ], [ %.0, %bb.qx ], [ %.0, %bb.ra ], [ %.0, %bb.rc ], [ %.0, %bb.rg ], [ %.0, %bb.ri ], [ %.0, %bb.rl ], [ %.0, %bb.rq ], [ %.0, %bb.rt ], [ %.0, %bb.ry ], [ %.0, %bb.sb ], [ %.0, %bb.sg ], [ %.0, %bb.sj ], [ %.0, %bb.so ], [ %.0, %.critedge.i471.thread ], [ %.0, %bb.tk ], [ %.0, %bb.to ], [ %.0, %bb.tq ], [ %.0, %bb.tt ], [ %.0, %bb.tv ], [ %.0, %bb.ty ], [ %.0, %bb.ua ], [ %.0, %bb.ue ], [ %.0, %bb.uj ], [ %.0, %.preheader531 ], [ %.0, %g_string_append_c_inline.exit481.thread ], [ %.0, %g_string_append_c_inline.exit493.thread ], [ %.0, %g_string_append_c_inline.exit475 ]
  %i.ads = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.b, !llvm.loop !18

bb.ul:                                            ; preds = %bb.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal fastcc i32 @operand_cimmj(i64 noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = shl i64 %0, 51
  %i.b = ashr i64 %i.a, 52
  %i.c = and i64 %i.b, 4294965248
  %i.d = lshr i64 %0, 7
  %i.e = and i64 %i.d, 16
  %i.f = lshr i64 %0, 1                           ; 2 uses
  %i.g = and i64 %i.f, 768
  %i.h = shl i64 %0, 2
  %i.i = and i64 %i.h, 1024
  %i.j = and i64 %i.f, 64
  %i.k = shl i64 %0, 1
  %i.l = and i64 %i.k, 128
  %i.m = lshr i64 %0, 2
  %i.n = and i64 %i.m, 14
  %i.o = shl i64 %0, 3
  %i.p = and i64 %i.o, 32
  %i.q = or disjoint i64 %i.g, %i.e
  %i.r = or disjoint i64 %i.q, %i.i
  %i.s = or disjoint i64 %i.r, %i.j
  %i.t = or disjoint i64 %i.s, %i.l
  %i.u = or disjoint i64 %i.t, %i.n
  %i.v = or i64 %i.u, %i.p
  %i.w = or i64 %i.v, %i.c
end_hunk_0
