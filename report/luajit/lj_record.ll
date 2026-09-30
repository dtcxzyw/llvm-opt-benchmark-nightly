Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_record?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@lj_record_ins:bb.a
  %.0.i.i599 = select i1 %i.ie, i32 14, i32 %i.ig ; 3 uses
  %i.ih = trunc nuw nsw i32 %.0.i.i599 to i16
  %i.ii = or disjoint i16 %i.ih, 18304
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !35
  %i.il = add nsw i32 %i.ik, %.0509
  %i.im = trunc i32 %i.il to i16
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.ii, ptr %i.io, align 4, !tbaa !9
  store i16 %i.im, ptr %i.in, align 8, !tbaa !9
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 4, ptr %i.ip, align 2, !tbaa !9
  %i.iq = tail call i32 @lj_ir_emit(ptr noundef nonnull %0) #8
  %i.ir = icmp samesign ult i32 %.0.i.i599, 3
  %i.is = mul nuw nsw i32 %.0.i.i599, 16777217
  %i.it = xor i32 %i.is, 32767
  %.0.i600 = select i1 %i.ir, i32 %i.it, i32 %i.iq ; 2 uses
  %i.iu = load ptr, ptr %i.hu, align 8, !tbaa !42
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.hr
  store i32 %.0.i600, ptr %i.iv, align 4, !tbaa !37
  br label %.sink.split

bb.av:                                            ; preds = %bb.as
  %i.iw = zext nneg i32 %.0509 to i64
  %i.ix = shl nuw nsw i64 %i.iw, 47
  %i.iy = xor i64 %i.ix, -1
  store i64 %i.iy, ptr %.sink17.i.sroa.gep, align 8, !tbaa !9
  %reass.sub = mul i32 %.0509, 16777215
  %i.iz = add i32 %reass.sub, 32767
  br label %.sink.split

bb.aw:                                            ; preds = %bb.as
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !55
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !95
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = zext nneg i32 %.0509 to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jf ; 3 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !9
  store i64 %i.jh, ptr %.sink17.i.sroa.gep, align 8, !tbaa !9
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !9
  %i.jk = icmp eq i32 %i.jj, -98305
  br i1 %i.jk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jl = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  %i.jm = or i32 %i.jl, 1048576
  br label %.sink.split

bb.ay:                                            ; preds = %bb.aw
  %i.jn = load double, ptr %i.jg, align 8, !tbaa !9
  %i.jo = tail call i32 @lj_ir_knumint(ptr noundef nonnull %0, double noundef %i.jn) #8
  br label %.sink.split

bb.az:                                            ; preds = %bb.as
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !55
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !95
  %i.jt = inttoptr i64 %i.js to ptr
  %i.ju = xor i32 %.0509, -1
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jt, i64 %i.jv
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !71 ; 2 uses
  %i.jy = inttoptr i64 %i.jx to ptr
  %i.jz = or i64 %i.jx, -703687441776640
  store i64 %i.jz, ptr %.sink17.i.sroa.gep, align 8, !tbaa !9
  %i.ka = tail call i32 @lj_ir_kgc(ptr noundef nonnull %0, ptr noundef %i.jy, i32 noundef 4) #8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ax, %bb.ay, %bb.au, %bb.at, %bb.av, %bb.az
  %.sink = phi i32 [ %i.ka, %bb.az ], [ %i.hx, %bb.at ], [ %i.iz, %bb.av ], [ %.0.i600, %bb.au ], [ %i.jm, %bb.ax ], [ %i.jo, %bb.ay ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %.sink, ptr %i.kb, align 4, !tbaa !74
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.as
  %.1510 = phi i32 [ %.0509, %bb.as ], [ %.sink, %.sink.split ] ; 121 uses
  %trunc = trunc i32 %i.et to i8
  switch i8 %trunc, label %bb.fp [
    i8 0, label %bb.bb
    i8 1, label %bb.bb
    i8 2, label %bb.bb
    i8 3, label %bb.bb
    i8 4, label %bb.br
    i8 5, label %bb.br
    i8 6, label %bb.br
    i8 7, label %bb.br
    i8 8, label %bb.br
    i8 9, label %bb.br
    i8 10, label %bb.br
    i8 11, label %bb.br
    i8 12, label %bb.cb
    i8 13, label %bb.cb
    i8 14, label %bb.cc
    i8 15, label %bb.cc
    i8 16, label %bb.ce
    i8 17, label %bb.ce
    i8 19, label %bb.ci
    i8 21, label %bb.cj
    i8 20, label %bb.cn
    i8 27, label %bb.cq
    i8 28, label %bb.cq
    i8 29, label %bb.cq
    i8 30, label %bb.cq
    i8 31, label %bb.cq
    i8 22, label %bb.cr
    i8 23, label %bb.cr
    i8 24, label %bb.cr
    i8 25, label %bb.cr
    i8 32, label %bb.cr
    i8 33, label %bb.cr
    i8 34, label %bb.cr
    i8 35, label %bb.cr
    i8 26, label %bb.cv
    i8 36, label %bb.cv
    i8 37, label %bb.cz
    i8 89, label %bb.dd
    i8 90, label %bb.dg
    i8 91, label %bb.dg
    i8 92, label %bb.dg
    i8 93, label %bb.dj
    i8 94, label %bb.dj
    i8 95, label %bb.dj
    i8 38, label %bb.dk
    i8 18, label %bb.dm
    i8 39, label %lj_record_call.exit
    i8 42, label %lj_record_call.exit
    i8 43, label %lj_record_call.exit
    i8 41, label %bb.do
    i8 44, label %bb.dp
    i8 40, label %bb.dt
    i8 45, label %bb.du
    i8 46, label %bb.dv
    i8 47, label %bb.dv
    i8 48, label %bb.dv
    i8 49, label %bb.dv
    i8 54, label %bb.dw
    i8 55, label %bb.dw
    i8 58, label %bb.dy
    i8 62, label %bb.dy
    i8 56, label %bb.dz
    i8 57, label %bb.dz
    i8 60, label %bb.dz
    i8 61, label %bb.dz
    i8 59, label %bb.ea
    i8 64, label %bb.ea
    i8 63, label %bb.eb
    i8 52, label %bb.ec
    i8 53, label %bb.ed
    i8 69, label %bb.ee
    i8 65, label %bb.el
    i8 66, label %bb.em
    i8 67, label %bb.eo
    i8 68, label %bb.ep
    i8 71, label %bb.eq
    i8 73, label %bb.er
    i8 74, label %bb.es
    i8 75, label %bb.es
    i8 76, label %bb.es
    i8 77, label %bb.eu
    i8 78, label %bb.ew
    i8 79, label %bb.ey
    i8 82, label %bb.ez
    i8 70, label %bb.fa
    i8 85, label %bb.fb
    i8 81, label %bb.fd
    i8 84, label %bb.fe
    i8 87, label %bb.ff
    i8 80, label %bb.fh
    i8 83, label %bb.fh
    i8 86, label %bb.fh
    i8 97, label %bb.fh
    i8 100, label %bb.fh
    i8 88, label %bb.fi
    i8 72, label %bb.fk
    i8 96, label %bb.fl
    i8 98, label %bb.fm
    i8 99, label %bb.fn
    i8 101, label %lj_record_call.exit
    i8 102, label %bb.fo
    i8 103, label %bb.fo
    i8 50, label %bb.fr
    i8 51, label %bb.fr
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.kc = and i32 %.0515, 520093696               ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 167772160
  br i1 %i.kd, label %rec_mm_comp_cdata.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ke = and i32 %.1510, 520093696               ; 2 uses
  %i.kf = icmp eq i32 %i.ke, 167772160
  br i1 %i.kf, label %rec_mm_comp_cdata.exit, label %bb.bd

rec_mm_comp_cdata.exit:                           ; preds = %bb.bc, %bb.bb
  %2 = and i32 %i.et, 2
  %.not568 = icmp eq i32 %2, 0
  %3 = select i1 %.not568, i32 6, i32 7
  tail call void @lj_snap_add(ptr noundef nonnull %0) #8
  %i.kg = load i32, ptr %i.ex, align 8, !tbaa !75 ; 2 uses
  %i.kh = and i32 %i.kg, 520093696
  %i.ki = icmp eq i32 %i.kh, 167772160            ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.kk = load i32, ptr %i.kj, align 4
  %.sink.i = select i1 %i.ki, i32 %i.kg, i32 %i.kk
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %.sink.i, ptr %i.kl, align 8, !tbaa !49
  %.sink17.i.sroa.gep609.val622 = load i64, ptr %.sink17.i.sroa.gep609, align 8
  %.sink17.i.sroa.gep.val623 = load i64, ptr %.sink17.i.sroa.gep, align 8
  %storemerge.i = select i1 %i.ki, i64 %.sink17.i.sroa.gep609.val622, i64 %.sink17.i.sroa.gep.val623
  store i64 %storemerge.i, ptr %1, align 8, !tbaa !9
  %i.km = call i32 @lj_record_mm_lookup(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 4, 8) %3) ; 0 uses
  call fastcc void @rec_mm_callcomp(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 256) %i.eu)
  br label %lj_record_call.exit

bb.bd:                                            ; preds = %bb.bc
  %i.kn = or i32 %.1510, %.0515
  %i.ko = and i32 %i.kn, 32768
  %.not562.not = icmp eq i32 %i.ko, 0
  %i.kp = lshr i32 %.0515, 24                     ; 2 uses
  br i1 %.not562.not, label %bb.be, label %._crit_edge646

bb.be:                                            ; preds = %bb.bd
  %i.kq = and i32 %i.kp, 30
  %i.kr = add nsw i32 %i.kq, -14
  %i.ks = icmp ult i32 %i.kr, 6
  %i.kt = icmp eq i32 %i.kc, 67108864
  %or.cond570 = or i1 %i.kt, %i.ks
  br i1 %or.cond570, label %bb.bf, label %._crit_edge646

bb.bf:                                            ; preds = %bb.be
  %i.ku = lshr i32 %.1510, 24
  %i.kv = and i32 %i.ku, 30
  %i.kw = add nsw i32 %i.kv, -14
  %i.kx = icmp ult i32 %i.kw, 6
  %i.ky = icmp eq i32 %i.ke, 67108864
  %or.cond571 = or i1 %i.ky, %i.kx
  br i1 %or.cond571, label %lj_record_call.exit, label %._crit_edge646

._crit_edge646:                                   ; preds = %bb.bd, %bb.bf, %bb.be
  %i.kz = and i32 %i.kp, 31                       ; 3 uses
  %i.la = add nsw i32 %i.kz, -15
  %i.lb = icmp ult i32 %i.la, 5
  %i.lc = select i1 %i.lb, i32 19, i32 %i.kz      ; 5 uses
  %i.ld = lshr i32 %.1510, 24
  %i.le = and i32 %i.ld, 31                       ; 2 uses
  %i.lf = add nsw i32 %i.le, -15
  %i.lg = icmp ult i32 %i.lf, 5
  %i.lh = select i1 %i.lg, i32 19, i32 %i.le      ; 4 uses
  %.not563 = icmp eq i32 %i.lc, %i.lh
  br i1 %.not563, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge646
  %i.li = icmp eq i32 %i.lc, 19
  %i.lj = icmp eq i32 %i.lh, 14
  %or.cond = and i1 %i.li, %i.lj
  br i1 %or.cond, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lk = trunc i32 %.0515 to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23310, ptr %i.lm, align 4, !tbaa !9
  store i16 %i.lk, ptr %i.ll, align 8, !tbaa !9
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 467, ptr %i.ln, align 2, !tbaa !9
  %i.lo = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %.thread

bb.bi:                                            ; preds = %bb.bg
  %i.lp = icmp eq i32 %i.lc, 14
  %i.lq = icmp eq i32 %i.lh, 19
  %or.cond3 = and i1 %i.lp, %i.lq
  br i1 %or.cond3, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.lr = trunc i32 %.1510 to i16
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 23310, ptr %i.lt, align 4, !tbaa !9
  store i16 %i.lr, ptr %i.ls, align 8, !tbaa !9
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 467, ptr %i.lu, align 2, !tbaa !9
  %i.lv = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8
  br label %.thread

bb.bk:                                            ; preds = %bb.bi
  %i.lw = add nsw i32 %i.lc, -1
  %or.cond5 = icmp ult i32 %i.lw, 2
  %i.lx = add nsw i32 %i.lh, -1
  %or.cond7 = icmp ult i32 %i.lx, 2
  %or.cond572 = select i1 %or.cond5, i1 %or.cond7, i1 false
  br i1 %or.cond572, label %bb.bl, label %lj_record_call.exit

.thread:                                          ; preds = %bb.bh, %bb.bj
  %.1516.ph = phi i32 [ %.0515, %bb.bj ], [ %i.lo, %bb.bh ]
  %.2511.ph = phi i32 [ %i.lv, %bb.bj ], [ %.1510, %bb.bh ]
  tail call fastcc void @rec_comp_prep(ptr noundef nonnull %0)
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %._crit_edge646
  %.0504 = phi i32 [ %i.kz, %bb.bk ], [ %i.lc, %._crit_edge646 ]
  tail call fastcc void @rec_comp_prep(ptr noundef nonnull %0)
  switch i32 %.0504, label %bb.bp [
    i32 14, label %bb.bm
    i32 19, label %bb.bn
    i32 4, label %bb.bo
  ]

bb.bm:                                            ; preds = %.thread, %bb.bl
  %.2511615 = phi i32 [ %.2511.ph, %.thread ], [ %.1510, %bb.bl ]
  %.1516614 = phi i32 [ %.1516.ph, %.thread ], [ %.0515, %bb.bl ]
  %i.ly = shl i32 %i.et, 2
  %i.lz = and i32 %i.ly, 4
  %spec.select = xor i32 %i.lz, %i.eu             ; 3 uses
  %i.ma = load double, ptr %.sink17.i.sroa.gep609, align 8, !tbaa !9
  %i.mb = load double, ptr %.sink17.i.sroa.gep, align 8, !tbaa !9
  %i.mc = tail call i32 @lj_ir_numcmp(double noundef %i.ma, double noundef %i.mb, i32 noundef %spec.select) #8
  %.not567 = icmp eq i32 %i.mc, 0
  %i.md = xor i32 %spec.select, 5
  %spec.select596 = select i1 %.not567, i32 %i.md, i32 %spec.select
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bl
  %i.me = load double, ptr %.sink17.i.sroa.gep609, align 8, !tbaa !9
  %i.mf = load double, ptr %.sink17.i.sroa.gep, align 8, !tbaa !9
  %i.mg = tail call i32 @lj_ir_numcmp(double noundef %i.me, double noundef %i.mf, i32 noundef %i.eu) #8
  %.not565 = icmp eq i32 %i.mg, 0
  %i.mh = zext i1 %.not565 to i32
  %spec.select573 = xor i32 %i.eu, %i.mh
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bl
  %i.mi = load i64, ptr %.sink17.i.sroa.gep609, align 8, !tbaa !9
  %i.mj = and i64 %i.mi, 140737488355327
  %i.mk = inttoptr i64 %i.mj to ptr
  %i.ml = load i64, ptr %.sink17.i.sroa.gep, align 8, !tbaa !9
  %i.mm = and i64 %i.ml, 140737488355327
  %i.mn = inttoptr i64 %i.mm to ptr
  %i.mo = tail call i32 @lj_ir_strcmp(ptr noundef %i.mk, ptr noundef %i.mn, i32 noundef %i.eu) #8
  %.not564 = icmp eq i32 %i.mo, 0
  %i.mp = zext i1 %.not564 to i32
  %spec.select574 = xor i32 %i.eu, %i.mp
  %i.mq = tail call i32 (ptr, i32, ...) @lj_ir_call(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %.0515, i32 noundef %.1510) #8
  %i.mr = tail call i32 @lj_ir_kint(ptr noundef nonnull %0, i32 noundef 0) #8
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  call fastcc void @rec_mm_comp(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.eu)
  br label %lj_record_call.exit

bb.bq:                                            ; preds = %bb.bm, %bb.bn, %bb.bo
  %.2517 = phi i32 [ %i.mq, %bb.bo ], [ %.1516614, %bb.bm ], [ %.0515, %bb.bn ] ; 2 uses
  %.3 = phi i32 [ %i.mr, %bb.bo ], [ %.2511615, %bb.bm ], [ %.1510, %bb.bn ] ; 2 uses
  %.1505 = phi i32 [ 147, %bb.bo ], [ 142, %bb.bm ], [ 147, %bb.bn ]
  %.2 = phi i32 [ %spec.select574, %bb.bo ], [ %spec.select596, %bb.bm ], [ %spec.select573, %bb.bn ] ; 2 uses
  %i.ms = shl nuw nsw i32 %.2, 8
  %i.mt = or disjoint i32 %i.ms, %.1505
  %i.mu = trunc nuw i32 %i.mt to i16
  %i.mv = trunc i32 %.2517 to i16
  %i.mw = trunc i32 %.3 to i16
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i16 %i.mu, ptr %i.my, align 4, !tbaa !9
  store i16 %i.mv, ptr %i.mx, align 8, !tbaa !9
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i16 %i.mw, ptr %i.mz, align 2, !tbaa !9
  %i.na = tail call i32 @lj_opt_fold(ptr noundef nonnull %0) #8 ; 0 uses
  %i.nb = load ptr, ptr %i.df, align 8, !tbaa !56
  %i.nc = xor i32 %.2, %i.et
  %i.nd = and i32 %i.nc, 1
  tail call fastcc void @rec_comp_fixup(ptr noundef nonnull %0, ptr noundef %i.nb, i32 noundef %i.nd)
  br label %lj_record_call.exit

bb.br:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba
  %i.ne = and i32 %.0515, 520093696               ; 3 uses
  %i.nf = icmp eq i32 %i.ne, 167772160
  %i.ng = and i32 %.1510, 520093696
  %i.nh = icmp eq i32 %i.ng, 167772160
  %or.cond576 = select i1 %i.nf, i1 true, i1 %i.nh
  br i1 %or.cond576, label %rec_mm_comp_cdata.exit604, label %bb.bs

rec_mm_comp_cdata.exit604:                        ; preds = %bb.br
  tail call void @lj_snap_add(ptr noundef nonnull %0) #8
  %i.ni = load i32, ptr %i.ex, align 8, !tbaa !75 ; 2 uses
  %i.nj = and i32 %i.ni, 520093696
  %i.nk = icmp eq i32 %i.nj, 167772160            ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.nm = load i32, ptr %i.nl, align 4
  %.sink.i602 = select i1 %i.nk, i32 %i.ni, i32 %i.nm
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %.sink.i602, ptr %i.nn, align 8, !tbaa !49
  %.sink17.i.sroa.gep609.val = load i64, ptr %.sink17.i.sroa.gep609, align 8
  %.sink17.i.sroa.gep.val = load i64, ptr %.sink17.i.sroa.gep, align 8
  %storemerge.i603 = select i1 %i.nk, i64 %.sink17.i.sroa.gep609.val, i64 %.sink17.i.sroa.gep.val
  store i64 %storemerge.i603, ptr %1, align 8, !tbaa !9
  %i.no = call i32 @lj_record_mm_lookup(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4) ; 0 uses
  call fastcc void @rec_mm_callcomp(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 256) %i.eu)
  br label %lj_record_call.exit

bb.bs:                                            ; preds = %bb.br
  %i.np = or i32 %.1510, %.0515
  %.fr621 = freeze i32 %i.np
  %i.nq = and i32 %.fr621, 32768
  %.not560.not.not = icmp eq i32 %i.nq, 0
  br i1 %.not560.not.not, label %switch.early.test, label %bb.bt

switch.early.test:                                ; preds = %bb.bs
  switch i32 %i.ne, label %lj_record_call.exit [
    i32 201326592, label %bb.bt
    i32 184549376, label %bb.bt
  ]
end_hunk_0
